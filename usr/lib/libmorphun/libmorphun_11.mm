void sub_1BE644A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  __cxa_free_exception(v16);
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::analysis::stemmer::FrStemFilter::~FrStemFilter(morphun::analysis::stemmer::FrStemFilter *this)
{
  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer((this + 128), &off_1F3CDA0F0);
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA0C0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer((this + 128), &off_1F3CDA0F0);

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA0C0);
}

void morphun::transliteration::Transliterator::~Transliterator(void **this, void **a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 5)) = a2[1];
}

void morphun::transliteration::Transliterator::matchCase(uint64_t a1, uint64_t a2, std::basic_string<char16_t>::value_type *a3, std::basic_string<char16_t>::size_type a4, uint64_t a5, unint64_t a6, int a7)
{
  if (a7)
  {
    npc<std::basic_string<char16_t>>(a2);
    if (!a3 && a4)
    {
      __break(1u);
    }

    else
    {

      std::basic_string<char16_t>::__assign_external(a2, a3, a4);
    }
  }

  else if (morphun::util::StringViewUtils::isAllUpperCase(a5, a6))
  {

    morphun::util::StringViewUtils::uppercase(a2, a3, a4, a1 + 8);
  }

  else
  {
    npc<std::basic_string<char16_t>>(a2);
    morphun::util::StringViewUtils::capitalizeFirst(a3, a4, a1 + 8, &v11);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v11;
    *(a2 + 16) = v12;
  }
}

uint64_t morphun::grammar::synthesis::KoGrammarSynthesizer::NONLATIN_VOWELS(morphun::grammar::synthesis::KoGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::KoGrammarSynthesizer::NONLATIN_VOWELS(void)::NONLATIN_VOWELS_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE644E9C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

morphun::util::UnicodeSetUtils *morphun::util::UnicodeSetUtils::removeAll(morphun::util::UnicodeSetUtils *this, icu4cxx::UnicodeSet *a2, const icu4cxx::UnicodeSet *a3)
{
  v5 = morphun::util::Validate::notNull<icu4cxx::UnicodeSet>(this);
  MEMORY[0x1BFB49A90](*v5, *a2);
  return this;
}

uint64_t morphun::grammar::synthesis::KoGrammarSynthesizer::VOWELS_WITH_RIEUL(morphun::grammar::synthesis::KoGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::KoGrammarSynthesizer::VOWELS_WITH_RIEUL(void)::VOWELS_WITH_RIEUL_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE644FC4(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::KoGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::KoGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  __dst[162] = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__dst, L"eu");
  operator new();
}

void sub_1BE645EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x1BFB49160](v11, 0x1012C40EC159624);
  morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver::~KoGrammarSynthesizer_ParticleResolver(&STACK[0x3A0]);
  if (SLOBYTE(STACK[0x387]) < 0)
  {
    operator delete(STACK[0x370]);
  }

  if (SLOBYTE(STACK[0x39F]) < 0)
  {
    operator delete(STACK[0x388]);
  }

  morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver::~KoGrammarSynthesizer_ParticleResolver(&STACK[0x448]);
  if (SLOBYTE(STACK[0x42F]) < 0)
  {
    operator delete(STACK[0x418]);
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver::~KoGrammarSynthesizer_ParticleResolver(&STACK[0x4F0]);
  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(STACK[0x4C0]);
  }

  if (SLOBYTE(STACK[0x4EF]) < 0)
  {
    operator delete(STACK[0x4D8]);
  }

  morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver::~KoGrammarSynthesizer_ParticleResolver(&STACK[0x598]);
  if (SLOBYTE(STACK[0x57F]) < 0)
  {
    operator delete(STACK[0x568]);
  }

  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(STACK[0x580]);
  }

  while (v10 != &STACK[0x610])
  {
    v10 -= 18;
    std::pair<std::basic_string<char16_t> const,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>::~pair(v10);
  }

  MEMORY[0x1BFB49160](a10, 0x10E1C40E3E4E422);
  _Unwind_Resume(a1);
}

void morphun::dictionary::DictionaryKeyIterator::~DictionaryKeyIterator(morphun::dictionary::DictionaryKeyIterator *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dictionary::DictionaryKeyIterator::~DictionaryKeyIterator(morphun::dictionary::DictionaryKeyIterator *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  v3 = *(this + 1);
  if (v3)
  {
    v4 = morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>::~MarisaTrieIterator(v3);
    MEMORY[0x1BFB49160](v4, 0x1072C40BEE00F91);
  }
}

void morphun::dictionary::DictionaryKeyIterator::DictionaryKeyIterator(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 40)) = a2[1];
  operator new();
}

uint64_t npc<morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>::operator*(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, &word_1BE80F080);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v6, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = __p;
    }

    v2 = 0;
    v7 = 0;
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
      v2 = v7;
    }

    *(a1 + 80) = *&v6.__r_.__value_.__l.__data_;
    v3 = v6.__r_.__value_.__r.__words[2];
    *(&v6.__r_.__value_.__s + 23) = 0;
    v6.__r_.__value_.__s.__data_[0] = 0;
    *(a1 + 96) = v3;
    *(a1 + 104) = v2;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    morphun::dictionary::metadata::CharsetConverter::decode((*a1 + 8), a1 + 80, *(a1 + 32), *(a1 + 40));
    *(a1 + 104) = morphun::dictionary::metadata::CompressedArray<unsigned long long>::read(*a1 + 32, *(a1 + 44));
  }

  return a1 + 80;
}

void sub_1BE646824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dictionary::DictionaryKeyIterator::operator++(uint64_t a1)
{
  v2 = *(a1 + 8);
  npc<morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>>(v2);
  if ((marisa::Trie::predictive_search(*v2, (v2 + 8)) & 1) == 0)
  {
    *(v2 + 112) = 1;
  }

  return a1;
}

uint64_t morphun::dictionary::DictionaryKeyIterator::operator*(uint64_t a1)
{
  v1 = npc<morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>>(*(a1 + 8));

  return morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>::operator*(v1);
}

uint64_t *morphun::dictionary::DictionaryKeyIterator::DictionaryKeyIterator(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *result = *a2;
  *(result + *(v3 - 40)) = a2[1];
  result[1] = *(a3 + 8);
  *(a3 + 8) = 0;
  return result;
}

void *morphun::dictionary::DictionaryKeyIterator::DictionaryKeyIterator(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = &unk_1F3CD9918;
  result[1] = v2;
  *(a2 + 8) = 0;
  return result;
}

void virtual thunk tomorphun::dictionary::DictionaryKeyIterator::~DictionaryKeyIterator(morphun::dictionary::DictionaryKeyIterator *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

BOOL morphun::dictionary::DictionaryKeyIterator::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*v2 != *v3)
  {
    return 0;
  }

  v4 = *(v2 + 112);
  if (v4 != *(v3 + 112))
  {
    return 0;
  }

  if (v4)
  {
    return 1;
  }

  return *(v2 + 44) == *(v3 + 44);
}

BOOL morphun::dictionary::DictionaryKeyIterator::operator!=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*v2 != *v3)
  {
    return 1;
  }

  v4 = *(v2 + 112);
  if (v4 != *(v3 + 112))
  {
    return 1;
  }

  if (v4)
  {
    return 0;
  }

  return *(v2 + 44) != *(v3 + 44);
}

void morphun::dictionary::DictionaryKeyIterator::begin(morphun::dictionary::DictionaryKeyIterator *this@<X0>, void *a2@<X8>)
{
  v3 = npc<morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>>(*(this + 1));
  v4 = *(v3 + 79);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(v3 + 56);
    v4 = *(v3 + 64);
  }

  else
  {
    v5 = (v3 + 56);
  }

  morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>::MarisaTrieIterator(v6, *v3, v5, v4);
  morphun::dictionary::DictionaryKeyIterator::DictionaryKeyIterator(a2);
}

void sub_1BE646BF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>::~MarisaTrieIterator(va);
  _Unwind_Resume(a1);
}

void morphun::dictionary::DictionaryKeyIterator::end(morphun::dictionary::DictionaryKeyIterator *this@<X0>, void *a2@<X8>)
{
  v3 = npc<morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>>(*(this + 1));
  morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>::MarisaTrieIterator(v4, *v3, byte_1BE80D03C, 1uLL);
  morphun::dictionary::DictionaryKeyIterator::DictionaryKeyIterator(a2);
}

void sub_1BE646C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>::~MarisaTrieIterator(va);
  _Unwind_Resume(a1);
}

void morphun::util::AutoFileDescriptor::~AutoFileDescriptor(morphun::util::AutoFileDescriptor *this)
{
  v1 = *this;
  if ((v1 & 0x80000000) == 0)
  {
    close(v1);
  }
}

void morphun::grammar::synthesis::GrammarSynthesizerFactory::addSemanticFeatures(morphun::grammar::synthesis::GrammarSynthesizerFactory *this, const morphun::util::ULocale *a2, morphun::dialog::SemanticFeatureModel *a3)
{
  v4 = morphun::util::ULocale::ULocale(v12, this);
  v5 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v5 = v13;
  }

  if (v5)
  {
    while (1)
    {
      v6 = morphun::grammar::synthesis::GRAMMAR_SYNTHESIZER_MAP(v4);
      v7 = v6 + 8;
      v8 = *(v6 + 8);
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = v6 + 8;
      do
      {
        v6 = std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v15, (v8 + 136));
        if ((v6 & 0x80u) == 0)
        {
          v9 = v8;
        }

        v8 = *(v8 + ((v6 >> 4) & 8));
      }

      while (v8);
      if (v9 == v7 || (v6 = std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>((v9 + 136), v15), (v6 & 0x80) != 0))
      {
LABEL_11:
        v9 = v7;
      }

      if (morphun::grammar::synthesis::GRAMMAR_SYNTHESIZER_MAP(v6) + 8 != v9)
      {
        break;
      }

      morphun::util::ULocale::getFallback(v12, v11);
      morphun::util::ULocale::operator=(v12, v11);
      v10 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v10 = v13;
      }

      if (!v10)
      {
        goto LABEL_18;
      }
    }

    (*(v9 + 160))(a2);
  }

LABEL_18:
}

void sub_1BE646DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GRAMMAR_SYNTHESIZER_MAP(morphun::grammar::synthesis *this)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = morphun::grammar::synthesis::GRAMMAR_SYNTHESIZER_MAP(void)::GRAMMAR_SYNTHESIZER_MAP_;
  if (!morphun::grammar::synthesis::GRAMMAR_SYNTHESIZER_MAP(void)::GRAMMAR_SYNTHESIZER_MAP_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE647430(_Unwind_Exception *a1)
{
  v4 = (v2 + 4080);
  v5 = -4216;
  do
  {
    v4 = (v6 - 136);
    v5 += 136;
  }

  while (v5);
  MEMORY[0x1BFB49160](v1, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<morphun::util::ULocale,void (*)(morphun::dialog::SemanticFeatureModel &)>::map[abi:se200100](void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = a2 + 136 * a3;
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

        if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>((v5 + 104), v8 + 17) & 0x80) == 0)
        {
          break;
        }
      }

      if (!v7 || !v8[1])
      {
        goto LABEL_18;
      }

LABEL_19:
      v5 += 136;
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
        if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 17, (v5 + 104)) & 0x80) == 0)
        {
          break;
        }

        v7 = *v7;
        if (!*v12)
        {
          goto LABEL_18;
        }
      }

      if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>((v5 + 104), v7 + 17) & 0x80) == 0)
      {
        goto LABEL_19;
      }
    }

LABEL_18:
    operator new();
  }

  return a1;
}

uint64_t morphun::grammar::synthesis::GrammarSynthesizerFactory::getKnownLocales(morphun::grammar::synthesis::GrammarSynthesizerFactory *this)
{
  {
    if (v2)
    {
      morphun::grammar::synthesis::initKnownLocales(v2);
    }
  }

  result = morphun::grammar::synthesis::GrammarSynthesizerFactory::getKnownLocales(void)::KNOWN_LOCALES_;
  if (!morphun::grammar::synthesis::GrammarSynthesizerFactory::getKnownLocales(void)::KNOWN_LOCALES_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void sub_1BE647FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x1BFB49160](v75, 0x1012C40EC159624);
  if (&a72 != v74)
  {
    v77 = v74;
    do
    {
      v79 = *(v77 - 3);
      v77 -= 24;
      v78 = v79;
      if (v79)
      {
        *(v74 - 2) = v78;
        operator delete(v78);
      }

      v74 = v77;
    }

    while (v77 != &a72);
  }

  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v72, v73);
  _Unwind_Resume(a1);
}

void morphun::analysis::HeAnalyzer::~HeAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB090);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB090);
}

uint64_t morphun::grammar::synthesis::DeGrammarSynthesizer::DECLENSION_STRONG(morphun::grammar::synthesis::DeGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::DeGrammarSynthesizer::DECLENSION_STRONG(void)::DECLENSION_STRONG_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE64831C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::DeGrammarSynthesizer::DECLENSION_MIXED(morphun::grammar::synthesis::DeGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::DeGrammarSynthesizer::DECLENSION_MIXED(void)::DECLENSION_MIXED_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE6483E4(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::DeGrammarSynthesizer::DECLENSION_WEAK(morphun::grammar::synthesis::DeGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::DeGrammarSynthesizer::DECLENSION_WEAK(void)::DECLENSION_WEAK_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE6484AC(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::DeGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::DeGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  LODWORD(__dst.__r_.__value_.__l.__data_) = 273;
  std::__tree<std::__value_type<int,std::u16string_view>,std::__map_value_compare<int,std::__value_type<int,std::u16string_view>,std::less<int>,true>,std::allocator<std::__value_type<int,std::u16string_view>>>::__emplace_unique_impl<unsigned int,char16_t const(&)[2]>();
}

void sub_1BE64BA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40)
{
  MEMORY[0x1BFB49160](v41, 0x1012C40EC159624);
  MEMORY[0x1BFB49160](v40, 0x10F3C404B5F593DLL);
  std::__tree<std::u16string_view>::destroy(a10);
  std::__tree<std::u16string_view>::destroy(a13);
  std::__tree<std::u16string_view>::destroy(a16);
  std::__tree<std::u16string_view>::destroy(a19);
  std::__tree<std::u16string_view>::destroy(a22);
  std::__tree<std::u16string_view>::destroy(a25);
  std::__tree<std::u16string_view>::destroy(a28);
  std::__tree<std::u16string_view>::destroy(a31);
  std::__tree<std::u16string_view>::destroy(a34);
  std::__tree<std::u16string_view>::destroy(a37);
  std::__tree<std::u16string_view>::destroy(a40);
  _Unwind_Resume(a1);
}

void sub_1BE64C440()
{
  while (1)
  {
    v2 = *(v0 - 1);
    v0 -= 3;
    if (v2 < 0)
    {
      operator delete(*v0);
    }

    if (v0 == v1)
    {
      JUMPOUT(0x1BE64C460);
    }
  }
}

void sub_1BE64C4A0()
{
  v2 = v0;
  while (1)
  {
    v4 = *(v2 - 24);
    v2 -= 24;
    v3 = v4;
    if (v4)
    {
      *(v0 - 16) = v3;
      operator delete(v3);
    }

    v0 = v2;
    if (v2 == v1 - 176)
    {
      JUMPOUT(0x1BE64C238);
    }
  }
}

uint64_t morphun::grammar::synthesis::DeGrammarSynthesizer::getCount(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::DeGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DeGrammarSynthesizer::Count>>(morphun::grammar::synthesis::DeGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DeGrammarSynthesizer::Count>>(morphun::grammar::synthesis::DeGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE64C6B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DeGrammarSynthesizer::Count>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE64C8F8(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DeGrammarSynthesizer::Count>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::DeGrammarSynthesizer::getGender(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::DeGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DeGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::DeGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DeGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::DeGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE64CBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DeGrammarSynthesizer::Gender>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE64CDF8(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DeGrammarSynthesizer::Gender>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::DeGrammarSynthesizer::getCase(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::DeGrammarSynthesizer::getCase(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DeGrammarSynthesizer::Case>>(morphun::grammar::synthesis::DeGrammarSynthesizer::getCase(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DeGrammarSynthesizer::Case>>(morphun::grammar::synthesis::DeGrammarSynthesizer::getCase(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE64D0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DeGrammarSynthesizer::Case>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE64D338(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::DeGrammarSynthesizer::Case>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

morphun::dictionary::metadata::StringArrayContainer *morphun::dictionary::metadata::StringArrayContainer::StringArrayContainer(morphun::dictionary::metadata::StringArrayContainer *this, morphun::util::MemoryMappedFile *a2)
{
  npc<morphun::util::MemoryMappedFile>(a2);
  LODWORD(v19.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<int>(a2, &v19);
  *this = v19.__r_.__value_.__l.__data_;
  v4 = npc<morphun::util::MemoryMappedFile>(a2);
  LODWORD(v19.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<int>(v4, &v19);
  *(this + 1) = v19.__r_.__value_.__l.__data_;
  v5 = npc<morphun::util::MemoryMappedFile>(a2);
  v6 = *this;
  v19.__r_.__value_.__r.__words[0] = 0;
  morphun::util::MemoryMappedFile::read<int *>(v5, &v19, 4 * v6);
  *(this + 1) = v19.__r_.__value_.__r.__words[0];
  npc<morphun::util::MemoryMappedFile>(a2);
  v7 = *(this + 1);
  v8 = *(a2 + 2);
  if (*(a2 + 1) - v8 < (2 * v7))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string((2 * v7), &v16);
    std::basic_string<char16_t>::insert(&v16, L"Input too small. Expected at least ", 0x23, v12);
    v17 = v16;
    memset(&v16, 0, sizeof(v16));
    std::basic_string<char16_t>::append(&v17, L" bytes; Available: ", 0x13uLL);
    v18 = v17;
    memset(&v17, 0, sizeof(v17));
    morphun::util::StringUtils::to_u16string((*(a2 + 2) - *(a2 + 4)), &v15);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v15;
    }

    else
    {
      v13 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v18, v13, size);
    v19 = v18;
    memset(&v18, 0, sizeof(v18));
    morphun::exception::IOException::IOException(exception, &v19);
  }

  v9 = *a2 + v8;
  *(a2 + 2) = v8 + 2 * v7;
  *(this + 2) = v9;
  *(this + 24) = 0;
  return this;
}

void sub_1BE64D590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void sub_1BE64D9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

uint64_t npc<std::map<std::u16string_view,int>>(uint64_t result)
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

uint64_t morphun::dictionary::metadata::StringArrayContainer::StringArrayContainer(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

void morphun::dictionary::metadata::StringArrayContainer::~StringArrayContainer(morphun::dictionary::metadata::StringArrayContainer *this)
{
  if (*(this + 24) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      MEMORY[0x1BFB49140](v2, 0x1000C8052888210);
    }

    v3 = *(this + 2);
    if (v3)
    {
      MEMORY[0x1BFB49140](v3, 0x1000C80BDFB0063);
    }
  }
}

uint64_t morphun::dictionary::metadata::StringArrayContainer::write(int *a1)
{
  std::ostream::write();
  std::ostream::write();
  v2 = *(a1 + 1);
  v3 = *a1;
  std::ostream::write();
  v4 = *(a1 + 2);
  v5 = 2 * a1[1];

  return std::ostream::write();
}

void *morphun::dictionary::metadata::StringArrayContainer::getString@<X0>(void *this@<X0>, unsigned int a2@<W1>, _BYTE *a3@<X8>)
{
  if ((a2 & 0x80000000) != 0 || *this <= a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"Offset is out of bounds");
    morphun::exception::IndexOutOfBoundsException::IndexOutOfBoundsException(exception, &__dst);
  }

  v4 = this[2];
  v5 = *(this[1] + 4 * a2);
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = (v4 + 2 * (v5 >> 8));
  if (v5 > 0xAu)
  {
    if ((v5 | 3) == 0xB)
    {
      v8 = 13;
    }

    else
    {
      v8 = (v5 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v8);
  }

  a3[23] = v5;
  v9 = &a3[2 * v5];
  if (a3 <= v7 && v9 > v7)
  {
LABEL_22:
    __break(1u);
  }

  else
  {
    if (v5)
    {
      this = memmove(a3, v7, 2 * v5);
    }

    *v9 = 0;
  }

  return this;
}

void sub_1BE64DD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t morphun::dictionary::metadata::StringArrayContainer::getIdentifier(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  result = morphun::dictionary::metadata::StringArrayContainer::getIdentifierIfAvailable(a1, a2, a3);
  if ((result & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "S");
    std::basic_string<char16_t>::basic_string<std::u16string_view,0>(v9, a2, a3);
    if ((v10 & 0x80u) == 0)
    {
      v7 = v9;
    }

    else
    {
      v7 = v9[0];
    }

    if ((v10 & 0x80u) == 0)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9[1];
    }

    std::basic_string<char16_t>::append(&__dst, v7, v8);
    v12 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &v12);
  }

  return result;
}

void sub_1BE64DE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v26 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v27);
  goto LABEL_10;
}

void morphun::exception::FileNotFoundException::~FileNotFoundException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

double morphun::exception::FileNotFoundException::FileNotFoundException(morphun::exception::FileNotFoundException *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0A78;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0A78;
  return result;
}

void *morphun::exception::FileNotFoundException::FileNotFoundException(uint64_t a1, __int128 *a2)
{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0A78;
  return result;
}

{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0A78;
  return result;
}

void morphun::dialog::language::KoCommonConceptFactory::quantifiedJoin(const morphun::dialog::SpeakableString *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, morphun::dialog::SpeakableString *a4@<X8>)
{
  morphun::dialog::SpeakableString::SpeakableString(a4, a1);
  v7 = (*(*a2 + 32))(a2);
  isFirstNonWhitespaceSeparableCharacter = morphun::lang::StringFilterUtil::isFirstNonWhitespaceSeparableCharacter(v7);
  if (!isFirstNonWhitespaceSeparableCharacter)
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, &word_1BE80F394);
    morphun::dialog::SpeakableString::SpeakableString(v12, __p);
    morphun::dialog::SpeakableString::operator+(a4, v12, v13);
    morphun::dialog::SpeakableString::operator=(a4, v13);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  morphun::dialog::SpeakableString::operator+(a4, a2, v13);
  morphun::dialog::SpeakableString::operator=(a4, v13);
  v9 = *(a3 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 8);
  }

  if (v9)
  {
    if (!isFirstNonWhitespaceSeparableCharacter)
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, &word_1BE80F394);
      morphun::dialog::SpeakableString::SpeakableString(v12, __p);
      morphun::dialog::SpeakableString::operator+(a4, v12, v13);
      morphun::dialog::SpeakableString::operator=(a4, v13);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    morphun::dialog::SpeakableString::SpeakableString(v12, a3);
    morphun::dialog::SpeakableString::operator+(a4, v12, v13);
    morphun::dialog::SpeakableString::operator=(a4, v13);
  }
}

void sub_1BE64E19C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1BE64E378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  morphun::dialog::SemanticConceptList::~SemanticConceptList(v15, off_1F3CDBE18);
  MEMORY[0x1BFB49160](v15, v16);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::KoCommonConceptFactory::~KoCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC4D0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC4D0);
}

BOOL morphun::transliteration::FromRomanizationTransliterator::transliterate(uint64_t a1, UChar *a2, unint64_t a3, uint64_t a4)
{
  if (!morphun::util::UnicodeSetUtils::containsSome(a1 + 304, a2, a3))
  {
    return 0;
  }

  isAllLowerCase = morphun::util::StringViewUtils::isAllLowerCase(a2, a3);
  v19 = 0;
  v20 = 0;
  v9 = a2;
  v10 = a3;
  v21 = 0;
  if ((isAllLowerCase & 1) == 0)
  {
    morphun::util::StringViewUtils::lowercase(&v19, a2, a3, a1 + 8);
    if (v21 >= 0)
    {
      v9 = &v19;
    }

    else
    {
      v9 = v19;
    }

    if (v21 >= 0)
    {
      v10 = HIBYTE(v21);
    }

    else
    {
      v10 = v20;
    }
  }

  v11 = morphun::dictionary::metadata::MarisaTrie<int>::find(*(a1 + 296), v9, v10);
  if (HIDWORD(v11))
  {
    morphun::dictionary::metadata::MarisaTrie<int>::getKey(&v22, (a1 + 216), v11);
    v17 = v23;
    *__p = v22;
    v18 = 1;
    if (v23 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = v22;
    }

    if (v23 >= 0)
    {
      v13 = HIBYTE(v23);
    }

    else
    {
      v13 = *(&v22 + 1);
    }

    morphun::transliteration::Transliterator::matchCase(a1, a4, v12, v13, a2, a3, isAllLowerCase);
    v14 = 1;
    if ((v18 & 1) != 0 && SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    v18 = 0;
    v14 = morphun::transliteration::ICUScriptTransliterator::transliterate(a1 + 320, a2, a3, a4);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  return v14;
}

void sub_1BE64E6A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void morphun::transliteration::FromRomanizationTransliterator::~FromRomanizationTransliterator(morphun::transliteration::FromRomanizationTransliterator *this)
{
  *this = &unk_1F3CD9560;
  *(this + 40) = &unk_1F3CD9600;
  icu4cxx::Transliterator::~Transliterator((this + 488));
  icu4cxx::Transliterator::~Transliterator((this + 472));
  icu4cxx::UnicodeSet::~UnicodeSet((this + 456));
  *(this + 40) = &off_1F3CED608;
  icu4cxx::UnicodeSet::~UnicodeSet((this + 304));
  morphun::transliteration::BidirectionalStringMap::~BidirectionalStringMap((this + 136));
  *this = &off_1F3CED568;

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD9560;
  *(this + 40) = &unk_1F3CD9600;
  icu4cxx::Transliterator::~Transliterator((this + 488));
  icu4cxx::Transliterator::~Transliterator((this + 472));
  icu4cxx::UnicodeSet::~UnicodeSet((this + 456));
  *(this + 40) = &off_1F3CED608;
  icu4cxx::UnicodeSet::~UnicodeSet((this + 304));
  morphun::transliteration::BidirectionalStringMap::~BidirectionalStringMap((this + 136));
  *this = &off_1F3CED568;
}

unint64_t marisa::grimoire::vector::BitVector::select1(marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 22) + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = *(this + 10);
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3--;
    v8 = (v7 + 12);
    do
    {
      v9 = *v8;
      v8 += 3;
      ++v3;
    }

    while (v9 <= a2);
  }

  else
  {
    do
    {
      if (*(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v10 = (v5 + 12 * v3);
  v11 = v10[1];
  v12 = a2 - *v10;
  v13 = 8 * v3;
  if (v12 >= v11 >> 23)
  {
    v23 = v11 >> 23;
    v24 = v10[2];
    v25 = (v24 >> 9) & 0x1FF;
    v26 = (v24 >> 18) & 0x1FF;
    v27 = v13 | 7;
    v28 = v12 >= v26;
    if (v12 < v26)
    {
      v29 = (v12 - v25);
    }

    else
    {
      v29 = (v12 - v26);
    }

    if (!v28)
    {
      v27 = v13 | 6;
    }

    v30 = v24 & 0x1FF;
    v31 = v13 | 5;
    v32 = v13 | 4;
    v33 = (v12 - v23);
    if (v12 < v30)
    {
      v34 = v32;
    }

    else
    {
      v33 = (v12 - v30);
      v34 = v31;
    }

    if (v12 < v25)
    {
      v21 = v33;
    }

    else
    {
      v21 = v29;
    }

    if (v12 < v25)
    {
      v22 = v34;
    }

    else
    {
      v22 = v27;
    }
  }

  else
  {
    v14 = v11 >> 7;
    v15 = (v11 >> 15);
    v16 = (v12 - (v11 >> 7));
    if (v12 < v15)
    {
      v17 = v13 | 2;
    }

    else
    {
      v16 = (v12 - v15);
      v17 = v13 | 3;
    }

    v18 = v11 & 0x7F;
    v19 = v13 | 1;
    v28 = v12 >= v18;
    v20 = (v12 - v18);
    if (!v28)
    {
      v20 = v12;
      v19 = v13;
    }

    if (v12 < v14)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    if (v12 < v14)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }
  }
}

uint64_t *marisa::grimoire::vector::Vector<unsigned int>::push_back(uint64_t *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < v4 + 1)
  {
    v7 = 2 * v5;
    if (v5 >> 61)
    {
      v7 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = marisa::grimoire::vector::Vector<unsigned int>::realloc(result, v8);
    v4 = v3[3];
    v6 = v4 + 1;
  }

  *(v3[1] + 4 * v4) = *a2;
  v3[3] = v6;
  return result;
}

_DWORD *marisa::grimoire::vector::Vector<unsigned int>::shrink(_DWORD *result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000064;
    exception[3] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h:100: MARISA_STATE_ERROR: fixed_";
  }

  v2 = *(result + 3);
  if (v2 != *(result + 4))
  {

    return marisa::grimoire::vector::Vector<unsigned int>::realloc(result, v2);
  }

  return result;
}

void morphun::analysis::util::AttributeFactory_StaticImplementationAttributeFactory::~AttributeFactory_StaticImplementationAttributeFactory(morphun::analysis::util::AttributeFactory_StaticImplementationAttributeFactory *this)
{
  *this = &off_1F3CE1AF8;
  std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::~__hash_table(this + 8);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CE1AF8;
  std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::~__hash_table(this + 8);
}

uint64_t std::__function::__value_func<morphun::analysis::util::AttributeImpl * ()(void)>::__value_func[abi:se200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t mlccfp_getCommonConceptFactory(uint64_t a1, const __CFLocale *a2)
{
  npc<morphun::dialog::LocalizedCommonConceptFactoryProvider>(a1);
  morphun::util::CFUtils::convert(v6, a2);
  v4 = (*(*a1 + 24))(a1, v6);
  return v4;
}

void sub_1BE64ED08(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v12, v9, v13);
    __cxa_end_catch();
    JUMPOUT(0x1BE64ECF0);
  }

  _Unwind_Resume(a1);
}

uint64_t npc<morphun::dialog::LocalizedCommonConceptFactoryProvider>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::dialog::language::ArCommonConceptFactory::quantifyType(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4)
  {
LABEL_43:
    v33 = (*(*(a3 + *(*a3 - 56)) + 24))(a3 + *(*a3 - 56));
    if (v33)
    {
      goto LABEL_44;
    }

    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
LABEL_51:
  }

  v9 = (*(*a3 + 128))(a3);
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
    goto LABEL_51;
  }

  v10 = v9;
  v11 = a1[47];
  if (a5 == 3)
  {
    v14 = npc<morphun::dialog::SemanticFeature const>(a1[47]);
    v13 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v14);
  }

  else
  {
    v12 = npc<morphun::dialog::SemanticFeature const>(a1[47]);
    if (a5 == 2)
    {
      v13 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_DUAL(v12);
    }

    else
    {
      v13 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v12);
    }
  }

  (*(*v10 + 64))(v10, v11, v13);
  v15 = (*(*a3 + 48))(a3, a1[94]);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_39;
  }

  v17 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v15);
  v18 = *(v16 + 23);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(v16 + 1);
  }

  v20 = *(v17 + 23);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(v17 + 8);
  }

  if (v18 == v20)
  {
    if (!v18)
    {
      v24 = 1;
      goto LABEL_40;
    }

    if (v21 >= 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = *v17;
    }

    v23 = *v16;
    if (v19 >= 0)
    {
      v23 = v16;
    }

    v24 = 1;
    while (*v22 == *v23)
    {
      v23 = (v23 + 2);
      ++v22;
      if (!--v18)
      {
        goto LABEL_40;
      }
    }
  }

  v25 = morphun::grammar::synthesis::GrammemeConstants::CASE_ACCUSATIVE(v17);
  v26 = *(v16 + 23);
  v27 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(v16 + 1);
  }

  v28 = *(v25 + 23);
  v29 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v28 = *(v25 + 8);
  }

  if (v26 != v28)
  {
LABEL_39:
    v24 = 0;
    goto LABEL_40;
  }

  if (v26)
  {
    if (v29 >= 0)
    {
      v30 = v25;
    }

    else
    {
      v30 = *v25;
    }

    v31 = *v16;
    if (v27 >= 0)
    {
      v31 = v16;
    }

    v24 = 2;
    while (*v30 == *v31)
    {
      v31 = (v31 + 2);
      ++v30;
      if (!--v26)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_39;
  }

  v24 = 2;
LABEL_40:
  v32 = a1[94];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, (&morphun::dialog::language::CASE_MAP[6 * v24])[a5]);
  (*(*v10 + 64))(v10, v32, __p);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  v33 = (*(*(v10 + *(*v10 - 56)) + 24))(v10 + *(*v10 - 56));
  (*(*v10 + 16))(v10);
  if (!v33)
  {
    goto LABEL_43;
  }

LABEL_44:
  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  (*(*a1 + 120))(a1, a2, v33, __p, a5);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  return (*(*v33 + 16))(v33);
}

void morphun::dialog::language::ArCommonConceptFactory::quantifiedJoin(morphun::dialog::SpeakableString *a1@<X2>, uint64_t a2@<X1>, int a3@<W4>, morphun::dialog::SpeakableString *a4@<X8>)
{
  if ((a3 - 1) > 1)
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, &word_1BE80F394);
    morphun::dialog::SpeakableString::SpeakableString(v9, __p);
    morphun::dialog::SpeakableString::operator+(a2, v9, v10);
    morphun::dialog::SpeakableString::operator+(v10, a1, a4);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {

    morphun::dialog::SpeakableString::SpeakableString(a4, a1);
  }
}

void sub_1BE64F41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1BE64F578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
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

void sub_1BE64F754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
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

void morphun::dialog::language::ArCommonConceptFactory::~ArCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC908);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC908);
}

void sub_1BE64FA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v21, v22);
  _Unwind_Resume(a1);
}

void morphun::analysis::EsAnalyzer::~EsAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB158);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB158);
}

uint64_t morphun::analysis::stemmer::NbStemFilter::stem(uint64_t a1, uint64_t a2)
{
  v60 = *MEMORY[0x1E69E9840];
  R1Start = morphun::analysis::stemmer::NordicStemFilter::getR1Start(a2);
  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    v6 = *(a2 + 8);
    if (R1Start >= v6)
    {
      goto LABEL_92;
    }
  }

  else if (R1Start >= v5)
  {
    v6 = *(a2 + 23);
    goto LABEL_92;
  }

  v7 = R1Start;
  std::basic_string<char16_t>::basic_string(&v57, a2, 0, R1Start, v4);
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  std::basic_string<char16_t>::basic_string(&v56, a2, v7, v9 - v7, v8);
  memset(&__str, 0, sizeof(__str));
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  isAllLowerCase = morphun::util::StringViewUtils::isAllLowerCase(v11, v12);
  v14 = isAllLowerCase;
  if ((isAllLowerCase & 1) == 0)
  {
    v15 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    v16 = *&v57.__r_.__value_.__l.__data_;
    v17 = morphun::util::LocaleUtils::NORWEGIAN(isAllLowerCase);
    if ((v15 & 0x80u) == 0)
    {
      v18 = &v57;
    }

    else
    {
      v18 = v16;
    }

    if ((v15 & 0x80u) == 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = DWORD2(v16);
    }

    morphun::util::StringViewUtils::lowercase(&__str, v18, v19, v17);
    v20 = std::basic_string<char16_t>::operator=(&v57, &__str);
    v21 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    v22 = *&v56.__r_.__value_.__l.__data_;
    v23 = morphun::util::LocaleUtils::NORWEGIAN(v20);
    if ((v21 & 0x80u) == 0)
    {
      v24 = &v56;
    }

    else
    {
      v24 = v22;
    }

    if ((v21 & 0x80u) == 0)
    {
      v25 = v21;
    }

    else
    {
      v25 = DWORD2(v22);
    }

    morphun::util::StringViewUtils::lowercase(&__str, v24, v25, v23);
    std::basic_string<char16_t>::operator=(&v56, &__str);
  }

  {
    operator new();
  }

  v26 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::NbStemFilter::ENDINGS_FIRST_STEP_REMOVE(void)::ENDINGS_FIRST_STEP_REMOVE_);
  if ((morphun::analysis::stemmer::NordicStemFilter::removeIfEndsWith(&v56, *v26, v26[1]) & 1) == 0)
  {
    if (!std::basic_string<char16_t>::ends_with[abi:se200100](&v56, word_1BE80EB90))
    {
      goto LABEL_48;
    }

    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&__p, &v57, &v56);
    {
      operator new();
    }

    v27 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::NbStemFilter::ENDINGS_FIRST_STEP_SHORTEN(void)::ENDINGS_FIRST_STEP_SHORTEN_);
    v28 = morphun::analysis::stemmer::NordicStemFilter::shortenIfEndsWith(&__p, *v27, v27[1]);
    if ((v28 & 1) != 0 || !std::basic_string<char16_t>::ends_with[abi:se200100](&v56, "k"))
    {
LABEL_41:
      std::basic_string<char16_t>::assign(&v57, &__p, 0, v7);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::assign(&v56, &__p, v7, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v28)
        {
          goto LABEL_51;
        }
      }

      else if (v28)
      {
        goto LABEL_51;
      }

LABEL_48:
      {
        operator new();
      }

      v33 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::NbStemFilter::ENDINGS_FIRST_STEP_ER(void)::ENDINGS_FIRST_STEP_SHORTEN_);
      if (morphun::analysis::stemmer::NordicStemFilter::removeIfEndsWith(&v56, *v33, v33[1]))
      {
        std::basic_string<char16_t>::append(&v56, "e", 2uLL);
      }

      goto LABEL_51;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v29 = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_ > 2)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v29 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) > 2)
      {
LABEL_35:
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (morphun::analysis::stemmer::NordicStemFilter::isVowel(p_p->__r_.__value_.__s.__data_[v29 - 3]))
        {
          v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v31 = __p.__r_.__value_.__l.__size_;
          }

          std::basic_string<char16_t>::resize(&__p, v31 - 1, 0);
        }

        goto LABEL_41;
      }
    }

    std::basic_string<char16_t>::__throw_out_of_range[abi:se200100]();
  }

LABEL_51:
  {
    operator new();
  }

  v34 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::NbStemFilter::ENDINGS_SECOND_STEP(void)::ENDINGS_SECOND_STEP_);
  morphun::analysis::stemmer::NordicStemFilter::shortenIfEndsWith(&v56, *v34, v34[1]);
  {
    operator new();
  }

  v35 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::NbStemFilter::ENDINGS_THIRD_STEP_REMOVE(void)::ENDINGS_THIRD_STEP_REMOVE_);
  morphun::analysis::stemmer::NordicStemFilter::removeIfEndsWith(&v56, *v35, v35[1]);
  if (v14)
  {
    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(__dst, &v57, &v56);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = *__dst;
    *(a2 + 16) = v59;
    v6 = *(a2 + 23);
    if (v6 < 0)
    {
      v6 = *(a2 + 8);
    }
  }

  else
  {
    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(__dst, &v57, &v56);
    v36 = *(a2 + 23);
    if (v36 >= 0)
    {
      v37 = a2;
    }

    else
    {
      v37 = *a2;
    }

    if (v36 >= 0)
    {
      v38 = *(a2 + 23);
    }

    else
    {
      v38 = *(a2 + 8);
    }

    isAllUpperCase = morphun::util::StringViewUtils::isAllUpperCase(v37, v38);
    if (isAllUpperCase)
    {
      v40 = BYTE7(v59);
      v41 = __dst[0];
      v42 = __dst[1];
      v43 = morphun::util::LocaleUtils::NORWEGIAN(isAllUpperCase);
      if ((v40 & 0x80u) == 0)
      {
        v44 = __dst;
      }

      else
      {
        v44 = v41;
      }

      if ((v40 & 0x80u) == 0)
      {
        v45 = v40;
      }

      else
      {
        v45 = v42;
      }

      morphun::util::StringViewUtils::uppercase(a2, v44, v45, v43);
    }

    else
    {
      v46 = BYTE7(v59);
      v47 = __dst[0];
      v48 = __dst[1];
      v49 = morphun::util::LocaleUtils::NORWEGIAN(isAllUpperCase);
      if ((v46 & 0x80u) == 0)
      {
        v50 = __dst;
      }

      else
      {
        v50 = v47;
      }

      if ((v46 & 0x80u) == 0)
      {
        v51 = v46;
      }

      else
      {
        v51 = v48;
      }

      morphun::util::StringViewUtils::capitalizeFirst(v50, v51, v49, &__p);
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = __p;
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 8);
    }

    if (SBYTE7(v59) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

LABEL_92:
  v52 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1BE6501F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
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

void morphun::analysis::stemmer::NbStemFilter::~NbStemFilter(void **this)
{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CD9FF0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CD9FF0);
}

void morphun::tokenizer::GermanicWordAndDelimiterTokenExtractor::~GermanicWordAndDelimiterTokenExtractor(char **this)
{
  morphun::tokenizer::dictionary::GermanicDecompounder::~GermanicDecompounder(this + 19);
  morphun::tokenizer::TokenExtractor::~TokenExtractor(this, off_1F3CD9C58);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::tokenizer::dictionary::GermanicDecompounder::~GermanicDecompounder(this + 19);

  morphun::tokenizer::TokenExtractor::~TokenExtractor(this, off_1F3CD9C58);
}

uint64_t morphun::tokenizer::GermanicWordAndDelimiterTokenExtractor::GermanicWordAndDelimiterTokenExtractor(uint64_t a1, morphun::util::ResourceLocator *a2, uint64_t a3, __int128 *a4)
{
  *a1 = &unk_1F3CD9158;
  WordsToNotSplit = morphun::tokenizer::TokenExtractor::createWordsToNotSplit(a2, a3);
  morphun::tokenizer::TokenExtractor::TokenExtractor(a1, off_1F3CD9C58, a2, a3, WordsToNotSplit);
  *a1 = &unk_1F3CD0488;
  morphun::tokenizer::TokenExtractor::getRequiredKeyAsPath(__p, a2, a3, L"tokenizer.dictionary.file", 0x19uLL);
  v9 = *a4;
  v10 = a4[1];
  v11 = a4[2];
  *(a1 + 196) = *(a4 + 44);
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  *(a1 + 152) = v9;
  std::set<std::u16string_view>::set[abi:se200100]((a1 + 216), (a4 + 4));
  std::set<std::u16string_view>::set[abi:se200100]((a1 + 240), a4 + 88);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  std::vector<std::u16string_view>::__init_with_size[abi:se200100]<std::u16string_view*,std::u16string_view*>(a1 + 264, *(a4 + 14), *(a4 + 15), (*(a4 + 15) - *(a4 + 14)) >> 4);
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  std::vector<std::u16string_view>::__init_with_size[abi:se200100]<std::u16string_view*,std::u16string_view*>(a1 + 288, *(a4 + 17), *(a4 + 18), (*(a4 + 18) - *(a4 + 17)) >> 4);
  std::set<std::basic_string<char16_t>>::set[abi:se200100]((a1 + 312), (a4 + 10));
  v12 = morphun::tokenizer::trie::SerializedTrie::SerializedTrie((a1 + 336), __p);
  *(a1 + 448) = &unk_1F3CD0848;
  *(a1 + 456) = a1 + 152;
  *(a1 + 464) = v12;
  v13 = *(a1 + 176);
  *(a1 + 472) = *(a1 + 180);
  v14 = *(a1 + 188);
  *(a1 + 480) = *(a1 + 184);
  v16 = *(a1 + 160);
  v15 = *(a1 + 164);
  *(a1 + 476) = v15;
  *(a1 + 488) = v13;
  *(a1 + 492) = v15;
  v17 = *(a1 + 168);
  *(a1 + 496) = *(a1 + 172);
  *(a1 + 504) = *(a1 + 192);
  *(a1 + 508) = v17;
  *(a1 + 512) = *(a1 + 200);
  *(a1 + 520) = *(a1 + 208);
  v18 = *(a1 + 152);
  *(a1 + 524) = *(a1 + 156);
  *(a1 + 528) = v18 - 1;
  *(a1 + 532) = v16;
  *(a1 + 536) = v14;
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1BE650778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = v16;
  morphun::tokenizer::dictionary::DictionaryTokenizerConfig::~DictionaryTokenizerConfig(v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  morphun::tokenizer::TokenExtractor::~TokenExtractor(v15, off_1F3CD9C58);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::MsCommonConceptFactory::~MsCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC488);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC488);
}

void morphun::analysis::filter::AmpersandToAndFilter::~AmpersandToAndFilter(void **this)
{
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA418);

  JUMPOUT(0x1BFB49160);
}

{
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA418);
}

void morphun::analysis::TokenFilter::~TokenFilter(morphun::analysis::TokenFilter *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 40)) = a2[5];
  v5 = *(this + 15);
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  morphun::analysis::util::AttributeSource::~AttributeSource(this, a2 + 2);
}

uint64_t morphun::grammar::synthesis::TrGrammarSynthesizer::COPULA_FIRST(morphun::grammar::synthesis::TrGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::TrGrammarSynthesizer::COPULA_FIRST(void)::COPULA_FIRST_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE650BC0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::TrGrammarSynthesizer::COPULA_SECOND(morphun::grammar::synthesis::TrGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::TrGrammarSynthesizer::COPULA_SECOND(void)::COPULA_SECOND_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE650C88(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::TrGrammarSynthesizer::COPULA_THIRD(morphun::grammar::synthesis::TrGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::TrGrammarSynthesizer::COPULA_THIRD(void)::COPULA_THIRD_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE650D50(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::TrGrammarSynthesizer::TENSE_PRESENT(morphun::grammar::synthesis::TrGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::TrGrammarSynthesizer::TENSE_PRESENT(void)::TENSE_PRESENT_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE650E18(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::TrGrammarSynthesizer::TENSE_PAST(morphun::grammar::synthesis::TrGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::TrGrammarSynthesizer::TENSE_PAST(void)::TENSE_PAST_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE650EE0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void sub_1BE6518F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  MEMORY[0x1BFB49160](v23, 0x1012C40EC159624);
  v25 = *(v21 + 16);
  *(v21 + 16) = 0;
  if (v25)
  {
    (*(*v25 + 16))(v25);
  }

  MEMORY[0x1BFB49160](v21, v22);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::TrGrammarSynthesizer::Case>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE651CE4(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::TrGrammarSynthesizer::Case>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::TrGrammarSynthesizer::Count>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE651F20(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::TrGrammarSynthesizer::Count>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::TrGrammarSynthesizer::Person>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE65215C(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::TrGrammarSynthesizer::Person>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::TrGrammarSynthesizer::Pronoun>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE652398(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::TrGrammarSynthesizer::Pronoun>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::TrGrammarSynthesizer::Copula>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE6525D4(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::TrGrammarSynthesizer::Copula>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::TrGrammarSynthesizer::Tense>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE652810(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::TrGrammarSynthesizer::Tense>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::grammar::synthesis::EnGrammarSynthesizer_CountLookupFunction::determine(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  morphun::dialog::DictionaryLookupFunction::determine(a1, a2, __p);
  v6 = HIBYTE(v33);
  v7 = SHIBYTE(v33);
  if (v33 < 0)
  {
    v6 = __p[1];
  }

  if (v6)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (!v8)
  {
LABEL_4:
    *a3 = *__p;
    a3[2] = v33;
  }

  else
  {
    v9 = a1[26];
    if (!v9 || (v10 = (*(*v9 + 24))(v9, a2), (v11 = v10) == 0))
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    if (v13)
    {
      v14 = *(v13 + 80);
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    while (1)
    {
      v29 = *(&v12 + 1);
      v16 = v12;
      if (v14 == v12)
      {
        break;
      }

      v17 = **v12;
      {
        if (v15)
        {
          v18 = *(v16 + 63);
          v19 = v18 >= 0 ? (v16 + 40) : *(v16 + 40);
          v20 = v18 >= 0 ? *(v16 + 63) : *(v16 + 48);
          v21 = a1[27];
          v22 = a1[28];
          *&v30 = 0;
          if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v21, &v30, v19, v20) && (v30 & v22) == v22)
          {
            morphun::dialog::DictionaryLookupFunction::determine(a1, v15 + 16, &v30);
            if (SHIBYTE(v33) < 0)
            {
              operator delete(__p[0]);
            }

            v33 = v31;
            *__p = v30;
            v24 = HIBYTE(v31);
            v7 = SHIBYTE(v31);
            if ((v31 & 0x8000000000000000) != 0)
            {
              v24 = *(&v30 + 1);
            }

            if (v24)
            {
              v7 = 0;
              *a3 = *__p;
              a3[2] = v33;
              __p[1] = 0;
              v33 = 0;
              __p[0] = 0;
              goto LABEL_37;
            }

            break;
          }
        }

        v15 = v16;
      }

      npc<morphun::Token const>(v16);
      *(&v12 + 1) = v29;
      *&v12 = *(v16 + 80);
    }

    v25 = (*(*v11 + 56))(v11);
    v26 = npc<morphun::Token>(v25);
    v27 = npc<morphun::Token>(*(v26 + 72));
    morphun::dialog::DictionaryLookupFunction::determine(a1, v27 + 16, a3);
LABEL_37:
    (*(*v11 + 16))(v11);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1BE652E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  (*(*v20 + 16))(v20);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::EnGrammarSynthesizer_CountLookupFunction::~EnGrammarSynthesizer_CountLookupFunction(morphun::grammar::synthesis::EnGrammarSynthesizer_CountLookupFunction *this)
{
  morphun::grammar::synthesis::EnGrammarSynthesizer_CountLookupFunction::~EnGrammarSynthesizer_CountLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD5030;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  *this = &off_1F3CE76A8;
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

void morphun::grammar::synthesis::EnGrammarSynthesizer_CountLookupFunction::EnGrammarSynthesizer_CountLookupFunction(morphun::grammar::synthesis::EnGrammarSynthesizer_CountLookupFunction *this)
{
  v9[1] = *MEMORY[0x1E69E9840];
  *this = &off_1F3CE7708;
  v1 = morphun::util::LocaleUtils::ENGLISH(this);
  v2 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v1);
  if (*(v2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v7, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v7.__r_.__value_.__r.__words[2] = *(v2 + 16);
    *&v7.__r_.__value_.__l.__data_ = v3;
  }

  v4 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v2);
  if (*(v4 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v8, *v4, *(v4 + 8));
  }

  else
  {
    v5 = *v4;
    v8.__r_.__value_.__r.__words[2] = *(v4 + 16);
    *&v8.__r_.__value_.__l.__data_ = v5;
  }

  memset(v6, 0, sizeof(v6));
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(v6, &v7, v9, 2uLL);
}

void sub_1BE6532FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v22 + 26);
  *(v22 + 26) = 0;
  if (v24)
  {
    (*(*v24 + 16))(v24);
  }

  morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction(v22, off_1F3CDBDC8);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::KoGrammarSynthesizer_KoDisplayFunction::getDisplayValue(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TheBestDisplayValue = morphun::grammar::synthesis::GrammarSynthesizerUtil::getTheBestDisplayValue(*(a2 + 8), *(a2 + 16), a3);
  if (!TheBestDisplayValue)
  {
    return 0;
  }

  v8 = TheBestDisplayValue;
  morphun::grammar::synthesis::getFeatureValue(&__p, a3, a1[1]);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v11 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v9);
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = __p.__r_.__value_.__l.__size_;
    }

    v13 = *(v11 + 23);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v11 + 8);
    }

    if (v12 == v13)
    {
      if (v12)
      {
        if (v14 >= 0)
        {
          v15 = v11;
        }

        else
        {
          v15 = *v11;
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        while (*v15 == p_p->__r_.__value_.__s.__data_[0])
        {
          p_p = (p_p + 2);
          ++v15;
          if (!--v12)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        morphun::grammar::synthesis::getFeatureValue(&v43, a3, a1[2]);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v43;
        v18 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = v43.__r_.__value_.__l.__size_;
        }

        if (!v18)
        {
          v19 = morphun::grammar::synthesis::GrammemeConstants::CLUSIVITY_EXCLUSIVE(v17);
          std::basic_string<char16_t>::operator=(&__p, v19);
        }
      }
    }
  }

  else
  {
    morphun::grammar::synthesis::getFeatureValue(&v43, a3, a1[3]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v43;
  }

  v22 = a1[5];
  v20 = a1 + 5;
  v21 = v22;
  if (!v22)
  {
    goto LABEL_35;
  }

  v23 = v20;
  do
  {
    v24 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v21 + 32), &__p);
    if ((v24 & 0x80u) == 0)
    {
      v23 = v21;
    }

    v21 = *(v21 + ((v24 >> 4) & 8));
  }

  while (v21);
  if (v23 == v20 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&__p, v23 + 16) & 0x80) != 0)
  {
LABEL_35:
    v23 = v20;
  }

  v25 = (*(*v8 + 24))(v8);
  if (*(v25 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v45, *v25, *(v25 + 8));
  }

  else
  {
    v26 = *v25;
    v45.__r_.__value_.__r.__words[2] = *(v25 + 16);
    *&v45.__r_.__value_.__l.__data_ = v26;
  }

  if (v20 != v23)
  {
    v27 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
    if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v45.__r_.__value_.__l.__size_;
    }

    if (v27)
    {
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v48, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
      }

      else
      {
        v48 = v45;
      }

      v28 = *(v23 + 159);
      if ((v28 & 0x8000000000000000) != 0)
      {
        v29 = v23[17];
        v28 = v23[18];
      }

      else
      {
        v29 = (v23 + 17);
      }

      v30 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      v31 = &v48;
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = v48.__r_.__value_.__l.__size_;
        v31 = v48.__r_.__value_.__r.__words[0];
      }

      v47.__r_.__value_.__r.__words[0] = v31;
      v47.__r_.__value_.__l.__size_ = v30;
      if (std::u16string_view::ends_with[abi:se200100](&v47, v29, v28))
      {
        v32 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v48.__r_.__value_.__l.__size_;
        }

        v33 = *(v23 + 159);
        if (v33 < 0)
        {
          v33 = v23[18];
        }

LABEL_70:
        std::basic_string<char16_t>::resize(&v48, v32 - v33, 0);
        goto LABEL_71;
      }

      v34 = (v23 + 14);
      v35 = *(v23 + 135);
      if ((v35 & 0x8000000000000000) != 0)
      {
        v35 = v23[15];
        if (!v35)
        {
          goto LABEL_71;
        }

        v34 = *v34;
      }

      else if (!*(v23 + 135))
      {
        goto LABEL_71;
      }

      v36 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      v37 = &v48;
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v48.__r_.__value_.__l.__size_;
        v37 = v48.__r_.__value_.__r.__words[0];
      }

      v47.__r_.__value_.__r.__words[0] = v37;
      v47.__r_.__value_.__l.__size_ = v36;
      if (std::u16string_view::ends_with[abi:se200100](&v47, v34, v35))
      {
        v32 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v48.__r_.__value_.__l.__size_;
        }

        v33 = *(v23 + 135);
        if (v33 < 0)
        {
          v33 = v23[15];
        }

        goto LABEL_70;
      }

LABEL_71:
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = &v48;
      }

      else
      {
        v38 = v48.__r_.__value_.__r.__words[0];
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v39 = v48.__r_.__value_.__l.__size_;
      }

      morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver::getParticleValue(&v47, (v23 + 7), v38, v39, a4);
      if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v40 = v47.__r_.__value_.__l.__size_;
      }

      if (v40)
      {
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v41 = &v47;
        }

        else
        {
          v41 = v47.__r_.__value_.__r.__words[0];
        }

        std::basic_string<char16_t>::append(&v48, v41, v40);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(&v43, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
        }

        else
        {
          v43 = v48;
        }

        v44 = 1;
        if ((*(&v47.__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_91:
          if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v48.__r_.__value_.__l.__data_);
          }

          if (v44 == 1)
          {
            std::basic_string<char16_t>::operator=(&v45, &v43);
            if (v44 == 1 && SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v43.__r_.__value_.__l.__data_);
            }

LABEL_97:
            operator new();
          }

          goto LABEL_98;
        }
      }

      else
      {
        LOBYTE(v43.__r_.__value_.__l.__data_) = 0;
        v44 = 0;
        if ((*(&v47.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_91;
        }
      }

      operator delete(v47.__r_.__value_.__l.__data_);
      goto LABEL_91;
    }
  }

  if (a4)
  {
    goto LABEL_97;
  }

LABEL_98:
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1BE6538DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::KoGrammarSynthesizer_KoDisplayFunction::~KoGrammarSynthesizer_KoDisplayFunction(morphun::grammar::synthesis::KoGrammarSynthesizer_KoDisplayFunction *this)
{
  *this = &unk_1F3CEFFE8;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>>>::destroy(*(this + 5));

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CEFFE8;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>>>::destroy(*(this + 5));
}

void std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>>>::destroy(*a1);
    std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,void *>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t> const,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,void *>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t> const,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>,void,0>(uint64_t a1)
{
  if (a1)
  {
    morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver::~KoGrammarSynthesizer_ParticleResolver((a1 + 24));
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

void std::pair<std::basic_string<char16_t> const,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>::pair[abi:se200100]<true,0>(std::basic_string<char16_t> *this, __int128 *a2, morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver *a3)
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

  morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver::KoGrammarSynthesizer_ParticleResolver(&this[1], a3);
}

uint64_t std::pair<std::basic_string<char16_t> const,morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver>::~pair(uint64_t a1)
{
  morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver::~KoGrammarSynthesizer_ParticleResolver((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

CFStringRef mss_createPrintCopy(uint64_t a1)
{
  v1 = npc<morphun::dialog::SpeakableString>(a1);
  v2 = (*(*v1 + 32))(v1);
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  return CFStringCreateWithCharacters(0, v4, v5);
}

CFStringRef mss_createSpeakCopy(uint64_t a1)
{
  v1 = npc<morphun::dialog::SpeakableString>(a1);
  v2 = (*(*v1 + 40))(v1);
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  return CFStringCreateWithCharacters(0, v4, v5);
}

uint64_t mss_contains(uint64_t a1, const __CFString *a2)
{
  npc<morphun::dialog::SpeakableString>(a1);
  morphun::util::CFUtils::to_u16string(&__p, a2);
  v4 = (*(*a1 + 64))(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1BE653EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    JUMPOUT(0x1BE653E94);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE653F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, 0x10B3C40F7FF9C27);
  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v19, v15, v20);
    __cxa_end_catch();
    JUMPOUT(0x1BE653F70);
  }

  _Unwind_Resume(a1);
}

void sub_1BE6540A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  MEMORY[0x1BFB49160](v21, 0x10B3C40F7FF9C27);
  if (a2 == 1)
  {
    v24 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v24, v20, v25);
    __cxa_end_catch();
    JUMPOUT(0x1BE654090);
  }

  _Unwind_Resume(a1);
}

uint64_t mss_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void morphun::analysis::TokenStreamContainer::~TokenStreamContainer(morphun::analysis::TokenStreamContainer *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

morphun::analysis::TokenStreamContainer *morphun::analysis::TokenStreamContainer::TokenStreamContainer(morphun::analysis::TokenStreamContainer *this, morphun::analysis::Analyzer *a2, morphun::analysis::Analyzer_TokenStreamComponents *a3, uint64_t a4)
{
  v7 = *a2;
  *this = *a2;
  *(this + *(v7 - 40)) = *(a2 + 1);
  npc<morphun::analysis::Analyzer>(a3);
  *(this + 1) = a3;
  v8 = npc<morphun::analysis::Analyzer_TokenStreamComponents>(a4);
  *(this + 2) = a4;
  v9 = (*(*a4 + 32))(v8);
  *(this + 3) = npc<morphun::analysis::TokenStream>(v9);
  return this;
}

void *morphun::analysis::TokenStreamContainer::TokenStreamContainer(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 40)) = a2[1];
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  return morphun::analysis::TokenStreamContainer::operator=(a1, a3);
}

void *morphun::analysis::TokenStreamContainer::operator=(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4)
  {
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == *(a2 + 16);
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      (*(*v5 + 48))(v5);
      v7 = a1[1];
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = a1[2];
          (*(*v8 + 32))(v8);
        }
      }
    }
  }

  *(a1 + 1) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = *(a2 + 24);
  *(a2 + 24) = 0;
  return a1;
}

void *morphun::analysis::TokenStreamContainer::TokenStreamContainer(void *a1, uint64_t a2)
{
  *a1 = &unk_1F3CF0058;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  return morphun::analysis::TokenStreamContainer::operator=(a1, a2);
}

void virtual thunk tomorphun::analysis::TokenStreamContainer::~TokenStreamContainer(morphun::analysis::TokenStreamContainer *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void morphun::exception::MissingResourceException::~MissingResourceException(std::exception *this)
{
  morphun::exception::MissingResourceException::~MissingResourceException(this);

  JUMPOUT(0x1BFB49160);
}

{
  this->__vftable = &unk_1F3CD09D8;
  if (SHIBYTE(this[12].__vftable) < 0)
  {
    operator delete(this[10].__vftable);
  }

  if (SHIBYTE(this[9].__vftable) < 0)
  {
    operator delete(this[7].__vftable);
  }

  morphun::exception::Throwable::~Throwable(this);
}

uint64_t morphun::exception::MissingResourceException::MissingResourceException(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v7 = morphun::exception::Throwable::Throwable(a1, a2);
  *v7 = &unk_1F3CD09D8;
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((v7 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(v7 + 72) = *(a3 + 2);
    *(v7 + 56) = v8;
  }

  if (*(a4 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 80), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 96) = *(a4 + 2);
    *(a1 + 80) = v9;
  }

  return a1;
}

void sub_1BE654728(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*v2);
  }

  morphun::exception::Throwable::~Throwable(v1);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::ArGrammarSynthesizer_WithPrepositionLookupFunction::getArticle(uint64_t a1, uint64_t a2)
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
      LOWORD(v10[0]) = 1576;
      v7 = 2;
    }

    else
    {
      HIBYTE(v11) = 3;
      LODWORD(v10[0]) = 104859176;
      WORD2(v10[0]) = 160;
      v7 = 6;
    }

    *(v10 | v7) = 0;
    operator new();
  }

  operator new();
}

void sub_1BE6548D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

double morphun::Chunk::getNormalizedString@<D0>(morphun::Chunk *this@<X0>, int a2@<W1>, std::basic_string<char16_t> *a3@<X8>)
{
  memset(&v20, 0, sizeof(v20));
  v6 = npc<morphun::Token>(*(this + 2));
  v7 = (this + 8);
  v8 = *(v6 + 80);
  while (1)
  {
    v9 = *v7;
    if (!*v7 || v9 == v8)
    {
      break;
    }

    v11 = *v9;
    v12 = **v9;
    {
      goto LABEL_7;
    }

    v16 = *v11;
    {
      v17 = *v11;
      {
        goto LABEL_14;
      }

      v18 = *v11;
      {
        goto LABEL_14;
      }

LABEL_7:
      v13 = *(v9 + 39);
      if (v13 >= 0)
      {
        v14 = (v9 + 2);
      }

      else
      {
        v14 = v9[2];
      }

      if (v13 >= 0)
      {
        v15 = *(v9 + 39);
      }

      else
      {
        v15 = v9[3];
      }

      std::basic_string<char16_t>::append(&v20, v14, v15);
      goto LABEL_14;
    }

    if (!a2)
    {
      goto LABEL_7;
    }

    if (*(v9 + 3) > *(v9 + 2))
    {
      std::basic_string<char16_t>::append(&v20, &word_1BE80F394, 1uLL);
    }

LABEL_14:
    v7 = (v9 + 10);
  }

  if (a2)
  {
    morphun::util::StringUtils::trim(&v20, a3);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    result = *&v20.__r_.__value_.__l.__data_;
    *a3 = v20;
  }

  return result;
}

void sub_1BE654B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::Chunk::getCleanValueString@<X0>(morphun::Chunk *this@<X0>, int a2@<W1>, std::basic_string<char16_t> *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  result = npc<morphun::Token>(*(this + 2));
  v7 = *(result + 80);
  for (i = (this + 8); ; i = (v9 + 80))
  {
    v9 = *i;
    if (!*i || v9 == v7)
    {
      break;
    }

    if (!a2 || (*(v9 + 64) & 1) != 0)
    {
      goto LABEL_33;
    }

    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "-");
    v11 = *(v9 + 63);
    if (v11 >= 0)
    {
      v12 = *(v9 + 63);
    }

    else
    {
      v12 = *(v9 + 48);
    }

    v13 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v13 = __p[1];
    }

    if (v12 != v13)
    {
      v23 = 0;
      goto LABEL_28;
    }

    if (v12)
    {
      v14 = __p[0];
      if ((v28 & 0x80u) == 0)
      {
        v14 = __p;
      }

      if (v11 >= 0)
      {
        v15 = (v9 + 40);
      }

      else
      {
        v15 = *(v9 + 40);
      }

      v16 = v12 - 1;
      do
      {
        v18 = *v15++;
        v17 = v18;
        v20 = *v14;
        v14 = (v14 + 2);
        v19 = v20;
        v22 = v16-- != 0;
        v23 = v19 == v17;
      }

      while (v19 == v17 && v22);
LABEL_28:
      if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    v23 = 1;
    if ((v28 & 0x80000000) == 0)
    {
LABEL_29:
      if (v23)
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }

LABEL_32:
    operator delete(__p[0]);
    if (v23)
    {
LABEL_30:
      result = std::basic_string<char16_t>::append(a3, &word_1BE80F394, 1uLL);
      continue;
    }

LABEL_33:
    v24 = *(v9 + 63);
    if (v24 >= 0)
    {
      v25 = (v9 + 40);
    }

    else
    {
      v25 = *(v9 + 40);
    }

    if (v24 >= 0)
    {
      v26 = *(v9 + 63);
    }

    else
    {
      v26 = *(v9 + 48);
    }

    result = std::basic_string<char16_t>::append(a3, v25, v26);
  }

  return result;
}

void sub_1BE654D30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::Chunk::getSubChunk(morphun::Chunk *this, int a2, int a3)
{
  v6 = *(npc<morphun::Token>(*(this + 2)) + 80);
  v7 = *(this + 1);
  if (v7)
  {
    v8 = v7 == v6;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    if (v9)
    {
      goto LABEL_10;
    }

    if ((*(*v7 + 24))(v7) > a2)
    {
      v9 = 0;
LABEL_10:
      if (v10)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

    if ((*(*v7 + 32))(v7) <= a2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    if (v10)
    {
LABEL_11:
      if (!v9)
      {
        goto LABEL_25;
      }

LABEL_12:
      if (v10)
      {
        break;
      }

      goto LABEL_25;
    }

LABEL_18:
    if ((*(*v7 + 24))(v7) >= a3)
    {
      v10 = 0;
      goto LABEL_25;
    }

    if ((*(*v7 + 32))(v7) >= a3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      goto LABEL_12;
    }

LABEL_25:
    v7 = v7[10];
  }

  while (v7 && v7 != v6);
  if (v10 && v9)
  {
    operator new();
  }

  return 0;
}

morphun::Chunk *morphun::Chunk::Chunk(morphun::Chunk *this, morphun::Token *a2, morphun::Token *a3, char a4)
{
  *this = &unk_1F3CD9218;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 6) = 0;
  *(this + 28) = a4;
  *(this + 6) = morphun::Chunk::checkSize(a2, a3, a3);
  return this;
}

uint64_t morphun::Chunk::getWordCount(morphun::Chunk *this, const morphun::Chunk *a2)
{
  v2 = npc<morphun::Chunk const>(this);
  v3 = *(v2 + 8);
  v4 = *(npc<morphun::Chunk const>(v2) + 16);
  v5 = 0;
  if (v3)
  {
    v6 = v3 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    do
    {
      v7 = **v3;
      if (v8)
      {
        v9 = v8;
        v10 = *v8;
        v11 = **v8;
        {
          v12 = (*(v10 + 7))(v9);
          v5 = morphun::Chunk::getWordCount(v12, v13) + v5;
        }
      }

      else
      {
        v5 = v5 + *(v3 + 64);
      }

      v3 = v3[10];
      npc<morphun::Token>(v3);
    }

    while (v3 && v3 != v4);
  }

  return v5;
}

uint64_t morphun::Chunk::getWordCount(morphun::Chunk *this)
{
  v1 = (*(*this + 64))(this);
  v2 = (*(*v1 + 32))(v1);
  (*(*v1 + 16))(v1);
  return v2;
}

void morphun::Chunk::~Chunk(morphun::Chunk *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

morphun::Chunk *morphun::Chunk::Chunk(morphun::Chunk *this, morphun::Token *a2, morphun::Token *a3, morphun::Token *a4, char a5)
{
  v6 = *a2;
  *this = *a2;
  *(this + *(v6 - 40)) = *(a2 + 1);
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 6) = 0;
  *(this + 28) = a5;
  *(this + 6) = morphun::Chunk::checkSize(a3, a4, a3);
  return this;
}

void virtual thunk tomorphun::Chunk::~Chunk(morphun::Chunk *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::dialog::CommonConceptFactoryImpl::quantifyType(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4)
  {
LABEL_14:
    v15 = (*(*(a3 + *(*a3 - 56)) + 24))(a3 + *(*a3 - 56));
    goto LABEL_15;
  }

  v9 = (*(*a3 + 128))(a3);
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v10 = v9;
  memset(&__p, 0, sizeof(__p));
  if (a5 == 2)
  {
    *(&__p.__r_.__value_.__s + 23) = 4;
    v11 = 0x6C006100750064;
  }

  else
  {
    if (a5 == 1)
    {
      *(&__p.__r_.__value_.__s + 23) = 8;
      *&__p.__r_.__value_.__l.__data_ = *L"singular";
      goto LABEL_9;
    }

    *(&__p.__r_.__value_.__s + 23) = 6;
    LODWORD(__p.__r_.__value_.__r.__words[1]) = 7077985;
    v11 = *L"plural";
  }

  __p.__r_.__value_.__r.__words[0] = v11;
LABEL_9:
  v12 = npc<morphun::dialog::SemanticFeature const>(a1[47]);
  v13 = (*(*v12 + 40))(v12);
  if (v13 + 8 != std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(v13, &__p))
  {
    v14 = a1[47];
    npc<morphun::dialog::SemanticFeature const>(v14);
    (*(*v10 + 64))(v10, v14, &__p);
  }

  v15 = (*(*(v10 + *(*v10 - 56)) + 24))(v10 + *(*v10 - 56));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  (*(*v10 + 16))(v10);
  if (!v15)
  {
    goto LABEL_14;
  }

LABEL_15:
  memset(&__p, 0, sizeof(__p));
  if (a1[48])
  {
    v16 = (*(*a3 + 48))(a3);
    if (v16)
    {
      std::basic_string<char16_t>::operator=(&__p, v16);
    }
  }

  if (!v15)
  {
    v18 = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(v18);
  }

  (*(*a1 + 120))(a1, a2, v15, &__p, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return (*(*v15 + 16))(v15);
}

void morphun::dialog::CommonConceptFactoryImpl::quantifiedJoin(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, &word_1BE80F394);
  morphun::dialog::SpeakableString::SpeakableString(v8, __p);
  morphun::dialog::SpeakableString::operator+(a1, v8, v9);
  morphun::dialog::SpeakableString::operator+(v9, a2, a3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BE655928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::CommonConceptFactoryImpl::quantify(morphun::dialog::CommonConceptFactoryImpl *this, const morphun::dialog::NumberConcept *a2, const morphun::dialog::SpeakableString *a3, const morphun::dialog::SemanticFeatureConceptBase *a4)
{
  if (*(this + 47))
  {
    npc<morphun::dialog::SemanticFeatureConceptBase const>(a4);
    v7 = *(this + 47);
    npc<morphun::dialog::SemanticFeature const>(v7);
    (*(*a4 + 48))(a4, v7);
  }

  if (*(this + 91) != (this + 736))
  {
    operator new();
  }

  v8 = *(a2 + 1);
  if (*(a2 + 4) != 1)
  {
    v8 = *(a2 + 1);
  }

  morphun::dialog::GrammaticalCountFactory::select((this + 712), v8);
  operator new();
}

void sub_1BE65636C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  MEMORY[0x1BFB49160](v20, 0x10B3C40F7FF9C27);
  std::__tree<std::u16string_view>::destroy(a20);
  _Unwind_Resume(a1);
}

uint64_t npc<morphun::dialog::GrammaticalCountConcept>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::dialog::CommonConceptFactoryImpl::quantify(morphun::dialog::CommonConceptFactoryImpl *this, const morphun::dialog::NumberConcept *a2, const morphun::dialog::SemanticFeatureConceptBase *a3)
{
  if (*(this + 49))
  {
    npc<morphun::dialog::SemanticFeatureConceptBase const>(a3);
    v6 = *(this + 49);
    npc<morphun::dialog::SemanticFeature const>(v6);
    v7 = (*(*a3 + 104))(a3, v6);
    if (v7)
    {
      v8 = v7;
      v9 = (*(*v7 + 32))(v7);
      v10 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(this + 400, v9);
      (*(*v8 + 16))(v8);
      if ((this + 408) != v10)
      {
        operator new();
      }
    }
  }

  v11 = (*(*a2 + 24))(a2);
  v12 = (*(*this + 112))(this, a2, v11, a3);
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  return v12;
}

void morphun::dialog::CommonConceptFactoryImpl::quote(void ***this@<X0>, const morphun::dialog::SpeakableString *a2@<X1>, void *a3@<X8>)
{
  if ((*(*a2 + 48))(a2))
  {
    v6 = (*(*a2 + 32))(a2);
    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v15, this + 53, v6);
    v7 = *(this + 471);
    if (v7 >= 0)
    {
      v8 = (this + 56);
    }

    else
    {
      v8 = this[56];
    }

    if (v7 >= 0)
    {
      v9 = *(this + 471);
    }

    else
    {
      v9 = this[57];
    }

    std::basic_string<char16_t>::append(&v15, v8, v9);
    __p = v15;
    memset(&v15, 0, sizeof(v15));
    morphun::dialog::SpeakableString::SpeakableString(a3, &__p);
  }

  else
  {
    v10 = (*(*a2 + 32))(a2);
    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v15, this + 53, v10);
    v11 = *(this + 471);
    if (v11 >= 0)
    {
      v12 = (this + 56);
    }

    else
    {
      v12 = this[56];
    }

    if (v11 >= 0)
    {
      v13 = *(this + 471);
    }

    else
    {
      v13 = this[57];
    }

    std::basic_string<char16_t>::append(&v15, v12, v13);
    __p = v15;
    memset(&v15, 0, sizeof(v15));
    v14 = (*(*a2 + 40))(a2);
    morphun::dialog::SpeakableString::SpeakableString(a3, &__p, v14);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_1BE6568FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_1BE6569D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  MEMORY[0x1BFB49160](v10, v9);
  _Unwind_Resume(a1);
}

void sub_1BE656A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  MEMORY[0x1BFB49160](v10, v9);
  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::CommonConceptFactoryImpl::createAndList(uint64_t a1, void *a2)
{
  morphun::dialog::convertToConst(__p, a2);
  v3 = (*(*a1 + 64))(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1BE656B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE656C70(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dialog::CommonConceptFactoryImpl::createOrList(uint64_t a1, void *a2)
{
  morphun::dialog::convertToConst(__p, a2);
  v3 = (*(*a1 + 48))(a1, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1BE656E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(void **this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(void **this, void **a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 18)) = a2[1];
  *(this + *(*this - 5)) = a2[2];
  if (*(this + 471) < 0)
  {
    operator delete(this[56]);
  }

  if (*(this + 447) < 0)
  {
    operator delete(this[53]);
  }

  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(this[51]);
  morphun::dialog::SemanticFeatureModel::~SemanticFeatureModel((this + 17));
}

void morphun::dialog::CommonConceptFactoryImpl::CommonConceptFactoryImpl(morphun::dialog::CommonConceptFactoryImpl *this, const morphun::util::ULocale *a2, const morphun::util::ULocale *a3)
{
  memset(v5, 0, sizeof(v5));
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  morphun::dialog::CommonConceptFactoryImpl::CommonConceptFactoryImpl(this, a2, a3, v5, &v3);
}

void morphun::dialog::CommonConceptFactoryImpl::CommonConceptFactoryImpl(uint64_t a1, uint64_t *a2, const morphun::util::ULocale *a3, uint64_t a4, void *a5)
{
  v9 = *a2;
  *a1 = *a2;
  *(a1 + *(v9 - 144)) = a2[1];
  *(a1 + *(*a1 - 40)) = a2[2];
  morphun::util::ULocale::ULocale(a1 + 8, a3);
  morphun::dialog::SemanticFeatureModel::SemanticFeatureModel((a1 + 136), a3);
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "c");
  v10 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a1 + 144, __p);
  v11 = a1 + 152;
  if (a1 + 152 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v10 + 56);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 376) = v12;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "m");
  v13 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a1 + 144, __p);
  if (v11 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 56);
  }

  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 384) = v14;
  v15 = *(a4 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a4 + 8);
  }

  if (v15)
  {
    v16 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a1 + 144, a4);
    if (v11 == v16)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(v16 + 56);
    }
  }

  *(a1 + 392) = v15;
  std::map<std::basic_string<char16_t>,std::basic_string<char16_t>>::map[abi:se200100]((a1 + 400), a5);
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 424) = 0u;
  morphun::dialog::getDefaultList();
}

void sub_1BE657624(_Unwind_Exception *a1)
{
  ulocdata_close();
  if (*(v1 + 471) < 0)
  {
    operator delete(*(v1 + 448));
  }

  if (*(v1 + 447) < 0)
  {
    operator delete(*v2);
  }

  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(*(v1 + 408));
  morphun::dialog::SemanticFeatureModel::~SemanticFeatureModel((v1 + 136));
  _Unwind_Resume(a1);
}

void sub_1BE657B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  __cxa_free_exception(v40);
  ulistfmt_close();
  if (*(v41 - 113) < 0)
  {
    operator delete(*(v41 - 136));
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::getQuote(uint64_t a1)
{
  *(a1 + 23) = 4;
  *a1 = 0;
  *(a1 + 8) = 0;
  Delimiter = ulocdata_getDelimiter();
  std::basic_string<char16_t>::resize(a1, Delimiter, 0);
}

void sub_1BE657D24(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void morphun::analysis::stemmer::EnStemFilter::~EnStemFilter(void **this)
{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CDA1B0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CDA1B0);
}

void morphun::analysis::Analyzer_TokenStreamComponents::~Analyzer_TokenStreamComponents(morphun::analysis::Analyzer_TokenStreamComponents *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::analysis::Analyzer_TokenStreamComponents::~Analyzer_TokenStreamComponents(morphun::analysis::Analyzer_TokenStreamComponents *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }
}

uint64_t *morphun::analysis::Analyzer_TokenStreamComponents::Analyzer_TokenStreamComponents(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  *result = *a2;
  *(result + *(v4 - 40)) = a2[1];
  result[1] = a3;
  result[2] = a4;
  return result;
}

void *morphun::analysis::Analyzer_TokenStreamComponents::Analyzer_TokenStreamComponents(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_1F3CD1E98;
  result[1] = a2;
  result[2] = a3;
  return result;
}

void virtual thunk tomorphun::analysis::Analyzer_TokenStreamComponents::~Analyzer_TokenStreamComponents(morphun::analysis::Analyzer_TokenStreamComponents *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleLookupFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 24))(a2);
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver::getParticleValue(&__p, a1 + 24, v6, v7, 1);
  v8 = (*(*a1 + 48))(a1, a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_1BE6580C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleLookupFunction::~KoGrammarSynthesizer_ParticleLookupFunction(morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleLookupFunction *this)
{
  *this = &unk_1F3CD4468;
  morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver::~KoGrammarSynthesizer_ParticleResolver((this + 24));

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD4468;
  morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver::~KoGrammarSynthesizer_ParticleResolver((this + 24));
}

void morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleLookupFunction::KoGrammarSynthesizer_ParticleLookupFunction(morphun::dialog::DefaultArticleLookupFunction *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &off_1F3CE63E0;
  v4 = morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(a1, off_1F3CDB748, a2, 1, 0);
  *v4 = &unk_1F3CD4468;
  morphun::grammar::synthesis::KoGrammarSynthesizer_ParticleResolver::KoGrammarSynthesizer_ParticleResolver(v4 + 3, a3);
}

double marisa::grimoire::trie::LoudsTrie::LoudsTrie(marisa::grimoire::trie::LoudsTrie *this)
{
  result = 0.0;
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 137) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 185) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 89) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 233) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 345) = 0u;
  *(this + 393) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 297) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 441) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 553) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 601) = 0u;
  *(this + 505) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 29) = 0u;
  *(this + 649) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 697) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 90) = 0;
  *(this + 182) = 0;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 817) = 0u;
  *(this + 929) = 0u;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 977) = 0u;
  *(this + 952) = 0u;
  *(this + 968) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 881) = 0u;
  *(this + 1048) = 0;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1000) = 0u;
  *(this + 66) = 0u;
  *(this + 784) = 0;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 46) = 0u;
  *(this + 134) = 3;
  *(this + 135) = 0x100000000200;
  *(this + 272) = 0x20000;
  *(this + 137) = 0;
  *(this + 138) = -1;
  *(this + 1112) = 0u;
  *(this + 282) = -1;
  return result;
}

void marisa::grimoire::trie::LoudsTrie::~LoudsTrie(marisa::grimoire::trie::LoudsTrie *this)
{
  marisa::grimoire::io::Mapper::~Mapper((this + 1096));
  v2 = *(this + 126);
  if (v2)
  {
    MEMORY[0x1BFB49140](v2, 0x1000C8077774924);
  }

  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(this + 1000);
  v3 = *(this + 119);
  if (v3)
  {
    MEMORY[0x1BFB49140](v3, 0x1000C8077774924);
  }

  v4 = *(this + 113);
  if (v4)
  {
    MEMORY[0x1BFB49140](v4, 0x1000C8077774924);
  }

  v5 = *(this + 107);
  if (v5)
  {
    MEMORY[0x1BFB49140](v5, 0x1000C8077774924);
  }

  v6 = *(this + 99);
  if (v6)
  {
    MEMORY[0x1BFB49140](v6, 0x1000C8077774924);
  }

  v7 = *(this + 93);
  if (v7)
  {
    MEMORY[0x1BFB49140](v7, 0x1000C8077774924);
  }

  v8 = *(this + 84);
  if (v8)
  {
    MEMORY[0x1BFB49140](v8, 0x1000C8077774924);
  }

  v9 = *(this + 78);
  if (v9)
  {
    MEMORY[0x1BFB49140](v9, 0x1000C8077774924);
  }

  v10 = *(this + 72);
  if (v10)
  {
    MEMORY[0x1BFB49140](v10, 0x1000C8077774924);
  }

  v11 = *(this + 66);
  if (v11)
  {
    MEMORY[0x1BFB49140](v11, 0x1000C8077774924);
  }

  v12 = *(this + 60);
  if (v12)
  {
    MEMORY[0x1BFB49140](v12, 0x1000C8077774924);
  }

  v13 = *(this + 52);
  if (v13)
  {
    MEMORY[0x1BFB49140](v13, 0x1000C8077774924);
  }

  v14 = *(this + 46);
  if (v14)
  {
    MEMORY[0x1BFB49140](v14, 0x1000C8077774924);
  }

  v15 = *(this + 40);
  if (v15)
  {
    MEMORY[0x1BFB49140](v15, 0x1000C8077774924);
  }

  v16 = *(this + 34);
  if (v16)
  {
    MEMORY[0x1BFB49140](v16, 0x1000C8077774924);
  }

  v17 = *(this + 26);
  if (v17)
  {
    MEMORY[0x1BFB49140](v17, 0x1000C8077774924);
  }

  v18 = *(this + 20);
  if (v18)
  {
    MEMORY[0x1BFB49140](v18, 0x1000C8077774924);
  }

  v19 = *(this + 14);
  if (v19)
  {
    MEMORY[0x1BFB49140](v19, 0x1000C8077774924);
  }

  v20 = *(this + 8);
  if (v20)
  {
    MEMORY[0x1BFB49140](v20, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x1BFB49140](*this, 0x1000C8077774924);
  }
}

uint64_t marisa::grimoire::trie::Config::parse_(uint64_t this, unsigned int a2)
{
  if (a2 >= 0x100000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x50000003BLL;
    v5 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/config.h:59: MARISA_CODE_ERROR: (config_flags & ~MARISA_CONFIG_MASK) != 0";
    goto LABEL_26;
  }

  if ((a2 & 0x7F) != 0)
  {
    *this = a2 & 0x7F;
  }

  v2 = a2 & 0xF80;
  v3 = 512;
  if (v2 <= 0x1FF)
  {
    if ((a2 & 0xF80) == 0)
    {
      goto LABEL_14;
    }

    if (v2 != 128)
    {
      v3 = a2 & 0xF80;
      if (v2 != 256)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

LABEL_13:
    v3 = a2 & 0xF80;
    goto LABEL_14;
  }

  if (v2 == 512)
  {
    goto LABEL_14;
  }

  if (v2 == 1024)
  {
    goto LABEL_13;
  }

  v3 = a2 & 0xF80;
  if (v2 != 2048)
  {
LABEL_12:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000065;
    v5 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/config.h:101: MARISA_CODE_ERROR: undefined cache level";
    goto LABEL_26;
  }

LABEL_14:
  *(this + 8) = v3;
  v6 = 4096;
  v7 = a2 & 0xF000;
  if ((a2 & 0xF000) != 0 && v7 != 4096)
  {
    if (v7 != 0x2000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F3CD9BC8;
      exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x500000079;
      v5 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/config.h:121: MARISA_CODE_ERROR: undefined tail mode";
      goto LABEL_26;
    }

    v6 = 0x2000;
  }

  *(this + 12) = v6;
  v8 = 0x20000;
  v9 = a2 & 0xF0000;
  if ((a2 & 0xF0000) != 0 && v9 != 0x20000)
  {
    if (v9 == 0x10000)
    {
      v8 = 0x10000;
      goto LABEL_22;
    }

    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x50000008DLL;
    v5 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/config.h:141: MARISA_CODE_ERROR: undefined node order";
LABEL_26:
    exception[3] = v5;
  }

LABEL_22:
  *(this + 16) = v8;
  return this;
}

double marisa::grimoire::trie::LoudsTrie::swap(marisa::grimoire::trie::LoudsTrie *this, marisa::grimoire::trie::LoudsTrie *a2)
{
  marisa::grimoire::vector::BitVector::swap(this, a2);
  marisa::grimoire::vector::BitVector::swap((this + 208), (a2 + 208));
  marisa::grimoire::vector::BitVector::swap((this + 416), (a2 + 416));
  v4 = *(this + 78);
  *(this + 78) = *(a2 + 78);
  *(a2 + 78) = v4;
  v5 = *(this + 79);
  *(this + 79) = *(a2 + 79);
  *(a2 + 79) = v5;
  v6 = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v6;
  v7 = *(this + 81);
  *(this + 81) = *(a2 + 81);
  *(a2 + 81) = v7;
  v8 = *(this + 82);
  *(this + 82) = *(a2 + 82);
  *(a2 + 82) = v8;
  LOBYTE(v8) = *(this + 664);
  *(this + 664) = *(a2 + 664);
  *(a2 + 664) = v8;
  marisa::grimoire::vector::Vector<unsigned int>::swap(this + 84, a2 + 84);
  v9 = *(this + 90);
  *(this + 90) = *(a2 + 90);
  *(a2 + 90) = v9;
  LODWORD(v9) = *(this + 182);
  *(this + 182) = *(a2 + 182);
  *(a2 + 182) = v9;
  v10 = *(this + 92);
  *(this + 92) = *(a2 + 92);
  *(a2 + 92) = v10;
  v11 = *(this + 93);
  *(this + 93) = *(a2 + 93);
  *(a2 + 93) = v11;
  v12 = *(this + 94);
  *(this + 94) = *(a2 + 94);
  *(a2 + 94) = v12;
  v13 = *(this + 95);
  *(this + 95) = *(a2 + 95);
  *(a2 + 95) = v13;
  v14 = *(this + 96);
  *(this + 96) = *(a2 + 96);
  *(a2 + 96) = v14;
  v15 = *(this + 97);
  *(this + 97) = *(a2 + 97);
  *(a2 + 97) = v15;
  LOBYTE(v15) = *(this + 784);
  *(this + 784) = *(a2 + 784);
  *(a2 + 784) = v15;
  marisa::grimoire::vector::BitVector::swap((this + 792), (a2 + 792));
  v16 = *(this + 125);
  *(this + 125) = *(a2 + 125);
  *(a2 + 125) = v16;
  v17 = *(this + 126);
  *(this + 126) = *(a2 + 126);
  *(a2 + 126) = v17;
  v18 = *(this + 127);
  *(this + 127) = *(a2 + 127);
  *(a2 + 127) = v18;
  v19 = *(this + 128);
  *(this + 128) = *(a2 + 128);
  *(a2 + 128) = v19;
  v20 = *(this + 129);
  *(this + 129) = *(a2 + 129);
  *(a2 + 129) = v20;
  v21 = *(this + 130);
  *(this + 130) = *(a2 + 130);
  *(a2 + 130) = v21;
  LOBYTE(v21) = *(this + 1048);
  *(this + 1048) = *(a2 + 1048);
  *(a2 + 1048) = v21;
  v22 = *(this + 132);
  *(this + 132) = *(a2 + 132);
  *(a2 + 132) = v22;
  v23 = *(this + 133);
  *(this + 133) = *(a2 + 133);
  *(a2 + 133) = v23;
  v24 = *(this + 134);
  *(this + 134) = *(a2 + 134);
  *(a2 + 134) = v24;
  result = *(a2 + 135);
  v26 = *(this + 135);
  *(this + 135) = result;
  *(a2 + 135) = v26;
  LODWORD(v24) = *(this + 272);
  *(this + 272) = *(a2 + 272);
  *(a2 + 272) = v24;
  v27 = *(this + 137);
  *(this + 137) = *(a2 + 137);
  *(a2 + 137) = v27;
  v28 = *(this + 139);
  *(this + 139) = *(a2 + 139);
  *(a2 + 139) = v28;
  v29 = *(this + 138);
  *(this + 138) = *(a2 + 138);
  *(a2 + 138) = v29;
  v30 = *(this + 140);
  *(this + 140) = *(a2 + 140);
  *(a2 + 140) = v30;
  LODWORD(v30) = *(this + 282);
  *(this + 282) = *(a2 + 282);
  *(a2 + 282) = v30;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,false>(uint64_t result, char *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = (a2 - 8);
  for (i = v7; ; *(i - 1) = v56)
  {
LABEL_3:
    v7 = i;
    v10 = (a2 - i) >> 3;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(i, i + 2, a2 - 2);
        case 4:
          result = std::__sort3[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(i, i + 2, i + 4);
          v97 = *v8;
          v98 = i[4];
          v99 = -1;
          if (*v8 >= v98)
          {
            v99 = 1;
          }

          if (v97 == v98)
          {
            v100 = *(a2 - 1);
            v101 = i[5];
            v94 = v100 >= v101;
            v102 = v100 == v101;
            v99 = -1;
            if (v94)
            {
              v99 = 1;
            }

            if (v102)
            {
              v99 = 0;
            }
          }

          if (v99 < 0)
          {
            i[4] = v97;
            *(a2 - 2) = v98;
            v103 = i[5];
            i[5] = *(a2 - 1);
            *(a2 - 1) = v103;
            v104 = i[4];
            v105 = i[2];
            v106 = -1;
            if (v104 >= v105)
            {
              v106 = 1;
            }

            if (v104 == v105)
            {
              v107 = i[5];
              v108 = i[3];
              v94 = v107 >= v108;
              v109 = v107 == v108;
              v106 = -1;
              if (v94)
              {
                v106 = 1;
              }

              if (v109)
              {
                v106 = 0;
              }
            }

            if (v106 < 0)
            {
              v110 = i[3];
              v111 = i[5];
              i[2] = v104;
              i[3] = v111;
              i[4] = v105;
              i[5] = v110;
              v112 = *i;
              v113 = -1;
              if (v104 >= *i)
              {
                v113 = 1;
              }

              if (v104 == v112)
              {
                v114 = i[1];
                v94 = v111 >= v114;
                v115 = v111 == v114;
                v113 = -1;
                if (v94)
                {
                  v113 = 1;
                }

                if (v115)
                {
                  v113 = 0;
                }
              }

              if (v113 < 0)
              {
                v116 = i[1];
                *i = v104;
                i[1] = v111;
                i[2] = v112;
                i[3] = v116;
              }
            }
          }

          return result;
        case 5:

          return std::__sort5[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(i, i + 2, i + 4, i + 6, a2 - 2);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v89 = *v8;
        v90 = *i;
        v91 = -1;
        if (*v8 >= *i)
        {
          v91 = 1;
        }

        if (v89 == v90)
        {
          v92 = *(a2 - 1);
          v93 = i[1];
          v94 = v92 >= v93;
          v95 = v92 == v93;
          v91 = -1;
          if (v94)
          {
            v91 = 1;
          }

          if (v95)
          {
            v91 = 0;
          }
        }

        if (v91 < 0)
        {
          *i = v89;
          *(a2 - 2) = v90;
          v96 = i[1];
          i[1] = *(a2 - 1);
          *(a2 - 1) = v96;
        }

        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i != a2)
      {
        v140 = (v10 - 2) >> 1;
        v141 = v140;
        do
        {
          v142 = v141;
          if (v140 >= v141)
          {
            v143 = (2 * v141) | 1;
            v144 = &i[2 * v143];
            if (2 * v142 + 2 < v10)
            {
              v145 = v144[2];
              v146 = *v144 == v145;
              if (*v144 >= v145)
              {
                v147 = 1;
              }

              else
              {
                v147 = -1;
              }

              if (v146)
              {
                v148 = v144[1];
                v149 = v144[3];
                v150 = v148 == v149;
                v147 = v148 >= v149 ? 1 : -1;
                if (v150)
                {
                  v147 = 0;
                }
              }

              if (v147 < 0)
              {
                v144 += 2;
                v143 = 2 * v142 + 2;
              }
            }

            v151 = &i[2 * v142];
            v152 = *v144;
            if (*v144 >= *v151)
            {
              v153 = 1;
            }

            else
            {
              v153 = -1;
            }

            if (*v144 == *v151)
            {
              v154 = v144[1];
              v155 = v151[1];
              v156 = v154 == v155;
              v153 = v154 >= v155 ? 1 : -1;
              if (v156)
              {
                v153 = 0;
              }
            }

            if ((v153 & 0x80) == 0)
            {
              v157 = *v151;
              v158 = v151[1];
              do
              {
                result = v151;
                v151 = v144;
                *result = v152;
                *(result + 4) = v144[1];
                if (v140 < v143)
                {
                  break;
                }

                v159 = (2 * v143) | 1;
                v144 = &i[2 * v159];
                v143 = 2 * v143 + 2;
                if (v143 >= v10)
                {
                  v143 = v159;
                }

                else
                {
                  v160 = v144[2];
                  v161 = *v144 == v160;
                  if (*v144 >= v160)
                  {
                    v162 = 1;
                  }

                  else
                  {
                    v162 = -1;
                  }

                  if (v161)
                  {
                    v163 = v144[1];
                    v164 = v144[3];
                    v165 = v163 == v164;
                    v162 = v163 >= v164 ? 1 : -1;
                    if (v165)
                    {
                      v162 = 0;
                    }
                  }

                  if (v162 < 0)
                  {
                    v144 += 2;
                  }

                  else
                  {
                    v143 = v159;
                  }
                }

                v152 = *v144;
                if (*v144 >= v157)
                {
                  result = 1;
                }

                else
                {
                  result = 255;
                }

                if (v152 == v157)
                {
                  v166 = v144[1];
                  v167 = v166 == v158;
                  result = v166 >= v158 ? 1 : 255;
                  if (v167)
                  {
                    result = 0;
                  }
                }
              }

              while ((result & 0x80) == 0);
              *v151 = v157;
              v151[1] = v158;
            }
          }

          v141 = v142 - 1;
        }

        while (v142);
        do
        {
          v168 = 0;
          v169 = *i;
          v170 = i;
          do
          {
            v171 = &v170[2 * v168];
            v172 = (v171 + 2);
            v173 = (2 * v168) | 1;
            v168 = 2 * v168 + 2;
            if (v168 >= v10)
            {
              v168 = v173;
            }

            else
            {
              v175 = (v171 + 4);
              v174 = v171[4];
              v176 = v171[2];
              v177 = v176 == v174;
              if (v176 >= v174)
              {
                result = 1;
              }

              else
              {
                result = 255;
              }

              if (v177)
              {
                v178 = v171[3];
                v179 = v171[5];
                v180 = v178 == v179;
                if (v178 >= v179)
                {
                  v181 = 1;
                }

                else
                {
                  v181 = 255;
                }

                if (v180)
                {
                  result = 0;
                }

                else
                {
                  result = v181;
                }
              }

              if ((result & 0x80) != 0)
              {
                v172 = v175;
              }

              else
              {
                v168 = v173;
              }
            }

            *v170 = *v172;
            v170[1] = *(v172 + 1);
            v170 = v172;
          }

          while (v168 <= (v10 - 2) / 2);
          if (v172 == a2 - 8)
          {
            *v172 = v169;
          }

          else
          {
            *v172 = *(a2 - 2);
            *(v172 + 1) = *(a2 - 1);
            *(a2 - 1) = v169;
            v182 = (v172 - i + 8) >> 3;
            v183 = v182 < 2;
            v184 = v182 - 2;
            if (!v183)
            {
              v185 = v184 >> 1;
              v186 = &i[2 * v185];
              v187 = *v186;
              if (*v186 >= *v172)
              {
                v188 = 1;
              }

              else
              {
                v188 = -1;
              }

              if (*v186 == *v172)
              {
                v189 = *(v186 + 1);
                v190 = *(v172 + 1);
                v191 = v189 == v190;
                v188 = v189 >= v190 ? 1 : -1;
                if (v191)
                {
                  v188 = 0;
                }
              }

              if (v188 < 0)
              {
                v192 = *v172;
                v193 = *(v172 + 1);
                do
                {
                  v194 = v172;
                  v172 = v186;
                  *v194 = v187;
                  *(v194 + 1) = *(v186 + 1);
                  if (!v185)
                  {
                    break;
                  }

                  v185 = (v185 - 1) >> 1;
                  v186 = &i[2 * v185];
                  v187 = *v186;
                  if (*v186 >= v192)
                  {
                    v195 = 1;
                  }

                  else
                  {
                    v195 = -1;
                  }

                  if (v187 == v192)
                  {
                    v196 = *(v186 + 1);
                    v197 = v196 == v193;
                    v195 = v196 >= v193 ? 1 : -1;
                    if (v197)
                    {
                      v195 = 0;
                    }
                  }
                }

                while (v195 < 0);
                *v172 = v192;
                *(v172 + 1) = v193;
              }
            }
          }

          a2 -= 8;
          v183 = v10-- <= 2;
        }

        while (!v183);
      }

      return result;
    }

    v11 = v10 >> 1;
    v12 = &i[2 * (v10 >> 1)];
    if (v10 < 0x81)
    {
      result = std::__sort3[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(&v7[2 * (v10 >> 1)], v7, a2 - 2);
    }

    else
    {
      std::__sort3[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(v7, &v7[2 * (v10 >> 1)], a2 - 2);
      std::__sort3[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(v7 + 2, v12 - 2, a2 - 4);
      std::__sort3[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(v7 + 4, &v7[2 * v11 + 2], a2 - 6);
      result = std::__sort3[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(v12 - 2, v12, &v7[2 * v11 + 2]);
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
    }

    --a3;
    if (a4)
    {
      goto LABEL_27;
    }

    v14 = *(v7 - 2);
    v15 = v14 == *v7;
    if (v14 >= *v7)
    {
      v16 = 1;
    }

    else
    {
      v16 = -1;
    }

    if (v15)
    {
      v17 = *(v7 - 1);
      v18 = v7[1];
      v19 = v17 == v18;
      v16 = v17 >= v18 ? 1 : -1;
      if (v19)
      {
        v16 = 0;
      }
    }

    if (v16 < 0)
    {
LABEL_27:
      v21 = (v7 + 2);
      v20 = *v7;
      v22 = HIDWORD(*v7);
      do
      {
        if (v21 == a2)
        {
          goto LABEL_401;
        }

        v23 = v21;
        v24 = *v21;
        if (*v21 >= v20)
        {
          v25 = 1;
        }

        else
        {
          v25 = -1;
        }

        if (v24 == v20)
        {
          v26 = *(v21 + 1);
          v27 = v26 == v22;
          v25 = v26 >= v22 ? 1 : -1;
          if (v27)
          {
            v25 = 0;
          }
        }

        v21 += 8;
      }

      while (v25 < 0);
      v28 = a2;
      if (v23 - 2 != v7)
      {
        while (v28 != v7)
        {
          v29 = v28 - 2;
          v30 = *(v28 - 2);
          v31 = v30 == v20;
          if (v30 >= v20)
          {
            v32 = 1;
          }

          else
          {
            v32 = -1;
          }

          if (v31)
          {
            v33 = *(v28 - 1);
            v34 = v33 == v22;
            if (v33 >= v22)
            {
              v35 = 1;
            }

            else
            {
              v35 = -1;
            }

            if (v34)
            {
              v32 = 0;
            }

            else
            {
              v32 = v35;
            }
          }

          v28 = v29;
          if (v32 < 0)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_401;
      }

      v36 = a2;
      while (v23 < v36)
      {
        v29 = (v36 - 8);
        v37 = *(v36 - 2);
        v38 = v37 == v20;
        if (v37 >= v20)
        {
          v39 = 1;
        }

        else
        {
          v39 = -1;
        }

        if (v38)
        {
          v40 = *(v36 - 1);
          v41 = v40 == v22;
          if (v40 >= v22)
          {
            v42 = 1;
          }

          else
          {
            v42 = -1;
          }

          if (v41)
          {
            v39 = 0;
          }

          else
          {
            v39 = v42;
          }
        }

        v36 = v29;
        if (v39 < 0)
        {
          goto LABEL_70;
        }
      }

      v29 = v36;
LABEL_70:
      if (v23 < v29)
      {
        v43 = *v29;
        i = v23;
        v44 = v29;
LABEL_72:
        *i = v43;
        *v44 = v24;
        v45 = i[1];
        i[1] = v44[1];
        v44[1] = v45;
        v46 = (i + 2);
        while (v46 != a2)
        {
          i = v46;
          v24 = *v46;
          if (*v46 >= v20)
          {
            v47 = 1;
          }

          else
          {
            v47 = -1;
          }

          if (v24 == v20)
          {
            v48 = *(v46 + 1);
            v49 = v48 == v22;
            v47 = v48 >= v22 ? 1 : -1;
            if (v49)
            {
              v47 = 0;
            }
          }

          v46 += 8;
          if ((v47 & 0x80) == 0)
          {
            v50 = v44;
            while (v50 != v7)
            {
              v44 = v50 - 2;
              v43 = *(v50 - 2);
              if (v43 >= v20)
              {
                v51 = 1;
              }

              else
              {
                v51 = -1;
              }

              if (v43 == v20)
              {
                v52 = *(v50 - 1);
                v53 = v52 == v22;
                if (v52 >= v22)
                {
                  v54 = 1;
                }

                else
                {
                  v54 = -1;
                }

                if (v53)
                {
                  v51 = 0;
                }

                else
                {
                  v51 = v54;
                }
              }

              v50 = v44;
              if (v51 < 0)
              {
                if (i < v44)
                {
                  goto LABEL_72;
                }

                goto LABEL_100;
              }
            }

            goto LABEL_401;
          }
        }

        goto LABEL_401;
      }

      i = v23;
LABEL_100:
      if (i - 2 != v7)
      {
        *v7 = *(i - 2);
        v7[1] = *(i - 1);
      }

      *(i - 2) = v20;
      *(i - 1) = v22;
      if (v23 < v29)
      {
LABEL_105:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,false>(v7, i - 2, a3, a4 & 1);
        a4 = 0;
        goto LABEL_3;
      }

      v55 = std::__insertion_sort_incomplete[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(v7, i - 8);
      result = std::__insertion_sort_incomplete[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(i, a2);
      if (!result)
      {
        if (v55)
        {
          goto LABEL_3;
        }

        goto LABEL_105;
      }

      a2 = (i - 2);
      if (v55)
      {
        return result;
      }

      goto LABEL_2;
    }

    v57 = *v7;
    v56 = v7[1];
    if (*v8 <= *v7)
    {
      v58 = 1;
    }

    else
    {
      v58 = -1;
    }

    if (*v8 == *v7)
    {
      v59 = *(a2 - 1);
      v60 = v59 == v56;
      v58 = v59 <= v56 ? 1 : -1;
      if (v60)
      {
        v58 = 0;
      }
    }

    if (v58 < 0)
    {
      v65 = v7 + 2;
      do
      {
        if (v65 == a2)
        {
          goto LABEL_401;
        }

        if (*v65 <= v57)
        {
          v66 = 1;
        }

        else
        {
          v66 = -1;
        }

        if (*v65 == v57)
        {
          v67 = v65[1];
          v68 = v67 == v56;
          v66 = v67 <= v56 ? 1 : -1;
          if (v68)
          {
            v66 = 0;
          }
        }

        v65 += 2;
      }

      while ((v66 & 0x80) == 0);
      i = v65 - 2;
    }

    else
    {
      v61 = v7 + 2;
      do
      {
        i = v61;
        if (v61 >= a2)
        {
          break;
        }

        if (*v61 <= v57)
        {
          v62 = 1;
        }

        else
        {
          v62 = -1;
        }

        if (*v61 == v57)
        {
          v63 = v61[1];
          v64 = v63 == v56;
          v62 = v63 <= v56 ? 1 : -1;
          if (v64)
          {
            v62 = 0;
          }
        }

        v61 += 2;
      }

      while ((v62 & 0x80) == 0);
    }

    v69 = a2;
    if (i < a2)
    {
      v70 = a2;
      while (v70 != v7)
      {
        v69 = v70 - 2;
        v71 = *(v70 - 2);
        v72 = v71 == v57;
        if (v71 <= v57)
        {
          v73 = 1;
        }

        else
        {
          v73 = -1;
        }

        if (v72)
        {
          v74 = *(v70 - 1);
          v75 = v74 == v56;
          if (v74 <= v56)
          {
            v76 = 1;
          }

          else
          {
            v76 = -1;
          }

          if (v75)
          {
            v73 = 0;
          }

          else
          {
            v73 = v76;
          }
        }

        v70 = v69;
        if ((v73 & 0x80) == 0)
        {
          goto LABEL_157;
        }
      }

      goto LABEL_401;
    }

LABEL_157:
    if (i < v69)
    {
      v77 = *i;
      v78 = *v69;
      do
      {
        *i = v78;
        *v69 = v77;
        v79 = i[1];
        i[1] = v69[1];
        v69[1] = v79;
        v80 = i + 2;
        do
        {
          if (v80 == a2)
          {
            goto LABEL_401;
          }

          i = v80;
          v77 = *v80;
          if (*v80 <= v57)
          {
            v81 = 1;
          }

          else
          {
            v81 = -1;
          }

          if (v77 == v57)
          {
            v82 = v80[1];
            v83 = v82 == v56;
            v81 = v82 <= v56 ? 1 : -1;
            if (v83)
            {
              v81 = 0;
            }
          }

          v80 += 2;
        }

        while ((v81 & 0x80) == 0);
        v84 = v69;
        do
        {
          if (v84 == v7)
          {
            goto LABEL_401;
          }

          v69 = v84 - 2;
          v78 = *(v84 - 2);
          if (v78 <= v57)
          {
            v85 = 1;
          }

          else
          {
            v85 = -1;
          }

          if (v78 == v57)
          {
            v86 = *(v84 - 1);
            v87 = v86 == v56;
            if (v86 <= v56)
            {
              v88 = 1;
            }

            else
            {
              v88 = -1;
            }

            if (v87)
            {
              v85 = 0;
            }

            else
            {
              v85 = v88;
            }
          }

          v84 = v69;
        }

        while (v85 < 0);
      }

      while (i < v69);
    }

    if (i - 2 != v7)
    {
      *v7 = *(i - 2);
      v7[1] = *(i - 1);
    }

    a4 = 0;
    *(i - 2) = v57;
  }

  v117 = (i + 2);
  v119 = i == a2 || v117 == a2;
  if ((a4 & 1) == 0)
  {
    if (v119)
    {
      return result;
    }

    v198 = 0;
    v199 = 8;
    v200 = i;
    while (1)
    {
      v201 = v199;
      if (*v117 >= *v200)
      {
        v202 = 1;
      }

      else
      {
        v202 = -1;
      }

      if (*v117 == *v200)
      {
        v203 = v200[3];
        v204 = v200[1];
        v205 = v203 == v204;
        v202 = v203 >= v204 ? 1 : -1;
        if (v205)
        {
          v202 = 0;
        }
      }

      if (v202 < 0)
      {
        break;
      }

LABEL_399:
      v200 += 2;
      v199 = v201 + 8;
      v117 = i + v201 + 8;
      v198 = v201;
      if (v117 == a2)
      {
        return result;
      }
    }

    v206 = 0;
    v208 = *v117;
    v207 = *(v117 + 1);
    v209 = *(i + v198);
    while (1)
    {
      v210 = &v200[v206];
      v211 = v200[v206 + 1];
      v210[2] = v209;
      v210[3] = v211;
      if (!(v201 + v206 * 4))
      {
        break;
      }

      v209 = *(v210 - 2);
      if (v209 <= v208)
      {
        v212 = 1;
      }

      else
      {
        v212 = -1;
      }

      if (v209 == v208)
      {
        v213 = v200[v206 - 1];
        v214 = v213 == v207;
        v212 = v213 <= v207 ? 1 : -1;
        if (v214)
        {
          v212 = 0;
        }
      }

      v206 -= 2;
      if ((v212 & 0x80) == 0)
      {
        v215 = &v200[v206];
        v215[2] = v208;
        v215[3] = v207;
        goto LABEL_399;
      }
    }

LABEL_401:
    __break(1u);
    return result;
  }

  if (!v119)
  {
    v120 = 0;
    v121 = i;
    do
    {
      v122 = v117;
      v123 = v121[2];
      v124 = *v121;
      v125 = v123 == *v121;
      if (v123 >= *v121)
      {
        v126 = 1;
      }

      else
      {
        v126 = -1;
      }

      if (v125)
      {
        v127 = v121[3];
        v128 = v121[1];
        v129 = v127 == v128;
        if (v127 >= v128)
        {
          v130 = 1;
        }

        else
        {
          v130 = -1;
        }

        if (v129)
        {
          v126 = 0;
        }

        else
        {
          v126 = v130;
        }
      }

      if (v126 < 0)
      {
        v131 = *v122;
        v132 = *(v122 + 1);
        v133 = v120;
        while (1)
        {
          v134 = i + v133;
          v135 = *(i + v133 + 4);
          *(v134 + 2) = v124;
          *(v134 + 3) = v135;
          if (!v133)
          {
            break;
          }

          v124 = *(v134 - 2);
          if (v124 <= v131)
          {
            v136 = 1;
          }

          else
          {
            v136 = -1;
          }

          if (v124 == v131)
          {
            v137 = *(i + v133 - 4);
            v138 = v137 == v132;
            v136 = v137 <= v132 ? 1 : -1;
            if (v138)
            {
              v136 = 0;
            }
          }

          v133 -= 8;
          if ((v136 & 0x80) == 0)
          {
            v139 = (i + v133 + 8);
            goto LABEL_269;
          }
        }

        v139 = i;
LABEL_269:
        *v139 = v131;
        v139[1] = v132;
      }

      v117 = v122 + 8;
      v120 += 8;
      v121 = v122;
    }

    while (v122 + 8 != a2);
  }

  return result;
}

uint64_t marisa::grimoire::vector::BitVector::build(marisa::grimoire::vector::BitVector *this, int a2, int a3)
{
  memset(v45, 0, 41);
  memset(v49, 0, 41);
  memset(v50, 0, 41);
  v46 = 0u;
  v47 = 0u;
  memset(v48, 0, 25);
  v6 = *(this + 6);
  v7 = v6 >> 9;
  if ((v6 & 0x1FF) != 0)
  {
    ++v7;
  }

  v8 = v7 + 1;
  v9 = 12 * (v7 + 1);
  *&v47 = operator new[](v9, MEMORY[0x1E69E5398]);
  *(&v47 + 1) = v47;
  *&v48[0] = v47;
  *&v48[1] = v8;
  bzero(v47, v9);
  *(&v48[0] + 1) = v8;
  if (!v6)
  {
    v20 = 0;
    v11 = 0;
    goto LABEL_55;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  do
  {
    if ((v12 & 0x3F) != 0)
    {
      goto LABEL_23;
    }

    v13 = (v12 >> 6) & 7;
    v14 = (*(&v47 + 1) + 12 * (v12 >> 9));
    if (v13 <= 3)
    {
      if (((v12 >> 6) & 7) > 1)
      {
        if (v13 == 2)
        {
          v17 = (v11 - *v14);
          v16 = v14[1] & 0xFFFF807F | ((v11 - *v14) << 7);
        }

        else
        {
          v19 = (v11 - *v14);
          v16 = v14[1] & 0xFF807FFF | ((v11 - *v14) << 15);
        }
      }

      else
      {
        if (!v13)
        {
          *v14 = v11;
          goto LABEL_23;
        }

        v16 = v14[1] & 0xFFFFFF80 | (v11 - *v14) & 0x7F;
      }

      goto LABEL_20;
    }

    if (((v12 >> 6) & 7) > 5)
    {
      if (v13 == 6)
      {
        v18 = v14[2] & 0xFFFC01FF | (((v11 - *v14) & 0x1FF) << 9);
      }

      else
      {
        v18 = v14[2] & 0xF803FFFF | (((v11 - *v14) & 0x1FF) << 18);
      }
    }

    else
    {
      if (v13 == 4)
      {
        v15 = (v11 - *v14);
        v16 = v14[1] & 0x7FFFFF | ((v11 - *v14) << 23);
LABEL_20:
        v14[1] = v16;
        goto LABEL_23;
      }

      v18 = v14[2] & 0xFFFFFE00 | (v11 - *v14) & 0x1FF;
    }

    v14[2] = v18;
LABEL_23:
    if ((*(*(this + 2) + 8 * (v12 >> 6)) >> (v12 & 0x3F)))
    {
      if (a3 && (v11 & 0x1FF) == 0)
      {
        v51 = v12;
        marisa::grimoire::vector::Vector<unsigned int>::push_back(v50, &v51);
      }

      ++v11;
    }

    else
    {
      if (a2 && (v10 & 0x1FF) == 0)
      {
        v51 = v12;
        marisa::grimoire::vector::Vector<unsigned int>::push_back(v49, &v51);
      }

      ++v10;
    }

    ++v12;
    v20 = *(this + 6);
  }

  while (v12 < v20);
  if ((v20 & 0x1FF) != 0)
  {
    v21 = (v20 - 1) >> 9;
    v22 = ((v20 - 1) >> 6) & 7;
    if (v22 <= 3)
    {
      if ((((v20 - 1) >> 6) & 7) > 1)
      {
        if (v22 == 2)
        {
          v23 = *(&v47 + 1);
          v27 = (*(&v47 + 1) + 12 * v21);
          v28 = v27[1];
          v25 = v11 - *v27;
          goto LABEL_48;
        }

        v23 = *(&v47 + 1);
        v35 = (*(&v47 + 1) + 12 * v21);
        v32 = v35[1];
        v25 = v11 - *v35;
      }

      else
      {
        if (v22)
        {
          v23 = *(&v47 + 1);
          v31 = (*(&v47 + 1) + 12 * v21);
          v26 = v31[1];
          v25 = v11 - *v31;
        }

        else
        {
          v23 = *(&v47 + 1);
          v24 = (*(&v47 + 1) + 12 * v21);
          v25 = v11 - *v24;
          v26 = v24[1] & 0xFFFFFF80 | v25 & 0x7F;
          v24[1] = v26;
        }

        v28 = v26 & 0xFFFF807F | (v25 << 7);
        *(v23 + 12 * v21 + 4) = v28;
LABEL_48:
        v32 = v28 & 0xFF807FFF | (v25 << 15);
        *(v23 + 12 * v21 + 4) = v32;
      }

      *(v23 + 12 * v21 + 4) = v32 & 0x7FFFFF | (v25 << 23);
LABEL_52:
      v36 = v23 + 12 * v21;
      v34 = *(v36 + 8) & 0xFFFFFE00 | v25 & 0x1FF;
      *(v36 + 8) = v34;
      goto LABEL_53;
    }

    if ((((v20 - 1) >> 6) & 7) > 5)
    {
      if (v22 != 7)
      {
        v23 = *(&v47 + 1);
        v29 = (*(&v47 + 1) + 12 * v21);
        v30 = v29[2];
        v25 = v11 - *v29;
        goto LABEL_54;
      }
    }

    else
    {
      if (v22 == 4)
      {
        v23 = *(&v47 + 1);
        v25 = v11 - *(*(&v47 + 1) + 12 * v21);
        goto LABEL_52;
      }

      v23 = *(&v47 + 1);
      v33 = (*(&v47 + 1) + 12 * v21);
      v34 = v33[2];
      v25 = v11 - *v33;
LABEL_53:
      v30 = v34 & 0xFFFC01FF | ((v25 & 0x1FF) << 9);
      *(v23 + 12 * v21 + 8) = v30;
LABEL_54:
      *(v23 + 12 * v21 + 8) = v30 & 0xF803FFFF | ((v25 & 0x1FF) << 18);
    }
  }

LABEL_55:
  v37 = *(this + 7);
  *&v46 = v20;
  *(&v46 + 1) = v37;
  *(*(&v47 + 1) + 12 * *(&v48[0] + 1) - 12) = v11;
  if (a2)
  {
    v51 = v20;
    marisa::grimoire::vector::Vector<unsigned int>::push_back(v49, &v51);
    marisa::grimoire::vector::Vector<unsigned int>::shrink(v49);
  }

  if (a3)
  {
    v51 = *(this + 6);
    marisa::grimoire::vector::Vector<unsigned int>::push_back(v50, &v51);
    marisa::grimoire::vector::Vector<unsigned int>::shrink(v50);
  }

  v38 = *(this + 40);
  if (v38 == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0x100000064;
    exception[3] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h:100: MARISA_STATE_ERROR: fixed_";
  }

  v39 = *(this + 3);
  if (v39 != *(this + 4))
  {
    marisa::grimoire::vector::Vector<unsigned long long>::realloc(this, v39);
    LOBYTE(v38) = *(this + 40);
  }

  v40 = v45[0];
  v45[0] = *this;
  *this = v40;
  v41 = *&v45[1];
  *&v45[1] = *(this + 2);
  *(this + 2) = v41;
  v42 = *(&v45[1] + 8);
  *(&v45[1] + 8) = *(this + 24);
  *(this + 24) = v42;
  LOBYTE(v41) = BYTE8(v45[2]);
  BYTE8(v45[2]) = v38;
  *(this + 40) = v41;
  marisa::grimoire::vector::BitVector::swap(this, v45);
  if (*&v50[0])
  {
    MEMORY[0x1BFB49140](*&v50[0], 0x1000C8077774924);
  }

  if (*&v49[0])
  {
    MEMORY[0x1BFB49140](*&v49[0], 0x1000C8077774924);
  }

  if (v47)
  {
    MEMORY[0x1BFB49140](v47, 0x1000C8077774924);
  }

  result = *&v45[0];
  if (*&v45[0])
  {

    JUMPOUT(0x1BFB49140);
  }

  return result;
}

unsigned int *std::__sort3[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(unsigned int *result, unsigned int *a2, int *a3)
{
  v3 = *a2;
  v4 = *result;
  if (*a2 >= *result)
  {
    v5 = 1;
  }

  else
  {
    v5 = -1;
  }

  if (v3 == v4)
  {
    v6 = a2[1];
    v7 = result[1];
    v8 = v6 >= v7;
    v9 = v6 == v7;
    v10 = -1;
    if (v8)
    {
      v10 = 1;
    }

    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = v10;
    }
  }

  v11 = *a3;
  v12 = -1;
  if (*a3 >= v3)
  {
    v12 = 1;
  }

  if (v5 < 0)
  {
    if (v11 == v3)
    {
      v23 = a3[1];
      v24 = a2[1];
      v8 = v23 >= v24;
      v25 = v23 == v24;
      v12 = -1;
      if (v8)
      {
        v12 = 1;
      }

      if (v25)
      {
        v12 = 0;
      }
    }

    if (v12 < 0)
    {
      *result++ = v11;
      *a3 = v4;
      v33 = (a3 + 1);
    }

    else
    {
      *result = v3;
      *a2 = v4;
      v26 = result[1];
      result[1] = a2[1];
      a2[1] = v26;
      v27 = *a3;
      v28 = *a2;
      v29 = -1;
      if (*a3 >= *a2)
      {
        v29 = 1;
      }

      if (v27 == v28)
      {
        v30 = a3[1];
        v8 = v30 >= v26;
        v31 = v30 == v26;
        v32 = -1;
        if (v8)
        {
          v32 = 1;
        }

        if (v31)
        {
          v29 = 0;
        }

        else
        {
          v29 = v32;
        }
      }

      if ((v29 & 0x80) == 0)
      {
        return result;
      }

      *a2 = v27;
      *a3 = v28;
      v33 = (a3 + 1);
      result = a2 + 1;
    }

    v17 = v33;
    goto LABEL_51;
  }

  if (v11 == v3)
  {
    v13 = a3[1];
    v14 = a2[1];
    v8 = v13 >= v14;
    v15 = v13 == v14;
    v16 = -1;
    if (v8)
    {
      v16 = 1;
    }

    if (v15)
    {
      v12 = 0;
    }

    else
    {
      v12 = v16;
    }
  }

  if (v12 < 0)
  {
    *a2 = v11;
    *a3 = v3;
    v17 = a2 + 1;
    v18 = a2[1];
    a2[1] = a3[1];
    a3[1] = v18;
    v19 = *a2;
    v20 = *result;
    v21 = -1;
    if (*a2 >= *result)
    {
      v21 = 1;
    }

    if (v19 == v20)
    {
      v22 = result[1];
      v21 = -1;
      if (*v17 >= v22)
      {
        v21 = 1;
      }

      if (*v17 == v22)
      {
        v21 = 0;
      }
    }

    if (v21 < 0)
    {
      *result++ = v19;
      *a2 = v20;
LABEL_51:
      v34 = *result;
      *result = *v17;
      *v17 = v34;
    }
  }

  return result;
}

unsigned int *std::__sort5[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(unsigned int *a1, unsigned int *a2, int *a3, int *a4, int *a5)
{
  result = std::__sort3[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  v13 = -1;
  if (*a4 >= *a3)
  {
    v13 = 1;
  }

  if (v11 == v12)
  {
    v14 = a4[1];
    v15 = a3[1];
    v16 = v14 >= v15;
    v17 = v14 == v15;
    v13 = -1;
    if (v16)
    {
      v13 = 1;
    }

    if (v17)
    {
      v13 = 0;
    }
  }

  if (v13 < 0)
  {
    *a3 = v11;
    *a4 = v12;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    v21 = -1;
    if (*a3 >= *a2)
    {
      v21 = 1;
    }

    if (v19 == v20)
    {
      v22 = a3[1];
      v23 = a2[1];
      v16 = v22 >= v23;
      v24 = v22 == v23;
      v21 = -1;
      if (v16)
      {
        v21 = 1;
      }

      if (v24)
      {
        v21 = 0;
      }
    }

    if (v21 < 0)
    {
      *a2 = v19;
      *a3 = v20;
      v25 = a2[1];
      a2[1] = a3[1];
      a3[1] = v25;
      v26 = *a2;
      v27 = *a1;
      v28 = -1;
      if (*a2 >= *a1)
      {
        v28 = 1;
      }

      if (v26 == v27)
      {
        v29 = a2[1];
        v30 = a1[1];
        v16 = v29 >= v30;
        v31 = v29 == v30;
        v28 = -1;
        if (v16)
        {
          v28 = 1;
        }

        if (v31)
        {
          v28 = 0;
        }
      }

      if (v28 < 0)
      {
        *a1 = v26;
        *a2 = v27;
        v32 = a1[1];
        a1[1] = a2[1];
        a2[1] = v32;
      }
    }
  }

  v33 = *a5;
  v34 = *a4;
  v35 = -1;
  if (*a5 >= *a4)
  {
    v35 = 1;
  }

  if (v33 == v34)
  {
    v36 = a5[1];
    v37 = a4[1];
    v16 = v36 >= v37;
    v38 = v36 == v37;
    v35 = -1;
    if (v16)
    {
      v35 = 1;
    }

    if (v38)
    {
      v35 = 0;
    }
  }

  if (v35 < 0)
  {
    *a4 = v33;
    *a5 = v34;
    v39 = a4[1];
    a4[1] = a5[1];
    a5[1] = v39;
    v40 = *a4;
    v41 = *a3;
    v42 = -1;
    if (*a4 >= *a3)
    {
      v42 = 1;
    }

    if (v40 == v41)
    {
      v43 = a4[1];
      v44 = a3[1];
      v16 = v43 >= v44;
      v45 = v43 == v44;
      v42 = -1;
      if (v16)
      {
        v42 = 1;
      }

      if (v45)
      {
        v42 = 0;
      }
    }

    if (v42 < 0)
    {
      *a3 = v40;
      *a4 = v41;
      v46 = a3[1];
      a3[1] = a4[1];
      a4[1] = v46;
      v47 = *a3;
      v48 = *a2;
      v49 = -1;
      if (*a3 >= *a2)
      {
        v49 = 1;
      }

      if (v47 == v48)
      {
        v50 = a3[1];
        v51 = a2[1];
        v16 = v50 >= v51;
        v52 = v50 == v51;
        v49 = -1;
        if (v16)
        {
          v49 = 1;
        }

        if (v52)
        {
          v49 = 0;
        }
      }

      if (v49 < 0)
      {
        *a2 = v47;
        *a3 = v48;
        v53 = a2[1];
        a2[1] = a3[1];
        a3[1] = v53;
        v54 = *a2;
        v55 = *a1;
        v56 = -1;
        if (*a2 >= *a1)
        {
          v56 = 1;
        }

        if (v54 == v55)
        {
          v57 = a2[1];
          v58 = a1[1];
          v16 = v57 >= v58;
          v59 = v57 == v58;
          v56 = -1;
          if (v16)
          {
            v56 = 1;
          }

          if (v59)
          {
            v56 = 0;
          }
        }

        if (v56 < 0)
        {
          *a1 = v54;
          *a2 = v55;
          v60 = a1[1];
          a1[1] = a2[1];
          a2[1] = v60;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *>(unsigned int *a1, char *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(a1, a1 + 2, a2 - 2);
        break;
      case 4:
        std::__sort3[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4);
        v31 = *(a2 - 2);
        v32 = a1[4];
        v33 = -1;
        if (v31 >= v32)
        {
          v33 = 1;
        }

        if (v31 == v32)
        {
          v34 = *(a2 - 1);
          v35 = a1[5];
          v10 = v34 >= v35;
          v36 = v34 == v35;
          v33 = -1;
          if (v10)
          {
            v33 = 1;
          }

          if (v36)
          {
            v33 = 0;
          }
        }

        if (v33 < 0)
        {
          a1[4] = v31;
          *(a2 - 2) = v32;
          v37 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v37;
          v38 = a1[4];
          v39 = a1[2];
          v40 = -1;
          if (v38 >= v39)
          {
            v40 = 1;
          }

          if (v38 == v39)
          {
            v41 = a1[5];
            v42 = a1[3];
            v10 = v41 >= v42;
            v43 = v41 == v42;
            v40 = -1;
            if (v10)
            {
              v40 = 1;
            }

            if (v43)
            {
              v40 = 0;
            }
          }

          if (v40 < 0)
          {
            v44 = a1[3];
            v45 = a1[5];
            a1[2] = v38;
            a1[3] = v45;
            a1[4] = v39;
            a1[5] = v44;
            v46 = *a1;
            v47 = -1;
            if (v38 >= *a1)
            {
              v47 = 1;
            }

            if (v38 == v46)
            {
              v48 = a1[1];
              v10 = v45 >= v48;
              v49 = v45 == v48;
              v47 = -1;
              if (v10)
              {
                v47 = 1;
              }

              if (v49)
              {
                v47 = 0;
              }
            }

            if (v47 < 0)
            {
              v50 = a1[1];
              *a1 = v38;
              a1[1] = v45;
              a1[2] = v46;
              a1[3] = v50;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    v7 = -1;
    if (v5 >= *a1)
    {
      v7 = 1;
    }

    if (v5 == v6)
    {
      v8 = *(a2 - 1);
      v9 = a1[1];
      v10 = v8 >= v9;
      v11 = v8 == v9;
      v7 = -1;
      if (v10)
      {
        v7 = 1;
      }

      if (v11)
      {
        v7 = 0;
      }
    }

    if (v7 < 0)
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v12 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v12;
    }

    return 1;
  }

LABEL_19:
  v13 = (a1 + 4);
  std::__sort3[abi:se200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,unsigned int> *,0>(a1, a1 + 2, a1 + 4);
  v14 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v13;
    if (*v14 >= *v13)
    {
      v18 = 1;
    }

    else
    {
      v18 = -1;
    }

    if (*v14 == *v13)
    {
      v19 = *(v14 + 1);
      v20 = *(v13 + 1);
      v21 = v19 == v20;
      v18 = v19 >= v20 ? 1 : -1;
      if (v21)
      {
        v18 = 0;
      }
    }

    if (v18 < 0)
    {
      v22 = *v14;
      v23 = *(v14 + 1);
      v24 = v15;
      while (1)
      {
        v25 = (a1 + v24);
        v26 = *(a1 + v24 + 20);
        v25[6] = v17;
        v25[7] = v26;
        if (v24 == -16)
        {
          break;
        }

        v17 = v25[2];
        if (v17 <= v22)
        {
          v27 = 1;
        }

        else
        {
          v27 = -1;
        }

        if (v17 == v22)
        {
          v28 = *(a1 + v24 + 12);
          v29 = v28 == v23;
          v27 = v28 <= v23 ? 1 : -1;
          if (v29)
          {
            v27 = 0;
          }
        }

        v24 -= 8;
        if ((v27 & 0x80) == 0)
        {
          v30 = (a1 + v24 + 24);
          goto LABEL_45;
        }
      }

      v30 = a1;
LABEL_45:
      *v30 = v22;
      v30[1] = v23;
      if (++v16 == 8)
      {
        return v14 + 8 == a2;
      }
    }

    v13 = v14;
    v15 += 8;
    v14 += 8;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

double marisa::grimoire::vector::FlatVector::build(uint64_t *a1, uint64_t a2)
{
  memset(v26, 0, 41);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 16);
    v7 = *(a2 + 24);
    do
    {
      v9 = *v6++;
      v8 = v9;
      if (v9 > v5)
      {
        v5 = v8;
      }

      --v7;
    }

    while (v7);
    v10 = 32 - __clz(v5);
    if (v5)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 != 0;
  v13 = (v11 * v4 + 63) >> 6;
  if (v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    marisa::grimoire::vector::Vector<unsigned long long>::realloc(v26, v14);
    *(&v26[1] + 1) = v14;
    v15 = *(&v26[0] + 1);
    *(*(&v26[0] + 1) + 8 * v14 - 8) = 0;
  }

  else
  {
    v15 = 0;
    *(&v26[1] + 1) = 0;
  }

  if (v11)
  {
    v16 = 0xFFFFFFFF >> -v11;
  }

  else
  {
    v16 = v28;
  }

  v17 = *(a2 + 24);
  if (v17)
  {
    v18 = 0;
    v19 = *(a2 + 16);
    v20 = *(a2 + 24);
    do
    {
      v21 = *v19++;
      v22 = (v15 + 8 * (v18 >> 6));
      v23 = v16 & v21;
      *v22 = *v22 & ~(v16 << v18) | (v23 << v18);
      if ((v18 & 0x3F) + v11 >= 0x41)
      {
        v22[1] = v22[1] & ~(v16 >> -(v18 & 0x3F)) | (v23 >> -(v18 & 0x3F));
      }

      v18 += v11;
      --v20;
    }

    while (v20);
  }

  v24 = *a1;
  *a1 = v26[0];
  a1[2] = *&v26[1];
  result = *(&v26[1] + 1);
  *(a1 + 3) = *(&v26[1] + 8);
  *(a1 + 40) = BYTE8(v26[2]);
  a1[6] = v11;
  *(a1 + 14) = v16;
  a1[8] = v17;
  if (v24)
  {

    JUMPOUT(0x1BFB49140);
  }

  return result;
}

uint64_t marisa::grimoire::trie::LoudsTrie::fill_cache(uint64_t this)
{
  v1 = *(this + 1032);
  if (v1)
  {
    v2 = this;
    v3 = 0;
    for (i = 0; i < v1; ++i)
    {
      v5 = *(v2 + 1016) + v3;
      v6 = *(v5 + 4);
      if (v6)
      {
        *(v5 + 8) = *(*(v2 + 632) + v6);
        v7 = *(v2 + 1016);
        if ((*(*(v2 + 432) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6))
        {
          this = marisa::grimoire::vector::BitVector::rank1((v2 + 416), v6);
          v8 = *(v2 + 720);
          v9 = v8 * this;
          v10 = (v8 * this) & 0x3F;
          v11 = v10 + v8;
          v12 = (*(v2 + 688) + 8 * ((v8 * this) >> 6));
          v13 = *v12;
          if (v11 > 0x40)
          {
            v14 = ((2 * v12[1]) << ~v9) | (v13 >> v9);
          }

          else
          {
            v14 = v13 >> v10;
          }

          v15 = (*(v2 + 728) & v14) << 8;
        }

        else
        {
          v15 = -256;
        }

        *(v7 + v3 + 8) = *(v7 + v3 + 8) | v15;
        v1 = *(v2 + 1032);
      }

      else
      {
        *v5 = -1;
      }

      v3 += 12;
    }
  }

  return this;
}

uint64_t *marisa::grimoire::vector::Vector<marisa::grimoire::trie::Entry>::resize(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 59)
    {
      v5 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v4 <= a2 >> 1)
    {
      v6 = a2;
    }

    else
    {
      v6 = v5;
    }

    result = operator new[](16 * v6, MEMORY[0x1E69E5398]);
    v7 = v3[3];
    if (v7)
    {
      v8 = (v3[1] + 8);
      v9 = result + 1;
      do
      {
        *(v9 - 1) = *(v8 - 1);
        v10 = *v8;
        v8 += 2;
        *v9 = v10;
        v9 += 2;
        --v7;
      }

      while (v7);
    }

    v11 = *v3;
    *v3 = result;
    v3[1] = result;
    v3[2] = result;
    v3[4] = v6;
    if (v11)
    {
      result = MEMORY[0x1BFB49140](v11, 0x1000C8077774924);
    }
  }

  v12 = v3[3];
  v13 = a2 - v12;
  if (a2 > v12)
  {
    v14 = 16 * v12;
    do
    {
      v15 = (v3[1] + v14);
      *v15 = 0;
      v15[1] = 0;
      v14 += 16;
      --v13;
    }

    while (v13);
  }

  v3[3] = a2;
  return result;
}

marisa::grimoire::trie::LoudsTrie **marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::reset(marisa::grimoire::trie::LoudsTrie **a1, marisa::grimoire::trie::LoudsTrie *a2)
{
  if (a2 && *a1 == a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/include/marisa/scoped-ptr.h";
    exception[2] = 0x600000013;
    exception[3] = "ext/lib/Marisa/marisa-trie/include/marisa/scoped-ptr.h:19: MARISA_RESET_ERROR: (ptr != NULL) && (ptr == ptr_)";
  }

  v4 = *a1;
  *a1 = a2;
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v4);
}

uint64_t marisa::grimoire::trie::LoudsTrie::build_trie<marisa::grimoire::trie::ReverseKey>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  v9 = a2[3];
  v10 = a2[1];
  if (v9)
  {
    v11 = 0;
    v12 = vdupq_n_s64(v9 - 1);
    v13 = xmmword_1BE695F40;
    v14 = xmmword_1BE695F50;
    v15 = (v10 + 64);
    v16 = vdupq_n_s64(4uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v12, v14));
      if (vuzp1_s16(v17, *v12.i8).u8[0])
      {
        *(v15 - 12) = v11;
      }

      if (vuzp1_s16(v17, *&v12).i8[2])
      {
        *(v15 - 6) = v11 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
      {
        *v15 = v11 + 2;
        v15[6] = v11 + 3;
      }

      v11 += 4;
      v13 = vaddq_s64(v13, v16);
      v14 = vaddq_s64(v14, v16);
      v15 += 24;
    }

    while (((v9 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v11);
  }

  v18 = marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::ReverseKey *>(v10, v10 + 24 * v9, 0);
  v19 = 256;
  if (a5 != 1)
  {
    v19 = 1;
  }

  do
  {
    v20 = v19;
    v19 *= 2;
  }

  while (v20 < v18 / *(a4 + 8));
  marisa::grimoire::vector::Vector<marisa::grimoire::trie::Cache>::resize((a1 + 1008), v20);
  *(a1 + 1056) = v20 - 1;
  marisa::grimoire::vector::BitVector::push_back(a1, 1);
  marisa::grimoire::vector::BitVector::push_back(a1, 0);
  v107[0].n128_u8[0] = 0;
  marisa::grimoire::vector::Vector<char>::push_back((a1 + 624), v107);
  marisa::grimoire::vector::BitVector::push_back((a1 + 416), 0);
  v93 = a3;
  v94 = a5;
  v105 = 0u;
  memset(v106, 0, 25);
  v104 = 0u;
  memset(v103, 0, sizeof(v103));
  v101 = 0u;
  memset(v102, 0, 25);
  v107[0].n128_u64[0] = v7[3] << 32;
  v107[0].n128_u32[2] = 0;
  std::deque<marisa::grimoire::trie::Range>::push_back(v103, v107);
  v21 = *(&v104 + 1);
  if (*(&v104 + 1))
  {
    v99 = 0;
    v100 = v7;
    v22 = 0;
    do
    {
      v96 = *(a1 + 464);
      v97 = v21;
      v23 = v96 - v21;
      v24 = (*(*(&v103[0] + 1) + 8 * (v104 / 0x155)) - 4092 * (v104 / 0x155) + 12 * v104);
      v26 = *v24;
      v25 = v24[1];
      v27 = v24[2];
      std::deque<marisa::grimoire::trie::Range>::pop_front(v103);
      if (v26 < v25)
      {
        while (1)
        {
          v28 = v7[1] + 24 * v26;
          if (*(v28 + 8) != v27)
          {
            break;
          }

          *(v28 + 12) = v23;
          v26 = (v26 + 1);
          if (v25 == v26)
          {
            goto LABEL_56;
          }
        }
      }

      if (v26 != v25)
      {
        v98 = v23;
        v29 = v101;
        v101 = 0u;
        memset(v102, 0, 25);
        if (v29)
        {
          MEMORY[0x1BFB49140](v29, 0x1000C8077774924);
        }

        v30 = v7[1];
        v31 = *(v30 + 24 * v26 + 12);
        v32 = v26 + 1;
        if (v26 + 1 < v25)
        {
          v33 = v31;
          v34 = 24 * v26;
          v35 = (v26 << 32) + 0x100000000;
          do
          {
            if (*(*(v30 + v34) - v27 - 1) != *(*(v30 + v34 + 24) - v27 - 1))
            {
              *&v36 = v33;
              v107[0].n128_u64[0] = v35 + v26;
              v107[0].n128_u64[1] = v27 | (v36 << 32);
              marisa::grimoire::vector::Vector<marisa::grimoire::trie::WeightedRange>::push_back(&v101, v107);
              v30 = v100[1];
              v33 = 0.0;
              LODWORD(v26) = v32;
            }

            v33 = v33 + *(v30 + v34 + 36);
            ++v32;
            v34 += 24;
            v35 += 0x100000000;
          }

          while (v25 != v32);
          v31 = v33;
          v7 = v100;
        }

        v107[0].n128_u32[0] = v26;
        v107[0].n128_u32[1] = v25;
        v107[0].n128_u64[1] = v27 | (LODWORD(v31) << 32);
        v37 = marisa::grimoire::vector::Vector<marisa::grimoire::trie::WeightedRange>::push_back(&v101, v107);
        v38 = v102[1];
        if (*(a4 + 16) == 0x20000)
        {
          std::__stable_sort_impl[abi:se200100]<std::_ClassicAlgPolicy,marisa::grimoire::trie::WeightedRange *,std::greater<marisa::grimoire::trie::WeightedRange>>(*(&v101 + 1), (*(&v101 + 1) + 16 * v102[1]), v37);
        }

        if (v96 == v97)
        {
          *(a1 + 1064) = v38;
        }

        if (v38)
        {
          v39 = 0;
          v40 = *(&v101 + 1);
          do
          {
            v41 = (v40 + 16 * v39);
            v42 = *(v41 + 2);
            v43 = v7[1];
            v44 = *(v43 + 24 * *v41 + 8);
            v45 = v42 + 1;
            if (v42 + 1 >= v44)
            {
              v46 = *(v41 + 2);
              LODWORD(v44) = v42 + 1;
            }

            else
            {
              v46 = v44 - 1;
              v47 = (v43 + 24 * *v41);
              v48 = *(v41 + 2);
              do
              {
                v49 = v48;
                v48 = v45;
                v50 = v47;
                v51 = *v41;
                while (++v51 < *(v41 + 1))
                {
                  v52 = *v50;
                  v53 = v50[3];
                  v50 += 3;
                  if (*(v52 + ~v49 - 1) != *(v53 + ~v49 - 1))
                  {
                    v46 = v49;
                    LODWORD(v44) = v45;
                    goto LABEL_43;
                  }
                }

                ++v45;
              }

              while (v48 + 1 != v44);
            }

LABEL_43:
            v54 = *(a1 + 648);
            v55 = v41[3];
            v56 = *(a1 + 1016) + 12 * (*(a1 + 1056) & v54);
            if (*(v56 + 8) < v55)
            {
              *v56 = v98;
              *(v56 + 4) = v54;
              *(v56 + 8) = v55;
              v42 = *(v41 + 2);
            }

            if (v46 == v42)
            {
              v107[0].n128_u8[0] = *(~v46 + *(v7[1] + 24 * *v41));
              marisa::grimoire::vector::Vector<char>::push_back((a1 + 624), v107);
              marisa::grimoire::vector::BitVector::push_back((a1 + 416), 0);
            }

            else
            {
              v107[0].n128_u8[0] = 0;
              marisa::grimoire::vector::Vector<char>::push_back((a1 + 624), v107);
              marisa::grimoire::vector::BitVector::push_back((a1 + 416), 1);
              v57 = *(v7[1] + 24 * *v41);
              v58 = *(v41 + 2);
              v59 = *(v41 + 3);
              if (v106[2] < (v22 + 1))
              {
                v60 = 2 * v106[2];
                if (v106[2] > 0x555555555555555uLL)
                {
                  v60 = 0xAAAAAAAAAAAAAAALL;
                }

                if (v106[2] <= (v22 + 1) >> 1)
                {
                  v61 = v22 + 1;
                }

                else
                {
                  v61 = v60;
                }

                marisa::grimoire::vector::Vector<marisa::grimoire::trie::Key>::realloc(&v105, v61);
                v22 = v106[1];
                v99 = *(&v105 + 1);
              }

              v62 = v57 - v58;
              v63 = v44 - v58;
              v7 = v100;
              v64 = v99 + 24 * v22;
              *v64 = v62;
              *(v64 + 8) = v63;
              *(v64 + 12) = v59;
              *(v64 + 16) = 0;
              v22 = ++v106[1];
            }

            *(v41 + 2) = v44;
            std::deque<marisa::grimoire::trie::Range>::push_back(v103, (v40 + 16 * v39));
            marisa::grimoire::vector::BitVector::push_back(a1, 1);
            ++v39;
          }

          while (v39 != v38);
        }
      }

LABEL_56:
      marisa::grimoire::vector::BitVector::push_back(a1, 0);
      v21 = *(&v104 + 1);
    }

    while (*(&v104 + 1));
  }

  marisa::grimoire::vector::BitVector::push_back(a1, 0);
  marisa::grimoire::vector::BitVector::build(a1, v94 == 1, 1);
  marisa::grimoire::vector::Vector<unsigned char>::shrink((a1 + 624));
  memset(v107, 0, 41);
  marisa::grimoire::vector::Vector<unsigned int>::resize(v107, v7[3]);
  v65 = v7[3];
  if (v65)
  {
    v66 = v107[0].n128_u64[1];
    v67 = (v7[2] + 16);
    do
    {
      *(v66 + 4 * *v67) = *(v67 - 1);
      v67 += 6;
      --v65;
    }

    while (v65);
  }

  else
  {
    v66 = v107[0].n128_u64[1];
  }

  v68 = *v93;
  v69 = v107[1].n128_u64[0];
  *v93 = v107[0].n128_u64[0];
  *(v93 + 8) = v66;
  v107[0] = v68;
  v70 = *(v93 + 16);
  *(v93 + 16) = v69;
  v107[1].n128_u64[0] = v70;
  v71 = *(v93 + 24);
  *(v93 + 24) = *(&v107[1] + 8);
  *(&v107[1] + 8) = v71;
  LOBYTE(v70) = *(v93 + 40);
  *(v93 + 40) = v107[2].n128_u8[8];
  v107[2].n128_u8[8] = v70;
  if (v68.n128_u64[0])
  {
    MEMORY[0x1BFB49140](v68.n128_u64[0], 0x1000C8077774924);
  }

  v72 = *v7;
  *v7 = v105;
  v7[2] = v106[0];
  *(v7 + 3) = *&v106[1];
  *(v7 + 40) = v106[3];
  if (v101)
  {
    MEMORY[0x1BFB49140](v101, 0x1000C8077774924);
  }

  std::deque<marisa::grimoire::trie::Range>::~deque[abi:se200100](v103);
  if (v72)
  {
    MEMORY[0x1BFB49140](v72, 0x1000C8077774924);
  }

  v105 = 0u;
  memset(v106, 0, 25);
  v73 = v7[3];
  if (v73)
  {
    if (*a4 == v94)
    {
      memset(v107, 0, 41);
      marisa::grimoire::vector::Vector<marisa::grimoire::trie::Entry>::resize(v107, v73);
      v74 = v7[3];
      if (v74)
      {
        v75 = (v7[1] + 8);
        v76 = (v107[0].n128_u64[1] + 8);
        do
        {
          v77 = *(v75 - 1);
          v78 = *v75;
          v75 += 6;
          *(v76 - 1) = v77 - 1;
          *v76 = v78;
          v76 += 4;
          --v74;
        }

        while (v74);
      }

      marisa::grimoire::trie::Tail::build((a1 + 744), v107, &v105, *(a4 + 12));
      if (v107[0].n128_u64[0])
      {
        MEMORY[0x1BFB49140](v107[0].n128_u64[0], 0x1000C8077774924);
      }
    }

    else
    {
      v79 = (a1 + 1000);
      v80 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
      if (v80)
      {
        v81 = v80;
        marisa::grimoire::trie::LoudsTrie::LoudsTrie(v80);
        marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::reset((a1 + 1000), v81);
      }

      else
      {
        v107[0].n128_u64[0] = *v79;
        *v79 = 0;
        marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v107);
      }

      if (!*v79)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F3CD9BC8;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/louds-trie.cc";
        exception[2] = 0x8000001D6;
        exception[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/louds-trie.cc:470: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
      }

      marisa::grimoire::trie::LoudsTrie::build_trie<marisa::grimoire::trie::ReverseKey>(*v79, v7, &v105, a4, v94 + 1);
    }
  }

  v82 = *(a1 + 1000);
  if (v82)
  {
    v83 = v82[268] + 1;
    v84 = v82[271] | v82[272];
    v107[0].n128_u64[0] = 3;
    v107[0].n128_u64[1] = 0x100000000200;
    v107[1].n128_u32[0] = 0x20000;
    marisa::grimoire::trie::Config::parse_(v107, v83 | v84);
  }

  else
  {
    if (*(a1 + 840))
    {
      v85 = 0x2000;
    }

    else
    {
      v85 = 4096;
    }

    v86 = *(a4 + 16) | *(a4 + 8) | v85;
    v107[0].n128_u64[0] = 3;
    v107[0].n128_u64[1] = 0x100000000200;
    v107[1].n128_u32[0] = 0x20000;
    marisa::grimoire::trie::Config::parse_(v107, v86 | 1);
  }

  *(a1 + 1072) = v107[0];
  *(a1 + 1088) = v107[1].n128_u32[0];
  marisa::grimoire::vector::BitVector::build((a1 + 416), 0, 0);
  if (v106[1])
  {
    v87 = 0;
    v88 = 0;
    do
    {
      do
      {
        v89 = v88;
        v90 = *(*(a1 + 432) + ((v88++ >> 3) & 0x1FFFFFFFFFFFFFF8));
      }

      while (((v90 >> v89) & 1) == 0);
      *(*(a1 + 632) + v89) = *(*(&v105 + 1) + 4 * v87);
      *(*(&v105 + 1) + 4 * v87++) >>= 8;
    }

    while (v87 < v106[1]);
  }

  marisa::grimoire::vector::FlatVector::build((a1 + 672), &v105);
  marisa::grimoire::trie::LoudsTrie::fill_cache(a1);
  result = v105;
  if (v105)
  {
    return MEMORY[0x1BFB49140](v105, 0x1000C8077774924);
  }

  return result;
}

uint64_t marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::ReverseKey *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a2 - a1;
  if ((a2 - a1) < 241)
  {
    v7 = 0;
    goto LABEL_83;
  }

  v7 = 0;
  v8 = a1;
  v9 = a1;
  do
  {
    if (a3 >= *(v9 + 8))
    {
      v10 = -1;
    }

    else
    {
      v10 = *(~a3 + *v9);
    }

    v11 = v9 + 24 * (v6 / 0x30uLL);
    if (a3 >= *(v11 + 8))
    {
      v12 = -1;
    }

    else
    {
      v12 = *(~a3 + *v11);
    }

    if (a3 >= *(v4 - 16))
    {
      v13 = -1;
    }

    else
    {
      v13 = *(~a3 + *(v4 - 24));
    }

    if (v10 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v10;
    }

    if (v10 < v12)
    {
      v12 = v10;
    }

    if (v12 <= v13)
    {
      v12 = v13;
    }

    if (v14 >= v13)
    {
      v15 = v12;
    }

    else
    {
      v15 = v14;
    }

    v16 = v9;
    v5 = v4;
    v17 = v9;
    v18 = v4;
    while (v16 < v5)
    {
      v19 = *(v16 + 8);
      v20 = a3 >= v19 ? -1 : *(*v16 - a3 - 1);
      if (v20 > v15)
      {
        break;
      }

      if (v20 == v15)
      {
        v21 = *v16;
        *v16 = *v17;
        *(v16 + 8) = *(v17 + 8);
        v22 = *(v16 + 12);
        *(v16 + 12) = *(v17 + 12);
        *(v16 + 16) = *(v17 + 16);
        *v17 = v21;
        *(v17 + 8) = v19;
        *(v17 + 12) = v22;
        v17 += 24;
      }

LABEL_30:
      v16 += 24;
    }

    if (v16 < v5)
    {
      v23 = v5 - 24;
      do
      {
        v5 = v23;
        v24 = *(v23 + 8);
        if (a3 >= v24)
        {
          v25 = -1;
        }

        else
        {
          v25 = *(*v5 - a3 - 1);
        }

        if (v25 < v15)
        {
          break;
        }

        if (v25 == v15)
        {
          v26 = *(v18 - 24);
          v18 -= 24;
          v27 = *v5;
          *v5 = v26;
          *(v5 + 8) = *(v18 + 8);
          v28 = *(v5 + 12);
          *(v5 + 12) = *(v18 + 12);
          *(v5 + 16) = *(v18 + 16);
          *v18 = v27;
          *(v18 + 8) = v24;
          *(v18 + 12) = v28;
        }

        v23 = v5 - 24;
      }

      while (v16 < v5);
    }

    if (v16 < v5)
    {
      v29 = *v16;
      v30 = *(v16 + 16);
      *v16 = *v5;
      v31 = *(v16 + 8);
      *(v16 + 8) = *(v5 + 8);
      *(v16 + 12) = *(v5 + 12);
      *(v16 + 16) = *(v5 + 16);
      *v5 = v29;
      *(v5 + 8) = v31;
      *(v5 + 16) = v30;
      goto LABEL_30;
    }

    if (v17 > v9)
    {
      v32 = 0;
      do
      {
        v33 = v17 + v32;
        v34 = v16 + v32;
        v35 = *(v17 + v32 - 24);
        v36 = *(v17 + v32 - 8);
        *(v33 - 24) = *(v16 + v32 - 24);
        v37 = *(v17 + v32 - 16);
        *(v33 - 16) = *(v16 + v32 - 16);
        *(v33 - 12) = *(v16 + v32 - 12);
        *(v33 - 8) = *(v16 + v32 - 8);
        *(v34 - 24) = v35;
        *(v34 - 16) = v37;
        *(v34 - 8) = v36;
        v32 -= 24;
      }

      while (v17 + v32 > v9);
      v16 += v32;
    }

    while (v18 < v4)
    {
      v38 = *v18;
      v39 = *(v18 + 16);
      *v18 = *v5;
      v40 = *(v18 + 8);
      *(v18 + 8) = *(v5 + 8);
      *(v18 + 12) = *(v5 + 12);
      *(v18 + 16) = *(v5 + 16);
      *v5 = v38;
      *(v5 + 8) = v40;
      *(v5 + 16) = v39;
      v18 += 24;
      v5 += 24;
    }

    v41 = v16 - v8;
    v42 = v5 - v16;
    if ((v16 - v8) <= (v5 - v16))
    {
      v43 = v4 - v5;
      if ((v4 - v5) <= v42)
      {
        if (v41 == 24)
        {
          ++v7;
        }

        else if (v41 >= 25)
        {
          v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::ReverseKey *>(v9, v16, a3);
        }

        if (v43 == 24)
        {
          ++v7;
        }

        else if (v43 >= 25)
        {
          v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::ReverseKey *>(v5, v4, a3);
        }

        if (v42 == 24)
        {
          ++v7;
        }

        else if (v42 >= 25)
        {
          if (v15 == -1)
          {
            ++v7;
            v4 = v5;
            goto LABEL_79;
          }

          ++a3;
        }

        v4 = v5;
        v5 = v16;
        goto LABEL_79;
      }
    }

    if (v42 == 24)
    {
      goto LABEL_51;
    }

    if (v42 >= 25)
    {
      if (v15 == -1)
      {
LABEL_51:
        ++v7;
      }

      else
      {
        v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::ReverseKey *>(v16, v5, a3 + 1);
      }
    }

    v44 = v4 - v5;
    if (v41 >= (v4 - v5))
    {
      if (v44 == 24)
      {
        ++v7;
      }

      else if (v44 >= 25)
      {
        v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::ReverseKey *>(v5, v4, a3);
      }

      v4 = v16;
      v5 = v9;
    }

    else if (v41 == 24)
    {
      ++v7;
    }

    else if (v41 >= 25)
    {
      v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::ReverseKey *>(v9, v16, a3);
    }

LABEL_79:
    v6 = v4 - v5;
    v8 = v5;
    v9 = v5;
  }

  while ((v4 - v5) > 240);
LABEL_83:
  if (v6 >= 25)
  {
    v45 = v5 + 24;
    if (v5 + 24 >= v4)
    {
      v46 = 1;
      goto LABEL_105;
    }

    v46 = 1;
    while (1)
    {
      if (v45 <= v5)
      {
        v58 = 0;
        goto LABEL_102;
      }

      v47 = v45;
      while (1)
      {
        v48 = *(v47 - 16);
        v49 = *(v47 + 8);
        if (a3 < v48)
        {
          v50 = *(v47 - 24);
          v51 = *v47;
          v52 = v48 - a3;
          v53 = ~a3;
          while (v49 + v53 != -1)
          {
            v54 = *(v50 + v53) - *(v51 + v53);
            if (v54)
            {
              if (v54 < 1)
              {
                goto LABEL_101;
              }

              goto LABEL_97;
            }

            --v53;
            if (!--v52)
            {
              goto LABEL_93;
            }
          }

          goto LABEL_97;
        }

LABEL_93:
        if (v48 == v49)
        {
          break;
        }

        if (v48 < v49)
        {
          goto LABEL_98;
        }

        v50 = *(v47 - 24);
        v51 = *v47;
LABEL_97:
        v55 = *(v47 - 8);
        *(v47 - 24) = v51;
        v56 = *(v47 + 8);
        *(v47 - 8) = *(v47 + 16);
        *v47 = v50;
        v57 = *(v47 - 16);
        *(v47 - 16) = v56;
        *(v47 + 8) = v57;
        *(v47 + 16) = v55;
        v47 -= 24;
        if (v47 <= v5)
        {
LABEL_98:
          v54 = 1;
          goto LABEL_101;
        }
      }

      v54 = 0;
LABEL_101:
      v58 = v54 != 0;
LABEL_102:
      v46 += v58;
      v45 += 24;
      if (v45 >= v4)
      {
LABEL_105:
        v7 += v46;
        return v7;
      }
    }
  }

  return v7;
}

char *marisa::grimoire::vector::Vector<marisa::grimoire::trie::Cache>::resize(char *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 4);
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 > 0xAAAAAAAAAAAAAAALL)
    {
      v5 = 0x1555555555555555;
    }

    if (v4 <= a2 >> 1)
    {
      v6 = a2;
    }

    else
    {
      v6 = v5;
    }

    result = operator new[](12 * v6, MEMORY[0x1E69E5398]);
    v7 = v3[3];
    if (v7)
    {
      v8 = (v3[1] + 8);
      v9 = result + 8;
      do
      {
        *(v9 - 1) = *(v8 - 1);
        v10 = *v8;
        v8 += 3;
        *v9 = v10;
        v9 += 3;
        --v7;
      }

      while (v7);
    }

    v11 = *v3;
    *v3 = result;
    v3[1] = result;
    v3[2] = result;
    v3[4] = v6;
    if (v11)
    {
      result = MEMORY[0x1BFB49140](v11, 0x1000C8077774924);
    }
  }

  v12 = v3[3];
  v13 = a2 - v12;
  if (a2 > v12)
  {
    v14 = 12 * v12;
    do
    {
      v15 = v3[1] + v14;
      *v15 = 0;
      *(v15 + 8) = 0x800000;
      v14 += 12;
      --v13;
    }

    while (v13);
  }

  v3[3] = a2;
  return result;
}