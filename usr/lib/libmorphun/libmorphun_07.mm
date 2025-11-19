void sub_1BE5F27BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  (*(*v22 + 16))(v22);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::DefinitenessDisplayFunction::~DefinitenessDisplayFunction(char **this)
{
  *this = &unk_1F3CD84E0;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(this[9]);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(this[6]);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD84E0;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(this[9]);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(this[6]);
}

void morphun::dialog::DefinitenessDisplayFunction::getArticles(void *a1, morphun::lang::features::LanguageGrammarFeatures *a2, unsigned __int16 *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  morphun::lang::features::LanguageGrammarFeatures::getLanguageGrammarFeatures(a2, &v37);
  morphun::lang::features::LanguageGrammarFeatures::getFeatures(&v37, &v38);
  v37.__r_.__value_.__r.__words[0] = &unk_1F3CD94A8;
  v7 = v38;
  if (v38 == v39)
  {
LABEL_60:
    std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(v39[0]);
    return;
  }

  while (1)
  {
    if (*(v7 + 63) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v37, v7[5], v7[6]);
    }

    else
    {
      v37 = *(v7 + 5);
    }

    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    v9 = a4 == size;
    v10 = a4 != size || a4 == 0;
    if (!v10)
    {
      v11 = v37.__r_.__value_.__r.__words[0];
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &v37;
      }

      v12 = a4 - 1;
      v13 = a3;
      do
      {
        v15 = *v13++;
        v14 = v15;
        v17 = v11->__r_.__value_.__s.__data_[0];
        v11 = (v11 + 2);
        v16 = v17;
        v19 = v12-- != 0;
        v9 = v16 == v14;
      }

      while (v16 == v14 && v19);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (v9)
    {
      break;
    }

    v20 = v7[1];
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v7[2];
        v10 = *v21 == v7;
        v7 = v21;
      }

      while (!v10);
    }

    v7 = v21;
    if (v21 == v39)
    {
      goto LABEL_60;
    }
  }

  memset(&v37, 0, sizeof(v37));
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__init_with_size[abi:se200100]<morphun::lang::features::LanguageGrammarFeatures_Feature*,morphun::lang::features::LanguageGrammarFeatures_Feature*>(&v37, v7[8], v7[9], 0x6DB6DB6DB6DB6DB7 * (v7[9] - v7[8]));
  v23 = v37.__r_.__value_.__l.__size_;
  v22 = v37.__r_.__value_.__r.__words[0];
  if (v37.__r_.__value_.__r.__words[0] == v37.__r_.__value_.__l.__size_)
  {
    v24 = &word_1BE80F394;
LABEL_48:
    v36.__r_.__value_.__r.__words[0] = &v37;
    std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&v36);
    memset(&v37, 0, sizeof(v37));
    std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__init_with_size[abi:se200100]<morphun::lang::features::LanguageGrammarFeatures_Feature*,morphun::lang::features::LanguageGrammarFeatures_Feature*>(&v37, v7[8], v7[9], 0x6DB6DB6DB6DB6DB7 * (v7[9] - v7[8]));
    v30 = v37.__r_.__value_.__l.__size_;
    for (i = v37.__r_.__value_.__r.__words[0]; i != v30; i += 56)
    {
      (*(*i + 24))(&__p, i);
      if (*v24)
      {
        v31 = 0;
        do
        {
          v32 = v31 + 1;
        }

        while (v24[++v31]);
      }

      else
      {
        v32 = 0;
      }

      std::basic_string<char16_t>::append(&__p, v24, v32);
      v36 = __p;
      memset(&__p, 0, sizeof(__p));
      std::__tree<std::basic_string<char16_t>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t>>(a1, &v36);
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v36.__r_.__value_.__r.__words[0] = &v37;
    std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&v36);
    goto LABEL_60;
  }

  v24 = &word_1BE80F394;
  v25 = v37.__r_.__value_.__r.__words[0];
  while (1)
  {
    (*(*v25 + 24))(&v36, v25);
    v26 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = v36.__r_.__value_.__l.__size_;
    }

    if (v26)
    {
      break;
    }

    v28 = 0;
    if ((*(&v36.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_43;
    }

LABEL_42:
    operator delete(v36.__r_.__value_.__l.__data_);
LABEL_43:
    if (v28)
    {
      v24 = &word_1BE80F080;
      goto LABEL_48;
    }

    v25 += 56;
    v22 += 56;
    if (v25 == v23)
    {
      goto LABEL_48;
    }
  }

  (*(*v25 + 24))(&__p, v25);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_61;
    }

    v27 = *&v34[2 * SHIBYTE(__p.__r_.__value_.__r.__words[2])];
LABEL_41:
    v28 = v27 == 32;
    if ((*(&v36.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (__p.__r_.__value_.__l.__size_)
  {
    v27 = *(__p.__r_.__value_.__r.__words[0] + 2 * __p.__r_.__value_.__l.__size_ - 2);
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_41;
  }

LABEL_61:
  __break(1u);
}

void sub_1BE5F2CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(*(v24 - 104));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v23);
  _Unwind_Resume(a1);
}

void *morphun::dialog::DefinitenessDisplayFunction::DefinitenessDisplayFunction(void *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, unsigned __int16 *a7, uint64_t a8)
{
  *a1 = &unk_1F3CD84E0;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "d");
  v16 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a2 + 8, __p);
  if (a2 + 16 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v16 + 56);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  a1[1] = v17;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"speak");
  v18 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a2 + 8, __p);
  if (a2 + 16 == v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v18 + 56);
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  a1[2] = v19;
  a1[3] = a3;
  a1[4] = a6;
  morphun::dialog::DefinitenessDisplayFunction::getArticles(a1 + 5, (a2 + 104), a4, a5);
  morphun::dialog::DefinitenessDisplayFunction::getArticles(a1 + 8, (a2 + 104), a7, a8);
  return a1;
}

void *morphun::dialog::DefinitenessDisplayFunction::DefinitenessDisplayFunction(void *a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, uint64_t a5, unsigned __int16 *a6, unsigned __int16 *a7, uint64_t a8)
{
  v15 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a2 + 8, a3);
  if (a2 + 16 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v15 + 56);
  }

  npc<morphun::dialog::SemanticFeature const>(v16);
  DefaultFeatureFunction = morphun::dialog::SemanticFeatureModel::getDefaultFeatureFunction(a2, v16);
  v18 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a2 + 8, a6);
  if (a2 + 16 == v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v18 + 56);
  }

  npc<morphun::dialog::SemanticFeature const>(v19);
  v20 = morphun::dialog::SemanticFeatureModel::getDefaultFeatureFunction(a2, v19);

  return morphun::dialog::DefinitenessDisplayFunction::DefinitenessDisplayFunction(a1, a2, DefaultFeatureFunction, a4, a5, v20, a7, a8);
}

void morphun::exception::ICUException::~ICUException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

const char *morphun::exception::ICUException::ICUException(morphun::exception::ICUException *this, UErrorCode code)
{
  result = u_errorName(code);
  if (result)
  {
    v4 = result;
    v5 = strlen(result);
    morphun::util::StringViewUtils::to_u16string(v4, v5, &__p);
    morphun::exception::Throwable::Throwable(this, &__p);
    *this = &unk_1F3CD0B50;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    *this = &unk_1F3CD0B80;
    return this;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BE5F30BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *morphun::exception::ICUException::ICUException(void *a1, UErrorCode code, uint64_t a3)
{
  result = u_errorName(code);
  if (result)
  {
    v6 = result;
    v7 = strlen(result);
    morphun::util::StringViewUtils::to_u16string(v6, v7, &v11);
    std::basic_string<char16_t>::append(&v11, ":", 2uLL);
    v12 = v11;
    memset(&v11, 0, sizeof(v11));
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    std::basic_string<char16_t>::append(&v12, v9, v10);
    __p = v12;
    memset(&v12, 0, sizeof(v12));
    morphun::exception::Throwable::Throwable(a1, &__p);
    *a1 = &unk_1F3CD0B50;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    *a1 = &unk_1F3CD0B80;
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BE5F3214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

  _Unwind_Resume(exception_object);
}

void morphun::dictionary::metadata::CharsetConverter::~CharsetConverter(morphun::dictionary::metadata::CharsetConverter *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dictionary::metadata::CharsetConverter::~CharsetConverter(morphun::dictionary::metadata::CharsetConverter *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  v3 = *(this + 1);
  ucnv_close();
}

morphun::dictionary::metadata::CharsetConverter *morphun::dictionary::metadata::CharsetConverter::CharsetConverter(morphun::dictionary::metadata::CharsetConverter *this, const char *a2, uint64_t a3)
{
  v5 = *a2;
  *this = *a2;
  *(this + *(v5 - 40)) = *(a2 + 1);
  *(this + 1) = 0;
  *(this + 4) = 0;
  v16 = 0;
  npc<char const>(a3);
  *(this + 1) = ucnv_open();
  if (v16 >= 1)
  {
    result = __cxa_allocate_exception(0x38uLL);
    if (a3)
    {
      v9 = result;
      v10 = a3;
      v11 = v16;
      v12 = strlen(v10);
      morphun::util::StringViewUtils::to_u16string(v10, v12, &v14);
      std::basic_string<char16_t>::insert(&v14, L"Could not initialize encoding conversion for encoding ", 0x36, v13);
      v15 = v14;
      memset(&v14, 0, sizeof(v14));
      morphun::exception::ICUException::ICUException(v9, v11, &v15);
    }

    __break(1u);
  }

  else
  {
    Type = ucnv_getType();
    *(this + 4) = Type;
    if (Type == 4)
    {
      v7 = *(this + 1);
      ucnv_close();
      *(this + 1) = 0;
    }

    return this;
  }

  return result;
}

void sub_1BE5F3508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t npc<char const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

morphun::dictionary::metadata::CharsetConverter *morphun::dictionary::metadata::CharsetConverter::CharsetConverter(morphun::dictionary::metadata::CharsetConverter *this, const char *a2)
{
  *this = &unk_1F3CD9898;
  *(this + 1) = 0;
  *(this + 4) = 0;
  v14 = 0;
  npc<char const>(a2);
  *(this + 1) = ucnv_open();
  if (v14 >= 1)
  {
    result = __cxa_allocate_exception(0x38uLL);
    if (a2)
    {
      v7 = result;
      v8 = a2;
      v9 = v14;
      v10 = strlen(v8);
      morphun::util::StringViewUtils::to_u16string(v8, v10, &v12);
      std::basic_string<char16_t>::insert(&v12, L"Could not initialize encoding conversion for encoding ", 0x36, v11);
      v13 = v12;
      memset(&v12, 0, sizeof(v12));
      morphun::exception::ICUException::ICUException(v7, v9, &v13);
    }

    __break(1u);
  }

  else
  {
    Type = ucnv_getType();
    *(this + 4) = Type;
    if (Type == 4)
    {
      v5 = *(this + 1);
      ucnv_close();
      *(this + 1) = 0;
    }

    return this;
  }

  return result;
}

void sub_1BE5F3700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void virtual thunk tomorphun::dictionary::metadata::CharsetConverter::~CharsetConverter(morphun::dictionary::metadata::CharsetConverter *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

uint64_t npc<std::string>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

std::basic_string<char16_t> *morphun::dictionary::metadata::CharsetConverter::decode(std::basic_string<char16_t> *result, uint64_t a2, const char *a3, int32_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = result->__r_.__value_.__r.__words[2];
  if (v7 != 6)
  {
    if (v7 == 4)
    {
      if ((a4 & 0x80000000) == 0 && (a3 || !a4))
      {
        v8 = *MEMORY[0x1E69E9840];

        return morphun::util::StringViewUtils::convert(a2, a3, a4);
      }

LABEL_18:
      __break(1u);
      return result;
    }

    goto LABEL_15;
  }

  if (a4)
  {
LABEL_15:
    size = result->__r_.__value_.__l.__size_;
    ucnv_safeClone();
    npc<std::basic_string<char16_t>>(a2);
    std::basic_string<char16_t>::resize(a2, a4, 0);
    if (*(a2 + 23) < 0)
    {
      v13 = *a2;
    }

    v14 = ucnv_toUChars();
    std::basic_string<char16_t>::resize(a2, v14, 0);
    result = ucnv_close();
    v15 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = a4 >> 1;
  v10 = npc<std::basic_string<char16_t>>(a2);
  std::basic_string<char16_t>::resize(v10, v9, 0);
  result = npc<std::basic_string<char16_t>>(a2);
  if (!a3 && a4)
  {
    goto LABEL_18;
  }

  v11 = *MEMORY[0x1E69E9840];

  return std::basic_string<char16_t>::__assign_external(a2, a3, v9);
}

void sub_1BE5F3B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    __cxa_free_exception(v16);
  }

  _Unwind_Resume(exception_object);
}

void morphun::analysis::util::AttributeRegistrationReflector::~AttributeRegistrationReflector(morphun::analysis::util::AttributeRegistrationReflector *this)
{
  *this = &unk_1F3CD1AE8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v1);
  }

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD1AE8;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v1);
  }
}

uint64_t *morphun::analysis::util::AttributeRegistrationReflector::AttributeRegistrationReflector(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a2;
  *result = *a2;
  *(result + *(v4 - 64)) = a2[1];
  *(result + *(*result - 40)) = a2[2];
  v6 = *a4;
  v5 = a4[1];
  result[1] = a3;
  result[2] = v6;
  result[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *morphun::analysis::util::AttributeRegistrationReflector::AttributeRegistrationReflector(void *result, uint64_t a2, void *a3)
{
  *result = &unk_1F3CD1AE8;
  result[1] = a2;
  v3 = a3[1];
  result[2] = *a3;
  result[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void mdv_create(morphun::dialog::SemanticFeatureModel *a1, uint64_t a2, const __CFDictionary *a3)
{
  if (a1)
  {
    morphun::dialog::SemanticUtils::to_constraintMap(v4, a1, a3);
    operator new();
  }

  exception = __cxa_allocate_exception(0x38uLL);
  morphun::exception::NullPointerException::NullPointerException(exception);
}

void sub_1BE5F3EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  __cxa_free_exception(v17);
  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v20, v16, v21);
    __cxa_end_catch();
    JUMPOUT(0x1BE5F3E94);
  }

  _Unwind_Resume(a1);
}

uint64_t mdv_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void morphun::dialog::SemanticFeature::~SemanticFeature(morphun::dialog::SemanticFeature *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dialog::SemanticFeature::~SemanticFeature(morphun::dialog::SemanticFeature *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 6));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t morphun::dialog::SemanticFeature::SemanticFeature(uint64_t a1, uint64_t *a2, std::basic_string<char16_t> *__str, int a4, uint64_t a5, int a6)
{
  v6 = a6;
  v10 = *a2;
  *a1 = *a2;
  *(a1 + *(v10 - 40)) = a2[1];
  *(a1 + 48) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 64) = 0;
  if (a4 != 1)
  {
    if (*(a5 + 16))
    {
      exception = __cxa_allocate_exception(0x38uLL);
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "F");
      morphun::util::StringUtils::to_u16string(a4, &v16);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v16;
      }

      else
      {
        v13 = v16.__r_.__value_.__r.__words[0];
      }

      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::append(&__dst, v13, size);
      v18 = __dst;
      memset(&__dst, 0, sizeof(__dst));
      std::basic_string<char16_t>::append(&v18, " ", 0x1FuLL);
      v19 = v18;
      memset(&v18, 0, sizeof(v18));
      morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &v19);
    }

    if (a6)
    {
      v15 = __cxa_allocate_exception(0x38uLL);
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v19, "O");
      morphun::exception::IllegalArgumentException::IllegalArgumentException(v15, &v19);
    }
  }

  std::basic_string<char16_t>::operator=((a1 + 16), __str);
  *(a1 + 8) = a4;
  if (a1 + 40 != a5)
  {
    std::__tree<std::basic_string<char16_t>>::__assign_multi<std::__tree_const_iterator<std::basic_string<char16_t>,std::__tree_node<std::basic_string<char16_t>,void *> *,long>>((a1 + 40), *a5, (a5 + 8));
  }

  *(a1 + 64) = v6;
  return a1;
}

void sub_1BE5F432C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v36 & 1) == 0)
    {
LABEL_12:
      std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(v33 + 48));
      if (*(v33 + 39) < 0)
      {
        operator delete(*v34);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v35);
  goto LABEL_12;
}

uint64_t **std::__tree<std::basic_string<char16_t>>::__assign_multi<std::__tree_const_iterator<std::basic_string<char16_t>,std::__tree_node<std::basic_string<char16_t>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v15 = result;
    v16 = v8;
    v17 = v8;
    if (v8)
    {
      v16 = std::__tree<std::basic_string<char16_t>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::basic_string<char16_t>::operator=((v8 + 4), (v9 + 4));
          v10 = v17;
          leaf_high = std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__find_leaf_high(v5, &v14, v17 + 16);
          std::__tree<std::u16string_view>::__insert_node_at(v5, v14, leaf_high, v10);
          v8 = v16;
          v17 = v16;
          if (v16)
          {
            v16 = std::__tree<std::basic_string<char16_t>>::_DetachedTreeCache::__detach_next(v16);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::basic_string<char16_t>>::_DetachedTreeCache::~_DetachedTreeCache[abi:se200100](&v15);
  }

  if (a2 != a3)
  {
    std::__tree<std::basic_string<char16_t>>::__construct_node<std::basic_string<char16_t> const&>();
  }

  return result;
}

void sub_1BE5F4598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::basic_string<char16_t>>::_DetachedTreeCache::~_DetachedTreeCache[abi:se200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::basic_string<char16_t>>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::basic_string<char16_t>>::_DetachedTreeCache::~_DetachedTreeCache[abi:se200100](uint64_t a1)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(v2);
  }

  return a1;
}

uint64_t morphun::dialog::SemanticFeature::SemanticFeature(uint64_t a1, const std::basic_string<char16_t> *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a5;
  *a1 = &unk_1F3CD8DA0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  v9 = (a1 + 40);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (a3 != 1)
  {
    if (a4[2])
    {
      exception = __cxa_allocate_exception(0x38uLL);
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "F");
      morphun::util::StringUtils::to_u16string(a3, &v15);
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v15;
      }

      else
      {
        v12 = v15.__r_.__value_.__r.__words[0];
      }

      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v15.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::append(&__dst, v12, size);
      v17 = __dst;
      memset(&__dst, 0, sizeof(__dst));
      std::basic_string<char16_t>::append(&v17, " ", 0x1FuLL);
      v18 = v17;
      memset(&v17, 0, sizeof(v17));
      morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &v18);
    }

    if (a5)
    {
      v14 = __cxa_allocate_exception(0x38uLL);
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v18, "O");
      morphun::exception::IllegalArgumentException::IllegalArgumentException(v14, &v18);
    }
  }

  std::basic_string<char16_t>::operator=((a1 + 16), a2);
  *(a1 + 8) = a3;
  if (v9 != a4)
  {
    std::__tree<std::basic_string<char16_t>>::__assign_multi<std::__tree_const_iterator<std::basic_string<char16_t>,std::__tree_node<std::basic_string<char16_t>,void *> *,long>>(v9, *a4, a4 + 1);
  }

  *(a1 + 64) = v5;
  return a1;
}

void sub_1BE5F4834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v36 & 1) == 0)
    {
LABEL_12:
      std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(v33 + 48));
      if (*(v33 + 39) < 0)
      {
        operator delete(*v34);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v36)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v35);
  goto LABEL_12;
}

morphun::dialog::SemanticFeature *morphun::dialog::SemanticFeature::SemanticFeature(morphun::dialog::SemanticFeature *this, const morphun::dialog::SemanticFeature *a2, uint64_t a3)
{
  v5 = *a2;
  *this = *a2;
  *(this + *(v5 - 40)) = *(a2 + 1);
  *(this + 2) = *(a3 + 8);
  if (*(a3 + 39) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((this + 16), *(a3 + 16), *(a3 + 24));
  }

  else
  {
    v6 = *(a3 + 16);
    *(this + 4) = *(a3 + 32);
    *(this + 1) = v6;
  }

  std::set<std::basic_string<char16_t>>::set[abi:se200100](this + 5, a3 + 40);
  *(this + 64) = *(a3 + 64);
  return this;
}

void sub_1BE5F49F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

morphun::dialog::SemanticFeature *morphun::dialog::SemanticFeature::SemanticFeature(morphun::dialog::SemanticFeature *this, const morphun::dialog::SemanticFeature *a2)
{
  *this = &unk_1F3CD8DA0;
  *(this + 2) = *(a2 + 2);
  if (*(a2 + 39) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
  }

  else
  {
    v4 = *(a2 + 1);
    *(this + 4) = *(a2 + 4);
    *(this + 1) = v4;
  }

  std::set<std::basic_string<char16_t>>::set[abi:se200100](this + 5, a2 + 40);
  *(this + 64) = *(a2 + 64);
  return this;
}

void sub_1BE5F4A98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void virtual thunk tomorphun::dialog::SemanticFeature::~SemanticFeature(morphun::dialog::SemanticFeature *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void sub_1BE5F4BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(a11);
  MEMORY[0x1BFB49160](v12, v11);
  _Unwind_Resume(a1);
}

void sub_1BE5F4CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(a11);
  MEMORY[0x1BFB49160](v12, v11);
  _Unwind_Resume(a1);
}

BOOL morphun::dialog::SemanticFeature::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 39);
  v3 = *(a1 + 24);
  if (v2 >= 0)
  {
    v3 = *(a1 + 39);
  }

  v4 = *(a2 + 39);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 24);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  if (v5 >= 0)
  {
    v6 = (a2 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 16);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = v3 - 1;
  do
  {
    v10 = *v7++;
    v9 = v10;
    v12 = *v6++;
    v11 = v12;
    v14 = v8-- != 0;
    result = v11 == v9;
  }

  while (v11 == v9 && v14);
  return result;
}

void sub_1BE5F4EC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  morphun::dialog::SemanticConceptList::~SemanticConceptList(v15, off_1F3CDBFB8);
  MEMORY[0x1BFB49160](v15, v16);
  _Unwind_Resume(a1);
}

void sub_1BE5F5040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  morphun::dialog::SemanticConceptList::~SemanticConceptList(v15, off_1F3CDC040);
  MEMORY[0x1BFB49160](v15, v16);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::EsCommonConceptFactory::~EsCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC6F0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC6F0);
}

void morphun::tokenizer::locale::de::DeWordAndDelimiterTokenExtractor::~DeWordAndDelimiterTokenExtractor(morphun::tokenizer::locale::de::DeWordAndDelimiterTokenExtractor *this)
{
  morphun::tokenizer::TokenExtractor::~TokenExtractor(this, off_1F3CD9C30);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::tokenizer::TokenExtractor::~TokenExtractor(this, off_1F3CD9C30);
}

uint64_t morphun::dialog::SemanticFeatureConceptBase::getSpeakFeature(morphun::dialog::SemanticFeatureConceptBase *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"speak");
    v2 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(v1 + 8, __p);
    if (v1 + 16 == v2)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(v2 + 56);
    }

    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v1;
}

uint64_t morphun::dialog::SemanticFeatureConceptBase::getFeatureValueByName(uint64_t a1, unsigned __int16 *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = npc<morphun::dialog::SemanticFeatureModel const>(v4);
  v6 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(v5 + 8, a2);
  if (v4 + 16 == v6 || !*(v6 + 56))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v10 = a2;
    v11 = exception;
    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v12, v10, L" is not a valid feature name for the SemanticFeatureModel");
    morphun::exception::IllegalArgumentException::IllegalArgumentException(v11, &v12);
  }

  v7 = *(*a1 + 104);

  return v7(a1);
}

void sub_1BE5F5388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void morphun::dialog::SemanticFeatureConceptBase::reset(void ***this)
{
  v1 = this + 3;
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(this[3]);
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

uint64_t morphun::dialog::SemanticFeatureConceptBase::clearConstraintByName(uint64_t a1, unsigned __int16 *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = npc<morphun::dialog::SemanticFeatureModel const>(v4);
  v6 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(v5 + 8, a2);
  if (v4 + 16 == v6 || !*(v6 + 56))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v10 = a2;
    v11 = exception;
    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v12, v10, L" is not a valid feature name for the SemanticFeatureModel");
    morphun::exception::IllegalArgumentException::IllegalArgumentException(v11, &v12);
  }

  v7 = *(*a1 + 80);

  return v7(a1);
}

void sub_1BE5F5560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

morphun::dialog::SemanticFeatureConceptBase *morphun::dialog::SemanticFeatureConceptBase::clearConstraint(morphun::dialog::SemanticFeatureConceptBase *this, const morphun::dialog::SemanticFeature *a2)
{
  result = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(this + 16, a2);
  if ((this + 24) != result)
  {

    return std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::erase(this + 2, result);
  }

  return result;
}

void *std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::erase(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  std::__tree_remove[abi:se200100]<std::__tree_node_base<void *> *>(v7, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,void *>>>::destroy[abi:se200100]<std::pair<morphun::dialog::SemanticFeature const,std::basic_string<char16_t>>,void,0>((a2 + 32));
  operator delete(a2);
  return v4;
}

uint64_t morphun::dialog::SemanticFeatureConceptBase::putConstraintByName(uint64_t a1, unsigned __int16 *a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = npc<morphun::dialog::SemanticFeatureModel const>(v4);
  v6 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(v5 + 8, a2);
  if (v4 + 16 == v6 || !*(v6 + 56))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v10, a2, L" is not a valid feature name for the SemanticFeatureModel");
    morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &v10);
  }

  v7 = *(*a1 + 64);

  return v7(a1);
}

void sub_1BE5F5790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

std::basic_string<char16_t> *morphun::dialog::SemanticFeatureConceptBase::putConstraint(uint64_t a1, uint64_t a2, const std::basic_string<char16_t> *a3)
{
  v4 = (std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__emplace_unique_key_args<morphun::dialog::SemanticFeature,std::piecewise_construct_t const&,std::tuple<morphun::dialog::SemanticFeature const&>,std::tuple<>>(a1 + 16, a2) + 104);

  return std::basic_string<char16_t>::operator=(v4, a3);
}

uint64_t morphun::dialog::SemanticFeatureConceptBase::getConstraint(morphun::dialog::SemanticFeatureConceptBase *this, const morphun::dialog::SemanticFeature *a2)
{
  v3 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(this + 16, a2);
  if ((this + 24) == v3)
  {
    return 0;
  }

  else
  {
    return v3 + 104;
  }
}

void *morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(void *this, const morphun::dialog::SemanticFeatureModel *a2, uint64_t a3)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 72)) = *(a2 + 1);
  *(this + *(*this - 56)) = *(a2 + 2);
  *(this + *(*this - 40)) = *(a2 + 3);
  this[4] = 0;
  this[3] = 0;
  this[1] = a3;
  this[2] = this + 3;
  return this;
}

morphun::dialog::SemanticFeatureConceptBase *morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(morphun::dialog::SemanticFeatureConceptBase *this, const morphun::dialog::SemanticFeatureConceptBase *a2, uint64_t a3)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 72)) = *(a2 + 1);
  *(this + *(*this - 56)) = *(a2 + 2);
  *(this + *(*this - 40)) = *(a2 + 3);
  *(this + 1) = *(a3 + 8);
  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](this + 2, a3 + 16);
  return this;
}

void morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(void ***this, void ***a2)
{
  v2 = *a2;
  *this = *a2;
  *(*(v2 - 9) + this) = a2[1];
  *(*(*this - 7) + this) = a2[2];
  *(*(*this - 5) + this) = a2[3];
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(this[3]);
}

void sub_1BE5F62C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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
    if (v38 == v36 - 256)
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

void morphun::analysis::PlAnalyzer::~PlAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CEF6D8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CEF6D8);
}

_DWORD *morphun::tokenizer::OversizedTokenModifier::modifyTokens(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!result)
  {
    goto LABEL_35;
  }

  v4 = result[8];
  if (v4 < 1)
  {
    return result;
  }

  if (!a4)
  {
LABEL_35:
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v5 = *(a4 + 80);
  if (v5)
  {
    do
    {
      if (*(v5 + 3) > *(v5 + 2) && (*(v5 + 65) & 1) == 0)
      {
        v6 = **v5;
        v4 -= result == 0;
      }

      v5 = v5[10];
      if (v5)
      {
        v7 = v4 <= 0;
      }

      else
      {
        v7 = 1;
      }
    }

    while (!v7);
    if (v5)
    {
      while (1)
      {
        if (*(v5 + 3) != *(v5 + 2) && (*(v5 + 65) & 1) == 0)
        {
          v8 = **v5;
          if (!result)
          {
            break;
          }
        }

        v5 = v5[10];
        if (!v5)
        {
          return result;
        }
      }

      if (v5[10])
      {
        memset(&v22, 0, sizeof(v22));
        memset(&v21, 0, sizeof(v21));
        v9 = v5;
        while (1)
        {
          v10 = v9;
          v13 = v9[2];
          v11 = (v9 + 2);
          v12 = v13;
          v14 = *(v11 + 23);
          if (v14 >= 0)
          {
            v15 = v11;
          }

          else
          {
            v15 = v12;
          }

          if (v14 >= 0)
          {
            v16 = *(v11 + 23);
          }

          else
          {
            v16 = *(v11 + 1);
          }

          std::basic_string<char16_t>::append(&v22, v15, v16);
          v17 = *(v10 + 63);
          if (v17 >= 0)
          {
            v18 = (v10 + 5);
          }

          else
          {
            v18 = v10[5];
          }

          if (v17 >= 0)
          {
            v19 = *(v10 + 63);
          }

          else
          {
            v19 = v10[6];
          }

          std::basic_string<char16_t>::append(&v21, v18, v19);
          v9 = v10[10];
          if (!v9)
          {
            operator new();
          }
        }
      }
    }
  }

  return result;
}

void sub_1BE5F67DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  MEMORY[0x1BFB49160](v22, 0x10B3C405B5873CALL);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1BE5F6A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v17);
  morphun::analysis::TokenFilter::~TokenFilter(v15, off_1F3CD9E48);
  MEMORY[0x1BFB49160](v15, v16);
  _Unwind_Resume(a1);
}

void morphun::analysis::RuAnalyzer::~RuAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDAF30);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDAF30);
}

void morphun::exception::Exception::~Exception(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

double morphun::exception::Exception::Exception(morphun::exception::Exception *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD08A8;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD08A8;
  return result;
}

void *morphun::exception::Exception::Exception(uint64_t a1, __int128 *a2)
{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD08A8;
  return result;
}

{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD08A8;
  return result;
}

uint64_t morphun::analysis::util::AttributeImpl::reflectAsString@<X0>(morphun::analysis::util::AttributeImpl *this@<X0>, char a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  npc<std::basic_string<char16_t>>(a3);
  v7[1] = a3;
  v8 = a2;
}

void sub_1BE5F6CDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE5F7298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34)
{
  MEMORY[0x1BFB49160](v36, 0x1012C40EC159624);
  MEMORY[0x1BFB49160](v34, v35);
  _Unwind_Resume(a1);
}

void sub_1BE5F74CC(_Unwind_Exception *a1)
{
  morphun::analysis::TokenFilter::~TokenFilter(v2, off_1F3CDA860);
  MEMORY[0x1BFB49160](v2, v1);
  _Unwind_Resume(a1);
}

void morphun::analysis::ArAnalyzer::~ArAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB270);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB270);
}

uint64_t *morphun::analysis::Analyzer_GlobalReuseStrategy::Analyzer_GlobalReuseStrategy(uint64_t *this, uint64_t *a2)
{
  v2 = a2[1];
  *this = v2;
  *(this + *(v2 - 40)) = a2[2];
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[3];
  return this;
}

uint64_t morphun::dialog::language::RuCommonConceptFactory::quantifyType(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4)
  {
LABEL_111:
    v67 = (*(*(a3 + *(*a3 - 56)) + 24))(a3 + *(*a3 - 56));
    if (!v67)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    goto LABEL_112;
  }

  v9 = (*(*a3 + 128))(a3);
  v10 = npc<morphun::dialog::SemanticFeatureConceptBase>(v9);
  memset(&v71, 0, sizeof(v71));
  if (a5 == 5)
  {
    v12 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v10);
    v13 = std::basic_string<char16_t>::operator=(&v71, v12);
    v14 = a1[94];
    v15 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v13);
    (*(*v9 + 64))(v9, v14, v15);
    goto LABEL_108;
  }

  if (a5 == 1)
  {
    v11 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v10);
    std::basic_string<char16_t>::operator=(&v71, v11);
    goto LABEL_108;
  }

  v16 = (*(*v9 + 104))(v9, a1[94]);
  v17 = v16;
  memset(&__p, 0, sizeof(__p));
  if (!v16)
  {
    goto LABEL_55;
  }

  v18 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v16);
  v19 = (*(*v17 + 32))(v17);
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

  if (v20 == v22)
  {
    if (!v20)
    {
      goto LABEL_23;
    }

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
  }

  v26 = (*(*v17 + 32))(v17);
  std::basic_string<char16_t>::operator=(&__p, v26);
LABEL_23:
  v16 = (*(*v17 + 16))(v17);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_55;
  }

  v16 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v16);
  v28 = *(v16 + 23);
  v29 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v28 = *(v16 + 8);
  }

  v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  if (v28 == v30)
  {
    if (!v28)
    {
      goto LABEL_55;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v29 >= 0)
    {
      v32 = v16;
    }

    else
    {
      v32 = *v16;
    }

    while (p_p->__r_.__value_.__s.__data_[0] == *v32)
    {
      ++v32;
      p_p = (p_p + 2);
      if (!--v28)
      {
        goto LABEL_55;
      }
    }
  }

  v16 = morphun::grammar::synthesis::GrammemeConstants::CASE_ACCUSATIVE(v16);
  v33 = *(v16 + 23);
  if (v33 >= 0)
  {
    v34 = *(v16 + 23);
  }

  else
  {
    v34 = *(v16 + 8);
  }

  v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v37 = __p.__r_.__value_.__l.__size_;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = __p.__r_.__value_.__l.__size_;
  }

  if (v34 != v38)
  {
    goto LABEL_56;
  }

  if (!v34)
  {
LABEL_55:
    v41 = a1[94];
    v42 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v16);
    v16 = (*(*v9 + 64))(v9, v41, v42);
    v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v37 = __p.__r_.__value_.__l.__size_;
    v36 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    goto LABEL_56;
  }

  v39 = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &__p;
  }

  if (v33 >= 0)
  {
    v40 = v16;
  }

  else
  {
    v40 = *v16;
  }

  while (v39->__r_.__value_.__s.__data_[0] == *v40)
  {
    ++v40;
    v39 = (v39 + 2);
    if (!--v34)
    {
      goto LABEL_55;
    }
  }

LABEL_56:
  if (v36 < 0)
  {
    v35 = v37;
  }

  if (v35)
  {
    v16 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v16);
    v43 = *(v16 + 23);
    v44 = v43;
    if ((v43 & 0x80u) != 0)
    {
      v43 = *(v16 + 8);
    }

    v45 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v45 = __p.__r_.__value_.__l.__size_;
    }

    if (v43 != v45)
    {
      goto LABEL_74;
    }

    if (v43)
    {
      v46 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v46 = __p.__r_.__value_.__r.__words[0];
      }

      if (v44 >= 0)
      {
        v47 = v16;
      }

      else
      {
        v47 = *v16;
      }

      while (v46->__r_.__value_.__s.__data_[0] == *v47)
      {
        ++v47;
        v46 = (v46 + 2);
        if (!--v43)
        {
          goto LABEL_72;
        }
      }

      goto LABEL_74;
    }
  }

LABEL_72:
  if (a5 != 3)
  {
LABEL_74:
    v49 = morphun::grammar::synthesis::GrammemeConstants::CASE_ACCUSATIVE(v16);
    v50 = *(v49 + 23);
    v51 = v50;
    if ((v50 & 0x80u) != 0)
    {
      v50 = *(v49 + 8);
    }

    v52 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v52 = __p.__r_.__value_.__l.__size_;
    }

    if (v50 != v52)
    {
      goto LABEL_104;
    }

    if (v50)
    {
      v53 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = __p.__r_.__value_.__r.__words[0];
      }

      if (v51 >= 0)
      {
        v54 = v49;
      }

      else
      {
        v54 = *v49;
      }

      while (v53->__r_.__value_.__s.__data_[0] == *v54)
      {
        ++v54;
        v53 = (v53 + 2);
        if (!--v50)
        {
          goto LABEL_87;
        }
      }

      goto LABEL_104;
    }

LABEL_87:
    if (a5 != 3)
    {
LABEL_104:
      v48 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v49);
      goto LABEL_105;
    }

    v55 = (*(*a3 + 128))(a3);
    npc<morphun::dialog::SemanticFeatureConceptBase>(v55);
    (*(*v55 + 80))(v55, a1[94]);
    v56 = (*(*v55 + 104))(v55, a1[96]);
    v57 = v56;
    if (v56)
    {
      v58 = morphun::grammar::synthesis::GrammemeConstants::ANIMACY_INANIMATE(v56);
      v56 = (*(*v57 + 32))(v57);
      v59 = *(v58 + 23);
      v60 = v59;
      if ((v59 & 0x80u) != 0)
      {
        v59 = *(v58 + 8);
      }

      v61 = *(v56 + 23);
      v62 = v61;
      if ((v61 & 0x80u) != 0)
      {
        v61 = *(v56 + 8);
      }

      if (v59 == v61)
      {
        if (!v59)
        {
LABEL_103:
          v65 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v56);
LABEL_116:
          std::basic_string<char16_t>::operator=(&v71, v65);
          if (v57)
          {
            (*(*v57 + 16))(v57);
          }

          (*(*v55 + 16))(v55);
          goto LABEL_106;
        }

        if (v62 >= 0)
        {
          v63 = v56;
        }

        else
        {
          v63 = *v56;
        }

        if (v60 >= 0)
        {
          v64 = v58;
        }

        else
        {
          v64 = *v58;
        }

        while (*v63 == *v64)
        {
          ++v64;
          ++v63;
          if (!--v59)
          {
            goto LABEL_103;
          }
        }
      }
    }

    v65 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v56);
    goto LABEL_116;
  }

  v48 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v16);
LABEL_105:
  std::basic_string<char16_t>::operator=(&v71, v48);
LABEL_106:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_108:
  v66 = a1[47];
  npc<morphun::dialog::SemanticFeature const>(v66);
  (*(*v9 + 64))(v9, v66, &v71);
  v67 = (*(*(v9 + *(*v9 - 56)) + 24))(v9 + *(*v9 - 56));
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  (*(*v9 + 16))(v9);
  if (!v67)
  {
    goto LABEL_111;
  }

LABEL_112:
  memset(&v71, 0, sizeof(v71));
  (*(*a1 + 120))(a1, a2, v67, &v71, a5);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  return (*(*v67 + 16))(v67);
}

void sub_1BE5F7E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  (*(*v21 + 16))(v21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v20)
  {
    (*(*v20 + 16))(v20);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::language::RuCommonConceptFactory::quantify(morphun::dialog::language::RuCommonConceptFactory *this, const morphun::dialog::NumberConcept *a2, const morphun::dialog::SemanticFeatureConceptBase *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  npc<morphun::dialog::SemanticFeatureConceptBase const>(a3);
  v6 = (*(*a3 + 104))(a3, *(this + 95));
  memset(&v48, 0, sizeof(v48));
  if (v6)
  {
    v7 = v6;
    v8 = (*(*v6 + 32))(v6);
    std::basic_string<char16_t>::operator=(&v48, v8);
    (*(*v7 + 16))(v7);
  }

  memset(&__dst, 0, sizeof(__dst));
  morphun::dialog::SpeakableString::SpeakableString(v47, &__dst);
  size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v48.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    (*(*a2 + 208))(&__dst, a2);
    morphun::dialog::SpeakableString::operator=(v47, &__dst);
    goto LABEL_83;
  }

  v10 = (*(*a3 + 104))(a3, *(this + 94));
  v11 = v10;
  memset(&v46, 0, sizeof(v46));
  if (!v10)
  {
LABEL_63:
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v43, L"cardinal-");
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = &v48;
    }

    else
    {
      v39 = v48.__r_.__value_.__r.__words[0];
    }

    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v40 = v48.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v43, v39, v40);
    v44 = v43;
    memset(&v43, 0, sizeof(v43));
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = &v46;
    }

    else
    {
      v41 = v46.__r_.__value_.__r.__words[0];
    }

    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = v46.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v44, v41, v42);
    v49 = v44;
    memset(&v44, 0, sizeof(v44));
    (*(*a2 + 200))(&__dst, a2, &v49);
    morphun::dialog::SpeakableString::operator=(v47, &__dst);
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

LABEL_83:
    morphun::dialog::CommonConceptFactoryImpl::quantify(this, a2, v47, a3);
  }

  v12 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v10);
  v13 = (*(*v11 + 32))(v11);
  v14 = *(v12 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(v12 + 8);
  }

  v16 = *(v13 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v13 + 8);
  }

  if (v14 == v16)
  {
    if (!v14)
    {
LABEL_62:
      (*(*v11 + 16))(v11);
      goto LABEL_63;
    }

    if (v17 >= 0)
    {
      v18 = v13;
    }

    else
    {
      v18 = *v13;
    }

    if (v15 >= 0)
    {
      v19 = v12;
    }

    else
    {
      v19 = *v12;
    }

    while (*v18 == *v19)
    {
      ++v19;
      ++v18;
      if (!--v14)
      {
        goto LABEL_62;
      }
    }
  }

  v20 = (*(*v11 + 32))(v11);
  v21 = std::basic_string<char16_t>::operator=(&v46, v20);
  v22 = morphun::grammar::synthesis::GrammemeConstants::CASE_INSTRUMENTAL(v21);
  v23 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v46.__r_.__value_.__l.__size_;
  }

  v24 = *(v22 + 23);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(v22 + 8);
  }

  if (v23 == v24)
  {
    if (!v23)
    {
LABEL_36:
      v28 = morphun::grammar::synthesis::GrammemeConstants::CASE_ABLATIVE(v22);
      goto LABEL_51;
    }

    if (v25 >= 0)
    {
      v26 = v22;
    }

    else
    {
      v26 = *v22;
    }

    v27 = &v46;
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v46.__r_.__value_.__r.__words[0];
    }

    while (*v26 == v27->__r_.__value_.__s.__data_[0])
    {
      v27 = (v27 + 2);
      ++v26;
      if (!--v23)
      {
        goto LABEL_36;
      }
    }
  }

  v29 = morphun::grammar::synthesis::GrammemeConstants::CASE_PREPOSITIONAL(v22);
  v30 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v30 = v46.__r_.__value_.__l.__size_;
  }

  v31 = *(v29 + 23);
  v32 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v31 = *(v29 + 8);
  }

  if (v30 != v31)
  {
    goto LABEL_52;
  }

  if (v30)
  {
    if (v32 >= 0)
    {
      v33 = v29;
    }

    else
    {
      v33 = *v29;
    }

    v34 = &v46;
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v34 = v46.__r_.__value_.__r.__words[0];
    }

    while (*v33 == v34->__r_.__value_.__s.__data_[0])
    {
      v34 = (v34 + 2);
      ++v33;
      if (!--v30)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_52;
  }

LABEL_50:
  v28 = morphun::grammar::synthesis::GrammemeConstants::CASE_LOCATIVE(v29);
LABEL_51:
  std::basic_string<char16_t>::operator=(&v46, v28);
LABEL_52:
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "-");
  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = &v46;
  }

  else
  {
    v35 = v46.__r_.__value_.__r.__words[0];
  }

  if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v46.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&__dst, v35, v36);
  v49.__r_.__value_.__r.__words[0] = __dst.__r_.__value_.__l.__size_;
  v37 = __dst.__r_.__value_.__r.__words[0];
  *(v49.__r_.__value_.__r.__words + 7) = *(&__dst.__r_.__value_.__r.__words[1] + 7);
  v38 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  memset(&__dst, 0, sizeof(__dst));
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
    v46.__r_.__value_.__r.__words[0] = v37;
    v46.__r_.__value_.__l.__size_ = v49.__r_.__value_.__r.__words[0];
    *(&v46.__r_.__value_.__r.__words[1] + 7) = *(v49.__r_.__value_.__r.__words + 7);
    *(&v46.__r_.__value_.__s + 23) = v38;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46.__r_.__value_.__r.__words[0] = v37;
    v46.__r_.__value_.__l.__size_ = v49.__r_.__value_.__r.__words[0];
    *(&v46.__r_.__value_.__r.__words[1] + 7) = *(v49.__r_.__value_.__r.__words + 7);
    *(&v46.__r_.__value_.__s + 23) = v38;
  }

  goto LABEL_62;
}

void sub_1BE5F85E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::language::RuCommonConceptFactory::quote(void ***this@<X0>, const morphun::dialog::SpeakableString *a2@<X1>, morphun::dialog::SpeakableString *a3@<X8>)
{
  v6 = (*(*a2 + 32))(a2);
  v7 = morphun::lang::StringFilterUtil::CYRILLIC_SCRIPT(v6);
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = *v6;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  if (morphun::util::UnicodeSetUtils::containsSome(v7, v9, v10))
  {

    morphun::dialog::CommonConceptFactoryImpl::quote(this, a2, a3);
  }

  else
  {

    morphun::dialog::SpeakableString::SpeakableString(a3, a2);
  }
}

void morphun::dialog::language::RuCommonConceptFactory::~RuCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC2F0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC2F0);
}

uint64_t morphun::grammar::synthesis::GrammarSynthesizerUtil::getSignificantWords(morphun::grammar::synthesis::GrammarSynthesizerUtil *this, const morphun::TokenChain *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v4 = (*(*a2 + 32))(a2);
  result = std::vector<std::basic_string<char16_t>>::reserve(this, v4);
  v7 = *(a2 + 8);
  v8 = *(a2 + 2);
  if (v8)
  {
    v9 = *(v8 + 80);
  }

  else
  {
    v9 = 0;
  }

  while (1)
  {
    v13 = *(&v7 + 1);
    v12 = v7;
    if (v9 == v7)
    {
      break;
    }

    if (morphun::grammar::synthesis::GrammarSynthesizerUtil::checkSignificantTokenForInflection(v7, v6))
    {
      v10 = *(this + 1);
      if (v10 >= *(this + 2))
      {
        v11 = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(this, (v12 + 16));
      }

      else
      {
        std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(*(this + 1), (v12 + 16));
        v11 = v10 + 24;
      }

      *(this + 1) = v11;
    }

    result = npc<morphun::Token const>(v12);
    *(&v7 + 1) = v13;
    *&v7 = *(v12 + 80);
  }

  return result;
}

void sub_1BE5F8930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<std::basic_string<char16_t>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      v2 = result[1] - *result;
      v3 = result;
      std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(a2);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  return result;
}

BOOL morphun::grammar::synthesis::GrammarSynthesizerUtil::checkSignificantTokenForInflection(morphun::grammar::synthesis::GrammarSynthesizerUtil *this, const morphun::Token *a2)
{
  if (*(this + 64) != 1 || (*(this + 65) & 1) != 0)
  {
    return 0;
  }

  v2 = *(this + 39);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2 != 1 || *(this + 8) != 45)
    {
      return v2 != 0;
    }

    return 0;
  }

  v2 = *(this + 3);
  if (v2 == 1)
  {
    if (**(this + 2) == 45)
    {
      return 0;
    }

    v2 = 1;
  }

  return v2 != 0;
}

std::basic_string<char16_t> *morphun::grammar::synthesis::GrammarSynthesizerUtil::getStringFromInflectedSignificantWords(std::basic_string<char16_t> *result, const morphun::Token *a2, uint64_t a3, void *a4)
{
  v5 = result;
  result->__r_.__value_.__r.__words[0] = 0;
  result->__r_.__value_.__l.__size_ = 0;
  result->__r_.__value_.__r.__words[2] = 0;
  v6 = a2;
  if (a3)
  {
    v7 = *(a3 + 80);
  }

  else
  {
    v7 = 0;
  }

  v8 = 0;
  v9 = a3;
  while (1)
  {
    v18 = v9;
    v10 = v6;
    if (v7 == v6)
    {
      break;
    }

    if (morphun::grammar::synthesis::GrammarSynthesizerUtil::checkSignificantTokenForInflection(v6, a2))
    {
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v8)
      {
        std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
      }

      v11 = *a4 + 24 * v8;
      v12 = *(v11 + 23);
      if (v12 >= 0)
      {
        v13 = (*a4 + 24 * v8);
      }

      else
      {
        v13 = *v11;
      }

      if (v12 >= 0)
      {
        v14 = *(v11 + 23);
      }

      else
      {
        v14 = *(v11 + 8);
      }

      std::basic_string<char16_t>::append(v5, v13, v14);
      ++v8;
    }

    else
    {
      v15 = *(v10 + 39);
      if (v15 >= 0)
      {
        v16 = (v10 + 16);
      }

      else
      {
        v16 = *(v10 + 16);
      }

      if (v15 >= 0)
      {
        v17 = *(v10 + 39);
      }

      else
      {
        v17 = *(v10 + 24);
      }

      std::basic_string<char16_t>::append(v5, v16, v17);
    }

    result = npc<morphun::Token const>(v10);
    v9 = v18;
    v6 = *(v10 + 80);
  }

  return result;
}

void sub_1BE5F8BA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::GrammarSynthesizerUtil::inflectSignificantWords(std::basic_string<char16_t> *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(*a3 + 40))(a3);
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v29.__begin_ = &v30;
  LOBYTE(v29.__end_) = 0;
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v7);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  memset(&v29, 0, sizeof(v29));
  v8 = (*(*a3 + 40))(a3);
  std::vector<int>::reserve(&v29, v8);
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  v26 = a1;
  if (v10)
  {
    v11 = *(v10 + 80);
  }

  else
  {
    v11 = 0;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v27 = *(&v9 + 1);
    v14 = v9;
    if (v11 == v9)
    {
      begin = v29.__begin_;
      if (v29.__begin_ == v29.__end_)
      {
        (*(*a3 + 160))(a3);
        if (!begin)
        {
LABEL_36:
          v29.__begin_ = &v30;
          std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v29);
          return;
        }
      }

      else
      {
        (*(*a4 + 24))(v28);
        if (v28[0] == v28[1])
        {
          (*(*a3 + 160))(a3);
        }

        else
        {
          v26->__r_.__value_.__r.__words[0] = 0;
          v26->__r_.__value_.__l.__size_ = 0;
          v26->__r_.__value_.__r.__words[2] = 0;
          v21 = v30;
          v22 = v31;
          while (v21 != v22)
          {
            v23 = *(v21 + 23);
            if (v23 >= 0)
            {
              v24 = v21;
            }

            else
            {
              v24 = *v21;
            }

            if (v23 >= 0)
            {
              v25 = *(v21 + 23);
            }

            else
            {
              v25 = *(v21 + 8);
            }

            std::basic_string<char16_t>::append(v26, v24, v25);
            v21 += 24;
          }
        }

        v33 = v28;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v33);
        begin = v29.__begin_;
        if (!v29.__begin_)
        {
          goto LABEL_36;
        }
      }

      v29.__end_ = begin;
      operator delete(begin);
      goto LABEL_36;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3) <= v13)
    {
      goto LABEL_42;
    }

    std::basic_string<char16_t>::operator=((v30 + v12), (v9 + 16));
    if (!morphun::grammar::synthesis::GrammarSynthesizerUtil::checkSignificantTokenForInflection(v14, v15))
    {
      goto LABEL_22;
    }

    end = v29.__end_;
    if (v29.__end_ >= v29.__end_cap_.__value_)
    {
      break;
    }

    if (!v29.__end_)
    {
      goto LABEL_42;
    }

    *v29.__end_ = v13;
    v29.__end_ = end + 1;
LABEL_22:
    npc<morphun::Token const>(v14);
    ++v13;
    *(&v9 + 1) = v27;
    *&v9 = *(v14 + 10);
    v12 += 24;
  }

  v17 = v29.__end_ - v29.__begin_ + 1;
  if (v17 >> 62)
  {
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v18 = v29.__end_cap_.__value_ - v29.__begin_;
  if ((v29.__end_cap_.__value_ - v29.__begin_) >> 1 > v17)
  {
    v17 = v18 >> 1;
  }

  if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v19 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v19);
  }

LABEL_42:
  __break(1u);
}

void sub_1BE5F8F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char *__p, char *a19, uint64_t a20, char a21)
{
  *(v21 - 88) = &a15;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100]((v21 - 88));
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  __p = &a21;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&__p);
  _Unwind_Resume(a1);
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:se200100]<std::allocator<int>>(__n);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }
}

BOOL morphun::grammar::synthesis::GrammarSynthesizerUtil::hasAnyFeatures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v5 = a1 + 8;
  v6 = a2 + 8;
  do
  {
    v7 = *(v6 - 8);
    npc<morphun::dialog::SemanticFeature const>(v7);
    v8 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a1, v7);
    v10 = v5 == v8;
    result = v5 != v8;
    v10 = !v10 || v6 == a3;
    v6 += 8;
  }

  while (!v10);
  return result;
}

void morphun::grammar::synthesis::GrammarSynthesizerUtil::convertToStringConstraints(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a3 != a4)
  {
    for (i = a3; i != a4; ++i)
    {
      v8 = *i;
      npc<morphun::dialog::SemanticFeature const>(*i);
      morphun::grammar::synthesis::getFeatureValue(&__s, a2, v8);
      size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v10 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __s.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v11 = *(a1 + 8);
        if (v11 >= *(a1 + 16))
        {
          v13 = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(a1, &__s);
        }

        else
        {
          if (!v11)
          {
            __break(1u);
            return;
          }

          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            std::basic_string<char16_t>::__init_copy_ctor_external(*(a1 + 8), __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
          }

          else
          {
            v12 = *&__s.__r_.__value_.__l.__data_;
            *(v11 + 16) = *(&__s.__r_.__value_.__l + 2);
            *v11 = v12;
          }

          v13 = v11 + 24;
        }

        *(a1 + 8) = v13;
        v10 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      if (v10 < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1BE5F9220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  *(v15 + 8) = v16;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a15 = v15;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammarSynthesizerUtil::getTheBestDisplayValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v5 = a1;
  v6 = 0;
  v7 = a3 + 8;
  v8 = -1;
  do
  {
    v9 = (*(*v5 + 40))(v5);
    v10 = v9 + 1;
    v11 = *v9;
    if (*v9 == v9 + 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, (v11 + 4));
        if (v7 != v13)
        {
          v14 = *(v13 + 127);
          v15 = v14;
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v13 + 112);
          }

          v16 = *(v11 + 127);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = v11[14];
          }

          if (v14 == v16)
          {
            if (v14)
            {
              if (v17 >= 0)
              {
                v18 = (v11 + 13);
              }

              else
              {
                v18 = v11[13];
              }

              if (v15 >= 0)
              {
                v19 = (v13 + 104);
              }

              else
              {
                v19 = *(v13 + 104);
              }

              while (*v18 == *v19)
              {
                ++v19;
                ++v18;
                if (!--v14)
                {
                  goto LABEL_20;
                }
              }
            }

            else
            {
LABEL_20:
              ++v12;
            }
          }
        }

        v20 = v11[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v11[2];
            v22 = *v21 == v11;
            v11 = v21;
          }

          while (!v22);
        }

        v11 = v21;
      }

      while (v21 != v10);
    }

    if (v12 > v8)
    {
      v8 = v12;
      v6 = v5;
    }

    v5 += 56;
  }

  while (v5 != a2);
  return v6;
}

uint64_t morphun::grammar::synthesis::GrammarSynthesizerUtil::mergeConstraintsWithDisplayValue(void *a1, uint64_t a2, uint64_t a3)
{
  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](a1, a3);
  v5 = (*(*a2 + 40))(a2);
  return std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::insert[abi:se200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,void *> *,long>>>(a1, *v5, (v5 + 8));
}

uint64_t std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__emplace_unique_key_args<morphun::dialog::SemanticFeature,std::pair<morphun::dialog::SemanticFeature const,std::basic_string<char16_t>>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__find_equal<morphun::dialog::SemanticFeature>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::pair<morphun::dialog::SemanticFeature const,std::basic_string<char16_t>>::~pair(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer_DefiniteArticleLookupFunction::getArticle(uint64_t a1, uint64_t a2, char a3, int a4, int a5)
{
  v10 = (*(*a2 + 24))(a2);
  if ((a3 & 1) == 0)
  {
    v12 = *(*a1 + 32);
    v13 = a1 + 528;
    goto LABEL_6;
  }

  v11 = v10;
  if (a5 == 2)
  {
    if (a4 == 2)
    {
      v12 = *(*a1 + 32);
      v13 = a1 + 696;
LABEL_6:

      return v12(a1, a2, v13);
    }

    v16 = morphun::grammar::synthesis::ItGrammarSynthesizer::startsWithVowelForElision(v10);
    v12 = *(*a1 + 32);
    if (!v16)
    {
      v13 = a1 + 600;
      goto LABEL_6;
    }

LABEL_17:
    v13 = a1 + 624;
    goto LABEL_6;
  }

  if (a4 == 2)
  {
    v15 = morphun::util::LocaleUtils::ITALIAN(v10);
    if ((morphun::dictionary::PhraseProperties::isStartsWithVowel(v15, v11) & 1) != 0 || morphun::grammar::synthesis::ItGrammarSynthesizer::startsWithConsonantSubset(v11))
    {
      v12 = *(*a1 + 32);
      v13 = a1 + 672;
    }

    else
    {
      v12 = *(*a1 + 32);
      v13 = a1 + 648;
    }

    goto LABEL_6;
  }

  if (morphun::grammar::synthesis::ItGrammarSynthesizer::startsWithVowelForElision(v10))
  {
    v12 = *(*a1 + 32);
    goto LABEL_17;
  }

  if (morphun::grammar::synthesis::ItGrammarSynthesizer::startsWithConsonantSubset(v11))
  {
    v12 = *(*a1 + 32);
    v13 = a1 + 576;
    goto LABEL_6;
  }

  if (a4 == 1 && a5 == 1)
  {
    v12 = *(*a1 + 32);
    v13 = a1 + 552;
    goto LABEL_6;
  }

  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  v17 = (*(*a1 + 32))(a1, a2, __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  return v17;
}

void sub_1BE5F97D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::ItGrammarSynthesizer_DefiniteArticleLookupFunction::~ItGrammarSynthesizer_DefiniteArticleLookupFunction(void **this)
{
  morphun::grammar::synthesis::ItGrammarSynthesizer_DefiniteArticleLookupFunction::~ItGrammarSynthesizer_DefiniteArticleLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD3F50;
  if (*(this + 719) < 0)
  {
    operator delete(this[87]);
  }

  if (*(this + 695) < 0)
  {
    operator delete(this[84]);
  }

  if (*(this + 671) < 0)
  {
    operator delete(this[81]);
  }

  if (*(this + 647) < 0)
  {
    operator delete(this[78]);
  }

  if (*(this + 623) < 0)
  {
    operator delete(this[75]);
  }

  if (*(this + 599) < 0)
  {
    operator delete(this[72]);
  }

  if (*(this + 575) < 0)
  {
    operator delete(this[69]);
  }

  if (*(this + 551) < 0)
  {
    operator delete(this[66]);
  }

  *this = &off_1F3CE59C0;
  morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction::~ItGrammarSynthesizer_GenderLookupFunction((this + 37));
  morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::~ItGrammarSynthesizer_CountLookupFunction((this + 8));
}

void morphun::grammar::synthesis::ItGrammarSynthesizer_ArticleLookupFunction::~ItGrammarSynthesizer_ArticleLookupFunction(morphun::grammar::synthesis::ItGrammarSynthesizer_ArticleLookupFunction *this)
{
  *this = &off_1F3CE59C0;
  v1 = (this + 64);
  morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction::~ItGrammarSynthesizer_GenderLookupFunction((this + 296));
  morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::~ItGrammarSynthesizer_CountLookupFunction(v1);
}

void sub_1BE5F9B78(_Unwind_Exception *a1)
{
  if (v1[695] < 0)
  {
    operator delete(*v8);
  }

  if (v1[671] < 0)
  {
    operator delete(*v7);
  }

  if (v1[647] < 0)
  {
    operator delete(*v6);
  }

  if (v1[623] < 0)
  {
    operator delete(*v5);
  }

  if (v1[599] < 0)
  {
    operator delete(*v4);
  }

  if (v1[575] < 0)
  {
    operator delete(*v3);
  }

  if (v1[551] < 0)
  {
    operator delete(*v2);
  }

  morphun::grammar::synthesis::ItGrammarSynthesizer_ArticleLookupFunction::~ItGrammarSynthesizer_ArticleLookupFunction(v1);
  _Unwind_Resume(a1);
}

void morphun::lang::features::LanguageGrammarFeatures::~LanguageGrammarFeatures(void **this)
{
  *this = &unk_1F3CD94A8;

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD94A8;
}

uint64_t *morphun::lang::features::LanguageGrammarFeatures::LanguageGrammarFeatures(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 40)) = a2[1];
  morphun::util::ULocale::ULocale((a1 + 1), a3);
  a1[17] = a4;
  a1[18] = a5;
  return a1;
}

void *morphun::lang::features::LanguageGrammarFeatures::LanguageGrammarFeatures(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_1F3CD94A8;
  morphun::util::ULocale::ULocale((a1 + 1), a2);
  a1[17] = a3;
  a1[18] = a4;
  return a1;
}

void morphun::lang::features::LanguageGrammarFeatures::~LanguageGrammarFeatures(void **this, void **a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 5)) = a2[1];
}

void virtual thunk tomorphun::lang::features::LanguageGrammarFeatures::~LanguageGrammarFeatures(morphun::lang::features::LanguageGrammarFeatures *this)
{
  v1 = (this + *(*this - 32));
  *v1 = &unk_1F3CD94A8;
}

{
  v1 = (this + *(*this - 32));
  *v1 = &unk_1F3CD94A8;

  JUMPOUT(0x1BFB49160);
}

void morphun::lang::features::LanguageGrammarFeatures::getLanguageGrammarFeatures(morphun::lang::features::LanguageGrammarFeatures *this@<X0>, void *a2@<X8>)
{
  v5 = *(this + 127);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(this + 14);
  }

  if (!v5)
  {
    *a2 = &unk_1F3CD94A8;
    morphun::util::ULocale::ULocale((a2 + 1), this);
    a2[17] = &unk_1E805AA80;
    a2[18] = &morphun::lang::features::GRAMMAR_XML;
    return;
  }

  __p = 0;
  v21 = 0;
  v22 = 0;
  v6 = *(this + 31);
  if (v6 >= 0)
  {
    v7 = this + 8;
  }

  else
  {
    v7 = *(this + 1);
  }

  if (v6 >= 0)
  {
    LODWORD(v8) = *(this + 31);
  }

  else
  {
    v8 = *(this + 2);
  }

  morphun::util::StringViewUtils::convert(&__p, v7, v8);
  v9 = 0;
  while (1)
  {
    v10 = (&morphun::lang::features::GRAMMAR_XML_LANGUAGES + 40 * v9);
    v11 = *v10;
    if (!*v10)
    {
      __break(1u);
      return;
    }

    if (*v11)
    {
      v12 = 0;
      do
      {
        v13 = v12 + 1;
      }

      while (v11[++v12]);
      if (v22 < 0)
      {
LABEL_19:
        if (v13 != v21)
        {
          goto LABEL_25;
        }

        p_p = __p;
        if (v21 == -1)
        {
          std::basic_string<char16_t>::__throw_out_of_range[abi:se200100]();
        }

        goto LABEL_21;
      }
    }

    else
    {
      v13 = 0;
      if (v22 < 0)
      {
        goto LABEL_19;
      }
    }

    if (v13 != HIBYTE(v22))
    {
      goto LABEL_25;
    }

    p_p = &__p;
LABEL_21:
    if (!v13)
    {
      break;
    }

    while (*v11 == *p_p)
    {
      ++p_p;
      ++v11;
      if (!--v13)
      {
        goto LABEL_27;
      }
    }

LABEL_25:
    if (++v9 == 38)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      (**this)(&v18, this);
      std::basic_string<char16_t>::insert(&v18, L"Language features can not be found for language ", 0x30, v17);
      v19 = v18;
      memset(&v18, 0, sizeof(v18));
      morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &v19);
    }
  }

LABEL_27:
  *a2 = &unk_1F3CD94A8;
  morphun::util::ULocale::ULocale((a2 + 1), this);
  a2[17] = v10 + 3;
  a2[18] = v10 + 1;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }
}

void sub_1BE5FA1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v28 & 1) == 0)
    {
LABEL_8:
      if (a27 < 0)
      {
        operator delete(a22);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v27);
  goto LABEL_8;
}

void morphun::lang::features::LanguageGrammarFeatures::getKnownLanguages(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (unk_1BE80D536)
  {
    v2 = 0;
    do
    {
      v3 = v2 + 1;
    }

    while (word_1BE80D538[v2++]);
  }

  else
  {
    v3 = 0;
  }

  morphun::util::StringViewUtils::to_string(0x1BE80D536, v3, &v5);
  operator new();
}

void morphun::lang::features::LanguageGrammarFeatures::addCategory(uint64_t a1, uint64_t a2)
{
  v24[0] = 0;
  v24[1] = 0;
  v22[1] = 0;
  v23 = v24;
  v21 = v22;
  v22[0] = 0;
  if (*(a2 + 16) >= 1)
  {
    v3 = *(a2 + 24);
    operator new();
  }

  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  if (*(a2 + 32) >= 1)
  {
    v4 = *(a2 + 40);
    std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_multi<char16_t const* const&,char16_t const* const&>();
  }

  if (!a1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v5 = *(a2 + 8);
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, v5);
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, v5);
  morphun::lang::features::LanguageGrammarFeatures_GrammarCategory::LanguageGrammarFeatures_GrammarCategory(v15, __p, &v23, &v19, &v21);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v17, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v17 = __dst;
  }

  morphun::lang::features::LanguageGrammarFeatures_GrammarCategory::LanguageGrammarFeatures_GrammarCategory(v18, v15);
  v6 = *(a1 + 8);
  if (!v6)
  {
LABEL_15:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v7 = v6;
      if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v17, v6 + 16) & 0x80) == 0)
      {
        break;
      }

      v6 = *v7;
      if (!*v7)
      {
        goto LABEL_15;
      }
    }

    if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v7 + 16, &v17) & 0x80) == 0)
    {
      break;
    }

    v6 = *(v7 + 1);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  std::set<std::basic_string<char16_t>>::insert[abi:se200100]<std::__tree_const_iterator<std::basic_string<char16_t>,std::__tree_node<std::basic_string<char16_t>,void *> *,long>>((v7 + 44), v23, v24);
  if (v19 != v20)
  {
    operator new();
  }

  v8 = v21;
  if (v21 != v22)
  {
    do
    {
      std::__tree<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>>>::__emplace_hint_unique_key_args<std::u16string_view,std::pair<std::u16string_view const,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>> const&>(v7 + 17, v7 + 18, v8[4], v8[5]);
      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != v22);
  }

  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(v20[0]);
  std::__tree<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>>>::destroy(v22[0]);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(v24[0]);
}

void sub_1BE5FAA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,void *>>>::operator()[abi:se200100](0, v44);
  std::pair<std::basic_string<char16_t> const,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>::~pair(&a39);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(*(v45 - 152));
  std::__tree<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>>>::destroy(*(v45 - 128));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(v45 - 104));
  _Unwind_Resume(a1);
}

void sub_1BE5FABB8(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::basic_string<char16_t> const,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>::~pair(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,void *>>>::operator()[abi:se200100](char a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

morphun::lang::features::LanguageGrammarFeatures_GrammarCategory *morphun::lang::features::LanguageGrammarFeatures_GrammarCategory::LanguageGrammarFeatures_GrammarCategory(morphun::lang::features::LanguageGrammarFeatures_GrammarCategory *this, const morphun::lang::features::LanguageGrammarFeatures_GrammarCategory *a2)
{
  *this = &unk_1F3CD9408;
  if (*(a2 + 31) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  std::set<std::basic_string<char16_t>>::set[abi:se200100](this + 4, a2 + 32);
  std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>::multimap[abi:se200100](this + 7, a2 + 7);
  std::map<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>::map[abi:se200100](this + 10, a2 + 10);
  *(this + 104) = *(a2 + 104);
  return this;
}

void sub_1BE5FAD38(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(*(v1 + 64));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(v1 + 40));
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void morphun::lang::features::LanguageGrammarFeatures::getCategories(morphun::lang::features::LanguageGrammarFeatures *this@<X0>, void *a2@<X8>)
{
  v4 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v5 = 1;
  do
  {
    v6 = v5;
    morphun::lang::features::LanguageGrammarFeatures::addCategory(a2, &morphun::lang::features::GRAMMAR_XML_COMMON0_GRAMMAR0_CATEGORYS + 48 * v4);
    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  v7 = *(this + 17);
  if (v7 != &unk_1E805AA80 && *v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      morphun::lang::features::LanguageGrammarFeatures::addCategory(a2, *(v7 + 1) + v8);
      ++v9;
      v7 = *(this + 17);
      v8 += 48;
    }

    while (v9 < *v7);
  }
}

void morphun::lang::features::LanguageGrammarFeatures::getFeatures(morphun::lang::features::LanguageGrammarFeatures *this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v4 = 8u;
  do
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, *(&morphun::lang::features::GRAMMAR_XML_COMMON0_FEATURES0_FEATURES + v4));
    v34 = 0uLL;
    v35 = 0;
    morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::LanguageGrammarFeatures_GrammarFeatures(&__dst, &__p, &v34);
    std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::__emplace_unique_key_args<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures,morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>(a2, &__dst);
    p_dst = &v34;
    std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&p_dst);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p);
    }

    v4 += 32;
  }

  while (v4 != 104);
  if (*(this + 17) == &unk_1E805AA80)
  {
    return;
  }

  v5 = *(this + 18);
  if (*v5 < 1)
  {
    return;
  }

  v6 = 0;
  v29 = this;
  v30 = a2;
  while (1)
  {
    v37 = 0uLL;
    __p = 0;
    v31 = v6;
    v7 = *(v5 + 1) + 32 * v6;
    if (*(v7 + 16) >= 1)
    {
      break;
    }

LABEL_41:
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v34, *(v7 + 8));
    morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::LanguageGrammarFeatures_GrammarFeatures(&__dst, &v34, &__p);
    std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::__emplace_unique_key_args<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures,morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>(v30, &__dst);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

    __dst = &__p;
    std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&__dst);
    v6 = v31 + 1;
    v5 = *(v29 + 18);
    if (v31 + 1 >= *v5)
    {
      return;
    }
  }

  v8 = 0;
  v32 = v7;
  while (1)
  {
    *(&v34 + 1) = 0;
    v35 = 0;
    *&v34 = &v34 + 8;
    v9 = *(v7 + 24) + 32 * v8;
    v10 = *v9;
    if (*v9)
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "c");
      p_dst = &__dst;
      v11 = std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t>&&>,std::tuple<>>(&v34, &__dst);
      std::basic_string<char16_t>::__assign_external((v11 + 56), v10);
      if (SBYTE7(v40) < 0)
      {
        operator delete(__dst);
      }
    }

    v12 = *(v9 + 8);
    if (v12)
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"gender");
      p_dst = &__dst;
      v13 = std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t>&&>,std::tuple<>>(&v34, &__dst);
      std::basic_string<char16_t>::__assign_external((v13 + 56), v12);
      if (SBYTE7(v40) < 0)
      {
        operator delete(__dst);
      }
    }

    v14 = *(v9 + 24);
    if (v14)
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, &word_1BE80A1BE);
      p_dst = &__dst;
      v15 = std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t>&&>,std::tuple<>>(&v34, &__dst);
      std::basic_string<char16_t>::__assign_external((v15 + 56), v14);
      if (SBYTE7(v40) < 0)
      {
        operator delete(__dst);
      }
    }

    v16 = v37;
    if (v37 >= *(&v37 + 1))
    {
      break;
    }

    std::construct_at[abi:se200100]<morphun::lang::features::LanguageGrammarFeatures_Feature,char16_t const* const&,std::map<std::basic_string<char16_t>,std::basic_string<char16_t>> &,morphun::lang::features::LanguageGrammarFeatures_Feature*>(v37, *(v9 + 16), &v34);
    v17 = v16 + 56;
LABEL_40:
    *&v37 = v17;
    std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(*(&v34 + 1));
    if (++v8 >= *(v7 + 16))
    {
      goto LABEL_41;
    }
  }

  v18 = 0x6DB6DB6DB6DB6DB7 * ((v37 - __p) >> 3) + 1;
  if (v18 > 0x492492492492492)
  {
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(&v37 + 1) - __p) >> 3) > v18)
  {
    v18 = 0xDB6DB6DB6DB6DB6ELL * ((*(&v37 + 1) - __p) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(&v37 + 1) - __p) >> 3)) >= 0x249249249249249)
  {
    v19 = 0x492492492492492;
  }

  else
  {
    v19 = v18;
  }

  p_p = &__p;
  if (v19)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeatureModel_DisplayValue>>(v19);
  }

  __dst = 0;
  v39 = (8 * ((v37 - __p) >> 3));
  v40 = v39;
  std::construct_at[abi:se200100]<morphun::lang::features::LanguageGrammarFeatures_Feature,char16_t const* const&,std::map<std::basic_string<char16_t>,std::basic_string<char16_t>> &,morphun::lang::features::LanguageGrammarFeatures_Feature*>(v39, *(v9 + 16), &v34);
  v21 = __p;
  v20 = v37;
  v22 = &v39[-(v37 - __p)];
  *&v40 = v40 + 56;
  if (v37 == __p)
  {
LABEL_39:
    v27 = __p;
    v28 = *(&v37 + 1);
    __p = v22;
    v33 = v40;
    v37 = v40;
    *&v40 = v27;
    *(&v40 + 1) = v28;
    __dst = v27;
    v39 = v27;
    std::__split_buffer<morphun::dialog::SemanticFeatureModel_DisplayValue>::~__split_buffer(&__dst);
    v17 = v33;
    v7 = v32;
    goto LABEL_40;
  }

  v23 = 0;
  while (&v22[v23])
  {
    *&v22[v23] = &unk_1F3CD9458;
    v24 = &v21[v23];
    if (v21[v23 + 31] < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v22[v23 + 8], *(v24 + 1), *(v24 + 2));
    }

    else
    {
      v25 = *(v24 + 8);
      *&v22[v23 + 24] = *(v24 + 3);
      *&v22[v23 + 8] = v25;
    }

    std::map<std::basic_string<char16_t>,std::basic_string<char16_t>>::map[abi:se200100](&v22[v23 + 32], &v21[v23 + 32]);
    v23 += 56;
    if (&v21[v23] == v20)
    {
      v26 = v21;
      while (v21)
      {
        (*(*v21 + 8))(v21);
        v26 += 56;
        v21 += 56;
        if (v21 == v20)
        {
          goto LABEL_39;
        }
      }

      break;
    }
  }

  __break(1u);
}

void sub_1BE5FB344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  __p = &a24;
  std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&__p);
  std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(*a9);
  _Unwind_Resume(a1);
}

BOOL std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::__emplace_unique_key_args<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures,morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>(uint64_t a1, uint64_t a2)
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
      if (!morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::operator<(a2, (v2 + 4)))
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    result = morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures::operator<((v4 + 4), a2);
    if (!result)
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

void sub_1BE5FB638(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<morphun::dialog::SemanticValue,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<morphun::dialog::SemanticValue,void *>>>>::~unique_ptr[abi:se200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t>&&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *std::__tree<std::basic_string<char16_t>>::__find_equal<std::basic_string<char16_t>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::__assign_external(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s)
{
  if (*__s)
  {
    v2 = 0;
    do
    {
      v3 = v2 + 1;
    }

    while (__s[++v2]);
  }

  else
  {
    v3 = 0;
  }

  return std::basic_string<char16_t>::__assign_external(this, __s, v3);
}

uint64_t std::construct_at[abi:se200100]<morphun::lang::features::LanguageGrammarFeatures_Feature,char16_t const* const&,std::map<std::basic_string<char16_t>,std::basic_string<char16_t>> &,morphun::lang::features::LanguageGrammarFeatures_Feature*>(uint64_t result, _WORD *a2, void *a3)
{
  if (result)
  {
    v4 = result;
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, a2);
    morphun::lang::features::LanguageGrammarFeatures_Feature::LanguageGrammarFeatures_Feature(v4, __p, a3);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BE5FB794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<morphun::tokenizer::TokenExtractor const>(uint64_t result)
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

void sub_1BE5FBAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  morphun::tokenizer::dictionary::DictionaryTokenizerConfig::~DictionaryTokenizerConfig(&a10);
  MEMORY[0x1BFB49160](v43, v44);
  _Unwind_Resume(a1);
}

uint64_t morphun::analysis::filter::NumberToWordFilter::incrementToken(morphun::analysis::filter::NumberToWordFilter *this)
{
  v2 = (this + 128);
  if (*(this + 16) != *(this + 17))
  {
    v3 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 19));
    v4 = *(this + 16);
    if (v4 != *(this + 17))
    {
      std::basic_string<char16_t>::operator=((v3 + *(*v3 - 96)), v4);
      v5 = *(this + 16);
      v6 = *(this + 17);
      if (v6 != v5)
      {
        if ((v5 + 24) != v6)
        {
          do
          {
            if (*(v5 + 23) < 0)
            {
              operator delete(*v5);
            }

            *v5 = *(v5 + 24);
            *(v5 + 16) = *(v5 + 40);
            *(v5 + 47) = 0;
            v7 = (v5 + 48);
            *(v5 + 24) = 0;
            v5 += 24;
          }

          while (v7 != v6);
          v6 = *(this + 17);
        }

        while (v6 != v5)
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        *(this + 17) = v5;
        return 1;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v10 = *(this + 15);
  if (!v10)
  {
    goto LABEL_84;
  }

  result = (*(*v10 + 24))(v10);
  if (result)
  {
    v11 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 19));
    v12 = v11 + *(*v11 - 96);
    v13 = v12[23];
    if (v13 < 0)
    {
      v13 = *(v12 + 1);
    }

    if (v13)
    {
      v14 = v13 <= 12;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      if (v13 < 1)
      {
LABEL_33:
        v58 = 0;
        if (!*(this + 36))
        {
          if (*(this + 287) < 0)
          {
            v20 = *(this + 33);
          }

          *(this + 36) = unum_open();
        }

        if (!*(this + 37))
        {
          if (*(this + 287) < 0)
          {
            v21 = *(this + 33);
          }

          *(this + 37) = unum_open();
        }

        v22 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 19));
        v23 = v22 + *(*v22 - 96);
        if (v23[23] < 0)
        {
          v24 = *v23;
        }

        v25 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 19));
        v26 = v25 + *(*v25 - 96);
        if ((v26[23] & 0x8000000000000000) != 0)
        {
          v27 = *(v26 + 1);
        }

        unum_parseInt64();
        if (v58 <= 0)
        {
          v28 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 19));
          v29 = v28 + *(*v28 - 96);
          if (v29[23] < 0)
          {
            v30 = (*(v29 + 4) - 1);
          }

          memset(&v57, 0, sizeof(v57));
          v31 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 19));
          v32 = v31 + *(*v31 - 96);
          if (v32[23] < 0)
          {
            v33 = (*(v32 + 2) & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          else
          {
            v33 = 10;
          }

          std::basic_string<char16_t>::resize(&v57, v33, 0);
          v34 = *(this + 36);
          v35 = unum_formatInt64();
          if (v58 == 15)
          {
            v58 = 0;
            std::basic_string<char16_t>::resize(&v57, v35 + 1, 0);
            v36 = *(this + 36);
            v35 = unum_formatInt64();
          }

          v37 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v37 = v57.__r_.__value_.__r.__words[1];
          }

          if (v35 != v37)
          {
            std::basic_string<char16_t>::resize(&v57, v35, 0);
          }

          if (v58 <= 0)
          {
            std::vector<std::basic_string<char16_t>>::clear[abi:se200100](v2);
            v38 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 19));
            v39 = v38 + *(*v38 - 96);
            if (v39[23] < 0)
            {
              **v39 = 0;
              *(v39 + 1) = 0;
            }

            else
            {
              *v39 = 0;
              v39[23] = 0;
            }

            size = SHIBYTE(v57.__r_.__value_.__r.__words[2]);
            v41 = v57.__r_.__value_.__r.__words[0];
            if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v41 = &v57;
            }

            if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v57.__r_.__value_.__l.__size_;
            }

            v49 = 0;
            v50 = 0;
            v51 = &word_1BE80F394;
            v52 = 1;
            v53 = v41;
            v54 = size;
            v55 = size;
            v56 = 0;
            if (size >= 1)
            {
              morphun::util::DelimitedStringIterator::getNext(&v49);
            }

            for (i = 1; v56 < v55 || v50 != 0; i = 0)
            {
              if (i)
              {
                v44 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 19));
                if (!v49 && v50)
                {
                  goto LABEL_83;
                }

                std::basic_string<char16_t>::__assign_external((v44 + *(*v44 - 96)), v49, v50);
              }

              else
              {
                v48[0] = v49;
                v48[1] = v50;
                v45 = *(this + 17);
                if (v45 >= *(this + 18))
                {
                  v46 = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::u16string_view>(v2, v48);
                }

                else
                {
                  std::allocator_traits<std::allocator<std::basic_string<char16_t>>>::construct[abi:se200100]<std::basic_string<char16_t>,std::u16string_view,void,0>(*(this + 17), v49, v50);
                  v46 = v45 + 24;
                  *(this + 17) = v45 + 24;
                }

                *(this + 17) = v46;
              }

              morphun::util::DelimitedStringIterator::operator++(&v49);
            }
          }

          if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        v15 = 0;
        v16 = v13 & 0x7FFFFFFF;
        while (1)
        {
          v17 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 19));
          v18 = v17 + *(*v17 - 96);
          v19 = v18[23];
          if ((v19 & 0x8000000000000000) != 0)
          {
            if (*(v18 + 1) < v15)
            {
              goto LABEL_83;
            }

            v18 = *v18;
          }

          else if (v15 > v19)
          {
            goto LABEL_83;
          }

          if (!u_isdigit(*&v18[2 * v15]))
          {
            break;
          }

          if (v16 == ++v15)
          {
            goto LABEL_33;
          }
        }
      }
    }

    return 1;
  }

  return result;
}

void sub_1BE5FC0F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::allocator_traits<std::allocator<std::basic_string<char16_t>>>::construct[abi:se200100]<std::basic_string<char16_t>,std::u16string_view,void,0>(_BYTE *__dst, _WORD *__src, unint64_t a3)
{
  if (!__dst)
  {
    goto LABEL_14;
  }

  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_15;
  }

  if (a3 > 0xA)
  {
    if ((a3 | 3) == 0xB)
    {
      v3 = 13;
    }

    else
    {
      v3 = (a3 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v3);
  }

  __dst[23] = a3;
  v4 = &__dst[2 * a3];
  if (__dst <= __src && v4 > __src)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a3)
  {
    __dst = memmove(__dst, __src, 2 * a3);
  }

  *v4 = 0;
  return __dst;
}

uint64_t std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::u16string_view>(uint64_t a1, uint64_t a2)
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
  std::allocator_traits<std::allocator<std::basic_string<char16_t>>>::construct[abi:se200100]<std::basic_string<char16_t>,std::u16string_view,void,0>((24 * v2), *a2, *(a2 + 8));
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

void sub_1BE5FC34C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void morphun::analysis::filter::NumberToWordFilter::~NumberToWordFilter(morphun::analysis::filter::NumberToWordFilter *this)
{
  morphun::analysis::filter::NumberToWordFilter::~NumberToWordFilter(this);

  JUMPOUT(0x1BFB49160);
}

{
  if (*(this + 36))
  {
    unum_close();
  }

  if (*(this + 37))
  {
    unum_close();
  }

  v2 = (this + 128);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v2);

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA458);
}

void morphun::analysis::DictionaryExposableMorphology::~DictionaryExposableMorphology(void **this)
{
  *this = &unk_1F3CD2000;

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD2000;
}

void morphun::analysis::DictionaryExposableMorphology::getWordGrammemeSets(void *a1, uint64_t a2, const std::string::value_type *a3, unint64_t a4)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15 = 0;
  if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(a2 + 8), &v15, a3, a4))
  {
    v13 = 0uLL;
    v14 = 0;
    morphun::dictionary::Inflector::getInflectionPatternsForWord(*(a2 + 16), a3, a4, &v13);
    v12 = *(&v13 + 1);
    v6 = v13;
    if (v13 != *(&v13 + 1))
    {
      while (1)
      {
        v7 = *(v6 + 8);
        if (!*(v6 + 18))
        {
          break;
        }

        morphun::dictionary::Inflector_InflectionPattern::inflectionsForSurfaceForm(v16, v6, a3, a4, v15);
        if (v16[0] != v16[1])
        {
          v8 = *(v16[0] + 2) | v7;
          std::__allocate_at_least[abi:se200100]<std::allocator<long long>>(1uLL);
        }

        if (v16[0])
        {
          operator delete(v16[0]);
        }

        v6 += 40;
        if (v6 == v12)
        {
          v16[0] = v15;
          a1[1] = 0;
          a1[2] = 0;
          *a1 = 0;
          std::vector<long long>::__init_with_size[abi:se200100]<long long const*,long long const*>();
        }
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<long long>>(1uLL);
    }

    v16[0] = v15;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    std::vector<long long>::__init_with_size[abi:se200100]<long long const*,long long const*>();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1BE5FC7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (v17)
  {
    operator delete(v17);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE5FC878(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

morphun::analysis::DictionaryExposableMorphology *morphun::analysis::DictionaryExposableMorphology::DictionaryExposableMorphology(morphun::analysis::DictionaryExposableMorphology *this, const morphun::util::ULocale *a2)
{
  *this = &unk_1F3CD2000;
  Dictionary = morphun::dictionary::DictionaryMetaData::createDictionary(a2, a2);
  *(this + 1) = npc<morphun::dictionary::DictionaryMetaData const>(Dictionary);
  *(this + 2) = morphun::dictionary::Inflector::getInflector(a2, v5);
  morphun::util::ULocale::ULocale(this + 24, a2);
  return this;
}

void morphun::analysis::DictionaryExposableMorphology::~DictionaryExposableMorphology(void **this, void **a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 5)) = a2[1];
}

void virtual thunk tomorphun::analysis::DictionaryExposableMorphology::~DictionaryExposableMorphology(morphun::analysis::DictionaryExposableMorphology *this)
{
  v1 = (this + *(*this - 32));
  *v1 = &unk_1F3CD2000;
}

{
  v1 = (this + *(*this - 32));
  *v1 = &unk_1F3CD2000;

  JUMPOUT(0x1BFB49160);
}

void sub_1BE5FCED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v22, v23);
  _Unwind_Resume(a1);
}

void morphun::analysis::ItAnalyzer::~ItAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB050);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB050);
}

morphun::dialog::SemanticConceptList *morphun::dialog::SemanticConceptList::SemanticConceptList(morphun::dialog::SemanticConceptList *this, const morphun::dialog::SemanticConceptList *a2)
{
  *this = &off_1F3CECFC8;
  v4 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(this, off_1F3CDCBA8, a2);
  *v4 = &unk_1F3CD8BF0;
  *(v4 + 5) = 0;
  v5 = (v4 + 40);
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  morphun::dialog::SpeakableString::SpeakableString((v4 + 64), (a2 + 64));
  morphun::dialog::SpeakableString::SpeakableString((this + 104), (a2 + 104));
  morphun::dialog::SpeakableString::SpeakableString((this + 144), (a2 + 144));
  morphun::dialog::SpeakableString::SpeakableString((this + 184), (a2 + 184));
  morphun::dialog::SpeakableString::SpeakableString((this + 224), (a2 + 224));
  morphun::dialog::SpeakableString::SpeakableString((this + 264), (a2 + 264));
  morphun::dialog::SpeakableString::SpeakableString((this + 304), (a2 + 304));
  *(this + 344) = 1;
  v7 = *(a2 + 5);
  v6 = *(a2 + 6);
  while (v7 != v6)
  {
    if (*v7)
    {
      v9 = (*(**v7 + 128))(*v7);
      std::vector<morphun::dialog::SemanticFeatureConceptBase *>::push_back[abi:se200100](v5, &v9);
    }

    ++v7;
  }

  return this;
}

void sub_1BE5FD354(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v1, off_1F3CDCBA8);
  _Unwind_Resume(a1);
}

void *std::vector<morphun::dialog::SemanticFeatureConceptBase *>::push_back[abi:se200100](void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2)
  {
    v4 = v3 - *result;
    v5 = (v4 >> 3) + 1;
    if (v5 >> 61)
    {
      goto LABEL_14;
    }

    v6 = v2 - *result;
    v7 = v6 >> 2;
    if (v6 >> 2 <= v5)
    {
      v7 = (v4 >> 3) + 1;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:se200100]();
    }

LABEL_13:
    __break(1u);
LABEL_14:
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  *v3 = *a2;
  result[1] = v3 + 1;
  return result;
}

void morphun::dialog::SemanticConceptList::getFeatureValue(uint64_t **this, const morphun::dialog::SemanticFeature *a2)
{
  if (this[5] != this[6])
  {
    v4 = ((*this)[5])(this);
    if (!v4)
    {
      goto LABEL_14;
    }

    morphun::lang::features::LanguageGrammarFeatures::getLanguageGrammarFeatures((v4 + 104), &v12);
    morphun::lang::features::LanguageGrammarFeatures::getCategories(&v12, &v14);
    v5 = (*(*a2 + 32))(a2);
    v6 = v15;
    if (!v15)
    {
LABEL_9:
      std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>>>::destroy(v6);
      v12 = &unk_1F3CD94A8;
      morphun::dialog::SemanticConceptList::toSpeakableString(this, a2);
      return;
    }

    v7 = v5;
    v8 = v15;
    while (1)
    {
      if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v7, v8 + 16) & 0x80) == 0)
      {
        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v8 + 16, v7) & 0x80) == 0)
        {
          std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>>>::destroy(v6);
          v12 = &unk_1F3CD94A8;
          v9 = this[5];
          if (this[6] != v9)
          {
            v10 = npc<morphun::dialog::SemanticFeatureConceptBase>(*v9);
            (*(*v10 + 104))(v10, a2);
            return;
          }

          __break(1u);
LABEL_14:
          exception = __cxa_allocate_exception(0x38uLL);
          morphun::exception::NullPointerException::NullPointerException(exception);
        }

        v8 += 8;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_9;
      }
    }
  }
}

void morphun::dialog::SemanticConceptList::toSpeakableString(morphun::dialog::SemanticConceptList *this, const morphun::dialog::SemanticFeature *a2)
{
  if (*(this + 5) != *(this + 6))
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, &word_1BE80F080);
    morphun::dialog::SpeakableString::SpeakableString(v50, &__dst);
    if (v49 < 0)
    {
      operator delete(__dst);
    }

    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, &word_1BE80F080);
    morphun::dialog::SpeakableString::SpeakableString(&__dst, &__p);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p);
    }

    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v41, &word_1BE80F080);
    morphun::dialog::SpeakableString::SpeakableString(&__p, &v41);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41);
    }

    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v38, &word_1BE80F080);
    morphun::dialog::SpeakableString::SpeakableString(&v41, &v38);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }

    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v36, &word_1BE80F080);
    morphun::dialog::SpeakableString::SpeakableString(&v38, v36);
    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    v4 = *(this + 5);
    v5 = *(this + 6);
    if (v4 != v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = *(v5 - 1);
      v9 = *v4;
      while (1)
      {
        v10 = *v4;
        npc<morphun::dialog::SemanticFeatureConceptBase>(*v4);
        v11 = *v10;
        v12 = a2 ? (*(v11 + 104))(v10, a2) : (*(*&v10[*(v11 - 56)] + 24))(&v10[*(v11 - 56)]);
        v13 = v12;
        if (v12)
        {
          if (((*(*v12 + 56))(v12) & 1) == 0)
          {
            break;
          }
        }

        v10 = v6;
LABEL_127:
        ++v4;
        v6 = v10;
        if (v4 == v5)
        {
          operator new();
        }
      }

      morphun::dialog::SpeakableString::operator=(&__p, &__dst);
      if (v9 != v10)
      {
        goto LABEL_31;
      }

      if ((*(this + 95) & 0x8000000000000000) != 0)
      {
        if (!*(this + 10))
        {
LABEL_25:
          v14 = *(this + 12);
          if (v14)
          {
            if ((*(v14 + 23) & 0x8000000000000000) != 0)
            {
              if (*(v14 + 8))
              {
                goto LABEL_28;
              }
            }

            else if (*(v14 + 23))
            {
              goto LABEL_28;
            }
          }

          (*(*this + 144))(v36, this, v10, v13);
          morphun::dialog::SpeakableString::operator+=(v50, v36);
LABEL_31:
          if (v9 != v6)
          {
            goto LABEL_43;
          }

          if ((*(this + 135) & 0x8000000000000000) != 0)
          {
            if (!*(this + 15))
            {
LABEL_36:
              v15 = *(this + 17);
              if (v15)
              {
                if ((*(v15 + 23) & 0x8000000000000000) != 0)
                {
                  if (*(v15 + 8))
                  {
                    goto LABEL_39;
                  }
                }

                else if (*(v15 + 23))
                {
                  goto LABEL_39;
                }
              }

              if (!v9)
              {
                exception = __cxa_allocate_exception(0x38uLL);
                morphun::exception::NullPointerException::NullPointerException(exception);
              }

              (*(*this + 160))(v36, this, v6, v7, v10, v13);
              morphun::dialog::SpeakableString::operator+=(&__p, v36);
LABEL_43:
              if (v8 != v10 || !v6)
              {
LABEL_55:
                if (v8 == v9 || v9 == v10 || !v6)
                {
                  goto LABEL_63;
                }

                v17 = v46;
                if ((v46 & 0x80u) != 0)
                {
                  v17 = v45;
                }

                if (v17)
                {
                  goto LABEL_61;
                }

                if (v47)
                {
                  if ((*(v47 + 23) & 0x8000000000000000) == 0)
                  {
                    if (!*(v47 + 23))
                    {
                      goto LABEL_130;
                    }

LABEL_61:
                    p_p = &__p;
LABEL_62:
                    morphun::dialog::SpeakableString::operator+=(v50, p_p);
                    goto LABEL_63;
                  }

                  if (*(v47 + 8))
                  {
                    goto LABEL_61;
                  }
                }

LABEL_130:
                v32 = *(this + 175);
                if (v32 < 0)
                {
                  v32 = *(this + 20);
                }

                p_p = (this + 144);
                if (v32)
                {
                  goto LABEL_62;
                }

                v33 = *(this + 22);
                if (v33)
                {
                  v34 = *(v33 + 23);
                  if (v34 < 0)
                  {
                    v34 = *(v33 + 8);
                  }

                  p_p = (this + 144);
                  if (v34)
                  {
                    goto LABEL_62;
                  }
                }

                (*(*this + 176))(v36, this, v6, v7, v10, v13);
                morphun::dialog::SpeakableString::operator+=(v50, v36);
LABEL_63:
                if ((*(this + 295) & 0x8000000000000000) != 0)
                {
                  if (!*(this + 35))
                  {
                    goto LABEL_67;
                  }
                }

                else if (!*(this + 295))
                {
LABEL_67:
                  v19 = *(this + 37);
                  if (v19)
                  {
                    if ((*(v19 + 23) & 0x8000000000000000) != 0)
                    {
                      if (*(v19 + 8))
                      {
                        goto LABEL_70;
                      }
                    }

                    else if (*(v19 + 23))
                    {
                      goto LABEL_70;
                    }
                  }

                  (*(*this + 224))(v36, this, v10, v13);
                  morphun::dialog::SpeakableString::operator=(&v41, v36);
LABEL_77:
                  if ((*(this + 335) & 0x8000000000000000) != 0)
                  {
                    if (!*(this + 40))
                    {
                      goto LABEL_81;
                    }
                  }

                  else if (!*(this + 335))
                  {
LABEL_81:
                    v20 = *(this + 42);
                    if (v20)
                    {
                      if ((*(v20 + 23) & 0x8000000000000000) != 0)
                      {
                        if (*(v20 + 8))
                        {
                          goto LABEL_84;
                        }
                      }

                      else if (*(v20 + 23))
                      {
                        goto LABEL_84;
                      }
                    }

                    (*(*this + 240))(v36, this, v10, v13);
                    morphun::dialog::SpeakableString::operator=(&v38, v36);
                    goto LABEL_87;
                  }

LABEL_84:
                  morphun::dialog::SpeakableString::operator=(&v38, this + 304);
LABEL_87:
                  if (*(this + 344) != 1)
                  {
                    goto LABEL_100;
                  }

                  v21 = (*(*v13 + 32))(v13);
                  if ((v43 & 0x80u) == 0)
                  {
                    v22 = &v41 + 4;
                  }

                  else
                  {
                    v22 = *(&v41 + 1);
                  }

                  if ((v43 & 0x80u) == 0)
                  {
                    v23 = v43;
                  }

                  else
                  {
                    v23 = v42;
                  }

                  v24 = *(v21 + 23);
                  if (v24 >= 0)
                  {
                    v25 = v21;
                  }

                  else
                  {
                    v25 = *v21;
                  }

                  if (v24 < 0)
                  {
                    v24 = *(v21 + 8);
                  }

                  v36[0] = v25;
                  v36[1] = v24;
                  if (!std::u16string_view::starts_with[abi:se200100](v36, v22, v23))
                  {
LABEL_100:
                    morphun::dialog::SpeakableString::operator+=(v50, &v41);
                  }

                  morphun::dialog::SpeakableString::operator+=(v50, v13);
                  if (*(this + 344) != 1)
                  {
                    goto LABEL_114;
                  }

                  v26 = (*(*v13 + 32))(v13);
                  v27 = (v40 & 0x80u) == 0 ? (&v38 + 8) : *(&v38 + 1);
                  v28 = (v40 & 0x80u) == 0 ? v40 : v39;
                  v29 = *(v26 + 23);
                  v30 = v29 >= 0 ? v26 : *v26;
                  if (v29 < 0)
                  {
                    v29 = *(v26 + 8);
                  }

                  v36[0] = v30;
                  v36[1] = v29;
                  if (!std::u16string_view::ends_with[abi:se200100](v36, v27, v28))
                  {
LABEL_114:
                    morphun::dialog::SpeakableString::operator+=(v50, &v38);
                  }

                  if (v8 != v10)
                  {
LABEL_124:
                    if (!v7)
                    {
LABEL_126:
                      v7 = v13;
                      goto LABEL_127;
                    }

LABEL_125:
                    (*(*v7 + 16))(v7);
                    goto LABEL_126;
                  }

                  if ((*(this + 255) & 0x8000000000000000) != 0)
                  {
                    if (!*(this + 30))
                    {
                      goto LABEL_120;
                    }
                  }

                  else if (!*(this + 255))
                  {
LABEL_120:
                    v31 = *(this + 32);
                    if (v31)
                    {
                      if ((*(v31 + 23) & 0x8000000000000000) != 0)
                      {
                        if (*(v31 + 8))
                        {
                          goto LABEL_123;
                        }
                      }

                      else if (*(v31 + 23))
                      {
                        goto LABEL_123;
                      }
                    }

                    (*(*this + 208))(v36, this, v10, v13);
                    morphun::dialog::SpeakableString::operator+=(v50, v36);
                    if (!v7)
                    {
                      goto LABEL_126;
                    }

                    goto LABEL_125;
                  }

LABEL_123:
                  morphun::dialog::SpeakableString::operator+=(v50, this + 224);
                  goto LABEL_124;
                }

LABEL_70:
                morphun::dialog::SpeakableString::operator=(&v41, this + 264);
                goto LABEL_77;
              }

              if ((*(this + 215) & 0x8000000000000000) != 0)
              {
                if (!*(this + 25))
                {
                  goto LABEL_49;
                }
              }

              else if (!*(this + 215))
              {
LABEL_49:
                v16 = *(this + 27);
                if (v16)
                {
                  if ((*(v16 + 23) & 0x8000000000000000) != 0)
                  {
                    if (*(v16 + 8))
                    {
                      goto LABEL_52;
                    }
                  }

                  else if (*(v16 + 23))
                  {
                    goto LABEL_52;
                  }
                }

                (*(*this + 192))(v36, this, v6, v7, v10, v13);
                morphun::dialog::SpeakableString::operator+=(&__p, v36);
                goto LABEL_55;
              }

LABEL_52:
              morphun::dialog::SpeakableString::operator+=(&__p, this + 184);
              goto LABEL_55;
            }
          }

          else if (!*(this + 135))
          {
            goto LABEL_36;
          }

LABEL_39:
          morphun::dialog::SpeakableString::operator+=(&__p, this + 104);
          goto LABEL_43;
        }
      }

      else if (!*(this + 95))
      {
        goto LABEL_25;
      }

LABEL_28:
      morphun::dialog::SpeakableString::operator+=(v50, this + 64);
      goto LABEL_31;
    }

    __break(1u);
  }
}

void sub_1BE5FE05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (v41)
  {
    (*(*v41 + 16))(v41);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::SemanticConceptList::reset(morphun::dialog::SemanticConceptList *this)
{
  v2 = *(this + 5);
  v3 = *(this + 6);
  while (v2 != v3)
  {
    v4 = *v2++;
    v5 = npc<morphun::dialog::SemanticFeatureConceptBase>(v4);
    (*(*v5 + 96))(v5);
  }

  v7 = *(this + 3);
  v6 = (this + 24);
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(v7);
  *v6 = 0;
  v6[1] = 0;
  *(v6 - 1) = v6;
}

morphun::dialog::SemanticFeatureConceptBase *morphun::dialog::SemanticConceptList::clearConstraint(morphun::dialog::SemanticConceptList *this, const morphun::dialog::SemanticFeature *a2)
{
  v4 = *(this + 5);
  v5 = *(this + 6);
  while (v4 != v5)
  {
    v6 = *v4++;
    v7 = npc<morphun::dialog::SemanticFeatureConceptBase>(v6);
    (*(*v7 + 80))(v7, a2);
  }

  return morphun::dialog::SemanticFeatureConceptBase::clearConstraint(this, a2);
}

std::basic_string<char16_t> *morphun::dialog::SemanticConceptList::putConstraint(uint64_t a1, uint64_t a2, const std::basic_string<char16_t> *a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  while (v6 != v7)
  {
    v8 = *v6++;
    v9 = npc<morphun::dialog::SemanticFeatureConceptBase>(v8);
    (*(*v9 + 64))(v9, a2, a3);
  }

  v10 = (std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__emplace_unique_key_args<morphun::dialog::SemanticFeature,std::piecewise_construct_t const&,std::tuple<morphun::dialog::SemanticFeature const&>,std::tuple<>>(a1 + 16, a2) + 104);

  return std::basic_string<char16_t>::operator=(v10, a3);
}

void morphun::dialog::SemanticConceptList::~SemanticConceptList(morphun::dialog::SemanticConceptList *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dialog::SemanticConceptList::~SemanticConceptList(morphun::dialog::SemanticConceptList *this, void ***a2)
{
  v4 = *a2;
  *this = *a2;
  *(*(v4 - 9) + this) = a2[5];
  *(this + *(*this - 56)) = a2[6];
  *(this + *(*this - 40)) = a2[7];
  v5 = *(this + 5);
  v6 = *(this + 6);
  while (v5 != v6)
  {
    if (*v5)
    {
      (*(**v5 + 16))(*v5);
    }

    ++v5;
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(this + 6) = v7;
    operator delete(v7);
  }

  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(this, a2 + 1);
}

void morphun::dialog::SemanticConceptList::toString(morphun::dialog::SemanticConceptList *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, &word_1BE80F080);
  morphun::dialog::SpeakableString::SpeakableString(&v12, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L", ");
  morphun::dialog::SpeakableString::SpeakableString(__p, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v4 = *(this + 5);
  v5 = *(this + 6);
  if (v4 != v5)
  {
    v6 = 1;
    do
    {
      v7 = *v4;
      if ((v6 & 1) == 0)
      {
        morphun::dialog::SpeakableString::operator+=(&v12, __p);
      }

      npc<morphun::dialog::SemanticFeatureConceptBase>(v7);
      v8 = (*(*&v7[*(*v7 - 56)] + 24))(&v7[*(*v7 - 56)]);
      if (v8)
      {
        morphun::dialog::SpeakableString::operator+=(&v12, v8);
        (*(*v8 + 16))(v8);
      }

      v6 = 0;
      ++v4;
    }

    while (v4 != v5);
  }

  std::operator+<char16_t>(&__dst, "[", &v13);
  std::basic_string<char16_t>::append(&__dst, "]", 1uLL);
  *a2 = __dst;
}

void sub_1BE5FE820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::SemanticConceptList::SemanticConceptList(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(a1, (a2 + 1), a3);
  v8 = *a2;
  *v7 = *a2;
  *(a1 + *(v8 - 72)) = a2[5];
  *(a1 + *(*a1 - 56)) = a2[6];
  *(a1 + *(*a1 - 40)) = a2[7];
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v12 = 0uLL;
  v13 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 64), &v12);
  v12 = 0uLL;
  v13 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 104), &v12);
  v12 = 0uLL;
  v13 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 144), &v12);
  v12 = 0uLL;
  v13 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 184), &v12);
  v12 = 0uLL;
  v13 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 224), &v12);
  v12 = 0uLL;
  v13 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 264), &v12);
  v12 = 0uLL;
  v13 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 304), &v12);
  v10 = *a4;
  v9 = *(a4 + 8);
  *(a1 + 344) = 1;
  while (v10 != v9)
  {
    if (*v10)
    {
      *&v12 = (*(**v10 + 128))(*v10);
      std::vector<morphun::dialog::SemanticFeatureConceptBase *>::push_back[abi:se200100]((a1 + 40), &v12);
    }

    ++v10;
  }

  return a1;
}

void sub_1BE5FEAFC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::SemanticConceptList::SemanticConceptList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &off_1F3CECFC8;
  v5 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(a1, off_1F3CDCBA8, a2);
  v5[5] = 0;
  v6 = v5 + 5;
  *v5 = &unk_1F3CD8BF0;
  v5[6] = 0;
  v5[7] = 0;
  v10 = 0uLL;
  v11 = 0;
  morphun::dialog::SpeakableString::SpeakableString(v5 + 8, &v10);
  v10 = 0uLL;
  v11 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 104), &v10);
  v10 = 0uLL;
  v11 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 144), &v10);
  v10 = 0uLL;
  v11 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 184), &v10);
  v10 = 0uLL;
  v11 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 224), &v10);
  v10 = 0uLL;
  v11 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 264), &v10);
  v10 = 0uLL;
  v11 = 0;
  morphun::dialog::SpeakableString::SpeakableString((a1 + 304), &v10);
  v8 = *a3;
  v7 = *(a3 + 8);
  *(a1 + 344) = 1;
  while (v8 != v7)
  {
    if (*v8)
    {
      *&v10 = (*(**v8 + 128))(*v8);
      std::vector<morphun::dialog::SemanticFeatureConceptBase *>::push_back[abi:se200100](v6, &v10);
    }

    ++v8;
  }

  return a1;
}

void sub_1BE5FED3C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v1, off_1F3CDCBA8);
  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::SemanticConceptList::SemanticConceptList(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  morphun::dialog::convertToConst(__p, a4);
  morphun::dialog::SemanticConceptList::SemanticConceptList(a1, a2, a3, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1BE5FEE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t morphun::dialog::convertToConst(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<morphun::dialog::SemanticFeatureConceptBase const*>::reserve(a1, (a2[1] - *a2) >> 3);
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    return result;
  }

  while (1)
  {
    if (!*v5)
    {
      goto LABEL_14;
    }

    v8 = a1[1];
    v7 = a1[2];
    if (v8 >= v7)
    {
      break;
    }

    if (!v8)
    {
      goto LABEL_17;
    }

    *v8 = *v5;
    a1[1] = v8 + 1;
LABEL_14:
    if (++v5 == v6)
    {
      return result;
    }
  }

  v9 = ((v8 - *a1) >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v10 = v7 - *a1;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    result = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    result = v9;
  }

  if (result)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<__CFLocale const*>>(result);
  }

LABEL_17:
  __break(1u);
  return result;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<morphun::dialog::SemanticFeatureConceptBase const*>::reserve(a1, (a2[1] - *a2) >> 3);
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    return result;
  }

  while (1)
  {
    if (!*v5)
    {
      goto LABEL_14;
    }

    v8 = a1[1];
    v7 = a1[2];
    if (v8 >= v7)
    {
      break;
    }

    if (!v8)
    {
      goto LABEL_17;
    }

    *v8 = *v5;
    a1[1] = v8 + 1;
LABEL_14:
    if (++v5 == v6)
    {
      return result;
    }
  }

  v9 = ((v8 - *a1) >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v10 = v7 - *a1;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    result = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    result = v9;
  }

  if (result)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<__CFLocale const*>>(result);
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1BE5FEFA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<morphun::dialog::SemanticFeatureConceptBase const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:se200100]<std::allocator<__CFLocale const*>>(a2);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  return result;
}

uint64_t morphun::dialog::SemanticConceptList::SemanticConceptList(uint64_t a1, uint64_t a2, void *a3)
{
  morphun::dialog::convertToConst(__p, a3);
  morphun::dialog::SemanticConceptList::SemanticConceptList(a1, a2, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1BE5FF0D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

morphun::dialog::SemanticConceptList *morphun::dialog::SemanticConceptList::SemanticConceptList(morphun::dialog::SemanticConceptList *this, const morphun::dialog::SemanticConceptList *a2, void *a3)
{
  v6 = morphun::dialog::SemanticFeatureConceptBase::SemanticFeatureConceptBase(this, (a2 + 8), a3);
  v7 = *a2;
  *v6 = *a2;
  *(this + *(v7 - 72)) = *(a2 + 5);
  *(this + *(*this - 56)) = *(a2 + 6);
  *(this + *(*this - 40)) = *(a2 + 7);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  morphun::dialog::SpeakableString::SpeakableString((this + 64), (a3 + 8));
  morphun::dialog::SpeakableString::SpeakableString((this + 104), (a3 + 13));
  morphun::dialog::SpeakableString::SpeakableString((this + 144), (a3 + 18));
  morphun::dialog::SpeakableString::SpeakableString((this + 184), (a3 + 23));
  morphun::dialog::SpeakableString::SpeakableString((this + 224), (a3 + 28));
  morphun::dialog::SpeakableString::SpeakableString((this + 264), (a3 + 33));
  morphun::dialog::SpeakableString::SpeakableString((this + 304), (a3 + 38));
  *(this + 344) = 1;
  v9 = a3[5];
  v8 = a3[6];
  while (v9 != v8)
  {
    if (*v9)
    {
      v11 = (*(**v9 + 128))(*v9);
      std::vector<morphun::dialog::SemanticFeatureConceptBase *>::push_back[abi:se200100](this + 5, &v11);
    }

    ++v9;
  }

  return this;
}

void sub_1BE5FF308(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  morphun::dialog::SemanticFeatureConceptBase::~SemanticFeatureConceptBase(v1, (v2 + 8));
  _Unwind_Resume(a1);
}

void virtual thunk tomorphun::dialog::SemanticConceptList::~SemanticConceptList(morphun::dialog::SemanticConceptList *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void virtual thunk tomorphun::dialog::SemanticConceptList::~SemanticConceptList(void *a1)
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

uint64_t morphun::dialog::SemanticConceptList::get(morphun::dialog::SemanticConceptList *this, int a2)
{
  v2 = *(this + 5);
  if (a2 >= ((*(this + 6) - v2) >> 3))
  {
    std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
  }

  return *(v2 + 8 * a2);
}

uint64_t morphun::dialog::SemanticConceptList::operator[](uint64_t a1, int a2)
{
  v2 = *(a1 + 40);
  if (a2 >= ((*(a1 + 48) - v2) >> 3))
  {
    std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
  }

  return *(v2 + 8 * a2);
}

std::basic_string<char16_t>::size_type morphun::analysis::stemmer::DaStemFilter::stem(uint64_t a1, uint64_t a2)
{
  v67 = *MEMORY[0x1E69E9840];
  R1Start = morphun::analysis::stemmer::NordicStemFilter::getR1Start(a2);
  v5 = *(a2 + 23);
  if (v5 < 0)
  {
    v6 = *(a2 + 8);
    if (R1Start >= v6)
    {
      goto LABEL_106;
    }
  }

  else if (R1Start >= v5)
  {
    v6 = *(a2 + 23);
    goto LABEL_106;
  }

  v7 = R1Start;
  std::basic_string<char16_t>::basic_string(&v65, a2, 0, R1Start, v4);
  v9 = *(a2 + 23);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 8);
  }

  std::basic_string<char16_t>::basic_string(&v64, a2, v7, v9 - v7, v8);
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
    v15 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
    v16 = *&v65.__r_.__value_.__l.__data_;
    v17 = morphun::util::LocaleUtils::DANISH(isAllLowerCase);
    if ((v15 & 0x80u) == 0)
    {
      v18 = &v65;
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
    v20 = std::basic_string<char16_t>::operator=(&v65, &__str);
    v21 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
    v22 = *&v64.__r_.__value_.__l.__data_;
    v23 = morphun::util::LocaleUtils::DANISH(v20);
    if ((v21 & 0x80u) == 0)
    {
      v24 = &v64;
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
    std::basic_string<char16_t>::operator=(&v64, &__str);
  }

  {
    operator new();
  }

  v26 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::DaStemFilter::ENDINGS_FIRST_STEP_REMOVE(void)::ENDINGS_FIRST_STEP_REMOVE_);
  v27 = morphun::analysis::stemmer::NordicStemFilter::removeIfEndsWith(&v64, *v26, v26[1]);
  if ((v27 & 1) == 0)
  {
    v27 = std::basic_string<char16_t>::ends_with[abi:se200100](&v64, word_1BE80EB90);
    if (v27)
    {
      std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&__p, &v65, &v64);
      {
        operator new();
      }

      v28 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::DaStemFilter::ENDINGS_FIRST_STEP_SHORTEN(void)::ENDINGS_FIRST_STEP_SHORTEN_);
      morphun::analysis::stemmer::NordicStemFilter::shortenIfEndsWith(&__p, *v28, v28[1]);
      std::basic_string<char16_t>::assign(&v65, &__p, 0, v7);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      v27 = std::basic_string<char16_t>::assign(&v64, &__p, v7, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v30 = morphun::analysis::stemmer::DaStemFilter::ENDINGS_SECOND_STEP(v27);
  morphun::analysis::stemmer::NordicStemFilter::shortenIfEndsWith(&v64, *v30, v30[1]);
  std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&__dst, &v65, &v64);
  v31 = std::basic_string<char16_t>::ends_with[abi:se200100](&__dst, L"igst");
  v32 = v31;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (!v32)
    {
      goto LABEL_46;
    }
  }

  else if (!v31)
  {
    goto LABEL_46;
  }

  std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&__dst, &v65, &v64);
  v33 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v33 = __dst.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::resize(&__dst, v33 - 2, 0);
  std::basic_string<char16_t>::assign(&v65, &__dst, 0, v7);
  v34 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = __dst.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::assign(&v64, &__dst, v7, v34 - v7);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_46:
  {
    operator new();
  }

  v35 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::DaStemFilter::ENDINGS_THIRD_STEP_REMOVE(void)::ENDINGS_THIRD_STEP_REMOVE_);
  v36 = morphun::analysis::stemmer::NordicStemFilter::removeIfEndsWith(&v64, *v35, v35[1]);
  v37 = morphun::analysis::stemmer::DaStemFilter::ENDINGS_SECOND_STEP(v36);
  morphun::analysis::stemmer::NordicStemFilter::shortenIfEndsWith(&v64, *v37, v37[1]);
  if (std::basic_string<char16_t>::ends_with[abi:se200100](&v64, "l"))
  {
    v38 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v64.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::resize(&v64, v38 - 1, 0);
  }

  std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&__dst, &v65, &v64);
  v39 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v39 = __dst.__r_.__value_.__l.__size_;
    if (__dst.__r_.__value_.__l.__size_ <= 3)
    {
      goto LABEL_69;
    }

    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) <= 3)
    {
      goto LABEL_69;
    }

    p_dst = &__dst;
  }

  if ((morphun::analysis::stemmer::NordicStemFilter::isVowel(p_dst->__r_.__value_.__s.__data_[v39 - 1]) & 1) == 0)
  {
    v41 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v43 = __dst.__r_.__value_.__l.__size_;
      if (!__dst.__r_.__value_.__l.__size_)
      {
        goto LABEL_107;
      }

      v42 = (__dst.__r_.__value_.__r.__words[0] + 2 * __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      if (!*(&__dst.__r_.__value_.__s + 23))
      {
        goto LABEL_107;
      }

      v42 = &__dst + 2 * SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v43 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    if (v43 > 1)
    {
      v44 = *(v42 - 1);
      v45 = __dst.__r_.__value_.__r.__words[0];
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &__dst;
      }

      if (v44 == v45->__r_.__value_.__s.__data_[v43 - 2])
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v41 = __dst.__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::resize(&__dst, v41 - 1, 0);
      }

      goto LABEL_69;
    }

LABEL_107:
    __break(1u);
  }

LABEL_69:
  if ((v14 & 1) == 0)
  {
    v46 = *(a2 + 23);
    if (v46 >= 0)
    {
      v47 = a2;
    }

    else
    {
      v47 = *a2;
    }

    if (v46 >= 0)
    {
      v48 = *(a2 + 23);
    }

    else
    {
      v48 = *(a2 + 8);
    }

    isAllUpperCase = morphun::util::StringViewUtils::isAllUpperCase(v47, v48);
    if (isAllUpperCase)
    {
      v50 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v51 = *&__dst.__r_.__value_.__l.__data_;
      v52 = morphun::util::LocaleUtils::DANISH(isAllUpperCase);
      if ((v50 & 0x80u) == 0)
      {
        v53 = &__dst;
      }

      else
      {
        v53 = v51;
      }

      if ((v50 & 0x80u) == 0)
      {
        v54 = v50;
      }

      else
      {
        v54 = DWORD2(v51);
      }

      morphun::util::StringViewUtils::uppercase(a2, v53, v54, v52);
    }

    else
    {
      v55 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v56 = *&__dst.__r_.__value_.__l.__data_;
      v57 = morphun::util::LocaleUtils::DANISH(isAllUpperCase);
      if ((v55 & 0x80u) == 0)
      {
        v58 = &__dst;
      }

      else
      {
        v58 = v56;
      }

      if ((v55 & 0x80u) == 0)
      {
        v59 = v55;
      }

      else
      {
        v59 = *(&v56 + 1);
      }

      morphun::util::StringViewUtils::capitalizeFirst(v58, v59, v57, &__p);
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

    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  std::basic_string<char16_t>::operator=(a2, &__dst);
  v6 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v6 = __dst.__r_.__value_.__l.__size_;
LABEL_99:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_100:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

LABEL_106:
  v60 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1BE5FFCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
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

uint64_t morphun::analysis::stemmer::DaStemFilter::ENDINGS_SECOND_STEP(morphun::analysis::stemmer::DaStemFilter *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::DaStemFilter::ENDINGS_SECOND_STEP(void)::ENDINGS_SECOND_STEP_);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE5FFEF8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x20C40960023A9);
  _Unwind_Resume(a1);
}

void morphun::analysis::stemmer::DaStemFilter::~DaStemFilter(void **this)
{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CDA250);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::~StemmableDictionaryLookupLemmaFilter(this, off_1F3CDA250);
}

uint64_t npc<morphun::analysis::tokenizer::MorphologicalWordToken const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

CFArrayRef matmwt_createLemmaMappings(uint64_t a1)
{
  v1 = npc<morphun::analysis::tokenizer::MorphologicalWordToken const>(a1);
  v2 = (*(*v1 + 64))(v1);
  v3 = v2[1];
  if (v3 != *v2)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 4);
    if (!(v4 >> 61))
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<__CFLocale const*>>(v4);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  return CFArrayCreate(0, 0, 0, &matmwt_createLemmaMappings::callbacks);
}

void sub_1BE6002DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception *a10)
{
  if (a2 == 1)
  {
    v10 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v10, a10, v11);
    __cxa_end_catch();
    JUMPOUT(0x1BE6002A4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t matmwt_lemmaMappings_release(const __CFAllocator *a1, const void *a2)
{
  if (a2)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

void *matmwt_getMorphologicalWordToken(char **a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v1 = **a1;
  if (!result)
  {
    v4 = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"Couldn't cast MToken* to MorphologicalWordToken*");
    morphun::exception::ClassCastException::ClassCastException(v4, &__dst);
  }

  return result;
}

void sub_1BE600498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
      JUMPOUT(0x1BE6003F8);
    }

    _Unwind_Resume(exception_object);
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

void morphun::analysis::tokenattributes::LemmaMapping::~LemmaMapping(void **this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::analysis::tokenattributes::LemmaMapping::~LemmaMapping(void **this, void **a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 5)) = a2[1];
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

std::basic_string<char16_t> *morphun::analysis::tokenattributes::LemmaMapping::LemmaMapping(std::basic_string<char16_t> *a1, std::basic_string<char16_t>::size_type *a2, std::basic_string<char16_t>::size_type a3, std::basic_string<char16_t>::size_type a4, __int128 *a5)
{
  v6 = *a2;
  a1->__r_.__value_.__r.__words[0] = *a2;
  *(a1->__r_.__value_.__r.__words + *(v6 - 40)) = a2[1];
  a1->__r_.__value_.__l.__size_ = a3;
  a1->__r_.__value_.__r.__words[2] = a4;
  if (*(a5 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a1 + 1, *a5, *(a5 + 1));
  }

  else
  {
    v7 = *a5;
    a1[1].__r_.__value_.__r.__words[2] = *(a5 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v7;
  }

  return a1;
}

std::basic_string<char16_t> *morphun::analysis::tokenattributes::LemmaMapping::LemmaMapping(std::basic_string<char16_t> *a1, std::basic_string<char16_t>::size_type a2, std::basic_string<char16_t>::size_type a3, __int128 *a4)
{
  a1->__r_.__value_.__r.__words[0] = &off_1F3CD2DC8;
  a1->__r_.__value_.__l.__size_ = a2;
  a1->__r_.__value_.__r.__words[2] = a3;
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a1 + 1, *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    a1[1].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

void virtual thunk tomorphun::analysis::tokenattributes::LemmaMapping::~LemmaMapping(morphun::analysis::tokenattributes::LemmaMapping *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

BOOL morphun::analysis::tokenattributes::LemmaMapping::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 47);
  v3 = *(a1 + 32);
  if (v2 >= 0)
  {
    v3 = *(a1 + 47);
  }

  v4 = *(a2 + 47);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 32);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  if (v5 >= 0)
  {
    v6 = (a2 + 24);
  }

  else
  {
    v6 = *(a2 + 24);
  }

  if (v2 >= 0)
  {
    v7 = (a1 + 24);
  }

  else
  {
    v7 = *(a1 + 24);
  }

  v8 = v3 - 1;
  do
  {
    v10 = *v7++;
    v9 = v10;
    v12 = *v6++;
    v11 = v12;
    v14 = v8-- != 0;
    result = v11 == v9;
  }

  while (v11 == v9 && v14);
  return result;
}

uint64_t morphun::analysis::tokenattributes::LemmaMapping::hashCode(morphun::analysis::tokenattributes::LemmaMapping *this)
{
  v3 = *(this + 3);
  v1 = (this + 24);
  v2 = v3;
  v5 = *(v1 + 23);
  if (v5 >= 0)
  {
    v2 = v1;
  }

  if (v5 < 0)
  {
    v5 = v1[1];
  }

  v4 = *(v1 - 2) + *(v1 - 4);
  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](v2, 2 * v5) - v4 + 32 * v4;
}

uint64_t morphun::util::LocaleUtils::ARABIC(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::ARABIC(void)::ARABIC_);
}

void sub_1BE600A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::SAUDI_ARABIA(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::SAUDI_ARABIA(void)::SAUDI_ARABIA_);
}

void sub_1BE600BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::UNITED_ARAB_EMIRATES(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::UNITED_ARAB_EMIRATES(void)::UNITED_ARAB_EMIRATES_);
}

void sub_1BE600D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::BULGARIAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::BULGARIAN(void)::BULGARIAN_);
}

void sub_1BE600EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::BULGARIA(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::BULGARIA(void)::BULGARIA_);
}

void sub_1BE601050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::CATALAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::CATALAN(void)::CATALAN_);
}

void sub_1BE6011D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::SPAIN_CATALAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::SPAIN_CATALAN(void)::SPAIN_CATALAN_);
}

void sub_1BE601360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::CZECH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::CZECH(void)::CZECH_);
}

void sub_1BE6014E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::CZECHIA(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::CZECHIA(void)::CZECH_REPUBLIC_);
}

void sub_1BE601670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::DANISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::DANISH(void)::DANISH_);
}

void sub_1BE6017F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::DENMARK(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::DENMARK(void)::DENMARK_);
}

void sub_1BE601980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::GERMAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::GERMAN(void)::GERMAN_);
}

void sub_1BE601B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::GERMANY(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::GERMANY(void)::GERMANY_);
}

void sub_1BE601C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::SWITZERLAND_GERMAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::SWITZERLAND_GERMAN(void)::SWITZERLAND_GERMAN_);
}

void sub_1BE601E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::AUSTRIA(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::AUSTRIA(void)::AUSTRIA_);
}

void sub_1BE601FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::GREEK(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::GREEK(void)::GREEK_);
}

void sub_1BE602138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::GREECE(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::GREECE(void)::GREECE_);
}

void sub_1BE6022C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::US(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::US(void)::US_);
}

void sub_1BE602450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::AUSTRALIA_ENGLISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::AUSTRALIA_ENGLISH(void)::AUSTRALIA_ENGLISH_);
}

void sub_1BE6025E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::CANADIAN_ENGLISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::CANADIAN_ENGLISH(void)::CANADIAN_ENGLISH_);
}

void sub_1BE602770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::SINGAPOREAN_ENGLISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::SINGAPOREAN_ENGLISH(void)::SINGAPOREAN_ENGLISH_);
}

void sub_1BE602900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::GREAT_BRITAIN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::GREAT_BRITAIN(void)::GREAT_BRITAIN_);
}

void sub_1BE602A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::NEW_ZEALAND_ENGLISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::NEW_ZEALAND_ENGLISH(void)::NEW_ZEALAND_ENGLISH_);
}

void sub_1BE602C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::INDIAN_ENGLISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::INDIAN_ENGLISH(void)::INDIAN_ENGLISH_);
}

void sub_1BE602DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::SOUTH_AFRICAN_ENGLISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::SOUTH_AFRICAN_ENGLISH(void)::SOUTH_AFRICAN_ENGLISH_);
}

void sub_1BE602F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::IRISH_ENGLISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::IRISH_ENGLISH(void)::IRISH_ENGLISH_);
}

void sub_1BE6030D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::FILIPINO_ENGLISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::FILIPINO_ENGLISH(void)::FILIPINO_ENGLISH_);
}

void sub_1BE603260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::SPANISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::SPANISH(void)::SPANISH_);
}

void sub_1BE6033E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::SPAIN_SPANISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::SPAIN_SPANISH(void)::SPAIN_SPANISH_);
}

void sub_1BE603570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::MEXICO_SPANISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::MEXICO_SPANISH(void)::MEXICO_SPANISH_);
}

void sub_1BE603700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::US_SPANISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::US_SPANISH(void)::US_SPANISH_);
}

void sub_1BE603890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::CHILEAN_SPANISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::CHILEAN_SPANISH(void)::CHILEAN_SPANISH_);
}

void sub_1BE603A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::ESTONIAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::ESTONIAN(void)::ESTONIAN_);
}

void sub_1BE603BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::ESTONIA(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::ESTONIA(void)::ESTONIA_);
}

void sub_1BE603D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::FINNISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::FINNISH(void)::FINNISH_);
}

void sub_1BE603EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::FINLAND(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::FINLAND(void)::FINLAND_);
}

void sub_1BE604040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::FRENCH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::FRENCH(void)::FRENCH_);
}

void sub_1BE6041C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::FRANCE(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::FRANCE(void)::FRANCE_);
}

void sub_1BE604350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::BELGIUM_FRENCH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::BELGIUM_FRENCH(void)::BELGIUM_FRENCH_);
}

void sub_1BE6044E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::SWITZERLAND_FRENCH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::SWITZERLAND_FRENCH(void)::SWITZERLAND_FRENCH_);
}

void sub_1BE604670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::CANADIAN_FRENCH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::CANADIAN_FRENCH(void)::CANADIAN_FRENCH_);
}

void sub_1BE604800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::HEBREW(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::HEBREW(void)::HEBREW_);
}

void sub_1BE604988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::ISRAEL(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::ISRAEL(void)::ISRAEL_);
}

void sub_1BE604B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::HINDI(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::HINDI(void)::HINDI_);
}

void sub_1BE604C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::INDIA_HINDI(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::INDIA_HINDI(void)::INDIA_HINDI_);
}

void sub_1BE604E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::CROATIAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::CROATIAN(void)::CROATIAN_);
}

void sub_1BE604FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::CROATIA(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::CROATIA(void)::CROATIA_);
}

void sub_1BE605130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::HUNGARIAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::HUNGARIAN(void)::HUNGARIAN_);
}

void sub_1BE6052B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::HUNGARY(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::HUNGARY(void)::HUNGARY_);
}

void sub_1BE605440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::INDONESIAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::INDONESIAN(void)::INDONESIAN_);
}

void sub_1BE6055C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::INDONESIA(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::INDONESIA(void)::INDONESIA_);
}

void sub_1BE605750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::ICELANDIC(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::ICELANDIC(void)::ICELANDIC_);
}

void sub_1BE6058D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::ICELAND(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::ICELAND(void)::ICELAND_);
}

void sub_1BE605A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::ITALIAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::ITALIAN(void)::ITALIAN_);
}

void sub_1BE605BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::ITALY(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::ITALY(void)::ITALY_);
}

void sub_1BE605D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::SWITZERLAND_ITALIAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::SWITZERLAND_ITALIAN(void)::SWITZERLAND_ITALIAN_);
}

void sub_1BE605F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::JAPANESE(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::JAPANESE(void)::JAPANESE_);
}

void sub_1BE606088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::JAPAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::JAPAN(void)::JAPAN_);
}

void sub_1BE606210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::KAZAKH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::KAZAKH(void)::KAZAKH_);
}

void sub_1BE606398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::KAZAKHSTAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::KAZAKHSTAN(void)::KAZAKHSTAN_);
}

void sub_1BE606520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::KOREAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::KOREAN(void)::KOREAN_);
}

void sub_1BE6066A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::KOREA(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::KOREA(void)::KOREA_);
}

void sub_1BE606830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::LITHUANIAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::LITHUANIAN(void)::LITHUANIAN_);
}

void sub_1BE6069B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::LITHUANIA(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::LITHUANIA(void)::LITHUANIA_);
}

void sub_1BE606B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::MALAY(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::MALAY(void)::MALAY_);
}

void sub_1BE606CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::MALAYSIA(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::MALAYSIA(void)::MALAYSIA_);
}

void sub_1BE606E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::NORWEGIAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::NORWEGIAN(void)::NORWEGIAN_);
}

void sub_1BE606FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::NORWAY(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::NORWAY(void)::NORWAY_);
}

void sub_1BE607160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::DUTCH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::DUTCH(void)::DUTCH_);
}

void sub_1BE6072E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::NETHERLANDS(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::NETHERLANDS(void)::NETHERLANDS_);
}

void sub_1BE607470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::BELGIUM_DUTCH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::BELGIUM_DUTCH(void)::BELGIUM_DUTCH_);
}

void sub_1BE607600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::POLISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::POLISH(void)::POLISH_);
}

void sub_1BE607788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::POLAND(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::POLAND(void)::POLAND_);
}

void sub_1BE607910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::PORTUGUESE(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::PORTUGUESE(void)::PORTUGUESE_);
}

void sub_1BE607A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::PORTUGAL(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::PORTUGAL(void)::PORTUGAL_);
}

void sub_1BE607C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::BRAZIL(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::BRAZIL(void)::BRAZIL_);
}

void sub_1BE607DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::ROMANIAN(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::ROMANIAN(void)::ROMANIAN_);
}

void sub_1BE607F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::LocaleUtils::ROMANIA(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::ROMANIA(void)::ROMANIA_);
}

void sub_1BE6080C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  MEMORY[0x1BFB49160](v26, 0x1093C404284DF82);
  _Unwind_Resume(a1);
}