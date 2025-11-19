void morphun::util::LocaleUtils::getSupportedLocaleList(morphun::util::LocaleUtils *this@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v3 = morphun::util::LocaleUtils::BASE_SUPPORTED_LOCALES(this);
  std::map<std::string,std::vector<morphun::util::ULocale>>::map[abi:se200100](&v10, v3);
  v4 = v10;
  if (v10 != v11)
  {
    do
    {
      v5 = v4[7];
      v6 = v4[8];
      while (v5 != v6)
      {
        std::__tree<morphun::util::ULocale>::__emplace_unique_key_args<morphun::util::ULocale,morphun::util::ULocale const&>(a2, v5);
        v5 += 128;
      }

      v7 = v4[1];
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
          v8 = v4[2];
          v9 = *v8 == v4;
          v4 = v8;
        }

        while (!v9);
      }

      v4 = v8;
    }

    while (v8 != v11);
  }

  std::__tree<std::__value_type<std::string,std::vector<morphun::util::ULocale>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<morphun::util::ULocale>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<morphun::util::ULocale>>>>::destroy(v11[0]);
}

void *std::map<std::string,std::vector<morphun::util::ULocale>>::map[abi:se200100](void *a1, void *a2)
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
      v6 = a1[1];
      v7 = v3;
      if (*a1 == v3)
      {
        goto LABEL_9;
      }

      v8 = a1[1];
      v9 = v3;
      if (v6)
      {
        do
        {
          v7 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = v9[2];
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, v5 + 4) & 0x80) != 0)
      {
LABEL_9:
        if (!v6)
        {
          v15 = v3;
LABEL_14:
          operator new();
        }

        v15 = v7;
        v11 = v7 + 1;
      }

      else
      {
        v11 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v15, v5 + 4);
      }

      if (!*v11)
      {
        goto LABEL_14;
      }

      v12 = v5[1];
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
          v13 = v5[2];
          v10 = *v13 == v5;
          v5 = v13;
        }

        while (!v10);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  return a1;
}

void sub_1BE56DDBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, char a13)
{
  operator delete(v13);
  std::__tree<std::__value_type<std::string,std::vector<morphun::util::ULocale>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<morphun::util::ULocale>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<morphun::util::ULocale>>>>::destroy(*a11);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:se200100]<std::allocator<morphun::util::ULocale>>(unint64_t a1)
{
  if (!(a1 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

uint64_t morphun::util::LocaleUtils::BASE_SUPPORTED_LOCALES(morphun::util::LocaleUtils *this)
{
  {
    morphun::resources::DataResource::getProperties(&v3, "/", 0x36uLL, 0);
    morphun::util::createSupportedLocaleMapToBase();
  }

  result = morphun::util::LocaleUtils::BASE_SUPPORTED_LOCALES(void)::BASE_SUPPORTED_LOCALES_;
  if (!morphun::util::LocaleUtils::BASE_SUPPORTED_LOCALES(void)::BASE_SUPPORTED_LOCALES_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void sub_1BE56DF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  std::__tree<std::u16string_view>::destroy(a11);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::ULocale::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::string::operator=((a1 + 8), (a2 + 8));
    std::string::operator=((a1 + 32), (a2 + 32));
    std::string::operator=((a1 + 56), (a2 + 56));
    std::string::operator=((a1 + 80), (a2 + 80));
    std::string::operator=((a1 + 104), (a2 + 104));
  }

  return a1;
}

uint64_t morphun::util::ULocale::ULocale(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F3CD92F0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  morphun::util::ULocale::operator=(a1, a2);
  return a1;
}

void sub_1BE56E07C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::u16string_view>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:se200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:se200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void *std::__tree<morphun::util::ULocale>::__emplace_unique_key_args<morphun::util::ULocale,morphun::util::ULocale const&>(uint64_t a1, uint64_t a2)
{
  result = std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::__find_equal<morphun::util::ULocale>(a1, &v3, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void *std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::__find_equal<morphun::util::ULocale>(uint64_t a1, void *a2, uint64_t a3)
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
        if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 17, (a3 + 104)) & 0x80) == 0)
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

      if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>((a3 + 104), v7 + 17) & 0x80) == 0)
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

uint64_t std::unique_ptr<std::__tree_node<morphun::dialog::SemanticValue,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<morphun::dialog::SemanticValue,void *>>>>::~unique_ptr[abi:se200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      (*(v2[4] + 8))();
    }

    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::vector<morphun::util::ULocale>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<morphun::util::ULocale>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<morphun::util::ULocale>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::vector<morphun::util::ULocale>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<morphun::util::ULocale>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<morphun::util::ULocale>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::vector<morphun::util::ULocale>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<morphun::util::ULocale>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<morphun::util::ULocale>>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<morphun::util::ULocale>>,void *>>>::destroy[abi:se200100]<std::pair<std::string const,std::vector<morphun::util::ULocale>>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::vector<morphun::util::ULocale>::__destroy_vector::operator()[abi:se200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 128;
      v7 = v4 - 128;
      v8 = v4 - 128;
      do
      {
        v9 = *v8;
        v8 -= 128;
        (*(v9 + 8))(v7);
        v6 -= 128;
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

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<morphun::util::ULocale>>,void *>>>::destroy[abi:se200100]<std::pair<std::string const,std::vector<morphun::util::ULocale>>,void,0>(uint64_t a1)
{
  if (a1)
  {
    v3 = (a1 + 24);
    std::vector<morphun::util::ULocale>::__destroy_vector::operator()[abi:se200100](&v3);
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

void morphun::util::ULocale::~ULocale(void **this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void morphun::util::ULocale::~ULocale(void **this, void **a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 5)) = a2[1];
  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void morphun::util::LocaleUtils::toString(morphun::util::LocaleUtils *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"_");
  morphun::util::LocaleUtils::toString(this, __p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BE56E7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_string<char16_t>::basic_string[abi:se200100]<0>(_BYTE *__dst, _WORD *a2)
{
  if (!a2)
  {
    goto LABEL_17;
  }

  if (*a2)
  {
    v3 = 0;
      ;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_18:
      std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
    }

    if (v3 > 0xA)
    {
      if ((v3 | 3) == 0xB)
      {
        v5 = 13;
      }

      else
      {
        v5 = (v3 | 3) + 1;
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v5);
    }
  }

  else
  {
    v3 = 0;
  }

  __dst[23] = v3;
  v6 = &__dst[2 * v3];
  if (__dst <= a2 && v6 > a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3)
  {
    memmove(__dst, a2, 2 * v3);
  }

  *v6 = 0;
  return __dst;
}

void morphun::util::LocaleUtils::toString(uint64_t a1@<X0>, void ***a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v6 = (a1 + 8);
  v7 = *(a1 + 31);
  if (v7 < 0)
  {
    v7 = *(a1 + 16);
    if (!v7)
    {
      goto LABEL_13;
    }

    v6 = *v6;
  }

  else if (!*(a1 + 31))
  {
    goto LABEL_13;
  }

  morphun::util::StringViewUtils::convert(&v25, v6, v7);
  if (v27 >= 0)
  {
    v8 = &v25;
  }

  else
  {
    v8 = v25;
  }

  if (v27 >= 0)
  {
    v9 = HIBYTE(v27);
  }

  else
  {
    v9 = v26;
  }

  std::basic_string<char16_t>::append(a3, v8, v9);
LABEL_13:
  v10 = (a1 + 32);
  v11 = *(a1 + 55);
  if (v11 < 0)
  {
    v11 = *(a1 + 40);
    if (!v11)
    {
      goto LABEL_26;
    }

    v10 = *v10;
  }

  else if (!*(a1 + 55))
  {
    goto LABEL_26;
  }

  morphun::util::StringViewUtils::convert(&v25, v10, v11);
  std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&__p, a2, &v25);
  if ((v24 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v24 & 0x80u) == 0)
  {
    v13 = v24;
  }

  else
  {
    v13 = v23;
  }

  std::basic_string<char16_t>::append(a3, p_p, v13);
  if (v24 < 0)
  {
    operator delete(__p);
  }

LABEL_26:
  v14 = (a1 + 56);
  v15 = *(a1 + 79);
  if (v15 < 0)
  {
    v15 = *(a1 + 64);
    if (!v15)
    {
      goto LABEL_39;
    }

    v14 = *v14;
  }

  else if (!*(a1 + 79))
  {
    goto LABEL_39;
  }

  morphun::util::StringViewUtils::convert(&v25, v14, v15);
  std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&__p, a2, &v25);
  if ((v24 & 0x80u) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p;
  }

  if ((v24 & 0x80u) == 0)
  {
    v17 = v24;
  }

  else
  {
    v17 = v23;
  }

  std::basic_string<char16_t>::append(a3, v16, v17);
  if (v24 < 0)
  {
    operator delete(__p);
  }

LABEL_39:
  v18 = (a1 + 80);
  v19 = *(a1 + 103);
  if (v19 < 0)
  {
    v19 = *(a1 + 88);
    if (!v19)
    {
      goto LABEL_52;
    }

    v18 = *v18;
  }

  else if (!*(a1 + 103))
  {
    goto LABEL_52;
  }

  morphun::util::StringViewUtils::convert(&v25, v18, v19);
  std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&__p, a2, &v25);
  if ((v24 & 0x80u) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p;
  }

  if ((v24 & 0x80u) == 0)
  {
    v21 = v24;
  }

  else
  {
    v21 = v23;
  }

  std::basic_string<char16_t>::append(a3, v20, v21);
  if (v24 < 0)
  {
    operator delete(__p);
  }

LABEL_52:
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }
}

void sub_1BE56EAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::util::StringViewUtils::convert(uint64_t a1, const char *a2, int32_t a3)
{
  pErrorCode = U_ZERO_ERROR;
  pDestLength = a3;
  v6 = npc<std::basic_string<char16_t>>(a1);
  std::basic_string<char16_t>::resize(v6, a3, 0);
  v7 = a1;
  if (*(a1 + 23) < 0)
  {
    v7 = *a1;
  }

  u_strFromUTF8WithSub(v7, a3, &pDestLength, a2, a3, -1, 0, &pErrorCode);
  v8 = pErrorCode;
  if (pErrorCode >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::ICUException::ICUException(exception, v8);
  }

  if (pDestLength != a3)
  {
    std::basic_string<char16_t>::resize(a1, pDestLength, 0);
  }

  return a1;
}

void std::basic_string<char16_t>::resize(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __n, std::basic_string<char16_t>::value_type __c)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    if (size >= __n)
    {
      this->__r_.__value_.__l.__size_ = __n;
      this = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }

LABEL_5:
    std::basic_string<char16_t>::append(this, __n - size, __c);
    return;
  }

  if (size < __n)
  {
    goto LABEL_5;
  }

  *(&this->__r_.__value_.__s + 23) = __n;
LABEL_7:
  this->__r_.__value_.__s.__data_[__n] = 0;
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::append(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __n)
{
  v5 = this;
  if (__s || !__n)
  {
    v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v6 < 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 10;
      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    if (v7 - size < __n)
    {
      std::basic_string<char16_t>::__grow_by_and_replace(this, v7, __n - v7 + size, size, size, 0, __n, __s);
      return v5;
    }

    if (!__n)
    {
      return v5;
    }

    v9 = this;
    if ((v6 & 0x80000000) != 0)
    {
      v9 = this->__r_.__value_.__r.__words[0];
    }

    if ((__n & 0x8000000000000000) == 0)
    {
      this = (v9 + 2 * size);
      if (this > __s || this + 2 * __n <= __s)
      {
        memmove(this, __s, 2 * __n);
        v10 = size + __n;
        if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
        {
          v5->__r_.__value_.__l.__size_ = v10;
        }

        else
        {
          *(&v5->__r_.__value_.__s + 23) = v10 & 0x7F;
        }

        v9->__r_.__value_.__s.__data_[v10] = 0;
        return v5;
      }
    }
  }

  __break(1u);
  return this;
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::append(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __n, std::basic_string<char16_t>::value_type __c)
{
  if (__n)
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v11 = this->__r_.__value_.__r.__words[2];
      v9 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v10 = HIBYTE(v11);
    }

    else
    {
      v9 = 10;
      LOBYTE(v10) = *(&this->__r_.__value_.__s + 23);
    }

    if (v9 - size < __n)
    {
      std::basic_string<char16_t>::__grow_by(this, v9, __n - v9 + size, size, size, v3, v4);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v10) = *(&this->__r_.__value_.__s + 23);
    }

    v12 = this;
    if ((v10 & 0x80) != 0)
    {
      v12 = this->__r_.__value_.__r.__words[0];
    }

    v13 = 0;
    v14 = vdupq_n_s64(__n - 1);
    v15 = &v12->__r_.__value_.__s.__data_[size + 4];
    do
    {
      v16 = vdupq_n_s64(v13);
      v17 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_1BE695F50)));
      if (vuzp1_s8(vuzp1_s16(v17, *v14.i8), *v14.i8).u8[0])
      {
        *(v15 - 4) = __c;
      }

      if (vuzp1_s8(vuzp1_s16(v17, *&v14), *&v14).i8[1])
      {
        *(v15 - 3) = __c;
      }

      if (vuzp1_s8(vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_1BE695F40)))), *&v14).i8[2])
      {
        *(v15 - 2) = __c;
        *(v15 - 1) = __c;
      }

      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_1BE695F30)));
      if (vuzp1_s8(*&v14, vuzp1_s16(v18, *&v14)).i32[1])
      {
        *v15 = __c;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(v18, *&v14)).i8[5])
      {
        v15[1] = __c;
      }

      if (vuzp1_s8(*&v14, vuzp1_s16(*&v14, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v16, xmmword_1BE695F20))))).i8[6])
      {
        v15[2] = __c;
        v15[3] = __c;
      }

      v13 += 8;
      v15 += 8;
    }

    while (((__n + 7) & 0xFFFFFFFFFFFFFFF8) != v13);
    v19 = size + __n;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v19;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v19 & 0x7F;
    }

    v12->__r_.__value_.__s.__data_[v19] = 0;
  }

  return this;
}

void **std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(uint64_t a1, void ***a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = *(a3 + 8);
  }

  result = std::basic_string<char16_t>::basic_string[abi:se200100](a1, v5 + v6);
  if (*(result + 23) < 0)
  {
    result = *result;
  }

  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  v9 = result + 2 * v5;
  if (v8 >= result && v9 > v8)
  {
    goto LABEL_30;
  }

  if (v5)
  {
    result = memmove(result, v8, 2 * v5);
  }

  v11 = *(a3 + 23) >= 0 ? a3 : *a3;
  if (v6 < 0 || ((v12 = &v9[2 * v6], v11 >= v9) ? (v13 = v12 > v11) : (v13 = 0), v13))
  {
LABEL_30:
    __break(1u);
  }

  else
  {
    if (v6)
    {
      result = memmove(v9, v11, 2 * v6);
    }

    *v12 = 0;
  }

  return result;
}

uint64_t std::basic_string<char16_t>::basic_string[abi:se200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a2 > 0xA)
  {
    if ((a2 | 3) == 0xB)
    {
      v2 = 13;
    }

    else
    {
      v2 = (a2 | 3) + 1;
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:se200100]();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void sub_1BE56F09C(_Unwind_Exception *a1, int a2)
{
  v5 = v3;
  MEMORY[0x1BFB49160](v5, 0x10F3C40F4CE41AFLL);
  if (a2 == 1)
  {
    v7 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v7, v2, v8);
    __cxa_end_catch();
    JUMPOUT(0x1BE56F088);
  }

  _Unwind_Resume(a1);
}

uint64_t npc<morphun::util::ULocale>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

morphun::analysis::DefaultAnalyzerFactory *morphun::analysis::DefaultAnalyzerFactory::DefaultAnalyzerFactory(morphun::analysis::DefaultAnalyzerFactory *this, morphun::util::StringUtils *a2)
{
  *this = &unk_1F3CD2098;
  v4 = (this + 8);
  v5 = morphun::util::LocaleUtils::ENGLISH(this);
  *(this + 1) = &unk_1F3CD9158;
  morphun::analysis::ConfigurableAnalyzer::ConfigurableAnalyzer(v4, off_1F3CDADE8, v5, 0, a2);
  *(this + 1) = &unk_1F3CD2E08;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 27) = this + 224;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 33) = a2;
  *(this + 34) = 850045863;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 41) = 0;
  if (a2 >= 0x2000)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(a2, &v9);
    std::basic_string<char16_t>::insert(&v9, "U", 0x1F, v8);
    v10 = v9;
    memset(&v9, 0, sizeof(v9));
    morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &v10);
  }

  return this;
}

void sub_1BE56F2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void ***a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v26 & 1) == 0)
    {
LABEL_8:
      std::mutex::~mutex((a10 + 32));
      v28 = *a10;
      if (*a10)
      {
        *(v24 + 248) = v28;
        operator delete(v28);
      }

      std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::destroy(*a11);
      morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(v23, off_1F3CDADE8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

morphun::analysis::Analyzer *morphun::analysis::ConfigurableAnalyzer::ConfigurableAnalyzer(morphun::analysis::Analyzer *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = morphun::analysis::Analyzer::Analyzer(a1, a2 + 2);
  v11 = a2[1];
  *v10 = v11;
  *(a1 + *(v11 - 40)) = a2[4];
  *(a1 + 8) = a4;
  v12 = *a2;
  *a1 = *a2;
  *(a1 + *(v12 - 40)) = a2[5];
  *(a1 + 9) = a5;
  morphun::util::ULocale::ULocale(a1 + 80, a3);
  return a1;
}

uint64_t morphun::util::LocaleUtils::ENGLISH(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::ENGLISH(void)::ENGLISH_);
}

void sub_1BE56F5F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

morphun::analysis::Analyzer *morphun::analysis::Analyzer::Analyzer(morphun::analysis::Analyzer *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  v4 = a2[1];
  *(this + *(v3 - 40)) = v4;
  *(this + 6) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 2) = this + 24;
  *(this + 7) = 0;
  *(this + 4) = 0;
  *(this + 5) = this + 48;
  *(this + 1) = morphun::analysis::Analyzer::GLOBAL_REUSE_STRATEGY(v4);
  return this;
}

void sub_1BE56F748(_Unwind_Exception *a1)
{
  std::__tree<std::u16string_view>::destroy(*v2);
  std::__tree<std::u16string_view>::destroy(*v1);
  _Unwind_Resume(a1);
}

uint64_t mdaf_getAnalyzer(uint64_t a1, const __CFLocale *a2)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  morphun::util::CFUtils::convert(v6, a2);
  v3 = (*(*a1 + 24))(a1, v6);
  return v3;
}

void sub_1BE56F81C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = __cxa_begin_catch(exception_object);
    morphun::util::CFUtils::convert(v3, v2, v4);
    __cxa_end_catch();
    JUMPOUT(0x1BE56F7D0);
  }

  _Unwind_Resume(exception_object);
}

void morphun::util::CFUtils::convert(morphun::util::CFUtils *this, const __CFLocale *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v3 = MEMORY[0x1BFB48CF0](a2);
  morphun::util::CFUtils::to_string(&v11, v3);
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  morphun::util::ULocale::ULocale(this, &v11, v9, v7, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

uint64_t morphun::analysis::Analyzer::GLOBAL_REUSE_STRATEGY(morphun::analysis::Analyzer *this)
{
  {
    operator new();
  }

  return morphun::analysis::Analyzer::GLOBAL_REUSE_STRATEGY(void)::GLOBAL_REUSE_STRATEGY_;
}

void morphun::util::CFUtils::to_string(std::string *this, const __CFString *a2)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  npc<__CFString const>(a2);
  Length = CFStringGetLength(a2);
  std::string::resize(this, Length, 0);
  npc<__CFString const>(a2);
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = this;
  }

  else
  {
    v5 = this->__r_.__value_.__r.__words[0];
  }

  v8.location = 0;
  v8.length = Length;
  if (CFStringGetBytes(a2, v8, 0x8000100u, 0, 0, v5, Length, 0) != Length)
  {
    usedBufLen = 4 * Length;
    std::string::resize(this, 4 * Length, 0);
    npc<__CFString const>(a2);
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = this;
    }

    else
    {
      v6 = this->__r_.__value_.__r.__words[0];
    }

    v9.location = 0;
    v9.length = Length;
    CFStringGetBytes(a2, v9, 0x8000100u, 0, 0, v6, 4 * Length, &usedBufLen);
    std::string::resize(this, usedBufLen, 0);
  }
}

void sub_1BE56FB84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<__CFString const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::util::ULocale::ULocale(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F3CD92F0;
  *(a1 + 8) = 0u;
  v10 = (a1 + 8);
  *(a1 + 56) = 0u;
  v11 = (a1 + 56);
  *(a1 + 104) = 0u;
  v12 = (a1 + 104);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  v13 = *(a2 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a2 + 8);
  }

  v14 = *(a3 + 23);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a3 + 8);
  }

  v15 = v14 + v13;
  v16 = *(a4 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a4 + 8);
  }

  v17 = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a5 + 8);
  }

  v18 = v15 + v16 + v17;
  if (v18 == v13)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  std::string::reserve((a1 + 104), v19);
  v20 = *(a2 + 23);
  if (v20 >= 0)
  {
    v21 = a2;
  }

  else
  {
    v21 = *a2;
  }

  if (v20 >= 0)
  {
    v22 = *(a2 + 23);
  }

  else
  {
    v22 = *(a2 + 8);
  }

  std::string::append(v12, v21, v22);
  v23 = *(a3 + 23);
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a3 + 8);
  }

  if (v23)
  {
    if (std::string::find(a3, 61, 0) == -1)
    {
      v24 = 95;
    }

    else
    {
      v24 = 64;
    }

    std::string::push_back(v12, v24);
    v25 = *(a3 + 23);
    if (v25 >= 0)
    {
      v26 = a3;
    }

    else
    {
      v26 = *a3;
    }

    if (v25 >= 0)
    {
      v27 = *(a3 + 23);
    }

    else
    {
      v27 = *(a3 + 8);
    }

    std::string::append(v12, v26, v27);
  }

  v28 = *(a4 + 23);
  if ((v28 & 0x80u) != 0)
  {
    v28 = *(a4 + 8);
  }

  if (v28)
  {
    if (std::string::find(a4, 61, 0) == -1)
    {
      v29 = 95;
    }

    else
    {
      v29 = 64;
    }

    std::string::push_back(v12, v29);
    v30 = *(a4 + 23);
    if (v30 >= 0)
    {
      v31 = a4;
    }

    else
    {
      v31 = *a4;
    }

    if (v30 >= 0)
    {
      v32 = *(a4 + 23);
    }

    else
    {
      v32 = *(a4 + 8);
    }

    std::string::append(v12, v31, v32);
  }

  v33 = *(a5 + 23);
  if ((v33 & 0x80u) != 0)
  {
    v33 = *(a5 + 8);
  }

  if (v33)
  {
    v34 = *(a3 + 23);
    if ((v34 & 0x80u) != 0)
    {
      v34 = *(a3 + 8);
    }

    if (!v34)
    {
      std::string::push_back(v12, 95);
    }

    if (std::string::find(a5, 61, 0) == -1)
    {
      v35 = 95;
    }

    else
    {
      v35 = 64;
    }

    std::string::push_back(v12, v35);
    v36 = *(a5 + 23);
    if (v36 >= 0)
    {
      v37 = a5;
    }

    else
    {
      v37 = *a5;
    }

    if (v36 >= 0)
    {
      v38 = *(a5 + 23);
    }

    else
    {
      v38 = *(a5 + 8);
    }

    std::string::append(v12, v37, v38);
  }

  memset(__s, 0, 157);
  v39 = *(a1 + 127);
  if ((v39 & 0x80000000) == 0)
  {
    LODWORD(__p[0].__r_.__value_.__l.__data_) = 0;
    if (!v39)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v40 = *(a1 + 112);
  if (v40 <= 0x9C)
  {
    LODWORD(__p[0].__r_.__value_.__l.__data_) = 0;
    if (!v40)
    {
LABEL_68:
      if (*(a1 + 127) < 0)
      {
        v42 = v12->__r_.__value_.__r.__words[0];
      }

      uloc_getLanguage();
      std::string::__assign_external(v10, __s);
      if (*(a1 + 127) < 0)
      {
        v43 = v12->__r_.__value_.__r.__words[0];
      }

      uloc_getScript();
      std::string::__assign_external((a1 + 32), __s);
      if (*(a1 + 127) < 0)
      {
        v44 = v12->__r_.__value_.__r.__words[0];
      }

      uloc_getCountry();
      std::string::__assign_external(v11, __s);
      v45 = std::string::find(v12, 64, 0);
      if (v45 == -1)
      {
        if (*(a1 + 127) < 0)
        {
          v46 = v12->__r_.__value_.__r.__words[0];
        }

        uloc_getVariant();
        std::string::__assign_external((a1 + 80), __s);
      }

      else
      {
        std::string::assign((a1 + 80), v12, v45 + 1, 0xFFFFFFFFFFFFFFFFLL);
      }

      goto LABEL_100;
    }

    v41 = v12->__r_.__value_.__r.__words[0];
LABEL_67:
    uloc_canonicalize();
    std::string::__assign_external(v12, __s);
    goto LABEL_68;
  }

  if (morphun::util::gLogLevel <= 4)
  {
    v47 = *(a1 + 127);
    if (v47 < 0)
    {
      v48 = *(a1 + 104);
      v47 = *(a1 + 112);
    }

    else
    {
      v48 = v12;
    }

    morphun::util::StringViewUtils::to_u16string(v48, v47, &v60);
    std::basic_string<char16_t>::insert(&v60, "I", 0xF, v49);
    __p[0] = v60;
    memset(&v60, 0, sizeof(v60));
    if (morphun::util::gLogLevel <= 4)
    {
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = __p;
      }

      else
      {
        v50 = __p[0].__r_.__value_.__r.__words[0];
      }

      morphun::util::logToTopOfStackLogger(4, 0, v50);
    }

    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }
  }

  std::string::basic_string[abi:se200100]<0>(&v60, &unk_1BE810AE7);
  std::string::basic_string[abi:se200100]<0>(v57, &unk_1BE810AE7);
  std::string::basic_string[abi:se200100]<0>(v55, &unk_1BE810AE7);
  std::string::basic_string[abi:se200100]<0>(v53, &unk_1BE810AE7);
  morphun::util::ULocale::ULocale(__p, &v60, v57, v55, v53);
  morphun::util::ULocale::operator=(a1, __p);
  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

LABEL_100:
  v51 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1BE570194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (*(v53 + 127) < 0)
  {
    operator delete(*v56);
  }

  if (*(v53 + 103) < 0)
  {
    operator delete(*(v53 + 80));
  }

  if (*(v53 + 79) < 0)
  {
    operator delete(*v55);
  }

  if (*(v53 + 55) < 0)
  {
    operator delete(*(v53 + 32));
  }

  if (*(v53 + 31) < 0)
  {
    operator delete(*v54);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

unint64_t morphun::analysis::DefaultAnalyzerFactory::createAnalyzer(morphun::analysis::DefaultAnalyzerFactory *this, const morphun::util::ULocale *a2)
{
  std::mutex::lock((this + 272));
  v4 = std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::find<morphun::util::ULocale>(this + 216, a2);
  v5 = v4;
  if ((this + 224) != v4)
  {
    v6 = v4[20];
    std::mutex::unlock((this + 272));
    return v6;
  }

  v25 = this + 216;
  std::mutex::unlock((this + 272));
  v24 = a2;
  morphun::util::ULocale::ULocale(v27, a2);
  v7 = v29;
  if ((v29 & 0x80u) != 0)
  {
    v7 = v28;
  }

  if (!v7)
  {
LABEL_20:
    return this + 8;
  }

  while (2)
  {
    v8 = 0;
    if (v31 >= 0)
    {
      v9 = &v30;
    }

    else
    {
      v9 = v30;
    }

    v10 = 46;
    while (1)
    {
      v11 = v8 + ((v10 - v8) >> 1);
      v12 = &(&morphun::analysis::DefaultAnalyzerFactory::createAnalyzer(morphun::util::ULocale const&)::CONSTRUCTOR_MAP)[2 * v11];
      v13 = strcmp(v9, *v12);
      if ((v13 & 0x80000000) == 0)
      {
        break;
      }

      v10 = v11 - 1;
LABEL_14:
      if (v8 > v10)
      {
        goto LABEL_17;
      }
    }

    if (v13)
    {
      v8 = v11 + 1;
      goto LABEL_14;
    }

    v14 = v12[1];
    if (!v14)
    {
LABEL_17:
      morphun::util::ULocale::getFallback(v27, &v26);
      morphun::util::ULocale::operator=(v27, &v26);
      v15 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v15 = v28;
      }

      if (!v15)
      {
        goto LABEL_20;
      }

      continue;
    }

    break;
  }

  std::mutex::lock((this + 272));
  v17 = std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::find<morphun::util::ULocale>(v25, v27);
  if (v5 != v17)
  {
    v6 = *(v17 + 160);
    goto LABEL_37;
  }

  result = (v14)(v24, *(this + 33));
  v6 = result;
  v19 = *(this + 31);
  v18 = *(this + 32);
  if (v19 >= v18)
  {
    v20 = *(this + 30);
    v21 = ((v19 - v20) >> 3) + 1;
    if (v21 >> 61)
    {
      std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
    }

    v22 = v18 - v20;
    v23 = v22 >> 2;
    if (v22 >> 2 <= v21)
    {
      v23 = v21;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      result = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      result = v23;
    }

    if (result)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeature *>>(result);
    }

    goto LABEL_41;
  }

  if (!v19)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  *v19 = result;
  *(this + 31) = v19 + 1;
  if (!*std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::__find_equal<morphun::util::ULocale>(v25, v32, v27))
  {
    operator new();
  }

LABEL_37:
  if (!*std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::__find_equal<morphun::util::ULocale>(v25, v32, v24))
  {
    operator new();
  }

  std::mutex::unlock((this + 272));
  return v6;
}

void sub_1BE5706F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  std::unique_ptr<std::__tree_node<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,void *>>>>::~unique_ptr[abi:se200100](&a11);
  std::mutex::unlock((v27 + 272));
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::find<morphun::util::ULocale>(uint64_t a1, uint64_t a2)
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
    v6 = std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 104), (v3 + 136));
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>((v5 + 136), (a2 + 104)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void morphun::util::ULocale::getFallback(morphun::util::ULocale *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 104);
  v5 = std::string::find((this + 104), 64, 0);
  if (v5 != -1)
  {
    std::string::basic_string(&v30, v4, 0, v5, &v29);
    memset(&v29, 0, sizeof(v29));
    memset(&v28, 0, sizeof(v28));
    __p = 0;
    v26 = 0;
    v27 = 0;
    morphun::util::ULocale::ULocale(a2, &v30, &v29, &v28, &__p);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      v6 = v30.__r_.__value_.__r.__words[0];
LABEL_46:
      operator delete(v6);
      return;
    }

    return;
  }

  v7 = *(this + 127);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v9 = *(this + 13);
    v8 = *(this + 14);
    if (!v8)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v8 = *(this + 127);
    v9 = v4;
    if (!*(this + 127))
    {
      goto LABEL_27;
    }
  }

  v10 = v9 + v8;
  v11 = 1 - v8;
  while (v11 != 1)
  {
    v12 = *--v10;
    ++v11;
    if (v12 == 95)
    {
      if (v10 - v9 != -1)
      {
        v13 = -v11;
        while (v13 != -1)
        {
          if ((v7 & 0x80000000) != 0)
          {
            if (*(this + 14) < v13)
            {
LABEL_48:
              __break(1u);
              return;
            }

            v14 = v4->__r_.__value_.__r.__words[0];
          }

          else
          {
            v14 = v4;
            if (v13 > v7)
            {
              goto LABEL_48;
            }
          }

          v15 = v14->__r_.__value_.__s.__data_[v13--];
          if (v15 != 95)
          {
            v16 = v13 + 2;
            goto LABEL_28;
          }
        }
      }

      break;
    }
  }

LABEL_27:
  v16 = 0;
LABEL_28:
  std::string::basic_string(&v29, v4, 0, v16, &v28);
  std::string::basic_string(&v28, v4, v8, 0xFFFFFFFFFFFFFFFFLL, &__p);
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v28;
  }

  else
  {
    v17 = v28.__r_.__value_.__r.__words[0];
  }

  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v28.__r_.__value_.__l.__size_;
  }

  v19 = std::string::append(&v29, v17, size);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v30.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v30.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  __p = 0;
  v26 = 0;
  v27 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  morphun::util::ULocale::ULocale(a2, &v30, &__p, v23, v21);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = v29.__r_.__value_.__r.__words[0];
    goto LABEL_46;
  }
}

void sub_1BE570A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 65) < 0)
  {
    operator delete(*(v33 - 88));
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE570F58(_Unwind_Exception *a1)
{
  v6 = (v4 + 791);
  v7 = -792;
  v8 = (v4 + 791);
  while (1)
  {
    v9 = *v8;
    v8 -= 24;
    if (v9 < 0)
    {
      operator delete(*(v6 - 23));
    }

    v6 = v8;
    v7 += 24;
    if (!v7)
    {
      MEMORY[0x1BFB49160](v3, 0x1020C4062D53EE8);
      MEMORY[0x1BFB49160](v1, v2);
      _Unwind_Resume(a1);
    }
  }
}

void std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeature *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,void *>>>>::~unique_ptr[abi:se200100](uint64_t a1)
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

void morphun::analysis::DefaultAnalyzerFactory::~DefaultAnalyzerFactory(morphun::analysis::DefaultAnalyzerFactory *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(void **this, void *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 5)) = a2[5];

  morphun::analysis::Analyzer::~Analyzer(this, a2 + 2);
}

void morphun::analysis::DefaultAnalyzerFactory::~DefaultAnalyzerFactory(morphun::analysis::DefaultAnalyzerFactory *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[3];
  v4 = *(this + 30);
  v5 = *(this + 31);
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 16))(*v4);
    }

    ++v4;
  }

  std::mutex::~mutex((this + 272));
  v6 = *(this + 30);
  if (v6)
  {
    *(this + 31) = v6;
    operator delete(v6);
  }

  std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::destroy(*(this + 28));
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this + 1, off_1F3CDADE8);
}

uint64_t mdaf_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void morphun::analysis::EnAnalyzer::~EnAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB1A0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB1A0);
}

void morphun::analysis::Analyzer::~Analyzer(morphun::analysis::Analyzer *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  v4 = *(this + 2);
  v5 = this + 24;
  if (v4 != this + 24)
  {
    do
    {
      v6 = *(v4 + 4);
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

  std::__tree<std::u16string_view>::destroy(*(this + 6));
  std::__tree<std::u16string_view>::destroy(*(this + 3));
}

void std::__tree<std::u16string_view>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::u16string_view>::destroy(*a1);
    std::__tree<std::u16string_view>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::destroy(void **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::destroy(*a1);
    std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

void morphun::util::CFUtils::to_u16string(std::basic_string<char16_t> *this, const __CFString *a2)
{
  this->__r_.__value_.__r.__words[0] = 0;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  npc<__CFString const>(a2);
  Length = CFStringGetLength(a2);
  std::basic_string<char16_t>::resize(this, Length, 0);
  npc<__CFString const>(a2);
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = this;
  }

  else
  {
    v5 = this->__r_.__value_.__r.__words[0];
  }

  v6.location = 0;
  v6.length = Length;
  CFStringGetCharacters(a2, v6, v5);
}

void sub_1BE5715D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mca_createTokenChainString(uint64_t a1, const __CFString *a2)
{
  npc<morphun::analysis::ConfigurableAnalyzer>(a1);
  morphun::util::CFUtils::to_u16string(&__p, a2);
  v4 = (*(*a1 + 64))(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1BE57167C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    JUMPOUT(0x1BE571664);
  }

  _Unwind_Resume(exception_object);
}

void morphun::analysis::ConfigurableAnalyzer::createTokenChain(morphun::analysis::Analyzer *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    LODWORD(v4) = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  morphun::analysis::ConfigurableAnalyzer::createTokenChain(a1, 0, v3, v4);
}

void morphun::analysis::ConfigurableAnalyzer::createTokenChain(morphun::analysis::Analyzer *a1, const void *a2, UChar *s, int a4)
{
  if (a2)
  {
    v6 = (*(*a2 + 48))(a2);
    v7 = (*(*a2 + 56))(a2);
    if (v6)
    {
      v8 = v7;
      v9 = (*(*v6 + 24))(v6);
      v10 = npc<morphun::Token>(v8);
      if ((*v8)[4](v10) - v9 != a4)
      {
        exception = __cxa_allocate_exception(0x38uLL);
        (**a2)(&status);
        std::basic_string<char16_t>::insert(&status, "C", 0x28, v26);
        *&ut.magic = *&status.__r_.__value_.__l.__data_;
        ut.chunkNativeLimit = status.__r_.__value_.__r.__words[2];
        memset(&status, 0, sizeof(status));
        morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &ut);
      }

      v11 = *v8;
      v12 = **v8;
      {
        v13 = *v11;
        {
          v14 = *(a1 + 9) & 6;
          operator new();
        }
      }

      memset(&ut.p, 0, 64);
      memset(&ut, 0, 72);
      ut.magic = 878368812;
      ut.sizeOfStruct = 144;
      ut.context = a2;
LABEL_12:
      morphun::analysis::Analyzer::tokenStream(a1, &ut, &status);
      v17 = morphun::analysis::util::AttributeSource::addAttribute<morphun::analysis::tokenattributes::CharTermAttribute>(v30);
      if (v17)
      {
        v18 = *(*v17 - 96);
        if (morphun::analysis::util::AttributeSource::addAttribute<morphun::analysis::tokenattributes::OffsetAttribute>(v30))
        {
          morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::GrammemeAttribute>(v30);
          morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::LemmaMappingAttribute>(v30);
          if (morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::SkippedOffsetsAttribute>(v30))
          {
            operator new();
          }

          v21 = __cxa_allocate_exception(0x38uLL);
          morphun::exception::NullPointerException::NullPointerException(v21);
        }

        v20 = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(v20);
      }

      v19 = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(v19);
    }

    v22 = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(v22);
    v24 = morphun::exception::NullPointerException::~NullPointerException;
  }

  else
  {
    memset(&ut, 0, sizeof(ut));
    ut.magic = 878368812;
    ut.sizeOfStruct = 144;
    LODWORD(status.__r_.__value_.__l.__data_) = 0;
    utext_openUChars(&ut, s, a4, &status);
    data = status.__r_.__value_.__l.__data_;
    if (SLODWORD(status.__r_.__value_.__l.__data_) < 1)
    {
      goto LABEL_12;
    }

    v22 = __cxa_allocate_exception(0x38uLL);
    morphun::exception::ICUException::ICUException(v22, data);
    v24 = morphun::exception::ICUException::~ICUException;
  }

  __cxa_throw(v22, v23, v24);
}

void sub_1BE57223C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a43 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
    if ((v44 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v44)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v43);
  goto LABEL_8;
}

morphun::analysis::TokenStreamContainer *morphun::analysis::Analyzer::tokenStream@<X0>(morphun::analysis::Analyzer *this@<X0>, UText *a2@<X1>, morphun::analysis::TokenStreamContainer *a3@<X8>)
{
  v4 = *(this + 1);
  if (!v4 || (v7 = (*(*v4 + 24))(v4, this)) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v8 = v7;
  v9 = (*(*this + 32))(this, a2);
  (*(*v8 + 24))(v8, v9);

  return morphun::analysis::TokenStreamContainer::TokenStreamContainer(a3, this, v8);
}

morphun::analysis *morphun::analysis::Analyzer_ReuseStrategy::getStoredValue(morphun::analysis::Analyzer_ReuseStrategy *this, morphun::analysis::Analyzer *a2)
{
  v3 = npc<morphun::analysis::Analyzer>(a2);
  v4 = morphun::analysis::CLASS_MUTEX(v3);
  std::mutex::lock(v4);
  if (*(a2 + 7))
  {
    v5 = *(a2 + 5);
    v6 = v5[4];
    std::__tree<morphun::analysis::Analyzer_TokenStreamComponents *>::__remove_node_pointer(a2 + 5, v5);
    operator delete(v5);
    v7 = v4;
  }

  else
  {
    std::mutex::unlock(v4);
    v8 = a2 + 16;
    v6 = (*(*a2 + 24))(a2);
    v9 = morphun::analysis::CLASS_MUTEX(v6);
    std::mutex::lock(v9);
    std::__tree<morphun::analysis::Analyzer_TokenStreamComponents *>::__emplace_unique_key_args<morphun::analysis::Analyzer_TokenStreamComponents *,morphun::analysis::Analyzer_TokenStreamComponents * const&>(v8, v6);
    v7 = v9;
  }

  std::mutex::unlock(v7);
  return v6;
}

uint64_t morphun::analysis::CLASS_MUTEX(morphun::analysis *this)
{
  {
    operator new();
  }

  result = morphun::analysis::CLASS_MUTEX(void)::classMutex;
  if (!morphun::analysis::CLASS_MUTEX(void)::classMutex)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::util::Validate::notNull<morphun::analysis::util::AttributeFactory const>(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v4, L"Input argument <", a2);
    std::basic_string<char16_t>::append(&v4, ">", 9uLL);
    v5 = v4;
    memset(&v4, 0, sizeof(v4));
    morphun::exception::NullPointerException::NullPointerException(exception, &v5);
  }

  return result;
}

void sub_1BE572774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t morphun::CLASS_MUTEX(morphun *this)
{
  {
    operator new();
  }

  result = morphun::CLASS_MUTEX(void)::classMutex;
  if (!morphun::CLASS_MUTEX(void)::classMutex)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, void *a2)
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
    v6 = std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

void *morphun::Tokenizer::setStyle(void *result, int a2)
{
  v2 = result;
  v4 = result + 1;
  v3 = result[1];
  *(result + 10) = a2;
  result[2] = v3;
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v5 = morphun::tokenizer::NumberCleaver::modifyTokens;
    }

    else
    {
      v6 = morphun::tokenizer::NumberCleaver::modifyTokens;
      std::vector<void (*)(morphun::Tokenizer const*,std::u16string_view,morphun::Token_Head *)>::push_back[abi:se200100](result + 1, &v6);
      v5 = morphun::tokenizer::ExplicitTokenModifier::modifyTokens;
    }

    v6 = v5;
    result = std::vector<void (*)(morphun::Tokenizer const*,std::u16string_view,morphun::Token_Head *)>::push_back[abi:se200100](v4, &v6);
  }

  if (v2[8] >= 1)
  {
    v6 = morphun::tokenizer::OversizedTokenModifier::modifyTokens;
    return std::vector<void (*)(morphun::Tokenizer const*,std::u16string_view,morphun::Token_Head *)>::push_back[abi:se200100](v4, &v6);
  }

  return result;
}

void std::__allocate_at_least[abi:se200100]<std::allocator<void (*)(morphun::Tokenizer const*,std::u16string_view,morphun::Token_Head *)>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

uint64_t morphun::tokenizer::ICUTokenExtractorIterator::ICUTokenExtractorIterator(uint64_t a1)
{
  *a1 = &unk_1F3CD0698;
  v2 = CLASS_MUTEX();
  std::mutex::lock(v2);
  if (!gTokenizerCache)
  {
    operator new();
  }

  v3 = *(gTokenizerCache + 8);
  if (*gTokenizerCache != v3)
  {
    v4 = *(v3 - 8);
    *(gTokenizerCache + 8) = v3 - 8;
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_8:
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"BreakIterator returned null. Perhaps the data files could not be found.");
    morphun::exception::InvalidConfigurationException::InvalidConfigurationException(exception, &__dst);
  }

  LODWORD(__dst) = 0;
  {
    checkoutCachedTokenizer(void)::source = createBreakIterator();
  }

  v4 = ubrk_clone();
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_5:
  std::mutex::unlock(v2);
  ubrk_setText();
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  return a1;
}

void sub_1BE572C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::mutex::unlock(v15);
  _Unwind_Resume(a1);
}

uint64_t npc<morphun::tokenizer::TokenExtractorIterator>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *morphun::analysis::util::AttributeSource::addAttribute<morphun::analysis::tokenattributes::CharTermAttribute>(uint64_t a1)
{
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::find<std::type_index>((a1 + 8), "N7morphun8analysis15tokenattributes17CharTermAttributeE");
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      v5 = **v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (result)
    {
      std::shared_ptr<morphun::analysis::util::AttributeImpl>::shared_ptr[abi:se200100]<morphun::analysis::util::AttributeImpl,0>(&v6, result);
    }
  }

  return result;
}

void sub_1BE572E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::analysis::util::AttributeFactory_StaticImplementationAttributeFactory::createAttributeInstance(morphun::analysis::util::AttributeFactory_StaticImplementationAttributeFactory *this, const std::type_info *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::find<std::type_index>(this + 1, a2->__type_name);
  if (v3)
  {
    v4 = v3[6];
    if (!v4)
    {
      std::__throw_bad_function_call[abi:se200100]();
    }

    v5 = *(*v4 + 48);

    return v5();
  }

  else
  {
    v7 = *(**(this + 6) + 24);

    return v7();
  }
}

void *std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::find<std::type_index>(void *a1, uint64_t a2)
{
  v3 = a2;
  if (a2 < 0)
  {
    v4 = (a2 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v3)
      {
        if (std::type_info::operator==[abi:se200100](*(v12[2] + 8), a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v7)
          {
            v13 %= *&v7;
          }
        }

        else
        {
          v13 &= *&v7 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void sub_1BE573064(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *morphun::analysis::util::AttributeImpl::AttributeImpl(uint64_t *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 88)) = a2[1];
  *(this + *(*this - 56)) = a2[2];
  *(this + *(*this - 40)) = a2[3];
  return this;
}

uint64_t *morphun::analysis::tokenattributes::CharTermAttribute::CharTermAttribute(uint64_t *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 88)) = a2[1];
  *(this + *(*this - 56)) = a2[2];
  *(this + *(*this - 40)) = a2[3];
  return this;
}

void *morphun::analysis::util::AttributeSource::updateState(void *result, unint64_t *a2)
{
  v2 = result[7];
  if (!v2)
  {
LABEL_15:
    operator new();
  }

  v3 = *a2;
  v4 = result + 7;
  v5 = result[7];
  do
  {
    v6 = v5[4];
    v7 = v6 >= v3;
    v8 = v6 < v3;
    if (v7)
    {
      v4 = v5;
    }

    v5 = v5[v8];
  }

  while (v5);
  if (v4 == result + 7 || v3 < v4[4])
  {
    v9 = *a2;
    while (1)
    {
      while (1)
      {
        v10 = v2;
        v11 = v2[4];
        if (v9 >= v11)
        {
          break;
        }

        v2 = *v10;
        if (!*v10)
        {
          goto LABEL_15;
        }
      }

      if (v11 >= v9)
      {
        break;
      }

      v2 = v10[1];
      if (!v2)
      {
        goto LABEL_15;
      }
    }

    v13 = result[11];
    v12 = result[12];
    if (v13 >= v12)
    {
      v14 = result[10];
      v15 = ((v13 - v14) >> 3) + 1;
      if (v15 >> 61)
      {
        goto LABEL_29;
      }

      v16 = v12 - v14;
      v17 = v16 >> 2;
      if (v16 >> 2 <= v15)
      {
        v17 = v15;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeature *>>(v18);
      }
    }

    else if (v13)
    {
      *v13 = v9;
      result[11] = v13 + 1;
      return result;
    }

    __break(1u);
LABEL_29:
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  return result;
}

void std::__shared_weak_count::__release_shared[abi:se200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *morphun::analysis::util::AttributeSource::addAttributeImpl(void *a1, unint64_t *a2, uint64_t a3)
{
  result = std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::find<std::type_index>(a1 + 1, *(a3 + 8));
  if (!result)
  {
    v7 = a2[1];
    v21[0] = *a2;
    v21[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    morphun::analysis::util::AttributeSource::updateState(a1, v21);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:se200100](v7);
    }

    v8 = *(a3 + 8);
    v9 = v8;
    if (v8 < 0)
    {
      v10 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    v13 = *a2;
    v14 = a1[2];
    if (v14)
    {
      v15 = vcnt_s8(v14);
      v15.i16[0] = vaddlv_u8(v15);
      v16 = v15.u32[0];
      if (v15.u32[0] > 1uLL)
      {
        v17 = v9;
        if (v9 >= *&v14)
        {
          v17 = v9 % *&v14;
        }
      }

      else
      {
        v17 = (*&v14 - 1) & v9;
      }

      v18 = *(a1[1] + 8 * v17);
      if (v18)
      {
        v19 = *v18;
        if (*v18)
        {
          do
          {
            v20 = v19[1];
            if (v20 == v9)
            {
              result = std::type_info::operator==[abi:se200100](*(v19[2] + 8), v8);
              if (result)
              {
                return result;
              }
            }

            else
            {
              if (v16 > 1)
              {
                if (v20 >= *&v14)
                {
                  v20 %= *&v14;
                }
              }

              else
              {
                v20 &= *&v14 - 1;
              }

              if (v20 != v17)
              {
                break;
              }
            }

            v19 = *v19;
          }

          while (v19);
        }
      }
    }

    operator new();
  }

  return result;
}

void morphun::analysis::util::AttributeRegistrationReflector::reflect(void *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v4 = a1[3];
  v6[0] = a1[2];
  v6[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  morphun::analysis::util::AttributeSource::addAttributeImpl(v3, v6, a2);
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:se200100](v4);
  }
}

uint64_t npc<morphun::analysis::util::AttributeReflector>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

BOOL std::type_info::operator==[abi:se200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void sub_1BE573DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v34 - 129) < 0)
  {
    operator delete(*(v34 - 152));
  }

  MEMORY[0x1BFB49160](v32, v33);
  _Unwind_Resume(a1);
}

morphun::analysis::filter::ContractionExpandingFilter *morphun::analysis::filter::ContractionExpandingFilter::ContractionExpandingFilter(morphun::analysis::filter::ContractionExpandingFilter *this, morphun::analysis::TokenStream *a2, const morphun::util::ULocale *a3)
{
  *this = &unk_1F3CD9158;
  v5 = morphun::analysis::TokenFilter::TokenFilter(this, off_1F3CDA348, a2);
  *v5 = &unk_1F3CD15C8;
  *(v5 + 16) = 0;
  morphun::analysis::filter::LanguageExpansion::LanguageExpansion((v5 + 136), a3);
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  morphun::util::ULocale::ULocale(this + 312, a3);
  *(this + 16) = morphun::analysis::util::AttributeSource::addAttribute<morphun::analysis::tokenattributes::CharTermAttribute>(this);
  return this;
}

void sub_1BE574048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v10 + 36;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a10);
  morphun::analysis::filter::LanguageExpansion::~LanguageExpansion(v10 + 17);
  morphun::analysis::TokenFilter::~TokenFilter(v10, off_1F3CDA348);
  _Unwind_Resume(a1);
}

morphun::analysis::util::AttributeSource *morphun::analysis::TokenFilter::TokenFilter(morphun::analysis::TokenFilter *this, morphun::analysis::TokenStream *a2, uint64_t a3)
{
  result = morphun::analysis::util::AttributeSource::AttributeSource(this, (a2 + 16), a3);
  v6 = *(a2 + 1);
  *result = v6;
  *(result + *(v6 - 40)) = *(a2 + 4);
  v7 = *a2;
  *result = *a2;
  *(result + *(v7 - 40)) = *(a2 + 5);
  *(result + 15) = a3;
  return result;
}

morphun::analysis::util::AttributeSource *morphun::analysis::util::AttributeSource::AttributeSource(morphun::analysis::util::AttributeSource *this, morphun::analysis::util::AttributeSource *a2, uint64_t a3)
{
  v5 = *a2;
  *this = *a2;
  *(this + *(v5 - 40)) = *(a2 + 1);
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 9) = &unk_1F3CD1B50;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  *(this + 14) = 0;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "i");
  morphun::util::Validate::notNull<morphun::analysis::util::AttributeSource>(a3, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  npc<morphun::analysis::util::AttributeSource>(a3);
  if (this != a3)
  {
    *(this + 10) = *(a3 + 40);
    std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,void *> *>>(this + 1, *(a3 + 24));
  }

  npc<morphun::analysis::util::AttributeSource>(a3);
  if (this != a3)
  {
    std::__tree<std::shared_ptr<morphun::analysis::util::AttributeImpl>>::__assign_multi<std::__tree_const_iterator<std::shared_ptr<morphun::analysis::util::AttributeImpl>,std::__tree_node<std::shared_ptr<morphun::analysis::util::AttributeImpl>,void *> *,long>>(this + 48, *(a3 + 48), (a3 + 56));
  }

  npc<morphun::analysis::util::AttributeSource>(a3);
  if (this != a3)
  {
    std::vector<morphun::analysis::util::AttributeImpl *>::__assign_with_size[abi:se200100]<morphun::analysis::util::AttributeImpl **,morphun::analysis::util::AttributeImpl **>(this + 10, *(a3 + 80), *(a3 + 88), (*(a3 + 88) - *(a3 + 80)) >> 3);
  }

  npc<morphun::analysis::util::AttributeSource>(a3);
  *(this + 14) = *(a3 + 112);
  return this;
}

void sub_1BE574398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void sub_1BE574AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](a10);
  }

  _Unwind_Resume(exception_object);
}

morphun::analysis::TokenStream *morphun::analysis::TokenStream::TokenStream(morphun::analysis::TokenStream *this, uint64_t *a2)
{
  morphun::analysis::TokenStream::DEFAULT_TOKEN_ATTRIBUTE_FACTORY(this);
  morphun::analysis::util::AttributeSource::AttributeSource(this, (a2 + 1), morphun::analysis::TokenStream::DEFAULT_TOKEN_ATTRIBUTE_FACTORY(void)::DEFAULT_TOKEN_ATTRIBUTE_FACTORY_);
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 40)) = a2[3];
  return this;
}

morphun::analysis::util::AttributeSource *morphun::analysis::util::AttributeSource::AttributeSource(morphun::analysis::util::AttributeSource *this, const morphun::analysis::util::AttributeFactory *a2, uint64_t a3)
{
  v5 = *a2;
  *this = *a2;
  *(this + *(v5 - 40)) = *(a2 + 1);
  *(this + 8) = 0u;
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
  morphun::util::Validate::notNull<morphun::analysis::util::AttributeFactory const>(a3, __p);
  *(this + 14) = a3;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_1BE574DA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void morphun::TokenizerFactory::createTokenizer(morphun::TokenizerFactory *this, const morphun::util::ULocale *a2)
{
  v2 = this;
  v44 = 0;
  {
    if (this)
    {
      operator new();
    }
  }

  v3 = morphun::TOKENIZER_CACHE(void)::TOKENIZER_CACHE_;
  v4 = morphun::CLASS_MUTEX(this);
  std::mutex::lock(v4);
  npc<std::map<std::string,morphun::Tokenizer const*>>(v3);
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v3, v2 + 13);
  npc<std::map<std::string,morphun::Tokenizer const*>>(v3);
  v6 = v3 + 8;
  if (v3 + 8 == v5)
  {
    std::mutex::unlock(v4);
  }

  else
  {
    v44 = *(v5 + 56);
    std::mutex::unlock(v4);
    if (v44)
    {
      operator new();
    }
  }

  v42 = 0;
  v43 = 0;
  v41 = &v42;
  Config = morphun::util::ULocale::ULocale(v37, v2);
  v8 = v40;
  v9 = v39;
  if ((v40 & 0x80u) == 0)
  {
    v10 = v40;
  }

  else
  {
    v10 = v39;
  }

  if (v10)
  {
    while (1)
    {
      if ((v8 & 0x80u) == 0)
      {
        v11 = &v38;
      }

      else
      {
        v11 = v38;
      }

      if ((v8 & 0x80u) == 0)
      {
        v12 = v8;
      }

      else
      {
        v12 = v9;
      }

      morphun::util::StringViewUtils::to_u16string(v11, v12, __p);
      Config = morphun::readConfig(__p, &v41);
      v13 = Config;
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        break;
      }

      morphun::util::ULocale::getFallback(v37, __p);
      morphun::util::ULocale::operator=(v37, __p);
      v8 = v40;
      v9 = v39;
      if ((v40 & 0x80u) == 0)
      {
        v14 = v40;
      }

      else
      {
        v14 = v39;
      }

      if (!v14)
      {
        goto LABEL_23;
      }
    }

    v27 = v42;
    if (v42)
    {
      v28 = &v42;
      do
      {
        v29 = v27;
        v30 = v28;
        Config = std::less<std::u16string_view>::operator()[abi:se200100](v27[4], v27[5], word_1BE7E1582, 0x18uLL);
        if (Config)
        {
          v31 = 1;
        }

        else
        {
          v31 = 0;
        }

        if (!Config)
        {
          v28 = v29;
        }

        v27 = v29[v31];
      }

      while (v27);
      if (v28 != &v42)
      {
        v32 = Config ? v30 : v29;
        Config = std::less<std::u16string_view>::operator()[abi:se200100](word_1BE7E1582, 0x18uLL, v32[4], v32[5]);
        if ((Config & 1) == 0)
        {
          std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, v28[6]);
          Config = morphun::readConfig(__p, &v41);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

LABEL_23:
  if (!v43)
  {
    if (morphun::util::gLogLevel <= 3)
    {
      (**v2)(&v34, v2);
      std::basic_string<char16_t>::insert(&v34, L"The tokenizer for ", 0x12, v15);
      __dst = v34;
      memset(&v34, 0, sizeof(v34));
      Config = std::basic_string<char16_t>::append(&__dst, " ", 0x26uLL);
      __p[0] = __dst;
      memset(&__dst, 0, sizeof(__dst));
      if (morphun::util::gLogLevel <= 3)
      {
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0].__r_.__value_.__r.__words[0];
        }

        morphun::util::logToTopOfStackLogger(3, 0, v16);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }
    }

    v17 = morphun::util::LocaleUtils::ENGLISH(Config);
    v20 = *(v17 + 8);
    v18 = v17 + 8;
    v19 = v20;
    v21 = *(v18 + 8);
    if (*(v18 + 23) >= 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v18 = v19;
      v22 = v21;
    }

    morphun::util::StringViewUtils::to_u16string(v18, v22, __p);
    Config = morphun::readConfig(__p, &v41);
    v23 = Config;
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if ((v23 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x68uLL);
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"The tokenizer configuration files are missing.");
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "T");
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v34, "/");
      morphun::exception::MissingResourceException::MissingResourceException(exception, __p, &__dst, &v34);
    }
  }

  v24 = morphun::CLASS_MUTEX(Config);
  std::mutex::lock(v24);
  npc<std::map<std::string,morphun::Tokenizer const*>>(v3);
  v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v3, &v38);
  npc<std::map<std::string,morphun::Tokenizer const*>>(v3);
  if (v6 == v25)
  {
    npc<std::map<std::string,morphun::Tokenizer const*>>(v3);
    v26 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v3, v2 + 13);
    npc<std::map<std::string,morphun::Tokenizer const*>>(v3);
    if (v6 == v26)
    {
      morphun::TokenizerFactory::createTokenizerObject(v2, &v41);
    }

    v44 = *(v26 + 56);
  }

  else
  {
    v44 = *(v25 + 56);
    npc<std::map<std::string,morphun::Tokenizer const*>>(v3);
    std::__tree<std::__value_type<std::string,morphun::Tokenizer const*>,std::__map_value_compare<std::string,std::__value_type<std::string,morphun::Tokenizer const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,morphun::Tokenizer const*>>>::__emplace_unique_key_args<std::string,std::string const&,morphun::Tokenizer const*&>(v3, v2 + 13);
  }

  std::mutex::unlock(v24);
  std::__tree<std::u16string_view>::destroy(v42);
  operator new();
}

uint64_t npc<std::map<std::string,morphun::Tokenizer const*>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *std::vector<void (*)(morphun::Tokenizer const*,std::u16string_view,morphun::Token_Head *)>::push_back[abi:se200100](void *result, void *a2)
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
      std::__allocate_at_least[abi:se200100]<std::allocator<void (*)(morphun::Tokenizer const*,std::u16string_view,morphun::Token_Head *)>>(v8);
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

morphun::Tokenizer *morphun::Tokenizer::Tokenizer(morphun::Tokenizer *this, const morphun::tokenizer::TokenExtractor *a2)
{
  *this = &unk_1F3CD0BF8;
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 36) = 0x7FFFFFFFLL;
  *(this + 6) = a2;
  morphun::Tokenizer::setStyle(this, 1);
  return this;
}

void sub_1BE5756C0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::tokenizer::RegexSplitIterator::RegexSplitIterator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = &unk_1F3CD07B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 80) = xmmword_1BE695F80;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = xmmword_1BE695F70;
  *(a1 + 240) = -1;
  v8 = *(a2 + 144);
  if (v8)
  {
    icu4cxx::RegularExpression::RegularExpression(&v10, v8);
    if (*(a1 + 72) == 1)
    {
      uregex_close(*(a1 + 64));
    }

    *(a1 + 64) = v10;
    *(a1 + 72) = v11;
  }

  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 224) = xmmword_1BE695F70;
  *(a1 + 240) = -1;
  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::find<std::type_index>(void *a1, uint64_t a2)
{
  v3 = a2;
  if (a2 < 0)
  {
    v4 = (a2 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v3 == v13)
      {
        if (std::type_info::operator==[abi:se200100](*(v12[2] + 8), a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v7)
          {
            v13 %= *&v7;
          }
        }

        else
        {
          v13 &= *&v7 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

void morphun::analysis::util::AttributeSource::addAttributeImpl(void *a1, unint64_t *a2)
{
  v4 = a2[1];
  v10[0] = *a2;
  v10[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  morphun::analysis::util::AttributeSource::updateState(a1, v10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v4);
  }

  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = &unk_1F3CD1AE8;
  v8[0] = &unk_1F3CD1AE8;
  v8[1] = a1;
  v8[2] = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:se200100](v5);
    v7 = v8[0];
  }

  (*(**a2 + 80))(*a2, v8 + *(v7 - 8));
  v8[0] = &unk_1F3CD1AE8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v9);
  }
}

void sub_1BE575C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void morphun::analysis::tokenattributes::CharTermAttributeImpl::reflectWith(morphun::analysis::tokenattributes::CharTermAttributeImpl *this, morphun::analysis::util::AttributeReflector *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"term");
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void morphun::analysis::tokenattributes::PackedTokenAttributeImpl::reflectWith(int **this, morphun::analysis::util::AttributeReflector *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  morphun::analysis::tokenattributes::CharTermAttributeImpl::reflectWith(this, a2);
  npc<morphun::analysis::util::AttributeReflector>(a2);
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"startOffset");
  morphun::util::StringUtils::to_u16string(*(this + 2), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"endOffset");
  morphun::util::StringUtils::to_u16string(*(this + 3), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"startSkippedOffset");
  morphun::util::StringUtils::to_u16string(*(this + 4), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  memset(&__dst, 0, sizeof(__dst));
  v4 = this[3];
  for (i = this[4]; v4 != i; ++v4)
  {
    v6 = *v4;
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::basic_string<char16_t>::append(&__dst, ",", 1uLL);
    }

    morphun::util::StringUtils::to_u16string(v6, &__p);
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
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&__dst, p_p, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::operator+<char16_t>(&__p, "[", &__dst);
  std::basic_string<char16_t>::append(&__p, "]", 1uLL);
  v15[0] = __p.__r_.__value_.__l.__size_;
  v10 = __p.__r_.__value_.__r.__words[0];
  *(v15 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
  v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  memset(&__p, 0, sizeof(__p));
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    __dst.__r_.__value_.__r.__words[0] = v10;
    __dst.__r_.__value_.__l.__size_ = v15[0];
    *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v15 + 7);
    *(&__dst.__r_.__value_.__s + 23) = v11;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    __dst.__r_.__value_.__r.__words[0] = v10;
    __dst.__r_.__value_.__l.__size_ = v15[0];
    *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v15 + 7);
    *(&__dst.__r_.__value_.__s + 23) = v11;
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, "s");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1BE5760A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:se200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void morphun::util::StringUtils::to_u16string(morphun::util::StringUtils *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  std::to_string(&__p, this);
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
    v4 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v4 = __p.__r_.__value_.__r.__words[1];
  }

  morphun::util::StringViewUtils::convert(v6, p_p, v4);
  if (SHIBYTE(v7) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a2, v6[0], v6[1]);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v6;
    a2->__r_.__value_.__r.__words[2] = v7;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

{
  morphun::util::StringUtils::to_u16string(this, a2);
}

void sub_1BE5763DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **std::operator+<char16_t>(uint64_t a1, void **a2, uint64_t a3)
{
  if (*a2)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
    }

    while (*(a2 + ++v5));
  }

  else
  {
    v6 = 0;
  }

  if (*(a3 + 23) >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  result = std::basic_string<char16_t>::basic_string[abi:se200100](a1, v8 + v6);
  if (*(result + 23) < 0)
  {
    result = *result;
  }

  if (v6 < 0)
  {
    goto LABEL_29;
  }

  v10 = result + 2 * v6;
  if (result <= a2 && v10 > a2)
  {
    goto LABEL_29;
  }

  if (v6)
  {
    result = memmove(result, a2, 2 * v6);
  }

  v12 = *(a3 + 23) >= 0 ? a3 : *a3;
  if (v8 < 0 || ((v13 = &v10[2 * v8], v12 >= v10) ? (v14 = v13 > v12) : (v14 = 0), v14))
  {
LABEL_29:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      result = memmove(v10, v12, 2 * v8);
    }

    *v13 = 0;
  }

  return result;
}

void *morphun::analysis::util::AttributeSource::addAttribute<morphun::analysis::tokenattributes::OffsetAttribute>(uint64_t a1)
{
  v2 = std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::find<std::type_index>((a1 + 8), "N7morphun8analysis15tokenattributes15OffsetAttributeE");
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      v5 = **v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (result)
    {
      std::shared_ptr<morphun::analysis::util::AttributeImpl>::shared_ptr[abi:se200100]<morphun::analysis::util::AttributeImpl,0>(&v6, result);
    }
  }

  return result;
}

void sub_1BE5765E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::util::Validate::notNull<morphun::analysis::util::AttributeSource>(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v4, L"Input argument <", a2);
    std::basic_string<char16_t>::append(&v4, ">", 9uLL);
    v5 = v4;
    memset(&v4, 0, sizeof(v4));
    morphun::exception::NullPointerException::NullPointerException(exception, &v5);
  }

  return result;
}

void sub_1BE5766B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,void *> *>>(void *a1, void *a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v6[2] = a2[2];
      v6[3] = a2[3];
      v7 = *v6;
      std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::__node_insert_multi(a1, v6);
      a2 = *a2;
      v6 = v7;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v8 = *v6;
      operator delete(v6);
      v6 = v8;
    }

    while (v8);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_1BE576824(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t npc<morphun::analysis::util::AttributeSource>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v4 = *(a2[2] + 8);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  a2[1] = v4;
  v8 = *(a1 + 8);
  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v8 || (v10 * v8) < v9)
  {
    v11 = 1;
    if (v8 >= 3)
    {
      v11 = (v8 & (v8 - 1)) != 0;
    }

    v12 = v11 | (2 * v8);
    v13 = vcvtps_u32_f32(v9 / v10);
    if (v12 <= v13)
    {
      prime = v13;
    }

    else
    {
      prime = v12;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v8 = *(a1 + 8);
    }

    if (prime > v8)
    {
LABEL_16:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:se200100]();
    }

    if (prime < v8)
    {
      v15 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v8 < 3 || (v16 = vcnt_s8(v8), v16.i16[0] = vaddlv_u8(v16), v16.u32[0] > 1uLL))
      {
        v15 = std::__next_prime(v15);
      }

      else
      {
        v17 = 1 << -__clz(v15 - 1);
        if (v15 >= 2)
        {
          v15 = v17;
        }
      }

      if (prime <= v15)
      {
        prime = v15;
      }

      if (prime >= v8)
      {
        v8 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_16;
        }

        v18 = *a1;
        *a1 = 0;
        if (v18)
        {
          operator delete(v18);
        }

        v8 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v19 = vcnt_s8(v8);
  v19.i16[0] = vaddlv_u8(v19);
  v20 = v19.u32[0];
  if (v19.u32[0] > 1uLL)
  {
    v21 = v4;
    if (v8 <= v4)
    {
      v21 = v4 % v8;
    }
  }

  else
  {
    v21 = (v8 - 1) & v4;
  }

  v22 = *(*a1 + 8 * v21);
  v31 = *a1;
  if (v22)
  {
    v23 = *v22;
    if (*v22)
    {
      v24 = 0;
      do
      {
        v25 = v23;
        v26 = v23[1];
        if (v20 > 1)
        {
          v27 = v26;
          if (v26 >= v8)
          {
            v27 = v26 % v8;
          }
        }

        else
        {
          v27 = v26 & (v8 - 1);
        }

        if (v27 != v21)
        {
          break;
        }

        v28 = v26 == v4 && std::type_info::operator==[abi:se200100](*(v25[2] + 8), *(a2[2] + 8));
        if ((v24 & (v28 != (v24 & 1))) != 0)
        {
          break;
        }

        v24 |= v28 != (v24 & 1);
        v23 = *v25;
        v22 = v25;
      }

      while (*v25);
    }
  }

  v29 = a2[1];
  if (v20 > 1)
  {
    if (v29 >= v8)
    {
      v29 %= v8;
    }
  }

  else
  {
    v29 &= v8 - 1;
  }

  if (!v22)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v31[v29] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_68;
    }

    v30 = *(*a2 + 8);
    if (v20 > 1)
    {
      if (v30 >= v8)
      {
        v30 %= v8;
      }
    }

    else
    {
      v30 &= v8 - 1;
    }

LABEL_67:
    *(*a1 + 8 * v30) = a2;
    goto LABEL_68;
  }

  *a2 = *v22;
  *v22 = a2;
  if (*a2)
  {
    v30 = *(*a2 + 8);
    if (v20 > 1)
    {
      if (v30 >= v8)
      {
        v30 %= v8;
      }
    }

    else
    {
      v30 &= v8 - 1;
    }

    if (v30 != v29)
    {
      goto LABEL_67;
    }
  }

LABEL_68:
  ++*(a1 + 24);
}

void std::__tree<std::shared_ptr<morphun::analysis::util::AttributeImpl>>::__assign_multi<std::__tree_const_iterator<std::shared_ptr<morphun::analysis::util::AttributeImpl>,std::__tree_node<std::shared_ptr<morphun::analysis::util::AttributeImpl>,void *> *,long>>(uint64_t a1, void *a2, void *a3)
{
  if (!*(a1 + 16))
  {
    goto LABEL_35;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v12 = 0;
LABEL_34:
    std::__tree<std::shared_ptr<morphun::analysis::util::AttributeImpl>>::destroy(v12);
    goto LABEL_35;
  }

  v10 = std::__tree<std::basic_string<char16_t>>::_DetachedTreeCache::__detach_next(v9);
  if (a2 == a3)
  {
    v11 = v9;
  }

  else
  {
    v13 = a2;
    do
    {
      v11 = v10;
      v15 = v13[4];
      v14 = v13[5];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v16 = v9[5];
      v9[4] = v15;
      v9[5] = v14;
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:se200100](v16);
      }

      v17 = *v8;
      v18 = (a1 + 8);
      v19 = (a1 + 8);
      if (*v8)
      {
        do
        {
          while (1)
          {
            v18 = v17;
            if (v9[4] >= v17[4])
            {
              break;
            }

            v17 = *v17;
            v19 = v18;
            if (!*v18)
            {
              goto LABEL_20;
            }
          }

          v17 = v17[1];
        }

        while (v17);
        v19 = v18 + 1;
      }

LABEL_20:
      std::__tree<std::u16string_view>::__insert_node_at(a1, v18, v19, v9);
      if (v10)
      {
        v10 = std::__tree<std::basic_string<char16_t>>::_DetachedTreeCache::__detach_next(v10);
      }

      else
      {
        v10 = 0;
      }

      v20 = v13[1];
      if (v20)
      {
        do
        {
          a2 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          a2 = v13[2];
          v21 = *a2 == v13;
          v13 = a2;
        }

        while (!v21);
      }

      if (!v11)
      {
        break;
      }

      v9 = v11;
      v13 = a2;
    }

    while (a2 != a3);
  }

  std::__tree<std::shared_ptr<morphun::analysis::util::AttributeImpl>>::destroy(v11);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    v12 = v10;
    goto LABEL_34;
  }

LABEL_35:
  if (a2 != a3)
  {
    operator new();
  }
}

void *std::vector<morphun::analysis::util::AttributeImpl *>::__assign_with_size[abi:se200100]<morphun::analysis::util::AttributeImpl **,morphun::analysis::util::AttributeImpl **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dialog::SemanticFeature *>>(v10);
      }
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

morphun::analysis::filter::LanguageExpansion *morphun::analysis::filter::LanguageExpansion::LanguageExpansion(morphun::analysis::filter::LanguageExpansion *this, const morphun::util::ULocale *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  v45 = (this + 8);
  *this = this + 8;
  morphun::util::ULocale::ULocale(this + 24, a2);
  v48[0] = 0;
  v48[1] = 0;
  v49 = 0;
  v6 = *(a2 + 1);
  v5 = a2 + 8;
  v4 = v6;
  v7 = v5[23];
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    LODWORD(v9) = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 1);
  }

  morphun::util::StringViewUtils::to_u16string(v8, v9, &v65);
  v10 = HIBYTE(v65.__r_.__value_.__r.__words[2]);
  v11 = v65.__r_.__value_.__r.__words[0];
  v12 = v65.__r_.__value_.__r.__words[1];
  v14 = morphun::util::LocaleUtils::ROOT(v13);
  if ((v10 & 0x80u) == 0)
  {
    v15 = &v65;
  }

  else
  {
    v15 = v11;
  }

  if ((v10 & 0x80u) == 0)
  {
    v16 = v10;
  }

  else
  {
    v16 = v12;
  }

  morphun::util::StringViewUtils::lowercase(v48, v15, v16, v14);
  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  std::operator+<char16_t>(&v46, &morphun::analysis::filter::BASE_NAME, v48);
  std::basic_string<char16_t>::append(&v46, L".csv", 4uLL);
  __p = v46;
  memset(&v46, 0, sizeof(v46));
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

  String = morphun::resources::DataResource::getString(p_p, size, 1);
  if (String)
  {
    v71 = 0;
    v72 = 0;
    v73 = 0;
    if (*String)
    {
      v20 = 0;
      do
      {
        v21 = v20 + 1;
      }

      while (String[++v20]);
    }

    else
    {
      v21 = 0;
    }

    *&v65.__r_.__value_.__l.__data_ = 0uLL;
    v65.__r_.__value_.__r.__words[2] = "\n";
    v66 = 1;
    v67 = String;
    v68 = v21;
    v69 = v21;
    v70 = 0;
    if (v21 >= 1)
    {
      morphun::util::DelimitedStringIterator::getNext(&v65);
    }

    while (v70 < v69 || v65.__r_.__value_.__l.__size_ != 0)
    {
      v58 = 0;
      v59 = 0;
      v60 = ",";
      v61 = 1;
      v62 = *&v65.__r_.__value_.__l.__data_;
      v63 = v65.__r_.__value_.__r.__words[1];
      v64 = 0;
      if (SLODWORD(v65.__r_.__value_.__r.__words[1]) >= 1)
      {
        morphun::util::DelimitedStringIterator::getNext(&v58);
      }

      v26 = 0;
      v27 = 0;
      while (1)
      {
        v28 = v59;
        if (v64 >= v63 && v59 == 0)
        {
          break;
        }

        v30 = v58;
        morphun::util::StringViewUtils::lowercase(&v71, v58, v59, this + 24);
        v31 = HIBYTE(v73);
        if (v73 >= 0)
        {
          v32 = &v71;
        }

        else
        {
          v32 = v71;
        }

        if (v73 < 0)
        {
          v31 = v72;
        }

        if (v28 != v31)
        {
          goto LABEL_77;
        }

        if (v28)
        {
          while (*v32 == *v30)
          {
            ++v30;
            v32 = (v32 + 2);
            if (!--v28)
            {
              goto LABEL_56;
            }
          }

LABEL_77:
          exception = __cxa_allocate_exception(0x38uLL);
          std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "S");
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = &__p;
          }

          else
          {
            v39 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v40 = __p.__r_.__value_.__l.__size_;
          }

          std::basic_string<char16_t>::append(&__dst, v39, v40);
          v55 = __dst;
          memset(&__dst, 0, sizeof(__dst));
          std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v52, ":");
          if ((v53 & 0x80u) == 0)
          {
            v41 = v52;
          }

          else
          {
            v41 = v52[0];
          }

          if ((v53 & 0x80u) == 0)
          {
            v42 = v53;
          }

          else
          {
            v42 = v52[1];
          }

          std::basic_string<char16_t>::append(&v55, v41, v42);
          v56 = v55;
          memset(&v55, 0, sizeof(v55));
          std::basic_string<char16_t>::basic_string<std::u16string_view,0>(v50, v58, v59);
          if ((v51 & 0x80u) == 0)
          {
            v43 = v50;
          }

          else
          {
            v43 = v50[0];
          }

          if ((v51 & 0x80u) == 0)
          {
            v44 = v51;
          }

          else
          {
            v44 = v50[1];
          }

          std::basic_string<char16_t>::append(&v56, v43, v44);
          v57 = v56;
          memset(&v56, 0, sizeof(v56));
          morphun::exception::InvalidConfigurationException::InvalidConfigurationException(exception, &v57);
        }

LABEL_56:
        if (v27)
        {
          std::__allocate_at_least[abi:se200100]<std::allocator<std::u16string_view>>(1uLL);
        }

        v26 = v58;
        v27 = v59;
        morphun::util::DelimitedStringIterator::operator++(&v58);
      }

      v33 = *v45;
      if (!*v45)
      {
LABEL_65:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v34 = v33;
          v35 = *(v33 + 32);
          v36 = *(v33 + 40);
          if (!std::less<std::u16string_view>::operator()[abi:se200100](v26, v27, v35, v36))
          {
            break;
          }

          v33 = *v34;
          if (!*v34)
          {
            goto LABEL_65;
          }
        }

        if (!std::less<std::u16string_view>::operator()[abi:se200100](v35, v36, v26, v27))
        {
          break;
        }

        v33 = v34[1];
        if (!v33)
        {
          goto LABEL_65;
        }
      }

      morphun::util::DelimitedStringIterator::operator++(&v65);
    }

    if (SHIBYTE(v73) < 0)
    {
      v24 = v71;
      goto LABEL_69;
    }
  }

  else
  {
    std::operator+<char16_t>(&v65, "E", &__p);
    if (morphun::util::gLogLevel <= 1)
    {
      if ((v65.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v65;
      }

      else
      {
        v23 = v65.__r_.__value_.__r.__words[0];
      }

      morphun::util::logToTopOfStackLogger(1, 0, v23);
    }

    if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v65.__r_.__value_.__r.__words[0];
LABEL_69:
      operator delete(v24);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[0]);
  }

  return this;
}

void sub_1BE577700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v29 - 153) < 0)
  {
    operator delete(*(v29 - 176));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  std::__tree<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>>>::destroy(*a9);
  _Unwind_Resume(a1);
}

void morphun::util::StringViewUtils::to_u16string(const char *a1@<X0>, int32_t a2@<W1>, std::basic_string<char16_t> *a3@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  morphun::util::StringViewUtils::convert(__p, a1, a2);
  if (SHIBYTE(v5) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a3, __p[0], __p[1]);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *__p;
    a3->__r_.__value_.__r.__words[2] = v5;
  }
}

void sub_1BE577948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::util::LocaleUtils::ROOT(morphun::util::LocaleUtils *this)
{
  {
    operator new();
  }

  return npc<morphun::util::ULocale>(morphun::util::LocaleUtils::ROOT(void)::ROOT_);
}

void sub_1BE577A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t morphun::util::StringViewUtils::lowercase(uint64_t a1, const UChar *a2, int32_t a3, uint64_t a4)
{
  v8 = npc<std::basic_string<char16_t>>(a1);
  std::basic_string<char16_t>::resize(v8, a3, 0);
  pErrorCode = U_ZERO_ERROR;
  v9 = npc<std::basic_string<char16_t>>(a1);
  if (*(a1 + 23) < 0)
  {
    v9 = *a1;
  }

  v10 = *(a4 + 104);
  if (*(a4 + 127) >= 0)
  {
    v11 = (a4 + 104);
  }

  else
  {
    v11 = *(a4 + 104);
  }

  v12 = u_strToLower(v9, a3, a2, a3, v11, &pErrorCode);
  v13 = v12;
  v14 = pErrorCode;
  if (pErrorCode == U_BUFFER_OVERFLOW_ERROR)
  {
    std::basic_string<char16_t>::resize(a1, v12, 0);
    pErrorCode = U_ZERO_ERROR;
    v15 = a1;
    if (*(a1 + 23) < 0)
    {
      v15 = *a1;
    }

    if (*(a4 + 127) >= 0)
    {
      v16 = (a4 + 104);
    }

    else
    {
      v16 = *(a4 + 104);
    }

    v13 = u_strToLower(v15, v13, a2, a3, v16, &pErrorCode);
    v14 = pErrorCode;
  }

  if (v14 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v19 = v14;
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::ICUException::ICUException(exception, v19);
  }

  v17 = *(a1 + 23);
  if (v17 < 0)
  {
    v17 = *(a1 + 8);
  }

  if (v13 != v17)
  {
    std::basic_string<char16_t>::resize(a1, v13, 0);
  }

  return a1;
}

void std::__throw_length_error[abi:se200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:se200100](exception, a1);
  __cxa_throw(exception, off_1E8058078, MEMORY[0x1E69E5278]);
}

void std::basic_string<char16_t>::__grow_by_and_replace(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __old_cap, std::basic_string<char16_t>::size_type __delta_cap, std::basic_string<char16_t>::size_type __old_sz, std::basic_string<char16_t>::size_type __n_copy, std::basic_string<char16_t>::size_type __n_del, std::basic_string<char16_t>::size_type __n_add, const std::basic_string<char16_t>::value_type *__p_new_stuff)
{
  if (0x7FFFFFFFFFFFFFF6 - __old_cap >= __delta_cap)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v8 = this->__r_.__value_.__r.__words[0];
    }

    v9 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v9 = 2 * __old_cap;
    }

    if ((v9 | 3) == 0xB)
    {
      v10 = 13;
    }

    else
    {
      v10 = (v9 | 3) + 1;
    }

    v11 = v9 >= 0xB;
    v12 = 11;
    if (v11)
    {
      v12 = v10;
    }

    if (__old_cap > 0x3FFFFFFFFFFFFFF2)
    {
      v13 = 0x7FFFFFFFFFFFFFF7;
    }

    else
    {
      v13 = v12;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v13);
  }

  std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
}

uint64_t morphun::resources::DataResource::getString(uint64_t *a1, unint64_t a2, char a3)
{
  v21 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  v6 = morphun::resources::DataResource::getString(std::u16string_view,BOOL)::resources;
  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](a1, 2 * a2);
  v8 = v6[1];
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v7;
      if (v7 >= *&v8)
      {
        v10 = v7 % *&v8;
      }
    }

    else
    {
      v10 = (*&v8 - 1) & v7;
    }

    v11 = *(*v6 + 8 * v10);
    if (v11)
    {
      for (i = *v11; i; i = *i)
      {
        v13 = i[1];
        if (v13 == v7)
        {
          if (i[3] == a2)
          {
            if (!a2)
            {
LABEL_25:
              result = i[4];
              goto LABEL_24;
            }

            v14 = i[2];
            v15 = a2;
            v16 = a1;
            while (*v16 == *v14)
            {
              ++v14;
              v16 = (v16 + 2);
              if (!--v15)
              {
                goto LABEL_25;
              }
            }
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v13 >= *&v8)
            {
              v13 %= *&v8;
            }
          }

          else
          {
            v13 &= *&v8 - 1;
          }

          if (v13 != v10)
          {
            break;
          }
        }
      }
    }
  }

  if ((a3 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string<std::u16string_view,0>(v20, a1, a2);
    morphun::exception::FileNotFoundException::FileNotFoundException(exception, v20);
  }

  result = 0;
LABEL_24:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE578084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x1BFB49160](v14, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

UChar *morphun::util::DelimitedStringIterator::getNext(UChar *this)
{
  v1 = this;
  v2 = *(this + 12);
  v3 = *(this + 13);
  if (v2 <= v3)
  {
    *this = &word_1BE80F080;
    *(this + 1) = 0;
  }

  else
  {
    v4 = (*(this + 4) + 2 * v3);
    this = u_strFindFirst(v4, v2 - v3, *(this + 2), *(this + 6));
    v5 = *(v1 + 13);
    v6 = *(v1 + 5);
    if (this)
    {
      v7 = v6 >= v5;
      v8 = v6 - v5;
      if (!v7)
      {
LABEL_14:
        std::__throw_out_of_range[abi:se200100]("string_view::substr");
      }

      v9 = *(v1 + 4);
      v10 = v9 + 2 * v5;
      if (v8 >= ((this - v4) >> 1))
      {
        v8 = ((this - v4) >> 1);
      }

      *v1 = v10;
      *(v1 + 1) = v8;
      v11 = ((this - v9) >> 1) + *(v1 + 6);
    }

    else
    {
      v12 = v6 - v5;
      if (v6 < v5)
      {
        goto LABEL_14;
      }

      v11 = *(v1 + 12);
      v13 = v11 - v5;
      v14 = *(v1 + 4) + 2 * v5;
      if (v12 >= v13)
      {
        v12 = v13;
      }

      *v1 = v14;
      *(v1 + 1) = v12;
    }

    *(v1 + 13) = v11;
  }

  return this;
}

morphun::util::DelimitedStringIterator *morphun::util::DelimitedStringIterator::operator++(morphun::util::DelimitedStringIterator *this)
{
  if (*(this + 13) >= *(this + 12) && !*(this + 1))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::StringIndexOutOfBoundsException::StringIndexOutOfBoundsException(exception);
  }

  morphun::util::DelimitedStringIterator::getNext(this);
  return this;
}

void std::__allocate_at_least[abi:se200100]<std::allocator<std::u16string_view>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

uint64_t std::vector<std::u16string_view>::__init_with_size[abi:se200100]<std::u16string_view*,std::u16string_view*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::u16string_view>::__vallocate[abi:se200100](result, a4);
  }

  return result;
}

void sub_1BE578710(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::u16string_view>::__vallocate[abi:se200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<std::u16string_view>>(a2);
  }

  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
}

BOOL std::less<std::u16string_view>::operator()[abi:se200100](unsigned __int16 *a1, unint64_t a2, unsigned __int16 *a3, unint64_t a4)
{
  if (a4 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a4;
  }

  if (v4)
  {
    do
    {
      v5 = *a1;
      v6 = *a3;
      if (v5 < v6)
      {
        return 1;
      }

      if (v6 < v5)
      {
        return 0;
      }

      ++a1;
      ++a3;
    }

    while (--v4);
  }

  return a2 != a4 && a2 < a4;
}

void std::basic_string<char16_t>::__grow_by(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __old_cap, std::basic_string<char16_t>::size_type __delta_cap, std::basic_string<char16_t>::size_type __old_sz, std::basic_string<char16_t>::size_type __n_copy, std::basic_string<char16_t>::size_type __n_del, std::basic_string<char16_t>::size_type __n_add)
{
  if (0x7FFFFFFFFFFFFFF7 - __old_cap >= __delta_cap)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    v8 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v8 = 2 * __old_cap;
    }

    if ((v8 | 3) == 0xB)
    {
      v9 = 13;
    }

    else
    {
      v9 = (v8 | 3) + 1;
    }

    v10 = v8 >= 0xB;
    v11 = 11;
    if (v10)
    {
      v11 = v9;
    }

    if (__old_cap <= 0x3FFFFFFFFFFFFFF2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFF7;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v12);
  }

  std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
}

void std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

void sub_1BE5789A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::basic_string<char16_t>>::__vallocate[abi:se200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(a2);
  }

  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
}

std::basic_string<char16_t> *std::__uninitialized_allocator_copy_impl[abi:se200100]<std::allocator<std::basic_string<char16_t>>,std::basic_string<char16_t> const*,std::basic_string<char16_t> const*,std::basic_string<char16_t>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::basic_string<char16_t> *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v4, v6);
      v6 = (v6 + 24);
      v4 = ++v11;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::basic_string<char16_t>>,std::basic_string<char16_t>*>>::~__exception_guard_exceptions[abi:se200100](v8);
  return v4;
}

std::basic_string<char16_t> *std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(std::basic_string<char16_t> *this, __int128 *a2)
{
  if (this)
  {
    v2 = this;
    if (*(a2 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      this->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return this;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::basic_string<char16_t>>,std::basic_string<char16_t>*>>::~__exception_guard_exceptions[abi:se200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

morphun::analysis::TokenFilter *morphun::analysis::filter::SuffixFilter::SuffixFilter(morphun::analysis::TokenFilter *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_1F3CD9158;
  v5 = morphun::analysis::TokenFilter::TokenFilter(a1, off_1F3CDA570, a2);
  *v5 = &unk_1F3CD18F0;
  *(v5 + 9) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 20) = 0;
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(v5 + 144, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  *(a1 + 17) = morphun::analysis::util::AttributeSource::addAttribute<morphun::analysis::tokenattributes::CharTermAttribute>(a1);
  return a1;
}

void sub_1BE578C34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](va);
  morphun::analysis::TokenFilter::~TokenFilter(v2, off_1F3CDA570);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::basic_string<char16_t>>::__vallocate[abi:se200100](result, a4);
  }

  return result;
}

void sub_1BE578CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a9);
  _Unwind_Resume(a1);
}

std::basic_string<char16_t> *std::__uninitialized_allocator_copy_impl[abi:se200100]<std::allocator<std::basic_string<char16_t>>,std::basic_string<char16_t>*,std::basic_string<char16_t>*,std::basic_string<char16_t>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::basic_string<char16_t> *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v4, v6);
      v6 = (v6 + 24);
      v4 = ++v11;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::basic_string<char16_t>>,std::basic_string<char16_t>*>>::~__exception_guard_exceptions[abi:se200100](v8);
  return v4;
}

void std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::basic_string<char16_t>>::clear[abi:se200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::basic_string<char16_t>>::clear[abi:se200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::VERBTYPE_INFINITIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::VERBTYPE_INFINITIVE(void)::VERBTYPE_INFINITIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE578EC4(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void sub_1BE578F58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::POS_PROPER_NOUN(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::POS_PROPER_NOUN(void)::POS_PROPER_NOUN_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE579004(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::POS_ADJECTIVE(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::POS_ADJECTIVE(void)::POS_ADJECTIVE_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE5790CC(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::POS_NOUN(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::POS_NOUN(void)::POS_NOUN_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE579194(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(void)::NUMBER_PLURAL_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE57925C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(morphun::grammar::synthesis::GrammemeConstants *this)
{
  {
    operator new();
  }

  v1 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(void)::NUMBER_SINGULAR_;

  return npc<std::basic_string<char16_t>>(v1);
}

void sub_1BE579324(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

void std::basic_string<char16_t>::__init_copy_ctor_external(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __sz)
{
  if (__sz > 0xA)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      if ((__sz | 3) == 0xB)
      {
        v3 = 13;
      }

      else
      {
        v3 = (__sz | 3) + 1;
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v3);
    }

LABEL_14:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v4 = __sz + 1;
  if (this <= __s && this + 2 * v4 > __s)
  {
    __break(1u);
    goto LABEL_14;
  }

  memmove(this, __s, 2 * v4);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::u16string_view>>,std::vector<std::u16string_view>*>>::~__exception_guard_exceptions[abi:se200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

uint64_t morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::StemmableDictionaryLookupLemmaFilter(uint64_t a1, uint64_t *a2, uint64_t a3, morphun::dictionary::DictionaryMetaData *a4, uint64_t *a5, void *a6, uint64_t **a7, int a8, uint64_t *a9, uint64_t *a10)
{
  v17 = morphun::analysis::TokenFilter::TokenFilter(a1, (a2 + 1), a3);
  v18 = *a2;
  *v17 = *a2;
  *(a1 + *(v18 - 40)) = a2[7];
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = &unk_1F3CD9158;
  morphun::analysis::DictionaryExposableMorphology::DictionaryExposableMorphology((a1 + 160), off_1F3CDA8F0, a4);
  *(a1 + 160) = &unk_1F3CD2130;
  morphun::analysis::MorphologicalAnalyzer::convertLemmaAttributes((a1 + 312), *(a1 + 168), a5);
  morphun::analysis::convertGrammemePriorities((a1 + 336), *(a1 + 168), a6);
  morphun::analysis::convertIgnoreGrammemes((a1 + 360), *(a1 + 168), a7);
  v19 = *(a1 + 168);
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 384) = v19;
  *(a1 + 408) = a8;
  morphun::util::ULocale::ULocale(a1 + 416, a1 + 184);
  *(a1 + 128) = morphun::analysis::util::AttributeSource::addAttribute<morphun::analysis::tokenattributes::CharTermAttribute>(a1);
  BinaryProperties = morphun::dictionary::DictionaryMetaData::getBinaryProperties(*(a1 + 384), (a1 + 400), a9);
  morphun::util::Validate::notNull<long long>(BinaryProperties);
  if (*a10 != a10[1])
  {
    v21 = morphun::dictionary::DictionaryMetaData::getBinaryProperties(*(a1 + 384), (a1 + 392), a10);
    morphun::util::Validate::notNull<long long>(v21);
  }

  return a1;
}

void sub_1BE579758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  morphun::analysis::TokenFilter::~TokenFilter(v10, (v11 + 8));
  _Unwind_Resume(a1);
}

morphun::analysis::DictionaryExposableMorphology *morphun::analysis::DictionaryExposableMorphology::DictionaryExposableMorphology(morphun::analysis::DictionaryExposableMorphology *this, const morphun::util::ULocale *a2, morphun::dictionary::DictionaryMetaData *a3)
{
  v5 = *a2;
  *this = *a2;
  *(this + *(v5 - 40)) = *(a2 + 1);
  Dictionary = morphun::dictionary::DictionaryMetaData::createDictionary(a3, a2);
  *(this + 1) = npc<morphun::dictionary::DictionaryMetaData const>(Dictionary);
  *(this + 2) = morphun::dictionary::Inflector::getInflector(a3, v7);
  morphun::util::ULocale::ULocale(this + 24, a3);
  return this;
}

uint64_t morphun::dictionary::DictionaryMetaData::createDictionary(morphun::dictionary::DictionaryMetaData *this, const morphun::util::ULocale *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  v3 = morphun::dictionary::CLASS_MUTEX(void)::classMutex;
  if (!morphun::dictionary::CLASS_MUTEX(void)::classMutex)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  std::mutex::lock(morphun::dictionary::CLASS_MUTEX(void)::classMutex);
  {
    operator new();
  }

  v5 = morphun::dictionary::DICTIONARY_CACHE(void)::DICTIONARY_CACHE_ + 8;
  v4 = *(morphun::dictionary::DICTIONARY_CACHE(void)::DICTIONARY_CACHE_ + 8);
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = morphun::dictionary::DICTIONARY_CACHE(void)::DICTIONARY_CACHE_ + 8;
  do
  {
    v7 = std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>((v4 + 32), this + 1);
    if ((v7 & 0x80u) == 0)
    {
      v6 = v4;
    }

    v4 = *(v4 + ((v7 >> 4) & 8));
  }

  while (v4);
  if (v6 == v5 || (std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(this + 1, (v6 + 32)) & 0x80) != 0)
  {
LABEL_12:
    operator new();
  }

  v8 = *(v6 + 56);
  std::mutex::unlock(v3);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1BE57A01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::mutex *a12)
{
  std::mutex::unlock(a12);
  _Unwind_Resume(a1);
}

void sub_1BE57A1A8(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (***a13)(std::basic_string<char16_t> *__return_ptr), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a2 == 1)
  {
    v73 = __cxa_begin_catch(a1);
    morphun::dictionary::logEmptyDictionaryWarning(a13, v73, v74);
    operator new();
  }

  JUMPOUT(0x1BE57A34CLL);
}

void sub_1BE57A1E0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, morphun::dictionary *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  morphun::util::ULocale::~ULocale(&a71);
  morphun::util::ULocale::~ULocale(&a59);
  morphun::util::ULocale::~ULocale(&STACK[0x278]);
  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a2 == 1)
  {
    v73 = __cxa_begin_catch(a1);
    morphun::dictionary::logEmptyDictionaryWarning(a13, v73, v74);
    v75 = operator new(440, 0x10F3C40539F405CLL);
    morphun::dictionary::DictionaryMetaData_MMappedDictionary::DictionaryMetaData_MMappedDictionary(v75, a13);
    __cxa_end_catch();
    JUMPOUT(0x1BE579E0CLL);
  }

  JUMPOUT(0x1BE57A34CLL);
}

void sub_1BE57A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void **a54)
{
  std::__tree<std::__value_type<morphun::util::ULocale,morphun::util::ULocale>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::util::ULocale>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::util::ULocale>>>::destroy(a54);
  v54 = &STACK[0x490];
  v55 = -512;
  do
  {
    v54 -= 32;
    v55 += 256;
  }

  while (v55);
  JUMPOUT(0x1BE57A284);
}

void sub_1BE57A324()
{
  MEMORY[0x1BFB49160](v0, 0x10F3C40539F405CLL);
  __cxa_end_catch();
  JUMPOUT(0x1BE57A34CLL);
}

void sub_1BE57A360(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1BE57A1A0);
}

uint64_t morphun::dictionary::Inflector::getInflector(morphun::dictionary::Inflector *this, const morphun::util::ULocale *a2)
{
  Dictionary = morphun::dictionary::DictionaryMetaData::createDictionary(this, a2);
  if (!Dictionary || (v3 = *(Dictionary + 8)) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  result = *(v3 + 408);
  if (!result)
  {
    v6 = __cxa_allocate_exception(0x38uLL);
    std::operator+<char>();
    if ((v11 & 0x80u) == 0)
    {
      v7 = &v9;
    }

    else
    {
      v7 = v9;
    }

    if ((v11 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }

    morphun::util::StringViewUtils::to_u16string(v7, v8, &v12);
    morphun::exception::NullPointerException::NullPointerException(v6, &v12);
  }

  return result;
}

void sub_1BE57A478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void std::__allocate_at_least[abi:se200100]<std::allocator<long long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

void *std::vector<long long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:se200100]<std::allocator<long long>>(a2);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  return result;
}

void *morphun::analysis::MorphologicalAnalyzer::convertLemmaAttributes(void *a1, uint64_t a2, uint64_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<long long>::reserve(a1, (a3[1] - *a3) >> 4);
  v5 = *a3;
  if (*a3 != a3[1])
  {
    v6 = *(v5 + 8);
    if (v6 < 0x7FFFFFFFFFFFFFF8)
    {
      v7 = *v5;
      if (v6 <= 0xA)
      {
        v14 = *(v5 + 8);
        v9 = (&__p + 2 * v6);
        if (&__p > v7 || v9 <= v7)
        {
          if (v6)
          {
            memmove(&__p, v7, 2 * v6);
          }

          *v9 = 0;
          memset(v12, 0, sizeof(v12));
          std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(v12, &__p, &v15, 1uLL);
        }

        __break(1u);
      }

      if ((v6 | 3) == 0xB)
      {
        v8 = 13;
      }

      else
      {
        v8 = (v6 | 3) + 1;
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v8);
    }

    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE57A7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *v18;
  if (*v18)
  {
    *(v18 + 8) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dictionary::DictionaryMetaData::getBinaryProperties(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  if (*a2 == a2[1])
  {
    return 0;
  }

  if (!morphun::dictionary::DictionaryMetaData::getBinaryProperties(a1, &v5, a2))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v4, L"Properties are not recognized");
    morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &v4);
  }

  return v5;
}

void sub_1BE57A8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

uint64_t *morphun::dictionary::DictionaryMetaData::getBinaryProperties(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(a1 + 8));
  ValuesOfTypes = morphun::dictionary::DictionaryMetaData_MMappedDictionary::getValuesOfTypes(v5, a3);
  npc<long long>(a2);
  *a2 = ValuesOfTypes;
  if (ValuesOfTypes)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

uint64_t npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::dictionary::DictionaryMetaData_MMappedDictionary::getValuesOfTypes(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = *(v2 + 23);
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = *v2;
      v6 = *(v2 + 8);
    }

    else
    {
      v7 = v2;
    }

    IdentifierIfAvailable = morphun::dictionary::metadata::StringArrayContainer::getIdentifierIfAvailable(a1 + 144, v7, v6);
    v9 = 1 << IdentifierIfAvailable;
    if (IdentifierIfAvailable < 0)
    {
      v9 = 0;
    }

    v5 |= v9;
    v2 += 24;
  }

  while (v2 != v3);
  return v5;
}

uint64_t morphun::dictionary::metadata::StringArrayContainer::getIdentifierIfAvailable(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  v3 = *a1 - 1;
  if (*a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    do
    {
      result = v4 + ((v3 - v4) >> 1);
      v8 = *(v5 + 4 * result);
      if (!v6 && *(v5 + 4 * result))
      {
        __break(1u);
        return result;
      }

      if (v8 >= a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = *(v5 + 4 * result);
      }

      if (v9)
      {
        v10 = (v6 + ((*(v5 + 4 * result) >> 7) & 0x1FFFFFE));
        v11 = a2;
        while (1)
        {
          v12 = *v11;
          v13 = *v10;
          if (v12 < v13)
          {
            break;
          }

          if (v13 < v12)
          {
            goto LABEL_16;
          }

          ++v11;
          ++v10;
          if (!--v9)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        if (a3 == v8)
        {
          return result;
        }

        if (a3 >= v8)
        {
LABEL_16:
          v4 = result + 1;
          continue;
        }
      }

      v3 = result - 1;
    }

    while (v4 <= v3);
  }

  return 0xFFFFFFFFLL;
}

uint64_t npc<long long>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::analysis::convertGrammemePriorities(void *a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = a3[1];
  if (v3 != *a3)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a3) >> 3);
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = a1;
      std::__allocate_at_least[abi:se200100]<std::allocator<std::vector<long long>>>(v4);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1BE57AF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __p = a11;
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&__p);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:se200100]<std::allocator<std::vector<long long>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

void std::__throw_bad_array_new_length[abi:se200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t std::__split_buffer<std::vector<long long>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<long long>::__init_with_size[abi:se200100]<long long *,long long *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<long long>>(a4);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }
}

void sub_1BE57B15C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t morphun::analysis::convertIgnoreGrammemes(void *a1, uint64_t a2, uint64_t **a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<long long>::reserve(a1, 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
  v7 = *a3;
  v8 = a3[1];
  while (v7 != v8)
  {
    result = morphun::dictionary::DictionaryMetaData::getBinaryProperties(a2, v7);
    v10 = a1[1];
    v9 = a1[2];
    if (v10 >= v9)
    {
      v11 = ((v10 - *a1) >> 3) + 1;
      if (v11 >> 61)
      {
        std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
      }

      v12 = v9 - *a1;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        result = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        result = v11;
      }

      if (result)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<long long>>(result);
      }

LABEL_16:
      __break(1u);
      return result;
    }

    if (!v10)
    {
      goto LABEL_16;
    }

    *v10 = result;
    a1[1] = v10 + 1;
    v7 += 3;
  }

  return result;
}

void sub_1BE57B2A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::util::Validate::notNull<long long>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"Input argument is null.");
    morphun::exception::NullPointerException::NullPointerException(exception, &__dst);
  }

  return result;
}

void sub_1BE57B34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:se200100](void ***a1)
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
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t morphun::analysis::filter::AmpersandToAndFilter::AmpersandToAndFilter(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = &unk_1F3CD9158;
  v5 = morphun::analysis::TokenFilter::TokenFilter(a1, off_1F3CDA418, a2);
  *v5 = &unk_1F3CD16F8;
  *(v5 + 16) = 0;
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 136), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 152) = *(a3 + 2);
    *(a1 + 136) = v6;
  }

  *(a1 + 128) = morphun::analysis::util::AttributeSource::addAttribute<morphun::analysis::tokenattributes::CharTermAttribute>(a1);
  return a1;
}

uint64_t morphun::analysis::filter::NormalizeFontVariantsFilter::SINGLE_QUOTES(morphun::analysis::filter::NormalizeFontVariantsFilter *this)
{
  {
    operator new();
  }

  return npc<icu4cxx::UnicodeSet const>(morphun::analysis::filter::NormalizeFontVariantsFilter::SINGLE_QUOTES(void)::SINGLE_QUOTES_);
}

void sub_1BE57B7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v20, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::analysis::filter::DOUBLE_QUOTES(morphun::analysis::filter *this)
{
  {
    operator new();
  }

  return npc<icu4cxx::UnicodeSet const>(morphun::analysis::filter::DOUBLE_QUOTES(void)::DOUBLE_QUOTES_);
}

void sub_1BE57B94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v20, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

morphun::analysis::filter::DiacriticFilter *morphun::analysis::filter::DiacriticFilter::DiacriticFilter(morphun::analysis::filter::DiacriticFilter *this, morphun::analysis::TokenStream *a2, const morphun::util::ULocale *a3)
{
  *this = &unk_1F3CD9158;
  v5 = morphun::analysis::TokenFilter::TokenFilter(this, off_1F3CDA528, a2);
  *v5 = &unk_1F3CD1888;
  *(v5 + 16) = 0;
  *(v5 + 17) = 0;
  v7 = *(a3 + 127);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 14);
  }

  if (v7)
  {
    NfdVolatileForeignExemplarCharacters = morphun::lang::StringFilterUtil::getNfdVolatileForeignExemplarCharacters(a3, v6);
  }

  else
  {
    NfdVolatileForeignExemplarCharacters = morphun::lang::StringFilterUtil::NFD_VOLATILE_CHARACTERS(v5);
  }

  *(this + 18) = NfdVolatileForeignExemplarCharacters;
  v9 = *(a3 + 127);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 14);
  }

  *(this + 152) = v9 == 0;
  *(this + 16) = morphun::analysis::util::AttributeSource::addAttribute<morphun::analysis::tokenattributes::CharTermAttribute>(this);
  return this;
}

uint64_t morphun::lang::StringFilterUtil::getNfdVolatileForeignExemplarCharacters(morphun::lang::StringFilterUtil *this, const morphun::util::ULocale *a2)
{
  {
    operator new();
  }

  v3 = morphun::lang::StringFilterUtil::getNfdVolatileForeignExemplarCharacters(morphun::util::ULocale const&)::functionMutex;
  v4 = npc<std::mutex>(morphun::lang::StringFilterUtil::getNfdVolatileForeignExemplarCharacters(morphun::util::ULocale const&)::functionMutex);
  std::mutex::lock(v4);
  {
    operator new();
  }

  v5 = morphun::lang::NfdVolatileForeignExemplarCache(void)::NfdVolatileForeignExemplarCache_;
  npc<std::map<morphun::util::ULocale,icu4cxx::UnicodeSet const*>>(morphun::lang::NfdVolatileForeignExemplarCache(void)::NfdVolatileForeignExemplarCache_);
  v6 = std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::find<morphun::util::ULocale>(v5, this);
  if ((v5 + 8) == v6)
  {
    v8 = morphun::lang::StringFilterUtil::NFD_VOLATILE_CHARACTERS(v6);
    v12 = MEMORY[0x1BFB499F0](*v8);
    ExemplarCharacters = morphun::lang::StringFilterUtil::getExemplarCharacters(this, v9);
    MEMORY[0x1BFB49A90](v12, *ExemplarCharacters);
    operator new();
  }

  v7 = *(v6 + 20);
  npc<icu4cxx::UnicodeSet const>(v7);
  std::mutex::unlock(v3);
  return v7;
}

void sub_1BE57BCBC(_Unwind_Exception *a1)
{
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t npc<std::mutex>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t npc<std::map<morphun::util::ULocale,icu4cxx::UnicodeSet const*>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

morphun::analysis::filter::PunctuationFilter *morphun::analysis::filter::PunctuationFilter::PunctuationFilter(morphun::analysis::filter::PunctuationFilter *this, morphun::analysis::TokenStream *a2, int a3)
{
  *this = &unk_1F3CD9158;
  v5 = morphun::analysis::TokenFilter::TokenFilter(this, off_1F3CDA498, a2);
  *v5 = &unk_1F3CD17B8;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  if (a3)
  {
    {
      operator new();
    }

    v6 = morphun::analysis::filter::PunctuationFilter::INTRATOKEN_PUNCTUATION(void)::INTRATOKEN_PUNCTUATION_;
  }

  else
  {
    v6 = morphun::dictionary::PhraseProperties::PUNCTUATION(v5);
  }

  *(this + 20) = v6;
  *(this + 21) = morphun::dictionary::PhraseProperties::PUNCTUATION(v6);
  *(this + 16) = morphun::analysis::util::AttributeSource::addAttribute<morphun::analysis::tokenattributes::CharTermAttribute>(this);
  *(this + 18) = morphun::analysis::util::AttributeSource::addAttribute<morphun::analysis::tokenattributes::OffsetAttribute>(this);
  return this;
}

void sub_1BE57BF1C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v2, 0x1020C405F07FB98);
  morphun::analysis::TokenFilter::~TokenFilter(v1, off_1F3CDA498);
  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::PhraseProperties::PUNCTUATION(morphun::dictionary::PhraseProperties *this)
{
  {
    operator new();
  }

  v1 = morphun::dictionary::PhraseProperties::PUNCTUATION(void)::PUNCTUATION_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE57C008(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

morphun::analysis::TokenStream *morphun::analysis::ConfigurableAnalyzer::addStopFilter(morphun::analysis::ConfigurableAnalyzer *this, morphun::analysis::TokenStream *a2)
{
  v3 = (*(*this + 56))(this);
  if (v3 && *(v3 + 16))
  {
    operator new();
  }

  return a2;
}

void sub_1BE57C12C(_Unwind_Exception *a1)
{
  morphun::analysis::util::FilteringTokenFilter::~FilteringTokenFilter(v1);
  MEMORY[0x1BFB49160](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t morphun::lang::StringFilterUtil::NFD_VOLATILE_CHARACTERS(morphun::lang::StringFilterUtil *this)
{
  {
    operator new();
  }

  v1 = morphun::lang::StringFilterUtil::NFD_VOLATILE_CHARACTERS(void)::NFD_VOLATILE_CHARACTERS_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE57C270(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<morphun::analysis::Analyzer_TokenStreamComponents *>::__emplace_unique_key_args<morphun::analysis::Analyzer_TokenStreamComponents *,morphun::analysis::Analyzer_TokenStreamComponents * const&>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t morphun::analysis::Analyzer_TokenStreamComponents::setReader(morphun::analysis::Analyzer_TokenStreamComponents *this, UText *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return morphun::analysis::Tokenizer::setReader(v2, a2);
}

morphun::analysis::TokenStreamContainer *morphun::analysis::TokenStreamContainer::TokenStreamContainer(morphun::analysis::TokenStreamContainer *this, morphun::analysis::Analyzer *a2, morphun::analysis::Analyzer_TokenStreamComponents *a3)
{
  *this = &unk_1F3CF0058;
  npc<morphun::analysis::Analyzer>(a2);
  *(this + 1) = a2;
  v6 = npc<morphun::analysis::Analyzer_TokenStreamComponents>(a3);
  *(this + 2) = a3;
  v7 = (*(*a3 + 32))(v6);
  *(this + 3) = npc<morphun::analysis::TokenStream>(v7);
  return this;
}

uint64_t npc<morphun::analysis::Analyzer_TokenStreamComponents>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::LemmaMappingAttribute>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::find<std::type_index>((a1 + 8), "N7morphun8analysis15tokenattributes21LemmaMappingAttributeE");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[3];
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
}

void *morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::GrammemeAttribute>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::find<std::type_index>((a1 + 8), "N7morphun8analysis15tokenattributes17GrammemeAttributeE");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[3];
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
}

void *morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::SkippedOffsetsAttribute>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::find<std::type_index>((a1 + 8), "N7morphun8analysis15tokenattributes23SkippedOffsetsAttributeE");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[3];
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
}

morphun::Token *morphun::Token_Delim::Token_Delim(morphun::Token *a1, uint64_t *a2, int a3, int a4, morphun::Token *a5, unint64_t a6, morphun::Token *a7, unint64_t a8)
{
  result = morphun::Token::Token(a1, a2 + 1, a3, a4, a5, a6, a7, a8, 0);
  v10 = *a2;
  *result = *a2;
  *(result + *(v10 - 64)) = a2[4];
  *(result + *(*result - 40)) = a2[5];
  return result;
}

morphun::Token *morphun::Token_Head::Token_Head(morphun::Token_Head *this, int a2)
{
  *this = &off_1F3CEDC18;
  result = morphun::Token_Delim::Token_Delim(this, off_1F3CDD0E0, a2, a2, &word_1BE80F080, 0, &word_1BE80F080, 0);
  *result = &unk_1F3CD9AB0;
  return result;
}

morphun::Token *morphun::Token::Token(morphun::Token *this, uint64_t *a2, int a3, int a4, morphun::Token *__src, unint64_t a6, morphun::Token *a7, unint64_t a8, char a9)
{
  v10 = *a2;
  *this = *a2;
  *(this + *(v10 - 64)) = a2[1];
  *(this + *(*this - 40)) = a2[2];
  *(this + 2) = a3;
  *(this + 3) = a4;
  if (a6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a6 > 0xA)
  {
    if ((a6 | 3) == 0xB)
    {
      v14 = 13;
    }

    else
    {
      v14 = (a6 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v14);
  }

  *(this + 39) = a6;
  result = (this + 16);
  v15 = (result + 2 * a6);
  if (result <= __src && v15 > __src)
  {
    goto LABEL_26;
  }

  if (a6)
  {
    memmove(result, __src, 2 * a6);
  }

  *v15 = 0;
  if (a8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a8 > 0xA)
  {
    if ((a8 | 3) == 0xB)
    {
      v16 = 13;
    }

    else
    {
      v16 = (a8 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v16);
  }

  *(this + 63) = a8;
  result = (this + 40);
  v17 = (result + 2 * a8);
  if (result <= a7 && v17 > a7)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (a8)
    {
      memmove(result, a7, 2 * a8);
    }

    *v17 = 0;
    *(this + 64) = a9;
    *(this + 65) = morphun::Token::calculateWhiteSpace(this);
    *(this + 9) = 0;
    *(this + 10) = 0;
    return this;
  }

  return result;
}

void sub_1BE57CA20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(exception_object);
}

void *morphun::analysis::filter::DiacriticFilter::reset(morphun::analysis::filter::DiacriticFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::KeywordAttribute>(this);
  *(this + 17) = result;
  return result;
}

void *morphun::analysis::util::FilteringTokenFilter::reset(morphun::analysis::util::FilteringTokenFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  *(this + 16) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::SkippedOffsetsAttribute>(this);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::OffsetAttribute>(this);
  *(this + 17) = result;
  return result;
}

void *morphun::analysis::filter::PunctuationFilter::reset(morphun::analysis::filter::PunctuationFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  *(this + 17) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::KeywordAttribute>(this);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::SkippedOffsetsAttribute>(this);
  *(this + 19) = result;
  return result;
}

uint64_t morphun::analysis::TokenFilter::reset(morphun::analysis::TokenFilter *this)
{
  v1 = *(*npc<morphun::analysis::TokenStream>(*(this + 15)) + 40);

  return v1();
}

void *morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::reset(morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  *(this + 17) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::KeywordAttribute>(this);
  *(this + 18) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::GrammemeAttribute>(this);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::LemmaMappingAttribute>(this);
  *(this + 19) = result;
  return result;
}

void *morphun::analysis::filter::SuffixFilter::reset(morphun::analysis::filter::SuffixFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::KeywordAttribute>(this);
  *(this + 16) = result;
  return result;
}

uint64_t morphun::analysis::tokenizer::StreamingTokenizer::reset(morphun::analysis::tokenizer::StreamingTokenizer *this)
{
  *(this + 15) = *(this + 16);
  *(this + 16) = 0;
  *(this + 66) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::SkippedOffsetsAttribute>(this);
  if (*(npc<UText>(*(this + 15)) + 56))
  {
    *(this + 69) = morphun::analysis::tokenizer::StreamingTokenizer::incrementTokenizer;
    *(this + 70) = 0;
    *(this + 142) = 0;
    *(this + 536) = 0u;
    status = U_ZERO_ERROR;
    v2 = utext_nativeLength(*(this + 15));
    v3 = utext_extract(*(this + 15), 0, v2, 0, 0, &status);
    status = U_ZERO_ERROR;
    v4 = (this + 144);
    std::basic_string<char16_t>::resize(this + 6, v3, 0);
    if (*(this + 167) < 0)
    {
      v4 = *v4;
    }

    utext_extract(*(this + 15), 0, v2, v4, v3, &status);
    v5 = status;
    if (status >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::ICUException::ICUException(exception, v5);
    }
  }

  else
  {
    *(this + 69) = morphun::analysis::tokenizer::StreamingTokenizer::incrementTokenChain;
    *(this + 70) = 0;
    if (*(this + 167) < 0)
    {
      **(this + 18) = 0;
      *(this + 19) = 0;
    }

    else
    {
      *(this + 72) = 0;
      *(this + 167) = 0;
    }

    v7 = *(npc<UText>(*(this + 15)) + 72);
    v8 = npc<morphun::Chunk const>(v7);
    v9 = (*(*v7 + 48))(v8);
    *(this + 67) = v9;
    if (v9)
    {
      v10 = v9;
      v11 = **v9;
      {
        *(this + 67) = v10[10];
      }
    }

    v12 = (*(*v7 + 56))(v7);
    *(this + 68) = v12;
    if (v12)
    {
      v13 = v12;
      v14 = **v12;
      {
        *(this + 68) = v13[9];
      }
    }

    v15 = npc<morphun::Token>(*(this + 67));
    *(this + 142) = (*(*v15 + 24))(v15);
  }

  v16 = npc<morphun::tokenizer::TokenExtractorIterator>(*(this + 22));
  v17 = this + 144;
  v18 = *(this + 167);
  if (v18 < 0)
  {
    v19 = *(this + 18);
    v18 = *(this + 19);
  }

  else
  {
    v19 = this + 144;
  }

  result = (*(*v16 + 32))(v16, v19, v18);
  v21 = *(this + 167);
  if (v21 < 0)
  {
    v17 = *(this + 18);
    v21 = *(this + 19);
  }

  *(this + 25) = v17;
  *(this + 26) = v21;
  *(this + 408) = xmmword_1BE695F70;
  *(this + 106) = -1;
  *(this + 55) = v17;
  *(this + 56) = v21;
  *(this + 118) = 0;
  *(this + 58) = 0xFFFFFFFF00000000;
  *(this + 572) = 0;
  *(this + 126) = 0;
  v22 = *(this + 60);
  if (v22 != *(this + 61))
  {
    *(this + 61) = v22;
  }

  return result;
}

uint64_t npc<UText>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::KeywordAttribute>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::find<std::type_index>((a1 + 8), "N7morphun8analysis15tokenattributes16KeywordAttributeE");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[3];
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
}

void *morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::OffsetAttribute>(uint64_t a1)
{
  v1 = std::__hash_table<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,morphun::analysis::util::AttributeImpl *>>>::find<std::type_index>((a1 + 8), "N7morphun8analysis15tokenattributes15OffsetAttributeE");
  if (!v1)
  {
    return 0;
  }

  v2 = v1[3];
  if (!v2)
  {
    return 0;
  }

  v3 = **v2;
}

uint64_t morphun::analysis::filter::DiacriticFilter::incrementToken(morphun::analysis::filter::DiacriticFilter *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v3 = (*(*v2 + 24))(v2);
  if (v3)
  {
    v4 = *(this + 17);
    if (!v4 || ((*(*v4 + 56))(v4) & 1) == 0)
    {
      v5 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
      v6 = v5 + *(*v5 - 96);
      v7 = v6[23];
      if (v7 < 0)
      {
        v7 = *(v6 + 1);
      }

      if (v7 >= 1)
      {
        v8 = 0;
        while (1)
        {
          v9 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
          v10 = v9 + *(*v9 - 96);
          v11 = *(v10 + 23);
          if ((v11 & 0x8000000000000000) != 0)
          {
            v12 = v10;
            v10 = *v10;
            v11 = *(v12 + 8);
          }

          v13 = morphun::util::StringViewUtils::codePointAt(v10, v11, v8);
          if (MEMORY[0x1BFB49A20](**(this + 18), v13))
          {
            break;
          }

          if (v13 < 0x10000)
          {
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          v8 += v14;
          if (v8 >= v7)
          {
            return v3;
          }
        }

        if (*(this + 152) == 1)
        {
          memset(&__str, 0, sizeof(__str));
          v15 = *(this + 16);
          npc<morphun::analysis::tokenattributes::CharTermAttribute>(v15);
          morphun::lang::StringFilterUtil::unaccent(&__str, (v15 + *(*v15 - 96)));
          v16 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
          std::basic_string<char16_t>::operator=((v16 + *(*v16 - 96)), &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v17 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
          v18 = v17 + *(*v17 - 96);
          v19 = *(this + 18);
          v20 = morphun::lang::StringFilterUtil::COMBINING_DIACRITICAL_MARKS(v17);
          v21 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
          morphun::lang::StringFilterUtil::filteredUnaccent(v19, v20, v21 + *(*v21 - 96), &__str);
          if (v18[23] < 0)
          {
            operator delete(*v18);
          }

          v22 = *&__str.__r_.__value_.__l.__data_;
          *(v18 + 2) = *(&__str.__r_.__value_.__l + 2);
          *v18 = v22;
        }
      }
    }
  }

  return v3;
}

void sub_1BE57D438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::analysis::filter::PunctuationFilter::incrementToken(morphun::analysis::filter::PunctuationFilter *this)
{
  while (2)
  {
    v2 = *(this + 15);
    if (!v2)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    v3 = (*(*v2 + 24))(v2);
    if (v3)
    {
      v4 = *(this + 17);
      if (!v4 || ((*(*v4 + 56))(v4) & 1) == 0)
      {
        v5 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
        v6 = v5 + *(*v5 - 96);
        v7 = v6[23];
        if (v7 < 0)
        {
          v7 = *(v6 + 1);
        }

        v8 = 0;
        do
        {
          if (v8 >= v7)
          {
            return 1;
          }

          v9 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
          v10 = v9 + *(*v9 - 96);
          v11 = *(v10 + 23);
          if ((v11 & 0x8000000000000000) != 0)
          {
            v12 = v10;
            v10 = *v10;
            v11 = *(v12 + 8);
          }

          v13 = morphun::util::StringViewUtils::codePointAt(v10, v11, v8);
          v14 = MEMORY[0x1BFB49A20](**(this + 21), v13);
          if (v13 < 0x10000)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2;
          }

          v8 += v15;
        }

        while (!v14);
        v16 = *(this + 21);
        v17 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
        v18 = *(*v17 - 96);
        if ((*(v17 + v18 + 23) & 0x8000000000000000) != 0)
        {
          v19 = *(v17 + v18);
          v20 = *(v17 + v18 + 8);
        }

        v21 = *v16;
        if (uset_containsAllCodePoints())
        {
          morphun::analysis::filter::PunctuationFilter::skipOffset(this);
          v22 = 2;
        }

        else
        {
          memset(&__str, 0, sizeof(__str));
          v23 = *(this + 20);
          v24 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
          v25 = *(*v24 - 96);
          v26 = (v24 + v25);
          v27 = *(v24 + v25 + 23);
          if ((v27 & 0x8000000000000000) != 0)
          {
            v26 = *v26;
            v27 = *(v24 + v25 + 8);
          }

          morphun::util::UnicodeSetUtils::removeSetFromString(&__str, v23, v26, v27);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __str.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v29 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
            std::basic_string<char16_t>::operator=((v29 + *(*v29 - 96)), &__str);
            v22 = 0;
          }

          else
          {
            morphun::analysis::filter::PunctuationFilter::skipOffset(this);
            v22 = 2;
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (size)
          {
            return v3;
          }
        }

        if (v22)
        {
          continue;
        }
      }
    }

    break;
  }

  return v3;
}

uint64_t morphun::analysis::util::FilteringTokenFilter::incrementToken(morphun::analysis::util::FilteringTokenFilter *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = (this + 144);
  while (1)
  {
    v4 = (*(*v2 + 24))(v2);
    if (!v4 || ((*(*this + 56))(this) & 1) != 0)
    {
      return v4;
    }

    v5 = *(this + 16);
    if (v5)
    {
      v6 = (*(*v5 + 72))(v5);
      if (v3 != v6)
      {
        std::vector<int>::__assign_with_size[abi:se200100]<int *,int *>(this + 18, *v6, v6[1], (v6[1] - *v6) >> 2);
      }

      v7 = *(this + 17);
      if (!v7)
      {
        goto LABEL_24;
      }

      v8 = (*(*v7 + 72))(v7);
      v10 = *(this + 19);
      v9 = *(this + 20);
      if (v10 >= v9)
      {
        v11 = v10 - *v3;
        v12 = (v11 >> 2) + 1;
        if (v12 >> 62)
        {
          std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
        }

        v13 = v9 - *v3;
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

LABEL_23:
        __break(1u);
LABEL_24:
        exception = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(exception);
      }

      if (!v10)
      {
        goto LABEL_23;
      }

      *v10 = v8;
      *(this + 19) = v10 + 4;
      v16 = *(this + 16);
      npc<morphun::analysis::tokenattributes::SkippedOffsetsAttribute>(v16);
      v17 = npc<morphun::analysis::tokenattributes::SkippedOffsetsAttribute>(*(this + 16));
      v18 = (*(*v17 + 64))(v17);
      (*(*v16 + 56))(v16, v18, this + 144);
    }

    v2 = *(this + 15);
    if (!v2)
    {
      goto LABEL_24;
    }
  }
}

uint64_t morphun::analysis::filter::NormalizeFontVariantsFilter::incrementToken(morphun::analysis::filter::NormalizeFontVariantsFilter *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v3 = (*(*v2 + 24))(v2);
  if (v3)
  {
    v4 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
    v5 = (v4 + *(*v4 - 96));
    v6 = *(v5 + 23);
    if (v6 < 0)
    {
      v5 = *v5;
      v6 = *(v4 + *(*v4 - 96) + 8);
      if (!v6)
      {
        return v3;
      }
    }

    else if (!*(v5 + 23))
    {
      return v3;
    }

    v7 = &v5[v6];
    v8 = v5;
    while (2)
    {
      for (i = 0; i != 11; ++i)
      {
        if (*v8 == word_1BE807B92[i])
        {
          if (v8 != v7 && v8 - v5 != -2)
          {
            v10 = *(this + 16);
            npc<morphun::analysis::tokenattributes::CharTermAttribute>(v10);
            v11 = *(*v10 - 96);
            v12 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
            v13 = *(*v12 - 96);
            v14 = (v12 + v13);
            v15 = *(v12 + v13 + 23);
            if ((v15 & 0x8000000000000000) != 0)
            {
              v14 = *v14;
              v15 = *(v12 + v13 + 8);
            }

            memset(&v28, 0, sizeof(v28));
            __p = 0;
            v30 = 0;
            v31 = 0;
            morphun::util::StringViewUtils::replace(&v28, v14, v15, word_1BE807BAA, 1uLL, &unk_1BE807BAE, 2uLL);
            v17 = morphun::analysis::filter::DOUBLE_QUOTES(v16);
            if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v18 = &v28;
            }

            else
            {
              v18 = v28.__r_.__value_.__r.__words[0];
            }

            if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v28.__r_.__value_.__l.__size_;
            }

            v20 = morphun::util::UnicodeSetUtils::replaceSetFromString(&__p, v17, v18, size, L"", 1uLL);
            v21 = morphun::analysis::filter::NormalizeFontVariantsFilter::SINGLE_QUOTES(v20);
            if (v31 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v31 >= 0)
            {
              v23 = SHIBYTE(v31);
            }

            else
            {
              v23 = v30;
            }

            morphun::util::UnicodeSetUtils::replaceSetFromString(&v28, v21, p_p, v23, L"'", 1uLL);
            v24 = v10 + v11;
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__p);
            }

            if (v24[23] < 0)
            {
              operator delete(*v24);
            }

            v25 = *&v28.__r_.__value_.__l.__data_;
            *(v24 + 2) = *(&v28.__r_.__value_.__l + 2);
            *v24 = v25;
          }

          return v3;
        }
      }

      if (++v8 != v7)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

uint64_t morphun::analysis::filter::LowerCaseFilter::incrementToken(morphun::analysis::filter::LowerCaseFilter *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v3 = (*(*v2 + 24))(v2);
  if (v3)
  {
    v4 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
    v5 = v4 + *(*v4 - 96);
    v6 = v5[23];
    if (v6 < 0)
    {
      v6 = *(v5 + 1);
    }

    if (v6 >= 1)
    {
      v7 = 0;
      while (1)
      {
        v8 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
        v9 = v8 + *(*v8 - 96);
        v10 = *(v9 + 23);
        if ((v10 & 0x8000000000000000) != 0)
        {
          v11 = v9;
          v9 = *v9;
          v10 = *(v11 + 8);
        }

        v12 = morphun::util::StringViewUtils::codePointAt(v9, v10, v7);
        if (v12 != MEMORY[0x1BFB495D0]())
        {
          break;
        }

        if (v12 < 0x10000)
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        v7 += v13;
        if (v7 >= v6)
        {
          return v3;
        }
      }

      memset(&__str, 0, sizeof(__str));
      v14 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
      v15 = *(*v14 - 96);
      v16 = (v14 + v15);
      v17 = *(v14 + v15 + 23);
      if (v17 < 0)
      {
        v16 = *v16;
        v17 = *(v14 + v15 + 8);
      }

      morphun::util::StringViewUtils::lowercase(&__str, v16, v17, this + 136);
      v18 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
      std::basic_string<char16_t>::operator=((v18 + *(*v18 - 96)), &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }
  }

  return v3;
}

uint64_t morphun::analysis::filter::AmpersandToAndFilter::incrementToken(morphun::analysis::filter::AmpersandToAndFilter *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v3 = (*(*v2 + 24))(v2);
  if (v3)
  {
    v4 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
    v5 = v4 + *(*v4 - 96);
    v6 = v5[23];
    if (v6 < 0)
    {
      v6 = *(v5 + 1);
    }

    if (v6 == 1)
    {
      v7 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
      v8 = v7 + *(*v7 - 96);
      if (v8[23] < 0)
      {
        v8 = *v8;
      }

      if (*v8 == 38)
      {
        v9 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
        std::basic_string<char16_t>::operator=((v9 + *(*v9 - 96)), (this + 136));
      }
    }
  }

  return v3;
}

uint64_t morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::incrementToken(morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    goto LABEL_27;
  }

  v3 = (*(*v2 + 24))(v2);
  if (v3)
  {
    v4 = *(this + 17);
    if (!v4 || ((*(*v4 + 56))(v4) & 1) == 0)
    {
      v5 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
      v6 = v5 + *(*v5 - 96);
      v7 = v6[23];
      if (v7 < 0)
      {
        v8 = *(v6 + 1);
        if (*(this + 102) > v8)
        {
          goto LABEL_19;
        }

        v26 = 0;
        v9 = *v6;
      }

      else
      {
        if (*(this + 102) > v7)
        {
          goto LABEL_19;
        }

        v26 = 0;
        v8 = v7;
        v9 = v6;
      }

      if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 48), &v26, v9, v8))
      {
        v10 = v6[23];
        if (v10 < 0)
        {
          v11 = v6;
          v6 = *v6;
          v10 = *(v11 + 1);
        }

        (*(*this + 56))(&__str, this, v6, v10, v26);
        if (v25 == 1)
        {
          v12 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
          if ((v25 & 1) == 0)
          {
            __break(1u);
            goto LABEL_27;
          }

          std::basic_string<char16_t>::operator=((v12 + *(*v12 - 96)), &__str);
          if ((v25 & 1) != 0 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        v13 = *(this + 16);
        npc<morphun::analysis::tokenattributes::CharTermAttribute>(v13);
        v14 = *(*v13 - 96);
        v15 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
        v16 = (*(*this + 64))(this, &v15[*(*v15 - 96)]);
        std::basic_string<char16_t>::resize((v13 + v14), v16, 0);
      }

LABEL_19:
      if (*(this + 18))
      {
        __str.__r_.__value_.__r.__words[0] = 0;
        v17 = *(this + 16);
        v18 = *(*v17 - 96);
        v19 = v17 + v18;
        v20 = *(v17 + v18 + 23);
        if (v20 < 0)
        {
          v19 = *v19;
          v20 = *(v17 + v18 + 8);
        }

        if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 48), &__str, v19, v20))
        {
          v21 = *(this + 18);
          if (v21)
          {
            (*(*v21 + 64))(v21, __str.__r_.__value_.__r.__words[0]);
            return v3;
          }

LABEL_27:
          exception = __cxa_allocate_exception(0x38uLL);
          morphun::exception::NullPointerException::NullPointerException(exception);
        }
      }
    }
  }

  return v3;
}

BOOL morphun::analysis::tokenizer::StreamingTokenizer::incrementTokenizer(std::basic_string<char16_t> *this)
{
  data = this[22].__r_.__value_.__l.__data_;
  if (data)
  {
    v3 = (*(*data + 72))(data);
    if (*v3 == v3[1])
    {
      goto LABEL_7;
    }

    v4 = npc<morphun::analysis::tokenattributes::SkippedOffsetsAttribute>(this[22].__r_.__value_.__l.__data_);
    v5 = (*(*v4 + 72))(v4);
    v6 = v5[1];
    if (*v5 == v6)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      std::__throw_out_of_range[abi:se200100]("string_view::substr");
    }

    v7 = *(v6 - 4);
    v8 = npc<morphun::analysis::tokenattributes::OffsetAttribute>(this[21].__r_.__value_.__r.__words[2]);
    if (v7 != (*(*v8 + 72))(v8))
    {
LABEL_7:
      v11 = this[20].__r_.__value_.__l.__data_;
      if (v11 != this[20].__r_.__value_.__l.__size_)
      {
        this[20].__r_.__value_.__l.__size_ = v11;
      }

      LODWORD(this[21].__r_.__value_.__l.__data_) = HIDWORD(this[23].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = npc<morphun::analysis::tokenattributes::SkippedOffsetsAttribute>(this[22].__r_.__value_.__l.__data_);
      v10 = (*(*v9 + 72))(v9);
      if (&this[20] != v10)
      {
        std::vector<int>::__assign_with_size[abi:se200100]<int *,int *>(this[20].__r_.__value_.__r.__words, *v10, v10[1], (v10[1] - *v10) >> 2);
      }
    }
  }

  morphun::analysis::util::AttributeSource::clearAttributes(this);
  while (1)
  {
    NextBoundary = morphun::tokenizer::NumberCleaverIterator::getNextBoundary(&this[18]);
    if (NextBoundary == -1)
    {
      v13 = -1;
      goto LABEL_42;
    }

    v13 = NextBoundary;
    size = SHIBYTE(this[6].__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v15 = this[6].__r_.__value_.__l.__data_;
      size = this[6].__r_.__value_.__l.__size_;
    }

    else
    {
      v15 = this + 6;
    }

    v16 = SHIDWORD(this[23].__r_.__value_.__r.__words[2]);
    v17 = size >= v16;
    v18 = size - v16;
    if (!v17)
    {
      goto LABEL_47;
    }

    v19 = NextBoundary - v16;
    v20 = (v15 + 2 * v16);
    v21 = v18 >= v19 ? NextBoundary - v16 : v18;
    if (BYTE5(this[21].__r_.__value_.__r.__words[0]) != 1 || morphun::tokenizer::TokenUtil::isSignificant(v20, v21))
    {
      break;
    }

    if (this[22].__r_.__value_.__r.__words[0])
    {
      v23 = this[20].__r_.__value_.__l.__size_;
      v22 = this[20].__r_.__value_.__r.__words[2];
      if (v23 >= v22)
      {
        v24 = this[20].__r_.__value_.__l.__data_;
        v25 = ((v23 - v24) >> 2) + 1;
        if (v25 >> 62)
        {
          std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
        }

        v26 = v22 - v24;
        v27 = v26 >> 1;
        if (v26 >> 1 <= v25)
        {
          v27 = v25;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v28 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v28 = v27;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v28);
        }

        goto LABEL_46;
      }

      if (!v23)
      {
        goto LABEL_46;
      }

      *v23 = v13;
      this[20].__r_.__value_.__l.__size_ = (v23 + 4);
    }

    HIDWORD(this[23].__r_.__value_.__r.__words[2]) = v13;
  }

  v29 = this[21].__r_.__value_.__l.__size_;
  if (BYTE4(this[21].__r_.__value_.__r.__words[0]) == 1)
  {
    if (v29)
    {
      v29 = (v29 + *(*v29 - 96));
    }

    morphun::util::StringViewUtils::lowercase(v29, v20, v21, this[5].__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(v29);
    std::basic_string<char16_t>::assign((v30 + *(*v30 - 96)), this + 6, SHIDWORD(this[23].__r_.__value_.__r.__words[2]), v19);
  }

  v31 = npc<morphun::analysis::tokenattributes::OffsetAttribute>(this[21].__r_.__value_.__r.__words[2]);
  v32 = HIDWORD(this[23].__r_.__value_.__r.__words[2]);
  v33 = this[23].__r_.__value_.__r.__words[2];
  LODWORD(this[24].__r_.__value_.__l.__data_) = v33 + v13;
  (*(*v31 + 64))(v31, (v33 + v32));
LABEL_42:
  HIDWORD(this[23].__r_.__value_.__r.__words[2]) = v13;
  v34 = this[22].__r_.__value_.__l.__data_;
  if (v34 && this[20].__r_.__value_.__r.__words[0] != this[20].__r_.__value_.__l.__size_)
  {
    (*(*v34 + 56))(v34, LODWORD(this[21].__r_.__value_.__l.__data_), this + 20);
  }

  return v13 != -1;
}

uint64_t morphun::analysis::tokenizer::StreamingTokenizer::incrementToken(morphun::analysis::tokenizer::StreamingTokenizer *this)
{
  v1 = *(this + 69);
  v2 = *(this + 70);
  v3 = (this + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t morphun::analysis::filter::SuffixFilter::incrementToken(morphun::analysis::filter::SuffixFilter *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v3 = (*(*v2 + 24))(v2);
  if (v3)
  {
    v4 = *(this + 16);
    if (!v4 || ((*(*v4 + 56))(v4) & 1) == 0)
    {
      v6 = *(this + 18);
      v7 = *(this + 19);
      while (v6 != v7)
      {
        v8 = *(v6 + 23);
        if ((v8 & 0x8000000000000000) != 0)
        {
          v9 = *v6;
          v8 = *(v6 + 8);
        }

        else
        {
          v9 = v6;
        }

        v10 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 17));
        v11 = v10 + *(*v10 - 96);
        v12 = v11[23];
        if (v12 < 0)
        {
          v12 = *(v11 + 1);
        }

        if (v12 > v8)
        {
          v13 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 17));
          v14 = v13 + *(*v13 - 96);
          v15 = v14[23];
          if (v15 < 0)
          {
            v14 = *v14;
            v15 = *(v13 + *(*v13 - 96) + 8);
          }

          v18[0] = v14;
          v18[1] = v15;
          if (std::u16string_view::ends_with[abi:se200100](v18, v9, v8))
          {
            v16 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 17));
            std::basic_string<char16_t>::resize((v16 + *(*v16 - 96)), v12 - v8, 0);
          }
        }

        v6 += 24;
      }
    }
  }

  return v3;
}

uint64_t morphun::analysis::filter::ContractionExpandingFilter::incrementToken(morphun::analysis::filter::ContractionExpandingFilter *this)
{
  if (*(this + 36) != *(this + 37))
  {
    v2 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
    v3 = *(this + 36);
    if (v3 != *(this + 37))
    {
      std::basic_string<char16_t>::operator=((v2 + *(*v2 - 96)), v3);
      v4 = *(this + 36);
      v5 = *(this + 37);
      if (v5 != v4)
      {
        if ((v4 + 24) != v5)
        {
          do
          {
            if (*(v4 + 23) < 0)
            {
              operator delete(*v4);
            }

            *v4 = *(v4 + 24);
            *(v4 + 16) = *(v4 + 40);
            *(v4 + 47) = 0;
            v6 = (v4 + 48);
            *(v4 + 24) = 0;
            v4 += 24;
          }

          while (v6 != v5);
          v5 = *(this + 37);
        }

        while (v5 != v4)
        {
          v7 = *(v5 - 1);
          v5 -= 3;
          if (v7 < 0)
          {
            operator delete(*v5);
          }
        }

LABEL_12:
        *(this + 37) = v4;
        return 1;
      }
    }

    goto LABEL_73;
  }

  v9 = *(this + 15);
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  result = (*(*v9 + 24))(v9);
  if (result)
  {
    v10 = *(this + 16);
    npc<morphun::analysis::tokenattributes::CharTermAttribute>(v10);
    v11 = *(*v10 - 96);
    v12 = (v10 + v11);
    v13 = *(v10 + v11 + 23);
    if (v13 < 0)
    {
      v12 = *v12;
      v13 = *(v10 + v11 + 8);
    }

    __p[0] = 0;
    __p[1] = 0;
    v42 = 0;
    if (!*(this + 19))
    {
      return 1;
    }

    v14 = morphun::analysis::filter::LanguageExpansion::expandWithWorkspace(this + 136, v12, v13, __p);
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p[0]);
    }

    if (!v14)
    {
      return 1;
    }

    v15 = *(*v10 - 96);
    v16 = (v10 + v15);
    v17 = *(v10 + v15 + 23);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v16 = *v16;
      v17 = *(v10 + v15 + 8);
    }

    isAllLowerCase = morphun::util::StringViewUtils::isAllLowerCase(v16, v17);
    if (isAllLowerCase)
    {
      isAllUpperCase = 0;
    }

    else
    {
      v20 = *(*v10 - 96);
      v21 = (v10 + v20);
      v22 = *(v10 + v20 + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v21 = *v21;
        v22 = *(v10 + v20 + 8);
      }

      isAllUpperCase = morphun::util::StringViewUtils::isAllUpperCase(v21, v22);
    }

    v23 = *v14;
    v24 = v14[1];
    if (*v14 == v24)
    {
LABEL_62:
      v33 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
      v34 = *(this + 36);
      if (v34 != *(this + 37))
      {
        std::basic_string<char16_t>::operator=((v33 + *(*v33 - 96)), v34);
        v4 = *(this + 36);
        v35 = *(this + 37);
        if (v35 != v4)
        {
          if ((v4 + 24) != v35)
          {
            do
            {
              if (*(v4 + 23) < 0)
              {
                operator delete(*v4);
              }

              *v4 = *(v4 + 24);
              *(v4 + 16) = *(v4 + 40);
              *(v4 + 47) = 0;
              v36 = (v4 + 48);
              *(v4 + 24) = 0;
              v4 += 24;
            }

            while (v36 != v35);
            v35 = *(this + 37);
          }

          while (v35 != v4)
          {
            v37 = *(v35 - 1);
            v35 -= 3;
            if (v37 < 0)
            {
              operator delete(*v35);
            }
          }

          goto LABEL_12;
        }
      }

LABEL_73:
      __break(1u);
LABEL_74:
      std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
    }

    while (1)
    {
      v25 = *(v23 + 8);
      if (v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_74;
      }

      v26 = *v23;
      if (v25 > 0xA)
      {
        if ((v25 | 3) == 0xB)
        {
          v27 = 13;
        }

        else
        {
          v27 = (v25 | 3) + 1;
        }

        std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v27);
      }

      HIBYTE(v42) = *(v23 + 8);
      v28 = __p + v25;
      if (__p <= v26 && v28 > v26)
      {
        goto LABEL_73;
      }

      if (v25)
      {
        memmove(__p, v26, 2 * v25);
      }

      *v28 = 0;
      if (isAllLowerCase)
      {
        goto LABEL_51;
      }

      if (isAllUpperCase)
      {
        break;
      }

      v30 = *(this + 37);
      if (*(this + 36) == v30)
      {
        morphun::util::StringViewUtils::capitalizeFirst(*v23, *(v23 + 8), this + 312, &v39);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v39;
        v42 = v40;
        goto LABEL_51;
      }

LABEL_52:
      if (v30 >= *(this + 38))
      {
        v32 = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(this + 288, __p);
      }

      else
      {
        if (!v30)
        {
          goto LABEL_73;
        }

        if (SHIBYTE(v42) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(v30, __p[0], __p[1]);
        }

        else
        {
          v31 = *__p;
          v30->__r_.__value_.__r.__words[2] = v42;
          *&v30->__r_.__value_.__l.__data_ = v31;
        }

        v32 = &v30[1];
        *(this + 37) = v30 + 1;
      }

      *(this + 37) = v32;
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
      }

      v23 += 16;
      if (v23 == v24)
      {
        goto LABEL_62;
      }
    }

    morphun::util::StringViewUtils::uppercase(__p, *v23, *(v23 + 8), this + 312);
LABEL_51:
    v30 = *(this + 37);
    goto LABEL_52;
  }

  return result;
}

void sub_1BE57EBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *morphun::analysis::util::AttributeSource::clearAttributes(void *this)
{
  this[11] = this[10];
  v1 = this[6];
  v2 = this + 7;
  if (v1 != this + 7)
  {
    do
    {
      this = (*(*v1[4] + 56))(v1[4]);
      v3 = v1[1];
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
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }

  return this;
}

uint64_t morphun::tokenizer::NumberCleaverIterator::getNextBoundary(morphun::tokenizer::NumberCleaverIterator *this)
{
  v2 = (this + 36);
  if (*(this + 9) != -1)
  {
    *(this + 9) = -1;
    v3 = (this + 40);
    return *v3;
  }

  v3 = (this + 40);
  *(this + 8) = *(this + 10);
  result = (*(**(this + 3) + 24))(*(this + 3));
  *v3 = result;
  v5 = *(this + 8);
  if (result - v5 < 2)
  {
    return *v3;
  }

  v6 = *(this + 2);
  if (v6 <= v5)
  {
    goto LABEL_74;
  }

  v7 = *(this + 1);
  v8 = *(v7 + 2 * v5);
  v9 = v5 + 1;
  v10 = (v8 & 0xFC00) != 0xD800 || v9 == result;
  if (!v10)
  {
    if (v6 <= v9)
    {
      goto LABEL_74;
    }

    v11 = *(v7 + 2 * v9);
    v10 = (v11 & 0xFC00) == 56320;
    v12 = v11 + (v8 << 10) - 56613888;
    if (v10)
    {
      v8 = v12;
    }
  }

  v13 = result - 1;
  if (v6 <= v13)
  {
    goto LABEL_74;
  }

  v14 = *(v7 + 2 * v13);
  if (v13 > v5 && (v14 & 0xFC00) == 56320)
  {
    if (v6 <= result - 2)
    {
      goto LABEL_74;
    }

    v16 = *(v7 + 2 * (result - 2));
    v10 = (v16 & 0xFC00) == 55296;
    v17 = v14 + (v16 << 10) - 56613888;
    if (v10)
    {
      v14 = v17;
    }
  }

  v18 = u_isdigit(v8);
  if (v18 == u_isdigit(v14))
  {
    return *v3;
  }

  v19 = u_isalpha(v8);
  result = u_isalpha(v14);
  if (v19 == result)
  {
    return *v3;
  }

  v20 = *(this + 8);
  *(this + 9) = v20;
  v21 = *(this + 10);
  if (!v18)
  {
    if (v20 >= v21)
    {
      goto LABEL_58;
    }

    while (1)
    {
      v31 = *(this + 2);
      if (v31 <= v20)
      {
        goto LABEL_74;
      }

      v32 = v20;
      v33 = *(this + 1);
      result = *(v33 + 2 * v32);
      if ((result & 0xF800) == 0xD800)
      {
        if ((result & 0x400) != 0)
        {
          if (v32 > *(this + 8))
          {
            if (v31 <= v32 - 1)
            {
              goto LABEL_74;
            }

            v38 = *(v33 + 2 * (v32 - 1));
            v36 = (v38 & 0xFC00) == 55296;
            v37 = result - 56613888 + (v38 << 10);
            goto LABEL_53;
          }
        }

        else
        {
          v34 = v32 + 1;
          if (v34 != v21)
          {
            if (v31 <= v34)
            {
              goto LABEL_74;
            }

            v35 = *(v33 + 2 * v34);
            v36 = (v35 & 0xFC00) == 56320;
            v37 = (result << 10) - 56613888 + v35;
LABEL_53:
            if (v36)
            {
              LODWORD(result) = v37;
            }
          }
        }
      }

      result = u_isalpha(result);
      if (result)
      {
        v20 = *v2 + 1;
        *v2 = v20;
        v21 = *v3;
        if (v20 < *v3)
        {
          continue;
        }
      }

      goto LABEL_58;
    }
  }

  if (v20 < v21)
  {
    while (1)
    {
      v22 = *(this + 2);
      if (v22 <= v20)
      {
        goto LABEL_74;
      }

      v23 = v20;
      v24 = *(this + 1);
      v25 = *(v24 + 2 * v23);
      if ((v25 & 0xF800) == 0xD800)
      {
        if ((v25 & 0x400) != 0)
        {
          if (v23 > *(this + 8))
          {
            if (v22 <= v23 - 1)
            {
              goto LABEL_74;
            }

            v30 = *(v24 + 2 * (v23 - 1));
            v28 = (v30 & 0xFC00) == 55296;
            v29 = v25 - 56613888 + (v30 << 10);
            goto LABEL_36;
          }
        }

        else
        {
          v26 = v23 + 1;
          if (v26 != v21)
          {
            if (v22 <= v26)
            {
              goto LABEL_74;
            }

            v27 = *(v24 + 2 * v26);
            v28 = (v27 & 0xFC00) == 56320;
            v29 = (v25 << 10) - 56613888 + v27;
LABEL_36:
            if (v28)
            {
              v25 = v29;
            }
          }
        }
      }

      result = u_ispunct(v25);
      if (result || (result = u_isdigit(v25), result))
      {
        v20 = *v2 + 1;
        *v2 = v20;
        v21 = *v3;
        if (v20 < *v3)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_58:
  v39 = *(this + 9) - (v18 != 0);
  v40 = *(this + 2);
  if (v40 <= v39)
  {
    goto LABEL_74;
  }

  v41 = v39;
  v42 = *(this + 1);
  result = *(v42 + 2 * v41);
  if ((result & 0xF800) != 0xD800)
  {
    goto LABEL_70;
  }

  if ((result & 0x400) == 0)
  {
    v43 = v41 + 1;
    if (v43 != *v3)
    {
      if (v40 > v43)
      {
        v44 = *(v42 + 2 * v43);
        v45 = (v44 & 0xFC00) == 56320;
        v46 = v44 + (result << 10);
        goto LABEL_67;
      }

      goto LABEL_74;
    }

LABEL_70:
    if (u_ispunct(result))
    {
      *v2 = -1;
    }

    else
    {
      v3 = v2;
    }

    return *v3;
  }

  if (v41 <= *(this + 8))
  {
    goto LABEL_70;
  }

  v47 = v41 - 1;
  if (v40 > v47)
  {
    v48 = *(v42 + 2 * v47);
    v45 = (v48 & 0xFC00) == 55296;
    v46 = result + (v48 << 10);
LABEL_67:
    v49 = v46 - 56613888;
    if (v45)
    {
      LODWORD(result) = v49;
    }

    goto LABEL_70;
  }

LABEL_74:
  __break(1u);
  return result;
}

void morphun::analysis::tokenattributes::PackedTokenAttributeImpl::clear(std::vector<int> *this, std::vector<int>::size_type a2)
{
  v3 = this + *(this->__begin_ - 13);
  if (v3[23] < 0)
  {
    **v3 = 0;
    *(v3 + 1) = 0;
  }

  else
  {
    *v3 = 0;
    v3[23] = 0;
  }

  v5 = this + 1;
  begin = this[1].__begin_;
  this->__end_ = 0;
  LODWORD(this->__end_cap_.__value_) = 0;
  if ((this[1].__end_cap_.__value_ - begin) >= 0x41)
  {
    std::vector<int>::resize(this + 1, a2);
    std::vector<int>::shrink_to_fit(this + 1);
    begin = v5->__begin_;
  }

  this[1].__end_ = begin;
}

BOOL morphun::tokenizer::TokenUtil::isSignificant(unsigned __int16 *a1, unint64_t a2)
{
  if (a2 > 1)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = *a1;
  {
    {
      operator new();
    }
  }

  v4 = npc<icu4cxx::UnicodeSet const>(morphun::tokenizer::TokenUtil::SIGNIFICANT_CHARACTERS(void)::SIGNIFICANT_CHARACTERS_);
  return MEMORY[0x1BFB49A20](*v4, v3) != 0;
}

void sub_1BE57F210(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::__assign_external(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0xA)
    {
      v8 = 10;
LABEL_6:
      std::basic_string<char16_t>::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, 2 * __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}