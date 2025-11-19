void sub_1BE61836C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a27 < 0)
  {
    operator delete(a22);
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

  if (*(v66 - 177) < 0)
  {
    operator delete(*(v66 - 200));
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<morphun::util::ULocale const,morphun::util::ULocale>::pair[abi:se200100]<true,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = morphun::util::ULocale::ULocale(a1, a2);
  morphun::util::ULocale::ULocale(v5 + 128, a3);
  return a1;
}

void std::__tree<std::__value_type<morphun::util::ULocale,morphun::util::ULocale>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::util::ULocale>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::util::ULocale>>>::destroy(void **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<morphun::util::ULocale,morphun::util::ULocale>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::util::ULocale>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::util::ULocale>>>::destroy(*a1);
    std::__tree<std::__value_type<morphun::util::ULocale,morphun::util::ULocale>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::util::ULocale>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::util::ULocale>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void morphun::dictionary::logEmptyDictionaryWarning(void (***this)(std::basic_string<char16_t> *__return_ptr), const morphun::util::ULocale *a2, const morphun::exception::IOException *a3)
{
  if (morphun::util::gLogLevel <= 3)
  {
    (**this)(&v10);
    std::basic_string<char16_t>::insert(&v10, L"The dictionary for ", 0x13, v4);
    v11 = v10;
    memset(&v10, 0, sizeof(v10));
    std::basic_string<char16_t>::append(&v11, L" could not be created. An empty dictionary will be used instead: ", 0x41uLL);
    v12 = v11;
    memset(&v11, 0, sizeof(v11));
    v5 = (*(*a2 + 24))(a2);
    v6 = *(v5 + 23);
    if (v6 >= 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = *v5;
    }

    if (v6 >= 0)
    {
      v8 = *(v5 + 23);
    }

    else
    {
      v8 = *(v5 + 8);
    }

    std::basic_string<char16_t>::append(&v12, v7, v8);
    v13 = v12;
    memset(&v12, 0, sizeof(v12));
    if (morphun::util::gLogLevel <= 3)
    {
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v13;
      }

      else
      {
        v9 = v13.__r_.__value_.__r.__words[0];
      }

      morphun::util::logToTopOfStackLogger(3, 0, v9);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1BE6186C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

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

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<morphun::util::ULocale,morphun::util::ULocale>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<morphun::util::ULocale,morphun::util::ULocale>,void *>>>>::~unique_ptr[abi:se200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

void morphun::dictionary::DictionaryMetaData::getPropertyNames(morphun::dictionary::DictionaryMetaData *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(this + 1));

  morphun::dictionary::DictionaryMetaData_MMappedDictionary::getTypesOfValues(v5, a2, a3);
}

void morphun::dictionary::DictionaryMetaData::getPropertyName(morphun::dictionary::DictionaryMetaData *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(this + 1));
  morphun::dictionary::DictionaryMetaData_MMappedDictionary::getTypeOfValue(v5, a2, v11);
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  v6 = v13;
  v7 = __p;
  if (v13)
  {
    v7 = v11;
  }

  *a3 = *v7;
  *(a3 + 16) = v7[2];
  v7[1] = 0;
  v7[2] = 0;
  *v7 = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
    if (!v6)
    {
      return;
    }
  }

  else if (!v6)
  {
    return;
  }

  if (v12 < 0)
  {
    v8 = v11[0];

    operator delete(v8);
  }
}

BOOL morphun::dictionary::DictionaryMetaData::hasProperty(uint64_t a1, const std::string::value_type *a2, uint64_t a3, unsigned __int16 *a4, unint64_t a5)
{
  v10 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(a1 + 8));
  IdentifierIfAvailable = morphun::dictionary::metadata::StringArrayContainer::getIdentifierIfAvailable(v10 + 144, a4, a5);
  if (IdentifierIfAvailable < 0)
  {
    return 0;
  }

  v12 = 1 << IdentifierIfAvailable;
  v15 = 0;
  if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1, &v15, a2, a3))
  {
    v13 = (v15 & v12) == 0;
  }

  else
  {
    v13 = 1;
  }

  return !v13;
}

BOOL morphun::dictionary::DictionaryMetaData::hasAllProperties(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1, &v8, a2, a3);
  return (a4 & ~v8) == 0 && CombinedBinaryType != 0;
}

BOOL morphun::dictionary::DictionaryMetaData::hasAnyProperty(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1, &v8, a2, a3);
  return (v8 & a4) != 0 && CombinedBinaryType != 0;
}

void morphun::dictionary::DictionaryMetaData::getProperties(uint64_t a1@<X0>, const std::string::value_type *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = 0;
  if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1, &v8, a2, a3))
  {
    v6 = v8;
    v7 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(a1 + 8));
    morphun::dictionary::DictionaryMetaData_MMappedDictionary::getTypesOfValues(v7, v6, a4);
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

uint64_t morphun::dictionary::DictionaryMetaData::getPropertyValues@<X0>(uint64_t a1@<X0>, const std::string::value_type *a2@<X1>, unint64_t a3@<X2>, unsigned __int16 *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  return morphun::dictionary::DictionaryMetaData::getPropertyValues(a1, a6, a2, a3, a4, a5);
}

void sub_1BE618ACC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](va);
  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::DictionaryMetaData::getPropertyValues(uint64_t a1, void ***a2, const std::string::value_type *a3, unint64_t a4, unsigned __int16 *a5, unint64_t a6)
{
  if (a2)
  {
    std::vector<std::basic_string<char16_t>>::clear[abi:se200100](a2);
    v13 = *(a1 + 8);
    v12 = (a1 + 8);
    v14 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(v13);
    v15 = a2;
  }

  else
  {
    v12 = (a1 + 8);
    v14 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(a1 + 8));
    v15 = 0;
  }

  if (morphun::dictionary::DictionaryMetaData_MMappedDictionary::getWordPropertyValues(v14, v15, a3, a4, a5, a6))
  {
    return 1;
  }

  if (morphun::util::StringViewUtils::isAllLowerCase(a3, a4))
  {
    return 0;
  }

  v17 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*v12);
  morphun::dictionary::DictionaryMetaData_MMappedDictionary::getWordType(v17, a3, a4);
  if (v18)
  {
    return 0;
  }

  __p = 0;
  v27 = 0;
  v28 = 0;
  v20 = *v12;
  npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*v12);
  morphun::util::StringViewUtils::lowercase(&__p, a3, a4, v20 + 16);
  v21 = HIBYTE(v28);
  if (v28 < 0)
  {
    v21 = v27;
  }

  if (a4 == v21)
  {
    if (!v21)
    {
LABEL_18:
      WordPropertyValues = 0;
      if ((v28 & 0x8000000000000000) == 0)
      {
        return WordPropertyValues;
      }

LABEL_27:
      operator delete(__p);
      return WordPropertyValues;
    }

    p_p = __p;
    if (v28 >= 0)
    {
      p_p = &__p;
    }

    while (*p_p == *a3)
    {
      a3 += 2;
      ++p_p;
      if (!--v21)
      {
        goto LABEL_18;
      }
    }
  }

  v23 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*v12);
  if (v28 >= 0)
  {
    v24 = &__p;
  }

  else
  {
    v24 = __p;
  }

  if (v28 >= 0)
  {
    v25 = HIBYTE(v28);
  }

  else
  {
    v25 = v27;
  }

  WordPropertyValues = morphun::dictionary::DictionaryMetaData_MMappedDictionary::getWordPropertyValues(v23, a2, v24, v25, a5, a6);
  if (v28 < 0)
  {
    goto LABEL_27;
  }

  return WordPropertyValues;
}

void sub_1BE618C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dictionary::DictionaryMetaData::getKnownWords(morphun::dictionary::DictionaryMetaData *this@<X0>, void *a2@<X8>)
{
  v3 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(this + 1));

  morphun::dictionary::DictionaryMetaData_MMappedDictionary::getAllWords(v3, a2);
}

uint64_t morphun::dictionary::DictionaryMetaData::getKnownWordsSize(morphun::dictionary::DictionaryMetaData *this)
{
  v1 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(this + 1));

  return morphun::dictionary::DictionaryMetaData_MMappedDictionary::getAllWordsSize(v1);
}

void morphun::exception::RuntimeException::~RuntimeException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

double morphun::exception::RuntimeException::RuntimeException(morphun::exception::RuntimeException *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0B50;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0B50;
  return result;
}

void *morphun::exception::RuntimeException::RuntimeException(uint64_t a1, __int128 *a2)
{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0B50;
  return result;
}

{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0B50;
  return result;
}

void morphun::dialog::language::NlCommonConceptFactory::~NlCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC3F8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC3F8);
}

uint64_t morphun::grammar::synthesis::NlGrammarSynthesizer::DECLENSION(morphun::grammar::synthesis::NlGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::NlGrammarSynthesizer::DECLENSION(void)::DECLENSION_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE618F88(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::NlGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::NlGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "d");
  operator new();
}

void sub_1BE61A3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern *a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  __cxa_free_exception(v24);
  morphun::grammar::synthesis::NlGrammarSynthesizer_NlNounInflectionPattern::~NlGrammarSynthesizer_NlNounInflectionPattern(a9);
  v26 = *(v23 + 8);
  *(v23 + 8) = 0;
  if (v26)
  {
    (*(*v26 + 16))(v26);
  }

  MEMORY[0x1BFB49160](v23, 0x10F3C40E726B4B0);
  _Unwind_Resume(a1);
}

BOOL morphun::grammar::synthesis::NlGrammarSynthesizer::isVowelAtIndex(uint64_t a1, unint64_t a2, int a3)
{
  {
    goto LABEL_20;
  }

  while (1)
  {
    v6 = npc<std::u16string_view>(morphun::grammar::synthesis::AEIOU_SET(void)::AEIOU_SET_);
    if (a2 > a3)
    {
      v7 = v6[1];
      v8 = *(a1 + 2 * a3);
      if (v7)
      {
        v9 = &(*v6)[v7];
        v10 = 2 * v7;
        v11 = *v6;
        while (*v11 != v8)
        {
          ++v11;
          v10 -= 2;
          if (!v10)
          {
            goto LABEL_14;
          }
        }

        v12 = v11 == v9 ? 0 : v11;
        if (v11 != v9 && v12 - *v6 != -2)
        {
          return 1;
        }
      }

LABEL_14:
      result = 0;
      v14 = (a3 - 1);
      if (a3 < 1 || v8 != 106)
      {
        return result;
      }

      if (a2 > v14)
      {
        return *(a1 + 2 * v14) == 105;
      }
    }

    __break(1u);
LABEL_20:
    {
      operator new();
    }
  }
}

uint64_t npc<std::u16string_view>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::NlGrammarSynthesizer::guessDiminutive(std::basic_string<char16_t> *a1, const std::basic_string<char16_t>::value_type *a2, unint64_t a3)
{
  v5 = a3;
  v30 = a2;
  v31 = a3;
  result = std::u16string_view::ends_with[abi:se200100](&v30, L"jes", 3uLL);
  if (result)
  {
    if (!v5)
    {
      goto LABEL_78;
    }

    v31 = --v5;
  }

  if (v5 < 3)
  {
    return result;
  }

  result = std::u16string_view::ends_with[abi:se200100](&v30, word_1BE80E34E, 2uLL);
  if (!result)
  {
    return result;
  }

  if (v5 == 3)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v4 = (v5 - 3);
  if (v5 <= v4)
  {
    goto LABEL_78;
  }

  v10 = a2[v4];
  if (v10 == 112)
  {
    v11 = (v5 - 4);
    if (v5 <= v11)
    {
      goto LABEL_78;
    }

    if (a2[v11] == 109)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (v5 < 5 || v10 != 107)
  {
    if (v10 != 116)
    {
LABEL_8:
      if (v5 <= v4)
      {
        goto LABEL_78;
      }

      v3 = a2[v4];
      result = npc<std::basic_string<char16_t>>(a1);
      if (v3 == 39)
      {
        goto LABEL_19;
      }

      if (!a2)
      {
        goto LABEL_78;
      }

      if (v5 >= (v5 - 2))
      {
        v9 = (v5 - 2);
      }

      else
      {
        v9 = v5;
      }

      goto LABEL_24;
    }

    v3 = (v5 - 4);
    if (v5 <= v3)
    {
      goto LABEL_78;
    }

    v16 = a2[v3];
    if (v16 == 39)
    {
      result = npc<std::basic_string<char16_t>>(a1);
      if (v5 != 4 && !a2)
      {
        goto LABEL_78;
      }

      goto LABEL_45;
    }

    if (v5 >= 8 && v16 == 101)
    {
      result = morphun::grammar::synthesis::BLNMRP_SET(result);
      v18 = (v5 - 5);
      if (v5 <= v18)
      {
        goto LABEL_78;
      }

      v19 = a2[v18];
      if (v17)
      {
        v20 = 2 * v17;
        v21 = result;
        v22 = (result + 2 * v17);
        while (*v21 != v19)
        {
          ++v21;
          v20 -= 2;
          if (!v20)
          {
            goto LABEL_62;
          }
        }

        v23 = v21 == v22 ? 0 : v21;
        if (v21 != v22 && (v23 - result) != -2)
        {
          v24 = (v5 - 6);
          goto LABEL_65;
        }
      }

LABEL_62:
      if (v19 == 103)
      {
        v24 = (v5 - 6);
        if (v5 <= v24)
        {
          goto LABEL_78;
        }

        if (a2[v24] == 110)
        {
LABEL_65:
          if (v5 <= v24)
          {
            goto LABEL_78;
          }

          if (a2[v24] == v19 && morphun::grammar::synthesis::NlGrammarSynthesizer::isVowelAtIndex(a2, v5, v5 - 7))
          {
            result = npc<std::basic_string<char16_t>>(a1);
            if (!a2)
            {
              goto LABEL_78;
            }

            if (v5 >= v18)
            {
              v9 = (v5 - 5);
            }

            else
            {
              v9 = v5;
            }

            goto LABEL_24;
          }

          goto LABEL_76;
        }
      }
    }

    result = morphun::grammar::synthesis::NlGrammarSynthesizer::isVowelAtIndex(a2, v5, v5 - 4);
    if (!result)
    {
      goto LABEL_79;
    }

    if (v5 < 5)
    {
      goto LABEL_18;
    }

    if (v5 <= v5 - 5)
    {
LABEL_78:
      while (1)
      {
        __break(1u);
LABEL_79:
        result = morphun::grammar::synthesis::LRN_SET(result);
        if (!v25)
        {
          return result;
        }

        v26 = 2 * v25;
        v27 = result;
        v28 = (result + 2 * v25);
        while (*v27 != a2[v3])
        {
          ++v27;
          v26 -= 2;
          if (!v26)
          {
            return result;
          }
        }

        v29 = v27 == v28 ? 0 : v27;
        if (v27 == v28 || (v29 - result) == -2)
        {
          return result;
        }

LABEL_18:
        result = npc<std::basic_string<char16_t>>(a1);
LABEL_19:
        if (!v4 || a2)
        {
          if (v5 >= v4)
          {
            v9 = v4;
          }

          else
          {
            v9 = v5;
          }

          goto LABEL_24;
        }
      }
    }

    if (a2[v3] != a2[v5 - 5])
    {
      goto LABEL_18;
    }

LABEL_76:
    result = npc<std::basic_string<char16_t>>(a1);
    if (!a2)
    {
      goto LABEL_78;
    }

LABEL_45:
    if (v5 >= v3)
    {
      v9 = (v5 - 4);
    }

    else
    {
      v9 = v5;
    }

LABEL_24:

    return std::basic_string<char16_t>::__assign_external(a1, a2, v9);
  }

  v12 = (v5 - 4);
  if (v5 <= v12)
  {
    goto LABEL_78;
  }

  if (a2[v12] != 110)
  {
    goto LABEL_8;
  }

  v13 = (v5 - 5);
  if (v5 <= v13)
  {
    goto LABEL_78;
  }

  if (a2[v13] != 105)
  {
    goto LABEL_8;
  }

  result = npc<std::basic_string<char16_t>>(a1);
  if (!a2)
  {
    goto LABEL_78;
  }

  if (v5 >= v4)
  {
    v14 = (v5 - 3);
  }

  else
  {
    v14 = v5;
  }

  v15 = std::basic_string<char16_t>::__assign_external(a1, a2, v14);

  return std::basic_string<char16_t>::append(v15, L"g", 1uLL);
}

uint64_t morphun::grammar::synthesis::BLNMRP_SET(morphun::grammar::synthesis *this)
{
  {
    operator new();
  }

  v1 = npc<std::u16string_view>(morphun::grammar::synthesis::BLNMRP_SET(void)::BLNMRP_SET_);
  v2 = v1[1];
  return *v1;
}

uint64_t morphun::grammar::synthesis::LRN_SET(morphun::grammar::synthesis *this)
{
  {
    operator new();
  }

  v1 = npc<std::u16string_view>(morphun::grammar::synthesis::LRN_SET(void)::LRN_SET_);
  v2 = v1[1];
  return *v1;
}

uint64_t morphun::grammar::synthesis::NlGrammarSynthesizer::getNumber(unsigned __int16 *a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (!v1)
  {
    return 0;
  }

  v3 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(a1);
  v4 = *(a1 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 1);
  }

  v6 = *(v3 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v3 + 8);
  }

  if (v4 == v6)
  {
    if (!v4)
    {
      return 1;
    }

    if (v7 >= 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = *v3;
    }

    if (v5 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    while (*v8 == *v9)
    {
      ++v9;
      ++v8;
      if (!--v4)
      {
        return 1;
      }
    }
  }

  v11 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v3);
  v12 = *(a1 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a1 + 1);
  }

  v14 = *(v11 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v11 + 8);
  }

  if (v12 == v14)
  {
    if (!v12)
    {
      return 2;
    }

    if (v15 >= 0)
    {
      v16 = v11;
    }

    else
    {
      v16 = *v11;
    }

    if (v13 >= 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = *a1;
    }

    while (*v16 == *v17)
    {
      ++v17;
      ++v16;
      if (!--v12)
      {
        return 2;
      }
    }
  }

  return 0;
}

uint64_t morphun::grammar::synthesis::NlGrammarSynthesizer::getDeclension(unsigned __int16 *a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (v1)
  {
    {
      operator new();
    }

    v3 = npc<std::basic_string<char16_t>>(morphun::grammar::synthesis::NlGrammarSynthesizer::DECLENSION_DECLINED(void)::DECLENSION_DECLINED_);
    v4 = *(a1 + 23);
    v5 = v4;
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a1 + 1);
    }

    v6 = *(v3 + 23);
    v7 = v6;
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(v3 + 8);
    }

    if (v4 == v6)
    {
      if (!v4)
      {
        return 1;
      }

      if (v7 >= 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = *v3;
      }

      if (v5 >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      while (*v8 == *v9)
      {
        ++v9;
        ++v8;
        if (!--v4)
        {
          return 1;
        }
      }
    }

    {
      operator new();
    }

    v11 = npc<std::basic_string<char16_t>>(morphun::grammar::synthesis::NlGrammarSynthesizer::DECLENSION_UNDECLINED(void)::DECLENSION_UNDECLINED_);
    v12 = *(a1 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a1 + 1);
    }

    v14 = *(v11 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v11 + 8);
    }

    if (v12 == v14)
    {
      if (!v12)
      {
        return 2;
      }

      if (v15 >= 0)
      {
        v16 = v11;
      }

      else
      {
        v16 = *v11;
      }

      if (v13 >= 0)
      {
        v17 = a1;
      }

      else
      {
        v17 = *a1;
      }

      while (*v16 == *v17)
      {
        ++v17;
        ++v16;
        if (!--v12)
        {
          return 2;
        }
      }
    }
  }

  return 0;
}

void sub_1BE61B26C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::HuCommonConceptFactory::~HuCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CEFAB8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CEFAB8);
}

void sub_1BE61B39C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  MEMORY[0x1BFB49160](v10, 0x10B3C40D982F6B4);
  if (a2 == 1)
  {
    v13 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v13, v9, v14);
    __cxa_end_catch();
    JUMPOUT(0x1BE61B384);
  }

  _Unwind_Resume(a1);
}

morphun::dialog::SemanticFeatureModel *msfmod_destroy(morphun::dialog::SemanticFeatureModel *result)
{
  if (result)
  {
    morphun::dialog::SemanticFeatureModel::~SemanticFeatureModel(result);

    JUMPOUT(0x1BFB49160);
  }

  return result;
}

void morphun::analysis::core::StopFilter::~StopFilter(morphun::analysis::core::StopFilter *this)
{
  *this = &off_1F3CE1E80;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA788);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CE1E80;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA788);
}

void morphun::analysis::util::FilteringTokenFilter::~FilteringTokenFilter(morphun::analysis::util::FilteringTokenFilter *this)
{
  *this = &off_1F3CE1E80;
  v2 = *(this + 18);
  if (v2)
  {
    *(this + 19) = v2;
    operator delete(v2);
  }

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA788);
}

CFStringRef mnum_toStringCopy(uint64_t a1)
{
  v1 = npc<morphun::dialog::NumberConcept const>(a1);
  (**v1)(__p);
  if ((v7 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = __p[1];
  }

  v4 = CFStringCreateWithCharacters(0, v2, v3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1BE61B640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    JUMPOUT(0x1BE61B628);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<morphun::dialog::NumberConcept const>(uint64_t result)
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

CFStringRef mnum_asWordsCopy(uint64_t a1)
{
  v1 = npc<morphun::dialog::NumberConcept const>(a1);
  (*(*v1 + 176))(__p);
  if ((v7 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = __p[1];
  }

  v4 = CFStringCreateWithCharacters(0, v2, v3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1BE61B798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    JUMPOUT(0x1BE61B780);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef mnum_asWordsVariantCopy(uint64_t a1, const __CFString *a2)
{
  npc<morphun::dialog::NumberConcept const>(a1);
  morphun::util::CFUtils::to_u16string(&v8, a2);
  (*(*a1 + 184))(__p, a1, &v8);
  if ((v10 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = CFStringCreateWithCharacters(0, v4, v5);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1BE61B8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a2 == 1)
  {
    v23 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v23, v20, v24);
    __cxa_end_catch();
    JUMPOUT(0x1BE61B8A0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE61B9B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v3, v2, v4);
    __cxa_end_catch();
    JUMPOUT(0x1BE61B9A0);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE61BAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    JUMPOUT(0x1BE61BAACLL);
  }

  _Unwind_Resume(a1);
}

void sub_1BE61BBC8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v3, v2, v4);
    __cxa_end_catch();
    JUMPOUT(0x1BE61BBB4);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef mnum_asOrdinalDigitsCopy(uint64_t a1)
{
  v1 = npc<morphun::dialog::NumberConcept const>(a1);
  (*(*v1 + 216))(__p);
  if ((v7 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v3 = v7;
  }

  else
  {
    v3 = __p[1];
  }

  v4 = CFStringCreateWithCharacters(0, v2, v3);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_1BE61BCC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    JUMPOUT(0x1BE61BCACLL);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef mnum_asOrginalDigitsVariantCopy(uint64_t a1, const __CFString *a2)
{
  npc<morphun::dialog::NumberConcept const>(a1);
  morphun::util::CFUtils::to_u16string(&v8, a2);
  (*(*a1 + 224))(__p, a1, &v8);
  if ((v10 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v5 = v10;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = CFStringCreateWithCharacters(0, v4, v5);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1BE61BDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a2 == 1)
  {
    v23 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v23, v20, v24);
    __cxa_end_catch();
    JUMPOUT(0x1BE61BDCCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE61BF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  MEMORY[0x1BFB49160](v26, 0x1093C409236E2FBLL);
  if (a2 == 1)
  {
    v29 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v29, v25, v30);
    __cxa_end_catch();
    JUMPOUT(0x1BE61BEF4);
  }

  _Unwind_Resume(a1);
}

void sub_1BE61C064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  MEMORY[0x1BFB49160](v26, 0x1093C409236E2FBLL);
  if (a2 == 1)
  {
    v29 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v29, v25, v30);
    __cxa_end_catch();
    JUMPOUT(0x1BE61C044);
  }

  _Unwind_Resume(a1);
}

void sub_1BE61C160(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v3, v2, v4);
    __cxa_end_catch();
    JUMPOUT(0x1BE61C14CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mnum_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void morphun::dialog::language::SkCommonConceptFactory::~SkCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC2B0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC2B0);
}

void morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction::determine(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
        goto LABEL_67;
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

      v32 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, L"zione");
      if ((v32 & 1) == 0)
      {
        v32 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, L"sione");
        if ((v32 & 1) == 0)
        {
          v32 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, L"gione");
          if ((v32 & 1) == 0)
          {
            v32 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, word_1BE80C426);
            if ((v32 & 1) == 0)
            {
              v32 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, word_1BE80A9EE);
              if ((v32 & 1) == 0)
              {
                v32 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, word_1BE80A054);
                if ((v32 & 1) == 0)
                {
                  v32 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, L"trice");
                  if ((v32 & 1) == 0)
                  {
                    v32 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, L"tudine");
                    if ((v32 & 1) == 0)
                    {
                      v34 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, "a");
                      if (v34 & 1) != 0 || (v34 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, L"ema"), (v34) || (v34 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, L"ore"), (v34) || (v34 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, word_1BE80A08C), (v34) || (v34 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, word_1BE80A090), (v34) || (v34 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, word_1BE80A094), (v34) || (v34 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, word_1BE80B180), (v34) || (v34 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, word_1BE80C3EA), v34))
                      {
                        v33 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v34);
                        goto LABEL_64;
                      }

                      v32 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, "a");
                      if ((v32 & 1) == 0)
                      {
                        v32 = std::basic_string<char16_t>::ends_with[abi:se200100](&v40, byte_1BE80ECC4);
                        if (!v32)
                        {
                          goto LABEL_65;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v33 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v32);
LABEL_64:
      std::basic_string<char16_t>::operator=(a3, v33);
LABEL_65:
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

LABEL_67:
      (*(*v13 + 16))(v13);
    }
  }
}

void sub_1BE61C7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  (*(*v19 + 16))(v19);
  if ((*(v18 + 23) & 0x80) != 0)
  {
    operator delete(*v18);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction::~ItGrammarSynthesizer_GenderLookupFunction(morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction *this)
{
  morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction::~ItGrammarSynthesizer_GenderLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD4CE0;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  *this = &off_1F3CE7188;
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

void morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction::ItGrammarSynthesizer_GenderLookupFunction(morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction *this)
{
  __p[3] = *MEMORY[0x1E69E9840];
  *this = &off_1F3CE71E8;
  v1 = morphun::util::LocaleUtils::ITALIAN(this);
  v2 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v1);
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

  v4 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v2);
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

void sub_1BE61CBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
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

  morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction(v25, off_1F3CDBBE8);
  _Unwind_Resume(a1);
}

char *morphun::grammar::synthesis::EsGrammarSynthesizer_ArticleLookupFunction::getDerivedSemanticName(morphun::grammar::synthesis::EsGrammarSynthesizer_ArticleLookupFunction *this)
{
  result = (*(**(this + 89) + 32))(*(this + 89));
  if (result[23] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t morphun::grammar::synthesis::EsGrammarSynthesizer_ArticleLookupFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 712))
  {
    v4 = (*(*a2 + 32))(a2);
    if (v4)
    {
      v5 = *(*a1 + 32);

      return v5(a1, a2, v4);
    }
  }

  v7 = (*(*a2 + 24))(a2);
  v8 = (*(*a2 + 32))(a2, *(a1 + 720));
  Count = morphun::grammar::synthesis::EsGrammarSynthesizer::getCount(v8);
  v10 = (*(*a2 + 32))(a2, *(a1 + 728));
  Gender = morphun::grammar::synthesis::EsGrammarSynthesizer::getGender(v10);
  if (!Count && (morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction::determine(a1 + 24, v7, &__p), Count = morphun::grammar::synthesis::EsGrammarSynthesizer::getCount(&__p), SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0))
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (Gender)
    {
      goto LABEL_12;
    }
  }

  else if (Gender)
  {
    goto LABEL_12;
  }

  morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction::determine(a1 + 264, v7, &__p);
  Gender = morphun::grammar::synthesis::EsGrammarSynthesizer::getGender(&__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_12:
  if (Count == 1)
  {
    if (Gender != 2)
    {
LABEL_69:
      if ((Gender - 1) <= 1)
      {
        v30 = *(a1 + 760);
        if (v30 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_107;
        }

        v31 = *(a1 + 752);
        if (v30 > 0xA)
        {
          if ((v30 | 3) == 0xB)
          {
            v37 = 13;
          }

          else
          {
            v37 = (v30 | 3) + 1;
          }

          std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v37);
        }

        *(&__p.__r_.__value_.__s + 23) = *(a1 + 760);
        v35 = (&__p + 2 * v30);
        if (&__p > v31 || v35 <= v31)
        {
          if (v30)
          {
            memmove(&__p, v31, 2 * v30);
          }

          goto LABEL_102;
        }

        goto LABEL_106;
      }

      goto LABEL_73;
    }

    if (*(a1 + 816) != 1)
    {
LABEL_66:
      v28 = *(a1 + 776);
      if (v28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_107;
      }

      v29 = *(a1 + 768);
      if (v28 > 0xA)
      {
        if ((v28 | 3) == 0xB)
        {
          v36 = 13;
        }

        else
        {
          v36 = (v28 | 3) + 1;
        }

        std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v36);
      }

      *(&__p.__r_.__value_.__s + 23) = *(a1 + 776);
      v35 = (&__p + 2 * v28);
      if (&__p > v29 || v35 <= v29)
      {
        if (v28)
        {
          memmove(&__p, v29, 2 * v28);
        }

LABEL_102:
        v35->__r_.__value_.__s.__data_[0] = 0;
        v21 = (*(*a1 + 32))(a1, a2, &__p);
        goto LABEL_103;
      }

      goto LABEL_106;
    }

    morphun::dialog::DictionaryLookupFunction::getFirstWord(&v39, *(a1 + 664), v7);
    morphun::dialog::DictionaryLookupFunction::determine(a1 + 504, &v39, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__size_ != 8)
      {
        v26 = 1;
        goto LABEL_62;
      }
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 8)
      {
        v26 = 1;
        goto LABEL_63;
      }

      p_p = &__p;
    }

    v23 = 0;
    do
    {
      v24 = p_p->__r_.__value_.__s.__data_[v23];
      v25 = aStressed[v23];
      v26 = v25 != v24;
    }

    while (v25 == v24 && v23++ != 7);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_63:
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      if (v26)
      {
        goto LABEL_66;
      }

      goto LABEL_69;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
LABEL_62:
    operator delete(p_p);
    goto LABEL_63;
  }

  if (Count == 2 && Gender == 1)
  {
    v17 = *(a1 + 792);
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_107;
    }

    v18 = *(a1 + 784);
    if (v17 > 0xA)
    {
      if ((v17 | 3) == 0xB)
      {
        v19 = 13;
      }

      else
      {
        v19 = (v17 | 3) + 1;
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v19);
    }

    *(&__p.__r_.__value_.__s + 23) = *(a1 + 792);
    v20 = (&__p + 2 * v17);
    if (&__p <= v18 && v20 > v18)
    {
      goto LABEL_106;
    }

    if (v17)
    {
      memmove(&__p, v18, 2 * v17);
    }
  }

  else
  {
    if (Count != 2 || Gender != 2)
    {
LABEL_73:
      v32 = *(a1 + 744);
      if (v32 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_107;
      }

      v33 = *(a1 + 736);
      if (v32 > 0xA)
      {
        if ((v32 | 3) == 0xB)
        {
          v34 = 13;
        }

        else
        {
          v34 = (v32 | 3) + 1;
        }

        std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v34);
      }

      *(&__p.__r_.__value_.__s + 23) = *(a1 + 744);
      v35 = (&__p + 2 * v32);
      if (&__p > v33 || v35 <= v33)
      {
        if (v32)
        {
          memmove(&__p, v33, 2 * v32);
        }

        goto LABEL_102;
      }

LABEL_106:
      __break(1u);
LABEL_107:
      std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
    }

    v15 = *(a1 + 808);
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_107;
    }

    v16 = *(a1 + 800);
    if (v15 > 0xA)
    {
      if ((v15 | 3) == 0xB)
      {
        v22 = 13;
      }

      else
      {
        v22 = (v15 | 3) + 1;
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v22);
    }

    *(&__p.__r_.__value_.__s + 23) = *(a1 + 808);
    v20 = (&__p + 2 * v15);
    if (&__p <= v16 && v20 > v16)
    {
      goto LABEL_106;
    }

    if (v15)
    {
      memmove(&__p, v16, 2 * v15);
    }
  }

  v20->__r_.__value_.__s.__data_[0] = 0;
  v21 = (*(*a1 + 32))(a1, a2, &__p);
LABEL_103:
  v38 = v21;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v38;
}

void sub_1BE61D2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::EsGrammarSynthesizer_ArticleLookupFunction::~EsGrammarSynthesizer_ArticleLookupFunction(morphun::grammar::synthesis::EsGrammarSynthesizer_ArticleLookupFunction *this)
{
  *this = &off_1F3CD49D8;
  *(this + 63) = &unk_1F3CD8738;
  v2 = *(this + 85);
  if (v2)
  {
    *(this + 86) = v2;
    operator delete(v2);
  }

  v3 = *(this + 83);
  *(this + 83) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 64) = &unk_1F3CD2000;
  morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction::~EsGrammarSynthesizer_CountGenderLookupFunction((this + 264));
  morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction::~EsGrammarSynthesizer_CountGenderLookupFunction((this + 24));

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CD49D8;
  *(this + 63) = &unk_1F3CD8738;
  v2 = *(this + 85);
  if (v2)
  {
    *(this + 86) = v2;
    operator delete(v2);
  }

  v3 = *(this + 83);
  *(this + 83) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 64) = &unk_1F3CD2000;
  morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction::~EsGrammarSynthesizer_CountGenderLookupFunction((this + 264));
  morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction::~EsGrammarSynthesizer_CountGenderLookupFunction((this + 24));
}

void morphun::grammar::synthesis::EsGrammarSynthesizer_ArticleLookupFunction::EsGrammarSynthesizer_ArticleLookupFunction(morphun::dialog::DefaultArticleLookupFunction *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  __p[3] = *MEMORY[0x1E69E9840];
  *a1 = &off_1F3CE6C90;
  v14 = morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(a1, off_1F3CDBA38, a2, a3 != 0, 1);
  *a1 = &off_1F3CD49D8;
  v15 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v14);
  if (*(v15 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&__dst, *v15, *(v15 + 8));
  }

  else
  {
    v16 = *v15;
    __dst.__r_.__value_.__r.__words[2] = *(v15 + 16);
    *&__dst.__r_.__value_.__l.__data_ = v16;
  }

  v17 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v15);
  if (*(v17 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v20, *v17, *(v17 + 8));
  }

  else
  {
    v18 = *v17;
    v20.__r_.__value_.__r.__words[2] = *(v17 + 16);
    *&v20.__r_.__value_.__l.__data_ = v18;
  }

  memset(__p, 0, 24);
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(__p, &__dst, &v21, 2uLL);
}

void sub_1BE61D980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction((v31 + 504));
  morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction::~EsGrammarSynthesizer_CountGenderLookupFunction((v31 + 264));
  morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction::~EsGrammarSynthesizer_CountGenderLookupFunction(v30);
  _Unwind_Resume(a1);
}

void sub_1BE61DA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a14);
  v23 = &a23;
  v24 = -48;
  v25 = &a23;
  while (1)
  {
    v26 = *v25;
    v25 -= 24;
    if (v26 < 0)
    {
      operator delete(*(v23 - 23));
    }

    v23 = v25;
    v24 += 24;
    if (!v24)
    {
      JUMPOUT(0x1BE61D9F0);
    }
  }
}

void sub_1BE61DA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a14);
  v23 = &a23;
  v24 = -48;
  v25 = &a23;
  while (1)
  {
    v26 = *v25;
    v25 -= 24;
    if (v26 < 0)
    {
      operator delete(*(v23 - 23));
    }

    v23 = v25;
    v24 += 24;
    if (!v24)
    {
      JUMPOUT(0x1BE61D9F8);
    }
  }
}

uint64_t *morphun::dialog::PronounConcept::toSpeakableString(morphun::dialog::PronounConcept *this, const morphun::dialog::SemanticFeatureConceptBase *a2)
{
  FirstPossibleValue = morphun::dialog::PronounConcept::getFirstPossibleValue(this, a2, 1, 1);
  v4 = FirstPossibleValue;
  if (!FirstPossibleValue)
  {
    return v4;
  }

  if (*(FirstPossibleValue + 23) < 0)
  {
    v6 = FirstPossibleValue[1];
    if (v6)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *FirstPossibleValue, v6);
      goto LABEL_7;
    }

    return 0;
  }

  if (!*(FirstPossibleValue + 23))
  {
    return 0;
  }

  v5 = *FirstPossibleValue;
  __p.__r_.__value_.__r.__words[2] = FirstPossibleValue[2];
  *&__p.__r_.__value_.__l.__data_ = v5;
LABEL_7:
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v8 = (*(*this + 120))(this);
    npc<morphun::dialog::SemanticFeature const>(v8);
    if (v4 + 4 != std::__tree<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature const*,std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature const*>((v4 + 3), v8))
    {
      operator new();
    }

    operator new();
  }

  v4 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1BE61DC1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x1BFB49160](v14, 0x10B3C40F7FF9C27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *morphun::dialog::PronounConcept::getFirstPossibleValue(morphun::dialog::PronounConcept *this, const morphun::dialog::SemanticFeatureConceptBase *a2, int a3, int a4)
{
  v6 = this;
  if (!a2 && morphun::dialog::PronounConcept::isMatchingInitialPronoun(this))
  {
    v7 = *(v6 + 5);
    v8 = *(v6 + 20);

    return morphun::dialog::PronounConcept::PronounData::getPronounEntry(v7, v8);
  }

  v10 = *(v6 + 5);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10[3] - v10[2]) >> 4);
  if (a4)
  {
    v11 -= 0x5555555555555555 * ((*(*v10 + 8) - **v10) >> 4);
  }

  v75 = a3;
  if (v11 < 1)
  {
    v76 = 0;
    PronounEntry = 0;
LABEL_121:
    if (!PronounEntry && v75)
    {
      PronounEntry = morphun::dialog::PronounConcept::PronounData::getPronounEntry(*(v6 + 5), 0);
    }

    goto LABEL_124;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v76 = 0;
  v77 = v6;
  v82 = *(v6 + 18);
  v15 = (v6 + 24);
  v16 = (v6 + 64);
  v78 = v11;
  v79 = v6 + 64;
  v80 = v6 + 24;
  while (1)
  {
    v83 = v14;
    v84 = v13;
    v85 = v12;
    PronounEntry = morphun::dialog::PronounConcept::PronounData::getPronounEntry(*(v6 + 5), v14);
    v18 = *(v6 + 2);
    if (v18 == v15)
    {
      v13 = 0;
      if (!a2)
      {
        goto LABEL_103;
      }

LABEL_28:
      v27 = PronounEntry[3];
      v28 = PronounEntry + 4;
      if (v27 == PronounEntry + 4)
      {
        goto LABEL_103;
      }

      while (1)
      {
        v29 = (*(*v27[4] + 32))(v27[4]);
        v30 = *(v29 + 23);
        v31 = v30 < 0;
        if (v30 >= 0)
        {
          v32 = v29;
        }

        else
        {
          v32 = *v29;
        }

        if (v31)
        {
          v33 = *(v29 + 8);
        }

        else
        {
          v33 = *(v29 + 23);
        }

        if (v33)
        {
          v34 = (v27 + 5);
          v35 = 2 * v33;
          v36 = v32;
          v37 = &v32[v33];
          while (*v36 != 61)
          {
            ++v36;
            v35 -= 2;
            if (!v35)
            {
              goto LABEL_95;
            }
          }

          v38 = v36 == v37 ? 0 : v36;
          if (v36 != v37)
          {
            v39 = v38 - v32;
            if (v38 - v32 != -2)
            {
              v40 = (*(*v27[4] + 32))(v27[4]);
              v41 = v39 >> 1;
              v42 = *(v40 + 23);
              if (v42 >= 0)
              {
                v43 = *(v40 + 23);
              }

              else
              {
                v43 = *(v40 + 8);
              }

              if (v43 <= v41)
              {
                std::__throw_out_of_range[abi:se200100]("string_view::substr");
              }

              v44 = v41 + 1;
              v45 = *v40;
              if (v42 >= 0)
              {
                v45 = v40;
              }

              v46 = (v45 + 2 * v44);
              v47 = v43 - v44;
              if (v43 - v44 == 5)
              {
                v48 = 0;
                while (word_1BE80A1BE[v48] == *(v46 + v48 * 2))
                {
                  if (++v48 == 5)
                  {
                    v49 = v76;
                    if (!v76)
                    {
                      v49 = (*(*(a2 + *(*a2 - 56)) + 24))(a2 + *(*a2 - 56));
                      if (!v49)
                      {
                        v76 = 0;
                        v16 = v79;
                        v15 = v80;
                        v28 = PronounEntry + 4;
                        goto LABEL_95;
                      }
                    }

                    v76 = v49;
                    v50 = (*(*v49 + 32))(v49);
                    v51 = *(v27 + 63);
                    if (v51 < 0)
                    {
                      v34 = v27[5];
                      v51 = v27[6];
                    }

                    v16 = v79;
                    v15 = v80;
                    v28 = PronounEntry + 4;
                    if (morphun::dialog::PronounConcept::isMatchingSoundProperty(v6, v50, v34, v51))
                    {
                      goto LABEL_95;
                    }

                    goto LABEL_26;
                  }
                }
              }

              v52 = *(v27 + 63);
              if (v52 < 0)
              {
                v34 = v27[5];
                v52 = v27[6];
              }

              if (v47 >= 0x7FFFFFFFFFFFFFF8)
              {
                std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
              }

              if (v47 > 0xA)
              {
                if ((v47 | 3) == 0xB)
                {
                  v53 = 13;
                }

                else
                {
                  v53 = (v47 | 3) + 1;
                }

                std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v53);
              }

              v87 = v43 - v44;
              result = &__p;
              v54 = (&__p + 2 * v47);
              if (&__p <= v46 && v54 > v46)
              {
                __break(1u);
                return result;
              }

              if (v43 != v44)
              {
                memmove(&__p, v46, 2 * v47);
              }

              *v54 = 0;
              v55 = (*(*a2 + 112))(a2, &__p);
              v56 = v55;
              v6 = v77;
              v28 = PronounEntry + 4;
              if (v87 < 0)
              {
                operator delete(__p);
                if (!v56)
                {
LABEL_92:
                  v16 = v79;
                  v15 = v80;
                  if (!v52)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_95;
                }
              }

              else if (!v55)
              {
                goto LABEL_92;
              }

              v57 = (*(*v56 + 32))(v56);
              v58 = *(v57 + 23);
              v59 = v58;
              if ((v58 & 0x80u) != 0)
              {
                v58 = *(v57 + 8);
              }

              if (v52 != v58)
              {
                (*(*v56 + 16))(v56);
                v13 = v84;
                v25 = v82;
                PronounEntry = v85;
                v26 = v78;
                v16 = v79;
                v15 = v80;
                goto LABEL_117;
              }

              if (v52)
              {
                if (v59 >= 0)
                {
                  v60 = v57;
                }

                else
                {
                  v60 = *v57;
                }

                v61 = v52 - 1;
                do
                {
                  v63 = *v34++;
                  v62 = v63;
                  v64 = *v60++;
                  v65 = v64;
                  v67 = v61-- != 0;
                  v68 = v65 == v62;
                }

                while (v65 == v62 && v67);
                (*(*v56 + 16))(v56);
                v16 = v79;
                v15 = v80;
                if (!v68)
                {
                  goto LABEL_26;
                }
              }

              else
              {
                (*(*v56 + 16))(v56);
                v16 = v79;
                v15 = v80;
              }
            }
          }
        }

LABEL_95:
        v69 = v27[1];
        if (v69)
        {
          do
          {
            v70 = v69;
            v69 = *v69;
          }

          while (v69);
        }

        else
        {
          do
          {
            v70 = v27[2];
            v23 = *v70 == v27;
            v27 = v70;
          }

          while (!v23);
        }

        v27 = v70;
        if (v70 == v28)
        {
          goto LABEL_103;
        }
      }
    }

    v13 = 0;
    LOBYTE(v19) = 1;
    do
    {
      MatchState = morphun::dialog::PronounConcept::getMatchState((PronounEntry + 3), (v18 + 16), v18 + 52);
      if (MatchState == 1)
      {
        ++v13;
      }

      if (!MatchState)
      {
        goto LABEL_26;
      }

      v21 = *(v18 + 1);
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
          v22 = *(v18 + 2);
          v23 = *v22 == v18;
          v18 = v22;
        }

        while (!v23);
      }

      v19 = (MatchState != 0) & v19;
      v18 = v22;
    }

    while (v22 != v15);
    if (a2)
    {
      v24 = v19;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      goto LABEL_28;
    }

    if (!v19)
    {
LABEL_26:
      v13 = v84;
      v25 = v82;
      PronounEntry = v85;
      v26 = v78;
      goto LABEL_117;
    }

LABEL_103:
    v25 = *(v6 + 18);
    v71 = *(v6 + 7);
    if (v71 != v16)
    {
      do
      {
        v72 = morphun::dialog::PronounConcept::getMatchState((PronounEntry + 3), (v71 + 16), v71 + 52) != 0;
        v73 = *(v71 + 1);
        if (v73)
        {
          do
          {
            v74 = v73;
            v73 = *v73;
          }

          while (v73);
        }

        else
        {
          do
          {
            v74 = *(v71 + 2);
            v23 = *v74 == v71;
            v71 = v74;
          }

          while (!v23);
        }

        v25 -= v72;
        v71 = v74;
      }

      while (v74 != v16);
    }

    v26 = v78;
    if (v85 && v13 >= v84 && (v13 != v84 || v25 >= v82))
    {
      v13 = v84;
      v25 = v82;
      PronounEntry = v85;
      goto LABEL_117;
    }

    if (!(v13 | v25))
    {
      break;
    }

LABEL_117:
    v14 = v83 + 1;
    v12 = PronounEntry;
    v82 = v25;
    if (v83 + 1 == v26)
    {
      goto LABEL_121;
    }
  }

LABEL_124:
  if (v76)
  {
    (*(*v76 + 16))(v76);
  }

  return PronounEntry;
}

void sub_1BE61E360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a10)
  {
    (*(*a10 + 16))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature const*,std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature const*>(uint64_t a1, uint64_t a2)
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
    v6 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((*(v3 + 32) + 16), (a2 + 16));
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((a2 + 16), (*(v5 + 32) + 16)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t morphun::dialog::PronounConcept::isMatchingInitialPronoun(morphun::dialog::PronounConcept *this)
{
  v1 = *(this + 20);
  if (v1 < 0)
  {
    return 0;
  }

  if (!*(this + 4))
  {
    return 1;
  }

  PronounEntry = morphun::dialog::PronounConcept::PronounData::getPronounEntry(*(this + 5), v1);
  v4 = *(this + 2);
  v5 = this + 24;
  if (v4 == v5)
  {
    return 1;
  }

  v6 = PronounEntry;
  v7 = PronounEntry + 4;
  while (1)
  {
    v8 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature const*,std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature const*>((v6 + 3), (v4 + 32));
    if (v7 == v8)
    {
      return 0;
    }

    v9 = *(v8 + 63);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v8 + 48);
    }

    v11 = v4[127];
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v4 + 14);
    }

    if (v9 != v11)
    {
      return 0;
    }

    if (v9)
    {
      if (v12 >= 0)
      {
        v13 = (v4 + 104);
      }

      else
      {
        v13 = *(v4 + 13);
      }

      if (v10 >= 0)
      {
        v14 = (v8 + 40);
      }

      else
      {
        v14 = *(v8 + 40);
      }

      while (*v13 == *v14)
      {
        ++v14;
        ++v13;
        if (!--v9)
        {
          goto LABEL_20;
        }
      }

      return 0;
    }

LABEL_20:
    v15 = *(v4 + 1);
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
        v16 = *(v4 + 2);
        v17 = *v16 == v4;
        v4 = v16;
      }

      while (!v17);
    }

    result = 1;
    v4 = v16;
    if (v16 == v5)
    {
      return result;
    }
  }
}

uint64_t *morphun::dialog::PronounConcept::PronounData::getPronounEntry(uint64_t **this, int a2)
{
  v2 = this[2];
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this[3] - v2) >> 4);
  if (v3 > a2)
  {
    if (v3 > a2)
    {
      return &v2[6 * a2];
    }

LABEL_7:
    std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
  }

  v5 = a2 - v3;
  v6 = **this;
  if (0xAAAAAAAAAAAAAAABLL * (((*this)[1] - v6) >> 4) <= v5)
  {
    goto LABEL_7;
  }

  return (v6 + 48 * v5);
}

uint64_t morphun::dialog::PronounConcept::getMatchState(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v5 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature const*,std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature const*>(a1, a2);
  if (a1 + 8 == v5)
  {
    return 0;
  }

  v6 = *(v5 + 63);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v5 + 48);
  }

  v8 = *(a3 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 1);
  }

  if (v6 == v8)
  {
    if (!v6)
    {
      return 2;
    }

    if (v9 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if (v7 >= 0)
    {
      v11 = (v5 + 40);
    }

    else
    {
      v11 = *(v5 + 40);
    }

    v12 = v6;
    while (*v10 == *v11)
    {
      ++v11;
      ++v10;
      if (!--v12)
      {
        return 2;
      }
    }
  }

  return v6 == 0;
}

BOOL morphun::dialog::PronounConcept::isMatchingSoundProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 15)
  {
LABEL_6:
    if (a4 == 11)
    {
      v8 = 0;
      while (morphun::dialog::VOWEL_START[v8] == *(a3 + v8 * 2))
      {
        if (++v8 == 11)
        {
          goto LABEL_10;
        }
      }
    }

    v16 = (*(*a1 + 40))(a1);
    v17 = npc<morphun::dialog::SemanticFeatureModel const>(v16);
    morphun::dictionary::PhraseProperties::isEndsWithVowel((v17 + 104), a2);
  }

  for (i = 0; i != 15; ++i)
  {
    if (morphun::dialog::CONSONANT_START[i] != *(a3 + i * 2))
    {
      goto LABEL_6;
    }
  }

LABEL_10:
  v9 = (*(*a1 + 40))(a1);
  v10 = npc<morphun::dialog::SemanticFeatureModel const>(v9);
  if (morphun::dictionary::PhraseProperties::isStartsWithVowel((v10 + 104), a2))
  {
    if (a4 == 15)
    {
      v11 = 0;
      do
      {
        v12 = *(a3 + v11 * 2);
        v13 = morphun::dialog::CONSONANT_START[v11];
        result = v13 != v12;
      }

      while (v13 == v12 && v11++ != 14);
      return result;
    }

    return 1;
  }

  if (a4 != 11)
  {
    return 1;
  }

  v18 = 0;
  do
  {
    v19 = *(a3 + v18 * 2);
    v20 = morphun::dialog::VOWEL_START[v18];
    result = v20 != v19;
  }

  while (v20 == v19 && v18++ != 10);
  return result;
}

morphun::dialog::PronounConcept *morphun::dialog::PronounConcept::PronounConcept(morphun::dialog::PronounConcept *this, const morphun::dialog::PronounConcept *a2)
{
  *this = &off_1F3CED338;
  v4 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(this, off_1F3CDCCB8, a2);
  *v4 = &unk_1F3CD8F00;
  v5 = *(a2 + 6);
  *(v4 + 5) = *(a2 + 5);
  *(v4 + 6) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](this + 7, a2 + 56);
  *(this + 20) = *(a2 + 20);
  return this;
}

void sub_1BE61EA94(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v3);
  }

  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v1, off_1F3CDCCB8);
  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::PronounConcept::getFeatureValue(morphun::dialog::PronounConcept *this, const morphun::dialog::SemanticFeature *a2)
{
  FirstPossibleValue = morphun::dialog::PronounConcept::getFirstPossibleValue(this, 0, 1, 1);
  if (FirstPossibleValue)
  {
    if ((*(FirstPossibleValue + 23) & 0x8000000000000000) != 0)
    {
      if (!FirstPossibleValue[1])
      {
        return 0;
      }
    }

    else if (!*(FirstPossibleValue + 23))
    {
      return 0;
    }

    if (FirstPossibleValue + 4 != std::__tree<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature const*,std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature const*>((FirstPossibleValue + 3), a2))
    {
      operator new();
    }
  }

  return 0;
}

uint64_t *morphun::dialog::PronounConcept::isExists(morphun::dialog::PronounConcept *this)
{
  result = morphun::dialog::PronounConcept::getFirstPossibleValue(this, 0, 0, 1);
  if (result)
  {
    v2 = *(result + 23);
    if (v2 < 0)
    {
      v2 = result[1];
    }

    return (v2 != 0);
  }

  return result;
}

uint64_t *morphun::dialog::PronounConcept::toSpeakableString(morphun::dialog::PronounConcept *this)
{
  FirstPossibleValue = morphun::dialog::PronounConcept::getFirstPossibleValue(this, 0, 1, 1);
  v3 = FirstPossibleValue;
  if (!FirstPossibleValue)
  {
    return v3;
  }

  if (*(FirstPossibleValue + 23) < 0)
  {
    v5 = FirstPossibleValue[1];
    if (v5)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *FirstPossibleValue, v5);
      goto LABEL_7;
    }

    return 0;
  }

  if (!*(FirstPossibleValue + 23))
  {
    return 0;
  }

  v4 = *FirstPossibleValue;
  __p.__r_.__value_.__r.__words[2] = FirstPossibleValue[2];
  *&__p.__r_.__value_.__l.__data_ = v4;
LABEL_7:
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v7 = (*(*this + 120))(this);
    npc<morphun::dialog::SemanticFeature const>(v7);
    if (v3 + 4 != std::__tree<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature const*,std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature const*>((v3 + 3), v7))
    {
      operator new();
    }

    operator new();
  }

  v3 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_1BE61ED04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x1BFB49160](v14, 0x10B3C40F7FF9C27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::PronounConcept::~PronounConcept(void ***this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dialog::PronounConcept::~PronounConcept(void ***this, uint64_t a2)
{
  v4 = *a2;
  *this = *a2;
  *(*(v4 - 9) + this) = *(a2 + 40);
  *(*(*this - 7) + this) = *(a2 + 48);
  *(*(*this - 5) + this) = *(a2 + 56);
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(this[8]);
  v5 = this[6];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v5);
  }

  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(this, (a2 + 8));
}

_BYTE *morphun::dialog::PronounConcept::toString@<X0>(morphun::dialog::PronounConcept *this@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*(*this + 24))(this);
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

void morphun::dialog::PronounConcept::createPronounDataForModel(uint64_t a1, _WORD *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*a2)
    {
      v2 = 0;
        ;
      }
    }

    operator new();
  }

  __break(1u);
}

void sub_1BE61F9F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v57 - 153) < 0)
  {
    operator delete(*(v57 - 176));
  }

  std::__tree<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::__map_value_compare<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::less<morphun::grammar::synthesis::FiGrammarSynthesizer::Count>,true>,std::allocator<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>>>::destroy(*(v57 - 144));
  std::__shared_weak_count::__release_shared[abi:se200100](v56);
  _Unwind_Resume(a1);
}

void *std::vector<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:se200100]<std::allocator<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>>(a2);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  return result;
}

uint64_t std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>::pair[abi:se200100]<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>&,0>(uint64_t a1, __int128 *a2, void *a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 32) = 0;
  v5 = (a1 + 32);
  *(a1 + 24) = a1 + 32;
  v6 = (a1 + 24);
  *(a1 + 40) = 0;
  v7 = a3 + 1;
  v8 = *a3;
  if (*a3 != a3 + 1)
  {
    do
    {
      v9 = *v5;
      v10 = v5;
      if (*v6 == v5)
      {
        goto LABEL_9;
      }

      v11 = *v5;
      v12 = v5;
      if (v9)
      {
        do
        {
          v10 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        do
        {
          v10 = v12[2];
          v13 = *v10 == v12;
          v12 = v10;
        }

        while (v13);
      }

      v14 = v8[4];
      if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v10[4] + 16), (v14 + 16)) & 0x80) != 0)
      {
LABEL_9:
        if (!v9)
        {
          v19 = v5;
LABEL_14:
          operator new();
        }

        v19 = v10;
        v15 = v10 + 1;
      }

      else
      {
        v15 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature const*,std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>>>::__find_equal<morphun::dialog::SemanticFeature const*>(v6, &v19, v14);
      }

      if (!*v15)
      {
        goto LABEL_14;
      }

      v16 = v8[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v8[2];
          v13 = *v17 == v8;
          v8 = v17;
        }

        while (!v13);
      }

      v8 = v17;
    }

    while (v17 != v7);
  }

  return a1;
}

void sub_1BE61FE18(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,void *>>>::operator()[abi:se200100](0, v2);
  std::__tree<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::__map_value_compare<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::less<morphun::grammar::synthesis::FiGrammarSynthesizer::Count>,true>,std::allocator<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>>>::destroy(*(v1 + 32));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:se200100]<std::allocator<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

void std::__uninitialized_allocator_relocate[abi:se200100]<std::allocator<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>,std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a4 + v6;
      if (!(a4 + v6))
      {
        __break(1u);
        return;
      }

      v8 = (a2 + v6);
      v9 = *(a2 + v6);
      *(v7 + 16) = *(a2 + v6 + 16);
      *v7 = v9;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = 0;
      v10 = a4 + v6;
      *(v10 + 24) = *(a2 + v6 + 24);
      v11 = (a2 + v6 + 32);
      v12 = *v11;
      *(a4 + v6 + 32) = *v11;
      v13 = a4 + v6 + 32;
      v14 = *(a2 + v6 + 40);
      *(v10 + 40) = v14;
      if (v14)
      {
        *(v12 + 16) = v13;
        v8[3] = v11;
        *v11 = 0;
        *(a2 + v6 + 40) = 0;
      }

      else
      {
        *(v10 + 24) = v13;
      }

      v6 += 48;
    }

    while (a2 + v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>,void,0>(v5);
      v5 += 48;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 48;
    std::allocator_traits<std::allocator<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>,void,0>(v3 - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>,void,0>(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::__map_value_compare<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>,std::less<morphun::grammar::synthesis::FiGrammarSynthesizer::Count>,true>,std::allocator<std::__value_type<morphun::grammar::synthesis::FiGrammarSynthesizer::Count,std::basic_string<char16_t>>>>::destroy(*(a1 + 32));
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

void *std::__tree<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature const*,std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>>>::__find_equal<morphun::dialog::SemanticFeature const*>(uint64_t a1, void *a2, uint64_t a3)
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
        v8 = v4[4];
        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((a3 + 16), (v8 + 16)) & 0x80) == 0)
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

      if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v8 + 16), (a3 + 16)) & 0x80) == 0)
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

LABEL_9:
  *a2 = v7;
  return v5;
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>,void *>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t> const,morphun::dialog::SemanticFeature const>,void,0>(uint64_t a1)
{
  if (a1)
  {
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

void std::__shared_ptr_emplace<morphun::dialog::PronounConcept::DefaultPronounData>::__on_zero_shared(uint64_t a1)
{
  v1 = (a1 + 24);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>>>::destroy(*(a1 + 56));
  v2 = v1;
  std::vector<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>::__destroy_vector::operator()[abi:se200100](&v2);
}

void std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>>>::destroy(*a1);
    std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::dialog::SemanticFeature const>,void *>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t> const,morphun::dialog::SemanticFeature const>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::vector<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>::__destroy_vector::operator()[abi:se200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>,void,0>(i))
    {
      i -= 48;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<morphun::dialog::PronounConcept::DefaultPronounData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F3CEFD30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::dialog::PronounConcept::PRONOUN_DATA_CACHE(morphun::dialog::PronounConcept *this)
{
  {
    operator new();
  }

  return morphun::dialog::PronounConcept::PRONOUN_DATA_CACHE(void)::PRONOUN_DATA_CACHE_;
}

void morphun::dialog::PronounConcept::getPronounData(morphun::dialog::PronounConcept *this@<X0>, void *a2@<X8>)
{
  {
    operator new();
  }

  v5 = morphun::dialog::CLASS_MUTEX(void)::classMutex;
  if (!morphun::dialog::CLASS_MUTEX(void)::classMutex)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  std::mutex::lock(morphun::dialog::CLASS_MUTEX(void)::classMutex);
  v7 = morphun::dialog::PronounConcept::PRONOUN_DATA_CACHE(v6);
  v40 = (this + 104);
  morphun::util::ULocale::ULocale(&v53, this + 104);
  {
    operator new();
  }

  v41 = this;
  v42 = a2;
  v43 = v7;
  v8 = morphun::dialog::LOCALE_FALLBACK_PAIRS(void)::LOCALE_FALLBACK_PAIRS_;
  if (!morphun::dialog::LOCALE_FALLBACK_PAIRS(void)::LOCALE_FALLBACK_PAIRS_)
  {
    v39 = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(v39);
  }

  v9 = morphun::dialog::LOCALE_FALLBACK_PAIRS(void)::LOCALE_FALLBACK_PAIRS_ + 8;
  while (1)
  {
    v10 = (v58 & 0x80u) == 0 ? &v56 : v56;
    v11 = (v58 & 0x80u) == 0 ? v58 : v57;
    morphun::util::StringViewUtils::to_u16string(v10, v11, &v51);
    std::basic_string<char16_t>::insert(&v51, "/", 0x26, v12);
    v52 = v51;
    memset(&v51, 0, sizeof(v51));
    std::basic_string<char16_t>::append(&v52, L".csv", 4uLL);
    __p[0] = v52;
    v13 = v52.__r_.__value_.__r.__words[2];
    memset(&v52, 0, sizeof(v52));
    v14 = HIBYTE(v13);
    v15 = (v14 & 0x80u) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
    v16 = (v14 & 0x80u) == 0 ? v14 : __p[0].__r_.__value_.__l.__size_;
    String = morphun::resources::DataResource::getString(v15, v16, 1);
    if (String)
    {
      break;
    }

    if ((v55 & 0x80u) == 0)
    {
      v18 = v55;
    }

    else
    {
      v18 = v54;
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (!v18)
    {
      v36 = __cxa_allocate_exception(0x38uLL);
      (**v40)(&v52);
      std::basic_string<char16_t>::insert(&v52, "U", 0x23, v37);
      __p[0] = v52;
      memset(&v52, 0, sizeof(v52));
      morphun::exception::IllegalArgumentException::IllegalArgumentException(v36, __p);
    }

    if ((v58 & 0x80u) == 0)
    {
      v19 = &v56;
    }

    else
    {
      v19 = v56;
    }

    if ((v58 & 0x80u) == 0)
    {
      v20 = v58;
    }

    else
    {
      v20 = v57;
    }

    morphun::util::StringViewUtils::to_u16string(v19, v20, __p);
    v21 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    v22 = __p[0].__r_.__value_.__r.__words[0];
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0].__r_.__value_.__r.__words[0];
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p[0].__r_.__value_.__l.__size_;
    }

    v25 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(v8, v23, size);
    if (v21 < 0)
    {
      operator delete(v22);
    }

    if (v9 == v25)
    {
      morphun::util::ULocale::getFallback(&v53, __p);
      morphun::util::ULocale::operator=(&v53, __p);
    }

    else
    {
      v26 = *(v25 + 48);
      if (!v26)
      {
        __break(1u);
        return;
      }

      if (*v26)
      {
        v27 = 0;
        do
        {
          v28 = v27 + 1;
        }

        while (v26[++v27]);
      }

      else
      {
        v28 = 0;
      }

      morphun::util::StringViewUtils::to_string(v26, v28, &v52);
      memset(&v51, 0, sizeof(v51));
      v48[0] = 0;
      v48[1] = 0;
      v49 = 0;
      v46[0] = 0;
      v46[1] = 0;
      v47 = 0;
      morphun::util::ULocale::ULocale(__p, &v52, &v51, v48, v46);
      morphun::util::ULocale::operator=(&v53, __p);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(v46[0]);
      }

      if (SHIBYTE(v49) < 0)
      {
        operator delete(v48[0]);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }
    }
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if ((v58 & 0x80u) == 0)
  {
    v30 = &v56;
  }

  else
  {
    v30 = v56;
  }

  if ((v58 & 0x80u) == 0)
  {
    v31 = v58;
  }

  else
  {
    v31 = v57;
  }

  morphun::util::StringViewUtils::to_u16string(v30, v31, __p);
  v44 = __p[0];
  v45 = String;
  v32 = *(v43 + 8);
  if (!v32)
  {
    goto LABEL_78;
  }

  v33 = v43 + 8;
  do
  {
    v34 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v32 + 32), &v44);
    if ((v34 & 0x80u) == 0)
    {
      v33 = v32;
    }

    v32 = *(v32 + ((v34 >> 4) & 8));
  }

  while (v32);
  if (v33 == v43 + 8 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v44, (v33 + 32)) & 0x80) != 0)
  {
LABEL_78:
    morphun::dialog::PronounConcept::createPronounDataForModel(v41, String);
  }

  *v42 = *(v33 + 56);
  v35 = *(v33 + 64);
  v42[1] = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  std::mutex::unlock(v5);
}

void sub_1BE6209AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::mutex *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  MEMORY[0x1BFB49160](v60, 0x1020C4062D53EE8);
  std::mutex::unlock(v59);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,std::shared_ptr<morphun::dialog::PronounConcept::DefaultPronounData>>,void *>>>::operator()[abi:se200100](char a1, char *__p)
{
  if (a1)
  {
    v3 = *(__p + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:se200100](v3);
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t morphun::dialog::PronounConcept::getFeatureValueForPronoun(uint64_t a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature const*,std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature const*>(a1, a2);
  if (a1 + 8 == v3)
  {
    return 0;
  }

  else
  {
    return v3 + 40;
  }
}

void morphun::dialog::PronounConcept::PronounConcept(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(a1, (a2 + 1), a3);
  v6 = *a2;
  *v5 = *a2;
  *(a1 + *(v6 - 72)) = a2[5];
  *(a1 + *(*a1 - 56)) = a2[6];
  *(a1 + *(*a1 - 40)) = a2[7];
  std::allocate_shared[abi:se200100]<morphun::dialog::PronounConcept::PronounData,std::allocator<morphun::dialog::PronounConcept::PronounData>,morphun::dialog::SemanticFeatureModel const&,std::vector<morphun::dialog::SemanticFeatureModel_DisplayValue> const&,0>();
}

{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  morphun::dialog::PronounConcept::PronounConcept(a1, a2, a3);
}

{
  morphun::dialog::PronounConcept::PronounConcept(a1, a2, a3);
}

void sub_1BE620E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(*(v15 + 64));
      v20 = *(v15 + 48);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:se200100](v20);
      }

      morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v15, (v16 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void sub_1BE621344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, void **a17)
{
  std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(&v17[3].~__shared_weak_count);
  a17 = a16;
  std::vector<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>::__destroy_vector::operator()[abi:se200100](&a17);
  shared_owners = v17[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v20);
  _Unwind_Resume(a1);
}

std::basic_string<char16_t> *std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>::pair[abi:se200100]<std::basic_string<char16_t> const&,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>,0>(std::basic_string<char16_t> *this, __int128 *a2, std::basic_string<char16_t>::size_type *a3)
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

  this[1].__r_.__value_.__r.__words[0] = *a3;
  v6 = a3 + 1;
  v7 = a3[1];
  this[1].__r_.__value_.__l.__size_ = v7;
  p_size = &this[1].__r_.__value_.__l.__size_;
  v9 = a3[2];
  this[1].__r_.__value_.__r.__words[2] = v9;
  if (v9)
  {
    *(v7 + 16) = p_size;
    *a3 = v6;
    *v6 = 0;
    a3[2] = 0;
  }

  else
  {
    this[1].__r_.__value_.__r.__words[0] = p_size;
  }

  return this;
}

void std::__shared_ptr_emplace<morphun::dialog::PronounConcept::PronounData>::__on_zero_shared(uint64_t a1)
{
  std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(*(a1 + 72));
  v3 = (a1 + 40);
  std::vector<std::pair<std::basic_string<char16_t>,std::map<morphun::dialog::SemanticFeature const*,std::basic_string<char16_t>,morphun::dialog::PronounConcept::ptr_less<morphun::dialog::SemanticFeature>,std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>::__destroy_vector::operator()[abi:se200100](&v3);
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:se200100](v2);
  }
}

void std::__shared_ptr_emplace<morphun::dialog::PronounConcept::PronounData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F3CEFD80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFB49160);
}

void morphun::dialog::PronounConcept::PronounConcept(void *a1, uint64_t a2)
{
  *a1 = &off_1F3CED338;
  *morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(a1, off_1F3CDCCB8, a2) = &unk_1F3CD8F00;
  std::allocate_shared[abi:se200100]<morphun::dialog::PronounConcept::PronounData,std::allocator<morphun::dialog::PronounConcept::PronounData>,morphun::dialog::SemanticFeatureModel const&,std::vector<morphun::dialog::SemanticFeatureModel_DisplayValue> const&,0>();
}

{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  morphun::dialog::PronounConcept::PronounConcept(a1, a2);
}

{
  v2 = 0uLL;
  v3 = 0;
  *&pErrorCode[2] = 0;
  v5 = 0;
  *pErrorCode = &pErrorCode[2];
  morphun::dialog::PronounConcept::PronounConcept(a1, a2);
}

void sub_1BE621684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(*(v15 + 64));
      v19 = *(v15 + 48);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:se200100](v19);
      }

      morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v15, off_1F3CDCCB8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void sub_1BE621740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](va);
  _Unwind_Resume(a1);
}

void sub_1BE6217A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](va);
  _Unwind_Resume(a1);
}

void sub_1BE621B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v19 - 81) < 0)
  {
    operator delete(*(v19 - 104));
    if ((v17 & 1) == 0)
    {
LABEL_8:
      morphun::dialog::PronounConcept::~PronounConcept(v16, a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v18);
  goto LABEL_8;
}

void sub_1BE621F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
    if ((v31 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v32);
  goto LABEL_8;
}

morphun::dialog::PronounConcept *morphun::dialog::PronounConcept::PronounConcept(morphun::dialog::PronounConcept *this, const morphun::dialog::PronounConcept *a2, uint64_t a3)
{
  v6 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(this, (a2 + 8), a3);
  v7 = *a2;
  *v6 = *a2;
  *(this + *(v7 - 72)) = *(a2 + 5);
  *(this + *(*this - 56)) = *(a2 + 6);
  *(this + *(*this - 40)) = *(a2 + 7);
  v8 = *(a3 + 48);
  *(this + 5) = *(a3 + 40);
  *(this + 6) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](this + 7, a3 + 56);
  *(this + 20) = *(a3 + 80);
  return this;
}

void sub_1BE622188(_Unwind_Exception *a1)
{
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v4);
  }

  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

void virtual thunk tomorphun::dialog::PronounConcept::~PronounConcept(morphun::dialog::PronounConcept *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void virtual thunk tomorphun::dialog::PronounConcept::~PronounConcept(void *a1)
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

uint64_t *morphun::dialog::PronounConcept::getCurrentValue(morphun::dialog::PronounConcept *this, const morphun::dialog::SemanticFeatureConceptBase *a2, int a3, int a4)
{
  result = morphun::dialog::PronounConcept::getFirstPossibleValue(this, a2, a3, a4);
  if (result)
  {
    v5 = *(result + 23);
    if (v5 < 0)
    {
      v5 = result[1];
    }

    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *morphun::dialog::PronounConcept::isCustomMatch(morphun::dialog::PronounConcept *this)
{
  result = morphun::dialog::PronounConcept::getFirstPossibleValue(this, 0, 0, 0);
  if (result)
  {
    v2 = *(result + 23);
    if (v2 < 0)
    {
      v2 = result[1];
    }

    return (v2 != 0);
  }

  return result;
}

uint64_t morphun::dialog::PronounConcept::operator==(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return 1;
  }

  v4 = (*(*a1 + 40))(a1);
  v5 = (*(*a2 + 40))(a2);
  v6 = *(v5 + 231);
  if (v6 >= 0)
  {
    v7 = *(v5 + 231);
  }

  else
  {
    v7 = *(v5 + 216);
  }

  v8 = *(v4 + 231);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v4 + 216);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v12 = *(v5 + 208);
  v10 = (v5 + 208);
  v11 = v12;
  if (v6 < 0)
  {
    v10 = v11;
  }

  v15 = *(v4 + 208);
  v14 = v4 + 208;
  v13 = v15;
  v16 = (v9 >= 0 ? v14 : v13);
  if (memcmp(v10, v16, v7))
  {
    return 0;
  }

  v18 = *(*(a1 + 40) + 16);
  v17 = *(*(a1 + 40) + 24);
  v19 = *(*(a2 + 40) + 16);
  if (v17 - v18 != *(*(a2 + 40) + 24) - v19)
  {
    return 0;
  }

  while (v18 != v17)
  {
    v20 = *(v18 + 23);
    v21 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(v18 + 1);
    }

    v22 = *(v19 + 23);
    v23 = v22;
    if ((v22 & 0x80u) != 0)
    {
      v22 = *(v19 + 1);
    }

    if (v20 != v22)
    {
      return 0;
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
          goto LABEL_30;
        }
      }

      return 0;
    }

LABEL_30:
    if (*(v18 + 5) != *(v19 + 5))
    {
      return 0;
    }

    v26 = *(v18 + 3);
    if (v26 != v18 + 16)
    {
      v27 = *(v19 + 3);
      while (*(v26 + 4) == v27[4])
      {
        v28 = *(v26 + 63);
        v29 = v28;
        if ((v28 & 0x80u) != 0)
        {
          v28 = *(v26 + 6);
        }

        v30 = *(v27 + 63);
        v31 = v30;
        if ((v30 & 0x80u) != 0)
        {
          v30 = v27[6];
        }

        if (v28 != v30)
        {
          break;
        }

        if (v28)
        {
          v32 = v27[5];
          if (v31 >= 0)
          {
            v33 = (v27 + 5);
          }

          else
          {
            v33 = v27[5];
          }

          if (v29 >= 0)
          {
            v34 = v26 + 20;
          }

          else
          {
            v34 = *(v26 + 5);
          }

          while (*v33 == *v34)
          {
            ++v34;
            ++v33;
            if (!--v28)
            {
              goto LABEL_48;
            }
          }

          return 0;
        }

LABEL_48:
        v35 = *(v26 + 1);
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
            v36 = *(v26 + 2);
            v37 = *v36 == v26;
            v26 = v36;
          }

          while (!v37);
        }

        v38 = v27[1];
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v27[2];
            v37 = *v39 == v27;
            v27 = v39;
          }

          while (!v37);
        }

        v27 = v39;
        v26 = v36;
        if (v36 == v18 + 16)
        {
          goto LABEL_59;
        }
      }

      return 0;
    }

LABEL_59:
    v18 += 24;
    v19 += 24;
  }

  if (*(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  v41 = *(a1 + 56);
  if (v41 == (a1 + 64))
  {
LABEL_90:
    if (*(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }

    v53 = (*(*a1 + 120))(a1);
    if (v53 != (*(*a2 + 120))(a2) || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }

    v54 = *(a1 + 16);
    v55 = *(a2 + 16);

    return std::equal[abi:se200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,void *> *,long>>>(v54, (a1 + 24), v55);
  }

  else
  {
    v42 = *(a2 + 56);
    while (1)
    {
      result = morphun::dialog::SemanticFeature::operator==((v41 + 4), (v42 + 4));
      if (!result)
      {
        break;
      }

      v43 = *(v41 + 127);
      v44 = v43;
      if ((v43 & 0x80u) != 0)
      {
        v43 = v41[14];
      }

      v45 = *(v42 + 127);
      v46 = v45;
      if ((v45 & 0x80u) != 0)
      {
        v45 = v42[14];
      }

      if (v43 != v45)
      {
        return 0;
      }

      if (v43)
      {
        if (v46 >= 0)
        {
          v47 = (v42 + 13);
        }

        else
        {
          v47 = v42[13];
        }

        if (v44 >= 0)
        {
          v48 = (v41 + 13);
        }

        else
        {
          v48 = v41[13];
        }

        while (*v47 == *v48)
        {
          ++v48;
          ++v47;
          if (!--v43)
          {
            goto LABEL_79;
          }
        }

        return 0;
      }

LABEL_79:
      v49 = v41[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v41[2];
          v37 = *v50 == v41;
          v41 = v50;
        }

        while (!v37);
      }

      v51 = v42[1];
      if (v51)
      {
        do
        {
          v52 = v51;
          v51 = *v51;
        }

        while (v51);
      }

      else
      {
        do
        {
          v52 = v42[2];
          v37 = *v52 == v42;
          v42 = v52;
        }

        while (!v37);
      }

      v42 = v52;
      v41 = v50;
      if (v50 == (a1 + 64))
      {
        goto LABEL_90;
      }
    }
  }

  return result;
}

BOOL std::equal[abi:se200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,void *> *,long>>,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,void *> *,long>>>(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a1;
  while (1)
  {
    result = morphun::dialog::SemanticFeature::operator==((v6 + 4), (a3 + 4));
    if (!result)
    {
      return result;
    }

    v7 = *(v6 + 127);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = v6[14];
    }

    v9 = *(a3 + 127);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = a3[14];
    }

    if (v7 != v9)
    {
      return 0;
    }

    if (v7)
    {
      if (v10 >= 0)
      {
        v11 = (a3 + 13);
      }

      else
      {
        v11 = a3[13];
      }

      if (v8 >= 0)
      {
        v12 = (v6 + 13);
      }

      else
      {
        v12 = v6[13];
      }

      while (*v11 == *v12)
      {
        ++v12;
        ++v11;
        if (!--v7)
        {
          goto LABEL_19;
        }
      }

      return 0;
    }

LABEL_19:
    v13 = v6[1];
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v6[2];
        v15 = *v14 == v6;
        v6 = v14;
      }

      while (!v15);
    }

    v16 = a3[1];
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = a3[2];
        v15 = *v17 == a3;
        a3 = v17;
      }

      while (!v15);
    }

    a3 = v17;
    v6 = v14;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::inflectSignificantTokens(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char **a4@<X3>, void *a5@<X8>)
{
  v6 = a4[1];
  if (*a4 == v6)
  {
    goto LABEL_86;
  }

  v11 = *(v6 - 1);
  v53 = 0;
  npc<std::vector<std::basic_string<char16_t>>>(a3);
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v11)
  {
    goto LABEL_86;
  }

  v12 = *a3 + 24 * v11;
  if (*(v12 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v52, *v12, *(v12 + 8));
  }

  else
  {
    v13 = *v12;
    v52.__r_.__value_.__r.__words[2] = *(v12 + 16);
    *&v52.__r_.__value_.__l.__data_ = v13;
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v52;
  }

  else
  {
    v14 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v52.__r_.__value_.__l.__size_;
  }

  if (!morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[6], &v53, v14, size))
  {
    morphun::grammar::synthesis::getFeatureValue(&__p, a2, a1[4]);
    v23 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v22);
    v24 = *(v23 + 23);
    v25 = *(v23 + 8);
    if (v24 >= 0)
    {
      v25 = *(v23 + 23);
    }

    v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = __p.__r_.__value_.__l.__size_;
    }

    if (v25 == v26)
    {
      if (!v25)
      {
LABEL_30:
        if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v11)
        {
          goto LABEL_86;
        }

        morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::inflectGenitive(&v50, *a3 + 24 * v11);
        if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v11)
        {
          std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
        }

        v30 = *a3 + 24 * v11;
        if (*(v30 + 23) < 0)
        {
          operator delete(*v30);
        }

        v31 = *&v50.__r_.__value_.__l.__data_;
        *(v30 + 16) = *(&v50.__r_.__value_.__l + 2);
        *v30 = v31;
        *a5 = 0;
        a5[1] = 0;
        a5[2] = 0;
        std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
        if ((*(&__p.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_78;
        }

LABEL_41:
        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_78;
      }

      p_p = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      if (v24 >= 0)
      {
        v29 = v23;
      }

      else
      {
        v29 = *v23;
      }

      while (p_p->__r_.__value_.__s.__data_[0] == *v29)
      {
        ++v29;
        p_p = (p_p + 2);
        if (!--v25)
        {
          goto LABEL_30;
        }
      }
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_41;
  }

  v16 = *a4;
  if (a4[1] - *a4 != 8)
  {
    morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::inflectWord(&__p, a1, a2, &v52, v53, &v52, 1);
    if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v11)
    {
      std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
    }

    v32 = *a3 + 24 * v11;
    if (*(v32 + 23) < 0)
    {
      operator delete(*v32);
    }

    *v32 = __p;
    goto LABEL_77;
  }

  v17 = *v16;
  v18 = *a3;
  v19 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  if (v19 <= v17)
  {
    goto LABEL_86;
  }

  v20 = v18 + 24 * v17;
  if (*(v20 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *v20, *(v20 + 8));
    v16 = *a4;
    if ((a4[1] - *a4) < 5)
    {
      goto LABEL_86;
    }

    v18 = *a3;
    v19 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  }

  else
  {
    v21 = *v20;
    __p.__r_.__value_.__r.__words[2] = *(v20 + 16);
    *&__p.__r_.__value_.__l.__data_ = v21;
  }

  v33 = *(v16 + 1);
  if (v19 <= v33)
  {
    goto LABEL_86;
  }

  v34 = v18 + 24 * v33;
  if (*(v34 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v50, *v34, *(v34 + 8));
  }

  else
  {
    v35 = *v34;
    v50.__r_.__value_.__r.__words[2] = *(v34 + 16);
    *&v50.__r_.__value_.__l.__data_ = v35;
  }

  v49 = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &__p;
  }

  else
  {
    v36 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = __p.__r_.__value_.__l.__size_;
  }

  morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[6], &v49, v36, v37);
  v48 = 0;
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &v50;
  }

  else
  {
    v38 = v50.__r_.__value_.__r.__words[0];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v50.__r_.__value_.__l.__size_;
  }

  morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[6], &v48, v38, v39);
  v40 = a1[10];
  if (((v40 | a1[9]) & v49) != a1[9] || (v48 & v40) == 0)
  {
    morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::inflectWord(&v46, a1, a2, &v52, v53, &v52, 1);
    if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v11)
    {
      std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
    }

    v45 = *a3 + 24 * v11;
    goto LABEL_71;
  }

  morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::inflectWord(&v46, a1, a2, &__p, v49, &v50, 0);
  if (a4[1] == *a4)
  {
    goto LABEL_86;
  }

  v41 = **a4;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v41)
  {
    std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
  }

  v42 = *a3 + 24 * v41;
  if (*(v42 + 23) < 0)
  {
    operator delete(*v42);
  }

  *v42 = v46;
  v43 = v48;
  *(v42 + 16) = v47;
  morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::inflectWord(&v46, a1, a2, &v50, v43, &v50, 1);
  if ((a4[1] - *a4) <= 4)
  {
LABEL_86:
    __break(1u);
    return;
  }

  v44 = *(*a4 + 1);
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v44)
  {
    std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
  }

  v45 = *a3 + 24 * v44;
LABEL_71:
  if (*(v45 + 23) < 0)
  {
    operator delete(*v45);
  }

  *v45 = v46;
  *(v45 + 16) = v47;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_77:
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
LABEL_78:
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }
}

void sub_1BE622F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v30 - 57) < 0)
  {
    operator delete(*(v30 - 80));
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::inflectGenitive(std::basic_string<char16_t> *this, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 8));
  }

  else
  {
    *this = *a2;
  }

  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v4 = size;
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (v4 >= 0)
    {
      v5 = this;
    }

    else
    {
      v5 = this->__r_.__value_.__r.__words[0];
    }

    v6 = v5->__r_.__value_.__s.__data_[size - 1] - 115;
    v7 = v6 > 7;
    v8 = (1 << v6) & 0xA1;
    if (v7 || v8 == 0)
    {
      v10 = word_1BE80EB90;
    }

    else
    {
      v10 = &unk_1BE80D962;
    }

    std::basic_string<char16_t>::append(this, v10, 1uLL);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BE623120(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::inflectWord(uint64_t a1, uint64_t *a2, uint64_t a3, std::basic_string<char16_t> *a4, uint64_t a5, uint64_t a6, int a7)
{
  morphun::grammar::synthesis::getFeatureValue(&v121, a3, a2[2]);
  morphun::grammar::synthesis::getFeatureValue(&__s, a3, a2[1]);
  morphun::grammar::synthesis::getFeatureValue(&v119, a3, a2[4]);
  v118 = 0;
  size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  v16 = size;
  if ((size & 0x80u) != 0)
  {
    size = a4->__r_.__value_.__l.__size_;
  }

  v17 = *(a6 + 23);
  if (v17 >= 0)
  {
    v18 = *(a6 + 23);
  }

  else
  {
    v18 = *(a6 + 8);
  }

  if (size == v18)
  {
    if (!size)
    {
LABEL_16:
      v118 = a5;
      goto LABEL_21;
    }

    v19 = 0;
    if (v17 >= 0)
    {
      v20 = a6;
    }

    else
    {
      v20 = *a6;
    }

    if (v16 >= 0)
    {
      v21 = a4;
    }

    else
    {
      v21 = a4->__r_.__value_.__r.__words[0];
    }

    while (*&v20[2 * v19] == v21[v19])
    {
      if (size == ++v19)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v22 = *a6;
    if (v17 >= 0)
    {
      v20 = a6;
    }

    else
    {
      v20 = *a6;
    }
  }

  CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a2[6], &v118, v20, v18);
LABEL_21:
  v23 = morphun::grammar::synthesis::GrammemeConstants::POS_ADJECTIVE(CombinedBinaryType);
  morphun::grammar::synthesis::getFeatureValue(&v124, a3, a2[5]);
  v24 = *(v23 + 23);
  v25 = *(v23 + 8);
  if (v24 >= 0)
  {
    v25 = *(v23 + 23);
  }

  v26 = HIBYTE(v124.__r_.__value_.__r.__words[2]);
  if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v26 = v124.__r_.__value_.__l.__size_;
  }

  if (v25 == v26)
  {
    if (!v25)
    {
LABEL_34:
      v29 = 1;
      if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v27 = v124.__r_.__value_.__r.__words[0];
    if ((v124.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &v124;
    }

    if (v24 >= 0)
    {
      v28 = v23;
    }

    else
    {
      v28 = *v23;
    }

    while (v27->__r_.__value_.__s.__data_[0] == *v28)
    {
      ++v28;
      v27 = (v27 + 2);
      if (!--v25)
      {
        goto LABEL_34;
      }
    }
  }

  if ((a2[9] & v118) != 0)
  {
    v29 = (a2[10] & v118) == 0;
    if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v29 = 0;
  if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_38:
    operator delete(v124.__r_.__value_.__l.__data_);
  }

LABEL_39:
  morphun::grammar::synthesis::getFeatureValue(&__p, a3, a2[3]);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if ((v29 | a7 ^ 1) != 1)
  {
    memset(&v123, 0, sizeof(v123));
    v34 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
    if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = v121.__r_.__value_.__l.__size_;
    }

    if (v34)
    {
      v126 = &v123;
      std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(1uLL);
    }

    v82 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v82 = __s.__r_.__value_.__l.__size_;
    }

    if (v82)
    {
      v83 = 0xAAAAAAAAAAAAAAABLL * (-v123.__r_.__value_.__r.__words[0] >> 3);
      if (v83 + 1 <= 0xAAAAAAAAAAAAAAALL)
      {
        v84 = 0x5555555555555556 * ((v123.__r_.__value_.__r.__words[2] - v123.__r_.__value_.__r.__words[0]) >> 3);
        if (v84 <= v83 + 1)
        {
          v84 = v83 + 1;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v123.__r_.__value_.__r.__words[2] - v123.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v85 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v85 = v84;
        }

        v126 = &v123;
        if (v85)
        {
          std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v85);
        }

        v124.__r_.__value_.__r.__words[0] = 0;
        v124.__r_.__value_.__l.__size_ = 8 * (-v123.__r_.__value_.__r.__words[0] >> 3);
        v124.__r_.__value_.__r.__words[2] = v124.__r_.__value_.__l.__size_;
        v125 = 0;
        goto LABEL_305;
      }

LABEL_304:
      std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
    }

    v87 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v30);
    v88 = *(v87 + 23);
    v89 = v88;
    if ((v88 & 0x80u) != 0)
    {
      v88 = *(v87 + 8);
    }

    v90 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
    if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v90 = v121.__r_.__value_.__l.__size_;
    }

    if (v88 == v90)
    {
      if (!v88)
      {
        goto LABEL_231;
      }

      v91 = &v121;
      if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v91 = v121.__r_.__value_.__r.__words[0];
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
          goto LABEL_231;
        }
      }
    }

    v93 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v93 = __p.__r_.__value_.__l.__size_;
    }

    if (v93)
    {
      v94 = v123.__r_.__value_.__l.__size_;
      if (v123.__r_.__value_.__l.__size_ >= v123.__r_.__value_.__r.__words[2])
      {
        v96 = 0xAAAAAAAAAAAAAAABLL * ((v123.__r_.__value_.__l.__size_ - v123.__r_.__value_.__r.__words[0]) >> 3);
        if (v96 + 1 <= 0xAAAAAAAAAAAAAAALL)
        {
          v97 = 0x5555555555555556 * ((v123.__r_.__value_.__r.__words[2] - v123.__r_.__value_.__r.__words[0]) >> 3);
          if (v97 <= v96 + 1)
          {
            v97 = v96 + 1;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v123.__r_.__value_.__r.__words[2] - v123.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
          {
            v98 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v98 = v97;
          }

          v126 = &v123;
          if (v98)
          {
            std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v98);
          }

          v124.__r_.__value_.__r.__words[0] = 0;
          v124.__r_.__value_.__l.__size_ = 8 * ((v123.__r_.__value_.__l.__size_ - v123.__r_.__value_.__r.__words[0]) >> 3);
          v124.__r_.__value_.__r.__words[2] = v124.__r_.__value_.__l.__size_;
          v125 = 0;
          goto LABEL_305;
        }

        goto LABEL_304;
      }

      if (!v123.__r_.__value_.__l.__size_)
      {
        goto LABEL_305;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(v123.__r_.__value_.__l.__size_, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v95 = *&__p.__r_.__value_.__l.__data_;
        *(v123.__r_.__value_.__l.__size_ + 16) = *(&__p.__r_.__value_.__l + 2);
        *v94 = v95;
      }

      v123.__r_.__value_.__l.__size_ = v94 + 24;
    }

LABEL_231:
    memset(&v122, 0, sizeof(v122));
    v99 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
    if (v99 >= 0)
    {
      v100 = a4;
    }

    else
    {
      v100 = a4->__r_.__value_.__r.__words[0];
    }

    if (v99 >= 0)
    {
      v101 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v101 = a4->__r_.__value_.__l.__size_;
    }

    morphun::dialog::DictionaryLookupInflector::inflect(&v124, a2 + 37, v100, v101, a5, &v123, &v122);
    if (v125 == 1)
    {
      v116 = v124;
      memset(&v124, 0, sizeof(v124));
    }

    else if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v116, a4->__r_.__value_.__l.__data_, a4->__r_.__value_.__l.__size_);
    }

    else
    {
      v116 = *a4;
    }

    v124.__r_.__value_.__r.__words[0] = &v123;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v124);
    *a1 = *&v116.__r_.__value_.__l.__data_;
    v86 = v116.__r_.__value_.__r.__words[2];
    goto LABEL_243;
  }

  v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v31 = __p.__r_.__value_.__l.__size_;
  }

  if (!v31)
  {
    morphun::dialog::DictionaryLookupFunction::determine((a2 + 11), a6, &v124);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v124;
  }

  v32 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if (v32 < 0)
  {
    v33 = a4->__r_.__value_.__l.__size_;
    if (!v33)
    {
      v76 = 0;
      v78 = a4->__r_.__value_.__r.__words[0];
      goto LABEL_196;
    }
  }

  else
  {
    if (!*(&a4->__r_.__value_.__s + 23))
    {
      goto LABEL_181;
    }

    v33 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  }

  v35 = 0;
  if (v32 >= 0)
  {
    v36 = a4;
  }

  else
  {
    v36 = a4->__r_.__value_.__r.__words[0];
  }

  v37 = v36[v33 - 1];
  if (((v37 - 97) > 0x18 || ((1 << (v37 - 97)) & 0x1104111) == 0) && ((v37 - 229) > 0x13 || ((1 << (v37 + 27)) & 0x80003) == 0))
  {
    v35 = 1;
  }

  v40 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v30);
  v42 = *(v40 + 23);
  v43 = v42;
  if ((v42 & 0x80u) != 0)
  {
    v42 = *(v40 + 8);
  }

  v44 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
  if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v44 = v121.__r_.__value_.__l.__size_;
  }

  if (v42 == v44)
  {
    if (!v42)
    {
      goto LABEL_98;
    }

    v45 = &v121;
    if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v45 = v121.__r_.__value_.__r.__words[0];
    }

    if (v43 >= 0)
    {
      v46 = v40;
    }

    else
    {
      v46 = *v40;
    }

    while (v45->__r_.__value_.__s.__data_[0] == *v46)
    {
      ++v46;
      v45 = (v45 + 2);
      if (!--v42)
      {
        goto LABEL_98;
      }
    }
  }

  v40 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_DEFINITE(v40);
  v47 = *(v40 + 23);
  v48 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v47 = *(v40 + 8);
  }

  v49 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v49 = __s.__r_.__value_.__l.__size_;
  }

  if (v47 != v49)
  {
    goto LABEL_137;
  }

  if (v47)
  {
    p_s = &__s;
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v48 >= 0)
    {
      v51 = v40;
    }

    else
    {
      v51 = *v40;
    }

    while (p_s->__r_.__value_.__s.__data_[0] == *v51)
    {
      ++v51;
      p_s = (p_s + 2);
      if (!--v47)
      {
        goto LABEL_98;
      }
    }

    goto LABEL_137;
  }

LABEL_98:
  if (v33 >= 4)
  {
    v52 = v33 - 3;
    v53 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    v54 = v53;
    if ((v53 & 0x80u) != 0)
    {
      v53 = a4->__r_.__value_.__l.__size_;
    }

    if (v53 < v52)
    {
      goto LABEL_305;
    }

    v55 = a4->__r_.__value_.__r.__words[0];
    if (v54 >= 0)
    {
      v55 = a4;
    }

    if (v53 < v33 - 2)
    {
      goto LABEL_305;
    }

    if (v55[v33 - 2] == 101)
    {
      v56 = v37 - 108;
      if ((v37 - 108) <= 6 && ((1 << v56) & 0x45) != 0)
      {
        v57 = v55[v52];
        if (v57 == v55[v33 - 4] && ((v57 - 97) > 0x18 || ((1 << (v57 - 97)) & 0x1104111) == 0) && ((v57 - 229) > 0x13 || ((1 << (v57 + 27)) & 0x80003) == 0))
        {
          v112 = std::basic_string<char16_t>::basic_string(&v123, a4, 0, v52, v41);
          std::basic_string<char16_t>::push_back(v112, v37);
          v124 = v123;
          memset(&v123, 0, sizeof(v123));
          std::basic_string<char16_t>::push_back(&v124, 101);
LABEL_116:
          v122 = v124;
          memset(&v124, 0, sizeof(v124));
          if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v123.__r_.__value_.__l.__data_);
          }

          goto LABEL_197;
        }

        if (v56 <= 6 && ((1 << v56) & 0x45) != 0)
        {
          v58 = std::basic_string<char16_t>::basic_string(&v123, a4, 0, v33 - 2, v41);
          std::basic_string<char16_t>::push_back(v58, v37);
          v124 = v123;
          memset(&v123, 0, sizeof(v123));
          std::basic_string<char16_t>::push_back(&v124, 101);
          goto LABEL_116;
        }
      }
    }
  }

  if (!v35)
  {
LABEL_137:
    v30 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v40);
    v63 = *(v30 + 23);
    v64 = v63;
    if ((v63 & 0x80u) != 0)
    {
      v63 = *(v30 + 1);
    }

    v65 = HIBYTE(v121.__r_.__value_.__r.__words[2]);
    if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v65 = v121.__r_.__value_.__l.__size_;
    }

    if (v63 != v65)
    {
      goto LABEL_180;
    }

    if (v63)
    {
      v66 = &v121;
      if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v66 = v121.__r_.__value_.__r.__words[0];
      }

      if (v64 >= 0)
      {
        v67 = v30;
      }

      else
      {
        v67 = *v30;
      }

      while (v66->__r_.__value_.__s.__data_[0] == *v67)
      {
        v67 = (v67 + 2);
        v66 = (v66 + 2);
        if (!--v63)
        {
          goto LABEL_150;
        }
      }

      goto LABEL_180;
    }

LABEL_150:
    v30 = morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(v30);
    v69 = *(v30 + 23);
    v70 = v69;
    if ((v69 & 0x80u) != 0)
    {
      v69 = *(v30 + 1);
    }

    v71 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v71 = __p.__r_.__value_.__l.__size_;
    }

    if (v69 != v71)
    {
      goto LABEL_180;
    }

    if (v69)
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v70 >= 0)
      {
        v73 = v30;
      }

      else
      {
        v73 = *v30;
      }

      while (p_p->__r_.__value_.__s.__data_[0] == *v73)
      {
        v73 = (v73 + 2);
        p_p = (p_p + 2);
        if (!--v69)
        {
          goto LABEL_163;
        }
      }

      goto LABEL_180;
    }

LABEL_163:
    if (!v35)
    {
LABEL_180:
      if ((SHIBYTE(a4->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_181;
      }

      v78 = a4->__r_.__value_.__r.__words[0];
      v76 = a4->__r_.__value_.__l.__size_;
LABEL_196:
      std::basic_string<char16_t>::__init_copy_ctor_external(&v122, v78, v76);
      goto LABEL_197;
    }

    v74 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    v75 = v33 - 2;
    if (v33 <= 2)
    {
      v76 = a4->__r_.__value_.__l.__size_;
    }

    else
    {
      v76 = a4->__r_.__value_.__l.__size_;
      if (v74 >= 0)
      {
        v77 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v77 = a4->__r_.__value_.__l.__size_;
      }

      if (v77 < v75)
      {
        goto LABEL_305;
      }

      v78 = a4->__r_.__value_.__r.__words[0];
      if (v74 >= 0)
      {
        v79 = a4;
      }

      else
      {
        v79 = a4->__r_.__value_.__r.__words[0];
      }

      v80 = v79->__r_.__value_.__s.__data_[v75];
      if (v37 == 107 && v80 == 115 || v37 == 103 && v80 == 105 || v37 == 116 && v80 == 101)
      {
LABEL_178:
        if ((*(&a4->__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_196;
        }

LABEL_181:
        *&v122.__r_.__value_.__l.__data_ = *&a4->__r_.__value_.__l.__data_;
        v81 = a4->__r_.__value_.__r.__words[2];
LABEL_182:
        v122.__r_.__value_.__r.__words[2] = v81;
        goto LABEL_197;
      }

      if (((v80 - 97) > 0x18 || ((1 << (v80 - 97)) & 0x1104111) == 0) && ((v80 - 229) > 0x13 || ((1 << (v80 + 27)) & 0x80003) == 0))
      {
        if ((v37 | 0x10) == 0x74)
        {
          goto LABEL_178;
        }

        if (v37 == v80)
        {
          v115 = std::basic_string<char16_t>::basic_string(&v124, a4, 0, v33 - 1, v68);
          std::basic_string<char16_t>::push_back(v115, 116);
          *&v122.__r_.__value_.__l.__data_ = *&v124.__r_.__value_.__l.__data_;
          v81 = v124.__r_.__value_.__r.__words[2];
          goto LABEL_182;
        }
      }
    }

    if (v74 >= 0)
    {
      v110 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v110 = v76;
    }

    std::basic_string<char16_t>::basic_string[abi:se200100](&v122, v110 + 1);
    if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v122;
    }

    else
    {
      v30 = v122.__r_.__value_.__r.__words[0];
    }

    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v111 = a4;
    }

    else
    {
      v111 = a4->__r_.__value_.__r.__words[0];
    }

    if ((v110 & 0x8000000000000000) == 0)
    {
      v61 = (v30 + 2 * v110);
      if (v111 < v30 || v61 <= v111)
      {
        if (v110)
        {
          v30 = memmove(v30, v111, 2 * v110);
        }

        if (v61 > dword_1BE80C566 || (v61 + 2) <= dword_1BE80C566)
        {
          v62 = 116;
          goto LABEL_136;
        }
      }
    }

LABEL_305:
    __break(1u);
    return;
  }

  if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = a4->__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::basic_string[abi:se200100](&v122, v59 + 1);
  if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v122;
  }

  else
  {
    v30 = v122.__r_.__value_.__r.__words[0];
  }

  if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = a4;
  }

  else
  {
    v60 = a4->__r_.__value_.__r.__words[0];
  }

  if ((v59 & 0x8000000000000000) != 0)
  {
    goto LABEL_305;
  }

  v61 = (v30 + 2 * v59);
  if (v60 >= v30 && v61 > v60)
  {
    goto LABEL_305;
  }

  if (v59)
  {
    v30 = memmove(v30, v60, 2 * v59);
  }

  if (v61 <= byte_1BE80ECC4 && v61 + 2 > byte_1BE80ECC4)
  {
    goto LABEL_305;
  }

  v62 = 101;
LABEL_136:
  *v61 = v62;
LABEL_197:
  *a1 = *&v122.__r_.__value_.__l.__data_;
  v86 = v122.__r_.__value_.__r.__words[2];
LABEL_243:
  *(a1 + 16) = v86;
  v102 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v30);
  v103 = *(v102 + 23);
  v104 = v103;
  if ((v103 & 0x80u) != 0)
  {
    v103 = *(v102 + 8);
  }

  v105 = HIBYTE(v119.__r_.__value_.__r.__words[2]);
  if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v105 = v119.__r_.__value_.__l.__size_;
  }

  if (v103 == v105)
  {
    if (v103)
    {
      v106 = &v119;
      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v106 = v119.__r_.__value_.__r.__words[0];
      }

      if (v104 >= 0)
      {
        v107 = v102;
      }

      else
      {
        v107 = *v102;
      }

      while (v106->__r_.__value_.__s.__data_[0] == *v107)
      {
        ++v107;
        v106 = (v106 + 2);
        if (!--v103)
        {
          goto LABEL_256;
        }
      }
    }

    else
    {
LABEL_256:
      if (a7)
      {
        v108 = *(a1 + 23);
        v109 = v108;
        if ((v108 & 0x80u) != 0)
        {
          v108 = *(a1 + 8);
        }

        if (v108 >= 2)
        {
          morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::inflectGenitive(&v124, a1);
          if (v109 < 0)
          {
            operator delete(*a1);
          }

          *a1 = v124;
        }
      }
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }
}

void sub_1BE623F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39)
{
  if (*(v39 - 105) < 0)
  {
    operator delete(*(v39 - 128));
  }

  if (a18 < 0)
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

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

void virtual thunk tomorphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::~NbGrammarSynthesizer_NbDisplayFunction(morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction *this)
{
  morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::~NbGrammarSynthesizer_NbDisplayFunction((this + *(*this - 32)));

  JUMPOUT(0x1BFB49160);
}

{
  morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::~NbGrammarSynthesizer_NbDisplayFunction((this + *(*this - 32)));
}

void morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::~NbGrammarSynthesizer_NbDisplayFunction(morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction *this)
{
  *this = &unk_1F3CD5380;
  *(this + 66) = &unk_1F3CD53D8;
  *(this + 11) = &unk_1F3CD8738;
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 34) = v2;
    operator delete(v2);
  }

  v3 = *(this + 31);
  *(this + 31) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 12) = &unk_1F3CD2000;
  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }
}

{
  morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::~NbGrammarSynthesizer_NbDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::getDisplayValue(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(&v17, 0, sizeof(v17));
  v5 = *(a2 + 8);
  if (v5 == *(a2 + 16))
  {
    size = 0;
    v7 = 0;
  }

  else
  {
    v6 = (*(*v5 + 24))(v5);
    std::basic_string<char16_t>::operator=(&v17, v6);
    v7 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    size = v17.__r_.__value_.__l.__size_;
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
    if (*(a3 + 16))
    {
      v16 = 0;
      if ((v7 & 0x80u) == 0)
      {
        v10 = &v17;
      }

      else
      {
        v10 = v17.__r_.__value_.__r.__words[0];
      }

      if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[6], &v16, v10, v9))
      {
        morphun::grammar::synthesis::NbGrammarSynthesizer_NbDisplayFunction::inflectWord(&v15, a1, a3, &v17, v16, &v17, 1);
        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        v17 = v15;
      }

      else
      {
        v11 = a1[8];
        if (!v11 || (v12 = (*(*v11 + 24))(v11, &v17)) == 0)
        {
          exception = __cxa_allocate_exception(0x38uLL);
          morphun::exception::NullPointerException::NullPointerException(exception);
        }

        morphun::grammar::synthesis::GrammarSynthesizerUtil::inflectSignificantWords(&v15, a3, v12, a1 + *(*a1 - 64));
        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        v17 = v15;
        (*(*v12 + 16))(v12);
      }
    }

    operator new();
  }

  if ((v7 & 0x80) != 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1BE624448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_free_exception(v18);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::DefaultArticleLookupFunction::getPossibleArticles(morphun::dialog::DefaultArticleLookupFunction *this@<X0>, const morphun::dialog::SemanticFeatureModel *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = (*(*this + 64))(this);
  if (!v5)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v6 = v5;
  morphun::lang::features::LanguageGrammarFeatures::getLanguageGrammarFeatures((a2 + 104), &v45);
  morphun::lang::features::LanguageGrammarFeatures::getFeatures(&v45, &v43);
  v7 = v43;
  if (v43 == v44)
  {
LABEL_35:
    std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(v44[0]);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
LABEL_88:
    v45 = &unk_1F3CD94A8;
    return;
  }

  while (1)
  {
    if (*(v7 + 63) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v55, v7[5], v7[6]);
    }

    else
    {
      v55 = *(v7 + 5);
    }

    if (*v6)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
      }

      while (v6[++v8]);
    }

    else
    {
      v9 = 0;
    }

    if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 != SHIBYTE(v55.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_29;
    }

    if (!v9)
    {
      goto LABEL_38;
    }

    v11 = &v55;
LABEL_18:
    v12 = v9 - 1;
    v13 = v6;
    do
    {
      v15 = v11->__r_.__value_.__s.__data_[0];
      v11 = (v11 + 2);
      v14 = v15;
      v17 = *v13++;
      v16 = v17;
      v18 = v17 != v14 || v12-- == 0;
    }

    while (!v18);
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (v16 == v14)
    {
      goto LABEL_38;
    }

LABEL_29:
    v19 = v7[1];
    if (v19)
    {
      do
      {
        v20 = v19;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      do
      {
        v20 = v7[2];
        v18 = *v20 == v7;
        v7 = v20;
      }

      while (!v18);
    }

    v7 = v20;
    if (v20 == v44)
    {
      goto LABEL_35;
    }
  }

  if (v9 != v55.__r_.__value_.__l.__size_)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
    goto LABEL_29;
  }

  if (v9 == -1)
  {
    std::basic_string<char16_t>::__throw_out_of_range[abi:se200100]();
  }

  v11 = v55.__r_.__value_.__r.__words[0];
  if (v9)
  {
    goto LABEL_18;
  }

  operator delete(v55.__r_.__value_.__l.__data_);
LABEL_38:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__init_with_size[abi:se200100]<morphun::lang::features::LanguageGrammarFeatures_Feature*,morphun::lang::features::LanguageGrammarFeatures_Feature*>(&v52, v7[8], v7[9], 0x6DB6DB6DB6DB6DB7 * (v7[9] - v7[8]));
  v21 = v52;
  v22 = v53;
  if (v52 == v53)
  {
LABEL_87:
    v55.__r_.__value_.__r.__words[0] = &v52;
    std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&v55);
    std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(v44[0]);
    goto LABEL_88;
  }

  v42 = v53;
  while (1)
  {
    (*(*v21 + 24))(&v55, v21);
    size = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v55.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      (*(*v21 + 32))(&v49, v21);
      v24 = v51 == 0;
      std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(v50);
      if ((*(&v55.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v24 = 1;
      if ((*(&v55.__r_.__value_.__s + 23) & 0x80) == 0)
      {
LABEL_44:
        if (v24)
        {
          goto LABEL_86;
        }

        goto LABEL_48;
      }
    }

    operator delete(v55.__r_.__value_.__l.__data_);
    if (v24)
    {
      goto LABEL_86;
    }

LABEL_48:
    v49 = 0;
    v50 = 0;
    v51 = 0;
    (*(*v21 + 32))(__p, v21);
    v25 = __p[0];
    if (__p[0] != &__p[1])
    {
      break;
    }

LABEL_71:
    std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(__p[1]);
    (*(*v21 + 24))(__p, v21);
    v37 = a3[1];
    v36 = a3[2];
    if (v37 >= v36)
    {
      v38 = 0xAAAAAAAAAAAAAAABLL * ((v37 - *a3) >> 4);
      v39 = v38 + 1;
      if (v38 + 1 > 0x555555555555555)
      {
        std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
      }

      v40 = 0xAAAAAAAAAAAAAAABLL * ((v36 - *a3) >> 4);
      if (2 * v40 > v39)
      {
        v39 = 2 * v40;
      }

      if (v40 >= 0x2AAAAAAAAAAAAAALL)
      {
        v41 = 0x555555555555555;
      }

      else
      {
        v41 = v39;
      }

      v57 = a3;
      if (v41)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>(v41);
      }

      v55.__r_.__value_.__r.__words[0] = 0;
      v55.__r_.__value_.__l.__size_ = 48 * v38;
      v55.__r_.__value_.__r.__words[2] = 48 * v38;
      v56 = 0;
      goto LABEL_92;
    }

    if (!v37)
    {
      goto LABEL_92;
    }

    std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>::pair[abi:se200100]<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>&,0>(a3[1], __p, &v49);
    a3[1] = v37 + 48;
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v55.__r_.__value_.__r.__words[0] = &v49;
    std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:se200100](&v55);
    v22 = v42;
LABEL_86:
    v21 += 56;
    if (v21 == v22)
    {
      goto LABEL_87;
    }
  }

  while (1)
  {
    v26 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a2 + 8, v25 + 16);
    v27 = (a2 + 16) == v26 ? 0 : v26[7];
    npc<morphun::dialog::SemanticFeature const>(v27);
    v28 = v50;
    if (v50 >= v51)
    {
      break;
    }

    if (!v50)
    {
      goto LABEL_92;
    }

    *v50 = v27;
    v29 = (v28 + 1);
    if (*(v25 + 79) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(v29, v25[7], v25[8]);
    }

    else
    {
      v30 = *(v25 + 7);
      v28[3] = v25[9];
      *&v29->__r_.__value_.__l.__data_ = v30;
    }

    v50 = v28 + 4;
    v34 = v25[1];
    if (v34)
    {
      do
      {
        v35 = v34;
        v34 = *v34;
      }

      while (v34);
    }

    else
    {
      do
      {
        v35 = v25[2];
        v18 = *v35 == v25;
        v25 = v35;
      }

      while (!v18);
    }

    v25 = v35;
    if (v35 == &__p[1])
    {
      goto LABEL_71;
    }
  }

  v31 = ((v50 - v49) >> 5) + 1;
  if (v31 >> 59)
  {
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v32 = (v51 - v49) >> 4;
  if (v32 <= v31)
  {
    v32 = ((v50 - v49) >> 5) + 1;
  }

  if (v51 - v49 >= 0x7FFFFFFFFFFFFFE0)
  {
    v33 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = v32;
  }

  v57 = &v49;
  if (v33)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>(v33);
  }

LABEL_92:
  __break(1u);
}

void sub_1BE624BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  *(v39 - 184) = v38;
  std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>::__destroy_vector::operator()[abi:se200100]((v39 - 184));
  std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(a12);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>::pair[abi:se200100]<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>&,0>(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v5 = a1 + 24;
  *(v5 + 16) = 0;
  std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>::__init_with_size[abi:se200100]<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>*,std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>*>(v5, *a3, a3[1], (a3[1] - *a3) >> 5);
  return a1;
}

void sub_1BE624D8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 48;
    std::allocator_traits<std::allocator<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>,void,0>(v3 - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
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

void morphun::dialog::DefaultArticleLookupFunction::createPostposition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    v6 = (*(*a2 + 24))(a2);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v13, *v6, *(v6 + 8));
    }

    else
    {
      v8 = *v6;
      v13.__r_.__value_.__r.__words[2] = *(v6 + 16);
      *&v13.__r_.__value_.__l.__data_ = v8;
    }

    v9 = *(a1 + 16);
    npc<morphun::dialog::SemanticFeature const>(v9);
    v10 = (*(*a2 + 32))(a2, v9);
    if (v10)
    {
      std::basic_string<char16_t>::operator=(&v13, v10);
    }

    if (*(a1 + 9) == 1)
    {
      v11 = *(v7 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v7 + 8);
      }

      if (v11)
      {
        v12 = *(a3 + 23);
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(a3 + 8);
        }

        if (v12)
        {
          operator new();
        }
      }
    }

    operator new();
  }

  operator new();
}

void sub_1BE6250B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v21, 0x10B3C40F7FF9C27);
  if (*(v22 - 57) < 0)
  {
    operator delete(*(v22 - 80));
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::DefaultArticleLookupFunction::createPreposition(morphun::dialog::DefaultArticleLookupFunction *this, const morphun::dialog::SemanticFeatureModel_DisplayValue *a2, const morphun::dialog::SpeakableString *a3)
{
  if (*(this + 8))
  {
    v6 = (*(*a2 + 24))(a2);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v12, *v6, *(v6 + 8));
    }

    else
    {
      v8 = *v6;
      v12.__r_.__value_.__r.__words[2] = *(v6 + 16);
      *&v12.__r_.__value_.__l.__data_ = v8;
    }

    v9 = *(this + 2);
    npc<morphun::dialog::SemanticFeature const>(v9);
    v10 = (*(*a2 + 32))(a2, v9);
    if (v10)
    {
      std::basic_string<char16_t>::operator=(&v12, v10);
    }

    if (*(this + 9) == 1)
    {
      v11 = *(v7 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v7 + 8);
      }

      if (v11)
      {
        if (((*(*a3 + 56))(a3) & 1) == 0)
        {
          operator new();
        }
      }
    }

    operator new();
  }

  operator new();
}

void sub_1BE625404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v26, 0x10B3C40F7FF9C27);
  if (*(v27 - 57) < 0)
  {
    operator delete(*(v27 - 80));
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::DefaultArticleLookupFunction::createPreposition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8))
  {
    v6 = (*(*a2 + 24))(a2);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v13, *v6, *(v6 + 8));
    }

    else
    {
      v8 = *v6;
      v13.__r_.__value_.__r.__words[2] = *(v6 + 16);
      *&v13.__r_.__value_.__l.__data_ = v8;
    }

    v9 = *(a1 + 16);
    npc<morphun::dialog::SemanticFeature const>(v9);
    v10 = (*(*a2 + 32))(a2, v9);
    if (v10)
    {
      std::basic_string<char16_t>::operator=(&v13, v10);
    }

    if (*(a1 + 9) == 1)
    {
      v11 = *(v7 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v7 + 8);
      }

      if (v11)
      {
        v12 = *(a3 + 23);
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(a3 + 8);
        }

        if (v12)
        {
          operator new();
        }
      }
    }

    operator new();
  }

  operator new();
}

void sub_1BE6257D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v21, 0x10B3C40F7FF9C27);
  if (*(v22 - 57) < 0)
  {
    operator delete(*(v22 - 80));
  }

  _Unwind_Resume(a1);
}

morphun::dialog::DefaultArticleLookupFunction *morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(morphun::dialog::DefaultArticleLookupFunction *this, const morphun::dialog::SemanticFeatureModel *a2, uint64_t a3, char a4, char a5)
{
  v7 = *a2;
  *this = *a2;
  *(this + *(v7 - 56)) = *(a2 + 1);
  *(this + *(*this - 40)) = *(a2 + 2);
  *(this + 8) = a4;
  *(this + 9) = a5;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"speak");
  v8 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a3 + 8, __p);
  if (a3 + 16 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 56);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  *(this + 2) = v9;
  return this;
}

void morphun::dialog::DefaultArticleLookupFunction::getDisplayFeatureValue(std::basic_string<char16_t> *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*a2 + 32))(a2, a3);
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      v6 = *v4;
      v7 = *(v4 + 8);

      std::basic_string<char16_t>::__init_copy_ctor_external(a1, v6, v7);
    }

    else
    {
      v5 = *v4;
      a1->__r_.__value_.__r.__words[2] = *(v4 + 16);
      *&a1->__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
  }
}

void morphun::analysis::util::AttributeSource::~AttributeSource(morphun::analysis::util::AttributeSource *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::analysis::util::AttributeSource::~AttributeSource(morphun::analysis::util::AttributeSource *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  morphun::analysis::util::AttributeSource_State::~AttributeSource_State((this + 72));
  std::__tree<std::shared_ptr<morphun::analysis::util::AttributeImpl>>::destroy(*(this + 7));
  std::__hash_table<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>>>::~__hash_table(this + 8);
}

void std::__tree<std::shared_ptr<morphun::analysis::util::AttributeImpl>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<morphun::analysis::util::AttributeImpl>>::destroy(*a1);
    std::__tree<std::shared_ptr<morphun::analysis::util::AttributeImpl>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:se200100](v2);
    }

    operator delete(a1);
  }
}

void morphun::analysis::util::AttributeSource::toString(morphun::analysis::util::AttributeSource *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  morphun::Object::toString((this + *(*this - 40)), &v8);
  std::basic_string<char16_t>::append(&v8, &word_1BE80F394, 1uLL);
  v9 = v8;
  memset(&v8, 0, sizeof(v8));
  morphun::analysis::util::AttributeSource::reflectAsString(this, 0, __p);
  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  std::basic_string<char16_t>::append(&v9, v4, v5);
  *a2 = v9;
  memset(&v9, 0, sizeof(v9));
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_1BE625CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::analysis::util::AttributeSource::reflectAsString@<X0>(morphun::analysis::util::AttributeSource *this@<X0>, char a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  npc<std::basic_string<char16_t>>(a3);
  v7[1] = a3;
  v8 = a2;
}

void sub_1BE625DC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::analysis::util::AttributeSource::reflectWith(uint64_t this, morphun::analysis::util::AttributeReflector *a2)
{
  v2 = *(this + 48);
  v3 = (this + 56);
  if (v2 != (this + 56))
  {
    do
    {
      this = (*(*v2[4] + 80))(v2[4], a2);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return this;
}

morphun::analysis::util::AttributeSource *morphun::analysis::util::AttributeSource::AttributeSource(morphun::analysis::util::AttributeSource *this, const morphun::analysis::util::AttributeFactory *a2)
{
  v4 = morphun::analysis::util::AttributeFactory::DEFAULT_ATTRIBUTE_FACTORY(this);

  return morphun::analysis::util::AttributeSource::AttributeSource(this, a2, v4);
}

{
  *(this + 8) = 0u;
  *this = &unk_1F3CD1D20;
  *(this + 24) = 0u;
  *(this + 7) = 0;
  *(this + 10) = 1065353216;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 9) = &unk_1F3CD1B50;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  *(this + 14) = 0;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"AttributeFactory must not be null");
  morphun::util::Validate::notNull<morphun::analysis::util::AttributeFactory const>(a2, __p);
  *(this + 14) = a2;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

morphun::analysis::util::AttributeSource *morphun::analysis::util::AttributeSource::AttributeSource(morphun::analysis::util::AttributeSource *this)
{
  v2 = morphun::analysis::util::AttributeFactory::DEFAULT_ATTRIBUTE_FACTORY(this);

  return morphun::analysis::util::AttributeSource::AttributeSource(this, v2);
}

void sub_1BE625FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  morphun::analysis::util::AttributeSource_State::~AttributeSource_State(v16);
  std::__tree<std::shared_ptr<morphun::analysis::util::AttributeImpl>>::destroy(*v17);
  std::__hash_table<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

morphun::analysis::util::AttributeSource *morphun::analysis::util::AttributeSource::AttributeSource(morphun::analysis::util::AttributeSource *this, morphun::analysis::util::AttributeSource *a2)
{
  *this = &unk_1F3CD1D20;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  v5 = this + 48;
  *(this + 8) = 0;
  *(this + 9) = &unk_1F3CD1B50;
  *(this + 10) = 0;
  v6 = (this + 80);
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  *(this + 14) = 0;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "i");
  morphun::util::Validate::notNull<morphun::analysis::util::AttributeSource>(a2, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  npc<morphun::analysis::util::AttributeSource>(a2);
  if (this != a2)
  {
    *(this + 10) = *(a2 + 10);
    std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,void *> *>>(v4, *(a2 + 3));
  }

  npc<morphun::analysis::util::AttributeSource>(a2);
  if (this != a2)
  {
    std::__tree<std::shared_ptr<morphun::analysis::util::AttributeImpl>>::__assign_multi<std::__tree_const_iterator<std::shared_ptr<morphun::analysis::util::AttributeImpl>,std::__tree_node<std::shared_ptr<morphun::analysis::util::AttributeImpl>,void *> *,long>>(v5, *(a2 + 6), a2 + 7);
  }

  npc<morphun::analysis::util::AttributeSource>(a2);
  if (this != a2)
  {
    std::vector<morphun::analysis::util::AttributeImpl *>::__assign_with_size[abi:se200100]<morphun::analysis::util::AttributeImpl **,morphun::analysis::util::AttributeImpl **>(v6, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 3);
  }

  npc<morphun::analysis::util::AttributeSource>(a2);
  *(this + 14) = *(a2 + 14);
  return this;
}

void sub_1BE626178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  morphun::analysis::util::AttributeSource_State::~AttributeSource_State(v16);
  std::__tree<std::shared_ptr<morphun::analysis::util::AttributeImpl>>::destroy(*v17);
  std::__hash_table<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

void virtual thunk tomorphun::analysis::util::AttributeSource::~AttributeSource(morphun::analysis::util::AttributeSource *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void morphun::analysis::util::AttributeSource::removeAllAttributes(morphun::analysis::util::AttributeSource *this)
{
  *(this + 11) = *(this + 10);
  if (*(this + 4))
  {
    v2 = *(this + 3);
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

    *(this + 3) = 0;
    v4 = *(this + 2);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*(this + 1) + 8 * i) = 0;
      }
    }

    *(this + 4) = 0;
  }

  v7 = *(this + 7);
  v6 = (this + 56);
  std::__tree<std::shared_ptr<morphun::analysis::util::AttributeImpl>>::destroy(v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 1) = v6;
}

uint64_t morphun::analysis::util::AttributeSource::restoreState(uint64_t this, morphun::analysis::util::AttributeSource_State *a2)
{
  if (a2)
  {
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    if (v2 != v3)
    {
      v4 = this;
      v5 = (this + 56);
      do
      {
        v6 = *(v4 + 48);
        if (v6 == v5)
        {
LABEL_18:
          exception = __cxa_allocate_exception(0x38uLL);
          std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"State contains AttributeImpl that is not in in this AttributeSource");
          morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &__dst);
        }

        while (1)
        {
          v7 = *v2 ? *v2 + *(**v2 - 88) : 0;
          if ((*(*v6[4] + 88))(v6[4], v7))
          {
            break;
          }

          v8 = v6[1];
          if (v8)
          {
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = v6[2];
              v10 = *v9 == v6;
              v6 = v9;
            }

            while (!v10);
          }

          v6 = v9;
          if (v9 == v5)
          {
            goto LABEL_18;
          }
        }

        v11 = *v2++;
        v12 = npc<morphun::analysis::util::AttributeImpl>(v11);
        this = (*(*v12 + 72))(v12, v6[4]);
      }

      while (v2 != v3);
    }
  }

  return this;
}

void sub_1BE626464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t npc<morphun::analysis::util::AttributeImpl>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::analysis::util::AttributeSource::hashCode(morphun::analysis::util::AttributeSource *this)
{
  v1 = *(this + 10);
  v2 = *(this + 11);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    if (*v1)
    {
      v4 = *v1 + *(**v1 - 88);
      v3 = (*(*v4 + 40))(v4) - v3 + 32 * v3;
    }

    ++v1;
  }

  while (v1 != v2);
  return v3;
}

BOOL morphun::analysis::util::AttributeSource::operator==(void *a1, void *a2)
{
  if (a1[8] != a2[8] || a1[4] != a2[4])
  {
    return 0;
  }

  v2 = a1[6];
  v3 = a2[6];
  v4 = a1 + 7;
  v5 = a2 + 7;
  v6 = v2 == a1 + 7 || v3 == v5;
  if (v6)
  {
    return 1;
  }

  do
  {
    v8 = v3[4];
    v9 = v2[4];
    result = v8 == v9;
    if (v8 != v9)
    {
      break;
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
        v6 = *v11 == v2;
        v2 = v11;
      }

      while (!v6);
    }

    v12 = v3[1];
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
        v13 = v3[2];
        v6 = *v13 == v3;
        v3 = v13;
      }

      while (!v6);
    }

    result = 1;
    if (v11 == v4)
    {
      break;
    }

    v2 = v11;
    v3 = v13;
  }

  while (v13 != v5);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>>>::__emplace_unique_key_args<unsigned long,unsigned long,morphun::analysis::util::AttributeImpl *&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>>>::find<unsigned long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a3)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= a2)
          {
            v7 %= a2;
          }
        }

        else
        {
          v7 &= a2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t morphun::analysis::util::AttributeSource::copyTo(morphun::analysis::util::AttributeSource *this, morphun::analysis::util::AttributeSource *a2)
{
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  for (i = *(this + 3); i; i = *i)
  {
    v8 = *(i + 1);
    npc<morphun::analysis::util::AttributeSource>(a2);
    v4 = std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::find<std::type_index>(a2 + 1, *(v8 + 8));
    npc<morphun::analysis::util::AttributeSource>(a2);
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"This AttributeSource contains AttributeImpl that is not in the target");
      morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &__dst);
    }

    if (!std::__hash_table<std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>>>::find<unsigned long>(*&v9[0], *(&v9[0] + 1), *(&v8 + 1)))
    {
      (*(**(&v8 + 1) + 72))(*(&v8 + 1), v4[3]);
      *&__dst = *(&v8 + 1);
      std::__hash_table<std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,morphun::analysis::util::AttributeImpl *>>>::__emplace_unique_key_args<unsigned long,unsigned long,morphun::analysis::util::AttributeImpl *&>(v9, *(&v8 + 1));
    }
  }

  return std::__hash_table<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>>>::~__hash_table(v9);
}

uint64_t morphun::dialog::StaticArticleLookupFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24) || (v4 = (*(*a2 + 32))(a2)) == 0)
  {
    v7 = (*(*a2 + 24))(a2);
    v8 = *(v7 + 23);
    if (v8 >= 0)
    {
      v9 = *(v7 + 23);
    }

    else
    {
      v9 = *(v7 + 8);
    }

    if (v9)
    {
      v10 = v7;
      __p = 0;
      v20 = 0;
      v21 = 0;
      v11 = *v7;
      v12 = morphun::util::LocaleUtils::ENGLISH(v7);
      if (v8 >= 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = v11;
      }

      morphun::util::StringViewUtils::lowercase(&__p, v13, v9, v12);
      v14 = *(a1 + 79);
      if ((v14 & 0x8000000000000000) != 0)
      {
        v15 = *(a1 + 56);
        v14 = *(a1 + 64);
      }

      else
      {
        v15 = (a1 + 56);
      }

      v16 = HIBYTE(v21);
      p_p = &__p;
      if (v21 < 0)
      {
        p_p = __p;
        v16 = v20;
      }

      v22[0] = p_p;
      v22[1] = v16;
      v18 = std::u16string_view::starts_with[abi:se200100](v22, v15, v14);
      if (!v18)
      {
        v10 = (*(*a1 + 32))(a1, a2, a1 + 32);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p);
        if (!v18)
        {
          return v10;
        }
      }

      else if (!v18)
      {
        return v10;
      }
    }

    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, &word_1BE80F080);
    v10 = (*(*a1 + 32))(a1, a2, &__p);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }

    return v10;
  }

  v5 = *(*a1 + 32);

  return v5(a1, a2, v4);
}

void sub_1BE6273F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::StaticArticleLookupFunction::~StaticArticleLookupFunction(void **this)
{
  *this = &unk_1F3CD8468;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD8468;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }
}

uint64_t morphun::dialog::StaticArticleLookupFunction::StaticArticleLookupFunction(uint64_t a1, uint64_t a2, _WORD *a3, _WORD *a4)
{
  *a1 = &off_1F3CECA10;
  v8 = morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(a1, off_1F3CDC9B8, a2, 1, 1);
  *v8 = &unk_1F3CD8468;
  *(v8 + 3) = 0;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v8 + 32, a4);
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, a4);
  std::basic_string<char16_t>::append(&__dst, &word_1BE80F394, 1uLL);
  *(a1 + 56) = __dst;
  if (a3)
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, a3);
    v9 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a2 + 8, &__dst);
    if (a2 + 16 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(v9 + 56);
    }

    *(a1 + 24) = v10;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_1BE627618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 79) < 0)
  {
    operator delete(*(v15 + 56));
  }

  if (*(v15 + 55) < 0)
  {
    operator delete(*(v15 + 32));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *morphun::analysis::Analyzer_ReuseStrategy::Analyzer_ReuseStrategy(uint64_t *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  return this;
}

int64x2_t marisa::Keyset::push_back(marisa::Keyset *this, const char *a2, size_t __sz, float a4)
{
  v5 = a2;
  if (!a2 && __sz)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc";
    exception[2] = 0x20000003DLL;
    v59 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc:61: MARISA_NULL_ERROR: (ptr == NULL) && (length != 0)";
    goto LABEL_73;
  }

  if (HIDWORD(__sz))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc";
    exception[2] = 0x70000003ELL;
    v59 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc:62: MARISA_SIZE_ERROR: length > MARISA_UINT32_MAX";
    goto LABEL_73;
  }

  v7 = *(this + 11);
  v8 = v7 >> 8;
  if (v7 >> 8 == *(this + 7))
  {
    if (v8 == *(this + 8))
    {
      if (v7 < 0x100)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2 * v8;
      }

      v10 = operator new[](8 * v9 + 16, MEMORY[0x1E69E5398]);
      if (!v10)
      {
        v63 = 0;
        v60 = __cxa_allocate_exception(0x20uLL);
        *v60 = &unk_1F3CD9BC8;
        v60[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc";
        v60[2] = 0x8000000A9;
        v60[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc:169: MARISA_MEMORY_ERROR: new_blocks.get() == NULL";
      }

      *v10 = 8;
      v10[1] = v9;
      v11 = (v10 + 2);
      if (v9)
      {
        bzero(v10 + 2, 8 * v9);
      }

      v63 = v11;
      if (v7 >= 0x100)
      {
        v12 = 0;
        do
        {
          v13 = *(this + 6);
          v14 = v63;
          v15 = *(v13 + v12);
          *(v13 + v12) = *(v63 + v12);
          *(v14 + v12) = v15;
          v12 += 8;
        }

        while (8 * v8 != v12);
        v11 = v63;
      }

      v16 = *(this + 6);
      *(this + 6) = v11;
      v63 = v16;
      *(this + 8) = v9;
      marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(&v63);
    }

    v17 = operator new[](0x1000uLL, MEMORY[0x1E69E5398]);
    if (!v17)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F3CD9BC8;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc";
      exception[2] = 0x8000000B1;
      v59 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc:177: MARISA_MEMORY_ERROR: new_block.get() == NULL";
      goto LABEL_73;
    }

    v18 = v17;
    bzero(v17, 0x1000uLL);
    v20 = *(this + 6);
    v19 = *(this + 7);
    *(this + 7) = v19 + 1;
    v21 = *(v20 + 8 * v19);
    *(v20 + 8 * v19) = v18;
    if (v21)
    {
      MEMORY[0x1BFB49140](v21, 0x1050C80717B85FCLL);
    }
  }

  if (__sz < 0x401)
  {
    v39 = *(this + 10);
    if (v39 >= __sz)
    {
      v38 = *(this + 9);
    }

    else
    {
      v40 = *(this + 1);
      if (v40 == *(this + 2))
      {
        if (v40)
        {
          v41 = 2 * v40;
        }

        else
        {
          v41 = 1;
        }

        v42 = v41 >> 61 != 0;
        if (8 * v41 >= 0xFFFFFFFFFFFFFFF0)
        {
          v42 = 1;
        }

        if (v42)
        {
          v43 = -1;
        }

        else
        {
          v43 = 8 * v41 + 16;
        }

        v44 = operator new[](v43, MEMORY[0x1E69E5398]);
        if (!v44)
        {
          v63 = 0;
          v62 = __cxa_allocate_exception(0x20uLL);
          *v62 = &unk_1F3CD9BC8;
          v62[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc";
          v62[2] = 0x800000081;
          v62[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc:129: MARISA_MEMORY_ERROR: new_blocks.get() == NULL";
        }

        *v44 = 8;
        v44[1] = v41;
        v45 = (v44 + 2);
        if (v41)
        {
          bzero(v44 + 2, 8 * v41);
        }

        v63 = v45;
        if (v40)
        {
          for (i = 0; i != v40; ++i)
          {
            v47 = v63;
            v48 = *(*this + 8 * i);
            *(*this + 8 * i) = *(v63 + 8 * i);
            *(v47 + 8 * i) = v48;
          }

          v45 = v63;
        }

        v49 = *this;
        *this = v45;
        v63 = v49;
        *(this + 2) = v41;
        marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(&v63);
        v40 = *(this + 1);
      }

      v50 = *this;
      v38 = *(*this + 8 * v40);
      if (!v38)
      {
        v51 = operator new[](0x1000uLL, MEMORY[0x1E69E5398]);
        if (!v51)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          *exception = &unk_1F3CD9BC8;
          exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc";
          exception[2] = 0x80000008ALL;
          v59 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc:138: MARISA_MEMORY_ERROR: new_block.get() == NULL";
LABEL_73:
          exception[3] = v59;
        }

        *(v50 + 8 * v40) = v51;
        v38 = *(*this + 8 * v40);
      }

      *(this + 1) = v40 + 1;
      v39 = 4096;
      *(this + 9) = v38;
      *(this + 10) = 4096;
    }

    *(this + 9) = &v38[__sz];
    *(this + 10) = v39 - __sz;
    if (!__sz)
    {
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  v22 = *(this + 4);
  if (v22 == *(this + 5))
  {
    if (v22)
    {
      v23 = 2 * v22;
    }

    else
    {
      v23 = 1;
    }

    v24 = v23 >> 61 != 0;
    if (8 * v23 >= 0xFFFFFFFFFFFFFFF0)
    {
      v24 = 1;
    }

    if (v24)
    {
      v25 = -1;
    }

    else
    {
      v25 = 8 * v23 + 16;
    }

    v26 = operator new[](v25, MEMORY[0x1E69E5398]);
    if (!v26)
    {
      v63 = 0;
      v61 = __cxa_allocate_exception(0x20uLL);
      *v61 = &unk_1F3CD9BC8;
      v61[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc";
      v61[2] = 0x800000097;
      v61[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc:151: MARISA_MEMORY_ERROR: new_blocks.get() == NULL";
    }

    *v26 = 8;
    v26[1] = v23;
    v27 = (v26 + 2);
    if (v23)
    {
      bzero(v26 + 2, 8 * v23);
    }

    v63 = v27;
    if (v22)
    {
      for (j = 0; j != v22; ++j)
      {
        v29 = *(this + 3);
        v30 = v63;
        v31 = *(v29 + 8 * j);
        *(v29 + 8 * j) = *(v63 + 8 * j);
        *(v30 + 8 * j) = v31;
      }

      v27 = v63;
    }

    v32 = *(this + 3);
    *(this + 3) = v27;
    v63 = v32;
    *(this + 5) = v23;
    marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(&v63);
  }

  v33 = operator new[](__sz, MEMORY[0x1E69E5398]);
  if (!v33)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc";
    exception[2] = 0x80000009FLL;
    v59 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/keyset.cc:159: MARISA_MEMORY_ERROR: new_block.get() == NULL";
    goto LABEL_73;
  }

  v35 = *(this + 3);
  v34 = *(this + 4);
  v36 = v34 + 1;
  *(this + 4) = v34 + 1;
  v37 = *(v35 + 8 * v34);
  *(v35 + 8 * v34) = v33;
  if (v37)
  {
    MEMORY[0x1BFB49140](v37, 0x1000C8077774924);
    v36 = *(this + 4);
  }

  v38 = *(*(this + 3) + 8 * v36 - 8);
LABEL_66:
  v52 = v38;
  v53 = __sz;
  do
  {
    v54 = *v5++;
    *v52++ = v54;
    --v53;
  }

  while (v53);
LABEL_68:
  v55 = *(*(this + 6) + ((*(this + 11) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(this + 11);
  *v55 = v38;
  *(v55 + 8) = __sz;
  *(v55 + 12) = 1065353216;
  v56.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v56.i64[1] = __sz;
  result = vaddq_s64(*(this + 88), v56);
  *(this + 88) = result;
  return result;
}

void sub_1BE627D78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(va);
  _Unwind_Resume(a1);
}

void morphun::analysis::stemmer::NordicStemFilter::NordicStemFilter(morphun::analysis::stemmer::NordicStemFilter *this, const morphun::util::ULocale *a2, morphun::analysis::TokenStream *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(this);
  v4 = *(v3 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = *v3;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(v3 + 8);
  }

  v13[0] = v5;
  v13[1] = v4;
  v6 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v3);
  v7 = *(v6 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *v6;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v6 + 8);
  }

  v13[2] = v8;
  v13[3] = v7;
  v9 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_INDEFINITE(v6);
  v10 = *(v9 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = *v9;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v9 + 8);
  }

  v13[4] = v11;
  v13[5] = v10;
  memset(__p, 0, sizeof(__p));
  std::vector<std::u16string_view>::__init_with_size[abi:se200100]<std::u16string_view const*,std::u16string_view const*>(__p, v13, &v14, 3uLL);
}

void sub_1BE628254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a26);
  a11 = &a14;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a11);
  v40 = &a38;
  v41 = -48;
  v42 = &a38;
  while (1)
  {
    v43 = *v42;
    v42 -= 24;
    if (v43 < 0)
    {
      operator delete(*(v40 - 23));
    }

    v40 = v42;
    v41 += 24;
    if (!v41)
    {
      a27 = &a17;
      std::vector<std::vector<std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:se200100](&a27);
      a27 = &a20;
      std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&a27);
      v44 = (v38 - 136);
      v45 = -96;
      while (1)
      {
        v46 = *(v44 - 1);
        if (v46)
        {
          *v44 = v46;
          operator delete(v46);
        }

        v44 -= 3;
        v45 += 24;
        if (!v45)
        {
          if (__p)
          {
            operator delete(__p);
          }

          _Unwind_Resume(a1);
        }
      }
    }
  }
}

uint64_t morphun::analysis::stemmer::NordicStemFilter::shortenIfEndsWith(std::basic_string<char16_t> *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v14[6] = v3;
  v14[7] = v4;
  v6 = a2;
  while (1)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = a1->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v14[0] = v11;
    v14[1] = size;
    if (std::u16string_view::ends_with[abi:se200100](v14, v8, v9))
    {
      break;
    }

    v6 += 16;
    if (v6 == a3)
    {
      return 0;
    }
  }

  v13 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v13 & 0x80u) != 0)
  {
    v13 = a1->__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::resize(a1, v13 - 1, 0);
  return 1;
}

uint64_t morphun::analysis::stemmer::NordicStemFilter::removeIfEndsWith(std::basic_string<char16_t> *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v14[6] = v3;
  v14[7] = v4;
  v6 = a2;
  while (1)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = a1->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v14[0] = v11;
    v14[1] = size;
    if (std::u16string_view::ends_with[abi:se200100](v14, v8, v9))
    {
      break;
    }

    v6 += 16;
    if (v6 == a3)
    {
      return 0;
    }
  }

  v13 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v13 & 0x80u) != 0)
  {
    v13 = a1->__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::resize(a1, v13 - *(v6 + 8), 0);
  return 1;
}

uint64_t morphun::analysis::stemmer::NordicStemFilter::isVowel(morphun::dictionary::PhraseProperties *a1)
{
  v7 = 1;
  LODWORD(__p) = a1;
  v1 = morphun::dictionary::PhraseProperties::DEFAULT_MATCHABLE_SET(a1);
  v2 = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_END(v1);
  memset(v5, 0, sizeof(v5));
  isStartsWithUnicodeSets = morphun::dictionary::PhraseProperties::isStartsWithUnicodeSets(&__p, v1, v2, v5);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  return isStartsWithUnicodeSets;
}

void sub_1BE628550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::analysis::stemmer::NordicStemFilter::getR1Start(uint64_t result)
{
  if (*(result + 23) >= 0)
  {
    v1 = *(result + 23);
  }

  else
  {
    v1 = *(result + 8);
  }

  if (v1 >= 1)
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = *(v2 + 23);
      v6 = v5;
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(v2 + 8);
      }

      if (v5 < v3)
      {
        __break(1u);
        return result;
      }

      v7 = v6 >= 0 ? v2 : *v2;
      result = morphun::analysis::stemmer::NordicStemFilter::isVowel(*(v7 + 2 * v3));
      if ((result & 1) == 0 && ((v4 ^ 1) & 1) == 0)
      {
        break;
      }

      v4 |= result;
      if ((v1 & 0x7FFFFFFF) == ++v3)
      {
        return v1;
      }
    }

    if (v3 >= 3)
    {
      return (v3 + 1);
    }

    else
    {
      return 3;
    }
  }

  return v1;
}

void morphun::dialog::language::RoCommonConceptFactory::~RoCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC330);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC330);
}

uint64_t morphun::util::MemoryMappedFile::MemoryMappedFile(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  memset(&v17, 0, sizeof(v17));
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  morphun::util::StringViewUtils::convert(&v17, a2, v5);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v17;
  }

  else
  {
    v6 = v17.__r_.__value_.__r.__words[0];
  }

  v7 = open(v6, 0);
  v16 = v7;
  if (v7 < 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v15, "C", v2);
    morphun::exception::IOException::IOException(exception, &v15.st_dev);
  }

  memset(&v15, 0, sizeof(v15));
  if (fstat(v7, &v15) < 0 || (v15.st_mode & 0xF000) != 0x8000)
  {
    v11 = __cxa_allocate_exception(0x38uLL);
    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v14, v2, L" is not a regular file");
    morphun::exception::IOException::IOException(v11, &v14);
  }

  st_size = v15.st_size;
  *(a1 + 8) = v15.st_size;
  v9 = mmap(0, st_size, 1, 2, v16, 0);
  if (v9 == -1)
  {
    v13 = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v14, "M", v2);
    morphun::exception::IOException::IOException(v13, &v14);
  }

  *a1 = v9;
  *(a1 + 24) = 1;
  morphun::util::AutoFileDescriptor::~AutoFileDescriptor(&v16);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1BE628890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      morphun::util::AutoFileDescriptor::~AutoFileDescriptor((v23 - 60));
      if (*(v23 - 33) < 0)
      {
        operator delete(*(v23 - 56));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t morphun::util::MemoryMappedFile::MemoryMappedFile(uint64_t this, char *a2, uint64_t a3)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void morphun::util::MemoryMappedFile::~MemoryMappedFile(morphun::util::MemoryMappedFile *this)
{
  if (*(this + 24) == 1)
  {
    v2 = *this;
    if (*this)
    {
      munmap(v2, *(this + 1));
    }
  }
}

void morphun::grammar::synthesis::CsGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::CsGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, L"gender");
  operator new();
}

void sub_1BE628C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

uint64_t morphun::tokenizer::locale::th::ThTokenExtractorIterator::reset(uint64_t a1, const UniChar *a2, CFIndex a3)
{
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  morphun::tokenizer::ICUTokenExtractorIterator::reset(a1 + 24);
  v6 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
  v7 = *(a1 + 16);
  ThaiTokenizerSetStringWithRange();
  CFRelease(v6);
  *(a1 + 64) = xmmword_1BE695FB0;
  *(a1 + 80) = 0;

  return morphun::tokenizer::locale::th::ThTokenExtractorIterator::calculateNextForeignRange(a1);
}

uint64_t morphun::tokenizer::locale::th::ThTokenExtractorIterator::calculateNextForeignRange(morphun::tokenizer::locale::th::ThTokenExtractorIterator *this)
{
  v2 = *(this + 20);
  v3 = MEMORY[0x1BFB49AA0](*(*(this + 1) + 152), *(this + 6) + 2 * v2, (*(this + 14) - v2), 1) + v2;
  *(this + 19) = v3;
  v4 = *(this + 7);
  if (v4 > v3)
  {
    LODWORD(v4) = MEMORY[0x1BFB49AA0](*(*(this + 1) + 152), *(this + 6) + 2 * v3, (v4 - v3), 0) + v3;
    v3 = *(this + 19);
  }

  v5 = *(this + 7);
  *(this + 20) = v4;
  if (v5 < v3)
  {
    std::__throw_out_of_range[abi:se200100]("string_view::substr");
  }

  v6 = *(this + 6) + 2 * v3;

  return morphun::tokenizer::ICUTokenExtractorIterator::reset(this + 24);
}

uint64_t morphun::tokenizer::locale::th::ThTokenExtractorIterator::getNextBoundary(morphun::tokenizer::locale::th::ThTokenExtractorIterator *this)
{
  v1 = *(this + 16);
  v2 = *(this + 7);
  if (v1 == v2)
  {
    if (v2 == v1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v1;
    }
  }

  v5 = *(this + 20);
  if (*(this + 19) > v1 || v1 >= v5)
  {
    if (v1 >= v5)
    {
      morphun::tokenizer::locale::th::ThTokenExtractorIterator::calculateNextForeignRange(this);
      v1 = *(this + 16);
    }

    result = *(this + 18);
    if (v1 >= result)
    {
      while (1)
      {
        v7 = *(this + 2);
        if (!ThaiTokenizerAdvanceToNextToken())
        {
          break;
        }

        v8 = *(this + 2);
        CurrentTokenRange = ThaiTokenizerGetCurrentTokenRange();
        result = (CurrentTokenRange + v10);
        *(this + 17) = CurrentTokenRange;
        *(this + 18) = result;
        if (*(this + 16) < result)
        {
          goto LABEL_20;
        }
      }

      result = *(this + 18);
LABEL_20:
      v11 = *(this + 19);
      if (result > v11)
      {
        *(this + 16) = v11;
        return v11;
      }
    }

    else if (*(this + 19) <= result)
    {
      goto LABEL_13;
    }

    *(this + 16) = result;
    return result;
  }

LABEL_13:

  return morphun::tokenizer::locale::th::ThTokenExtractorIterator::getNextForeignBoundary(this);
}

uint64_t morphun::tokenizer::locale::th::ThTokenExtractorIterator::getNextForeignBoundary(morphun::tokenizer::locale::th::ThTokenExtractorIterator *this)
{
  v2 = *(this + 16);
  result = *(this + 19);
  if (v2 >= result)
  {
    v4 = *(this + 4);
    v5 = ubrk_next();
    result = *(this + 20);
    if (v5 <= result)
    {
      result = (*(this + 19) + v5);
    }
  }

  *(this + 16) = result;
  return result;
}

void morphun::tokenizer::locale::th::ThTokenExtractorIterator::~ThTokenExtractorIterator(morphun::tokenizer::locale::th::ThTokenExtractorIterator *this)
{
  morphun::tokenizer::locale::th::ThTokenExtractorIterator::~ThTokenExtractorIterator(this);

  JUMPOUT(0x1BFB49160);
}

{
  v2 = *(this + 2);
  v3 = morphun::tokenizer::locale::th::CLASS_MUTEX(this);
  std::mutex::lock(v3);
  if (v2)
  {
    v4 = morphun::tokenizer::locale::th::gTokenizerCache;
    if (morphun::tokenizer::locale::th::gTokenizerCache && (v5 = *(morphun::tokenizer::locale::th::gTokenizerCache + 8), v6 = (v5 - *morphun::tokenizer::locale::th::gTokenizerCache) >> 3, v6 <= 0x40))
    {
      v7 = *(morphun::tokenizer::locale::th::gTokenizerCache + 16);
      if (v5 >= v7)
      {
        v8 = v7 - *morphun::tokenizer::locale::th::gTokenizerCache;
        if (v8 >> 2 <= v6 + 1)
        {
          v9 = v6 + 1;
        }

        else
        {
          v9 = v8 >> 2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:se200100]();
      }

      if (!v5)
      {
        __break(1u);
        JUMPOUT(0x1BE62919CLL);
      }

      *v5 = v2;
      *(v4 + 8) = v5 + 1;
    }

    else
    {
      ThaiTokenizerDestroy();
    }
  }

  std::mutex::unlock(v3);
  morphun::tokenizer::ICUTokenExtractorIterator::~ICUTokenExtractorIterator((this + 24));
}

uint64_t morphun::tokenizer::locale::th::CLASS_MUTEX(morphun::tokenizer::locale::th *this)
{
  {
    operator new();
  }

  result = morphun::tokenizer::locale::th::CLASS_MUTEX(void)::classMutex;
  if (!morphun::tokenizer::locale::th::CLASS_MUTEX(void)::classMutex)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::dictionary::Inflector::~Inflector(morphun::dictionary::Inflector *this)
{
  *this = &unk_1F3CD9850;
  morphun::dictionary::Inflector_MMappedDictionary::~Inflector_MMappedDictionary((this + 8));

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD9850;
  morphun::dictionary::Inflector_MMappedDictionary::~Inflector_MMappedDictionary((this + 8));
}

uint64_t morphun::dictionary::Inflector::Inflector(uint64_t a1, morphun::util::MemoryMappedFile *a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F3CD9850;
  v8 = a1 + 8;
  v26 = 0;
  morphun::util::MemoryMappedFile::read<long long>(a2, &v26);
  if (v26 != 3)
  {
    v12 = v26;
    exception = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v21, "I", a3);
    std::basic_string<char16_t>::append(&v21, L" has an incompatible version ", 0x1DuLL);
    v22 = v21;
    memset(&v21, 0, sizeof(v21));
    morphun::util::StringUtils::to_u16string(v12, &v20);
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v20;
    }

    else
    {
      v14 = v20.__r_.__value_.__r.__words[0];
    }

    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v20.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v22, v14, size);
    v23 = v22;
    memset(&v22, 0, sizeof(v22));
    std::basic_string<char16_t>::append(&v23, L" and expected version ", 0x16uLL);
    v24 = v23;
    memset(&v23, 0, sizeof(v23));
    morphun::util::StringUtils::to_u16string(3, &v19);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v19;
    }

    else
    {
      v16 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v19.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v24, v16, v17);
    v25 = v24;
    memset(&v24, 0, sizeof(v24));
    morphun::exception::IncompatibleVersionException::IncompatibleVersionException(exception, &v25);
  }

  v23.__r_.__value_.__s.__data_[0] = 0;
  morphun::util::MemoryMappedFile::read<short>(a2, &v23);
  if (v23.__r_.__value_.__s.__data_[0] != 1)
  {
    v18 = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v24, "I", a3);
    std::basic_string<char16_t>::append(&v24, L" was built for a different architecture", 0x27uLL);
    v25 = v24;
    memset(&v24, 0, sizeof(v24));
    morphun::exception::IOException::IOException(v18, &v25);
  }

  morphun::util::MemoryMappedFile::read<char *>(a2, &v25, 2uLL);
  morphun::util::ULocale::ULocale(v8, a4 + 16);
  LODWORD(v25.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<int>(a2, &v25);
  data_low = SLODWORD(v25.__r_.__value_.__l.__data_);
  *(a1 + 136) = v25.__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[0] = 0;
  morphun::util::MemoryMappedFile::read<long long *>(a2, &v25, 8 * data_low);
  *(a1 + 144) = v25.__r_.__value_.__r.__words[0];
  morphun::dictionary::metadata::StringContainer::StringContainer((a1 + 152), a2);
  *(a1 + 208) = 0;
  *(a1 + 200) = a4;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  morphun::util::MemoryMappedFile::read<int>(a2, (a1 + 208));
  morphun::util::MemoryMappedFile::read<int>(a2, (a1 + 212));
  morphun::util::MemoryMappedFile::read<unsigned long long *>(a2, (a1 + 216), 8 * *(a1 + 208));
  *(a1 + 224) = ~(-1 << *(a1 + 212));
  LOBYTE(v25.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v25);
  *(a1 + 240) = v25.__r_.__value_.__l.__data_;
  LOBYTE(v25.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v25);
  *(a1 + 241) = v25.__r_.__value_.__l.__data_;
  LOBYTE(v25.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v25);
  *(a1 + 242) = v25.__r_.__value_.__l.__data_;
  LOBYTE(v25.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v25);
  *(a1 + 243) = v25.__r_.__value_.__l.__data_;
  LODWORD(v25.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<int>(a2, &v25);
  v10 = SLODWORD(v25.__r_.__value_.__l.__data_);
  *(a1 + 244) = v25.__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[0] = 0;
  morphun::util::MemoryMappedFile::read<int *>(a2, &v25, 4 * v10);
  *(a1 + 248) = v25.__r_.__value_.__r.__words[0];
  morphun::dictionary::metadata::MarisaTrie<int>::MarisaTrie(a1 + 256, a2);
  morphun::dictionary::metadata::MarisaTrie<int>::MarisaTrie(a1 + 328, a2);
  morphun::dictionary::metadata::CompressedArray<int>::CompressedArray((a1 + 400), a2);
  LOBYTE(v25.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v25);
  *(a1 + 432) = v25.__r_.__value_.__l.__data_;
  LOBYTE(v25.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v25);
  *(a1 + 433) = v25.__r_.__value_.__l.__data_;
  LOBYTE(v25.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v25);
  *(a1 + 434) = v25.__r_.__value_.__l.__data_;
  LOBYTE(v25.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v25);
  *(a1 + 435) = v25.__r_.__value_.__l.__data_;
  LOBYTE(v25.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, &v25);
  *(a1 + 436) = v25.__r_.__value_.__l.__data_;
  *(a1 + 437) = *(a1 + 400) != 0;
  return a1;
}

void sub_1BE62982C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v42 - 73) < 0)
  {
    operator delete(*(v42 - 96));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
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
    if ((v41 & 1) == 0)
    {
LABEL_18:
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_18;
  }

  __cxa_free_exception(v40);
  goto LABEL_18;
}

void morphun::dictionary::Inflector::getInflectionPatternsForWord(uint64_t a1, const std::string::value_type *a2, unint64_t a3, void *a4)
{
  v6 = a2;
  memset(&__p, 0, sizeof(__p));
  if (morphun::dictionary::DictionaryMetaData_MMappedDictionary::getWordPropertyInternalIdentifiers(*(a1 + 200), &__p, a2, a3, *(*(a1 + 200) + 424)))
  {
    begin = __p.__begin_;
    goto LABEL_3;
  }

  if (morphun::util::StringViewUtils::isAllLowerCase(v6, a3))
  {
LABEL_18:
    begin = __p.__begin_;
    goto LABEL_19;
  }

  v20[0] = 0;
  v20[1] = 0;
  *&v21 = 0;
  morphun::util::StringViewUtils::lowercase(v20, v6, a3, a1 + 8);
  if ((SBYTE7(v21) & 0x80u) == 0)
  {
    v15 = BYTE7(v21);
  }

  else
  {
    v15 = v20[1];
  }

  if ((SBYTE7(v21) & 0x80u) == 0)
  {
    v16 = v20;
  }

  else
  {
    v16 = v20[0];
  }

  if (a3 != v15)
  {
LABEL_35:
    v19 = morphun::dictionary::DictionaryMetaData_MMappedDictionary::getWordPropertyInternalIdentifiers(*(a1 + 200), &__p, v16, v15, *(*(a1 + 200) + 424)) != 0;
    if ((BYTE7(v21) & 0x80) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v15)
  {
    v17 = v15;
    v18 = v16;
    while (*v18 == *v6)
    {
      ++v6;
      v18 = (v18 + 2);
      if (!--v17)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_35;
  }

LABEL_33:
  v19 = 0;
  if ((BYTE7(v21) & 0x80) == 0)
  {
    goto LABEL_37;
  }

LABEL_36:
  operator delete(v20[0]);
LABEL_37:
  begin = __p.__begin_;
  if (!v19)
  {
LABEL_19:
    if (begin)
    {
      __p.__end_ = begin;
      operator delete(begin);
    }

    return;
  }

LABEL_3:
  end = __p.__end_;
  if (begin == __p.__end_)
  {
    goto LABEL_19;
  }

  while (1)
  {
    morphun::dictionary::Inflector_MMappedDictionary::getInflectionPattern(v20, a1 + 8, *begin);
    v10 = a4[1];
    v11 = a4[2];
    if (v10 >= v11)
    {
      break;
    }

    if (!v10)
    {
      goto LABEL_40;
    }

    *v10 = *v20;
    *(v10 + 16) = v21;
    *(v10 + 32) = v22;
    a4[1] = v10 + 40;
    if (++begin == end)
    {
      goto LABEL_18;
    }
  }

  v12 = 1 - 0x3333333333333333 * ((v10 - *a4) >> 3);
  if (v12 > 0x666666666666666)
  {
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v13 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *a4) >> 3);
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x333333333333333)
  {
    v14 = 0x666666666666666;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dictionary::Inflector_InflectionPattern>>(v14);
  }

LABEL_40:
  __break(1u);
}

void sub_1BE629C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

unint64_t morphun::dictionary::Inflector::getInflectionPatternsBySuffix(void *a1, unsigned __int8 *a2, const std::string::value_type *a3, uint64_t a4)
{
  if ((a2[437] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string<std::u16string_view,0>(&v9, "I", 0x3FuLL);
    morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &v9);
  }

  result = morphun::dictionary::metadata::MarisaTrie<int>::find((a2 + 328), a3, a4);
  if (HIDWORD(result))
  {
    v7 = result;
    morphun::dictionary::metadata::CompressedArray<int>::extractValue(result, a2[243], a2[242]);
    result = morphun::dictionary::metadata::CompressedArray<int>::extractValue(v7, 0, a2[243]);
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dictionary::Inflector_InflectionPattern>>(result);
      }

      std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return result;
}