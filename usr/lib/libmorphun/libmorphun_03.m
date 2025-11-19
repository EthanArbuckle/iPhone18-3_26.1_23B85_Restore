std::basic_string<char16_t> *std::optional<std::basic_string<char16_t>>::operator=[abi:se200100]<std::basic_string<char16_t> const&,void>(std::basic_string<char16_t> *this, const std::basic_string<char16_t> *a2)
{
  if (LOBYTE(this[1].__r_.__value_.__l.__data_) == 1)
  {
    std::basic_string<char16_t>::operator=(this, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    LOBYTE(this[1].__r_.__value_.__l.__data_) = 1;
  }

  return this;
}

void morphun::grammar::synthesis::PlGrammarSynthesizer_PlDisplayFunction::~PlGrammarSynthesizer_PlDisplayFunction(morphun::grammar::synthesis::PlGrammarSynthesizer_PlDisplayFunction *this)
{
  morphun::grammar::synthesis::PlGrammarSynthesizer_PlDisplayFunction::~PlGrammarSynthesizer_PlDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CEE488;
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

char **morphun::grammar::synthesis::java_cast<morphun::dialog::DictionaryLookupFunction const*,morphun::dialog::DefaultFeatureFunction const>(char **result)
{
  if (result)
  {
    v1 = **result;
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

uint64_t npc<morphun::dialog::DictionaryLookupFunction const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

morphun::Token *morphun::Token_Word::Token_Word(morphun::Token *a1, int a2, int a3, morphun::Token *__src, unint64_t a5, morphun::Token *a6, unint64_t a7, char a8)
{
  *a1 = &off_1F3CED9E0;
  result = morphun::Token::Token(a1, off_1F3CDD048, a2, a3, __src, a5, a6, a7, a8);
  *result = &unk_1F3CD99B8;
  return result;
}

morphun::Token *morphun::Token_Word::Token_Word(morphun::Token *a1, uint64_t *a2, int a3, int a4, morphun::Token *a5, unint64_t a6, morphun::Token *a7, unint64_t a8, char a9)
{
  result = morphun::Token::Token(a1, a2 + 1, a3, a4, a5, a6, a7, a8, a9);
  v11 = *a2;
  *result = *a2;
  *(result + *(v11 - 64)) = a2[4];
  *(result + *(*result - 40)) = a2[5];
  return result;
}

void morphun::tokenizer::ExplicitTokenModifier::modifyTokens(uint64_t a1, morphun::Token *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = 2 * a3;
    v5 = a2;
    v6 = (a2 + 2 * a3);
    while (*v5 != 94)
    {
      v5 = (v5 + 2);
      v4 -= 2;
      if (!v4)
      {
        return;
      }
    }

    v7 = v5 == v6 ? 0 : v5;
    if (v5 != v6 && v7 - a2 != -2)
    {
      if (!a4)
      {
        exception = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(exception);
      }

      v8 = *(a4 + 80);
      if (v8)
      {
        while (1)
        {
          Caret = morphun::tokenizer::ExplicitTokenModifier::findCaret(v8, a2);
          if (!Caret)
          {
            return;
          }

          v10 = Caret;
          v8 = *(Caret + 80);
          if (*(Caret + 12) - *(Caret + 8) == 1)
          {
            v11 = morphun::tokenizer::ExplicitTokenModifier::findCaret(*(Caret + 80), a2);
            if (!v11)
            {
              return;
            }

            v8 = v11;
            if (*(v11 + 72) != v10)
            {
              break;
            }
          }

LABEL_48:
          if (!v8)
          {
            return;
          }
        }

        v12 = *(v11 + 80);
        if (!v12)
        {
          return;
        }

        std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, "=");
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v14 = *(v12 + 39);
        v15 = v14;
        if ((v14 & 0x80u) != 0)
        {
          v14 = *(v12 + 24);
        }

        if (size == v14)
        {
          if (!size)
          {
            v25 = 1;
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_39:
              if (!v25)
              {
                goto LABEL_48;
              }

LABEL_43:
              v26 = morphun::tokenizer::ExplicitTokenModifier::findCaret(*(v12 + 80), a2);
              if (!v26)
              {
                return;
              }

              if (*(v26 + 9) == v12)
              {
                v27 = morphun::tokenizer::ExplicitTokenModifier::splitCaret(v26, a2);
                v28 = npc<morphun::Token>(v27);
                v30 = morphun::tokenizer::ExplicitTokenModifier::findCaret(*(v28 + 80), v29);
                if (v30)
                {
                  v32 = morphun::tokenizer::ExplicitTokenModifier::splitCaret(v30, v31);
                  memset(&__p, 0, sizeof(__p));
                  morphun::tokenizer::ExplicitTokenModifier::getValue(*(v10 + 80), v8, &__p, 0);
                  memset(&v37, 0, sizeof(v37));
                  memset(&v36, 0, sizeof(v36));
                  npc<morphun::Token>(v27);
                  morphun::tokenizer::ExplicitTokenModifier::getValue(*(v27 + 10), v32, &v37, &v36);
                  v33 = *(v10 + 72);
                  v34 = *(v32 + 10);
                  operator new();
                }

                return;
              }

              v8 = v26;
              goto LABEL_48;
            }

LABEL_42:
            operator delete(__p.__r_.__value_.__l.__data_);
            if (!v25)
            {
              goto LABEL_48;
            }

            goto LABEL_43;
          }

          if (v15 >= 0)
          {
            v16 = (v12 + 16);
          }

          else
          {
            v16 = *(v12 + 16);
          }

          p_p = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          v18 = size - 1;
          do
          {
            v20 = p_p->__r_.__value_.__s.__data_[0];
            p_p = (p_p + 2);
            v19 = v20;
            v22 = *v16++;
            v21 = v22;
            v24 = v18-- != 0;
            v25 = v21 == v19;
          }

          while (v21 == v19 && v24);
        }

        else
        {
          v25 = 0;
        }

        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_42;
      }
    }
  }
}

void sub_1BE5A59CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::tokenizer::ExplicitTokenModifier::findCaret(uint64_t this, morphun::Token *a2)
{
  for (; this; this = *(this + 80))
  {
    v2 = (this + 16);
    v3 = *(this + 39);
    if ((v3 & 0x80u) != 0)
    {
      v2 = *(this + 16);
      v3 = *(this + 24);
    }

    if (v3)
    {
      v4 = 2 * v3;
      v5 = v2;
      v6 = &v2[v3];
      while (*v5 != 94)
      {
        ++v5;
        v4 -= 2;
        if (!v4)
        {
          goto LABEL_14;
        }
      }

      v7 = v5 == v6 ? 0 : v5;
      if (v5 != v6 && v7 - v2 != -2)
      {
        break;
      }
    }

LABEL_14:
    ;
  }

  return this;
}

morphun::tokenizer::ExplicitTokenModifier *morphun::tokenizer::ExplicitTokenModifier::splitCaret(morphun::tokenizer::ExplicitTokenModifier *this, morphun::Token *a2)
{
  v3 = npc<morphun::Token>(this);
  v4 = *(v3 + 39);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(v3 + 24);
  }

  if (v4 != 1)
  {
    v5 = npc<morphun::Token>(this);
    v6 = *(this + 2);
    if (*(this + 39) >= 0)
    {
      v6 = (this + 16);
    }

    v7 = *v6;
    npc<morphun::Token>(v5);
    if (*(this + 39) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__str, *(this + 2), *(this + 3));
    }

    else
    {
      __str = *(this + 16);
    }

    npc<morphun::Token>(this);
    if (*(this + 63) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v15, *(this + 5), *(this + 6));
    }

    else
    {
      v15 = *(this + 40);
    }

    npc<morphun::Token>(this);
    (*(*this + 24))(this);
    (*(*this + 32))(this);
    if (v7 == 94)
    {
      std::basic_string<char16_t>::basic_string(&v14, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, v8);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str = v14;
      std::basic_string<char16_t>::basic_string(&v14, &v15, 1uLL, 0xFFFFFFFFFFFFFFFFLL, v9);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      v15 = v14;
    }

    else
    {
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::resize(&__str, size - 1, 0);
      v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = __str.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::resize(&v15, v11 - 1, 0);
    }

    v12 = **this;
    {
      operator new();
    }

    operator new();
  }

  return this;
}

void sub_1BE5A603C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  MEMORY[0x1BFB49160](v25, 0x10B3C405B5873CALL);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void morphun::tokenizer::ExplicitTokenModifier::getValue(uint64_t a1, uint64_t a2, std::basic_string<char16_t> *a3, std::basic_string<char16_t> *a4)
{
  npc<std::basic_string<char16_t>>(a3);
  std::basic_string<char16_t>::resize(a3, 0, 0);
  if (a4)
  {
    std::basic_string<char16_t>::resize(a4, 0, 0);
  }

  while (a1 != a2)
  {
    npc<std::basic_string<char16_t>>(a3);
    npc<morphun::Token const>(a1);
    v8 = *(a1 + 39);
    if (v8 >= 0)
    {
      v9 = (a1 + 16);
    }

    else
    {
      v9 = *(a1 + 16);
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 39);
    }

    else
    {
      v10 = *(a1 + 24);
    }

    std::basic_string<char16_t>::append(a3, v9, v10);
    if (a4)
    {
      npc<morphun::Token const>(a1);
      v11 = *(a1 + 63);
      if (v11 >= 0)
      {
        v12 = (a1 + 40);
      }

      else
      {
        v12 = *(a1 + 40);
      }

      if (v11 >= 0)
      {
        v13 = *(a1 + 63);
      }

      else
      {
        v13 = *(a1 + 48);
      }

      std::basic_string<char16_t>::append(a4, v12, v13);
    }

    npc<morphun::Token const>(a1);
    a1 = *(a1 + 80);
  }
}

uint64_t npc<std::basic_string<char16_t>>(uint64_t result)
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

uint64_t npc<morphun::Token const>(uint64_t result)
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

void morphun::analysis::DaAnalyzer::~DaAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB228);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB228);
}

void mdr_registerDataPathForLocale(__CFLocale *a1, const __CFString *a2)
{
  morphun::util::CFUtils::convert(v4, a1);
  morphun::util::CFUtils::to_string(&__p, a2);
  morphun::resources::DataRegistrationService::registerDataPathForLocale(v4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5A6488(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v19 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v19, v16, v20);
    __cxa_end_catch();
    JUMPOUT(0x1BE5A6474);
  }

  _Unwind_Resume(a1);
}

CFStringRef mdr_getDataPathForLocaleCopy(__CFLocale *a1)
{
  morphun::util::CFUtils::convert(v5, a1);
  morphun::resources::DataRegistrationService::getDataPathForLocale(v5, &v6);
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v1 = &v6;
  }

  else
  {
    v1 = v6.__r_.__value_.__r.__words[0];
  }

  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v6.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v6.__r_.__value_.__l.__size_;
  }

  v3 = CFStringCreateWithBytes(0, v1, size, 0x8000100u, 0);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_1BE5A659C(_Unwind_Exception *a1, int a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v4 - 33) < 0)
  {
    operator delete(*(v4 - 56));
  }

  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v7, v3, v8);
    __cxa_end_catch();
    JUMPOUT(0x1BE5A6584);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::SemanticFeatureModel::~SemanticFeatureModel(morphun::dialog::SemanticFeatureModel *this)
{
  morphun::dialog::SemanticFeatureModel::~SemanticFeatureModel(this);

  JUMPOUT(0x1BFB49160);
}

{
  v2 = *(this + 29);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 10);
  if (v3 != (this + 88))
  {
    do
    {
      v4 = *(v3 + 13);
      if (v4)
      {
        (*(*v4 + 16))(v4);
      }

      v5 = *(v3 + 1);
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
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != (this + 88));
  }

  v8 = *(this + 1);
  if (v8 != (this + 16))
  {
    do
    {
      v9 = *(v8 + 7);
      if (v9)
      {
        (*(*v9 + 16))(v9);
      }

      v10 = *(v8 + 1);
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
          v11 = *(v8 + 2);
          v7 = *v11 == v8;
          v8 = v11;
        }

        while (!v7);
      }

      v8 = v11;
    }

    while (v11 != (this + 16));
  }

  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>>>::destroy(*(this + 11));
  std::__tree<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::__map_value_compare<morphun::dialog::SemanticValue,std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::less<morphun::dialog::SemanticValue>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>>>::destroy(*(this + 8));
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>>>::destroy(*(this + 5));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 2));
}

void std::__tree<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>>>::destroy(*a1);
    std::__tree<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::__map_value_compare<morphun::dialog::SemanticValue,std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::less<morphun::dialog::SemanticValue>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::__map_value_compare<morphun::dialog::SemanticValue,std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::less<morphun::dialog::SemanticValue>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>>>::destroy(*a1);
    std::__tree<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::__map_value_compare<morphun::dialog::SemanticValue,std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::less<morphun::dialog::SemanticValue>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>>>::destroy(*(a1 + 1));
    *(a1 + 11) = &unk_1F3CD83C8;
    v2 = (a1 + 96);
    std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&v2);
    morphun::dialog::SemanticValue::~SemanticValue(a1 + 4);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,void *>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t> const,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,void *>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t> const,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,void,0>(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
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

morphun::dialog::SemanticFeatureModel *morphun::dialog::SemanticFeatureModel::SemanticFeatureModel(morphun::dialog::SemanticFeatureModel *this, const morphun::util::ULocale *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  morphun::dialog::SemanticFeatureModel::SemanticFeatureModel(this, a2, &v4);
  std::__tree<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::__map_value_compare<morphun::dialog::SemanticValue,std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::less<morphun::dialog::SemanticValue>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>>>::destroy(v5[0]);
  return this;
}

{
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  morphun::dialog::SemanticFeatureModel::SemanticFeatureModel(this, a2, &v4);
  std::__tree<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::__map_value_compare<morphun::dialog::SemanticValue,std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::less<morphun::dialog::SemanticValue>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>>>::destroy(v5[0]);
  return this;
}

void *morphun::dialog::SemanticFeatureModel::SemanticFeatureModel(void *a1, morphun::dialog::SemanticFeatureModel *a2, void *a3)
{
  a1[2] = 0;
  *a1 = &unk_1F3CD8AE0;
  a1[1] = a1 + 2;
  v35 = (a1 + 2);
  a1[5] = 0;
  v4 = (a1 + 5);
  a1[6] = 0;
  a1[3] = 0;
  a1[4] = a1 + 5;
  a1[8] = 0;
  a1[7] = a1 + 8;
  v5 = a1 + 7;
  a1[9] = 0;
  v6 = *a3;
  v36 = a3 + 1;
  v38 = a1 + 8;
  if (*a3 != a3 + 1)
  {
    do
    {
      v7 = v6 + 4;
      v8 = v38;
      v9 = *v38;
      v10 = v38;
      if (*v5 != v38)
      {
        v11 = *v38;
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
            v10 = v8[2];
            v12 = *v10 == v8;
            v8 = v10;
          }

          while (v12);
        }

        v13 = *(*v7 - 40);
        if ((std::operator<=>[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>>((v10 + *(v10[4] - 40) + 32), (v7 + v13)) & 0x80) == 0)
        {
          for (; v9; v9 = v14[1])
          {
            while (1)
            {
              v14 = v9;
              v15 = v9 + 4;
              v16 = *(v9[4] - 40);
              if ((std::operator<=>[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>>((v7 + v13), (v15 + v16)) & 0x80) == 0)
              {
                break;
              }

              v9 = *v14;
              if (!*v14)
              {
                goto LABEL_17;
              }
            }

            if ((std::operator<=>[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>>((v15 + v16), (v7 + v13)) & 0x80) == 0)
            {
              goto LABEL_18;
            }
          }

LABEL_17:
          operator new();
        }
      }

      if (!v9 || !v10[1])
      {
        goto LABEL_17;
      }

LABEL_18:
      v17 = v6[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v6[2];
          v12 = *v18 == v6;
          v6 = v18;
        }

        while (!v12);
      }

      v6 = v18;
    }

    while (v18 != v36);
  }

  a1[11] = 0;
  a1[12] = 0;
  a1[10] = a1 + 11;
  v19 = a2;
  morphun::util::ULocale::ULocale((a1 + 13), a2);
  a1[29] = 0;
  morphun::dialog::SemanticFeatureModel::createDefaultSemanticFeatures(a2, &v40);
  v21 = v40;
  v37 = v41;
  if (v40 != v41)
  {
    do
    {
      v22 = *v21;
      npc<morphun::dialog::SemanticFeature>(*v21);
      v23 = (*(*v22 + 32))(v22);
      v24 = *v35;
      if (!*v35)
      {
LABEL_31:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v25 = v24;
          if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v23, v24 + 16) & 0x80) == 0)
          {
            break;
          }

          v24 = *v25;
          if (!*v25)
          {
            goto LABEL_31;
          }
        }

        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v25 + 16, v23) & 0x80) == 0)
        {
          break;
        }

        v24 = *(v25 + 1);
        if (!v24)
        {
          goto LABEL_31;
        }
      }

      npc<morphun::dialog::SemanticFeature>(v22);
      if ((*(*v22 + 48))(v22))
      {
        npc<morphun::dialog::SemanticFeature>(v22);
        v26 = (*(*v22 + 40))(v22);
        v27 = (v26 + 1);
        v28 = *v26;
        if (*v26 != v26 + 1)
        {
          do
          {
            if (*(v28 + 55) < 0)
            {
              std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *(v28 + 4), *(v28 + 5));
            }

            else
            {
              __p = *(v28 + 16);
            }

            v29 = *v4;
            if (!*v4)
            {
LABEL_43:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v30 = v29;
                if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v28 + 16, v29 + 16) & 0x80) == 0)
                {
                  break;
                }

                v29 = *v30;
                if (!*v30)
                {
                  goto LABEL_43;
                }
              }

              if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v30 + 16, v28 + 16) & 0x80) == 0)
              {
                break;
              }

              v29 = *(v30 + 1);
              if (!v29)
              {
                goto LABEL_43;
              }
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            v31 = *(v28 + 1);
            if (v31)
            {
              do
              {
                v32 = v31;
                v31 = *v31;
              }

              while (v31);
            }

            else
            {
              do
              {
                v32 = *(v28 + 2);
                v12 = *v32 == v28;
                v28 = v32;
              }

              while (!v12);
            }

            v28 = v32;
          }

          while (v32 != v27);
        }
      }

      ++v21;
    }

    while (v21 != v37);
    v21 = v40;
    v19 = a2;
  }

  if (v21)
  {
    operator delete(v21);
  }

  morphun::grammar::synthesis::GrammarSynthesizerFactory::addSemanticFeatures(v19, a1, v20);
  return a1;
}

void sub_1BE5A6FF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char **a11, uint64_t a12, char **a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p)
{
  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>>>::destroy(*a9);
  std::__tree<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::__map_value_compare<morphun::dialog::SemanticValue,std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,std::less<morphun::dialog::SemanticValue>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>>>::destroy(*a13);
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::pair<morphun::dialog::SemanticFeature *,std::basic_string<char16_t>>>>>::destroy(*v21);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*a11);
  _Unwind_Resume(a1);
}

void morphun::dialog::SemanticFeatureModel::createDefaultSemanticFeatures(morphun::dialog::SemanticFeatureModel *this@<X0>, void *a2@<X8>)
{
  morphun::lang::features::LanguageGrammarFeatures::getLanguageGrammarFeatures(this, &v16);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *v17[16];
  v5 = *v17[17];
  v6 = v5 + v4;
  if (v5 + v4)
  {
    if ((v6 & 0x80000000) == 0)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeature *>>(v6);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  morphun::lang::features::LanguageGrammarFeatures::getCategories(&v16, &v14);
  if (v14 != v15)
  {
    operator new();
  }

  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>>>::destroy(v15[0]);
  morphun::lang::features::LanguageGrammarFeatures::getFeatures(&v16, &v14);
  if (v14 != v15)
  {
    *&v13.__r_.__value_.__r.__words[1] = 0uLL;
    v13.__r_.__value_.__r.__words[0] = &v13.__r_.__value_.__l.__size_;
    memset(&v12, 0, sizeof(v12));
    std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__init_with_size[abi:se200100]<morphun::lang::features::LanguageGrammarFeatures_Feature*,morphun::lang::features::LanguageGrammarFeatures_Feature*>(&v12, *(v14 + 64), *(v14 + 72), 0x6DB6DB6DB6DB6DB7 * ((*(v14 + 72) - *(v14 + 64)) >> 3));
    size = v12.__r_.__value_.__l.__size_;
    v7 = v12.__r_.__value_.__r.__words[0];
    if (v12.__r_.__value_.__r.__words[0] != v12.__r_.__value_.__l.__size_)
    {
      v9 = v12.__r_.__value_.__r.__words[0];
      do
      {
        (*(*v9 + 24))(__p, v9);
        std::__tree<std::basic_string<char16_t>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t>>(&v13, __p);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }

        v9 += 56;
        v7 += 56;
      }

      while (v9 != size);
    }

    __p[0] = &v12;
    std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](__p);
    operator new();
  }

  std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(v15[0]);
  v16 = &unk_1F3CD94A8;
}

void sub_1BE5A7434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  v35 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

uint64_t npc<morphun::dialog::SemanticFeature>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>>>::destroy(*a1);
    std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::lang::features::LanguageGrammarFeatures_GrammarCategory>>>::destroy(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void *std::vector<morphun::dialog::SemanticFeature *>::push_back[abi:se200100](void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2)
  {
    v4 = v3 - *result;
    v5 = (v4 >> 3) + 1;
    if (v5 >> 61)
    {
      goto LABEL_13;
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
      std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeature *>>(v8);
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  *v3 = *a2;
  result[1] = v3 + 1;
  return result;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<morphun::dialog::SemanticValue,morphun::dialog::SemanticFeatureModel_DisplayData>,void *>>>>::~unique_ptr[abi:se200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      *(v2 + 88) = &unk_1F3CD83C8;
      v4 = (v2 + 96);
      std::vector<morphun::lang::features::LanguageGrammarFeatures_Feature>::__destroy_vector::operator()[abi:se200100](&v4);
      morphun::dialog::SemanticValue::~SemanticValue((v2 + 32));
    }

    operator delete(v2);
  }

  return a1;
}

std::basic_string<char16_t> *std::pair<std::basic_string<char16_t>,std::basic_string<char16_t>>::pair[abi:se200100](std::basic_string<char16_t> *this, __int128 *a2)
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

void sub_1BE5A782C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<morphun::dialog::SemanticFeatureModel_DisplayValue>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeatureModel_DisplayValue*,morphun::dialog::SemanticFeatureModel_DisplayValue*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<morphun::dialog::SemanticFeatureModel_DisplayValue>::__vallocate[abi:se200100](result, a4);
  }

  return result;
}

void std::vector<morphun::dialog::SemanticFeatureModel_DisplayValue>::__vallocate[abi:se200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeatureModel_DisplayValue>>(a2);
  }

  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
}

void std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeatureModel_DisplayValue>>(unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

uint64_t std::operator<=>[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  result = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1, a2);
  if (!result)
  {

    return std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1 + 12, a2 + 12);
  }

  return result;
}

uint64_t morphun::dialog::SemanticFeatureModel::getKnownSemanticValues@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  v2 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  v3 = *(this + 56);
  v4 = (this + 64);
  if (v3 != (this + 64))
  {
    do
    {
      v5 = v3 + 4;
      v6 = *v2;
      if (!*v2)
      {
LABEL_9:
        operator new();
      }

      v7 = *(*v5 - 40);
      while (1)
      {
        while (1)
        {
          v8 = v6;
          v9 = v6 + 4;
          v10 = *(v6[4] - 40);
          if ((std::operator<=>[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>>((v5 + v7), (v6 + v10 + 32)) & 0x80) == 0)
          {
            break;
          }

          v6 = *v8;
          if (!*v8)
          {
            goto LABEL_9;
          }
        }

        this = std::operator<=>[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>>((v9 + v10), (v5 + v7));
        if ((this & 0x80) == 0)
        {
          break;
        }

        v6 = v8[1];
        if (!v6)
        {
          goto LABEL_9;
        }
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v13 = *v12 == v3;
          v3 = v12;
        }

        while (!v13);
      }

      v3 = v12;
    }

    while (v12 != v4);
  }

  return this;
}

void sub_1BE5A7CF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<morphun::dialog::SemanticValue,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<morphun::dialog::SemanticValue,void *>>>>::~unique_ptr[abi:se200100](va);
  std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::SemanticFeatureModel::getDisplayData(uint64_t a1, uint64_t *a2)
{
  v2 = a1 + 64;
  v3 = *(a1 + 64);
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = *a2;
  v6 = a1 + 64;
  do
  {
    v7 = *(v5 - 40);
    v8 = std::operator<=>[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>>((v3 + 32 + *(*(v3 + 32) - 40)), (a2 + v7));
    if ((v8 & 0x80u) == 0)
    {
      v6 = v3;
    }

    v3 = *(v3 + ((v8 >> 4) & 8));
  }

  while (v3);
  if (v2 == v6 || (std::operator<=>[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>,std::basic_string<char16_t>>((a2 + v7), (v6 + 32 + *(*(v6 + 32) - 40))) & 0x80) != 0)
  {
LABEL_8:
    v6 = v2;
  }

  if (v2 == v6)
  {
    return 0;
  }

  else
  {
    return v6 + 88;
  }
}

uint64_t morphun::dialog::SemanticFeatureModel::getFeature(uint64_t a1, unsigned __int16 *a2)
{
  v3 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a1 + 8, a2);
  if (a1 + 16 == v3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

void morphun::dialog::SemanticFeatureModel::getFeatureAlias(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 + 40;
  v5 = *(a1 + 40);
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = a1 + 40;
  do
  {
    v8 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v5 + 32), a2);
    if ((v8 & 0x80u) == 0)
    {
      v7 = v5;
    }

    v5 = *(v5 + ((v8 >> 4) & 8));
  }

  while (v5);
  if (v7 == v4 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a2, (v7 + 32)) & 0x80) != 0)
  {
LABEL_10:
    v9 = 0uLL;
    *(a3 + 16) = 0u;
    goto LABEL_11;
  }

  *a3 = *(v7 + 56);
  a3 += 8;
  if ((*(v7 + 87) & 0x80000000) == 0)
  {
    v9 = *(v7 + 64);
    *(a3 + 16) = *(v7 + 80);
LABEL_11:
    *a3 = v9;
    return;
  }

  v10 = *(v7 + 64);
  v11 = *(v7 + 72);

  std::basic_string<char16_t>::__init_copy_ctor_external(a3, v10, v11);
}

uint64_t morphun::dialog::SemanticFeatureModel::getDefaultFeatureFunction(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 88;
  v3 = *(a1 + 88);
  if (!v3)
  {
    return 0;
  }

  v5 = a1 + 88;
  do
  {
    v6 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v3 + 48), (a2 + 16));
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((a2 + 16), (v5 + 48)) & 0x80) != 0)
  {
    return 0;
  }

  else
  {
    return *(v5 + 104);
  }
}

uint64_t morphun::dialog::SemanticFeatureModel::putDefaultFeatureFunction(morphun::dialog::SemanticFeatureModel *this, const morphun::dialog::SemanticFeature *a2, morphun::dialog::DefaultFeatureFunction *a3)
{
  v5 = this + 88;
  v6 = *(this + 11);
  v7 = this + 88;
  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = *(this + 11);
  do
  {
    v9 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v8 + 24, a2 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v7 = v8;
    }

    v8 = *(v8 + ((v9 >> 4) & 8));
  }

  while (v8);
  if (v7 == v5 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a2 + 8, v7 + 24) & 0x80) != 0)
  {
    while (1)
    {
      while (1)
      {
        v13 = v6;
        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a2 + 8, v6 + 24) & 0x80) == 0)
        {
          break;
        }

        v6 = *v6;
        if (!*v13)
        {
          goto LABEL_16;
        }
      }

      result = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v6 + 24, a2 + 8);
      if ((result & 0x80) == 0)
      {
        break;
      }

      v6 = v6[1];
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    if (v6)
    {
      v11 = v6 + 13;
      goto LABEL_18;
    }

LABEL_16:
    operator new();
  }

  v12 = *(v7 + 13);
  v11 = v7 + 104;
  result = v12;
  if (v12)
  {
    result = (*(*result + 16))(result);
  }

LABEL_18:
  *v11 = a3;
  return result;
}

void sub_1BE5A8140(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,void *>>>>::~unique_ptr[abi:se200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,morphun::dialog::DefaultFeatureFunction *>,void *>>>>::~unique_ptr[abi:se200100](uint64_t *a1)
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

uint64_t morphun::dialog::SemanticFeatureModel::putDefaultFeatureFunctionByName(uint64_t a1, unsigned __int16 *a2, morphun::dialog::DefaultFeatureFunction *a3)
{
  v6 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a1 + 8, a2);
  if (a1 + 16 == v6 || (v7 = *(v6 + 56)) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v10 = a2;
    v11 = exception;
    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v17, v10, " ");
    v12 = *(a1 + 231);
    if (v12 < 0)
    {
      v13 = *(a1 + 208);
      v12 = *(a1 + 216);
    }

    else
    {
      v13 = (a1 + 208);
    }

    morphun::util::StringViewUtils::to_u16string(v13, v12, &v16);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v16;
    }

    else
    {
      v14 = v16.__r_.__value_.__r.__words[0];
    }

    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v17, v14, size);
    v18 = v17;
    memset(&v17, 0, sizeof(v17));
    morphun::exception::IllegalArgumentException::IllegalArgumentException(v11, &v18);
  }

  return morphun::dialog::SemanticFeatureModel::putDefaultFeatureFunction(a1, v7, a3);
}

void sub_1BE5A82C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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
    if ((v27 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v26);
  goto LABEL_10;
}

void **std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(uint64_t a1, void ***a2, char *a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*a3)
  {
    v6 = 0;
    do
    {
      v7 = v6 + 1;
    }

    while (*&a3[2 * v6++ + 2]);
  }

  else
  {
    v7 = 0;
  }

  result = std::basic_string<char16_t>::basic_string[abi:se200100](a1, v5 + v7);
  if (*(result + 23) < 0)
  {
    result = *result;
  }

  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  v11 = result + 2 * v5;
  if (v10 >= result && v11 > v10)
  {
    goto LABEL_29;
  }

  if (v5)
  {
    result = memmove(result, v10, 2 * v5);
  }

  if (v7 < 0 || ((v13 = &v11[2 * v7], v11 <= a3) ? (v14 = v13 > a3) : (v14 = 0), v14))
  {
LABEL_29:
    __break(1u);
  }

  else
  {
    if (v7)
    {
      result = memmove(v11, a3, 2 * v7);
    }

    *v13 = 0;
  }

  return result;
}

uint64_t morphun::dialog::SemanticFeatureModel::setDefaultDisplayFunction(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 232);
  if (result)
  {
    result = (*(*result + 16))(result);
  }

  *(a1 + 232) = a2;
  return result;
}

void morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::inflectSignificantTokens(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char **a4@<X3>, void *a5@<X8>)
{
  v6 = a4[1];
  if (*a4 == v6)
  {
    goto LABEL_60;
  }

  v11 = *(v6 - 1);
  npc<std::vector<std::basic_string<char16_t>>>(a3);
  v12 = *a3;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v11)
  {
    goto LABEL_55;
  }

  v13 = v12 + 24 * v11;
  v41 = 0;
  v14 = *(v13 + 23);
  if (v14 < 0)
  {
    v15 = *v13;
    v14 = *(v13 + 8);
  }

  else
  {
    v15 = (v12 + 24 * v11);
  }

  if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[6], &v41, v15, v14))
  {
    v16 = *a4;
    v17 = a4[1];
    if (*a4 == v17)
    {
      goto LABEL_60;
    }

    v18 = *v16;
    v19 = *a3;
    if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > v18)
    {
      __str.__r_.__value_.__r.__words[0] = 0;
      if (v17 - v16 != 8)
      {
LABEL_39:
        morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::inflectWord(&v40, a1, a2, v13, v41, v13, v41, 1, 0);
        if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v11)
        {
          std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
        }

        v31 = *a3 + 24 * v11;
LABEL_49:
        if (*(v31 + 23) < 0)
        {
          operator delete(*v31);
        }

        v38 = *&v40.__r_.__value_.__l.__data_;
        *(v31 + 16) = *(&v40.__r_.__value_.__l + 2);
        *v31 = v38;
        *a5 = 0;
        a5[1] = 0;
        a5[2] = 0;
        std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
        return;
      }

      v20 = v19 + 24 * v18;
      v21 = *(v20 + 23);
      if (v21 < 0)
      {
        v22 = *v20;
        v21 = *(v20 + 8);
      }

      else
      {
        v22 = (v19 + 24 * v18);
      }

      if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[6], &__str, v22, v21))
      {
        if ((a1[9] & __str.__r_.__value_.__r.__words[0]) == 0)
        {
          goto LABEL_39;
        }

        v30 = a1[10];
        if ((v30 & __str.__r_.__value_.__r.__words[0]) != 0)
        {
          goto LABEL_39;
        }

        v32 = v41;
        if ((v41 & v30) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v32 = v41;
      }

      morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::inflectWord(&v40, a1, a2, v20, __str.__r_.__value_.__l.__data_, v13, v32, 0, 0);
      if (a4[1] != *a4)
      {
        v33 = **a4;
        if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v33)
        {
          std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
        }

        v34 = *a3 + 24 * v33;
        if (*(v34 + 23) < 0)
        {
          operator delete(*v34);
        }

        v35 = *&v40.__r_.__value_.__l.__data_;
        v36 = v41;
        *(v34 + 16) = *(&v40.__r_.__value_.__l + 2);
        *v34 = v35;
        morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::inflectWord(&v40, a1, a2, v13, v36, v13, v36, 1, 1);
        if ((a4[1] - *a4) > 4)
        {
          v37 = *(*a4 + 1);
          if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v37)
          {
            std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
          }

          v31 = *a3 + 24 * v37;
          goto LABEL_49;
        }
      }

LABEL_60:
      __break(1u);
      return;
    }

LABEL_55:
    std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v11)
  {
    goto LABEL_55;
  }

  v23 = *a3 + 24 * v11;
  if (*(v23 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v40, *v23, *(v23 + 8));
  }

  else
  {
    v24 = *v23;
    v40.__r_.__value_.__r.__words[2] = *(v23 + 16);
    *&v40.__r_.__value_.__l.__data_ = v24;
  }

  morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::makeGenitiveWhenRequested(&__str, a1[2], a2, &v40);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v26 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v27 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v40.__r_.__value_.__l.__size_;
  }

  if (size == v27)
  {
    if (!size)
    {
LABEL_28:
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
      if ((v26 & 0x80) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    v28 = &v40;
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v40.__r_.__value_.__r.__words[0];
    }

    p_str = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    while (v28->__r_.__value_.__s.__data_[0] == p_str->__r_.__value_.__s.__data_[0])
    {
      p_str = (p_str + 2);
      v28 = (v28 + 2);
      if (!--size)
      {
        goto LABEL_28;
      }
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v11)
  {
    std::vector<std::vector<long long>>::__throw_out_of_range[abi:se200100]();
  }

  std::basic_string<char16_t>::operator=((*a3 + 24 * v11), &__str);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_32:
  operator delete(__str.__r_.__value_.__l.__data_);
LABEL_33:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5A88EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<std::vector<std::basic_string<char16_t>>>(uint64_t result)
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

void morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::makeGenitiveWhenRequested(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  morphun::grammar::synthesis::getFeatureValue(&__p, a3, a2);
  v7 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v6);
  v8 = *(v7 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v7 + 8);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v8 != size)
  {
    goto LABEL_25;
  }

  if (v8)
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v9 >= 0)
    {
      v12 = v7;
    }

    else
    {
      v12 = *v7;
    }

    while (p_p->__r_.__value_.__s.__data_[0] == *v12)
    {
      ++v12;
      p_p = (p_p + 2);
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_25;
  }

LABEL_14:
  v13 = *(a4 + 23);
  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 > 1)
    {
      v14 = a4;
      goto LABEL_19;
    }

LABEL_25:
    if (*(a4 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a1, *a4, *(a4 + 8));
    }

    else
    {
      *a1 = *a4;
      *(a1 + 16) = *(a4 + 16);
    }

    goto LABEL_28;
  }

  v13 = *(a4 + 8);
  if (v13 <= 1)
  {
    goto LABEL_25;
  }

  v14 = *a4;
LABEL_19:
  v15 = MEMORY[0x1BFB495D0](v14[v13 - 1]);
  if ((v15 - 115) <= 7 && ((1 << (v15 - 115)) & 0xA1) != 0)
  {
    v17 = 8217;
LABEL_24:
    std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1, a4, v17);
    goto LABEL_28;
  }

  v18 = *(a4 + 23);
  if (v18 >= 0)
  {
    v19 = a4;
  }

  else
  {
    v19 = *a4;
  }

  if (v18 >= 0)
  {
    v20 = *(a4 + 23);
  }

  else
  {
    v20 = *(a4 + 8);
  }

  if ((!morphun::util::StringViewUtils::isAllUpperCase(v19, v20) || u_ispunct(v15)) && !u_isdigit(v15) && !std::basic_string<char16_t>::ends_with[abi:se200100](a4, L".dk"))
  {
    v17 = 115;
    goto LABEL_24;
  }

  if (*(a4 + 23) >= 0)
  {
    v21 = *(a4 + 23);
  }

  else
  {
    v21 = *(a4 + 8);
  }

  std::basic_string<char16_t>::basic_string[abi:se200100](a1, v21 + 2);
  if (*(a1 + 23) >= 0)
  {
    v22 = a1;
  }

  else
  {
    v22 = *a1;
  }

  if (*(a4 + 23) >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v21 < 0)
  {
    goto LABEL_59;
  }

  v24 = &v22[v21];
  if (v23 >= v22 && v24 > v23)
  {
    goto LABEL_59;
  }

  if (v21)
  {
    memmove(v22, v23, 2 * v21);
  }

  if (v24 <= &unk_1BE80E64A && v24 + 4 > &unk_1BE80E64A)
  {
LABEL_59:
    __break(1u);
    return;
  }

  *v24 = 7544857;
  *(v24 + 4) = 0;
LABEL_28:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5A8BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::inflectWord(std::basic_string<char16_t> *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  morphun::grammar::synthesis::getFeatureValue(&v87, a3, a2[1]);
  memset(&v86, 0, sizeof(v86));
  if (a9)
  {
    v17 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_INDEFINITE(v16);
    std::basic_string<char16_t>::operator=(&v86, v17);
  }

  else
  {
    morphun::grammar::synthesis::getFeatureValue(&__str, a3, a2[3]);
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v86.__r_.__value_.__l.__data_);
    }

    v86 = __str;
  }

  morphun::grammar::synthesis::getFeatureValue(&__s, a3, a2[2]);
  morphun::grammar::synthesis::getFeatureValue(&__p, a3, a2[4]);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    morphun::dialog::DictionaryLookupFunction::determine((a2 + 11), a6, &__str);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __str;
  }

  morphun::grammar::synthesis::getFeatureValue(&v83, a3, a2[5]);
  v20 = morphun::grammar::synthesis::GrammemeConstants::POS_ADJECTIVE(v19);
  v21 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
  v22 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v21 = v20->__r_.__value_.__l.__size_;
  }

  v23 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
  if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v23 = v83.__r_.__value_.__l.__size_;
  }

  if (v21 != v23)
  {
LABEL_26:
    v26 = (a2[9] & a7) == 0 || (a2[10] & a7) != 0;
    goto LABEL_29;
  }

  if (v21)
  {
    v24 = &v83;
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v83.__r_.__value_.__r.__words[0];
    }

    if (v22 >= 0)
    {
      v25 = v20;
    }

    else
    {
      v25 = v20->__r_.__value_.__r.__words[0];
    }

    while (v24->__r_.__value_.__s.__data_[0] == v25->__r_.__value_.__s.__data_[0])
    {
      v25 = (v25 + 2);
      v24 = (v24 + 2);
      if (!--v21)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_26;
  }

LABEL_25:
  v26 = 0;
LABEL_29:
  memset(&v90, 0, sizeof(v90));
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v89, v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
  }

  else
  {
    v89 = v87;
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v88, v86.__r_.__value_.__l.__data_, v86.__r_.__value_.__l.__size_);
  }

  else
  {
    v88 = v86;
  }

  v27 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v89.__r_.__value_.__l.__size_;
  }

  if (!v27)
  {
    v28 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v20);
    v20 = std::basic_string<char16_t>::operator=(&v89, v28);
  }

  v29 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = v88.__r_.__value_.__l.__size_;
  }

  if (!v29)
  {
    v30 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_INDEFINITE(v20);
    v20 = std::basic_string<char16_t>::operator=(&v88, v30);
  }

  if (v26 & a8)
  {
    memset(&v91, 0, sizeof(v91));
    v93 = &v91;
    std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(1uLL);
  }

  v31 = *(a4 + 23);
  if (v31 < 0)
  {
    v32 = *(a4 + 8);
    if (!v32)
    {
      v76 = 0;
LABEL_177:
      std::basic_string<char16_t>::__init_copy_ctor_external(&v82, *a4, v76);
      goto LABEL_178;
    }
  }

  else
  {
    if (!*(a4 + 23))
    {
LABEL_174:
      v82 = *a4;
      goto LABEL_178;
    }

    v32 = *(a4 + 23);
  }

  v33 = 0;
  if (v31 >= 0)
  {
    v34 = a4;
  }

  else
  {
    v34 = *a4;
  }

  v35 = v34[v32 - 1];
  if (((v35 - 97) > 0x18 || ((1 << (v35 - 97)) & 0x1104111) == 0) && ((v35 - 229) > 0x13 || ((1 << (v35 + 27)) & 0x80003) == 0))
  {
    v33 = 1;
  }

  v38 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v20);
  v40 = *(v38 + 23);
  v41 = v40;
  if ((v40 & 0x80u) != 0)
  {
    v40 = *(v38 + 8);
  }

  v42 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v42 = v89.__r_.__value_.__l.__size_;
  }

  if (v40 == v42)
  {
    if (!v40)
    {
      goto LABEL_90;
    }

    v43 = &v89;
    if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v43 = v89.__r_.__value_.__r.__words[0];
    }

    if (v41 >= 0)
    {
      v44 = v38;
    }

    else
    {
      v44 = *v38;
    }

    while (v43->__r_.__value_.__s.__data_[0] == *v44)
    {
      ++v44;
      v43 = (v43 + 2);
      if (!--v40)
      {
        goto LABEL_90;
      }
    }
  }

  v38 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_DEFINITE(v38);
  v45 = *(v38 + 23);
  v46 = v45;
  if ((v45 & 0x80u) != 0)
  {
    v45 = *(v38 + 8);
  }

  v47 = HIBYTE(v88.__r_.__value_.__r.__words[2]);
  if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v47 = v88.__r_.__value_.__l.__size_;
  }

  if (v45 != v47)
  {
    goto LABEL_125;
  }

  if (v45)
  {
    v48 = &v88;
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v48 = v88.__r_.__value_.__r.__words[0];
    }

    if (v46 >= 0)
    {
      v49 = v38;
    }

    else
    {
      v49 = *v38;
    }

    while (v48->__r_.__value_.__s.__data_[0] == *v49)
    {
      ++v49;
      v48 = (v48 + 2);
      if (!--v45)
      {
        goto LABEL_90;
      }
    }

    goto LABEL_125;
  }

LABEL_90:
  if (v32 < 5)
  {
    goto LABEL_106;
  }

  v50 = v32 - 3;
  v51 = *(a4 + 23);
  v52 = v51;
  if ((v51 & 0x80u) != 0)
  {
    v51 = *(a4 + 8);
  }

  if (v51 < v50)
  {
    goto LABEL_219;
  }

  v53 = v52 >= 0 ? a4 : *a4;
  if (v51 < v32 - 2)
  {
    goto LABEL_219;
  }

  if (*(v53 + 2 * (v32 - 2)) != 101 || (v35 - 108) > 6 || ((1 << (v35 - 108)) & 0x45) == 0 || (v54 = *(v53 + 2 * v50), v54 != *(v53 + 2 * v32 - 8)) || (v54 - 97) <= 0x18 && ((1 << (v54 - 97)) & 0x1104111) != 0 || (v54 - 229) <= 0x13 && ((1 << (v54 + 27)) & 0x80003) != 0)
  {
LABEL_106:
    if (v33)
    {
      if (*(a4 + 23) >= 0)
      {
        v55 = *(a4 + 23);
      }

      else
      {
        v55 = *(a4 + 8);
      }

      std::basic_string<char16_t>::basic_string[abi:se200100](&v82, v55 + 1);
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v82;
      }

      else
      {
        v56 = v82.__r_.__value_.__r.__words[0];
      }

      if (*(a4 + 23) >= 0)
      {
        v57 = a4;
      }

      else
      {
        v57 = *a4;
      }

      if ((v55 & 0x8000000000000000) == 0)
      {
        v58 = (v56 + 2 * v55);
        if (v57 < v56 || v58 <= v57)
        {
          if (v55)
          {
            memmove(v56, v57, 2 * v55);
          }

          if (v58 > byte_1BE80ECC4 || v58 + 2 <= byte_1BE80ECC4)
          {
            v59 = 101;
LABEL_124:
            *v58 = v59;
            goto LABEL_178;
          }
        }
      }

LABEL_219:
      __break(1u);
      return;
    }

LABEL_125:
    v60 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v38);
    v61 = *(v60 + 23);
    v62 = v61;
    if ((v61 & 0x80u) != 0)
    {
      v61 = *(v60 + 8);
    }

    v63 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
    if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v63 = v89.__r_.__value_.__l.__size_;
    }

    if (v61 != v63)
    {
      goto LABEL_173;
    }

    if (v61)
    {
      v64 = &v89;
      if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v64 = v89.__r_.__value_.__r.__words[0];
      }

      if (v62 >= 0)
      {
        v65 = v60;
      }

      else
      {
        v65 = *v60;
      }

      while (v64->__r_.__value_.__s.__data_[0] == *v65)
      {
        ++v65;
        v64 = (v64 + 2);
        if (!--v61)
        {
          goto LABEL_138;
        }
      }

      goto LABEL_173;
    }

LABEL_138:
    v66 = morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(v60);
    v67 = *(v66 + 23);
    v68 = v67;
    if ((v67 & 0x80u) != 0)
    {
      v67 = *(v66 + 8);
    }

    v69 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v69 = __p.__r_.__value_.__l.__size_;
    }

    if (v67 != v69)
    {
      goto LABEL_173;
    }

    if (v67)
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if (v68 >= 0)
      {
        v71 = v66;
      }

      else
      {
        v71 = *v66;
      }

      while (p_p->__r_.__value_.__s.__data_[0] == *v71)
      {
        ++v71;
        p_p = (p_p + 2);
        if (!--v67)
        {
          goto LABEL_151;
        }
      }

      goto LABEL_173;
    }

LABEL_151:
    if (v35 != 105 && v35 != 229)
    {
      v72 = v33 ^ 1;
      if (v35 == 116)
      {
        v72 = 1;
      }

      if (v72)
      {
LABEL_173:
        if ((*(a4 + 23) & 0x80000000) == 0)
        {
          goto LABEL_174;
        }

        v76 = *(a4 + 8);
        goto LABEL_177;
      }
    }

    if (*(a4 + 23) >= 0)
    {
      v73 = *(a4 + 23);
    }

    else
    {
      v73 = *(a4 + 8);
    }

    std::basic_string<char16_t>::basic_string[abi:se200100](&v82, v73 + 1);
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = &v82;
    }

    else
    {
      v74 = v82.__r_.__value_.__r.__words[0];
    }

    if (*(a4 + 23) >= 0)
    {
      v75 = a4;
    }

    else
    {
      v75 = *a4;
    }

    if ((v73 & 0x8000000000000000) == 0)
    {
      v58 = (v74 + 2 * v73);
      if (v75 < v74 || v58 <= v75)
      {
        if (v73)
        {
          memmove(v74, v75, 2 * v73);
        }

        if (v58 > dword_1BE80C566 || (v58 + 2) <= dword_1BE80C566)
        {
          v59 = 116;
          goto LABEL_124;
        }
      }
    }

    goto LABEL_219;
  }

  v81 = std::basic_string<char16_t>::basic_string(&v91, a4, 0, v50, v39);
  std::basic_string<char16_t>::push_back(v81, v35);
  __str = v91;
  memset(&v91, 0, sizeof(v91));
  std::basic_string<char16_t>::push_back(&__str, 101);
  v82 = __str;
  memset(&__str, 0, sizeof(__str));
  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

LABEL_178:
  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if ((a8 & 1) == 0)
  {
    v77 = v82.__r_.__value_.__l.__size_;
LABEL_191:
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
    }

    if (v77)
    {
      v79 = v82.__r_.__value_.__r.__words[0];
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = &v82;
      }

      v80 = 2 * v77;
      do
      {
        if (v79->__r_.__value_.__s.__data_[0] == 39)
        {
          v79->__r_.__value_.__s.__data_[0] = 8217;
        }

        v79 = (v79 + 2);
        v80 -= 2;
      }

      while (v80);
      *a1 = v82;
      memset(&v82, 0, sizeof(v82));
    }

    else if (*(a4 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a1, *a4, *(a4 + 8));
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *a4;
      a1->__r_.__value_.__r.__words[2] = *(a4 + 16);
    }

    goto LABEL_204;
  }

  v77 = v82.__r_.__value_.__l.__size_;
  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v78 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v78 = v82.__r_.__value_.__l.__size_;
  }

  if (v78)
  {
    goto LABEL_191;
  }

  morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::makeGenitiveWhenRequested(a1, a2[2], a3, a4);
LABEL_204:
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5A9A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (*(v61 - 105) < 0)
  {
    operator delete(*(v61 - 128));
  }

  if (*(v61 - 129) < 0)
  {
    operator delete(*(v61 - 152));
  }

  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (*(v61 - 153) < 0)
  {
    operator delete(*(v61 - 176));
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

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  _Unwind_Resume(exception_object);
}

void std::basic_string<char16_t>::push_back(std::basic_string<char16_t> *this, std::basic_string<char16_t>::value_type __c)
{
  v5 = this;
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&this->__r_.__value_.__s + 23) != 10)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
      *(&this->__r_.__value_.__s + 23) = (*(&this->__r_.__value_.__s + 23) + 1) & 0x7F;
      goto LABEL_8;
    }

    v6 = 10;
    goto LABEL_5;
  }

  size = this->__r_.__value_.__l.__size_;
  v6 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (size == v6)
  {
LABEL_5:
    std::basic_string<char16_t>::__grow_by(this, v6, 1uLL, v6, v6, v2, v3);
    size = v6;
  }

  v5->__r_.__value_.__l.__size_ = size + 1;
  v5 = v5->__r_.__value_.__r.__words[0];
LABEL_8:
  v8 = (v5 + 2 * size);
  *v8 = __c;
  v8[1] = 0;
}

void virtual thunk tomorphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::~DaGrammarSynthesizer_DaDisplayFunction(morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction *this)
{
  morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::~DaGrammarSynthesizer_DaDisplayFunction((this + *(*this - 32)));

  JUMPOUT(0x1BFB49160);
}

{
  morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::~DaGrammarSynthesizer_DaDisplayFunction((this + *(*this - 32)));
}

void morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::~DaGrammarSynthesizer_DaDisplayFunction(morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction *this)
{
  *this = &unk_1F3CD5770;
  *(this + 66) = &unk_1F3CD57C8;
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
  morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::~DaGrammarSynthesizer_DaDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::getDisplayValue(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(&v16, 0, sizeof(v16));
  v4 = *(a2 + 8);
  if (v4 != *(a2 + 16))
  {
    v6 = (*(*v4 + 24))(v4);
    std::basic_string<char16_t>::operator=(&v16, v6);
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v16.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (!*(a3 + 16))
      {
        goto LABEL_22;
      }

      v15 = 0;
      if (std::basic_string<char16_t>::ends_with[abi:se200100](&v16, L"."))
      {
        morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::makeGenitiveWhenRequested(&v14, a1[2], a3, &v16);
      }

      else
      {
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v16;
        }

        else
        {
          v8 = v16.__r_.__value_.__r.__words[0];
        }

        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v9 = v16.__r_.__value_.__l.__size_;
        }

        if (!morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[6], &v15, v8, v9))
        {
          v11 = a1[8];
          if (!v11)
          {
            exception = __cxa_allocate_exception(0x38uLL);
            morphun::exception::NullPointerException::NullPointerException(exception);
          }

          v12 = (*(*v11 + 24))(v11, &v16);
          npc<morphun::TokenChain>(v12);
          npc<morphun::TokenChain>(v12);
          morphun::grammar::synthesis::GrammarSynthesizerUtil::inflectSignificantWords(&v14, a3, v12, a1 + *(*a1 - 64));
          if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v16.__r_.__value_.__l.__data_);
          }

          v16 = v14;
          (*(*v12 + 16))(v12);
LABEL_22:
          operator new();
        }

        morphun::grammar::synthesis::DaGrammarSynthesizer_DaDisplayFunction::inflectWord(&v14, a1, a3, &v16, v15, &v16, v15, 1, 0);
      }

      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      v16 = v14;
      goto LABEL_22;
    }

    if ((*(&v16.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  return 0;
}

void sub_1BE5AA0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __cxa_free_exception(v20);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer::POSSESSIVE_ADJECTIVE_COUNT(morphun::grammar::synthesis::ItGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::ItGrammarSynthesizer::POSSESSIVE_ADJECTIVE_COUNT(void)::POSSESSIVE_ADJECTIVE_COUNT_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE5AA2F0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer::POSSESSIVE_ADJECTIVE_PERSON(morphun::grammar::synthesis::ItGrammarSynthesizer *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::ItGrammarSynthesizer::POSSESSIVE_ADJECTIVE_PERSON(void)::POSSESSIVE_ADJECTIVE_PERSON_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE5AA41C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer::WORDSWITHPOSSESSIVEWITHOUTARTICLE(morphun::grammar::synthesis::ItGrammarSynthesizer *this)
{
  v4 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = morphun::grammar::synthesis::ItGrammarSynthesizer::WORDSWITHPOSSESSIVEWITHOUTARTICLE(void)::WORDSWITHPOSSESSIVEWITHOUTARTICLE_;
  if (!morphun::grammar::synthesis::ItGrammarSynthesizer::WORDSWITHPOSSESSIVEWITHOUTARTICLE(void)::WORDSWITHPOSSESSIVEWITHOUTARTICLE_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE5AA560(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::ItGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::ItGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "d");
  operator new();
}

void sub_1BE5AC934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  __cxa_free_exception(v63);
  MEMORY[0x1BFB49160](v61, v62);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer::startsWithConsonantSubset(unsigned __int16 *a1)
{
  v1 = a1;
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 1) < 2uLL)
    {
      return 0;
    }

    v2 = *a1;
  }

  else
  {
    v2 = a1;
    if (*(a1 + 23) < 2u)
    {
      return 0;
    }
  }

  result = MEMORY[0x1BFB495D0](*v2);
  v4 = result;
  if (*(v1 + 23) < 0)
  {
    if (!*(v1 + 1))
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v1 = *v1;
  }

  else if (!*(v1 + 23))
  {
    goto LABEL_27;
  }

  v5 = MEMORY[0x1BFB495D0](v1[1]);
  v6 = v5;
  if (v4 == 112)
  {
    return v5 == 115 || v5 == 110;
  }

  v8 = v5 == 110 && v4 == 103;
  if (v8 || (v4 - 120) < 3)
  {
    return 1;
  }

  if (v4 != 115)
  {
    return 0;
  }

  v9 = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(v5);
  return MEMORY[0x1BFB49A20](*v9, v6) == 0;
}

void *morphun::grammar::synthesis::ItGrammarSynthesizer::startsWithVowelForElision(unsigned __int16 *a1)
{
  v1 = a1;
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 1) >= 2uLL)
    {
      v2 = *a1;
      goto LABEL_7;
    }

    return 0;
  }

  v2 = a1;
  if (*(a1 + 23) < 2u)
  {
    return 0;
  }

LABEL_7:
  v4 = MEMORY[0x1BFB495D0](*v2);
  if (v4 == 104)
  {
    result = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(v4);
    if (*(v1 + 23) < 0)
    {
      if (!*(v1 + 8))
      {
        goto LABEL_24;
      }

      v1 = *v1;
    }

    else if (!*(v1 + 23))
    {
      goto LABEL_24;
    }

    return (MEMORY[0x1BFB49A20](*result, *(v1 + 2)) != 0);
  }

  if (v4 == 105)
  {
    result = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(v4);
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
      if (!*(v1 + 23))
      {
        goto LABEL_24;
      }

      return (MEMORY[0x1BFB49A20](*result, *(v1 + 2)) == 0);
    }

    if (*(v1 + 8))
    {
      v1 = *v1;
      return (MEMORY[0x1BFB49A20](*result, *(v1 + 2)) == 0);
    }

LABEL_24:
    __break(1u);
    return result;
  }

  v5 = morphun::util::LocaleUtils::ITALIAN(v4);

  return morphun::dictionary::PhraseProperties::isStartsWithVowel(v5, v1);
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer::POSSESSIVE_ADJECTIVE_MAP(morphun::grammar::synthesis::ItGrammarSynthesizer *this)
{
  v4 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = morphun::grammar::synthesis::ItGrammarSynthesizer::POSSESSIVE_ADJECTIVE_MAP(void)::POSSESSIVE_ADJECTIVE_MAP_;
  if (!morphun::grammar::synthesis::ItGrammarSynthesizer::POSSESSIVE_ADJECTIVE_MAP(void)::POSSESSIVE_ADJECTIVE_MAP_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE5AD3F4(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<int,std::u16string_view>::map[abi:se200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 24 * a3;
    do
    {
      std::__tree<std::__value_type<int,std::u16string_view>,std::__map_value_compare<int,std::__value_type<int,std::u16string_view>,std::less<int>,true>,std::allocator<std::__value_type<int,std::u16string_view>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::u16string_view> const&>(a1, v4, *a2);
      a2 += 6;
      v6 -= 24;
    }

    while (v6);
  }

  return a1;
}

void *std::__tree<std::__value_type<int,std::u16string_view>,std::__map_value_compare<int,std::__value_type<int,std::u16string_view>,std::less<int>,true>,std::allocator<std::__value_type<int,std::u16string_view>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::u16string_view> const&>(void *result, uint64_t *a2, int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 8), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 8) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (*v3)
    {
      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 32);
          if (v15 <= a3)
          {
            break;
          }

          v13 = *v14;
          v3 = v14;
          if (!*v14)
          {
            goto LABEL_38;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v3 = v14 + 1;
        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v8 = v3;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 8) <= a3)
  {
    for (i = *v3; i; i = v18[1])
    {
      while (1)
      {
        v18 = i;
        v19 = *(i + 32);
        if (v19 <= a3)
        {
          break;
        }

        i = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_39;
      }

      v3 = v18 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v8)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjective(morphun::grammar::synthesis::ItGrammarSynthesizer *a1, char a2)
{
  v3 = a1;
  v4 = morphun::grammar::synthesis::ItGrammarSynthesizer::POSSESSIVE_ADJECTIVE_MAP(a1);
  v7 = *(v4 + 8);
  v5 = (v4 + 8);
  v6 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v3 & 0xF | (16 * (a2 & 0xF));
  v9 = v5;
  do
  {
    if (*(v6 + 8) >= v8)
    {
      v9 = v6;
    }

    v6 = *(v6 + (*(v6 + 8) < v8));
  }

  while (v6);
  if (v9 == v5 || v8 < *(v9 + 8))
  {
LABEL_8:
    v9 = v5;
  }

  if (v9 == (morphun::grammar::synthesis::ItGrammarSynthesizer::POSSESSIVE_ADJECTIVE_MAP(v5) + 8))
  {
    return 0;
  }

  result = *(v9 + 5);
  v11 = *(v9 + 6);
  return result;
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer::INFLECTED_POSSESIVE_ADJECTIVES(morphun::grammar::synthesis::ItGrammarSynthesizer *this)
{
  v4 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = morphun::grammar::synthesis::ItGrammarSynthesizer::INFLECTED_POSSESIVE_ADJECTIVES(void)::INFLECTED_POSSESIVE_ADJECTIVES_;
  if (!morphun::grammar::synthesis::ItGrammarSynthesizer::INFLECTED_POSSESIVE_ADJECTIVES(void)::INFLECTED_POSSESIVE_ADJECTIVES_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE5AD9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19)
{
  for (i = 112; i != -16; i -= 32)
  {
    std::__tree<std::u16string_view>::destroy(*(v20 + i));
  }

  std::__tree<std::u16string_view>::destroy(a10);
  std::__tree<std::u16string_view>::destroy(a13);
  std::__tree<std::u16string_view>::destroy(a16);
  std::__tree<std::u16string_view>::destroy(a19);
  MEMORY[0x1BFB49160](v19, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::u16string_view,std::u16string_view>::map[abi:se200100](void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = a2 + 32 * a3;
    do
    {
      std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::__emplace_hint_unique_key_args<std::u16string_view,std::pair<std::u16string_view const,std::u16string_view> const&>(a1, v4, *v5, *(v5 + 8));
      v5 += 32;
    }

    while (v5 != v6);
  }

  return a1;
}

void *std::map<std::u16string_view,std::u16string_view>::map[abi:se200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::__emplace_hint_unique_key_args<std::u16string_view,std::pair<std::u16string_view const,std::u16string_view> const&>(a1, v3, v5[4], v5[5]);
      v6 = v5[1];
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
          v7 = v5[2];
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

void *std::map<int,std::map<std::u16string_view,std::u16string_view>>::map[abi:se200100](void *result, int *a2, uint64_t a3)
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

void std::__tree<std::__value_type<int,std::map<std::u16string_view,std::u16string_view>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::u16string_view,std::u16string_view>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::u16string_view,std::u16string_view>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,std::map<std::u16string_view,std::u16string_view>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::u16string_view,std::u16string_view>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::u16string_view,std::u16string_view>>>>::destroy(*a1);
    std::__tree<std::__value_type<int,std::map<std::u16string_view,std::u16string_view>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::u16string_view,std::u16string_view>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::u16string_view,std::u16string_view>>>>::destroy(a1[1]);
    std::__tree<std::u16string_view>::destroy(a1[6]);

    operator delete(a1);
  }
}

void *std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::__emplace_hint_unique_key_args<std::u16string_view,std::pair<std::u16string_view const,std::u16string_view> const&>(void *result, void *a2, unsigned __int16 *a3, unint64_t a4)
{
  v7 = result;
  v8 = result + 1;
  if (result + 1 != a2)
  {
    v9 = a2[4];
    v10 = a2[5];
    result = std::less<std::u16string_view>::operator()[abi:se200100](a3, a4, v9, v10);
    if (!result)
    {
      result = std::less<std::u16string_view>::operator()[abi:se200100](v9, v10, a3, a4);
      if (!result)
      {
        return result;
      }

      v14 = a2[1];
      if (v14)
      {
        v15 = a2[1];
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        v19 = a2;
        do
        {
          v16 = v19[2];
          v18 = *v16 == v19;
          v19 = v16;
        }

        while (!v18);
      }

      if (v16 == v8 || (result = std::less<std::u16string_view>::operator()[abi:se200100](a3, a4, v16[4], v16[5]), result))
      {
        if (v14)
        {
          v20 = v16;
        }

        else
        {
          v20 = a2;
          v16 = a2 + 1;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  v11 = *a2;
  if (*v7 != a2)
  {
    if (v11)
    {
      v12 = *a2;
      do
      {
        v13 = v12;
        v12 = v12[1];
      }

      while (v12);
    }

    else
    {
      v17 = a2;
      do
      {
        v13 = v17[2];
        v18 = *v13 == v17;
        v17 = v13;
      }

      while (v18);
    }

    result = std::less<std::u16string_view>::operator()[abi:se200100](v13[4], v13[5], a3, a4);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_27:
    result = std::__tree<std::u16string_view>::__find_equal<std::u16string_view>(v7, &v20, a3, a4);
    v16 = result;
    goto LABEL_28;
  }

  v13 = a2;
LABEL_17:
  if (!v11)
  {
LABEL_30:
    operator new();
  }

  v20 = v13;
  v16 = v13 + 1;
LABEL_28:
  if (!*v16)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer::getInflectedPossessiveAdjectiveValue(unsigned __int16 *a1, unint64_t a2, int a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a4;
  result = 0;
  if (a4)
  {
    v8 = a3;
    v9 = morphun::grammar::synthesis::ItGrammarSynthesizer::INFLECTED_POSSESIVE_ADJECTIVES(0);
    v12 = *(v9 + 8);
    v10 = (v9 + 8);
    v11 = v12;
    if (!v12)
    {
      goto LABEL_10;
    }

    v13 = v8 & 0xF | (16 * (v5 & 0xF));
    v14 = v10;
    do
    {
      if (*(v11 + 8) >= v13)
      {
        v14 = v11;
      }

      v11 = *(v11 + (*(v11 + 8) < v13));
    }

    while (v11);
    if (v14 == v10 || v13 < *(v14 + 8))
    {
LABEL_10:
      v14 = v10;
    }

    if (v14 == (morphun::grammar::synthesis::ItGrammarSynthesizer::INFLECTED_POSSESIVE_ADJECTIVES(v10) + 8))
    {
      return 0;
    }

    v15 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(v14 + 40, a1, a2);
    if ((v14 + 48) == v15)
    {
      return 0;
    }

    else
    {
      v16 = v15;
      result = *(v15 + 48);
      v17 = *(v16 + 56);
    }
  }

  return result;
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer::getCount(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::ItGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::Count>>(morphun::grammar::synthesis::ItGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::Count>>(morphun::grammar::synthesis::ItGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE5AE2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::Count>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE5AE530(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::Count>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjectiveCount(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjectiveCount(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::PossessiveAdjectiveCount>>(morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjectiveCount(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::PossessiveAdjectiveCount>>(morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjectiveCount(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE5AE79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::PossessiveAdjectiveCount>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE5AE9DC(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::PossessiveAdjectiveCount>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer::getGender(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::ItGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::ItGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::ItGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE5AEC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::Gender>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE5AEE88(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::Gender>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjectivePerson(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjectivePerson(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::PossessiveAdjectivePerson>>(morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjectivePerson(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::PossessiveAdjectivePerson>>(morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjectivePerson(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE5AF134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::PossessiveAdjectivePerson>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE5AF388(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::ItGrammarSynthesizer::PossessiveAdjectivePerson>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::grammar::synthesis::HeGrammarSynthesizer_GenderLookupFunction::determine(uint64_t a1@<X0>, uint64_t *a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  morphun::dialog::DictionaryLookupFunction::determine(a1, a2, __p);
  v5 = HIBYTE(v12);
  v6 = SHIBYTE(v12);
  if (v12 < 0)
  {
    v5 = __p[1];
  }

  if (v5)
  {
    *&a3->__r_.__value_.__l.__data_ = *__p;
    a3->__r_.__value_.__r.__words[2] = v12;
    __p[1] = 0;
    v12 = 0;
    __p[0] = 0;
  }

  else
  {
    v7 = std::basic_string<char16_t>::ends_with[abi:se200100](a2, word_1BE80F51E);
    if ((v7 & 1) != 0 || (v7 = std::basic_string<char16_t>::ends_with[abi:se200100](a2, word_1BE80F4FC), v7))
    {
      v8 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v7);
    }

    else
    {
      v8 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v7);
    }

    if (*(v8 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a3, *v8, *(v8 + 8));
    }

    else
    {
      v9 = *v8;
      a3->__r_.__value_.__r.__words[2] = *(v8 + 16);
      *&a3->__r_.__value_.__l.__data_ = v9;
    }

    if (v6 < 0)
    {
      v10 = __p[0];

      operator delete(v10);
    }
  }
}

void sub_1BE5AF50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::HeGrammarSynthesizer_GenderLookupFunction::~HeGrammarSynthesizer_GenderLookupFunction(morphun::grammar::synthesis::HeGrammarSynthesizer_GenderLookupFunction *this)
{
  *this = &off_1F3CE7300;
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
  *this = &off_1F3CE7300;
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

uint64_t morphun::grammar::synthesis::PtGrammarSynthesizer_PtDisplayFunction::getDisplayValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  TheBestDisplayValue = morphun::grammar::synthesis::GrammarSynthesizerUtil::getTheBestDisplayValue(*(a2 + 8), *(a2 + 16), a3);
  v6 = TheBestDisplayValue;
  if (TheBestDisplayValue)
  {
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
      v15 = *(a1 + 8);
      memset(&__str, 0, sizeof(__str));
      std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(&__str, &v15, v16, 2uLL);
    }

    v6 = 0;
    if ((*(&v13.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1BE5B04AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, char *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49)
{
  if (*(v50 - 185) < 0)
  {
    operator delete(*(v50 - 208));
  }

  if (a49 == 1 && a48 < 0)
  {
    operator delete(__p);
  }

  if (*(v50 - 104) == 1 && *(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  a37 = &a30;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a37);
  if (v49)
  {
    (*(*v49 + 16))(v49);
  }

  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(a18);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::PtGrammarSynthesizer_PtDisplayFunction::inflectWord(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *&v4.__r_.__value_.__l.__data_ = *(a2 + 8);
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(__p, &v4, &v4.__r_.__value_.__r.__words[2], 2uLL);
}

void sub_1BE5B0ED0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  if (*(v30 - 89) < 0)
  {
    operator delete(*(v30 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    if (a24 < 0)
    {
      operator delete(a19);
    }
  }

  a19 = &a26;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a19);
  a19 = &a29;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a19);
  _Unwind_Resume(a1);
}

void sub_1BE5B0FA8()
{
  if (v0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x1BE5B0FA0);
}

void morphun::grammar::synthesis::PtGrammarSynthesizer_PtDisplayFunction::~PtGrammarSynthesizer_PtDisplayFunction(morphun::grammar::synthesis::PtGrammarSynthesizer_PtDisplayFunction *this)
{
  morphun::grammar::synthesis::PtGrammarSynthesizer_PtDisplayFunction::~PtGrammarSynthesizer_PtDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD5260;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  *(this + 5) = &unk_1F3CD84E0;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 14));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 11));
}

void morphun::exception::XMLParseException::~XMLParseException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

double morphun::exception::XMLParseException::XMLParseException(morphun::exception::XMLParseException *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0B18;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0B18;
  return result;
}

void *morphun::exception::XMLParseException::XMLParseException(uint64_t a1, __int128 *a2)
{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0B18;
  return result;
}

{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0B18;
  return result;
}

double morphun::tokenizer::NumberCleaverIterator::reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 40) = 0;
  result = NAN;
  *(a1 + 32) = 0xFFFFFFFF00000000;
  return result;
}

void morphun::analysis::stemmer::slice_from(std::basic_string<char16_t> *this, std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __n1, uint64_t a4, std::allocator<char16_t> *a5)
{
  v6 = HIDWORD(this[1].__r_.__value_.__r.__words[1]);
  if ((v6 & 0x80000000) != 0 || ((v7 = LODWORD(this[1].__r_.__value_.__r.__words[2]), v8 = HIDWORD(this[1].__r_.__value_.__r.__words[0]), v6 <= v7) ? (v9 = v7 <= v8) : (v9 = 0), !v9))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"faulty slice operation: bra=");
    morphun::util::StringUtils::to_u16string(SHIDWORD(this[1].__r_.__value_.__r.__words[1]), &v27);
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v27;
    }

    else
    {
      v19 = v27.__r_.__value_.__r.__words[0];
    }

    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v27.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&__dst, v19, size);
    v29 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    std::basic_string<char16_t>::append(&v29, ",", 5uLL);
    v30 = v29;
    memset(&v29, 0, sizeof(v29));
    morphun::util::StringUtils::to_u16string(SLODWORD(this[1].__r_.__value_.__r.__words[2]), &v26);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v26;
    }

    else
    {
      v21 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = v26.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v30, v21, v22);
    v31 = v30;
    memset(&v30, 0, sizeof(v30));
    std::basic_string<char16_t>::append(&v31, ",", 7uLL);
    v32 = v31;
    memset(&v31, 0, sizeof(v31));
    morphun::util::StringUtils::to_u16string(SHIDWORD(this[1].__r_.__value_.__r.__words[0]), &v25);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v25;
    }

    else
    {
      v23 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = v25.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v32, v23, v24);
    __str = v32;
    memset(&v32, 0, sizeof(v32));
    morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &__str);
  }

  v12 = v6 - v7 + __n1;
  v13 = v12 + v8;
  v14 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v14 & 0x80u) != 0)
  {
    v14 = this->__r_.__value_.__r.__words[1];
  }

  if (v13 > v14)
  {
    std::basic_string<char16_t>::resize(this, v13, 0);
    v8 = HIDWORD(this[1].__r_.__value_.__r.__words[0]);
  }

  if (v12)
  {
    v15 = v8 <= v7;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    std::basic_string<char16_t>::basic_string(&__str, this, __n1 + v6, v8 - v7, a5);
    std::basic_string<char16_t>::assign(this, &__str, v7, 0xFFFFFFFFFFFFFFFFLL);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (__n1)
  {
    std::basic_string<char16_t>::replace(this, v6, __n1, __s, __n1);
  }

  data = this[1].__r_.__value_.__l.__data_;
  HIDWORD(this[1].__r_.__value_.__r.__words[0]) += v12;
  if (data >= v7)
  {
    LODWORD(v6) = data + v12;
  }

  else if (data <= v6)
  {
    return;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = v6;
}

void sub_1BE5B14F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 105) < 0)
  {
    operator delete(*(v54 - 128));
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    if ((v53 & 1) == 0)
    {
LABEL_22:
      _Unwind_Resume(a1);
    }
  }

  else if (!v53)
  {
    goto LABEL_22;
  }

  __cxa_free_exception(v52);
  goto LABEL_22;
}

uint64_t morphun::analysis::stemmer::in_grouping(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 >= *(result + 28))
  {
    return 0;
  }

  v2 = *(result + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(result + 8);
  }

  if (v2 >= v1)
  {
    if (v3 >= 0)
    {
      v4 = result;
    }

    else
    {
      v4 = *result;
    }

    v5 = *(v4 + 2 * v1);
    if ((v5 - 1104) >> 5) >= 0x7FFu && ((*&asc_1BE800C82[2 * ((v5 - 1072) >> 3)] >> ((v5 - 48) & 7)))
    {
      *(result + 24) = v1 + 1;
      return 1;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t morphun::analysis::stemmer::out_grouping(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 >= *(result + 28))
  {
    return 0;
  }

  v2 = *(result + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(result + 8);
  }

  if (v2 < v1)
  {
    __break(1u);
  }

  else
  {
    if (v3 >= 0)
    {
      v4 = result;
    }

    else
    {
      v4 = *result;
    }

    v5 = *(v4 + 2 * v1);
    if ((v5 - 1104) >> 5) >= 0x7FFu && ((*&asc_1BE800C82[2 * ((v5 - 1072) >> 3)] >> ((v5 - 48) & 7)))
    {
      return 0;
    }

    *(result + 24) = v1 + 1;
    return 1;
  }

  return result;
}

uint64_t morphun::analysis::stemmer::r_verb_common(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 40) = *(a1 + 24);
  result = morphun::analysis::stemmer::find_among_b(a1, a2, a3);
  if (result)
  {
    v7 = *(a1 + 24);
    *(a1 + 36) = v7;
    if (result == 2)
    {
      goto LABEL_6;
    }

    if (result != 1)
    {
      return 1;
    }

    v8 = *(a1 + 28);
    if ((morphun::analysis::stemmer::eq_s_b(a1, word_1BE800C8C, 1) & 1) != 0 || (*(a1 + 24) = v7 - v8 + *(a1 + 28), result = morphun::analysis::stemmer::eq_s_b(a1, word_1BE800C90, 1), result))
    {
LABEL_6:
      morphun::analysis::stemmer::slice_from(a1, &word_1BE80F080, 0, v5, v6);
      return 1;
    }
  }

  return result;
}

uint64_t morphun::analysis::stemmer::find_among_b(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 23);
  v6 = v5;
  if ((v5 & 0x80u) == 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  if (a2)
  {
    LODWORD(v4) = 0;
    v3 = 0;
    v8 = 0;
    v9 = 0;
    v5 = *(a1 + 6);
    v10 = v6 < 0;
    v11 = *a1;
    if (!v10)
    {
      v11 = a1;
    }

    while (1)
    {
      v12 = v9 + ((a3 - v9) >> 1);
      if (v8 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v8;
      }

      v14 = (a2 + 16 * v12);
      LODWORD(v15) = *v14;
      if (*v14)
      {
        v15 = 0;
          ;
        }
      }

      if (v15 + ~v13 < 0)
      {
LABEL_23:
        v8 = v13;
LABEL_24:
        v9 += (a3 - v9) >> 1;
      }

      else
      {
        v17 = v5 - 1 - v13;
        v18 = v15 - v13;
        while (1)
        {
          if (v5 - *(a1 + 8) == v13)
          {
            v13 = v5 - *(a1 + 8);
            goto LABEL_22;
          }

          if (v7 < v17)
          {
            goto LABEL_39;
          }

          --v18;
          v19 = *(v11 + v17);
          v20 = v14[v18];
          if (v19 != v20)
          {
            break;
          }

          ++v13;
          --v17;
          if (v18 <= 0)
          {
            v8 = v15;
            goto LABEL_24;
          }
        }

        if (v19 >= v20)
        {
          goto LABEL_23;
        }

LABEL_22:
        a3 = v9 + ((a3 - v9) >> 1);
        LODWORD(v4) = v13;
      }

      if (a3 - v9 <= 1)
      {
        v21 = v9 > 0 || a3 == v9;
        v22 = v21;
        v23 = v22 | v3;
        v3 = 1;
        if (v23)
        {
          break;
        }
      }
    }

    while (1)
    {
      v3 = a2 + 16 * v9;
      LODWORD(v4) = *v3;
      if (*v3)
      {
        v4 = 0;
        v24 = a2 + 2 + 16 * v9;
          ;
        }
      }

      if (v8 >= v4)
      {
        break;
      }

      v9 = *(v3 + 14);
      if (v9 < 0)
      {
        return 0;
      }
    }
  }

  else
  {
LABEL_39:
    __break(1u);
  }

  *(a1 + 6) = v5 - v4;
  return *(v3 + 15);
}

uint64_t morphun::analysis::stemmer::eq_s_b(uint64_t *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(a1 + 6);
  if (v3 - *(a1 + 8) < a3)
  {
    return 0;
  }

  if (a3)
  {
    v5 = *(a1 + 23);
    v6 = a3;
    if ((v5 & 0x80u) == 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    v8 = v3 - a3;
    v9 = a3;
    do
    {
      if ((v5 & 0x80) != 0)
      {
        if (a1[1] <= v8)
        {
LABEL_18:
          std::basic_string<char16_t>::__throw_out_of_range[abi:se200100]();
        }
      }

      else if (v8 >= v5)
      {
        goto LABEL_18;
      }

      if (!v9)
      {
        std::__throw_out_of_range[abi:se200100]("string_view::at");
      }

      if (*(v7 + v8) != *a2)
      {
        return 0;
      }

      ++a2;
      --v9;
      ++v8;
    }

    while (--v6);
  }

  *(a1 + 6) = v3 - a3;
  return 1;
}

void morphun::dialog::language::HeCommonConceptFactory::quantifiedJoin(uint64_t a1@<X0>, uint64_t a2@<X1>, const morphun::dialog::SpeakableString *a3@<X2>, int a4@<W4>, morphun::dialog::SpeakableString *a5@<X8>)
{
  v10 = (*(*a3 + 32))(a3);
  v11 = *(v10 + 23);
  if (v11 >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = *v10;
  }

  if (v11 >= 0)
  {
    v13 = *(v10 + 23);
  }

  else
  {
    v13 = *(v10 + 8);
  }

  if (a1 + 760 == std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(a1 + 752, v12, v13))
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, &word_1BE80F394);
    morphun::dialog::SpeakableString::SpeakableString(v16, __p);
    if (a4 == 1)
    {
      morphun::dialog::SpeakableString::operator+(a3, v16, v17);
      morphun::dialog::SpeakableString::operator+(v17, a2, a5);
    }

    else
    {
      morphun::dialog::SpeakableString::operator+(a2, v16, v17);
      morphun::dialog::SpeakableString::operator+(v17, a3, a5);
    }

    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {

    morphun::dialog::SpeakableString::SpeakableString(a5, a3);
  }
}

void sub_1BE5B1B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::language::HeCommonConceptFactory::quantify(morphun::dialog::language::HeCommonConceptFactory *this, const morphun::dialog::NumberConcept *a2, const morphun::dialog::SemanticFeatureConceptBase *a3)
{
  npc<morphun::dialog::SemanticFeatureConceptBase const>(a3);
  v6 = (*(*a3 + 104))(a3, *(this + 97));
  memset(&v33, 0, sizeof(v33));
  morphun::dialog::SpeakableString::SpeakableString(&v34, &v33);
  if (!v6)
  {
    goto LABEL_59;
  }

  v7 = (*(*v6 + 32))(v6);
  v8 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v7);
  v9 = *(v7 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v7 + 8);
  }

  v11 = *(v8 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v8 + 8);
  }

  if (v9 == v11)
  {
    if (!v9)
    {
LABEL_16:
      if (morphun::dialog::language::HeCommonConceptFactory::isDefinite(this, a3))
      {
        if (*(a2 + 4) == 1)
        {
          v15 = *(a2 + 1);
        }

        else
        {
          v15 = *(a2 + 1);
        }

        if (v15 == 1)
        {
          std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, word_1BE800CFC);
          std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE800D00);
          morphun::dialog::SpeakableString::SpeakableString(&v33, &__dst, __p);
          morphun::dialog::SpeakableString::operator=(&v34, &v33);
          goto LABEL_42;
        }

        std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"construct-masculine");
        (*(*a2 + 200))(&v33, a2, &__dst);
        morphun::dialog::SpeakableString::operator=(&v34, &v33);
      }

      else
      {
        std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "c");
        (*(*a2 + 200))(&v33, a2, &__dst);
        morphun::dialog::SpeakableString::operator=(&v34, &v33);
      }

LABEL_48:
      goto LABEL_49;
    }

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
      ++v14;
      ++v13;
      if (!--v9)
      {
        goto LABEL_16;
      }
    }
  }

  v16 = (*(*v6 + 32))(v6);
  v17 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v16);
  v18 = *(v16 + 23);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(v16 + 8);
  }

  v20 = *(v17 + 23);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(v17 + 8);
  }

  if (v18 != v20)
  {
    goto LABEL_59;
  }

  if (v18)
  {
    if (v21 >= 0)
    {
      v22 = v17;
    }

    else
    {
      v22 = *v17;
    }

    if (v19 >= 0)
    {
      v23 = v16;
    }

    else
    {
      v23 = *v16;
    }

    while (*v22 == *v23)
    {
      ++v23;
      ++v22;
      if (!--v18)
      {
        goto LABEL_36;
      }
    }

LABEL_59:
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"Unexpected gender: ");
    if (v6)
    {
      (**v6)(__p, v6);
    }

    else
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"null");
    }

    if ((v31 & 0x80u) == 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    if ((v31 & 0x80u) == 0)
    {
      v29 = v31;
    }

    else
    {
      v29 = __p[1];
    }

    std::basic_string<char16_t>::append(&__dst, v28, v29);
    v33 = __dst;
    memset(&__dst, 0, sizeof(__dst));
    morphun::exception::IllegalStateException::IllegalStateException(exception, &v33);
  }

LABEL_36:
  if (morphun::dialog::language::HeCommonConceptFactory::isDefinite(this, a3))
  {
    if (*(a2 + 4) == 1)
    {
      v24 = *(a2 + 1);
    }

    else
    {
      v24 = *(a2 + 1);
    }

    if (v24 == 1)
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, word_1BE800CFC);
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE800D34);
      morphun::dialog::SpeakableString::SpeakableString(&v33, &__dst, __p);
      morphun::dialog::SpeakableString::operator=(&v34, &v33);
LABEL_42:
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_49:
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v25 = *(a2 + 1);
      if (*(a2 + 4) != 1)
      {
        v25 = *(a2 + 1);
      }

      if ((v25 - 1) <= 1)
      {
        if (v36)
        {
          v26 = v36;
        }

        else
        {
          v26 = &v35;
        }

        morphun::dialog::SpeakableString::SpeakableString(&v33, v26, v26);
        morphun::dialog::SpeakableString::operator=(&v34, &v33);
      }

      morphun::dialog::CommonConceptFactoryImpl::quantify(this, a2, &v34, a3);
    }

    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, word_1BE800D42);
    (*(*a2 + 200))(&v33, a2, &__dst);
    morphun::dialog::SpeakableString::operator=(&v34, &v33);
  }

  else
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"cardinal-feminine");
    (*(*a2 + 200))(&v33, a2, &__dst);
    morphun::dialog::SpeakableString::operator=(&v34, &v33);
  }

  goto LABEL_48;
}

void sub_1BE5B2188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v29)
  {
    (*(*v29 + 16))(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t npc<morphun::dialog::SemanticFeatureConceptBase const>(uint64_t result)
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

uint64_t morphun::dialog::language::HeCommonConceptFactory::isDefinite(morphun::dialog::language::HeCommonConceptFactory *this, const morphun::dialog::SemanticFeatureConceptBase *a2)
{
  npc<morphun::dialog::SemanticFeatureConceptBase const>(a2);
  result = (*(*a2 + 48))(a2, *(this + 98));
  if (result)
  {
    v5 = result;
    v6 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_DEFINITE(result);
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if (v7 >= 0)
    {
      v8 = *(v6 + 23);
    }

    v9 = *(v5 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v5 + 8);
    }

    if (v8 == v9)
    {
      if (v8)
      {
        if (v10 >= 0)
        {
          v11 = v5;
        }

        else
        {
          v11 = *v5;
        }

        if (v7 >= 0)
        {
          v12 = v6;
        }

        else
        {
          v12 = *v6;
        }

        v13 = v8 - 1;
        do
        {
          v15 = *v12++;
          v14 = v15;
          v17 = *v11++;
          v16 = v17;
          v19 = v13-- != 0;
          result = v16 == v14;
        }

        while (v16 == v14 && v19);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1BE5B256C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  morphun::dialog::SemanticConceptList::~SemanticConceptList(v15, off_1F3CDBF28);
  MEMORY[0x1BFB49160](v15, v16);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::HeCommonConceptFactory::~HeCommonConceptFactory(morphun::dialog::language::HeCommonConceptFactory *this)
{
  morphun::dialog::language::HeCommonConceptFactory::~HeCommonConceptFactory(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD7620;
  std::__tree<std::u16string_view>::destroy(*(this + 95));

  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC620);
}

void *std::__tree<std::u16string_view>::__emplace_unique_key_args<std::u16string_view,std::u16string_view const&>(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  result = std::__tree<std::u16string_view>::__find_equal<std::u16string_view>(a1, &v4, a2, a3);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_1BE5B297C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void morphun::analysis::SvAnalyzer::~SvAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDAEF0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDAEF0);
}

uint64_t npc<morphun::dialog::GrammaticalCountConcept const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

morphun::dialog::GrammaticalCountConcept *morphun::dialog::GrammaticalCountConcept::GrammaticalCountConcept(morphun::dialog::GrammaticalCountConcept *this, const morphun::dialog::GrammaticalCountConcept *a2)
{
  *this = &unk_1F3CD8980;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<morphun::dialog::DucConcept const*>::__init_with_size[abi:se200100]<morphun::dialog::DucConcept const**,morphun::dialog::DucConcept const**>(this + 8, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  *(this + 8) = *(a2 + 8);
  *(this + 5) = *(a2 + 5);
  std::map<double,morphun::dialog::DucConcept const*>::map[abi:se200100](this + 6, a2 + 6);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<std::shared_ptr<morphun::dialog::DucConcept>>::__init_with_size[abi:se200100]<std::shared_ptr<morphun::dialog::DucConcept>*,std::shared_ptr<morphun::dialog::DucConcept>*>(this + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 4);
  return this;
}

void sub_1BE5B2C20(_Unwind_Exception *a1)
{
  std::__tree<std::u16string_view>::destroy(*(v1 + 56));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<morphun::dialog::DucConcept const*>::__init_with_size[abi:se200100]<morphun::dialog::DucConcept const**,morphun::dialog::DucConcept const**>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<morphun::dialog::SemanticFeature const*>::__vallocate[abi:se200100](result, a4);
  }

  return result;
}

void sub_1BE5B2CAC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<double,morphun::dialog::DucConcept const*>::map[abi:se200100](void *result, double **a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != (a2 + 1))
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

      v8 = v2[4];
      if (*(v4 + 4) < v8)
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
              v13 = *(v3 + 4);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v3;
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

            v9 = v3 + 1;
            v3 = v3[1];
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

      v10 = *(v2 + 1);
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
          v11 = *(v2 + 2);
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

void std::vector<std::shared_ptr<morphun::dialog::DucConcept>>::__init_with_size[abi:se200100]<std::shared_ptr<morphun::dialog::DucConcept>*,std::shared_ptr<morphun::dialog::DucConcept>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<std::shared_ptr<morphun::dialog::DucConcept>>>(a4);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }
}

void std::vector<std::shared_ptr<morphun::dialog::DucConcept>>::__destroy_vector::operator()[abi:se200100](void ***a1)
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
        v6 = *(v4 - 1);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:se200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:se200100]<std::allocator<std::shared_ptr<morphun::dialog::DucConcept>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

uint64_t morphun::dialog::GrammaticalCountConcept::toSpeakableString(morphun::dialog::GrammaticalCountConcept *this)
{
  v1 = *(this + 5);
  v2 = this;
  v3 = v1;
  v4 = v1 == 0.0;
  v5 = *(this + 8);
  if (v1 != v3)
  {
    v4 = 0;
  }

  if (v5)
  {
    v6 = !v4;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = 0;
    goto LABEL_12;
  }

  if (v5 == 1)
  {
LABEL_11:
    v7 = 1;
    goto LABEL_12;
  }

  if (v1 != v3)
  {
    if (v5 != 2)
    {
      goto LABEL_21;
    }

LABEL_16:
    v7 = 2;
    goto LABEL_12;
  }

  if (v1 == 1.0)
  {
    goto LABEL_11;
  }

  if (v1 == 2.0 || v5 == 2)
  {
    goto LABEL_16;
  }

LABEL_21:
  RangedValue = morphun::dialog::GrammaticalCountConcept::getRangedValue(this);
  if (!RangedValue)
  {
    this = v2;
    if (v5 == 4)
    {
      v7 = 4;
    }

    else if (v5 == 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 5;
    }

LABEL_12:

    return morphun::dialog::GrammaticalCountConcept::chooseDefault(this, v7);
  }

  v11 = *(*RangedValue + 24);

  return v11();
}

uint64_t morphun::dialog::GrammaticalCountConcept::chooseDefault(morphun::dialog::GrammaticalCountConcept *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = (*(this + 2) - v2) >> 3;
  if (v3 <= a2)
  {
    goto LABEL_11;
  }

  RangedValue = *(v2 + 8 * a2);
  if (!RangedValue)
  {
    RangedValue = morphun::dialog::GrammaticalCountConcept::getRangedValue(this);
    if (!RangedValue)
    {
      v6 = *(this + 8);
      if (v3 > v6)
      {
        RangedValue = *(v2 + 8 * v6);
        if (RangedValue)
        {
          goto LABEL_8;
        }

        if (v3 > 5)
        {
          RangedValue = *(v2 + 40);
          if (RangedValue)
          {
            goto LABEL_8;
          }

LABEL_12:
          exception = __cxa_allocate_exception(0x38uLL);
          morphun::exception::NullPointerException::NullPointerException(exception);
        }
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }
  }

LABEL_8:
  v7 = *(*RangedValue + 24);

  return v7();
}

uint64_t morphun::dialog::GrammaticalCountConcept::getRangedValue(morphun::dialog::GrammaticalCountConcept *this)
{
  if (!*(this + 8))
  {
    return 0;
  }

  v1 = *(this + 6);
  if (v1 == (this + 56))
  {
    return 0;
  }

  v2 = fabs(*(this + 5));
  while (v2 > *(v1 + 4))
  {
    v3 = *(v1 + 1);
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
      do
      {
        v4 = *(v1 + 2);
        v5 = *v4 == v1;
        v1 = v4;
      }

      while (!v5);
    }

    v1 = v4;
    if (v4 == (this + 56))
    {
      return 0;
    }
  }

  return *(v1 + 5);
}

void morphun::dialog::GrammaticalCountConcept::~GrammaticalCountConcept(morphun::dialog::GrammaticalCountConcept *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dialog::GrammaticalCountConcept::~GrammaticalCountConcept(morphun::dialog::GrammaticalCountConcept *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 56)) = a2[1];
  *(this + *(*this - 40)) = a2[2];
  v5 = (this + 72);
  std::vector<std::shared_ptr<morphun::dialog::DucConcept>>::__destroy_vector::operator()[abi:se200100](&v5);
  std::__tree<std::u16string_view>::destroy(*(this + 7));
  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

_BYTE *morphun::dialog::GrammaticalCountConcept::toString@<X0>(morphun::dialog::GrammaticalCountConcept *this@<X0>, _BYTE *a2@<X8>)
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

    return std::basic_string<char16_t>::basic_string[abi:se200100]<0>(a2, L"(null)");
  }
}

void morphun::dialog::GrammaticalCountConcept::GrammaticalCountConcept(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 56)) = a2[1];
  *(a1 + *(*a1 - 40)) = a2[2];
  std::vector<morphun::dialog::DucConcept const*>::vector[abi:se200100](a1 + 1);
}

void std::vector<morphun::dialog::DucConcept const*>::vector[abi:se200100](void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1BE5B390C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dialog::GrammaticalCountConcept::setChoosableResult(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (a2 >= ((*(result + 16) - v3) >> 3))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 8 * a2) = a3;
  }

  return result;
}

morphun::dialog::GrammaticalCountConcept *morphun::dialog::GrammaticalCountConcept::GrammaticalCountConcept(morphun::dialog::GrammaticalCountConcept *this, const morphun::dialog::GrammaticalCountConcept *a2, uint64_t a3)
{
  v5 = *a2;
  *this = *a2;
  *(this + *(v5 - 56)) = *(a2 + 1);
  *(this + *(*this - 40)) = *(a2 + 2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<morphun::dialog::DucConcept const*>::__init_with_size[abi:se200100]<morphun::dialog::DucConcept const**,morphun::dialog::DucConcept const**>(this + 8, *(a3 + 8), *(a3 + 16), (*(a3 + 16) - *(a3 + 8)) >> 3);
  *(this + 8) = *(a3 + 32);
  *(this + 5) = *(a3 + 40);
  std::map<double,morphun::dialog::DucConcept const*>::map[abi:se200100](this + 6, (a3 + 48));
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  std::vector<std::shared_ptr<morphun::dialog::DucConcept>>::__init_with_size[abi:se200100]<std::shared_ptr<morphun::dialog::DucConcept>*,std::shared_ptr<morphun::dialog::DucConcept>*>(this + 72, *(a3 + 72), *(a3 + 80), (*(a3 + 80) - *(a3 + 72)) >> 4);
  return this;
}

void sub_1BE5B3B50(_Unwind_Exception *a1)
{
  std::__tree<std::u16string_view>::destroy(*(v1 + 56));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void virtual thunk tomorphun::dialog::GrammaticalCountConcept::~GrammaticalCountConcept(morphun::dialog::GrammaticalCountConcept *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void virtual thunk tomorphun::dialog::GrammaticalCountConcept::~GrammaticalCountConcept(void *a1)
{
}

{

  JUMPOUT(0x1BFB49160);
}

morphun::dialog::DucConcept *morphun::dialog::GrammaticalCountConcept::adoptOwnership(morphun::dialog::GrammaticalCountConcept *this, morphun::dialog::DucConcept *a2)
{
  if (!a2)
  {
    return a2;
  }

  v2 = *(this + 9);
  v3 = *(this + 10);
  if (v2 == v3)
  {
LABEL_6:
    v5 = *(this + 11);
    if (v3 >= v5)
    {
      v6 = v3 - v2;
      v7 = (v6 >> 4) + 1;
      if (v7 >> 60)
      {
        goto LABEL_19;
      }

      v8 = v5 - v2;
      v9 = v8 >> 3;
      if (v8 >> 3 <= v7)
      {
        v9 = (v6 >> 4) + 1;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<std::shared_ptr<morphun::dialog::DucConcept>>>(v10);
      }
    }

    else if (v3)
    {
      std::shared_ptr<morphun::dialog::DucConcept>::shared_ptr[abi:se200100]<morphun::dialog::DucConcept,0>(*(this + 10), a2);
    }

    __break(1u);
LABEL_19:
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v4 = *(this + 9);
  while (*v4 != a2)
  {
    v4 += 2;
    if (v4 == v3)
    {
      goto LABEL_6;
    }
  }

  return a2;
}

void sub_1BE5B3E58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<std::shared_ptr<morphun::dialog::DucConcept>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:se200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<morphun::dialog::DucConcept *,std::shared_ptr<morphun::dialog::DucConcept>::__shared_ptr_default_delete<morphun::dialog::DucConcept,morphun::dialog::DucConcept>,std::allocator<morphun::dialog::DucConcept>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:se200100](*(a2 + 8), 0x80000001BE697A55))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<morphun::dialog::DucConcept *,std::shared_ptr<morphun::dialog::DucConcept>::__shared_ptr_default_delete<morphun::dialog::DucConcept,morphun::dialog::DucConcept>,std::allocator<morphun::dialog::DucConcept>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<morphun::dialog::DucConcept *,std::shared_ptr<morphun::dialog::DucConcept>::__shared_ptr_default_delete<morphun::dialog::DucConcept,morphun::dialog::DucConcept>,std::allocator<morphun::dialog::DucConcept>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFB49160);
}

void *morphun::analysis::stemmer::FiLemmaFilter::reset(morphun::analysis::stemmer::FiLemmaFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  *(this + 21) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::GrammemeAttribute>(this);
  *(this + 22) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::LemmaMappingAttribute>(this);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::SkippedOffsetsAttribute>(this);
  *(this + 20) = result;
  return result;
}

void morphun::analysis::stemmer::FiLemmaFilter::end(morphun::analysis::stemmer::FiLemmaFilter *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    (*(*v2 + 56))(v2, *(this + 54), this + 224);
    *(this + 29) = *(this + 28);
    std::vector<int>::shrink_to_fit((this + 224));
    *(this + 33) = *(this + 32);

    std::vector<int>::shrink_to_fit((this + 256));
  }
}

void std::vector<int>::shrink_to_fit(std::vector<int> *this)
{
  end = this->__end_;
  begin = this->__begin_;
  v3 = this->__end_cap_.__value_ - this->__begin_;
  v4 = end - this->__begin_;
  if (v3 > v4)
  {
    if (end != begin)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v4 >> 2);
    }

    v6 = 0;
    if (v3 >> 2)
    {
      v7 = (4 * (v4 >> 2));
      v8 = (this->__end_ - begin);
      v9 = (v7 - v8);
      memcpy((v7 - v8), begin, v8);
      v6 = this->__begin_;
      this->__begin_ = v9;
      this->__end_ = v7;
      this->__end_cap_.__value_ = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *morphun::analysis::stemmer::FiLemmaFilter::incrementToken(morphun::analysis::stemmer::FiLemmaFilter *this)
{
  memset(&__str, 0, sizeof(__str));
  v2 = (this + 184);
  if ((*(this + 207) & 0x8000000000000000) != 0)
  {
    if (*(this + 24))
    {
LABEL_3:
      std::basic_string<char16_t>::operator=(&__str, v2);
      v3 = *(this + 52);
      v4 = *(this + 53);
      v5 = *(this + 20);
      if (v5)
      {
        (*(*v5 + 56))(v5, *(this + 54), this + 224);
      }

      goto LABEL_5;
    }
  }

  else if (*(this + 207))
  {
    goto LABEL_3;
  }

  v20 = npc<morphun::analysis::TokenStream>(*(this + 15));
  if (!(*(*v20 + 24))(v20))
  {
    v29 = 0;
    goto LABEL_81;
  }

  result = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 18));
  v21 = result + *(*result - 96);
  v22 = v21[23];
  if ((v22 & 0x8000000000000000) != 0)
  {
    v22 = *(v21 + 1);
    if (*v21)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22 == 0;
    }

    if (!v23)
    {
      goto LABEL_86;
    }

    v21 = *v21;
  }

  std::basic_string<char16_t>::__assign_external(&__str, v21, v22);
  v24 = npc<morphun::analysis::tokenattributes::OffsetAttribute>(*(this + 19));
  v3 = (*(*v24 + 56))(v24);
  v25 = npc<morphun::analysis::tokenattributes::OffsetAttribute>(*(this + 19));
  v4 = (*(*v25 + 72))(v25);
  v26 = npc<morphun::analysis::tokenattributes::OffsetAttribute>(*(this + 19));
  *(this + 52) = (*(*v26 + 56))(v26);
  v27 = *(this + 20);
  if (v27)
  {
    *(this + 54) = (*(*v27 + 64))(v27);
    v28 = (*(**(this + 20) + 72))(*(this + 20));
    if ((this + 224) != v28)
    {
      std::vector<int>::__assign_with_size[abi:se200100]<int *,int *>(this + 28, *v28, v28[1], (v28[1] - *v28) >> 2);
    }
  }

LABEL_5:
  v6 = npc<morphun::analysis::TokenStream>(*(this + 15));
  if ((*(*v6 + 24))(v6))
  {
    result = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 18));
    v9 = result + *(*result - 96);
    v10 = v9[23];
    if ((v10 & 0x8000000000000000) != 0)
    {
      v10 = *(v9 + 1);
      if (*v9)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      if (!v11)
      {
LABEL_86:
        __break(1u);
        return result;
      }

      v9 = *v9;
    }

    std::basic_string<char16_t>::__assign_external(v2, v9, v10);
    v12 = npc<morphun::analysis::tokenattributes::OffsetAttribute>(*(this + 19));
    *(this + 53) = (*(*v12 + 72))(v12);
    v13 = npc<morphun::analysis::tokenattributes::OffsetAttribute>(*(this + 19));
    *(this + 52) = (*(*v13 + 56))(v13);
    v14 = npc<morphun::analysis::tokenattributes::OffsetAttribute>(*(this + 19));
    v15 = (*(*v14 + 56))(v14);
    if (v4 == v15)
    {
      v16 = morphun::tokenizer::locale::fi::FiSuffixSplit::SUFFIX_SPLIT(v15);
      v17 = *(this + 207);
      if ((v17 & 0x8000000000000000) != 0)
      {
        v18 = *(this + 23);
        v19 = *(this + 24);
      }

      else
      {
        v18 = v2;
        v19 = *(this + 207);
      }

      if (v16 + 8 != std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(v16, v18, v19))
      {
        v30 = *(this + 23);
        if ((v17 & 0x80000000) == 0)
        {
          v31 = v2;
        }

        else
        {
          v31 = *(this + 23);
        }

        if ((v17 & 0x80000000) == 0)
        {
          v32 = v17;
        }

        else
        {
          v32 = *(this + 24);
        }

        std::basic_string<char16_t>::append(&__str, v31, v32);
      }
    }
  }

  else if (*(this + 207) < 0)
  {
    **(this + 23) = 0;
    *(this + 24) = 0;
  }

  else
  {
    *(this + 92) = 0;
    *(this + 207) = 0;
  }

  v33 = *(this + 20);
  if (v33)
  {
    *(this + 62) = (*(*v33 + 64))(v33);
    v34 = (*(**(this + 20) + 72))(*(this + 20));
    if ((this + 256) != v34)
    {
      std::vector<int>::__assign_with_size[abi:se200100]<int *,int *>(this + 32, *v34, v34[1], (v34[1] - *v34) >> 2);
    }

    (*(**(this + 20) + 56))(*(this + 20), *(this + 54), this + 224);
    *(this + 54) = *(this + 62);
    std::vector<int>::__assign_with_size[abi:se200100]<int *,int *>(this + 28, *(this + 32), *(this + 33), (*(this + 33) - *(this + 32)) >> 2);
  }

  v35 = *(this + 16);
  if (!v35)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  morphun::analysis::fi::FinnishMorphology::getInflectionAnalysis(&v56, v35, &__str, 0, v7);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v54, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
  }

  else
  {
    v54 = v57;
  }

  morphun::analysis::fi::FinnishMorphology_InflectionAnalysis::~FinnishMorphology_InflectionAnalysis(&v56);
  size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
  if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v54.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v37 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 18));
    v38 = (v37 + *(*v37 - 96));
    p_str = &v54;
  }

  else
  {
    p_str = &__str;
    v38 = &v54;
  }

  std::basic_string<char16_t>::operator=(v38, p_str);
  if (*(this + 21))
  {
    v56 = 0;
    v40 = (v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v54 : v54.__r_.__value_.__r.__words[0];
    v41 = (v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v54.__r_.__value_.__r.__words[2]) : v54.__r_.__value_.__l.__size_;
    if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 17), &v56, v40, v41))
    {
      v42 = *(this + 21);
      if (!v42)
      {
        v49 = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(v49);
      }

      (*(*v42 + 64))(v42, v56);
    }
  }

  if (*(this + 22))
  {
    v53 = 0;
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v54;
    }

    else
    {
      v43 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v54.__r_.__value_.__l.__size_;
    }

    morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 17), &v53, v43, v44);
    v52 = 0;
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &v54;
    }

    else
    {
      v45 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v46 = v54.__r_.__value_.__l.__size_;
    }

    morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 17), &v52, v45, v46);
    v50 = 0;
    v51 = 0uLL;
    v58 = &v50;
    std::__allocate_at_least[abi:se200100]<std::allocator<morphun::analysis::tokenattributes::LemmaMapping>>(1uLL);
  }

  v47 = npc<morphun::analysis::tokenattributes::OffsetAttribute>(*(this + 19));
  (*(*v47 + 64))(v47, v3, v4);
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  v29 = 1;
LABEL_81:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v29;
}

void sub_1BE5B496C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  __cxa_free_exception(v30);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t npc<morphun::analysis::TokenStream>(uint64_t result)
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

uint64_t npc<morphun::analysis::tokenattributes::CharTermAttribute>(uint64_t result)
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

uint64_t npc<morphun::analysis::tokenattributes::OffsetAttribute>(uint64_t result)
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

uint64_t std::__uninitialized_allocator_relocate[abi:se200100]<std::allocator<morphun::analysis::tokenattributes::LemmaMapping>,morphun::analysis::tokenattributes::LemmaMapping*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = 0;
    do
    {
      if (!(a3 + v6))
      {
        goto LABEL_12;
      }

      v7 = a3 + v6;
      *v7 = &off_1F3CD2DC8;
      v8 = v5 + v6;
      *(v7 + 8) = *(v5 + v6 + 8);
      if (*(v5 + v6 + 47) < 0)
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

    while (v5 + v6 != a2);
    v10 = v5;
    while (v5)
    {
      result = (*(*v5 + 8))(v5);
      v10 += 48;
      v5 += 48;
      if (v5 == a2)
      {
        return result;
      }
    }

LABEL_12:
    __break(1u);
    JUMPOUT(0x1BE5B4C40);
  }

  return result;
}

uint64_t std::__split_buffer<morphun::analysis::tokenattributes::LemmaMapping>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 48);
    *(a1 + 16) = i - 48;
    (*(v4 + 8))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<int>::__vallocate[abi:se200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<int>>(a2);
  }

  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
}

void morphun::analysis::stemmer::FiLemmaFilter::~FiLemmaFilter(morphun::analysis::stemmer::FiLemmaFilter *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CD9F40);

  JUMPOUT(0x1BFB49160);
}

{
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 28);
  if (v3)
  {
    *(this + 29) = v3;
    operator delete(v3);
  }

  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CD9F40);
}

void morphun::dialog::SemanticUtils::to_constraintMap(morphun::dialog::SemanticUtils *this, const morphun::dialog::SemanticFeatureModel *a2, CFDictionaryRef theDict)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = this + 8;
  if (theDict)
  {
    context[0] = a2;
    context[1] = this;
    *__p = 0u;
    v6 = 0u;
    CFDictionaryApplyFunction(theDict, convertSemanticFeatureAndString, context);
    if (*(&v6 + 1))
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::Throwable::Throwable(exception, __p);
      *exception = &unk_1F3CD0B50;
    }

    if (SBYTE7(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1BE5B4F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_free_exception(v18);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(*a10);
  _Unwind_Resume(a1);
}

void convertSemanticFeatureAndString(__CFString *a1, const __CFString *a2, uint64_t *a3)
{
  morphun::util::CFUtils::to_u16string(&v10, a1);
  npc<morphun::dialog::ConstraintMap>(a3);
  v5 = *a3;
  v6 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(*a3 + 8, &v10);
  if (v5 + 16 == v6 || (v7 = *(v6 + 56)) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v11, L"Input argument <", &v10);
    std::basic_string<char16_t>::append(&v11, ">", 9uLL);
    __p = v11;
    memset(&v11, 0, sizeof(v11));
    morphun::exception::NullPointerException::NullPointerException(exception, &__p);
  }

  v8 = a3[1];
  morphun::util::CFUtils::to_u16string(&__p, a2);
  if (!*std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__find_equal<morphun::dialog::SemanticFeature>(v8, &v11, v7))
  {
    operator new();
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5B50E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  operator delete(v27);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a2 == 1)
  {
    v30 = __cxa_begin_catch(a1);
    v31 = (*(*v30 + 24))(v30);
    std::basic_string<char16_t>::operator=((v26 + 16), v31);
    *(v26 + 40) = v26 + 16;
    __cxa_end_catch();
    JUMPOUT(0x1BE5B5048);
  }

  _Unwind_Resume(a1);
}

uint64_t npc<morphun::dialog::ConstraintMap>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::analysis::fi::FinnishMorphology::FinnishMorphology(morphun::analysis::fi::FinnishMorphology *this)
{
  v2 = morphun::util::LocaleUtils::FINNISH(this);
  Inflector = morphun::dictionary::Inflector::getInflector(v2, v3);
  *this = Inflector;
  v5 = morphun::util::LocaleUtils::FINNISH(Inflector);
  Dictionary = morphun::dictionary::DictionaryMetaData::createDictionary(v5, v6);
  if (Dictionary)
  {
    *(this + 1) = Dictionary;
    *(this + 2) = 0;
    operator new();
  }

  exception = __cxa_allocate_exception(0x38uLL);
  morphun::exception::NullPointerException::NullPointerException(exception);
}

void sub_1BE5B596C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, void *__p)
{
  *(v17 + 8) = v16;
  if (__p)
  {
    operator delete(__p);
  }

  a15 = &a12;
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&a15);
  _Unwind_Resume(a1);
}

void sub_1BE5B5A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(va);
  JUMPOUT(0x1BE5B5A10);
}

uint64_t std::vector<double>::__init_with_size[abi:se200100]<double const*,double const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:se200100](result, a4);
  }

  return result;
}

void sub_1BE5B5A94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<morphun::util::lemmatization::FeedForwardInflectionAnalyzer_Layer>::__emplace_back_slow_path<std::vector<std::vector<double>> &,std::vector<double>>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 <= 0x555555555555555)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v2)
    {
      v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
    {
      v3 = 0x555555555555555;
    }

    else
    {
      v3 = v2;
    }

    v5 = a1;
    if (v3)
    {
      if (v3 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:se200100]();
    }

    v4 = 48 * v1;
    __break(1u);
  }

  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
}

void sub_1BE5B5C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<morphun::util::lemmatization::FeedForwardInflectionAnalyzer_Layer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:se200100]<std::allocator<std::vector<double>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

uint64_t std::__split_buffer<morphun::util::lemmatization::FeedForwardInflectionAnalyzer_Layer>::~__split_buffer(uint64_t a1)
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
    std::allocator_traits<std::allocator<morphun::util::lemmatization::FeedForwardInflectionAnalyzer_Layer>>::destroy[abi:se200100]<morphun::util::lemmatization::FeedForwardInflectionAnalyzer_Layer,void,0>(v3 - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<morphun::util::lemmatization::FeedForwardInflectionAnalyzer_Layer>>::destroy[abi:se200100]<morphun::util::lemmatization::FeedForwardInflectionAnalyzer_Layer,void,0>(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      *(a1 + 32) = v2;
      operator delete(v2);
    }

    v3 = a1;
    std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v3);
  }

  else
  {
    __break(1u);
  }
}

void std::vector<double>::__vallocate[abi:se200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
}

uint64_t morphun::analysis::fi::FinnishMorphology::UNLEMMATIZABLE(morphun::analysis::fi::FinnishMorphology *this)
{
  {
    if (v2)
    {
      morphun::analysis::fi::FinnishMorphology::createUnlemmatizableList(v2);
    }
  }

  result = morphun::analysis::fi::FinnishMorphology::UNLEMMATIZABLE(void)::UNLEMMATIZABLE_;
  if (!morphun::analysis::fi::FinnishMorphology::UNLEMMATIZABLE(void)::UNLEMMATIZABLE_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void sub_1BE5B61CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v15)
  {
LABEL_6:
    __cxa_end_catch();
    JUMPOUT(0x1BE5B6200);
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t morphun::analysis::fi::FinnishMorphology::getInstance(morphun::analysis::fi::FinnishMorphology *this)
{
  {
    operator new();
  }

  return morphun::analysis::fi::FinnishMorphology::getInstance(void)::INSTANCE_;
}

void sub_1BE5B6294(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x60C40AA6EF139);
  _Unwind_Resume(a1);
}

void morphun::analysis::fi::FinnishMorphology::getLemma(uint64_t a1, uint64_t *a2, uint64_t a3, const std::string::value_type *a4, uint64_t *a5, uint64_t a6)
{
  v38 = *MEMORY[0x1E69E9840];
  memset(v36, 0, 15);
  if (a4 == a5)
  {
    v14 = 0;
    LOBYTE(v15) = 0;
LABEL_41:
    v27 = v36[0];
    *a1 = v14;
    *(a1 + 8) = v27;
    *(a1 + 15) = *(v36 + 7);
    *(a1 + 23) = v15;
    goto LABEL_42;
  }

  v9 = *a2;
  v10 = a4[23];
  if (v10 < 0)
  {
    v11 = a4;
    a4 = *a4;
    v10 = *(v11 + 1);
  }

  KeyId = morphun::dictionary::metadata::MarisaTrie<int>::getKeyId((v9 + 256), a4, v10);
  morphun::dictionary::Inflector_MMappedDictionary::getInflectionPattern(v33, v9 + 8, KeyId);
  v35 = 1;
  if (!v34)
  {
    if (*(a3 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a1, *a3, *(a3 + 8));
    }

    else
    {
      *a1 = *a3;
      *(a1 + 16) = *(a3 + 16);
    }

    goto LABEL_42;
  }

  {
    operator new();
  }

  if (!morphun::analysis::fi::FinnishMorphology::LEMMA_PROPERTIES(void)::LEMMA_PROPERTIES_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  morphun::dictionary::Inflector_InflectionPattern::constrain(v32, v33, morphun::analysis::fi::FinnishMorphology::LEMMA_PROPERTIES(void)::LEMMA_PROPERTIES_, 1);
  v13 = v32[0];
  if (v32[0] == v32[1])
  {
    v14 = 0;
    LOBYTE(v15) = 0;
LABEL_39:
    if (v13)
    {
      operator delete(v13);
    }

    goto LABEL_41;
  }

  morphun::dictionary::Inflector_Inflection::inflect(&__dst, v32[0], a3);
  v36[0] = __dst.__r_.__value_.__l.__size_;
  v14 = __dst.__r_.__value_.__r.__words[0];
  *(v36 + 7) = *(&__dst.__r_.__value_.__r.__words[1] + 7);
  v15 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
  v16 = *(a6 + 23);
  if (v16 >= 0)
  {
    v17 = a6;
  }

  else
  {
    v17 = *a6;
  }

  if (v16 >= 0)
  {
    v18 = *(a6 + 23);
  }

  else
  {
    v18 = *(a6 + 8);
  }

  v19 = *(a3 + 23);
  if ((v19 & 0x80u) == 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a3 + 8);
  }

  __dst.__r_.__value_.__r.__words[0] = v20;
  __dst.__r_.__value_.__l.__size_ = v19;
  if (!std::u16string_view::ends_with[abi:se200100](&__dst, v17, v18))
  {
    goto LABEL_39;
  }

  v22 = *(a3 + 23);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a3 + 8);
  }

  v23 = *(a6 + 23);
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a6 + 8);
  }

  std::basic_string<char16_t>::basic_string(&__dst, a3, 0, v22 - v23, v21);
  v24 = npc<morphun::dictionary::Inflector_InflectionPattern const>(*v13);
  morphun::dictionary::metadata::StringContainer::getString((*(v24 + 32) + 144), v13[2], __p);
  if ((v31 & 0x80u) == 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  if ((v31 & 0x80u) == 0)
  {
    v26 = v31;
  }

  else
  {
    v26 = __p[1];
  }

  std::basic_string<char16_t>::append(&__dst, v25, v26);
  *a1 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  if (v31 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  operator delete(v13);
  if (v15 < 0)
  {
    operator delete(v14);
  }

LABEL_42:
  v28 = *MEMORY[0x1E69E9840];
}

void sub_1BE5B6630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  v35 = (v33 + 47);
  v36 = -48;
  v37 = (v33 + 47);
  while (1)
  {
    v38 = *v37;
    v37 -= 24;
    if (v38 < 0)
    {
      operator delete(*(v35 - 23));
    }

    v35 = v37;
    v36 += 24;
    if (!v36)
    {
      MEMORY[0x1BFB49160](v32, 0x20C40960023A9);
      _Unwind_Resume(a1);
    }
  }
}

void morphun::analysis::fi::FinnishMorphology::getInflectionAnalysis(morphun::lang::StringFilterUtil *CombinedBinaryType, uint64_t a2, std::basic_string<char16_t> *__str, char a4, std::allocator<char16_t> *a5)
{
  v6 = CombinedBinaryType;
  v78[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      LODWORD(size) = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size > 3)
    {
      goto LABEL_6;
    }

    goto LABEL_136;
  }

  v39 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v40 = v39 < 0;
  if (v39 >= 0)
  {
    v41 = __str;
  }

  else
  {
    v41 = __str->__r_.__value_.__r.__words[0];
  }

  if (v40)
  {
    v42 = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v42 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  if (!v42)
  {
    goto LABEL_114;
  }

  v43 = 2 * v42;
  v44 = v41;
  v45 = (v41 + 2 * v42);
  while (v44->__r_.__value_.__s.__data_[0] != 58)
  {
    v44 = (v44 + 2);
    v43 -= 2;
    if (!v43)
    {
      goto LABEL_114;
    }
  }

  v46 = v44 == v45 ? 0 : v44;
  if (v44 == v45)
  {
    goto LABEL_114;
  }

  v47 = v46 - v41;
  if (v47 == -2)
  {
    goto LABEL_114;
  }

  v48 = v47 >> 1;
  std::basic_string<char16_t>::basic_string(&v74, __str, (v47 >> 1) + 1, 0xFFFFFFFFFFFFFFFFLL, a5);
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &v74;
  }

  else
  {
    v49 = v74.__r_.__value_.__r.__words[0];
  }

  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = v74.__r_.__value_.__l.__size_;
  }

  morphun::dictionary::Inflector::getInflectionPatternsBySuffix(&v77, *a2, v49, v50);
  v51 = *&v77.__r_.__value_.__l.__data_;
  if (v77.__r_.__value_.__r.__words[0] == v77.__r_.__value_.__l.__size_)
  {
LABEL_110:
    if (v51)
    {
      operator delete(v51);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

LABEL_114:
    memset(&__p, 0, sizeof(__p));
    goto LABEL_115;
  }

  v52 = v77.__r_.__value_.__r.__words[0];
  while (*(v52 + 18) < 1)
  {
LABEL_109:
    v52 += 40;
    if (v52 == *(&v51 + 1))
    {
      goto LABEL_110;
    }
  }

  v53 = 0;
  while (1)
  {
    morphun::dictionary::Inflector_InflectionPattern::getInflectionAtPosition(v69, v52, v53);
    v54 = npc<morphun::dictionary::Inflector_InflectionPattern const>(v69[0]);
    morphun::dictionary::metadata::StringContainer::getString((*(v54 + 32) + 144), v69[1], &v71);
    if ((v72.__r_.__value_.__r.__words[1] & 0x8000000000000000) == 0)
    {
      v56 = SHIBYTE(v72.__r_.__value_.__r.__words[1]);
    }

    else
    {
      v56 = v72.__r_.__value_.__r.__words[0];
    }

    if ((SHIBYTE(v72.__r_.__value_.__r.__words[1]) & 0x8000000000000000) != 0)
    {
      operator delete(v71);
    }

    if (!v56)
    {
      break;
    }

    if (++v53 >= *(v52 + 18))
    {
      goto LABEL_109;
    }
  }

  std::basic_string<char16_t>::basic_string(&__p, __str, 0, v48, v55);
  if (v51)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  v65 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v65 = __p.__r_.__value_.__l.__size_;
  }

  if (v65)
  {
    morphun::analysis::fi::FinnishMorphology_InflectionAnalysis::FinnishMorphology_InflectionAnalysis(v6, &__p);
    v60 = 0;
    goto LABEL_124;
  }

LABEL_115:
  v57 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v57 >= 0)
  {
    v58 = __str;
  }

  else
  {
    v58 = __str->__r_.__value_.__r.__words[0];
  }

  if (v57 >= 0)
  {
    v59 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = __str->__r_.__value_.__l.__size_;
  }

  morphun::dictionary::DictionaryMetaData::getPropertyValues(*(a2 + 8), v58, v59, "l", 0xAuLL, &v71);
  v60 = v71 == v72.__r_.__value_.__l.__data_;
  if (v71 != v72.__r_.__value_.__l.__data_)
  {
    morphun::analysis::fi::FinnishMorphology_InflectionAnalysis::FinnishMorphology_InflectionAnalysis(v6, v71);
  }

  v69[0] = &v71;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](v69);
LABEL_124:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v60)
    {
      goto LABEL_137;
    }

LABEL_128:
    v61 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v61 >= 0)
    {
      size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    if (size >= 4)
    {
      v62 = *(a2 + 8);
      v63 = v61 >= 0 ? __str : __str->__r_.__value_.__r.__words[0];
      v71 = 0;
      CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v62, &v71, v63, size);
      if (!CombinedBinaryType)
      {
LABEL_6:
        v8 = morphun::lang::StringFilterUtil::LATIN_SCRIPT(CombinedBinaryType);
        v9 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
        if (v9 >= 0)
        {
          v10 = __str;
        }

        else
        {
          v10 = __str->__r_.__value_.__r.__words[0];
        }

        if (v9 >= 0)
        {
          v11 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v11 = __str->__r_.__value_.__l.__size_;
        }

        if (morphun::util::UnicodeSetUtils::containsSome(v8, v10, v11))
        {
          v12 = *(a2 + 16);
          if (!v12)
          {
            exception = __cxa_allocate_exception(0x38uLL);
            morphun::exception::NullPointerException::NullPointerException(exception);
          }

          InflectionLikelihoods = morphun::util::lemmatization::FeedForwardInflectionAnalyzer::getInflectionLikelihoods(v12, __str);
          v67 = v6;
          memset(v69, 0, 24);
          memset(&v74, 0, sizeof(v74));
          morphun::util::lemmatization::InflectionIdentifier::InflectionIdentifier(&v71, v69, &v74);
          if ((size - 3) >= 0xA)
          {
            v15 = 10;
          }

          else
          {
            v15 = (size - 3);
          }

          do
          {
            std::basic_string<char16_t>::basic_string(&v74, __str, (size & 0x7FFFFFFF) - v15, size & 0x7FFFFFFF, v14);
            if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v16 = &v74;
            }

            else
            {
              v16 = v74.__r_.__value_.__r.__words[0];
            }

            if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v17 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v17 = v74.__r_.__value_.__l.__size_;
            }

            InflectionPatternsBySuffix = morphun::dictionary::Inflector::getInflectionPatternsBySuffix(&v77, *a2, v16, v17);
            v19 = *&v77.__r_.__value_.__l.__data_;
            v20 = v77.__r_.__value_.__r.__words[0];
            if (v77.__r_.__value_.__r.__words[0] != v77.__r_.__value_.__l.__size_)
            {
              do
              {
                InflectionPatternsBySuffix = morphun::dictionary::metadata::MarisaTrie<int>::getKey(&__p, (*(v20 + 32) + 248), *v20);
                if (*(*(*(v20 + 32) + 240) + 4 * *(v20 + 4)) >= 5)
                {
                  InflectionPatternsBySuffix = std::basic_string<char16_t>::ends_with[abi:se200100](&__p, L"=-");
                  if ((InflectionPatternsBySuffix & 1) == 0)
                  {
                    v21 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
                    if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v21 = v73.__r_.__value_.__l.__size_;
                    }

                    if (!v21 || (Likelihood = morphun::util::lemmatization::FeedForwardInflectionAnalyzer_InflectionLikelihoods::getLikelihood(InflectionLikelihoods, &__p), Likelihood > morphun::util::lemmatization::FeedForwardInflectionAnalyzer_InflectionLikelihoods::getLikelihood(InflectionLikelihoods, &v73)))
                    {
                      morphun::util::lemmatization::InflectionIdentifier::InflectionIdentifier(v69, &v74, &__p);
                      std::basic_string<char16_t>::operator=(&v72, &v69[1]);
                      std::basic_string<char16_t>::operator=(&v73, &v70);
                      morphun::util::lemmatization::InflectionIdentifier::~InflectionIdentifier(v69);
                    }
                  }
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                v20 += 40;
              }

              while (v20 != *(&v19 + 1));
            }

            if (v19)
            {
              operator delete(v19);
            }

            v23 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
            if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v23 = v73.__r_.__value_.__l.__size_;
            }

            if (v23)
            {
              v24 = HIBYTE(InflectionLikelihoods[1].__r_.__value_.__r.__words[0]);
              v25 = v24;
              if ((v24 & 0x80u) != 0)
              {
                v24 = InflectionLikelihoods->__r_.__value_.__r.__words[2];
              }

              if (v23 == v24)
              {
                if (v25 >= 0)
                {
                  v26 = &InflectionLikelihoods->__r_.__value_.__s.__data_[4];
                }

                else
                {
                  v26 = InflectionLikelihoods->__r_.__value_.__l.__size_;
                }

                if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v27 = &v73;
                }

                else
                {
                  v27 = v73.__r_.__value_.__r.__words[0];
                }

                while (*v26 == v27->__r_.__value_.__s.__data_[0])
                {
                  v27 = (v27 + 2);
                  ++v26;
                  if (!--v23)
                  {
                    v28 = morphun::analysis::fi::FinnishMorphology::UNLEMMATIZABLE(InflectionPatternsBySuffix);
                    v29 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
                    if (v29 >= 0)
                    {
                      v30 = __str;
                    }

                    else
                    {
                      v30 = __str->__r_.__value_.__r.__words[0];
                    }

                    if (v29 >= 0)
                    {
                      v31 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v31 = __str->__r_.__value_.__l.__size_;
                    }

                    v32 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(v28, v30, v31);
                    InflectionPatternsBySuffix = morphun::analysis::fi::FinnishMorphology::UNLEMMATIZABLE(v32);
                    if ((InflectionPatternsBySuffix + 8) == v32)
                    {
                      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
                      {
                        std::basic_string<char16_t>::__init_copy_ctor_external(&__p, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
                      }

                      else
                      {
                        __p = v73;
                      }

                      memset(&v77, 0, sizeof(v77));
                      std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(&v77, &__p, &v76, 1uLL);
                    }

                    break;
                  }
                }
              }
            }

            if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v74.__r_.__value_.__l.__data_);
            }

            v40 = v15-- < 2;
          }

          while (!v40);
          v33 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
          if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v33 = v73.__r_.__value_.__l.__size_;
          }

          v6 = v67;
          if (v33)
          {
            v34 = morphun::analysis::fi::FinnishMorphology::UNLEMMATIZABLE(InflectionPatternsBySuffix);
            v35 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
            v36 = v35 >= 0 ? __str : __str->__r_.__value_.__r.__words[0];
            v37 = v35 >= 0 ? HIBYTE(__str->__r_.__value_.__r.__words[2]) : __str->__r_.__value_.__l.__size_;
            v38 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(v34, v36, v37);
            if ((morphun::analysis::fi::FinnishMorphology::UNLEMMATIZABLE(v38) + 8) == v38)
            {
              if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
              {
                std::basic_string<char16_t>::__init_copy_ctor_external(&v77, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
              }

              else
              {
                v77 = v73;
              }

              memset(&v74, 0, sizeof(v74));
              std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(&v74, &v77, v78, 1uLL);
            }
          }

          morphun::util::lemmatization::InflectionIdentifier::~InflectionIdentifier(&v71);
          (*(InflectionLikelihoods->__r_.__value_.__r.__words[0] + 16))(InflectionLikelihoods);
        }
      }
    }

LABEL_136:
    morphun::analysis::fi::FinnishMorphology_InflectionAnalysis::FinnishMorphology_InflectionAnalysis(v6, __str);
    goto LABEL_137;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v60)
  {
    goto LABEL_128;
  }

LABEL_137:
  v64 = *MEMORY[0x1E69E9840];
}

void sub_1BE5B6F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  morphun::util::lemmatization::InflectionIdentifier::~InflectionIdentifier(&a23);
  (*(*v42 + 16))(v42);
  _Unwind_Resume(a1);
}

void morphun::dialog::language::ItCommonConceptFactory_ItAndList::getBeforeLast(const morphun::dialog::SemanticFeatureConceptBase *a1@<X1>, const morphun::dialog::SpeakableString *a2@<X2>, const morphun::dialog::SemanticFeatureConceptBase *a3@<X3>, const morphun::dialog::SpeakableString *a4@<X4>, void *a5@<X8>)
{
  v7 = (*(*a4 + 32))(a4, a1, a2, a3);
  {
    operator new();
  }

  v8 = morphun::dialog::language::ItCommonConceptFactory_ItAndList::IMPORTANT_SET(void)::IMPORTANT_SET_;
  npc<icu4cxx::UnicodeSet const>(morphun::dialog::language::ItCommonConceptFactory_ItAndList::IMPORTANT_SET(void)::IMPORTANT_SET_);
  {
    operator new();
  }

  v9 = morphun::dialog::language::E_SOUND(void)::I_SOUND_;
  npc<icu4cxx::UnicodeSet const>(morphun::dialog::language::E_SOUND(void)::I_SOUND_);
  __p = 0uLL;
  v11 = 0;
  if (morphun::dictionary::PhraseProperties::isStartsWithUnicodeSets(v7, v8, v9, &__p))
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, word_1BE8037E6);
  }

  else
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, L" e ");
  }

  morphun::dialog::SpeakableString::SpeakableString(a5, &__p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_1BE5B72DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1BFB49160](v15, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t npc<icu4cxx::UnicodeSet const>(uint64_t result)
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

void morphun::dialog::language::ItCommonConceptFactory_ItAndList::~ItCommonConceptFactory_ItAndList(morphun::dialog::language::ItCommonConceptFactory_ItAndList *this)
{
  morphun::dialog::SemanticConceptList::~SemanticConceptList(this, off_1F3CDBEA0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::SemanticConceptList::~SemanticConceptList(this, off_1F3CDBEA0);
}

void morphun::dialog::language::KkCommonConceptFactory::~KkCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CEE5F8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CEE5F8);
}

morphun::util::DelimitedStringIterator *morphun::util::DelimitedStringIterator::DelimitedStringIterator(morphun::util::DelimitedStringIterator *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 12) = a3;
  *(this + 13) = 0;
  if (a3 >= 1)
  {
    morphun::util::DelimitedStringIterator::getNext(this);
  }

  return this;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 12) = a3;
  *(this + 13) = 0;
  if (a3 >= 1)
  {
    morphun::util::DelimitedStringIterator::getNext(this);
  }

  return this;
}

double morphun::util::DelimitedStringIterator::DelimitedStringIterator(morphun::util::DelimitedStringIterator *this, const morphun::util::DelimitedStringIterator *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  result = *(a2 + 6);
  *(this + 6) = result;
  return result;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = *(a2 + 2);
  result = *(a2 + 6);
  *(this + 6) = result;
  return result;
}

uint64_t morphun::lang::features::LanguageGrammarFeatures_GrammarCategory::compareTo(uint64_t a1, uint64_t a2)
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

void morphun::lang::features::LanguageGrammarFeatures_GrammarCategory::~LanguageGrammarFeatures_GrammarCategory(morphun::lang::features::LanguageGrammarFeatures_GrammarCategory *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::lang::features::LanguageGrammarFeatures_GrammarCategory::~LanguageGrammarFeatures_GrammarCategory(morphun::lang::features::LanguageGrammarFeatures_GrammarCategory *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  std::__tree<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>>>::destroy(*(this + 11));
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(*(this + 8));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 5));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void std::__tree<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>>>::destroy(a1[1]);
    std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(a1[7]);

    operator delete(a1);
  }
}

uint64_t morphun::lang::features::LanguageGrammarFeatures_GrammarCategory::LanguageGrammarFeatures_GrammarCategory(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4, void *a5, void *a6)
{
  v10 = *a2;
  *a1 = *a2;
  *(a1 + *(v10 - 40)) = a2[1];
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v11;
  }

  std::set<std::basic_string<char16_t>>::set[abi:se200100]((a1 + 32), a4);
  std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>::multimap[abi:se200100]((a1 + 56), a5);
  std::map<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>::map[abi:se200100]((a1 + 80), a6);
  *(a1 + 104) = 1;
  return a1;
}

void sub_1BE5B7910(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(*(v1 + 64));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(v1 + 40));
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void *std::set<std::basic_string<char16_t>>::set[abi:se200100](void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  std::set<std::basic_string<char16_t>>::insert[abi:se200100]<std::__tree_const_iterator<std::basic_string<char16_t>,std::__tree_node<std::basic_string<char16_t>,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>::multimap[abi:se200100](void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (*a2 != a2 + 1)
  {
    std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__construct_node<std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>> const&>();
  }

  return result;
}

void *std::map<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>::map[abi:se200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>>>::__emplace_hint_unique_key_args<std::u16string_view,std::pair<std::u16string_view const,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>> const&>(a1, v3, v5[4], v5[5]);
      v6 = v5[1];
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
          v7 = v5[2];
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

void *std::__tree<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>>>::__emplace_hint_unique_key_args<std::u16string_view,std::pair<std::u16string_view const,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>> const&>(void *result, void *a2, unsigned __int16 *a3, unint64_t a4)
{
  v7 = result;
  v8 = result + 1;
  if (result + 1 != a2)
  {
    v9 = a2[4];
    v10 = a2[5];
    result = std::less<std::u16string_view>::operator()[abi:se200100](a3, a4, v9, v10);
    if (!result)
    {
      result = std::less<std::u16string_view>::operator()[abi:se200100](v9, v10, a3, a4);
      if (!result)
      {
        return result;
      }

      v14 = a2[1];
      if (v14)
      {
        v15 = a2[1];
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        v19 = a2;
        do
        {
          v16 = v19[2];
          v18 = *v16 == v19;
          v19 = v16;
        }

        while (!v18);
      }

      if (v16 == v8 || (result = std::less<std::u16string_view>::operator()[abi:se200100](a3, a4, v16[4], v16[5]), result))
      {
        if (v14)
        {
          v20 = v16;
        }

        else
        {
          v20 = a2;
          v16 = a2 + 1;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  v11 = *a2;
  if (*v7 != a2)
  {
    if (v11)
    {
      v12 = *a2;
      do
      {
        v13 = v12;
        v12 = v12[1];
      }

      while (v12);
    }

    else
    {
      v17 = a2;
      do
      {
        v13 = v17[2];
        v18 = *v13 == v17;
        v17 = v13;
      }

      while (v18);
    }

    result = std::less<std::u16string_view>::operator()[abi:se200100](v13[4], v13[5], a3, a4);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_27:
    result = std::__tree<std::u16string_view>::__find_equal<std::u16string_view>(v7, &v20, a3, a4);
    v16 = result;
    goto LABEL_28;
  }

  v13 = a2;
LABEL_17:
  if (!v11)
  {
    v20 = a2;
    goto LABEL_30;
  }

  v20 = v13;
  v16 = v13 + 1;
LABEL_28:
  if (!*v16)
  {
LABEL_30:
    operator new();
  }

  return result;
}

void *std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__find_leaf(void *a1, uint64_t a2, void *a3, unsigned __int16 *a4)
{
  v6 = a2;
  v8 = a1 + 1;
  if (a1 + 1 != a2 && (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((a2 + 32), a4) & 0x80) != 0)
  {
    while (1)
    {
      v12 = *v8;
      v6 = v8;
      if (!*v8)
      {
        break;
      }

      while (1)
      {
        v8 = v12;
        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v12 + 32), a4) & 0x80) == 0)
        {
          break;
        }

        v12 = v8[1];
        if (!v12)
        {
          v6 = v8 + 1;
          goto LABEL_23;
        }
      }
    }

LABEL_23:
    *a3 = v8;
    return v6;
  }

  v9 = *v6;
  if (*a1 == v6)
  {
    v11 = v6;
LABEL_17:
    if (v9)
    {
      *a3 = v11;
      return v11 + 1;
    }

    else
    {
      *a3 = v6;
    }

    return v6;
  }

  if (v9)
  {
    v10 = *v6;
    do
    {
      v11 = v10;
      v10 = v10[1];
    }

    while (v10);
  }

  else
  {
    v13 = v6;
    do
    {
      v11 = v13[2];
      v14 = *v11 == v13;
      v13 = v11;
    }

    while (v14);
  }

  if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a4, v11 + 16) & 0x80) == 0)
  {
    goto LABEL_17;
  }

  return std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__find_leaf_high(a1, a3, a4);
}

void *std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__find_leaf_high(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::set<std::basic_string<char16_t>>::insert[abi:se200100]<std::__tree_const_iterator<std::basic_string<char16_t>,std::__tree_node<std::basic_string<char16_t>,void *> *,long>>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::basic_string<char16_t>>::__emplace_hint_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t> const&>(v5, (v5 + 8), v4 + 16);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t morphun::lang::features::LanguageGrammarFeatures_GrammarCategory::LanguageGrammarFeatures_GrammarCategory(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void *a5)
{
  *a1 = &unk_1F3CD9408;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v9;
  }

  std::set<std::basic_string<char16_t>>::set[abi:se200100]((a1 + 32), a3);
  std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>::multimap[abi:se200100]((a1 + 56), a4);
  std::map<std::u16string_view,std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>>::map[abi:se200100]((a1 + 80), a5);
  *(a1 + 104) = 1;
  return a1;
}

void sub_1BE5B803C(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(*(v1 + 64));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(v1 + 40));
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void virtual thunk tomorphun::lang::features::LanguageGrammarFeatures_GrammarCategory::~LanguageGrammarFeatures_GrammarCategory(morphun::lang::features::LanguageGrammarFeatures_GrammarCategory *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void morphun::lang::features::LanguageGrammarFeatures_GrammarCategory::getName(morphun::lang::features::LanguageGrammarFeatures_GrammarCategory *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
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

void *morphun::lang::features::LanguageGrammarFeatures_GrammarCategory::getGrammemeDependenciesForValue@<X0>(void *result@<X0>, unsigned __int16 *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = result + 11;
  v6 = result[11];
  if (!v6)
  {
    goto LABEL_11;
  }

  v9 = result + 11;
  do
  {
    result = std::less<std::u16string_view>::operator()[abi:se200100](*(v6 + 32), *(v6 + 40), a2, a3);
    if (result)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (!result)
    {
      v9 = v6;
    }

    v6 = *(v6 + v10);
  }

  while (v6);
  if (v9 == v5 || (result = std::less<std::u16string_view>::operator()[abi:se200100](a2, a3, v9[4], v9[5]), (result & 1) != 0))
  {
LABEL_11:
    a4[2] = 0;
    a4[1] = 0;
    *a4 = a4 + 1;
  }

  else
  {

    return std::multimap<std::basic_string<char16_t>,std::basic_string<char16_t>>::multimap[abi:se200100](a4, v9 + 6);
  }

  return result;
}

BOOL morphun::lang::features::LanguageGrammarFeatures_GrammarCategory::operator<(uint64_t a1, uint64_t a2)
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

void morphun::tokenizer::dictionary::SegmentFuger::detachFugenelement(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  npc<morphun::tokenizer::dictionary::Segment>(a2);
  v4 = *(v2 + 16);
  v5 = *(v2 + 8);
  v6 = v5 >= v4;
  v7 = v5 - v4;
  if (!v6)
  {
    goto LABEL_183;
  }

  if (v7 >= *(v2 + 20) - v4)
  {
    v8 = *(v2 + 20) - v4;
  }

  else
  {
    v8 = v7;
  }

  if (*(a1 + 5) > v8)
  {
    return;
  }

  v9 = *v2;
  npc<morphun::tokenizer::dictionary::Segment>(v2);
  v10 = *(v2 + 48);
  memset(&v71, 0, sizeof(v71));
  std::basic_string<char16_t>::reserve(&v71, *(a1 + 4));
  v11 = *(a1 + 4);
  if (v11 < 1)
  {
    goto LABEL_176;
  }

  v68 = 0;
  v12 = (v9 + 2 * v4);
  v69 = v12;
  v70 = v8;
  v66 = v2;
LABEL_9:
  if (v11 + *(a1 + 5) - 1 > v8)
  {
    goto LABEL_176;
  }

  v13 = v8 - v11;
  if (v8 < v11)
  {
    std::__throw_out_of_range[abi:se200100]("string_view::substr");
  }

  v14 = *a1;
  if (v11 > 0xA)
  {
    if ((v11 | 3) == 0xB)
    {
      v15 = 13;
    }

    else
    {
      v15 = (v11 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v15);
  }

  v74 = v11;
  if (&__dst <= v12 && &__dst + 2 * v11 > v12)
  {
    goto LABEL_182;
  }

  memmove(&__dst, v12, 2 * v11);
  *(&__dst + v11) = 0;
  v16 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(v14 + 160, &__dst);
  if (v74 < 0)
  {
    operator delete(__dst);
  }

  v17 = &v12[v11];
  if (v14 + 168 == v16)
  {
    npc<morphun::tokenizer::dictionary::Segment>(v2);
    v24 = *(v2 + 40);
    if (!v24)
    {
      LODWORD(v24) = *(v2 + 20) - *(v2 + 24);
    }

    if (v24 < *(a1 + 5))
    {
      goto LABEL_167;
    }

    v25 = *(*a1 + 136);
    v26 = *(*a1 + 144);
    if (v25 == v26)
    {
      v12 = v69;
      goto LABEL_167;
    }

    v27 = 0;
    v28 = 1;
    v29 = v10;
    while (1)
    {
      v30 = *(v25 + 8);
      if (*v25)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30 == 0;
      }

      if (!v31)
      {
        goto LABEL_182;
      }

      std::basic_string<char16_t>::__assign_external(&v71, *v25, v30);
      std::basic_string<char16_t>::append(&v71, v69, v70);
      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &v71;
      }

      else
      {
        v32 = v71.__r_.__value_.__r.__words[0];
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v71.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v71.__r_.__value_.__l.__size_;
      }

      v34 = morphun::dictionary::metadata::MarisaTrie<int>::find((a1[1] + 40), v32, size);
      if (v34 <= 0x100000000)
      {
        v35 = 0;
      }

      else
      {
        v35 = v34;
      }

      if (v29 >= (v35 & 0xFFFFFF))
      {
        goto LABEL_58;
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        if ((v35 & 0x2000000) == 0 && *(a1 + 5) > SLODWORD(v71.__r_.__value_.__r.__words[1]))
        {
          goto LABEL_58;
        }

        v28 = 0;
        v27 = 1;
        v13 = v71.__r_.__value_.__l.__size_;
        v17 = v71.__r_.__value_.__r.__words[0];
      }

      else
      {
        if ((v35 & 0x2000000) == 0 && *(a1 + 5) > SHIBYTE(v71.__r_.__value_.__r.__words[2]))
        {
          goto LABEL_58;
        }

        v28 = 0;
        v13 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
        v27 = 1;
        v17 = &v71;
      }

      v29 = (v35 & 0xFFFFFF);
      v68 = v35;
LABEL_58:
      v25 += 16;
      if (v25 == v26)
      {
        v12 = v69;
        if (v27)
        {
          goto LABEL_170;
        }

LABEL_167:
        v49 = v11-- <= 1;
        v8 = v70;
        if (v49)
        {
          goto LABEL_176;
        }

        goto LABEL_9;
      }
    }
  }

  v18 = *a1;
  if (v18 + 72 == std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(*a1 + 64, v12, v11))
  {
    v36 = 0;
  }

  else
  {
    v19 = morphun::dictionary::metadata::MarisaTrie<int>::find((a1[1] + 40), &v12[v11], v13);
    if (v19 <= 0x100000000)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    v21 = v20 & 0xFFFFFF;
    v22 = (v20 & 0xFFFFFF);
    if (v10 >= v22)
    {
      v67 = 0;
    }

    else
    {
      v23 = (v20 >> 25) & 1;
      if (*(a1 + 5) <= v13)
      {
        LOBYTE(v23) = 1;
      }

      v67 = v23;
    }

    v18 = *a1;
    v37 = *(*a1 + 136);
    v38 = *(*a1 + 144);
    if (v37 != v38)
    {
      while (1)
      {
        v39 = *(v37 + 8);
        if (*v37)
        {
          v40 = 1;
        }

        else
        {
          v40 = v39 == 0;
        }

        if (!v40)
        {
          goto LABEL_182;
        }

        std::basic_string<char16_t>::__assign_external(&v71, *v37, v39);
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
        }

        if (v13 > 0xA)
        {
          if ((v13 | 3) == 0xB)
          {
            v41 = 13;
          }

          else
          {
            v41 = (v13 | 3) + 1;
          }

          std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v41);
        }

        v74 = v13;
        v42 = (&__dst + 2 * v13);
        if (&__dst <= v17 && v42 > v17)
        {
          goto LABEL_182;
        }

        if (v13)
        {
          memmove(&__dst, v17, 2 * v13);
        }

        v42->__r_.__value_.__s.__data_[0] = 0;
        if ((v74 & 0x80u) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst;
        }

        if ((v74 & 0x80u) == 0)
        {
          v44 = v74;
        }

        else
        {
          v44 = v73;
        }

        std::basic_string<char16_t>::append(&v71, p_dst, v44);
        if (v74 < 0)
        {
          operator delete(__dst);
        }

        if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v71;
        }

        else
        {
          v45 = v71.__r_.__value_.__r.__words[0];
        }

        if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v46 = v71.__r_.__value_.__l.__size_;
        }

        v47 = morphun::dictionary::metadata::MarisaTrie<int>::find((a1[1] + 40), v45, v46);
        if (v47 <= 0x100000000)
        {
          v48 = 0;
        }

        else
        {
          v48 = v47;
        }

        v49 = v10 >= (v48 & 0xFFFFFF) || (v48 & 0xFFFFFF) <= v21;
        if (v49)
        {
          goto LABEL_109;
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          if ((v48 & 0x2000000) == 0 && *(a1 + 5) > SLODWORD(v71.__r_.__value_.__r.__words[1]))
          {
            goto LABEL_109;
          }

          v67 = 1;
          v13 = v71.__r_.__value_.__l.__size_;
          v17 = v71.__r_.__value_.__r.__words[0];
        }

        else
        {
          if ((v48 & 0x2000000) == 0 && *(a1 + 5) > SHIBYTE(v71.__r_.__value_.__r.__words[2]))
          {
            goto LABEL_109;
          }

          v13 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
          v67 = 1;
          v17 = &v71;
        }

        v21 = v48 & 0xFFFFFF;
        v20 = v48;
LABEL_109:
        v37 += 16;
        if (v37 == v38)
        {
          v22 = v21;
          v18 = *a1;
          break;
        }
      }
    }

    v36 = v67;
    v50 = v68;
    if (v67)
    {
      v50 = v20;
    }

    v68 = v50;
    if (v67)
    {
      v10 = v22;
    }

    v2 = v66;
    v12 = v69;
  }

  if (v18 + 96 == std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(v18 + 88, v12, v11) || v10 > *(a1 + 6))
  {
    v28 = 1;
    if ((v36 & 1) == 0)
    {
      goto LABEL_167;
    }
  }

  else
  {
    v51 = *(v18 + 112);
    v52 = *(v18 + 120);
    if (v51 != v52)
    {
      v53 = v10;
      while (1)
      {
        v54 = *(v51 + 8);
        if (!*v51 && v54 != 0)
        {
          break;
        }

        std::basic_string<char16_t>::__assign_external(&v71, *v51, v54);
        if (v13 > 0x7FFFFFFFFFFFFFF7)
        {
          std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
        }

        if (v13 > 0xA)
        {
          if ((v13 | 3) == 0xB)
          {
            v56 = 13;
          }

          else
          {
            v56 = (v13 | 3) + 1;
          }

          std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v56);
        }

        v74 = v13;
        v57 = (&__dst + 2 * v13);
        if (&__dst <= v17 && v57 > v17)
        {
          break;
        }

        if (v13)
        {
          memmove(&__dst, v17, 2 * v13);
        }

        v57->__r_.__value_.__s.__data_[0] = 0;
        if ((v74 & 0x80u) == 0)
        {
          v58 = &__dst;
        }

        else
        {
          v58 = __dst;
        }

        if ((v74 & 0x80u) == 0)
        {
          v59 = v74;
        }

        else
        {
          v59 = v73;
        }

        std::basic_string<char16_t>::append(&v71, v58, v59);
        if (v74 < 0)
        {
          operator delete(__dst);
        }

        if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = &v71;
        }

        else
        {
          v60 = v71.__r_.__value_.__r.__words[0];
        }

        if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v61 = v71.__r_.__value_.__l.__size_;
        }

        v62 = morphun::dictionary::metadata::MarisaTrie<int>::find((a1[1] + 40), v60, v61);
        if (v62 <= 0x100000000)
        {
          v63 = 0;
        }

        else
        {
          v63 = v62;
        }

        if (v53 < (v63 & 0xFFFFFF))
        {
          if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v71;
          }

          else
          {
            v17 = v71.__r_.__value_.__r.__words[0];
          }

          if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v13 = v71.__r_.__value_.__l.__size_;
          }

          v36 = 1;
          v53 = (v63 & 0xFFFFFF);
          v68 = v63;
        }

        v51 += 16;
        if (v51 == v52)
        {
          goto LABEL_164;
        }
      }

LABEL_182:
      __break(1u);
LABEL_183:
      std::__throw_out_of_range[abi:se200100]("string_view::substr");
    }

LABEL_164:
    v28 = 1;
    v12 = v69;
    if ((v36 & 1) == 0)
    {
      goto LABEL_167;
    }
  }

LABEL_170:
  npc<morphun::tokenizer::dictionary::Segment>(v2);
  if (v28)
  {
    v65 = v11;
  }

  else
  {
    v65 = -1;
  }

  *(v2 + 32) = v17;
  *(v2 + 40) = v13;
  if (v65 >= 1)
  {
    *(v2 + 24) = *(v2 + 16) + v65;
    *(v2 + 28) = v65;
  }

  *v64.i32 = (v68 & 0xFFFFFF);
  *(v2 + 48) = v64.i32[0];
  *(v2 + 52) = vuzp1_s8((*&vmovn_s32(vshlq_u32(vdupq_n_s32(v68), xmmword_1BE695F60)) & 0xFF81FF81FF81FF81), v64).u32[0];
  *(v2 + 56) = HIBYTE(v68) & 1;
LABEL_176:
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }
}