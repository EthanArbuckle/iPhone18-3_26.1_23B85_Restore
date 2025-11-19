void sub_1BE681010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::language::DeCommonConceptFactory::quote(morphun::dialog::language::DeCommonConceptFactory *this@<X0>, const morphun::dialog::SpeakableString *a2@<X1>, void *a3@<X8>)
{
  v6 = morphun::util::LocaleUtils::SWITZERLAND_GERMAN(this);
  v7 = (*(*this + 32))(this);
  v8 = *(v7 + 127);
  if (v8 >= 0)
  {
    v9 = *(v7 + 127);
  }

  else
  {
    v9 = *(v7 + 112);
  }

  v10 = *(v6 + 127);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v6 + 112);
  }

  if (v9 != v10)
  {
    goto LABEL_13;
  }

  v14 = *(v7 + 104);
  v12 = (v7 + 104);
  v13 = v14;
  if (v8 < 0)
  {
    v12 = v13;
  }

  v17 = *(v6 + 104);
  v16 = v6 + 104;
  v15 = v17;
  v18 = (v11 >= 0 ? v16 : v15);
  if (!memcmp(v12, v18, v9))
  {
    if ((*(*a2 + 48))(a2))
    {
      v19 = (*(*a2 + 32))(a2);
      std::operator+<char16_t>(&v22, &unk_1BE80EB9A, v19);
      std::basic_string<char16_t>::append(&v22, word_1BE80EB9E, 1uLL);
      __p = v22;
      memset(&v22, 0, sizeof(v22));
      morphun::dialog::SpeakableString::SpeakableString(a3, &__p);
    }

    else
    {
      v20 = (*(*a2 + 32))(a2);
      std::operator+<char16_t>(&v22, &unk_1BE80EB9A, v20);
      std::basic_string<char16_t>::append(&v22, word_1BE80EB9E, 1uLL);
      __p = v22;
      memset(&v22, 0, sizeof(v22));
      v21 = (*(*a2 + 40))(a2);
      morphun::dialog::SpeakableString::SpeakableString(a3, &__p, v21);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_13:

    morphun::dialog::CommonConceptFactoryImpl::quote(this, a2, a3);
  }
}

void sub_1BE681434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void morphun::dialog::language::DeCommonConceptFactory::~DeCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC7B8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC7B8);
}

uint64_t npc<morphun::dialog::CommonConceptFactory const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

CFLocaleRef mccf_getLanguageCopy(uint64_t a1)
{
  v1 = npc<morphun::dialog::CommonConceptFactory const>(a1);
  v2 = (*(*v1 + 32))(v1);
  return morphun::util::CFUtils::convert(v2, v3);
}

void sub_1BE6816BC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v3, v2, v4);
    __cxa_end_catch();
    JUMPOUT(0x1BE6816A8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<morphun::dialog::SpeakableString const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t mccf_quantifyCopy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  npc<morphun::dialog::CommonConceptFactory const>(a1);
  npc<morphun::dialog::NumberConcept const>(a2);
  return (*(*a1 + 104))(a1, a2, a3);
}

uint64_t mccf_quantifyFormattedCopy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  npc<morphun::dialog::CommonConceptFactory const>(a1);
  npc<morphun::dialog::NumberConcept const>(a2);
  npc<morphun::dialog::SpeakableString const>(a3);
  return (*(*a1 + 112))(a1, a2, a3, a4);
}

void morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::~FiGrammarSynthesizer_LemmaApproximator(morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator *this)
{
  *this = &unk_1F3CD5598;
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(*(this + 2));

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD5598;
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(*(this + 2));
}

void std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,void *>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t> const,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,void *>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t> const,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,void,0>(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *(a1 + 32);
      v4 = *(a1 + 24);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 9);
          v3 -= 4;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = *(a1 + 24);
      }

      *(a1 + 32) = v2;
      operator delete(v4);
    }

    if (*(a1 + 23) < 0)
    {
      v6 = *a1;

      operator delete(v6);
    }
  }

  else
  {
    __break(1u);
  }
}

void morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::FiGrammarSynthesizer_LemmaApproximator(morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator *this, const morphun::dictionary::DictionaryMetaData *a2, const morphun::dictionary::Inflector *a3)
{
  v12[0] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = *(a2 + 1);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = this + 16;
  v9 = 0uLL;
  v10 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v5 = 0;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__dst, "n");
  memset(&v4, 0, sizeof(v4));
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(&v4, __dst, v12, 1uLL);
}

{
  v11[0] = *MEMORY[0x1E69E9840];
  *(this + 2) = 0;
  *this = &unk_1F3CD5598;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  v8 = 0uLL;
  v9 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v4 = 0;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__dst, "n");
  memset(&v3, 0, sizeof(v3));
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(&v3, __dst, v11, 1uLL);
}

void sub_1BE681F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 - 160);
  if (v34)
  {
    operator delete(v34);
  }

  std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(*a11);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t> const&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *std::__tree<std::basic_string<char16_t>>::__find_equal<std::basic_string<char16_t>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>::__emplace_back_slow_path<std::basic_string<char16_t> const&,signed char>(void *a1)
{
  v1 = ((a1[1] - *a1) >> 5) + 1;
  if (!(v1 >> 59))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 4 > v1)
    {
      v1 = v3 >> 4;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFE0)
    {
      v4 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v1;
    }

    v5 = a1;
    if (v4)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>(v4);
    }

    __break(1u);
  }

  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
}

void sub_1BE682248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:se200100]<std::allocator<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

void std::__uninitialized_allocator_relocate[abi:se200100]<std::allocator<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>,morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    while (a4)
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 2;
      a4 += 32;
      if (v6 == a3)
      {
        while (v5)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          v5 += 2;
          if (v5 == a3)
          {
            return;
          }
        }

        break;
      }
    }

    __break(1u);
  }
}

uint64_t std::__split_buffer<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
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

std::basic_string<char16_t> *morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::getHeuristicSuffix@<X0>(std::basic_string<char16_t> *__str@<X0>, std::allocator<char16_t> *a2@<X4>, std::basic_string<char16_t> *a3@<X8>)
{
  v5 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80u) != 0)
  {
    v5 = __str->__r_.__value_.__r.__words[1];
  }

  if (v5 <= 3)
  {
    v5 = 3;
  }

  return std::basic_string<char16_t>::basic_string(a3, __str, (v5 - 3), 0xFFFFFFFFFFFFFFFFLL, a2);
}

void sub_1BE6827A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v34 = *(v32 - 160);
  if (v34)
  {
    operator delete(v34);
  }

  std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(*a10);
  _Unwind_Resume(a1);
}

uint64_t *morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::FiGrammarSynthesizer_LemmaApproximator(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, std::allocator<char16_t> *a5)
{
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 40)) = a2[1];
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = (a1 + 2);
  v7 = *a3;
  v8 = a3[1];
  if (*a3 != v8)
  {
    do
    {
      v9 = *(v7 + 23);
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v7 + 8);
      }

      if (v9 <= 3)
      {
        v9 = 3;
      }

      std::basic_string<char16_t>::basic_string(&__p, v7, (v9 - 3), 0xFFFFFFFFFFFFFFFFLL, a5);
      p_p = &__p;
      v10 = std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t>&&>,std::tuple<>>((a1 + 1), &__p);
      v11 = v10;
      v12 = *(v10 + 64);
      if (v12 >= *(v10 + 72))
      {
        v13 = std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>::__emplace_back_slow_path<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple const&>(v10 + 56, v7);
      }

      else
      {
        std::allocator_traits<std::allocator<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>::construct[abi:se200100]<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple,morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple const&,void,0>(*(v10 + 64), v7);
        v13 = v12 + 32;
        *(v11 + 64) = v12 + 32;
      }

      *(v11 + 64) = v13;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 += 32;
    }

    while (v7 != v8);
  }

  return a1;
}

void sub_1BE682A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 64) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(*v16);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t>&&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *std::__tree<std::basic_string<char16_t>>::__find_equal<std::basic_string<char16_t>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::allocator_traits<std::allocator<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>::construct[abi:se200100]<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple,morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple const&,void,0>(std::basic_string<char16_t> *this, __int128 *a2)
{
  if (this)
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

    LOBYTE(this[1].__r_.__value_.__l.__data_) = *(a2 + 24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>::__emplace_back_slow_path<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple const&>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>(v6);
  }

  v13 = 0;
  v14 = 32 * v2;
  std::allocator_traits<std::allocator<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>::construct[abi:se200100]<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple,morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple const&,void,0>((32 * v2), a2);
  v15 = (32 * v2 + 32);
  v7 = *(a1 + 8);
  v8 = 32 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:se200100]<std::allocator<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>,morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>::~__split_buffer(&v13);
  return v12;
}

void sub_1BE682C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::FiGrammarSynthesizer_LemmaApproximator(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, std::allocator<char16_t> *a5)
{
  *a1 = &unk_1F3CD5598;
  a1[2] = 0;
  a1[1] = a1 + 2;
  v6 = (a1 + 1);
  a1[3] = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    do
    {
      v9 = *(v7 + 23);
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v7 + 8);
      }

      if (v9 <= 3)
      {
        v9 = 3;
      }

      std::basic_string<char16_t>::basic_string(&__p, v7, (v9 - 3), 0xFFFFFFFFFFFFFFFFLL, a5);
      p_p = &__p;
      v10 = std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t>&&>,std::tuple<>>(v6, &__p);
      v11 = v10;
      v12 = *(v10 + 64);
      if (v12 >= *(v10 + 72))
      {
        v13 = std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>::__emplace_back_slow_path<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple const&>(v10 + 56, v7);
      }

      else
      {
        std::allocator_traits<std::allocator<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>::construct[abi:se200100]<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple,morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple const&,void,0>(*(v10 + 64), v7);
        v13 = v12 + 32;
        *(v11 + 64) = v12 + 32;
      }

      *(v11 + 64) = v13;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 += 32;
    }

    while (v7 != v8);
  }

  return a1;
}

void sub_1BE682DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v14 + 64) = v15;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(*v16);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::~FiGrammarSynthesizer_LemmaApproximator(morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(*(this + 2));
}

void virtual thunk tomorphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::~FiGrammarSynthesizer_LemmaApproximator(morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator *this)
{
  v1 = this + *(*this - 32);
  *v1 = &unk_1F3CD5598;
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(*(v1 + 2));
}

{
  v1 = this + *(*this - 32);
  *v1 = &unk_1F3CD5598;
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::vector<morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::WordSuffixTuple>>>>::destroy(*(v1 + 2));

  JUMPOUT(0x1BFB49160);
}

void morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::getBestMatchingKnownLemma(std::basic_string<char16_t> *__str@<X1>, uint64_t a2@<X0>, std::allocator<char16_t> *a3@<X4>, std::basic_string<char16_t> *a4@<X8>)
{
  v7 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v7 < 0)
  {
    v8 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
    if (!size)
    {

      std::basic_string<char16_t>::__init_copy_ctor_external(a4, v8, 0);
      return;
    }

    std::basic_string<char16_t>::__init_copy_ctor_external(a4, v8, size);
    LOBYTE(v7) = *(&__str->__r_.__value_.__s + 23);
  }

  else
  {
    *a4 = *__str;
    if (!v7)
    {
      return;
    }
  }

  v7 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = __str->__r_.__value_.__r.__words[1];
  }

  if (v7 <= 3)
  {
    v7 = 3;
  }

  std::basic_string<char16_t>::basic_string(&v38, __str, (v7 - 3), 0xFFFFFFFFFFFFFFFFLL, a3);
  if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __str->__r_.__value_.__r.__words[1];
  }

  v13 = *(a2 + 16);
  v11 = a2 + 16;
  v12 = v13;
  if (!v13)
  {
    goto LABEL_55;
  }

  v14 = v11;
  do
  {
    v15 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v12 + 32), &v38);
    if ((v15 & 0x80u) == 0)
    {
      v14 = v12;
    }

    v12 = *(v12 + ((v15 >> 4) & 8));
  }

  while (v12);
  if (v14 == v11 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v38, (v14 + 32)) & 0x80) != 0 || (v16 = *(v14 + 56), v17 = *(v14 + 64), v16 == v17))
  {
LABEL_55:
    morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::getFallBackLemma(__str);
  }

  v18 = 0;
  do
  {
    v19 = *(v16 + 23);
    if (v19 < 0)
    {
      v21 = *v16;
      v19 = *(v16 + 8);
      v20 = *v16 + 2 * v19;
    }

    else
    {
      v20 = v16 + 2 * v19;
      v21 = v16;
    }

    v22 = v21 + 2 * v19 - 2 * *(v16 + 24);
    v23 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v23 & 0x80u) == 0)
    {
      v24 = __str;
    }

    else
    {
      v24 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v23 & 0x80u) != 0)
    {
      v23 = __str->__r_.__value_.__l.__size_;
    }

    v25 = (v24 + 2 * v23 - 2);
    while (v20 != v22)
    {
      v27 = *(v20 - 2);
      v20 -= 2;
      v26 = v27;
      v28 = v25->__r_.__value_.__s.__data_[0];
      v25 = (v25 - 2);
      if (v26 != v28)
      {
        goto LABEL_53;
      }
    }

    v29 = morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::levenshteinDistance(__str, v16);
    v30 = v29;
    if (v29 <= v10)
    {
      if (v29 < v10)
      {
        goto LABEL_51;
      }

      v31 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
      if ((v31 & 0x80u) == 0)
      {
        v32 = a4;
      }

      else
      {
        v32 = a4->__r_.__value_.__r.__words[0];
      }

      if ((v31 & 0x80u) != 0)
      {
        v31 = a4->__r_.__value_.__l.__size_;
      }

      v33 = *(v16 + 23);
      v34 = v16;
      if ((v33 & 0x8000000000000000) != 0)
      {
        v34 = *v16;
        v33 = *(v16 + 8);
      }

      if (v31 >= v33)
      {
        v35 = v33;
      }

      else
      {
        v35 = v31;
      }

      if (v35)
      {
        do
        {
          v36 = *v34;
          v37 = v32->__r_.__value_.__s.__data_[0];
          if (v36 < v37)
          {
            goto LABEL_52;
          }

          if (v37 < v36)
          {
            goto LABEL_51;
          }

          ++v34;
          v32 = (v32 + 2);
        }

        while (--v35);
      }

      if (v31 < v33)
      {
LABEL_51:
        std::basic_string<char16_t>::operator=(a4, v16);
      }

LABEL_52:
      v18 = 1;
      v10 = v30;
    }

LABEL_53:
    v16 += 32;
  }

  while (v16 != v17);
  if ((v18 & 1) == 0)
  {
    goto LABEL_55;
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_1BE68328C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::grammar::synthesis::FiGrammarSynthesizer_LemmaApproximator::levenshteinDistance(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  if (v2 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v4)
    {
      v6 = v5 + 1;
      if (v5 == -1)
      {
        __break(1u);
      }

      else if ((v6 & 0x80000000) == 0)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v6);
      }

      std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
    }

    return v5;
  }

  return v4;
}

void morphun::grammar::synthesis::PlGrammarSynthesizer::getPreposition(uint64_t a1, char *a2, const UChar *a3, int32_t a4)
{
  v8 = morphun::grammar::synthesis::PREPOSITION_MAP(a1);
  v9 = a2[23];
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
    v11 = a2[23];
  }

  else
  {
    v11 = *(a2 + 1);
  }

  v12 = v8 + 8;
  v13 = *(v8 + 8);
  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v8 + 8;
  do
  {
    v8 = std::less<std::u16string_view>::operator()[abi:se200100](*(v13 + 32), *(v13 + 40), v10, v11);
    if (v8)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (!v8)
    {
      v14 = v13;
    }

    v13 = *(v13 + v15);
  }

  while (v13);
  if (v14 == v12 || (v8 = std::less<std::u16string_view>::operator()[abi:se200100](v10, v11, *(v14 + 32), *(v14 + 40)), v8))
  {
LABEL_17:
    v14 = v12;
  }

  v16 = morphun::grammar::synthesis::PREPOSITION_MAP(v8);
  if ((v16 + 8) == v14)
  {
    goto LABEL_85;
  }

  __p = 0;
  v45 = 0;
  v46 = 0;
  v17 = morphun::util::LocaleUtils::POLISH(v16);
  morphun::util::StringViewUtils::lowercase(&__p, a3, a4, v17);
  LODWORD(v18) = HIBYTE(v46);
  if (SHIBYTE(v46) < 0)
  {
    p_p = __p;
    if (v45 <= 1)
    {
      goto LABEL_84;
    }
  }

  else
  {
    if (HIBYTE(v46) < 2u)
    {
      goto LABEL_85;
    }

    p_p = &__p;
  }

  v20 = *(v14 + 56);
  if (v20)
  {
    v21 = *(v14 + 48);
    v22 = &v21[v20];
    v23 = 2 * v20;
    v24 = v21;
    while (*v24 != *p_p)
    {
      ++v24;
      v23 -= 2;
      if (!v23)
      {
        goto LABEL_40;
      }
    }

    v25 = v24 == v22 ? 0 : v24;
    if (v24 != v22 && v25 - v21 != -2)
    {
      v26 = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(p_p);
      if (SHIBYTE(v46) < 0)
      {
        if (!v45)
        {
          goto LABEL_89;
        }

        v27 = __p;
      }

      else
      {
        if (!HIBYTE(v46))
        {
          goto LABEL_89;
        }

        v27 = &__p;
      }

      if (!MEMORY[0x1BFB49A20](*v26, v27[1]))
      {
LABEL_60:
        if (a2[23] >= 0)
        {
          v38 = a2[23];
        }

        else
        {
          v38 = *(a2 + 1);
        }

        std::basic_string<char16_t>::basic_string[abi:se200100](a1, v38 + 1);
        if (*(a1 + 23) >= 0)
        {
          v39 = a1;
        }

        else
        {
          v39 = *a1;
        }

        if (a2[23] >= 0)
        {
          v40 = a2;
        }

        else
        {
          v40 = *a2;
        }

        if ((v38 & 0x8000000000000000) == 0)
        {
          v41 = &v39[2 * v38];
          if (v40 < v39 || v41 <= v40)
          {
            if (v38)
            {
              memmove(v39, v40, 2 * v38);
            }

            if (v41 > byte_1BE80ECC4 || v41 + 2 <= byte_1BE80ECC4)
            {
              *v41 = 101;
              if (SHIBYTE(v46) < 0)
              {
                operator delete(__p);
              }

              return;
            }
          }
        }

LABEL_89:
        __break(1u);
        return;
      }

      LODWORD(v18) = HIBYTE(v46);
    }
  }

LABEL_40:
  v18 = v18;
  v28 = &__p;
  if ((v18 & 0x80u) != 0)
  {
    v28 = __p;
    v18 = v45;
  }

  v47[0] = v28;
  v47[1] = v18;
  v29 = *(v14 + 64);
  v30 = *(v14 + 72);
  while (v29 != v30)
  {
    if (std::u16string_view::starts_with[abi:se200100](v47, *v29, *(v29 + 8)))
    {
      goto LABEL_60;
    }

    v29 += 16;
  }

  v31 = *(v14 + 88);
  v32 = *(v14 + 96);
  if (v31 != v32)
  {
    v33 = HIBYTE(v46);
    if (v46 < 0)
    {
      v33 = v45;
    }

    v34 = &__p;
    if (v46 < 0)
    {
      v34 = __p;
    }

    do
    {
      if (v31[1] == v33)
      {
        if (!v33)
        {
          goto LABEL_59;
        }

        v35 = *v31;
        v36 = v33;
        v37 = v34;
        while (*v37 == *v35)
        {
          ++v35;
          ++v37;
          if (!--v36)
          {
            goto LABEL_59;
          }
        }
      }

      v31 += 2;
    }

    while (v31 != v32);
    goto LABEL_82;
  }

LABEL_59:
  if (v31 != v32)
  {
    goto LABEL_60;
  }

LABEL_82:
  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_85;
  }

  p_p = __p;
LABEL_84:
  operator delete(p_p);
LABEL_85:
  if (a2[23] < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a1, *a2, *(a2 + 1));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 2);
  }
}

void sub_1BE683948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::grammar::synthesis::PREPOSITION_MAP(morphun::grammar::synthesis *this)
{
  v4 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = morphun::grammar::synthesis::PREPOSITION_MAP(void)::PREPOSITION_MAP_;
  if (!morphun::grammar::synthesis::PREPOSITION_MAP(void)::PREPOSITION_MAP_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE683E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  v72 = -640;
  v73 = v70;
  do
  {
    v73 = std::pair<std::u16string_view const,morphun::grammar::synthesis::MatchingPrepositions>::~pair(v73) - 10;
    v72 += 80;
  }

  while (v72);
  morphun::grammar::synthesis::MatchingPrepositions::~MatchingPrepositions(&a9);
  morphun::grammar::synthesis::MatchingPrepositions::~MatchingPrepositions(&a19);
  morphun::grammar::synthesis::MatchingPrepositions::~MatchingPrepositions(&a29);
  morphun::grammar::synthesis::MatchingPrepositions::~MatchingPrepositions(&a39);
  morphun::grammar::synthesis::MatchingPrepositions::~MatchingPrepositions(&a49);
  morphun::grammar::synthesis::MatchingPrepositions::~MatchingPrepositions(&a59);
  morphun::grammar::synthesis::MatchingPrepositions::~MatchingPrepositions(&a69);
  morphun::grammar::synthesis::MatchingPrepositions::~MatchingPrepositions(&STACK[0x230]);
  MEMORY[0x1BFB49160](v69, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::u16string_view const,morphun::grammar::synthesis::MatchingPrepositions>::pair[abi:se200100]<true,0>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<std::u16string_view>::__init_with_size[abi:se200100]<std::u16string_view*,std::u16string_view*>(a1 + 32, *(a3 + 16), *(a3 + 24), (*(a3 + 24) - *(a3 + 16)) >> 4);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  std::vector<std::u16string_view>::__init_with_size[abi:se200100]<std::u16string_view*,std::u16string_view*>(a1 + 56, *(a3 + 40), *(a3 + 48), (*(a3 + 48) - *(a3 + 40)) >> 4);
  return a1;
}

void sub_1BE684100(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::u16string_view,morphun::grammar::synthesis::MatchingPrepositions>::map[abi:se200100](void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = a2 + 80 * a3;
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
            v16 = *(v7 + 40);
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

      v5 += 80;
    }

    while (v5 != v6);
  }

  return a1;
}

void *std::pair<std::u16string_view const,morphun::grammar::synthesis::MatchingPrepositions>::~pair(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void morphun::grammar::synthesis::MatchingPrepositions::~MatchingPrepositions(morphun::grammar::synthesis::MatchingPrepositions *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

void std::__tree<std::__value_type<std::u16string_view,morphun::grammar::synthesis::MatchingPrepositions>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,morphun::grammar::synthesis::MatchingPrepositions>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,morphun::grammar::synthesis::MatchingPrepositions>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::u16string_view,morphun::grammar::synthesis::MatchingPrepositions>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,morphun::grammar::synthesis::MatchingPrepositions>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,morphun::grammar::synthesis::MatchingPrepositions>>>::destroy(*a1);
    std::__tree<std::__value_type<std::u16string_view,morphun::grammar::synthesis::MatchingPrepositions>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,morphun::grammar::synthesis::MatchingPrepositions>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,morphun::grammar::synthesis::MatchingPrepositions>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::u16string_view,morphun::grammar::synthesis::MatchingPrepositions>,void *>>>::destroy[abi:se200100]<std::pair<std::u16string_view const,morphun::grammar::synthesis::MatchingPrepositions>,void,0>(a1 + 4);

    operator delete(a1);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::u16string_view,morphun::grammar::synthesis::MatchingPrepositions>,void *>>>::destroy[abi:se200100]<std::pair<std::u16string_view const,morphun::grammar::synthesis::MatchingPrepositions>,void,0>(void *a1)
{
  if (a1)
  {
    v2 = a1[7];
    if (v2)
    {
      a1[8] = v2;
      operator delete(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      a1[5] = v3;

      operator delete(v3);
    }
  }

  else
  {
    __break(1u);
  }
}

void morphun::grammar::synthesis::PlGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::PlGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"gender");
  operator new();
}

void sub_1BE685238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  __cxa_free_exception(v24);
  v26 = *(v22 + 8);
  *(v22 + 8) = 0;
  if (v26)
  {
    (*(*v26 + 16))(v26);
  }

  MEMORY[0x1BFB49160](v22, v23);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::ItCommonConceptFactory::quantifiedJoin(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W4>, void *a4@<X8>)
{
  if (a3 == 1)
  {

    morphun::dialog::SpeakableString::operator+(a1, a2, a4);
  }

  else
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, &word_1BE80F394);
    morphun::dialog::SpeakableString::SpeakableString(v9, __p);
    morphun::dialog::SpeakableString::operator+(a1, v9, v10);
    morphun::dialog::SpeakableString::operator+(v10, a2, a4);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1BE6856C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::language::ItCommonConceptFactory::quantify(morphun::dialog::language::ItCommonConceptFactory *this, const morphun::dialog::NumberConcept *a2, const morphun::dialog::SemanticFeatureConceptBase *a3)
{
  v14 = 0uLL;
  v15 = 0;
  morphun::dialog::SpeakableString::SpeakableString(v16, &v14);
  if (*(a2 + 4) == 1)
  {
    v6 = *(a2 + 1);
  }

  else
  {
    v6 = *(a2 + 1);
  }

  if (v6 != 1)
  {
    goto LABEL_9;
  }

  if (!a3 || !*(this + 94))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v7 = (*(*a3 + 104))(a3);
  v8 = v7;
  if (v7)
  {
    v9 = (*(*v7 + 32))(v7);
    v10 = (*(*v8 + 32))(v8);
    morphun::dialog::SpeakableString::SpeakableString(&v14, v9, v10);
    morphun::dialog::SpeakableString::operator=(v16, &v14);
    (*(*v8 + 16))(v8);
  }

  else
  {
LABEL_9:
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "c");
    (*(*a2 + 200))(&v14, a2, __p);
    morphun::dialog::SpeakableString::operator=(v16, &v14);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }
  }

  morphun::dialog::CommonConceptFactoryImpl::quantify(this, a2, v16, a3);
}

void sub_1BE685998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1BE685B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  morphun::dialog::SemanticConceptList::~SemanticConceptList(v15, off_1F3CDBEA0);
  MEMORY[0x1BFB49160](v15, v16);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::ItCommonConceptFactory::~ItCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC558);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC558);
}

uint64_t morphun::analysis::stemmer::PlLemmaFilter::stem(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    return *(a2 + 23);
  }

  else
  {
    return *(a2 + 8);
  }
}

void morphun::analysis::stemmer::PlLemmaFilter::~PlLemmaFilter(void **this)
{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CF08B8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CF08B8);
}

void morphun::dialog::language::FrCommonConceptFactory::quote(const morphun::dialog::SpeakableString *a1@<X1>, void *a2@<X8>)
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

void sub_1BE685EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void morphun::dialog::language::FrCommonConceptFactory::~FrCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC660);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC660);
}

uint64_t morphun::dialog::LocalizedCommonConceptFactoryProvider::getCommonConceptFactory(morphun::dialog::LocalizedCommonConceptFactoryProvider *this, const morphun::util::ULocale *a2)
{
  std::mutex::lock((this + 32));
  v6 = this + 16;
  v5 = *(this + 2);
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = this + 16;
  do
  {
    v4 = std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 13, v5 + 17);
    if ((v4 & 0x80u) == 0)
    {
      v7 = v5;
    }

    v5 = *&v5[(v4 >> 4) & 8];
  }

  while (v5);
  if (v7 == v6 || (v4 = std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 17, a2 + 13), (v4 & 0x80) != 0))
  {
LABEL_9:
    v9 = morphun::util::LocaleUtils::HONGKONG_CHINESE(v4);
    v10 = *(a2 + 127);
    if (v10 >= 0)
    {
      v11 = *(a2 + 127);
    }

    else
    {
      v11 = *(a2 + 14);
    }

    v12 = *(v9 + 127);
    v13 = *(v9 + 112);
    if (v12 >= 0)
    {
      v13 = *(v9 + 127);
    }

    v14 = a2;
    if (v11 == v13)
    {
      v15 = a2 + 104;
      if (v10 < 0)
      {
        v15 = *(a2 + 13);
      }

      v18 = *(v9 + 104);
      v16 = (v9 + 104);
      v17 = v18;
      if (v12 >= 0)
      {
        v19 = v16;
      }

      else
      {
        v19 = v17;
      }

      v20 = memcmp(v15, v19, v11);
      v14 = a2;
      if (!v20)
      {
        v14 = morphun::util::LocaleUtils::HONGKONG_CANTONESE(v20);
      }
    }

    v21 = 0;
    v24 = *(v14 + 1);
    v22 = v14 + 8;
    v23 = v24;
    if (v22[23] >= 0)
    {
      v25 = v22;
    }

    else
    {
      v25 = v23;
    }

    v26 = 40;
    while (1)
    {
      v27 = v21 + ((v26 - v21) >> 1);
      v28 = strcmp(v25, &morphun::dialog::constructCommonConceptFactory(morphun::util::ULocale const&)::COMMON_CONCEPT_FACTORY_CONSTRUCTORS + 16 * v27);
      if ((v28 & 0x80000000) != 0)
      {
        v26 = v27 - 1;
      }

      else
      {
        if (!v28)
        {
          if (morphun::util::gLogLevel <= 2)
          {
            (**a2)(&v43, a2);
            std::basic_string<char16_t>::insert(&v43, L"The CommonConceptFactory for ", 0x1D, v37);
            __p = v43;
            memset(&v43, 0, sizeof(v43));
            std::basic_string<char16_t>::append(&__p, L" is being constructed for the first time.", 0x29uLL);
            __dst[0] = __p;
            memset(&__p, 0, sizeof(__p));
            if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = __dst;
            }

            else
            {
              v38 = __dst[0].__r_.__value_.__r.__words[0];
            }

            if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst[0].__r_.__value_.__l.__size_;
            }

            morphun::util::Logger::infoComponent(L"LocalizedCommonConceptFactoryProvider", v38, size);
            if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v43.__r_.__value_.__l.__data_);
            }
          }

          v8 = (*(&morphun::dialog::constructCommonConceptFactory(morphun::util::ULocale const&)::COMMON_CONCEPT_FACTORY_CONSTRUCTORS + 2 * v27 + 1))(a2);
          if (v8)
          {
            while (1)
            {
              v41 = *v6;
              if (!*v6)
              {
                break;
              }

              while (1)
              {
                v6 = v41;
                if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v41 + 17, a2 + 13) & 0x80) != 0)
                {
                  break;
                }

                if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 13, v6 + 17) & 0x80) == 0)
                {
                  goto LABEL_66;
                }

                v41 = *(v6 + 1);
                if (!v41)
                {
                  goto LABEL_65;
                }
              }
            }

LABEL_65:
            operator new();
          }

LABEL_60:
          exception = __cxa_allocate_exception(0x38uLL);
          (**a2)(&__p, a2);
          std::basic_string<char16_t>::append(&__p, L" has no known CommonConceptFactory implementation", 0x31uLL);
          __dst[0] = __p;
          memset(&__p, 0, sizeof(__p));
          morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, __dst);
        }

        v21 = v27 + 1;
      }

      if (v21 > v26)
      {
        v29 = morphun::util::LocaleUtils::BASE_SUPPORTED_LOCALES(v28);
        std::map<std::string,std::vector<morphun::util::ULocale>>::map[abi:se200100](__dst, v29);
        std::string::basic_string[abi:se200100]<0>(&__p, v25);
        v30 = __dst[0].__r_.__value_.__l.__size_;
        if (!__dst[0].__r_.__value_.__l.__size_)
        {
          goto LABEL_41;
        }

        v31 = &__dst[0].__r_.__value_.__r.__words[1];
        v32 = __dst[0].__r_.__value_.__l.__size_;
        do
        {
          v33 = v31;
          v34 = (v32 + 32);
          v35 = std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>((v32 + 32), &__p);
          if ((v35 & 0x80u) == 0)
          {
            v31 = v32;
          }

          v32 = *(v32 + ((v35 >> 4) & 8));
        }

        while (v32);
        if (v31 == &__dst[0].__r_.__value_.__r.__words[1] || ((v35 & 0x80u) == 0 ? (p_size = v34) : (p_size = &v33[1].__r_.__value_.__l.__size_), (std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, p_size) & 0x80) != 0))
        {
LABEL_41:
          v31 = &__dst[0].__r_.__value_.__r.__words[1];
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v30 = __dst[0].__r_.__value_.__l.__size_;
        }

        std::__tree<std::__value_type<std::string,std::vector<morphun::util::ULocale>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<morphun::util::ULocale>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<morphun::util::ULocale>>>>::destroy(v30);
        if (&__dst[0].__r_.__value_.__r.__words[1] != v31)
        {
          operator new();
        }

        goto LABEL_60;
      }
    }
  }

  v8 = *(v7 + 20);
LABEL_66:
  std::mutex::unlock((this + 32));
  return v8;
}

void sub_1BE6866B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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
  }

  std::mutex::unlock((v28 + 32));
  _Unwind_Resume(a1);
}

void sub_1BE686C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v34 = &a31;
  v35 = -144;
  do
  {
    v34 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v34) - 48);
    v35 += 48;
  }

  while (v35);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v31, v32);
  _Unwind_Resume(a1);
}

void sub_1BE686F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a10);
  v30 = &a27;
  v31 = -96;
  do
  {
    v30 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v30) - 48);
    v31 += 48;
  }

  while (v31);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v27, v28);
  _Unwind_Resume(a1);
}

void sub_1BE6871CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v34 = &a31;
  v35 = -144;
  do
  {
    v34 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v34) - 48);
    v35 += 48;
  }

  while (v35);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v31, v32);
  _Unwind_Resume(a1);
}

void sub_1BE6873E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(v15, off_1F3CDC2F0);
  MEMORY[0x1BFB49160](v15, v16);
  _Unwind_Resume(a1);
}

void sub_1BE6875E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v34 = &a31;
  v35 = -144;
  do
  {
    v34 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v34) - 48);
    v35 += 48;
  }

  while (v35);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v31, v32);
  _Unwind_Resume(a1);
}

void sub_1BE6877E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v28 = &a25;
  v29 = -96;
  do
  {
    v28 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v28) - 48);
    v29 += 48;
  }

  while (v29);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v25, v26);
  _Unwind_Resume(a1);
}

void sub_1BE687AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(v24, off_1F3CDC3B0);
  MEMORY[0x1BFB49160](v24, v25);
  _Unwind_Resume(a1);
}

void sub_1BE687E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v34 = &a31;
  v35 = -144;
  do
  {
    v34 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v34) - 48);
    v35 += 48;
  }

  while (v35);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v31, v32);
  _Unwind_Resume(a1);
}

void sub_1BE688004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v28 = &a25;
  v29 = -96;
  do
  {
    v28 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v28) - 48);
    v29 += 48;
  }

  while (v29);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v25, v26);
  _Unwind_Resume(a1);
}

void sub_1BE688378(_Unwind_Exception *a1)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(v1, off_1F3CDC558);
  MEMORY[0x1BFB49160](v1, v2);
  _Unwind_Resume(a1);
}

void sub_1BE68854C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v34 = &a31;
  v35 = -144;
  do
  {
    v34 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v34) - 48);
    v35 += 48;
  }

  while (v35);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v31, v32);
  _Unwind_Resume(a1);
}

void sub_1BE6888CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v34 = &a31;
  v35 = -144;
  do
  {
    v34 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v34) - 48);
    v35 += 48;
  }

  while (v35);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v31, v32);
  _Unwind_Resume(a1);
}

void sub_1BE688CEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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
    if ((v28 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!v28)
  {
LABEL_10:
    __cxa_end_catch();
    JUMPOUT(0x1BE688D64);
  }

  __cxa_free_exception(v27);
  goto LABEL_10;
}

void sub_1BE688F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v28 = &a25;
  v29 = -96;
  do
  {
    v28 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v28) - 48);
    v29 += 48;
  }

  while (v29);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v25, v26);
  _Unwind_Resume(a1);
}

void sub_1BE689358(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(v1, off_1F3CDC6A8);
  MEMORY[0x1BFB49160](v1, v2);
  _Unwind_Resume(a1);
}

void sub_1BE689698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v28 = &a25;
  v29 = -96;
  do
  {
    v28 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v28) - 48);
    v29 += 48;
  }

  while (v29);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v25, v26);
  _Unwind_Resume(a1);
}

void sub_1BE68995C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v34 = &a31;
  v35 = -144;
  do
  {
    v34 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v34) - 48);
    v35 += 48;
  }

  while (v35);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v31, v32);
  _Unwind_Resume(a1);
}

void sub_1BE689B28(_Unwind_Exception *a1)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(v1, off_1F3CDC7B8);
  MEMORY[0x1BFB49160](v1, v2);
  _Unwind_Resume(a1);
}

void sub_1BE689CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v28 = &a25;
  v29 = -96;
  do
  {
    v28 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v28) - 48);
    v29 += 48;
  }

  while (v29);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v25, v26);
  _Unwind_Resume(a1);
}

void sub_1BE689EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v34 = &a31;
  v35 = -144;
  do
  {
    v34 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v34) - 48);
    v35 += 48;
  }

  while (v35);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v31, v32);
  _Unwind_Resume(a1);
}

void sub_1BE68A194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v28 = &a25;
  v29 = -96;
  do
  {
    v28 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v28) - 48);
    v29 += 48;
  }

  while (v29);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v25, v26);
  _Unwind_Resume(a1);
}

void sub_1BE68A3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a11);
  v34 = &a31;
  v35 = -144;
  do
  {
    v34 = (std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::~pair(v34) - 48);
    v35 += 48;
  }

  while (v35);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v31, v32);
  _Unwind_Resume(a1);
}

void sub_1BE68A614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(v24, off_1F3CDC908);
  MEMORY[0x1BFB49160](v24, v25);
  _Unwind_Resume(a1);
}

void morphun::dialog::LocalizedCommonConceptFactoryProvider::~LocalizedCommonConceptFactoryProvider(morphun::dialog::LocalizedCommonConceptFactoryProvider *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dialog::LocalizedCommonConceptFactoryProvider::~LocalizedCommonConceptFactoryProvider(morphun::dialog::LocalizedCommonConceptFactoryProvider *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 56)) = a2[1];
  *(this + *(*this - 40)) = a2[2];
  v4 = *(this + 1);
  v5 = this + 16;
  if (v4 != this + 16)
  {
    do
    {
      v6 = *(v4 + 20);
      if (v6)
      {
        (*(*v6 + 16))(v6);
      }

      v7 = *(v4 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v4 + 2);
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v5);
  }

  std::mutex::~mutex((this + 32));
  std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::destroy(*(this + 2));
}

double morphun::dialog::LocalizedCommonConceptFactoryProvider::LocalizedCommonConceptFactoryProvider(morphun::dialog::LocalizedCommonConceptFactoryProvider *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 56)) = a2[1];
  *(this + *(*this - 40)) = a2[2];
  *(this + 2) = 0;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  *(this + 4) = 850045863;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

double morphun::dialog::LocalizedCommonConceptFactoryProvider::LocalizedCommonConceptFactoryProvider(morphun::dialog::LocalizedCommonConceptFactoryProvider *this)
{
  *(this + 2) = 0;
  *this = &unk_1F3CD8320;
  *(this + 1) = this + 16;
  *(this + 3) = 0;
  *(this + 4) = 850045863;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

void virtual thunk tomorphun::dialog::LocalizedCommonConceptFactoryProvider::~LocalizedCommonConceptFactoryProvider(morphun::dialog::LocalizedCommonConceptFactoryProvider *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void virtual thunk tomorphun::dialog::LocalizedCommonConceptFactoryProvider::~LocalizedCommonConceptFactoryProvider(void *a1)
{
}

{

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::dialog::LocalizedCommonConceptFactoryProvider::getDefaultCommonConceptFactoryProvider(morphun::dialog::LocalizedCommonConceptFactoryProvider *this)
{
  {
    operator new();
  }

  return morphun::dialog::LocalizedCommonConceptFactoryProvider::getDefaultCommonConceptFactoryProvider(void)::DEFAULT_LOCALIZED_COMMON_CONCEPT_FACTORY_PROVIDER;
}

void morphun::grammar::synthesis::HuGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::HuGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, "c");
  operator new();
}

void sub_1BE68AD68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

uint64_t std::unordered_map<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>::unordered_map(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v4 = a2;
    v18 = a2 + 40 * a3;
    do
    {
      v5 = *(*v4 + 8);
      v6 = v5;
      if (v5 < 0)
      {
        v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
        v8 = 5381;
        do
        {
          v6 = v8;
          v9 = *v7++;
          v8 = (33 * v8) ^ v9;
        }

        while (v9);
      }

      v10 = *(a1 + 8);
      if (!*&v10)
      {
        goto LABEL_22;
      }

      v11 = vcnt_s8(v10);
      v11.i16[0] = vaddlv_u8(v11);
      v12 = v11.u32[0];
      if (v11.u32[0] > 1uLL)
      {
        v13 = v6;
        if (v6 >= *&v10)
        {
          v13 = v6 % *&v10;
        }
      }

      else
      {
        v13 = (*&v10 - 1) & v6;
      }

      v14 = *(*a1 + 8 * v13);
      if (!v14 || (v15 = *v14) == 0)
      {
LABEL_22:
        operator new();
      }

      while (1)
      {
        v16 = v15[1];
        if (v16 == v6)
        {
          break;
        }

        if (v12 > 1)
        {
          if (v16 >= *&v10)
          {
            v16 %= *&v10;
          }
        }

        else
        {
          v16 &= *&v10 - 1;
        }

        if (v16 != v13)
        {
          goto LABEL_22;
        }

LABEL_21:
        v15 = *v15;
        if (!v15)
        {
          goto LABEL_22;
        }
      }

      if (!std::type_info::operator==[abi:se200100](*(v15[2] + 8), v5))
      {
        goto LABEL_21;
      }

      v4 += 40;
    }

    while (v4 != v18);
  }

  return a1;
}

void sub_1BE68B0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,void *>>>>::~unique_ptr[abi:se200100](va);
  std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

morphun::analysis::util::AttributeSource *morphun::analysis::TokenStream::TokenStream(morphun::analysis::TokenStream *this, morphun::analysis::util::AttributeSource *a2, uint64_t a3)
{
  result = morphun::analysis::util::AttributeSource::AttributeSource(this, (a2 + 8), a3);
  v5 = *a2;
  *result = *a2;
  *(result + *(v5 - 40)) = *(a2 + 3);
  return result;
}

morphun::analysis::util::AttributeSource *morphun::analysis::TokenStream::TokenStream(morphun::analysis::TokenStream *this, morphun::analysis::util::AttributeFactory *a2, uint64_t a3)
{
  result = morphun::analysis::util::AttributeSource::AttributeSource(this, (a2 + 8), a3);
  v5 = *a2;
  *result = *a2;
  *(result + *(v5 - 40)) = *(a2 + 3);
  return result;
}

morphun::dictionary::metadata::StringContainer *morphun::dictionary::metadata::StringContainer::StringContainer(morphun::dictionary::metadata::StringContainer *this, morphun::util::MemoryMappedFile *a2)
{
  LOBYTE(v8) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v8);
  v4 = v8;
  *this = v8;
  *(this + 1) = 0;
  EncodingName = morphun::dictionary::metadata::MarisaTrie<signed char>::getEncodingName(v4);
  morphun::dictionary::metadata::CharsetConverter::CharsetConverter((this + 16), EncodingName);
  *(this + 10) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v8);
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v8);
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v8);
  v9 = 0;
  morphun::util::MemoryMappedFile::read<int>(a2, &v9);
  v6 = v9;
  if (v9 >= 1)
  {
    v8 = 0;
    morphun::util::MemoryMappedFile::read<char *>(a2, &v8, v9);
    marisa::Trie::map(this + 1, v8, v6);
    *(this + 10) = marisa::Trie::num_keys(*(this + 1));
  }

  return this;
}

void sub_1BE68B34C(_Unwind_Exception *a1)
{
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v1);
  _Unwind_Resume(a1);
}

char *morphun::dictionary::metadata::MarisaTrie<signed char>::getEncodingName(unsigned int a1)
{
  if (a1 >= 3)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(a1, &v5);
    std::basic_string<char16_t>::insert(&v5, L"Unknown encoding value ", 0x17, v4);
    v6 = v5;
    memset(&v5, 0, sizeof(v5));
    morphun::exception::IllegalStateException::IllegalStateException(exception, &v6);
  }

  return off_1E806A780[a1];
}

void sub_1BE68B440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t morphun::dictionary::metadata::StringContainer::StringContainer(uint64_t a1, void *a2, uint64_t a3)
{
  morphun::dictionary::metadata::CharsetConverter::CharsetConverter(v42, "BOCU1");
  memset(&v45, 0, sizeof(v45));
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 == a2 + 1)
  {
    v7 = 0;
    v8 = 0;
    v18 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v6[5];
      morphun::dictionary::metadata::CharsetConverter::encode(v42, &v45, v6[4], v10);
      v11 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      size = v45.__r_.__value_.__l.__size_;
      morphun::util::StringViewUtils::convert(&v45, v6[4], v6[5]);
      if ((v11 & 0x80u) == 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = size;
      }

      v14 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v45.__r_.__value_.__l.__size_;
      }

      v15 = v6[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v9 += v10;
      v7 += v13;
      v8 += v14;
      v6 = v16;
    }

    while (v16 != v5);
    v18 = 2 * v9;
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }
  }

  if (v18 >= v7 || v18 >= v8)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (v7 >= v18 || v7 >= v8)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  *a1 = v22;
  *(a1 + 8) = 0;
  EncodingName = morphun::dictionary::metadata::MarisaTrie<signed char>::getEncodingName(v22);
  morphun::dictionary::metadata::CharsetConverter::CharsetConverter((a1 + 16), EncodingName);
  *(a1 + 40) = a2[2];
  npc<std::map<std::u16string_view,int>>(a3);
  if (*(a3 + 16))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string<std::u16string_view,0>(v42, L"The mapping result should be empty", 0x22uLL);
    morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, v42);
  }

  v44 = 0;
  memset(v43, 0, sizeof(v43));
  memset(v42, 0, sizeof(v42));
  __p = 0;
  v40 = 0;
  v41 = 0;
  v24 = *a2;
  if (*a2 != v5)
  {
    do
    {
      morphun::dictionary::metadata::CharsetConverter::encode(a1 + 16, &__p, v24[4], v24[5]);
      if (v41 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v41 >= 0)
      {
        v27 = HIBYTE(v41);
      }

      else
      {
        v27 = v40;
      }

      marisa::Keyset::push_back(v42, p_p, v27, v25);
      v28 = v24[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v24[2];
          v17 = *v29 == v24;
          v24 = v29;
        }

        while (!v17);
      }

      v24 = v29;
    }

    while (v29 != v5);
  }

  marisa::Trie::build((a1 + 8), v42);
  if (*(a1 + 40) != marisa::Trie::num_keys(*(a1 + 8)))
  {
    v37 = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string<std::u16string_view,0>(&v45, "N", 0x41uLL);
    morphun::exception::IllegalArgumentException::IllegalArgumentException(v37, &v45);
  }

  v30 = *a2;
  if (*a2 != v5)
  {
    v31 = 0;
    do
    {
      npc<std::map<std::u16string_view,int>>(a3);
      v32 = *(*(*&v43[0] + ((v31 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v31 + 12);
      if (!*std::__tree<std::u16string_view>::__find_equal<std::u16string_view>(a3, &v45, v30[4], v30[5]))
      {
        operator new();
      }

      v33 = v30[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v30[2];
          v17 = *v34 == v30;
          v30 = v34;
        }

        while (!v17);
      }

      ++v31;
      v30 = v34;
    }

    while (v34 != v5);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p);
  }

  marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(v43);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(&v42[1] + 1);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v42);
  return a1;
}

void sub_1BE68B898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v25 - 89) < 0)
  {
    operator delete(*(v25 - 112));
    if ((v24 & 1) == 0)
    {
LABEL_6:
      if (a15 < 0)
      {
        operator delete(__p);
      }

      marisa::Keyset::~Keyset(&a16);
      marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

morphun::dictionary::metadata::StringContainer *morphun::dictionary::metadata::StringContainer::StringContainer(morphun::dictionary::metadata::StringContainer *this)
{
  *this = 1;
  *(this + 1) = 0;
  EncodingName = morphun::dictionary::metadata::MarisaTrie<signed char>::getEncodingName(1u);
  morphun::dictionary::metadata::CharsetConverter::CharsetConverter((this + 16), EncodingName);
  *(this + 10) = 0;
  return this;
}

void morphun::dictionary::metadata::StringContainer::~StringContainer(marisa::grimoire::trie::LoudsTrie **this)
{
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(this + 1);
}

{
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(this + 1);
}

void morphun::dictionary::metadata::StringContainer::write(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = 0;
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  v2 = *(a1 + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/trie.cc";
    exception[2] = 0x100000090;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/trie.cc:144: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  if (!*(v2 + 264))
  {
    LODWORD(v20) = 0;
    std::ostream::write();
LABEL_31:
    v17 = *MEMORY[0x1E69E9840];
    return;
  }

  v29[6] = 0;
  v3 = MEMORY[0x1E69E5570] + 64;
  v29[0] = MEMORY[0x1E69E5570] + 64;
  v4 = MEMORY[0x1E69E54E8];
  v5 = *(MEMORY[0x1E69E54E8] + 16);
  v20 = *(MEMORY[0x1E69E54E8] + 8);
  *(&v20 + *(v20 - 24)) = v5;
  v6 = (&v20 + *(v20 - 24));
  std::ios_base::init(v6, &v21);
  v7 = MEMORY[0x1E69E5570] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v20 = v7;
  v29[0] = v3;
  v8 = MEMORY[0x1E69E5538] + 16;
  v21 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1BFB49090](&v22);
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v9 = MEMORY[0x1E69E5548] + 16;
  v21 = MEMORY[0x1E69E5548] + 16;
  memset(&__p, 0, sizeof(__p));
  p_p = &__p;
  v28 = 16;
  std::string::resize(&__p, 0x16uLL, 0);
  size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0 || (size = __p.__r_.__value_.__l.__size_, (__p.__r_.__value_.__l.__size_ & 0x8000000000000000) == 0))
  {
    *(&v24 + 1) = &__p;
    *&v25 = &__p;
    *(&v25 + 1) = &__p + size;
    v11 = *(a1 + 8);
    if (!v11)
    {
      v19 = __cxa_allocate_exception(0x20uLL);
      *v19 = &unk_1F3CD9BC8;
      v19[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/trie.cc";
      v19[2] = 0x1000000D5;
      v19[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/trie.cc:213: MARISA_STATE_ERROR: trie.trie_.get() == NULL";
    }

    v31 = 0;
    v32 = -1;
    v33 = &v20;
    v34 = 0;
    marisa::grimoire::io::Writer::write_data(&v31, "We love Marisa.", 0x10uLL);
    marisa::grimoire::trie::LoudsTrie::write_(v11, &v31);
    v12 = &v20 + *(v20 - 24);
    if ((v12[32] & 5) == 0)
    {
      (*(**(v12 + 5) + 32))(&v31);
    }

    std::ostream::write();
    if ((v28 & 0x10) != 0)
    {
      v15 = p_p;
      if (p_p < v25)
      {
        p_p = v25;
        v15 = v25;
      }

      v13 = *(&v24 + 1);
    }

    else
    {
      if ((v28 & 8) == 0)
      {
        v13 = 0;
        v14 = 0;
LABEL_20:
        HIBYTE(v33) = v14;
        v16 = (&v31 + v14);
        if (&v31 > v13 || v16 <= v13)
        {
          if (v14)
          {
            memmove(&v31, v13, v14);
          }

          *v16 = 0;
          std::ostream::write();
          if (SHIBYTE(v33) < 0)
          {
            operator delete(v31);
          }

          v20 = *v4;
          *(&v20 + *(v20 - 24)) = v4[3];
          v21 = v9;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v21 = v8;
          std::locale::~locale(&v22);
          std::ostream::~ostream();
          MEMORY[0x1BFB490E0](v29);
          goto LABEL_31;
        }

        goto LABEL_35;
      }

      v13 = v23;
      v15 = v24;
    }

    v14 = v15 - v13;
    if (v15 - v13 < 0)
    {
      goto LABEL_35;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
    }

    if (v14 > 0x16)
    {
      operator new();
    }

    goto LABEL_20;
  }

LABEL_35:
  __break(1u);
}

void sub_1BE68C090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::ostringstream::~ostringstream(&a10);
  MEMORY[0x1BFB490E0](v24);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *morphun::dictionary::metadata::StringContainer::getString@<X0>(morphun::dictionary::metadata::StringContainer *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v8 = 0u;
  v6 = 0u;
  v7 = a2;
  marisa::Trie::reverse_lookup((this + 8), &v6);
  morphun::dictionary::metadata::CharsetConverter::decode((this + 16), a3, *(&v7 + 1), v8);
  return marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&v8 + 1);
}

void sub_1BE68C2B0(_Unwind_Exception *a1)
{
  marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr((v2 + 40));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::metadata::StringContainer::getIdentifierIfAvailable(uint64_t a1, const std::string::value_type *a2, std::string::size_type __requested_capacity)
{
  memset(&v13, 0, sizeof(v13));
  std::string::reserve(&v13, __requested_capacity);
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  morphun::dictionary::metadata::CharsetConverter::encode(a1 + 16, &v13, a2, __requested_capacity);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v13;
  }

  else
  {
    v6 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  marisa::Agent::set_query(v11, v6, size);
  v8 = marisa::Trie::lookup((a1 + 8), v11);
  v9 = DWORD1(v12);
  marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&v12 + 1);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v8)
  {
    return v9;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_1BE68C39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dictionary::metadata::StringContainer::getIdentifier(uint64_t a1, std::string::value_type *a2, std::string::size_type a3)
{
  result = morphun::dictionary::metadata::StringContainer::getIdentifierIfAvailable(a1, a2, a3);
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

void sub_1BE68C4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t morphun::dictionary::metadata::StringContainer::convertBitToIdentifier(unint64_t this)
{
  v1 = vaddlv_u8(vcnt_s8((this - 1)));
  if ((this ^ (this - 1)) > this - 1)
  {
    return v1;
  }

  else
  {
    return -1;
  }
}

void morphun::grammar::synthesis::NlGrammarSynthesizer_NlDisplayFunction::inflectSignificantTokens(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v6 = a4[1];
  if (*a4 == v6)
  {
    goto LABEL_49;
  }

  v8 = *(v6 - 4);
  v9 = *a3;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v8)
  {
    goto LABEL_49;
  }

  v13 = v9 + 24 * v8;
  v31 = 0;
  v14 = a1[2];
  v15 = *(v13 + 23);
  if (v15 < 0)
  {
    v16 = *v13;
    v15 = *(v13 + 8);
  }

  else
  {
    v16 = (v9 + 24 * v8);
  }

  morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v14, &v31, v16, v15);
  morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::inflect(&__p, a1 + 13, v13, v31, a2);
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v8)
  {
    std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
  }

  v17 = *a3 + 24 * v8;
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  v18 = *&__p.__r_.__value_.__l.__data_;
  *(v17 + 16) = *(&__p.__r_.__value_.__l + 2);
  *v17 = v18;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v8)
  {
LABEL_49:
    __break(1u);
    return;
  }

  v19 = *a3 + 24 * v8;
  if ((*(v19 + 23) & 0x8000000000000000) != 0)
  {
    if (*(v19 + 8))
    {
      goto LABEL_12;
    }

LABEL_15:
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    return;
  }

  if (!*(v19 + 23))
  {
    goto LABEL_15;
  }

LABEL_12:
  GrammaticalNumber = morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::getGrammaticalNumber(a1[15], a2);
  v21 = a1[6] & v31;
  if (v21 == a1[3])
  {
    v22 = 2;
  }

  else if (v21 == a1[4])
  {
    v22 = 1;
  }

  else if (v21 == a1[5])
  {
    v22 = 3;
  }

  else
  {
    v22 = 0;
  }

  if (GrammaticalNumber == 1)
  {
    if (v22 == 3)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }

    if (v22)
    {
      v23 = v24;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = GrammaticalNumber == 2;
  }

  v25 = ((a4[1] - *a4) >> 2) - 1;
  if (v25 >= 1)
  {
    for (i = 0; v25 != i; ++i)
    {
      if (i >= (a4[1] - *a4) >> 2)
      {
        goto LABEL_49;
      }

      v27 = *(*a4 + 4 * i);
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v27)
      {
        goto LABEL_49;
      }

      morphun::grammar::synthesis::NlGrammarSynthesizer_NlAdjectiveInflectionPattern::inflectWithDeclension(&__p, *a3 + 24 * v27, v23);
      v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
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
        if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v27)
        {
          std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
        }

        std::basic_string<char16_t>::operator=((*a3 + 24 * v27), &__p);
        if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        *a5 = 0;
        a5[1] = 0;
        a5[2] = 0;
        if ((v28 & 0x80) == 0)
        {
          goto LABEL_40;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
LABEL_40:
      if (!size)
      {
        return;
      }
    }
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
}

void sub_1BE68C86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void virtual thunk tomorphun::grammar::synthesis::NlGrammarSynthesizer_NlDisplayFunction::~NlGrammarSynthesizer_NlDisplayFunction(morphun::grammar::synthesis::NlGrammarSynthesizer_NlDisplayFunction *this)
{
  morphun::grammar::synthesis::NlGrammarSynthesizer_NlDisplayFunction::~NlGrammarSynthesizer_NlDisplayFunction((this + *(*this - 32)));

  JUMPOUT(0x1BFB49160);
}

{
  morphun::grammar::synthesis::NlGrammarSynthesizer_NlDisplayFunction::~NlGrammarSynthesizer_NlDisplayFunction((this + *(*this - 32)));
}

void morphun::grammar::synthesis::NlGrammarSynthesizer_NlDisplayFunction::~NlGrammarSynthesizer_NlDisplayFunction(morphun::grammar::synthesis::NlGrammarSynthesizer_NlDisplayFunction *this)
{
  *this = &unk_1F3CD52C8;
  *(this + 88) = &unk_1F3CD5320;
  *(this + 77) = &unk_1F3CD84E0;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 86));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 83));
  *(this + 67) = &unk_1F3CD8468;
  if (*(this + 615) < 0)
  {
    operator delete(*(this + 74));
  }

  if (*(this + 591) < 0)
  {
    operator delete(*(this + 71));
  }

  morphun::grammar::synthesis::NlGrammarSynthesizer_ArticleLookupFunction::~NlGrammarSynthesizer_ArticleLookupFunction((this + 336));
  morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::~NlGrammarSynthesizer_NlNounInflectionPattern((this + 104));
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

{
  morphun::grammar::synthesis::NlGrammarSynthesizer_NlDisplayFunction::~NlGrammarSynthesizer_NlDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::grammar::synthesis::NlGrammarSynthesizer_NlDisplayFunction::getDisplayValue(void *a1, uint64_t a2, uint64_t a3)
{
  memset(&v49, 0, sizeof(v49));
  v5 = *(a2 + 8);
  if (v5 == *(a2 + 16))
  {
    size = 0;
    v7 = 0;
  }

  else
  {
    v6 = (*(*v5 + 24))(v5);
    std::basic_string<char16_t>::operator=(&v49, v6);
    v7 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    size = v49.__r_.__value_.__l.__size_;
  }

  if ((v7 & 0x80u) == 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = size;
  }

  if (v9)
  {
    if (!*(a3 + 16))
    {
      goto LABEL_18;
    }

    v48 = 0;
    if ((v7 & 0x80u) == 0)
    {
      v10 = &v49;
    }

    else
    {
      v10 = v49.__r_.__value_.__r.__words[0];
    }

    morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[2], &v48, v10, v9);
    memset(&__str, 0, sizeof(__str));
    morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::inflect(&__p, a1 + 13, &v49, v48, a3);
    __str = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v12 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = __str.__r_.__value_.__l.__size_;
    }

    if (v11)
    {
      goto LABEL_15;
    }

    v15 = v48;
    Declension = morphun::grammar::synthesis::NlGrammarSynthesizer_NlAdjectiveInflectionPattern::getDeclension(a1[10], a3);
    if (Declension && (a1[12] & v15) != 0)
    {
      morphun::grammar::synthesis::NlGrammarSynthesizer_NlAdjectiveInflectionPattern::inflectWithDeclension(&v45, &v49, Declension);
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      memset(&v45, 0, sizeof(v45));
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }
    }

    operator delete(__str.__r_.__value_.__l.__data_);
LABEL_25:
    __str = v45;
    *(&v45.__r_.__value_.__s + 23) = 0;
    v45.__r_.__value_.__s.__data_[0] = 0;
    v17 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v18 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = __str.__r_.__value_.__l.__size_;
    }

    if (v17)
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_15;
    }

    v19 = v48;
    morphun::grammar::synthesis::getFeatureValue(&v54, a3, a1[37]);
    morphun::grammar::synthesis::getFeatureValue(&v55, a3, a1[36]);
    Number = morphun::grammar::synthesis::NlGrammarSynthesizer::getNumber(&v55);
    v21 = Number;
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (!v21 || (a1[39] & v19) == 0)
    {
      goto LABEL_56;
    }

    v22 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v54.__r_.__value_.__l.__size_;
    }

    if (v22)
    {
      v23 = morphun::grammar::synthesis::GrammemeConstants::POS_VERB(Number);
      v24 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v54.__r_.__value_.__l.__size_;
      }

      v25 = *(v23 + 23);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v23 + 8);
      }

      if (v24 != v25)
      {
LABEL_56:
        memset(&v44, 0, sizeof(v44));
        goto LABEL_57;
      }

      if (v24)
      {
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = *v23;
        }

        v28 = &v54;
        if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v54.__r_.__value_.__r.__words[0];
        }

        while (*v27 == v28->__r_.__value_.__s.__data_[0])
        {
          v28 = (v28 + 2);
          ++v27;
          if (!--v24)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_56;
      }
    }

LABEL_52:
    if (*(a3 + 16) != 1)
    {
      goto LABEL_84;
    }

    if (v21 == 2)
    {
      v29 = a1[41];
    }

    else
    {
      if (v21 != 1)
      {
        goto LABEL_84;
      }

      v29 = a1[40];
    }

    if ((v29 & ~v19) == 0)
    {
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v44, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
      }

      else
      {
        v44 = v49;
      }

      goto LABEL_57;
    }

LABEL_84:
    v51 = 0;
    v52 = 0;
    v53 = 0;
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v49;
    }

    else
    {
      v33 = v49.__r_.__value_.__r.__words[0];
    }

    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v34 = v49.__r_.__value_.__l.__size_;
    }

    morphun::dictionary::Inflector::getInflectionPatternsForWord(a1[35], v33, v34, &v51);
    v35 = v51;
    v36 = v52;
    if (v51 != v52)
    {
      v37 = 0;
      memset(&v44, 0, sizeof(v44));
      v38 = 7;
      if (v21 == 1)
      {
        v38 = 6;
      }

      v39 = a1[v38 + 34];
      v40 = v51;
      do
      {
        if ((a1[39] & *(v40 + 8)) != 0)
        {
          if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = &v49;
          }

          else
          {
            v41 = v49.__r_.__value_.__r.__words[0];
          }

          if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v42 = v49.__r_.__value_.__l.__size_;
          }

          memset(&v55, 0, sizeof(v55));
          morphun::dictionary::Inflector_InflectionPattern::reinflectImplementation(&__dst, v40, v19, v39, &v55, v41, v42);
          if (v37 < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }

          v44 = __dst;
          v43 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          v37 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v43 = __dst.__r_.__value_.__l.__size_;
          }

          if (v43)
          {
            goto LABEL_110;
          }
        }

        v40 += 40;
      }

      while (v40 != v36);
      if (v37 < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }
    }

    memset(&v44, 0, sizeof(v44));
LABEL_110:
    if (v35)
    {
      operator delete(v35);
    }

LABEL_57:
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    if (v18 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v44;
    *(&v44.__r_.__value_.__s + 23) = 0;
    v44.__r_.__value_.__s.__data_[0] = 0;
    v30 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v13 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = __str.__r_.__value_.__l.__size_;
    }

    if (v30)
    {
      v31 = 1;
    }

    else if (v48)
    {
      v31 = 0;
    }

    else
    {
      morphun::grammar::synthesis::NlGrammarSynthesizer_NlDisplayFunction::inflectPhrase(&v55, a1, &v49, a3);
      if (v13 < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v55;
      v32 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
      LOBYTE(v13) = *(&v55.__r_.__value_.__s + 23);
      if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v32 = __str.__r_.__value_.__l.__size_;
      }

      v31 = v32 != 0;
      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!v31)
      {
LABEL_16:
        if ((v13 & 0x80) != 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

LABEL_18:
        operator new();
      }
    }

    else if (!v31)
    {
      goto LABEL_16;
    }

LABEL_15:
    std::basic_string<char16_t>::operator=(&v49, &__str);
    LOBYTE(v13) = *(&__str.__r_.__value_.__s + 23);
    goto LABEL_16;
  }

  if ((v7 & 0x80) != 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1BE68CF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44)
{
  if (a14 < 0)
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

  if (v44 < 0)
  {
    operator delete(a28);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::grammar::synthesis::NlGrammarSynthesizer_NlDisplayFunction::inflectPhrase(std::basic_string<char16_t> *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  if (!v5 || (v7 = a2, (v8 = (*(*v5 + 24))(v5, a3)) == 0))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v9 = v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  if (v11)
  {
    v12 = *(v11 + 80);
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = v7[7] | v7[8];
  while (1)
  {
    v23 = *(&v10 + 1);
    v16 = v10;
    if (v12 == v10)
    {
      break;
    }

    if (*(v10 + 64) == 1)
    {
      v24 = 0;
      v17 = *(v10 + 39);
      if (v17 >= 0)
      {
        v18 = (v10 + 16);
      }

      else
      {
        v18 = *(v10 + 16);
      }

      if (v17 >= 0)
      {
        v19 = *(v10 + 39);
      }

      else
      {
        v19 = *(v10 + 24);
      }

      if (!morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v7[2], &v24, v18, v19) || (v24 & v15) == 0)
      {
        goto LABEL_28;
      }

      if ((v7[7] & ~v24) != 0)
      {
        if ((((v7[8] & ~v24) == 0) & v14) != 0)
        {
          goto LABEL_28;
        }

        v14 |= (v7[8] & ~v24) == 0;
      }

      else
      {
        if (v14)
        {
          goto LABEL_28;
        }

        v14 = 0;
        v13 = 1;
      }
    }

    npc<morphun::Token const>(v16);
    *(&v10 + 1) = v23;
    *&v10 = *(v16 + 80);
  }

  if (v14)
  {
    v20 = -64;
LABEL_27:
    morphun::grammar::synthesis::GrammarSynthesizerUtil::inflectSignificantWords(a1, a4, v9, v7 + *(*v7 + v20));
    return (*(*v9 + 16))(v9);
  }

  if (v13)
  {
    v7 += 9;
    v20 = -56;
    goto LABEL_27;
  }

LABEL_28:
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  return (*(*v9 + 16))(v9);
}

void morphun::dialog::language::HrCommonConceptFactory::~HrCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC5A0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC5A0);
}

void morphun::analysis::util::AttributeSource_StringAttributeReflector::reflect(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(void **__return_ptr, void))
{
  if (a4)
  {
    (**a4)(__p, a4);
  }

  else
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"null");
  }

  (*(*a1 + 24))(a1, a2, a3, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BE68D454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::basic_string<char16_t> *morphun::analysis::util::AttributeSource_StringAttributeReflector::reflect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = npc<std::basic_string<char16_t>>(*(a1 + 8));
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    v9 = *(v8 + 8);
  }

  if (v9)
  {
    v10 = npc<std::basic_string<char16_t>>(*(a1 + 8));
    std::basic_string<char16_t>::append(v10, ",", 1uLL);
  }

  if (*(a1 + 16) == 1)
  {
    __p = 0;
    v28 = 0;
    v29 = 0;
    v11 = *(a1 + 8);
    result = npc<std::basic_string<char16_t>>(v11);
    v13 = *(a2 + 8);
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      __break(1u);
      return result;
    }

    v15 = strlen((v13 & 0x7FFFFFFFFFFFFFFFLL));
    morphun::util::StringViewUtils::convert(&__p, v14, v15);
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
      v17 = HIBYTE(v29);
    }

    else
    {
      v17 = v28;
    }

    std::basic_string<char16_t>::append(v11, p_p, v17);
    std::basic_string<char16_t>::append(v11, "#", 1uLL);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p);
    }
  }

  v18 = npc<std::basic_string<char16_t>>(*(a1 + 8));
  v19 = *(a3 + 23);
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = *(a3 + 8);
  }

  v22 = std::basic_string<char16_t>::append(v18, v20, v21);
  v23 = std::basic_string<char16_t>::append(v22, "=", 1uLL);
  v24 = *(a4 + 23);
  if (v24 >= 0)
  {
    v25 = a4;
  }

  else
  {
    v25 = *a4;
  }

  if (v24 >= 0)
  {
    v26 = *(a4 + 23);
  }

  else
  {
    v26 = *(a4 + 8);
  }

  return std::basic_string<char16_t>::append(v23, v25, v26);
}

void sub_1BE68D5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::TrGrammarSynthesizer_InterrogativeArticleLookupFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 24))(a2);
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

    morphun::grammar::synthesis::TrGrammarSynthesizer_TrDisplayFunction::getVowelGroup(v4, v6, v7);
    operator new();
  }

  exception = __cxa_allocate_exception(0x38uLL);
  morphun::exception::NullPointerException::NullPointerException(exception);
}

void morphun::dialog::language::EsCommonConceptFactory_EsAndList::getBeforeLast(morphun::dialog::language::EsCommonConceptFactory_EsAndList *this, const morphun::dialog::SemanticFeatureConceptBase *a2, const morphun::dialog::SpeakableString *a3, const morphun::dialog::SemanticFeatureConceptBase *a4, const morphun::dialog::SpeakableString *a5)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = (*(*a5 + 32))(a5, a2, a3, a4);
  morphun::dialog::language::EsCommonConceptFactory_EsAndList::IMPORTANT_SET(v5);
  {
    operator new();
  }

  npc<icu4cxx::UnicodeSet const>(morphun::dialog::language::I_SOUND(void)::I_SOUND_);
  {
    {
      operator new();
    }
  }

  npc<icu4cxx::UnicodeSet const>(morphun::dialog::language::EsCommonConceptFactory_EsAndList::NON_SPANISH_VOWEL_SET(void)::NON_SPANISH_VOWEL_SET_);
  std::vector<icu4cxx::UnicodeSet const*>::__init_with_size[abi:se200100]<icu4cxx::UnicodeSet const* const*,icu4cxx::UnicodeSet const* const*>();
}

void sub_1BE68DAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1BFB49160](v15, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::language::EsCommonConceptFactory_EsAndList::IMPORTANT_SET(morphun::dialog::language::EsCommonConceptFactory_EsAndList *this)
{
  {
    operator new();
  }

  v1 = morphun::dialog::language::EsCommonConceptFactory_EsAndList::IMPORTANT_SET(void)::IMPORTANT_SET_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE68DBE0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::EsCommonConceptFactory_EsAndList::~EsCommonConceptFactory_EsAndList(morphun::dialog::language::EsCommonConceptFactory_EsAndList *this)
{
  morphun::dialog::SemanticConceptList::~SemanticConceptList(this, off_1F3CDBFB8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::SemanticConceptList::~SemanticConceptList(this, off_1F3CDBFB8);
}

void morphun::util::lemmatization::InflectionIdentifier::~InflectionIdentifier(void **this)
{
  morphun::util::lemmatization::InflectionIdentifier::~InflectionIdentifier(this);

  JUMPOUT(0x1BFB49160);
}

{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t morphun::util::lemmatization::InflectionIdentifier::InflectionIdentifier(uint64_t a1, __int128 *a2, __int128 *a3)
{
  *a1 = &unk_1F3CD9378;
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

  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v6;
  }

  return a1;
}

void sub_1BE68DE98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::language::HeCommonConceptFactory_HeAndList::getBeforeLast(morphun::dialog::language::HeCommonConceptFactory_HeAndList *this@<X0>, const morphun::dialog::SpeakableString *a2@<X4>, void *a3@<X8>)
{
  v8 = morphun::lang::StringFilterUtil::HEBREW_SCRIPT(this);
  v9 = (*(*a2 + 32))(a2);
  v10 = *(v9 + 23);
  if (v10 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = *v9;
  }

  if (v10 >= 0)
  {
    v12 = *(v9 + 23);
  }

  else
  {
    v12 = *(v9 + 8);
  }

  if (morphun::util::UnicodeSetUtils::containsSome(v8, v11, v12))
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, " ");
  }

  else
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE80F208);
  }

  morphun::dialog::SpeakableString::SpeakableString(a3, __p);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BE68DF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::language::HeCommonConceptFactory_HeAndList::~HeCommonConceptFactory_HeAndList(morphun::dialog::language::HeCommonConceptFactory_HeAndList *this)
{
  morphun::dialog::SemanticConceptList::~SemanticConceptList(this, off_1F3CDBF28);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::SemanticConceptList::~SemanticConceptList(this, off_1F3CDBF28);
}

void sub_1BE68ED24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  __cxa_free_exception(v35);
  MEMORY[0x1BFB49160](v33, v34);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::ZhCommonConceptFactory::quantifiedJoin(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, void *a4@<X8>)
{
  morphun::dialog::SpeakableString::SpeakableString(v7, a3);
  morphun::dialog::SpeakableString::operator+(a1, v7, v8);
  morphun::dialog::SpeakableString::operator+(v8, a2, a4);
}

void sub_1BE68F19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  _Unwind_Resume(a1);
}

void morphun::dialog::language::ZhCommonConceptFactory::~ZhCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC118);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC118);
}

void non-virtual thunk tomorphun::analysis::stemmer::ItStemFilter::~ItStemFilter(morphun::analysis::stemmer::ItStemFilter *this)
{
  v2 = (this - 128);
  *this = &unk_1F3CF0AE0;
  *(this - 16) = &off_1F3CF0B20;
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

  *this = &unk_1F3CF0B60;
  *(this - 16) = &off_1F3CF0B98;
  morphun::analysis::TokenFilter::~TokenFilter(v2, off_1F3CDA050);

  JUMPOUT(0x1BFB49160);
}

{
  v2 = (this - 128);
  *this = &unk_1F3CF0AE0;
  *(this - 16) = &off_1F3CF0B20;
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

  *this = &unk_1F3CF0B60;
  *(this - 16) = &off_1F3CF0B98;

  morphun::analysis::TokenFilter::~TokenFilter(v2, off_1F3CDA050);
}

void *morphun::analysis::stemmer::ItStemFilter::reset(morphun::analysis::stemmer::ItStemFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  *(this + 45) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::KeywordAttribute>(this);
  *(this + 46) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::GrammemeAttribute>(this);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::LemmaMappingAttribute>(this);
  *(this + 47) = result;
  return result;
}

uint64_t morphun::analysis::stemmer::ItStemFilter::incrementToken(morphun::analysis::stemmer::ItStemFilter *this)
{
  v85 = *MEMORY[0x1E69E9840];
  v2 = *(this + 15);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v3 = (*(*v2 + 24))(v2);
  if (!v3)
  {
    goto LABEL_150;
  }

  v4 = *(this + 45);
  if (v4)
  {
    if ((*(*v4 + 56))(v4))
    {
      goto LABEL_150;
    }
  }

  v5 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 44));
  v6 = (v5 + *(*v5 - 96));
  size = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = v6->__r_.__value_.__l.__size_;
    if (size >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_155;
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

  *(&v71.__r_.__value_.__s + 23) = size;
  v9 = (&v71 + 2 * size);
  if (&v71 <= v6 && v9 > v6)
  {
LABEL_154:
    __break(1u);
LABEL_155:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (size)
  {
    memmove(&v71, v6, 2 * size);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  v70 = 0;
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v71;
  }

  else
  {
    v11 = v71.__r_.__value_.__r.__words[0];
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v71.__r_.__value_.__l.__size_;
  }

  morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 17), &v70, v11, v12);
  v13 = v70;
  if ((*(this + 49) & v70) != 0)
  {
    if ((*(this + 48) & v70) != 0)
    {
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&__str, v71.__r_.__value_.__l.__data_, v71.__r_.__value_.__l.__size_);
      }

      else
      {
        __str = v71;
      }

      v26 = 1;
      v69 = 1;
      goto LABEL_47;
    }

    v14 = *(this + 17);
    v15 = *(this + 18);
    v16 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 44));
    v17 = *(*v16 - 96);
    v18 = v16 + v17;
    v19 = *(v16 + v17 + 23);
    if ((v19 & 0x8000000000000000) != 0)
    {
      v18 = *v18;
      v19 = *(v16 + v17 + 8);
    }

    morphun::dictionary::DictionaryMetaData::getPropertyValues(v14, v18, v19, "i", 0xAuLL, &v76);
    v20 = v77;
    v21 = v76;
    if (v76 != v77)
    {
      if ((*(this + 51) & v13) != 0)
      {
        v22 = 0;
        v23 = 8;
        v24 = 0x65006E0069006ELL;
        v25 = 0x69006D00650066;
      }

      else if ((*(this + 50) & v13) != 0)
      {
        v23 = 9;
        v24 = 0x6E0069006C0075;
        v25 = 0x6300730061006DLL;
        v22 = 101;
      }

      else
      {
        v22 = 0;
        v25 = 0;
        v24 = 0;
        v23 = 0;
      }

      while (1)
      {
        v27 = *(v21 + 23);
        if (v27 < 0)
        {
          v28 = *v21;
          v27 = *(v21 + 8);
        }

        else
        {
          v28 = v21;
        }

        KeyId = morphun::dictionary::metadata::MarisaTrie<int>::getKeyId((v15 + 256), v28, v27);
        morphun::dictionary::Inflector_MMappedDictionary::getInflectionPattern(v73, v15 + 8, KeyId);
        v75 = 1;
        if (v74)
        {
          break;
        }

        v21 += 24;
        if (v21 == v20)
        {
          goto LABEL_45;
        }
      }

      v48 = *(this + 44);
      npc<morphun::analysis::tokenattributes::CharTermAttribute>(v48);
      v49 = *(*v48 - 96);
      if (v75)
      {
        std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__dst, L"plural");
        v79 = v25;
        v80 = v24;
        v81 = v22;
        v82 = 0;
        v83 = 0;
        v84 = v23;
        memset(v72, 0, sizeof(v72));
        std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(v72, __dst, &v85, 2uLL);
      }

      goto LABEL_154;
    }

LABEL_45:
    v73[0] = &v76;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](v73);
  }

  v26 = 0;
  LOBYTE(__str.__r_.__value_.__l.__data_) = 0;
  v69 = 0;
LABEL_47:
  v30 = (*(this + 44) + *(**(this + 44) - 96));
  if (v26)
  {
    std::basic_string<char16_t>::operator=(v30, &__str);
    goto LABEL_130;
  }

  v31 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
  if ((v31 & 0x8000000000000000) != 0)
  {
    v31 = v30->__r_.__value_.__l.__size_;
  }

  if (v31 < 6)
  {
    goto LABEL_129;
  }

  v32 = 0;
  do
  {
    v33 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
    if ((v33 & 0x8000000000000000) != 0)
    {
      if (v30->__r_.__value_.__l.__size_ < v32)
      {
        goto LABEL_154;
      }

      v34 = v30->__r_.__value_.__r.__words[0];
    }

    else
    {
      v34 = v30;
      if (v32 > v33)
      {
        goto LABEL_154;
      }
    }

    v35 = v34->__r_.__value_.__s.__data_[v32];
    if (v35 > 235)
    {
      v36 = v35 - 236;
      if (v36 > 0x10)
      {
        goto LABEL_94;
      }

      v37 = 1 << v36;
      if ((v37 & 0xF) != 0)
      {
        if ((v33 & 0x80000000) != 0)
        {
          if (v30->__r_.__value_.__l.__size_ < v32)
          {
            goto LABEL_154;
          }

          v38 = 105;
          goto LABEL_92;
        }

        if (v32 > v33)
        {
          goto LABEL_154;
        }

        v38 = 105;
      }

      else
      {
        if ((v37 & 0x5C0) == 0)
        {
          if ((v37 & 0x1E000) == 0)
          {
            goto LABEL_94;
          }

          if ((v33 & 0x80000000) == 0)
          {
            if (v32 > v33)
            {
              goto LABEL_154;
            }

            v38 = 117;
            goto LABEL_81;
          }

          if (v30->__r_.__value_.__l.__size_ < v32)
          {
            goto LABEL_154;
          }

          v38 = 117;
          goto LABEL_92;
        }

        if ((v33 & 0x80000000) != 0)
        {
          if (v30->__r_.__value_.__l.__size_ < v32)
          {
            goto LABEL_154;
          }

          v38 = 111;
          goto LABEL_92;
        }

        if (v32 > v33)
        {
          goto LABEL_154;
        }

        v38 = 111;
      }

      goto LABEL_81;
    }

    if ((v35 - 232) < 4)
    {
      if ((v33 & 0x80000000) != 0)
      {
        if (v30->__r_.__value_.__l.__size_ < v32)
        {
          goto LABEL_154;
        }

        v38 = 101;
        goto LABEL_92;
      }

      if (v32 > v33)
      {
        goto LABEL_154;
      }

      v38 = 101;
LABEL_81:
      v39 = v30;
      goto LABEL_93;
    }

    if ((v35 - 224) < 3 || v35 == 228)
    {
      if ((v33 & 0x80000000) == 0)
      {
        if (v32 > v33)
        {
          goto LABEL_154;
        }

        v38 = 97;
        goto LABEL_81;
      }

      if (v30->__r_.__value_.__l.__size_ < v32)
      {
        goto LABEL_154;
      }

      v38 = 97;
LABEL_92:
      v39 = v30->__r_.__value_.__r.__words[0];
LABEL_93:
      v39->__r_.__value_.__s.__data_[v32] = v38;
    }

LABEL_94:
    ++v32;
  }

  while ((v31 & 0x7FFFFFFF) != v32);
  v40 = (v31 - 1);
  v41 = SHIBYTE(v30->__r_.__value_.__r.__words[2]);
  if ((v41 & 0x80000000) != 0)
  {
    if (v30->__r_.__value_.__l.__size_ < v40)
    {
      goto LABEL_154;
    }

    v42 = v30->__r_.__value_.__r.__words[0];
  }

  else
  {
    v42 = v30;
    if (v40 > v41)
    {
      goto LABEL_154;
    }
  }

  HIDWORD(v44) = v42->__r_.__value_.__s.__data_[v40] - 97;
  LODWORD(v44) = HIDWORD(v44);
  v43 = v44 >> 1;
  if (v43 > 3)
  {
    if (v43 != 4)
    {
      if (v43 != 7)
      {
        goto LABEL_129;
      }

      goto LABEL_108;
    }

    v31 = (v31 - 2);
    if ((v41 & 0x80000000) != 0)
    {
      if (v30->__r_.__value_.__l.__size_ < v31)
      {
        goto LABEL_154;
      }

      v51 = v30->__r_.__value_.__r.__words[0];
      v50 = *(v30->__r_.__value_.__r.__words[0] + 2 * v31);
    }

    else
    {
      if (v31 > v41)
      {
        goto LABEL_154;
      }

      v50 = v30->__r_.__value_.__s.__data_[v31];
      v51 = v30;
    }

    if (v50 == 104)
    {
      goto LABEL_129;
    }

    v52 = (v51 + 2 * v31);
  }

  else
  {
    if (v43)
    {
      if (v43 == 2)
      {
        v31 = (v31 - 2);
        if ((v41 & 0x80000000) != 0)
        {
          if (v30->__r_.__value_.__l.__size_ < v31)
          {
            goto LABEL_154;
          }

          v46 = v30->__r_.__value_.__r.__words[0];
          v45 = *(v30->__r_.__value_.__r.__words[0] + 2 * v31);
        }

        else
        {
          if (v31 > v41)
          {
            goto LABEL_154;
          }

          v45 = v30->__r_.__value_.__s.__data_[v31];
          v46 = v30;
        }

        if (v45 != 105)
        {
          v52 = (v46 + 2 * v31);
          v53 = 104;
          goto LABEL_120;
        }
      }

      goto LABEL_129;
    }

LABEL_108:
    v31 = (v31 - 2);
    if ((v41 & 0x80000000) != 0)
    {
      if (v30->__r_.__value_.__l.__size_ < v31)
      {
        goto LABEL_154;
      }

      v47 = v30->__r_.__value_.__r.__words[0];
    }

    else
    {
      v47 = v30;
      if (v31 > v41)
      {
        goto LABEL_154;
      }
    }

    v52 = (v47 + 2 * v31);
  }

  v53 = 105;
LABEL_120:
  if (v52->__r_.__value_.__s.__data_[0] != v53)
  {
    LODWORD(v31) = v40;
  }

LABEL_129:
  std::basic_string<char16_t>::resize(v30, v31, 0);
LABEL_130:
  if (*(this + 46))
  {
    v73[0] = 0;
    v54 = *(this + 44);
    v55 = *(*v54 - 96);
    v56 = v54 + v55;
    v57 = *(v54 + v55 + 23);
    if (v57 < 0)
    {
      v56 = *v56;
      v57 = *(v54 + v55 + 8);
    }

    if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 17), v73, v56, v57))
    {
      v58 = *(this + 46);
      if (!v58)
      {
        v64 = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(v64);
      }

      (*(*v58 + 64))(v58, v73[0]);
    }
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = &v71;
  }

  else
  {
    v59 = v71.__r_.__value_.__r.__words[0];
  }

  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v60 = v71.__r_.__value_.__l.__size_;
  }

  morphun::analysis::MorphologicalAnalyzer::analyze_word(&__p, this + 16, v59, v60, v70, *(this + 47), 0);
  if (v67 == 1 && v66 < 0)
  {
    operator delete(__p);
  }

  if (v69 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

LABEL_150:
  v61 = *MEMORY[0x1E69E9840];
  return v3;
}

void morphun::analysis::stemmer::ItStemFilter::~ItStemFilter(morphun::analysis::stemmer::ItStemFilter *this)
{
  *(this + 16) = &unk_1F3CF0AE0;
  *this = &off_1F3CF0B20;
  v2 = *(this + 41);
  if (v2)
  {
    *(this + 42) = v2;
    operator delete(v2);
  }

  v4 = (this + 304);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v4);
  v3 = *(this + 35);
  if (v3)
  {
    *(this + 36) = v3;
    operator delete(v3);
  }

  *(this + 16) = &unk_1F3CF0B60;
  *this = &off_1F3CF0B98;
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA050);

  JUMPOUT(0x1BFB49160);
}

{
  *(this + 16) = &unk_1F3CF0AE0;
  *this = &off_1F3CF0B20;
  v2 = *(this + 41);
  if (v2)
  {
    *(this + 42) = v2;
    operator delete(v2);
  }

  v4 = (this + 304);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v4);
  v3 = *(this + 35);
  if (v3)
  {
    *(this + 36) = v3;
    operator delete(v3);
  }

  *(this + 16) = &unk_1F3CF0B60;
  *this = &off_1F3CF0B98;

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA050);
}

void *morphun::TokenIterator::TokenIterator(void *this, const morphun::Token *a2, const morphun::Token *a3)
{
  *this = a2;
  this[1] = a3;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  return this;
}

uint64_t morphun::TokenIterator::operator++(uint64_t *a1)
{
  v2 = a1[1];
  result = npc<morphun::Token const>(*a1);
  *a1 = *(result + 80);
  return result;
}

void *morphun::TokenIterator::operator--(void *result)
{
  if (*result)
  {
    v1 = *(*result + 72);
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }
  }

  else
  {
    v1 = result[1];
  }

  *result = v1;
  return result;
}

uint64_t morphun::TokenIterator::operator--(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  morphun::TokenIterator::operator--(a1);
  return v1;
}

char **minf_toInflectableStringConcept(char **a1)
{
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "O");
    morphun::exception::ClassCastException::ClassCastException(exception, &__dst);
  }

  return a1;
}

void sub_1BE69037C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
      JUMPOUT(0x1BE69030CLL);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t npc<morphun::dialog::InflectableStringConcept>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void minf_create(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }

  exception = __cxa_allocate_exception(0x38uLL);
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"Input argument is null.");
  morphun::exception::NullPointerException::NullPointerException(exception, &__dst);
}

void sub_1BE69061C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
      JUMPOUT(0x1BE6905ACLL);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t minf_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void minf_putConstraintByName(uint64_t a1, const __CFString *a2, const __CFString *a3)
{
  npc<morphun::dialog::InflectableStringConcept>(a1);
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

void sub_1BE690814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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
    JUMPOUT(0x1BE690800);
  }

  _Unwind_Resume(exception_object);
}

void minf_clearConstraintByName(uint64_t a1, const __CFString *a2)
{
  npc<morphun::dialog::InflectableStringConcept>(a1);
  morphun::util::CFUtils::to_u16string(&__p, a2);
  (*(*a1 + 88))(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1BE690910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    JUMPOUT(0x1BE6908FCLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t minf_getFeatureValueByNameCopy(uint64_t a1, const __CFString *a2)
{
  npc<morphun::dialog::InflectableStringConcept>(a1);
  morphun::util::CFUtils::to_u16string(&__p, a2);
  v4 = (*(*a1 + 112))(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1BE690A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    JUMPOUT(0x1BE690A74);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE690D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v19, v20);
  _Unwind_Resume(a1);
}

void morphun::analysis::FrAnalyzer::~FrAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB0D8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB0D8);
}

uint64_t morphun::analysis::FrAnalyzer::loadStopwordSet(morphun::analysis::FrAnalyzer *this)
{
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"french_stop.txt");
  morphun::analysis::util::StopwordAnalyzerBase::loadSnowballStopwordSet(__p);
  v2 = v1;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"french_extra_stop.txt");
  morphun::analysis::util::StopwordAnalyzerBase::loadSnowballStopwordSet(__p);
  v4 = v3;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::set<std::basic_string<char16_t>>::insert[abi:se200100]<std::__tree_const_iterator<std::basic_string<char16_t>,std::__tree_node<std::basic_string<char16_t>,void *> *,long>>(v2, *v4, (v4 + 8));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(v4 + 8));
  MEMORY[0x1BFB49160](v4, 0x1020C4062D53EE8);
  return v2;
}

void sub_1BE690EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::HeGrammarSynthesizer_HeDisplayFunction::singleWordStemToPlural(char *__src@<X1>, unint64_t a2@<X2>, char *a3@<X8>)
{
  v3 = a3;
  v73[2] = *MEMORY[0x1E69E9840];
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a2 > 0xA)
  {
    if ((a2 | 3) == 0xB)
    {
      v6 = 13;
    }

    else
    {
      v6 = (a2 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v6);
  }

  a3[23] = a2;
  v7 = &a3[2 * a2];
  if (a3 <= __src && v7 > __src)
  {
    goto LABEL_229;
  }

  if (a2)
  {
    memmove(a3, __src, 2 * a2);
  }

  *v7 = 0;
  v8 = &morphun::grammar::synthesis::FINAL_TO_MEDIAL_SUBSTITUTION;
  v9 = &word_1BE7E9C52;
  v10 = 20;
  do
  {
    v11 = v3[23];
    if ((v11 & 0x80u) == 0)
    {
      v12 = v3;
    }

    else
    {
      v12 = *v3;
    }

    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v3 + 1);
    }

    __p.__r_.__value_.__r.__words[0] = v12;
    __p.__r_.__value_.__l.__size_ = v11;
    if (std::u16string_view::ends_with[abi:se200100](&__p, v8, 1uLL))
    {
      v13 = v3[23];
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v3 + 1);
      }

      if (!v13)
      {
        goto LABEL_229;
      }

      if (v14 >= 0)
      {
        v15 = v3;
      }

      else
      {
        v15 = *v3;
      }

      *(v15 + 2 * v13 - 2) = *v9;
    }

    v9 += 2;
    v8 += 2;
    v10 -= 4;
  }

  while (v10);
  if (a2 == 3)
  {
    v16 = 0;
    while (word_1BE80F398[v16] == *&__src[v16 * 2])
    {
      if (++v16 == 3)
      {
        if (v3[23] < 0)
        {
          *(v3 + 1) = 5;
          v3 = *v3;
        }

        else
        {
          v3[23] = 5;
        }

        *(v3 + 2) = 1501;
        v28 = &qword_1BE80F3A0;
        goto LABEL_131;
      }
    }
  }

  if (a2 != 2)
  {
    if (a2 == 4)
    {
      v18 = 0;
      while (word_1BE80F3B8[v18] == *&__src[v18 * 2])
      {
        if (++v18 == 4)
        {
          if (v3[23] < 0)
          {
            *(v3 + 1) = 4;
            v3 = *v3;
          }

          else
          {
            v3[23] = 4;
          }

          v29 = 99157472;
LABEL_128:
          v36 = v29 | 0x5DD05D900000000;
          goto LABEL_134;
        }
      }
    }

    if (a2 == 3)
    {
      v19 = 0;
      while (word_1BE80F3C2[v19] == *&__src[v19 * 2])
      {
        if (++v19 == 3)
        {
          if (v3[23] < 0)
          {
            *(v3 + 1) = 4;
            v3 = *v3;
          }

          else
          {
            v3[23] = 4;
          }

          v29 = 98567657;
          goto LABEL_128;
        }
      }
    }

    if (a2 == 4)
    {
      v20 = 0;
      while (word_1BE80F3CA[v20] == *&__src[v20 * 2])
      {
        if (++v20 == 4)
        {
          if (v3[23] < 0)
          {
            *(v3 + 1) = 5;
            v3 = *v3;
          }

          else
          {
            v3[23] = 5;
          }

          *(v3 + 2) = 1501;
          v28 = &qword_1BE80F3D4;
          goto LABEL_131;
        }
      }
    }

    v21 = a2 == 5;
    if (a2 == 5)
    {
      v22 = 0;
      while (word_1BE80F3E0[v22] == *&__src[v22 * 2])
      {
        if (++v22 == 5)
        {
          goto LABEL_209;
        }
      }
    }

    if (a2 == 4)
    {
      v24 = 0;
      while (word_1BE80F3EC[v24] == *&__src[v24 * 2])
      {
        if (++v24 == 4)
        {
          goto LABEL_209;
        }
      }

      v23 = 1;
    }

    else
    {
      v23 = 0;
    }

    if (a2 == 5)
    {
      v30 = 0;
      while (word_1BE80F3F6[v30] == *&__src[v30 * 2])
      {
        if (++v30 == 5)
        {
          goto LABEL_209;
        }
      }
    }

    if (v23)
    {
      v31 = 0;
      while (word_1BE80F402[v31] == *&__src[v31 * 2])
      {
        if (++v31 == 4)
        {
          goto LABEL_209;
        }
      }
    }

    if (a2 == 5)
    {
      v32 = 0;
      while (word_1BE80F40C[v32] == *&__src[v32 * 2])
      {
        if (++v32 == 5)
        {
          goto LABEL_209;
        }
      }
    }

    if (a2 == 6)
    {
      v33 = 0;
      while (word_1BE80F418[v33] == *&__src[v33 * 2])
      {
        if (++v33 == 6)
        {
          goto LABEL_209;
        }
      }
    }

    if (a2 == 5)
    {
      v34 = 0;
      while (word_1BE80F426[v34] == *&__src[v34 * 2])
      {
        if (++v34 == 5)
        {
          goto LABEL_209;
        }
      }

      v45 = 0;
      while (word_1BE80F432[v45] == *&__src[v45 * 2])
      {
        if (++v45 == 5)
        {
          goto LABEL_209;
        }
      }
    }

    if (v23)
    {
      v46 = 0;
      while (word_1BE80F43E[v46] == *&__src[v46 * 2])
      {
        if (++v46 == 4)
        {
          goto LABEL_209;
        }
      }

      v47 = 0;
      while (word_1BE80F448[v47] == *&__src[v47 * 2])
      {
        if (++v47 == 4)
        {
          goto LABEL_209;
        }
      }
    }

    goto LABEL_74;
  }

  v17 = *__src;
  if (v17 != 1510)
  {
    if (v17 != 1489)
    {
      v21 = 0;
      v23 = 0;
LABEL_72:
      if (v17 != 1488 || *(__src + 1) != 1489)
      {
LABEL_74:
        if (v21)
        {
          v25 = 0;
          while (word_1BE80F452[v25] == *&__src[v25 * 2])
          {
            if (++v25 == 5)
            {
              goto LABEL_209;
            }
          }
        }

        if (v23)
        {
          v26 = 0;
          while (word_1BE80F45E[v26] == *&__src[v26 * 2])
          {
            if (++v26 == 4)
            {
              goto LABEL_209;
            }
          }
        }

        if (a2 == 3)
        {
          v27 = 0;
          while (word_1BE80F468[v27] == *&__src[v27 * 2])
          {
            if (++v27 == 3)
            {
              goto LABEL_209;
            }
          }

          v35 = 0;
          while (word_1BE80F470[v35] == *&__src[v35 * 2])
          {
            if (++v35 == 3)
            {
              goto LABEL_209;
            }
          }

          v37 = 0;
          while (word_1BE80F478[v37] == *&__src[v37 * 2])
          {
            if (++v37 == 3)
            {
              goto LABEL_209;
            }
          }
        }

        if (v21)
        {
          v38 = 0;
          while (word_1BE80F480[v38] == *&__src[v38 * 2])
          {
            if (++v38 == 5)
            {
              goto LABEL_209;
            }
          }
        }

        if (v23)
        {
          v39 = 0;
          while (word_1BE80F48C[v39] == *&__src[v39 * 2])
          {
            if (++v39 == 4)
            {
              goto LABEL_209;
            }
          }
        }

        if (a2 == 3)
        {
          v40 = 0;
          while (word_1BE80F496[v40] == *&__src[v40 * 2])
          {
            if (++v40 == 3)
            {
              goto LABEL_209;
            }
          }

          v41 = 0;
          while (word_1BE80F49E[v41] == *&__src[v41 * 2])
          {
            if (++v41 == 3)
            {
              goto LABEL_209;
            }
          }
        }

        if (v23)
        {
          v42 = 0;
          while (word_1BE80F4A6[v42] == *&__src[v42 * 2])
          {
            if (++v42 == 4)
            {
              goto LABEL_209;
            }
          }
        }

        if (v21)
        {
          v43 = 0;
          while (word_1BE80F4B0[v43] == *&__src[v43 * 2])
          {
            if (++v43 == 5)
            {
              goto LABEL_209;
            }
          }
        }

        if (a2 == 3)
        {
          v44 = 0;
          while (word_1BE80F4BC[v44] == *&__src[v44 * 2])
          {
            if (++v44 == 3)
            {
              goto LABEL_209;
            }
          }

          v48 = 0;
          while (word_1BE80F4C4[v48] == *&__src[v48 * 2])
          {
            if (++v48 == 3)
            {
              goto LABEL_209;
            }
          }
        }

        if (v23)
        {
          v49 = 0;
          while (word_1BE80F4CC[v49] == *&__src[v49 * 2])
          {
            if (++v49 == 4)
            {
              goto LABEL_209;
            }
          }
        }

        if (a2 == 3)
        {
          v50 = 0;
          while (word_1BE80F4D6[v50] == *&__src[v50 * 2])
          {
            if (++v50 == 3)
            {
              goto LABEL_209;
            }
          }

          v51 = 0;
          while (word_1BE80F4DE[v51] == *&__src[v51 * 2])
          {
            if (++v51 == 3)
            {
              goto LABEL_209;
            }
          }
        }

        if (v23)
        {
          v52 = 0;
          while (word_1BE80F4E6[v52] == *&__src[v52 * 2])
          {
            if (++v52 == 4)
            {
              goto LABEL_209;
            }
          }
        }

LABEL_230:
        if (std::basic_string<char16_t>::ends_with[abi:se200100](v3, word_1BE80F4F6))
        {
          v59 = v3[23];
          if ((v59 & 0x80u) != 0)
          {
            v59 = *(v3 + 1);
          }

          std::basic_string<char16_t>::basic_string(&__p, v3, 0, v59 - 2, v58);
          std::basic_string<char16_t>::append(&__p, word_1BE80F4F0, 2uLL);
        }

        else
        {
          if (std::basic_string<char16_t>::ends_with[abi:se200100](v3, word_1BE80F4FC))
          {
            v61 = v3[23];
            if ((v61 & 0x80u) != 0)
            {
              v61 = *(v3 + 1);
            }
          }

          else
          {
            if (std::basic_string<char16_t>::ends_with[abi:se200100](v3, word_1BE80F500))
            {
              std::basic_string<char16_t>::append(v3, word_1BE80F390, 1uLL);
              goto LABEL_228;
            }

            if (std::basic_string<char16_t>::ends_with[abi:se200100](v3, word_1BE80F506))
            {
              v68 = v3[23];
              if ((v68 & 0x80u) != 0)
              {
                v68 = *(v3 + 1);
              }

              std::basic_string<char16_t>::basic_string(&__p, v3, 0, v68 - 2, v67);
              std::basic_string<char16_t>::append(&__p, word_1BE80F50C, 3uLL);
              goto LABEL_238;
            }

            if (std::basic_string<char16_t>::ends_with[abi:se200100](v3, word_1BE80F4F0))
            {
              v70 = v3[23];
              if ((v70 & 0x80u) != 0)
              {
                v70 = *(v3 + 1);
              }

              std::basic_string<char16_t>::basic_string(&__p, v3, 0, v70 - 2, v69);
              std::basic_string<char16_t>::append(&__p, word_1BE80F514, 4uLL);
              goto LABEL_238;
            }

            if (!std::basic_string<char16_t>::ends_with[abi:se200100](v3, word_1BE80F51E))
            {
              v71 = v3[23];
              if ((v71 & 0x80u) != 0)
              {
                v71 = *(v3 + 1);
              }

              if (v71)
              {
                std::basic_string<char16_t>::append(v3, word_1BE80F522, 2uLL);
              }

              goto LABEL_228;
            }

            v61 = v3[23];
            if ((v61 & 0x80u) != 0)
            {
              v61 = *(v3 + 1);
            }
          }

          std::basic_string<char16_t>::basic_string(&__p, v3, 0, v61 - 1, v60);
          std::basic_string<char16_t>::append(&__p, word_1BE80F4F0, 2uLL);
        }

LABEL_238:
        v73[0] = __p.__r_.__value_.__l.__size_;
        v62 = __p.__r_.__value_.__r.__words[0];
        *(v73 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
        v63 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        memset(&__p, 0, sizeof(__p));
        if (v3[23] < 0)
        {
          operator delete(*v3);
          v65 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v66 = v73[0];
          *v3 = v62;
          *(v3 + 1) = v66;
          *(v3 + 15) = *(v73 + 7);
          v3[23] = v63;
          if (v65 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v64 = v73[0];
          *v3 = v62;
          *(v3 + 1) = v64;
          *(v3 + 15) = *(v73 + 7);
          v3[23] = v63;
        }

        goto LABEL_228;
      }

LABEL_209:
      if (v3[23] >= 0)
      {
        v53 = v3[23];
      }

      else
      {
        v53 = *(v3 + 1);
      }

      std::basic_string<char16_t>::basic_string[abi:se200100](&__p, v53 + 2);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v3[23] >= 0)
      {
        v55 = v3;
      }

      else
      {
        v55 = *v3;
      }

      if ((v53 & 0x8000000000000000) == 0)
      {
        v56 = p_p + 2 * v53;
        if (v55 < p_p || v56 <= v55)
        {
          if (v53)
          {
            memmove(p_p, v55, 2 * v53);
          }

          if (v56 > word_1BE80F4F0 || v56 + 4 <= word_1BE80F4F0)
          {
            *v56 = 99222997;
            *(v56 + 4) = 0;
            if (v3[23] < 0)
            {
              operator delete(*v3);
            }

            *v3 = __p;
            goto LABEL_228;
          }
        }
      }

LABEL_229:
      __break(1u);
      goto LABEL_230;
    }

    if (*(__src + 1) == 1514)
    {
      if (v3[23] < 0)
      {
        *(v3 + 1) = 4;
        v3 = *v3;
      }

      else
      {
        v3[23] = 4;
      }

      v36 = 0x5EA05D505E005D1;
LABEL_134:
      *v3 = v36;
      *(v3 + 4) = 0;
      goto LABEL_228;
    }

LABEL_65:
    v21 = 0;
    v23 = 0;
    v17 = *__src;
    goto LABEL_72;
  }

  if (*(__src + 1) != 1500)
  {
    goto LABEL_65;
  }

  if (v3[23] < 0)
  {
    *(v3 + 1) = 5;
    v3 = *v3;
  }

  else
  {
    v3[23] = 5;
  }

  *(v3 + 2) = 1501;
  v28 = &qword_1BE80F3AC;
LABEL_131:
  *v3 = *v28;
LABEL_228:
  v57 = *MEMORY[0x1E69E9840];
}

void sub_1BE691B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::grammar::synthesis::HeGrammarSynthesizer_HeDisplayFunction::getDisplayValue(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  memset(&__str, 0, sizeof(__str));
  v4 = *(a2 + 8);
  if (v4 != *(a2 + 16))
  {
    v6 = (*(*v4 + 24))(v4);
    std::basic_string<char16_t>::operator=(&__str, v6);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      morphun::grammar::synthesis::getFeatureValue(&v14, a3, a1[32]);
      morphun::grammar::synthesis::getFeatureValue(&v13, a3, a1[33]);
      morphun::grammar::synthesis::getFeatureValue(&v12, a3, a1[34]);
      morphun::grammar::synthesis::getFeatureValue(&v11, a3, a1[35]);
      v8 = a1[35];
      v16.__r_.__value_.__r.__words[0] = a1[33];
      v16.__r_.__value_.__l.__size_ = v8;
      memset(&v17, 0, sizeof(v17));
      std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(&v17, &v16, &v16.__r_.__value_.__r.__words[2], 2uLL);
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1BE692B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61, uint64_t a62, uint64_t a63)
{
  MEMORY[0x1BFB49160](v70, 0x1020C405F07FB98);
  if (a61 < 0)
  {
    operator delete(__p);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  *(v71 - 208) = &a14;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100]((v71 - 208));
  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::HeGrammarSynthesizer_HeDisplayFunction::~HeGrammarSynthesizer_HeDisplayFunction(morphun::grammar::synthesis::HeGrammarSynthesizer_HeDisplayFunction *this)
{
  *this = &unk_1F3CD54F0;

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD54F0;
}

void morphun::analysis::stemmer::RussianExposableMorphology::selectLemmaInflection(morphun::analysis::stemmer::RussianExposableMorphology *this@<X0>, const morphun::dictionary::Inflector_InflectionPattern *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v5 = 440;
  if (((*(this + 50) | *(this + 34) | *(this + 43)) & a4) == (*(this + 32) | *(this + 43)))
  {
    v5 = 464;
  }

  morphun::dictionary::Inflector_InflectionPattern::selectLemmaInflection(a5, a2, a3, (this + v5));
}

void morphun::analysis::stemmer::RussianExposableMorphology::~RussianExposableMorphology(morphun::analysis::stemmer::RussianExposableMorphology *this)
{
  morphun::analysis::stemmer::RussianExposableMorphology::~RussianExposableMorphology(this);

  JUMPOUT(0x1BFB49160);
}

{
  icu4cxx::UnicodeSet::~UnicodeSet((this + 512));
  v2 = *(this + 61);
  if (v2)
  {
    *(this + 62) = v2;
    operator delete(v2);
  }

  v3 = *(this + 58);
  if (v3)
  {
    *(this + 59) = v3;
    operator delete(v3);
  }

  v4 = *(this + 55);
  if (v4)
  {
    *(this + 56) = v4;
    operator delete(v4);
  }

  std::__tree<std::u16string_view>::destroy(*(this + 53));

  morphun::dialog::DictionaryLookupInflector::~DictionaryLookupInflector(this, off_1F3CD9E08);
}

void std::__allocate_at_least[abi:se200100]<std::allocator<std::tuple<std::u16string_view,long long,long long>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

void morphun::analysis::stemmer::RussianExposableMorphology::RussianExposableMorphology(morphun::analysis::stemmer::RussianExposableMorphology *this)
{
  v17 = *MEMORY[0x1E69E9840];
  *this = &unk_1F3CD9158;
  v1 = morphun::util::LocaleUtils::RUSSIAN(this);
  v2 = morphun::grammar::synthesis::GrammemeConstants::POS_PROPER_NOUN(v1);
  v3 = *(v2 + 23);
  if ((v3 & 0x80u) == 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if ((v3 & 0x80u) != 0)
  {
    v3 = *(v2 + 8);
  }

  v16[0] = v4;
  v16[1] = v3;
  v5 = morphun::grammar::synthesis::GrammemeConstants::POS_NOUN(v2);
  v6 = *(v5 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v5 + 8);
  }

  v16[2] = v7;
  v16[3] = v6;
  v8 = morphun::grammar::synthesis::GrammemeConstants::POS_ADJECTIVE(v5);
  v9 = *(v8 + 23);
  if ((v9 & 0x80u) == 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = *v8;
  }

  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v8 + 8);
  }

  v16[4] = v10;
  v16[5] = v9;
  v11 = morphun::grammar::synthesis::GrammemeConstants::POS_VERB(v8);
  v12 = *(v11 + 23);
  if ((v12 & 0x80u) == 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = *v11;
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v11 + 8);
  }

  v16[6] = v13;
  v16[7] = v12;
  v14 = 0uLL;
  *&v15 = 0;
  std::vector<std::u16string_view>::__init_with_size[abi:se200100]<std::u16string_view const*,std::u16string_view const*>(&v14, v16, &v17, 4uLL);
}

void sub_1BE694930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  MEMORY[0x1BFB49160](v56, 0x1012C40EC159624);
  if (&a19 != v55)
  {
    v58 = v55;
    do
    {
      v60 = *(v58 - 3);
      v58 -= 24;
      v59 = v60;
      if (v60)
      {
        *(v55 - 2) = v59;
        operator delete(v59);
      }

      v55 = v58;
    }

    while (v58 != &a19);
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::analysis::stemmer::RussianExposableMorphology::getInstance(morphun::analysis::stemmer::RussianExposableMorphology *this)
{
  {
    operator new();
  }

  return morphun::analysis::stemmer::RussianExposableMorphology::getInstance(void)::INSTANCE_;
}

void sub_1BE694D0C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x10F3C40AE814DA3);
  _Unwind_Resume(a1);
}

uint64_t morphun::analysis::stemmer::RussianExposableMorphology::isInflectable(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  if (a3 < 3)
  {
    return 0;
  }

  v6 = *(a1 + 512);
  result = uset_containsAllCodePoints();
  if (result)
  {
    return a1 + 424 == std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(a1 + 416, a2, a3);
  }

  return result;
}

void std::allocator_traits<std::allocator<morphun::analysis::tokenattributes::LemmaMapping>>::construct[abi:se200100]<morphun::analysis::tokenattributes::LemmaMapping,morphun::analysis::tokenattributes::LemmaMapping const&,void,0>(uint64_t a1, uint64_t a2, CFIndex a3, const CFArrayCallBacks *a4)
{
  if (a1)
  {
    *a1 = &off_1F3CD2DC8;
    *(a1 + 8) = *(a2 + 8);
    if (*(a2 + 47) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v4 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v4;
    }
  }

  else
  {
    __break(1u);
    CFArrayCreate(0, a2, a3, a4);
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}