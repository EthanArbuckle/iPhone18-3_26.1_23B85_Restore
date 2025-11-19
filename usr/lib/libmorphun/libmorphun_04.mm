void sub_1BE5B8960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<morphun::tokenizer::dictionary::Segment>(uint64_t result)
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

uint64_t morphun::dictionary::metadata::MarisaTrie<int>::find(marisa::Trie *a1, const std::string::value_type *a2, uint64_t a3)
{
  KeyId = morphun::dictionary::metadata::MarisaTrie<int>::getKeyId(a1, a2, a3);
  if (KeyId < 0)
  {
    return 0;
  }

  else
  {
    return morphun::dictionary::metadata::CompressedArray<int>::read(a1 + 32, KeyId) | 0x100000000;
  }
}

uint64_t morphun::dictionary::metadata::MarisaTrie<int>::getKeyId(marisa::Trie *a1, const std::string::value_type *a2, uint64_t a3)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  morphun::dictionary::metadata::CharsetConverter::encode(a1 + 8, &__p, a2, a3);
  if (v13 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v13 >= 0)
  {
    v5 = HIBYTE(v13);
  }

  else
  {
    v5 = v12;
  }

  marisa::Agent::set_query(v9, p_p, v5);
  v6 = marisa::Trie::lookup(a1, v9);
  v7 = DWORD1(v10);
  marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&v10 + 1);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_1BE5B8B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&a14);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::metadata::CompressedArray<int>::read(uint64_t a1, int a2)
{
  v2 = *(a1 + 4);
  v3 = v2 * a2;
  v4 = v2 * a2 + 63;
  if (v2 * a2 >= 0)
  {
    v4 = v2 * a2;
  }

  v5 = v2 + v3;
  v6 = v5 - 1;
  v7 = v5 + 62;
  if (v6 >= 0)
  {
    v7 = v6;
  }

  if (a2 < 0 || (v8 = v7 >> 6, v8 > *a1))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"Invalid CompressedArray index");
    morphun::exception::IndexOutOfBoundsException::IndexOutOfBoundsException(exception, &__dst);
  }

  v9 = v4 >> 6;
  v10 = v3 - (v4 & 0xC0);
  v11 = (*(a1 + 8) + 8 * (v4 >> 6));
  v12 = *v11 >> v10;
  if (v9 != v8)
  {
    v12 |= v11[1] << -v10;
  }

  return v12 & *(a1 + 16);
}

void sub_1BE5B8C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction::determine(uint64_t a1@<X0>, uint64_t a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  v54[2] = *MEMORY[0x1E69E9840];
  morphun::dialog::DictionaryLookupFunction::determinePhrase(a1, a2, 1, &v51);
  size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  v7 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v51.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_4;
  }

  v9 = *(a2 + 23);
  if (v9 < 0)
  {
    v9 = *(a2 + 8);
    if (v9)
    {
      v50 = 0;
      v10 = *a2;
      goto LABEL_11;
    }

LABEL_4:
    *a3 = v51;
    goto LABEL_5;
  }

  if (!*(a2 + 23))
  {
    goto LABEL_4;
  }

  v50 = 0;
  v10 = a2;
LABEL_11:
  CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(a1 + 208), &v50, v10, v9);
  if (*(a1 + 232) || !CombinedBinaryType || (*(a1 + 224) & v50) != 0)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    morphun::dialog::DictionaryLookupFunction::getFirstWord(&__p, *(a1 + 160), a2);
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v13 = __p.__r_.__value_.__r.__words[0];
    v14 = __p.__r_.__value_.__r.__words[1];
    v16 = morphun::util::LocaleUtils::SPANISH(v15);
    if ((v12 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = v13;
    }

    if ((v12 & 0x80u) == 0)
    {
      v18 = v12;
    }

    else
    {
      v18 = v14;
    }

    morphun::util::StringViewUtils::lowercase(&v47, p_p, v18, v16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v19 = *(a1 + 232);
    if (v19 == 1)
    {
      v36 = 0;
      v37 = HIBYTE(v49);
      v38 = &v47;
      if (v49 < 0)
      {
        v38 = v47;
        v37 = v48;
      }

      v52 = v38;
      v53 = v37;
      while (1)
      {
        v39 = *(&off_1E8059958 + v36);
        if (!v39)
        {
LABEL_85:
          __break(1u);
        }

        if (*v39)
        {
          v40 = 0;
          do
          {
            v41 = v40 + 1;
          }

          while (v39[++v40]);
        }

        else
        {
          v41 = 0;
        }

        v43 = std::u16string_view::ends_with[abi:se200100](&v52, v39, v41);
        if (v43)
        {
          break;
        }

        v36 += 8;
        if (v36 == 24)
        {
          v43 = std::u16string_view::ends_with[abi:se200100](&v52, word_1BE80EB90, 1uLL);
          if (v43)
          {
            v35 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v43);
            goto LABEL_75;
          }

          break;
        }
      }

      v35 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v43);
LABEL_75:
      if ((*(v35 + 23) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *v35, *(v35 + 8));
LABEL_78:
      if (v7 < 0)
      {
        operator delete(v51.__r_.__value_.__l.__data_);
      }

      v51 = __p;
    }

    else if (!v19)
    {
      v45 = 0;
      if (v49 >= 0)
      {
        v20 = &v47;
      }

      else
      {
        v20 = v47;
      }

      if (v49 >= 0)
      {
        v21 = HIBYTE(v49);
      }

      else
      {
        v21 = v48;
      }

      v22 = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(a1 + 208), &v45, v20, v21);
      v23 = 0;
      v24 = HIBYTE(v49);
      if (v49 >= 0)
      {
        v25 = &v47;
      }

      else
      {
        v25 = v47;
      }

      if (v49 < 0)
      {
        v24 = v48;
      }

      v52 = v25;
      v53 = v24;
      while (1)
      {
        v26 = off_1E8059928[v23];
        if (!v26)
        {
          goto LABEL_85;
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

        v30 = std::u16string_view::ends_with[abi:se200100](&v52, v26, v28);
        if (v30)
        {
          break;
        }

        if (++v23 == 6)
        {
          if (!v22)
          {
            v54[0] = L"as";
            v54[1] = "a";
            while (1)
            {
              v31 = *(v54 + v22);
              if (!v31)
              {
                goto LABEL_85;
              }

              if (*v31)
              {
                v32 = 0;
                do
                {
                  v33 = v32 + 1;
                }

                while (v31[++v32]);
              }

              else
              {
                v33 = 0;
              }

              v30 = std::u16string_view::ends_with[abi:se200100](&v52, v31, v33);
              if (v30)
              {
                break;
              }

              if (++v22 == 16)
              {
                goto LABEL_54;
              }
            }

            v35 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v30);
            if (*(v35 + 23) < 0)
            {
LABEL_73:
              std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *v35, *(v35 + 8));
              goto LABEL_78;
            }

LABEL_76:
            v44 = *v35;
            __p.__r_.__value_.__r.__words[2] = *(v35 + 16);
            *&__p.__r_.__value_.__l.__data_ = v44;
            goto LABEL_78;
          }

LABEL_54:
          v35 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v30);
LABEL_72:
          if ((*(v35 + 23) & 0x80000000) == 0)
          {
            goto LABEL_76;
          }

          goto LABEL_73;
        }
      }

      v35 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v30);
      goto LABEL_72;
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v47);
    }

    goto LABEL_4;
  }

  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (v7 < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

LABEL_5:
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1BE5B902C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction::~EsGrammarSynthesizer_CountGenderLookupFunction(morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction *this)
{
  morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction::~EsGrammarSynthesizer_CountGenderLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CE62A8;
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

void morphun::grammar::synthesis::EsGrammarSynthesizer_CountGenderLookupFunction::EsGrammarSynthesizer_CountGenderLookupFunction(morphun::util::LocaleUtils *a1)
{
  __p[3] = *MEMORY[0x1E69E9840];
  *a1 = &off_1F3CE6308;
  v1 = morphun::util::LocaleUtils::SPANISH(a1);
  v2 = morphun::grammar::synthesis::GrammemeConstants::POS_NOUN(v1);
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

  v4 = morphun::grammar::synthesis::GrammemeConstants::POS_ADJECTIVE(v2);
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

void sub_1BE5B9388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction(v25, off_1F3CDB700);
  _Unwind_Resume(a1);
}

morphun::Token *morphun::Token_Head::Token_Head(morphun::Token_Head *this, uint64_t *a2, int a3)
{
  result = morphun::Token_Delim::Token_Delim(this, a2 + 1, a3, a3, &word_1BE80F080, 0, &word_1BE80F080, 0);
  v5 = *a2;
  *result = *a2;
  *(result + *(v5 - 64)) = a2[7];
  *(result + *(*result - 40)) = a2[8];
  return result;
}

uint64_t npc<morphun::analysis::tokenattributes::SkippedOffsetsAttribute>(uint64_t result)
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

double morphun::analysis::util::FilteringTokenFilter::FilteringTokenFilter(morphun::analysis::util::FilteringTokenFilter *this, morphun::analysis::TokenStream *a2, uint64_t a3)
{
  v4 = morphun::analysis::TokenFilter::TokenFilter(this, (a2 + 8), a3);
  v5 = *a2;
  *v4 = *a2;
  *(v4 + *(v5 - 40)) = *(a2 + 7);
  *(v4 + 20) = 0;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  return result;
}

void morphun::grammar::synthesis::ArGrammarSynthesizer_ToPrepositionLookupFunction::getArticle(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  v2 = (*(*a2 + 24))(a2);
  v3 = morphun::util::StringUtils::trim(v2, &__str);
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    operator new();
  }

  v5 = morphun::lang::StringFilterUtil::ARABIC_SCRIPT(v3);
  p_str = &__str;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (!MEMORY[0x1BFB49A20](*v5, p_str->__r_.__value_.__s.__data_[0]))
  {
    HIBYTE(v13) = 3;
    LODWORD(v12[0]) = 104859204;
    WORD2(v12[0]) = 160;
    v9 = 6;
    goto LABEL_20;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__str.__r_.__value_.__l.__size_ > 3)
    {
      v8 = __str.__r_.__value_.__r.__words[0];
      if (*__str.__r_.__value_.__l.__data_ == 1575)
      {
LABEL_15:
        if (v8->__r_.__value_.__s.__data_[1] == 1604)
        {
          std::basic_string<char16_t>::basic_string(&v10, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, v7);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str = v10;
        }
      }
    }
  }

  else if (HIBYTE(__str.__r_.__value_.__r.__words[2]) >= 4u && __str.__r_.__value_.__s.__data_[0] == 1575)
  {
    v8 = &__str;
    goto LABEL_15;
  }

  HIBYTE(v13) = 1;
  LOWORD(v12[0]) = 1604;
  v9 = 2;
LABEL_20:
  *(v12 | v9) = 0;
  operator new();
}

void sub_1BE5B9A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

CFStringRef mtok_getValueCopy(uint64_t a1)
{
  v1 = npc<morphun::Token const>(a1);
  v4 = *(v1 + 16);
  v2 = v1 + 16;
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

  if (v5 >= 0)
  {
    v7 = *(v2 + 23);
  }

  else
  {
    v7 = *(v2 + 8);
  }

  return CFStringCreateWithCharacters(0, v6, v7);
}

uint64_t mtok_getType(char **a1)
{
  npc<morphun::Token const>(a1);
  v2 = *a1;
  v3 = **a1;
  {
    return 6;
  }

  v5 = *v2;
  result = 0;
  if (!v6)
  {
    v7 = *v2;
    {
      return 1;
    }

    else
    {
      v8 = *v2;
      {
        return 3;
      }

      else
      {
        v9 = *v2;
        {
          return 4;
        }

        else
        {
          v10 = *v2;
          {
            return 5;
          }

          else
          {
            v11 = *v2;
            {
              return 2;
            }

            else
            {
              return 7;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t morphun::tokenizer::dictionary::Segment::Segment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, int a7, int a8, int a9)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 20) = a7;
  *(a1 + 24) = a8;
  *(a1 + 28) = a9;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = 1065353216;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = *(a2 + 16);
  if (a5 < a8)
  {
    std::__throw_out_of_range[abi:se200100]("string_view::substr");
  }

  v11 = a5 - a8;
  if (v11 >= a7 - a8)
  {
    v11 = a7 - a8;
  }

  v12 = morphun::dictionary::metadata::MarisaTrie<int>::find((a3 + 40), (a4 + 2 * a8), v11);
  if (HIDWORD(v12))
  {
    *v13.i32 = (v12 & 0xFFFFFF);
    *(a1 + 52) = vuzp1_s8((*&vmovn_s32(vshlq_u32(vdupq_n_s32(v12), xmmword_1BE695F60)) & 0xFF81FF81FF81FF81), v13).u32[0];
    *(a1 + 56) = BYTE3(v12) & 1;
  }

  else
  {
    v13.i32[0] = *(a2 + 44);
  }

  *(a1 + 48) = v13.i32[0];
  return a1;
}

void sub_1BE5BA02C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v3);
  }

  _Unwind_Resume(exception_object);
}

float morphun::tokenizer::dictionary::Segment::tie(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    LODWORD(v4) = *(a1 + 20) - *(a1 + 24);
  }

  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 72);
  *(a1 + 64) = v6;
  *(a1 + 72) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v7);
  }

  v8 = *a2;
  *(a1 + 80) = *(*a2 + 80) * *(a1 + 48);
  *(a1 + 92) = *(v8 + 92) * v4;
  if (*(a1 + 28) < 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10.i32[0] = 1;
  v10.i32[1] = v9;
  *(a1 + 84) = vadd_s32(v10, *(v8 + 84));
  v11 = 0.5;
  if (!*(a1 + 40))
  {
    v11 = 0.0;
  }

  result = ((*(v8 + 100) + v4) - *(a1 + 104)) - v11;
  *(a1 + 100) = result;
  return result;
}

void sub_1BE5BA2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p)
{
  morphun::tokenizer::dictionary::DictionaryTokenizerConfig::~DictionaryTokenizerConfig(&a10);
  MEMORY[0x1BFB49160](v33, v34);
  _Unwind_Resume(a1);
}

uint64_t *morphun::analysis::AnalyzerFactory::AnalyzerFactory(uint64_t *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  return this;
}

uint64_t morphun::dialog::language::PlCommonConceptFactory::quantifyType(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4)
  {
LABEL_135:
    v81 = (*(*(a3 + *(*a3 - 56)) + 24))(a3 + *(*a3 - 56));
    if (v81)
    {
      goto LABEL_136;
    }

    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
LABEL_141:
  }

  v9 = (*(*a3 + 128))(a3);
  if (!v9)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
    goto LABEL_141;
  }

  v10 = v9;
  memset(&v87, 0, sizeof(v87));
  if (a5 == 5)
  {
    v11 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v9);
    v12 = std::basic_string<char16_t>::operator=(&v87, v11);
    v13 = a1[94];
    v14 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v12);
    (*(*v10 + 64))(v10, v13, v14);
    goto LABEL_132;
  }

  if (a5 == 1)
  {
    v15 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v9);
  }

  else
  {
    v15 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v9);
  }

  std::basic_string<char16_t>::operator=(&v87, v15);
  Case = morphun::dialog::language::PlCommonConceptFactory::getCase(&v86, a1[94], v10);
  if (a5 == 1)
  {
    v17 = morphun::grammar::synthesis::GrammemeConstants::CASE_ACCUSATIVE(Case);
    v18 = *(v17 + 23);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(v17 + 8);
    }

    size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v86.__r_.__value_.__l.__size_;
    }

    if (v18 != size)
    {
      goto LABEL_130;
    }

    if (v18)
    {
      v21 = &v86;
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v86.__r_.__value_.__r.__words[0];
      }

      if (v19 >= 0)
      {
        v22 = v17;
      }

      else
      {
        v22 = *v17;
      }

      while (v21->__r_.__value_.__s.__data_[0] == *v22)
      {
        ++v22;
        v21 = (v21 + 2);
        if (!--v18)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_130;
    }

LABEL_22:
    Gender = morphun::dialog::language::PlCommonConceptFactory::getGender(&v85, a1[95], v10);
    v24 = morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(Gender);
    v25 = *(v24 + 23);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(v24 + 8);
    }

    v27 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v85.__r_.__value_.__l.__size_;
    }

    if (v25 == v27)
    {
      if (!v25)
      {
LABEL_35:
        v30 = a1[94];
        v31 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v24);
        (*(*v10 + 64))(v10, v30, v31);
LABEL_128:
        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }

        goto LABEL_130;
      }

      v28 = &v85;
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = v85.__r_.__value_.__r.__words[0];
      }

      if (v26 >= 0)
      {
        v29 = v24;
      }

      else
      {
        v29 = *v24;
      }

      while (v28->__r_.__value_.__s.__data_[0] == *v29)
      {
        ++v29;
        v28 = (v28 + 2);
        if (!--v25)
        {
          goto LABEL_35;
        }
      }
    }

    v54 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v24);
    v55 = *(v54 + 23);
    v56 = v55;
    if ((v55 & 0x80u) != 0)
    {
      v55 = *(v54 + 8);
    }

    v57 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v57 = v85.__r_.__value_.__l.__size_;
    }

    if (v55 == v57)
    {
      if (v55)
      {
        v58 = &v85;
        if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v58 = v85.__r_.__value_.__r.__words[0];
        }

        if (v56 >= 0)
        {
          v59 = v54;
        }

        else
        {
          v59 = *v54;
        }

        while (v58->__r_.__value_.__s.__data_[0] == *v59)
        {
          ++v59;
          v58 = (v58 + 2);
          if (!--v55)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
LABEL_96:
        Animacy = morphun::dialog::language::PlCommonConceptFactory::getAnimacy(&__p, a1[96], v10);
        v61 = morphun::grammar::synthesis::GrammemeConstants::ANIMACY_HUMAN(Animacy);
        v62 = std::operator==[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v61, &__p);
        if (v62 || (v63 = morphun::grammar::synthesis::GrammemeConstants::ANIMACY_ANIMATE(v62), v62 = std::operator==[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v63, &__p)))
        {
          v64 = a1[94];
          v65 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v62);
        }

        else
        {
          v64 = a1[94];
          v65 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v62);
        }

        (*(*v10 + 64))(v10, v64, v65);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    goto LABEL_128;
  }

  if (a5 == 3)
  {
    v32 = morphun::grammar::synthesis::GrammemeConstants::CASE_ACCUSATIVE(Case);
    v33 = *(v32 + 23);
    v34 = v33;
    if ((v33 & 0x80u) != 0)
    {
      v33 = *(v32 + 8);
    }

    v35 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = v86.__r_.__value_.__l.__size_;
    }

    if (v33 != v35)
    {
      goto LABEL_130;
    }

    if (v33)
    {
      v36 = &v86;
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v86.__r_.__value_.__r.__words[0];
      }

      if (v34 >= 0)
      {
        v37 = v32;
      }

      else
      {
        v37 = *v32;
      }

      while (v36->__r_.__value_.__s.__data_[0] == *v37)
      {
        ++v37;
        v36 = (v36 + 2);
        if (!--v33)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_130;
    }

LABEL_50:
    v38 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v32);
    v39 = morphun::dialog::language::PlCommonConceptFactory::getGender(&v85, a1[95], v10);
    v40 = *(v38 + 23);
    v41 = *(v38 + 8);
    if (v40 >= 0)
    {
      v41 = *(v38 + 23);
    }

    v42 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    v43 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v42 = v85.__r_.__value_.__l.__size_;
    }

    if (v41 == v42)
    {
      if (!v41)
      {
LABEL_63:
        v46 = morphun::grammar::synthesis::GrammemeConstants::ANIMACY_HUMAN(v39);
        morphun::dialog::language::PlCommonConceptFactory::getAnimacy(&__p, a1[96], v10);
        v39 = std::operator==[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v46, &__p);
        v47 = v39;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v43 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
        goto LABEL_120;
      }

      v44 = v85.__r_.__value_.__r.__words[0];
      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v85;
      }

      if (v40 >= 0)
      {
        v45 = v38;
      }

      else
      {
        v45 = *v38;
      }

      while (v44->__r_.__value_.__s.__data_[0] == *v45)
      {
        ++v45;
        v44 = (v44 + 2);
        if (!--v41)
        {
          goto LABEL_63;
        }
      }
    }

    v47 = 0;
LABEL_120:
    if (v43 < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    v78 = a1[94];
    if (v47)
    {
      v79 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v39);
    }

    else
    {
      v79 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v39);
    }

    goto LABEL_118;
  }

  v48 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v48 = v86.__r_.__value_.__l.__size_;
  }

  if (v48)
  {
    Case = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(Case);
    v49 = *(Case + 23);
    v50 = v49;
    if ((v49 & 0x80u) != 0)
    {
      v49 = *(Case + 8);
    }

    v51 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v51 = v86.__r_.__value_.__l.__size_;
    }

    if (v49 != v51)
    {
      goto LABEL_99;
    }

    if (v49)
    {
      v52 = &v86;
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v52 = v86.__r_.__value_.__r.__words[0];
      }

      if (v50 >= 0)
      {
        v53 = Case;
      }

      else
      {
        v53 = *Case;
      }

      while (v52->__r_.__value_.__s.__data_[0] == *v53)
      {
        ++v53;
        v52 = (v52 + 2);
        if (!--v49)
        {
          goto LABEL_117;
        }
      }

LABEL_99:
      Case = morphun::grammar::synthesis::GrammemeConstants::CASE_ACCUSATIVE(Case);
      v66 = *(Case + 23);
      v67 = *(Case + 8);
      if (v66 >= 0)
      {
        v67 = *(Case + 23);
      }

      v68 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v68 = v86.__r_.__value_.__l.__size_;
      }

      if (v67 != v68)
      {
        goto LABEL_130;
      }

      if (v67)
      {
        v69 = &v86;
        if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v69 = v86.__r_.__value_.__r.__words[0];
        }

        v70 = v66 >= 0 ? Case : *Case;
        v71 = v67 - 1;
        do
        {
          v73 = *v70++;
          v72 = v73;
          v75 = v69->__r_.__value_.__s.__data_[0];
          v69 = (v69 + 2);
          v74 = v75;
          v77 = v71-- != 0;
        }

        while (v74 == v72 && v77);
        if (v74 != v72)
        {
          goto LABEL_130;
        }
      }
    }
  }

LABEL_117:
  v78 = a1[94];
  v79 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(Case);
LABEL_118:
  (*(*v10 + 64))(v10, v78, v79);
LABEL_130:
  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

LABEL_132:
  v80 = a1[47];
  npc<morphun::dialog::SemanticFeature const>(v80);
  (*(*v10 + 64))(v10, v80, &v87);
  v81 = (*(*(v10 + *(*v10 - 56)) + 24))(v10 + *(*v10 - 56));
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  (*(*v10 + 16))(v10);
  if (!v81)
  {
    goto LABEL_135;
  }

LABEL_136:
  memset(&v87, 0, sizeof(v87));
  (*(*a1 + 120))(a1, a2, v81, &v87, a5);
  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v87.__r_.__value_.__l.__data_);
  }

  return (*(*v81 + 16))(v81);
}

void sub_1BE5BAB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
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

  (*(*v32 + 16))(v32);
  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::language::PlCommonConceptFactory::getCase(std::basic_string<char16_t> *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  result = (*(*a3 + 104))(a3);
  v5 = result;
  if (result)
  {
    v6 = (*(*result + 32))(result);
    std::basic_string<char16_t>::operator=(a1, v6);
    v7 = *(*v5 + 16);

    return v7(v5);
  }

  return result;
}

void sub_1BE5BAD48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dialog::language::PlCommonConceptFactory::getGender(std::basic_string<char16_t> *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  result = (*(*a3 + 104))(a3);
  v5 = result;
  if (result)
  {
    v6 = (*(*result + 32))(result);
    std::basic_string<char16_t>::operator=(a1, v6);
    v7 = *(*v5 + 16);

    return v7(v5);
  }

  return result;
}

void sub_1BE5BAE30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dialog::language::PlCommonConceptFactory::getAnimacy(std::basic_string<char16_t> *a1, uint64_t a2, uint64_t a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  result = (*(*a3 + 104))(a3);
  v5 = result;
  if (result)
  {
    v6 = (*(*result + 32))(result);
    std::basic_string<char16_t>::operator=(a1, v6);
    v7 = *(*v5 + 16);

    return v7(v5);
  }

  return result;
}

void sub_1BE5BAF18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::language::PlCommonConceptFactory::quantify(morphun::dialog::language::PlCommonConceptFactory *this, const morphun::dialog::NumberConcept *a2, const morphun::dialog::SemanticFeatureConceptBase *a3)
{
  v98 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  morphun::dialog::language::PlCommonConceptFactory::getGender(&v95, *(this + 95), a3);
  memset(__p, 0, 24);
  morphun::dialog::SpeakableString::SpeakableString(v94, __p);
  size = HIBYTE(v95.__r_.__value_.__r.__words[2]);
  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v95.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    (*(*a2 + 208))(__p, a2);
    morphun::dialog::SpeakableString::operator=(v94, __p);
    goto LABEL_199;
  }

  Case = morphun::dialog::language::PlCommonConceptFactory::getCase(&v93, *(this + 94), a3);
  v8 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(Case);
  v9 = *(v8 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v8 + 8);
  }

  v11 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
  if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v93.__r_.__value_.__l.__size_;
  }

  if (v9 == v11)
  {
    if (v9)
    {
      v12 = v93.__r_.__value_.__r.__words[0];
      if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v93;
      }

      if (v10 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = *v8;
      }

      while (v12->__r_.__value_.__s.__data_[0] == *v13)
      {
        ++v13;
        v12 = (v12 + 2);
        if (!--v9)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        *v93.__r_.__value_.__l.__data_ = 0;
        v93.__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        v93.__r_.__value_.__s.__data_[0] = 0;
        *(&v93.__r_.__value_.__s + 23) = 0;
      }
    }
  }

  Animacy = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v8);
  v15 = *(Animacy + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(Animacy + 8);
  }

  v17 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v95.__r_.__value_.__l.__size_;
  }

  if (v15 != v17)
  {
    goto LABEL_86;
  }

  if (v15)
  {
    v18 = &v95;
    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v95.__r_.__value_.__r.__words[0];
    }

    if (v16 >= 0)
    {
      v19 = Animacy;
    }

    else
    {
      v19 = *Animacy;
    }

    while (v18->__r_.__value_.__s.__data_[0] == *v19)
    {
      ++v19;
      v18 = (v18 + 2);
      if (!--v15)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_86;
  }

LABEL_35:
  v20 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
  if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v93.__r_.__value_.__l.__size_;
  }

  if (v20)
  {
    Animacy = morphun::grammar::synthesis::GrammemeConstants::CASE_ACCUSATIVE(Animacy);
    v21 = *(Animacy + 23);
    v22 = v21;
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(Animacy + 8);
    }

    v23 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = v93.__r_.__value_.__l.__size_;
    }

    if (v21 != v23)
    {
      goto LABEL_86;
    }

    if (v21)
    {
      v24 = &v93;
      if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = v93.__r_.__value_.__r.__words[0];
      }

      if (v22 >= 0)
      {
        v25 = Animacy;
      }

      else
      {
        v25 = *Animacy;
      }

      while (v24->__r_.__value_.__s.__data_[0] == *v25)
      {
        ++v25;
        v24 = (v24 + 2);
        if (!--v21)
        {
          goto LABEL_51;
        }
      }

      goto LABEL_86;
    }
  }

LABEL_51:
  v26 = morphun::grammar::synthesis::GrammemeConstants::ANIMACY_HUMAN(Animacy);
  Animacy = morphun::dialog::language::PlCommonConceptFactory::getAnimacy(__p, *(this + 96), a3);
  v27 = *(v26 + 23);
  if (v27 >= 0)
  {
    v28 = *(v26 + 23);
  }

  else
  {
    v28 = *(v26 + 8);
  }

  v29 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v29 = __p[0].__r_.__value_.__l.__size_;
  }

  if (v28 == v29)
  {
    if (!v28)
    {
      v39 = 1;
      if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_72:
        if (v39)
        {
          goto LABEL_73;
        }

        goto LABEL_86;
      }

LABEL_85:
      operator delete(__p[0].__r_.__value_.__l.__data_);
      if (v39)
      {
LABEL_73:
        v40 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = v93.__r_.__value_.__l.__size_;
        }

        if (v40)
        {
          std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "-");
          if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = &v93;
          }

          else
          {
            v41 = v93.__r_.__value_.__r.__words[0];
          }

          if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v42 = v93.__r_.__value_.__l.__size_;
          }

          std::basic_string<char16_t>::append(__p, v41, v42);
          __dst.__r_.__value_.__r.__words[0] = __p[0].__r_.__value_.__l.__size_;
          v43 = __p[0].__r_.__value_.__r.__words[0];
          *(__dst.__r_.__value_.__r.__words + 7) = *(&__p[0].__r_.__value_.__r.__words[1] + 7);
          v44 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
          memset(__p, 0, 24);
          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
            v93.__r_.__value_.__r.__words[0] = v43;
            v93.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
            *(&v93.__r_.__value_.__r.__words[1] + 7) = *(__dst.__r_.__value_.__r.__words + 7);
            *(&v93.__r_.__value_.__s + 23) = v44;
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v93.__r_.__value_.__r.__words[0] = v43;
            v93.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
            *(&v93.__r_.__value_.__r.__words[1] + 7) = *(__dst.__r_.__value_.__r.__words + 7);
            *(&v93.__r_.__value_.__s + 23) = v44;
          }
        }

        std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"-personal");
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v83 = __p;
        }

        else
        {
          v83 = __p[0].__r_.__value_.__r.__words[0];
        }

        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v84 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        }

        else
        {
          v84 = __p[0].__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::append(&v93, v83, v84);
        if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_179;
        }

LABEL_177:
        v77 = __p[0].__r_.__value_.__r.__words[0];
LABEL_178:
        operator delete(v77);
        goto LABEL_179;
      }

LABEL_86:
      v45 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(Animacy);
      v46 = *(v45 + 23);
      v47 = v46;
      if ((v46 & 0x80u) != 0)
      {
        v46 = *(v45 + 8);
      }

      v48 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v48 = v95.__r_.__value_.__l.__size_;
      }

      if (v46 != v48)
      {
        goto LABEL_155;
      }

      if (v46)
      {
        v49 = &v95;
        if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v49 = v95.__r_.__value_.__r.__words[0];
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
            goto LABEL_99;
          }
        }

        goto LABEL_155;
      }

LABEL_99:
      v51 = morphun::grammar::synthesis::GrammemeConstants::CASE_ACCUSATIVE(v45);
      v52 = *(v51 + 23);
      v53 = v52;
      if ((v52 & 0x80u) != 0)
      {
        v52 = *(v51 + 8);
      }

      v54 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
      if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v54 = v93.__r_.__value_.__l.__size_;
      }

      if (v52 != v54)
      {
LABEL_155:
        v78 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v78 = v93.__r_.__value_.__l.__size_;
        }

        if (!v78)
        {
          goto LABEL_179;
        }

        std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "-");
        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v79 = &v93;
        }

        else
        {
          v79 = v93.__r_.__value_.__r.__words[0];
        }

        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v80 = v93.__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::append(__p, v79, v80);
        __dst.__r_.__value_.__r.__words[0] = __p[0].__r_.__value_.__l.__size_;
        v81 = __p[0].__r_.__value_.__r.__words[0];
        *(__dst.__r_.__value_.__r.__words + 7) = *(&__p[0].__r_.__value_.__r.__words[1] + 7);
        v82 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        memset(__p, 0, 24);
        if ((SHIBYTE(v93.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          v93.__r_.__value_.__r.__words[0] = v81;
          v93.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
          *(&v93.__r_.__value_.__r.__words[1] + 7) = *(__dst.__r_.__value_.__r.__words + 7);
          *(&v93.__r_.__value_.__s + 23) = v82;
LABEL_179:
          v85 = std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v96, L"cardinal-");
          if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v86 = &v95;
          }

          else
          {
            v86 = v95.__r_.__value_.__r.__words[0];
          }

          if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v87 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v87 = v95.__r_.__value_.__l.__size_;
          }

          std::basic_string<char16_t>::append(v85, v86, v87);
          v92 = v96;
          memset(&v96, 0, sizeof(v96));
          if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v88 = &v93;
          }

          else
          {
            v88 = v93.__r_.__value_.__r.__words[0];
          }

          if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v89 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v89 = v93.__r_.__value_.__l.__size_;
          }

          std::basic_string<char16_t>::append(&v92, v88, v89);
          __dst = v92;
          memset(&v92, 0, sizeof(v92));
          (*(*a2 + 200))(__p, a2, &__dst);
          morphun::dialog::SpeakableString::operator=(v94, __p);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v92.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

LABEL_199:
          morphun::dialog::CommonConceptFactoryImpl::quantify(this, a2, v94, a3);
        }

        operator delete(v93.__r_.__value_.__l.__data_);
        v93.__r_.__value_.__r.__words[0] = v81;
        v93.__r_.__value_.__l.__size_ = __dst.__r_.__value_.__r.__words[0];
        *(&v93.__r_.__value_.__r.__words[1] + 7) = *(__dst.__r_.__value_.__r.__words + 7);
        *(&v93.__r_.__value_.__s + 23) = v82;
        if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_179;
        }

        goto LABEL_177;
      }

      if (v52)
      {
        v55 = &v93;
        if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v55 = v93.__r_.__value_.__r.__words[0];
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
            goto LABEL_112;
          }
        }

        goto LABEL_155;
      }

LABEL_112:
      v57 = morphun::grammar::synthesis::GrammemeConstants::ANIMACY_ANIMATE(v51);
      morphun::dialog::language::PlCommonConceptFactory::getAnimacy(__p, *(this + 96), a3);
      v58 = *(v57 + 23);
      if (v58 >= 0)
      {
        v59 = *(v57 + 23);
      }

      else
      {
        v59 = *(v57 + 8);
      }

      v60 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v60 = __p[0].__r_.__value_.__l.__size_;
      }

      if (v59 == v60)
      {
        if (!v59)
        {
          v69 = 1;
          if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_134:
            if (v69)
            {
              v70 = std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "-");
              if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v71 = &v93;
              }

              else
              {
                v71 = v93.__r_.__value_.__r.__words[0];
              }

              if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v72 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v72 = v93.__r_.__value_.__l.__size_;
              }

              std::basic_string<char16_t>::append(v70, v71, v72);
              __p[0] = __dst;
              memset(&__dst, 0, sizeof(__dst));
              std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v92, L"-animate");
              if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v73 = &v92;
              }

              else
              {
                v73 = v92.__r_.__value_.__r.__words[0];
              }

              if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v74 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v74 = v92.__r_.__value_.__l.__size_;
              }

              std::basic_string<char16_t>::append(__p, v73, v74);
              v96.__r_.__value_.__r.__words[0] = __p[0].__r_.__value_.__l.__size_;
              v75 = __p[0].__r_.__value_.__r.__words[0];
              *(v96.__r_.__value_.__r.__words + 7) = *(&__p[0].__r_.__value_.__r.__words[1] + 7);
              v76 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
              memset(__p, 0, 24);
              if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v93.__r_.__value_.__l.__data_);
              }

              v93.__r_.__value_.__r.__words[0] = v75;
              v93.__r_.__value_.__l.__size_ = v96.__r_.__value_.__r.__words[0];
              *(&v93.__r_.__value_.__r.__words[1] + 7) = *(v96.__r_.__value_.__r.__words + 7);
              *(&v93.__r_.__value_.__s + 23) = v76;
              if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v92.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_179;
              }

              v77 = __dst.__r_.__value_.__r.__words[0];
              goto LABEL_178;
            }

            goto LABEL_155;
          }

LABEL_133:
          operator delete(__p[0].__r_.__value_.__l.__data_);
          goto LABEL_134;
        }

        v61 = __p[0].__r_.__value_.__r.__words[0];
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v61 = __p;
        }

        if (v58 >= 0)
        {
          v62 = v57;
        }

        else
        {
          v62 = *v57;
        }

        v63 = v59 - 1;
        do
        {
          v65 = *v62++;
          v64 = v65;
          v67 = v61->__r_.__value_.__s.__data_[0];
          v61 = (v61 + 2);
          v66 = v67;
          v37 = v63-- != 0;
          v68 = v37;
          v69 = v66 == v64;
        }

        while (v66 == v64 && (v68 & 1) != 0);
      }

      else
      {
        v69 = 0;
      }

      if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_134;
      }

      goto LABEL_133;
    }

    v30 = __p[0].__r_.__value_.__r.__words[0];
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = __p;
    }

    if (v27 >= 0)
    {
      v31 = v26;
    }

    else
    {
      v31 = *v26;
    }

    v32 = v28 - 1;
    do
    {
      v34 = *v31++;
      v33 = v34;
      v36 = v30->__r_.__value_.__s.__data_[0];
      v30 = (v30 + 2);
      v35 = v36;
      v37 = v32-- != 0;
      v38 = v37;
      v39 = v35 == v33;
    }

    while (v35 == v33 && (v38 & 1) != 0);
  }

  else
  {
    v39 = 0;
  }

  if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_72;
  }

  goto LABEL_85;
}

void sub_1BE5BB8A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v41 - 73) < 0)
  {
    operator delete(*(v41 - 96));
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::language::PlCommonConceptFactory::~PlCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC3B0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC3B0);
}

void *morphun::analysis::filter::SplitPunctuationFilter::reset(morphun::analysis::filter::SplitPunctuationFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::KeywordAttribute>(this);
  *(this + 17) = result;
  return result;
}

uint64_t morphun::analysis::filter::SplitPunctuationFilter::incrementToken(morphun::analysis::filter::SplitPunctuationFilter *this)
{
  v2 = 0;
  v3 = (this + 312);
  v4 = (this + 336);
  v5 = (this + 360);
  v50 = (this + 336);
  __str = (this + 312);
  v49 = (this + 360);
  while (1)
  {
    v52 = v2;
    v6 = *(this + 335);
    if (v6 < 0)
    {
      v8 = *(this + 40);
      if (v8)
      {
        v7 = v3->__r_.__value_.__r.__words[0];
        goto LABEL_21;
      }
    }

    else if (*(this + 335))
    {
      v7 = v3;
      v8 = *(this + 335);
LABEL_19:
      if (!v6)
      {
        goto LABEL_111;
      }

      goto LABEL_22;
    }

    v9 = *(this + 15);
    if (!v9)
    {
      goto LABEL_114;
    }

    if (!(*(*v9 + 24))(v9))
    {
      break;
    }

    v10 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
    v11 = *(*v10 - 96);
    v7 = (v10 + v11);
    v8 = *(v10 + v11 + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v7 = *v7;
      v8 = *(v10 + v11 + 8);
    }

    v12 = (*(this + 16) + *(**(this + 16) - 96));
    v13 = *(v12 + 23);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v13 = *(v12 + 1);
      if (*v12)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13 == 0;
      }

      if (!v14)
      {
        __break(1u);
LABEL_114:
        exception = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(exception);
      }

      v12 = *v12;
    }

    std::basic_string<char16_t>::__assign_external(v3, v12, v13);
    LODWORD(v6) = *(this + 335);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    if (!*(this + 40))
    {
      goto LABEL_111;
    }

LABEL_22:
    v15 = *(this + 17);
    if (v15 && ((*(*v15 + 56))(v15) & 1) != 0)
    {
      goto LABEL_111;
    }

    if (v8 < 1)
    {
      v19 = 0;
      v17 = 0;
      v53 = 0;
    }

    else
    {
      v16 = 0;
      v53 = 0;
      v17 = 0;
      v18 = 0;
      do
      {
        v19 = v16;
        while (1)
        {
          v20 = morphun::util::StringViewUtils::codePointAt(v7, v8, v19);
          if (MEMORY[0x1BFB49A20](**(this + 37), v20))
          {
            break;
          }

          if (v18)
          {
            v21 = **(this + 37);
            v22 = uset_containsAllCodePoints();
            if (*(this + 20))
            {
              v23 = morphun::analysis::filter::LanguageExpansion::expandWithWorkspace(this + 144, v7, v8, this + 384) != 0;
            }

            else
            {
              v23 = 0;
            }

            v24 = *(this + 38);
            v25 = morphun::util::StringViewUtils::codePointAt(v7, v8, v53);
            LOBYTE(v24) = MEMORY[0x1BFB49A20](*v24, v25);
            v26 = *(this + 38);
            v27 = morphun::util::StringViewUtils::codePointAt(v7, v8, v17);
            v28 = MEMORY[0x1BFB49A20](*v26, v27);
            isAdjacentDigit = morphun::analysis::filter::SplitPunctuationFilter::isAdjacentDigit(v7, v8, v53 - 1);
            v30 = morphun::analysis::filter::SplitPunctuationFilter::isAdjacentDigit(v7, v8, v17 + 1);
            if (v24)
            {
              v31 = isAdjacentDigit;
            }

            else
            {
              v31 = 0;
            }

            if (v28)
            {
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }

            if (!v22 && !v23 && !v31 && !v32)
            {
              v19 = v17;
              v5 = v49;
              v4 = v50;
              goto LABEL_57;
            }

            v19 = v17;
            if (!isAdjacentDigit && !v30)
            {
              goto LABEL_108;
            }
          }

          v18 = 0;
          if (v20 < 0x10000)
          {
            v33 = 1;
          }

          else
          {
            v33 = 2;
          }

          v19 += v33;
          if (v19 >= v8)
          {
            v5 = v49;
            v4 = v50;
            goto LABEL_57;
          }
        }

        v34 = v53;
        if ((v18 & 1) == 0)
        {
          v34 = v19;
        }

        v53 = v34;
        v18 = 1;
        if (v20 < 0x10000)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        v16 = v35 + v19;
        v17 = v19;
        v5 = v49;
        v4 = v50;
      }

      while (v16 < v8);
    }

LABEL_57:
    if (v19 >= v8)
    {
LABEL_108:
      v46 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
      std::basic_string<char16_t>::operator=((v46 + *(*v46 - 96)), __str);
      if (*(this + 335) < 0)
      {
        **(this + 39) = 0;
        *(this + 40) = 0;
      }

      else
      {
        *(this + 156) = 0;
        *(this + 335) = 0;
      }

LABEL_111:
      v2 = 1;
      return (v52 | v2) & 1;
    }

    if (*(this + 359) < 0)
    {
      **(this + 42) = 0;
      *(this + 43) = 0;
    }

    else
    {
      *(this + 168) = 0;
      *(this + 359) = 0;
    }

    if (*(this + 383) < 0)
    {
      **(this + 45) = 0;
      *(this + 46) = 0;
    }

    else
    {
      *(this + 180) = 0;
      *(this + 383) = 0;
    }

    npc<std::basic_string<char16_t>>(v4);
    if (*(this + 359) < 0)
    {
      **(this + 42) = 0;
      *(this + 43) = 0;
    }

    else
    {
      *(this + 168) = 0;
      *(this + 359) = 0;
    }

    npc<std::basic_string<char16_t>>(v5);
    if (*(this + 383) < 0)
    {
      **(this + 45) = 0;
      *(this + 46) = 0;
    }

    else
    {
      *(this + 180) = 0;
      *(this + 383) = 0;
    }

    if (*(this + 359) < 0)
    {
      v36 = (*(this + 44) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v36 = 10;
    }

    if (v8 >= v36)
    {
      std::basic_string<char16_t>::reserve(v4, v8);
    }

    if (*(this + 383) < 0)
    {
      v37 = (*(this + 47) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v37 = 10;
    }

    if (v8 >= v37)
    {
      std::basic_string<char16_t>::reserve(v5, v8);
    }

    if (v8 >= 1)
    {
      v38 = 0;
      do
      {
        v39 = morphun::util::StringViewUtils::codePointAt(v7, v8, v38);
        v40 = v4;
        if (v38 < v53 || (v40 = v5, v38 > v17))
        {
          morphun::util::StringUtils::appendCodePoint(v40, v39);
        }

        if (v39 < 0x10000)
        {
          v41 = 1;
        }

        else
        {
          v41 = 2;
        }

        v38 += v41;
      }

      while (v38 < v8);
    }

    v42 = *(this + 383);
    if (v42 < 0)
    {
      v42 = *(this + 46);
    }

    v3 = __str;
    if (v42)
    {
      std::basic_string<char16_t>::operator=(__str, v5);
    }

    else if (*(this + 335) < 0)
    {
      **(this + 39) = 0;
      *(this + 40) = 0;
    }

    else
    {
      *(this + 156) = 0;
      *(this + 335) = 0;
    }

    v43 = *(this + 359);
    if ((*(this + 359) & 0x80000000) == 0)
    {
      if (!*(this + 359))
      {
        goto LABEL_99;
      }

LABEL_98:
      v44 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
      std::basic_string<char16_t>::operator=((v44 + *(*v44 - 96)), v4);
      v43 = *(this + 359);
      goto LABEL_99;
    }

    if (*(this + 43))
    {
      goto LABEL_98;
    }

LABEL_99:
    if ((v43 & 0x80) != 0)
    {
      v43 = *(this + 43);
    }

    if (v43)
    {
      goto LABEL_111;
    }

    v45 = *(this + 383);
    if (v45 < 0)
    {
      v45 = *(this + 46);
    }

    v2 = 1;
    if (!v45)
    {
      return (v52 | v2) & 1;
    }
  }

  v2 = 0;
  return (v52 | v2) & 1;
}

BOOL morphun::analysis::filter::SplitPunctuationFilter::isAdjacentDigit(uint64_t a1, unint64_t a2, signed int a3)
{
  result = 0;
  if ((a3 & 0x80000000) == 0 && a2 > a3)
  {
    v5 = morphun::util::StringViewUtils::codePointAt(a1, a2, a3);
    return u_isdigit(v5) != 0;
  }

  return result;
}

void morphun::analysis::filter::SplitPunctuationFilter::~SplitPunctuationFilter(void **this)
{
  if (*(this + 407) < 0)
  {
    operator delete(this[48]);
  }

  if (*(this + 383) < 0)
  {
    operator delete(this[45]);
  }

  if (*(this + 359) < 0)
  {
    operator delete(this[42]);
  }

  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  std::__tree<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>>>::destroy(this[19]);
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA388);

  JUMPOUT(0x1BFB49160);
}

{
  if (*(this + 407) < 0)
  {
    operator delete(this[48]);
  }

  if (*(this + 383) < 0)
  {
    operator delete(this[45]);
  }

  if (*(this + 359) < 0)
  {
    operator delete(this[42]);
  }

  if (*(this + 335) < 0)
  {
    operator delete(this[39]);
  }

  std::__tree<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>>>::destroy(this[19]);

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA388);
}

void std::__tree<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::vector<std::u16string_view>>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::vector<std::u16string_view>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      a1[7] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

void *morphun::util::lemmatization::FeedForwardInflectionAnalyzer::FeedForwardInflectionAnalyzer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  morphun::util::ULocale::ULocale((a1 + 3), a5);
  return a1;
}

{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  morphun::util::ULocale::ULocale((a1 + 3), a5);
  return a1;
}

std::basic_string<char16_t> *morphun::util::lemmatization::FeedForwardInflectionAnalyzer::getInflectionLikelihoods(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  morphun::util::lemmatization::FeedForwardInflectionAnalyzer::getWordFeatures(a1, a2, *a1, 7, v11);
  v3 = a1[2];
  if (!v3)
  {
    v8 = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(v8);
  }

  morphun::util::lemmatization::FeedForwardInflectionAnalyzer::infer(v11, v3, __p);
  v4 = a1[1];
  if (!v4)
  {
    v9 = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(v9);
  }

  v5 = morphun::util::lemmatization::FeedForwardInflectionAnalyzer::asInflectionLikelihoods(a1, __p, v4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }

  return v5;
}

void sub_1BE5BC500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  __cxa_free_exception(v13);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void morphun::util::lemmatization::FeedForwardInflectionAnalyzer::getWordFeatures(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = *(a3 + 16) + 1;
  std::vector<double>::vector[abi:se200100](a5, v10 * a4);
  memset(&v33, 0, sizeof(v33));
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    LODWORD(v13) = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  morphun::util::StringViewUtils::lowercase(&v33, v12, v13, a1 + 24);
  morphun::util::StringUtils::reverse(&v33);
  std::basic_string<char16_t>::resize(&v33, a4, 32);
  v14 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v33.__r_.__value_.__r.__words[1];
  }

  if (v15 < 1)
  {
LABEL_30:
    if (v14 < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v16 = 0;
    v17 = *(a3 + 8);
    v18 = *(a3 + 16);
    v19 = a3 + 8;
    v20 = *a5;
    v21 = (a5[1] - *a5) >> 3;
    v22 = v15 & 0x7FFFFFFF;
    while (1)
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v33.__r_.__value_.__l.__size_;
      }

      if (size < v16)
      {
        break;
      }

      v24 = v18;
      if (v17)
      {
        if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v33;
        }

        else
        {
          v25 = v33.__r_.__value_.__r.__words[0];
        }

        v26 = v25->__r_.__value_.__s.__data_[v16];
        v27 = v19;
        v28 = v17;
        do
        {
          v29 = *(v28 + 28);
          v30 = v29 >= v26;
          v31 = v29 < v26;
          if (v30)
          {
            v27 = v28;
          }

          v28 = *(v28 + 8 * v31);
        }

        while (v28);
        v24 = v18;
        if (v27 != v19)
        {
          v24 = v18;
          if (v26 >= *(v27 + 28))
          {
            v24 = *(v27 + 32);
          }
        }
      }

      v32 = v24 + v16 * v10;
      if (v21 <= v32)
      {
        break;
      }

      *(v20 + 8 * v32) = 0x3FF0000000000000;
      if (++v16 == v22)
      {
        v14 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
        goto LABEL_30;
      }
    }

    __break(1u);
  }
}

void sub_1BE5BC6EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

double morphun::util::lemmatization::FeedForwardInflectionAnalyzer::infer@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  std::vector<double>::__init_with_size[abi:se200100]<double *,double *>(a3, *a1, a1[1], (a1[1] - *a1) >> 3);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 != v7)
  {
    v8 = 1;
    do
    {
      morphun::util::lemmatization::FeedForwardInflectionAnalyzer::preMultiply(v6, a3, &v14);
      if (*a3)
      {
        operator delete(*a3);
      }

      v9 = v14;
      *a3 = v14;
      *(a3 + 16) = v15;
      v10 = v9;
      v11 = (v6 + 3);
      morphun::util::lemmatization::FeedForwardInflectionAnalyzer::add(a3, v11, &v14);
      if (v10)
      {
        operator delete(v10);
      }

      v12 = v14;
      *a3 = v14;
      *(a3 + 16) = v15;
      v13 = v12;
      if (v8 == -1431655765 * ((*(a2 + 8) - *a2) >> 4))
      {
        morphun::util::lemmatization::FeedForwardInflectionAnalyzer::softMax(a3, &v14);
      }

      else
      {
        morphun::util::lemmatization::FeedForwardInflectionAnalyzer::rectifiedLinear(a3, &v14);
      }

      if (v13)
      {
        operator delete(v13);
      }

      result = *&v14;
      *a3 = v14;
      *(a3 + 16) = v15;
      ++v8;
      v6 = v11 + 3;
    }

    while (v6 != v7);
  }

  return result;
}

void sub_1BE5BC854(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::basic_string<char16_t> *morphun::util::lemmatization::FeedForwardInflectionAnalyzer::asInflectionLikelihoods(uint64_t a1, void *a2, void *a3)
{
  memset(&v15, 0, sizeof(v15));
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v4 = a2[1] - *a2;
  if ((v4 >> 3) < 1)
  {
LABEL_12:
    operator new();
  }

  v6 = 0;
  v7 = 0;
  v8 = (v4 >> 3) & 0x7FFFFFFF;
  v9 = -1.0;
  while (v7 < (a2[1] - *a2) >> 3 && 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > v7)
  {
    v10 = *(*a2 + 8 * v7);
    result = std::__tree<std::basic_string<char16_t>>::__find_equal<std::basic_string<char16_t>>(&v13, &v16, (*a3 + v6));
    if (!result->__r_.__value_.__r.__words[0])
    {
      operator new();
    }

    if (v10 > v9)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) <= v7)
      {
        break;
      }

      result = std::basic_string<char16_t>::operator=(&v15, (*a3 + v6));
      v9 = v10;
    }

    ++v7;
    v6 += 24;
    if (v8 == v7)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1BE5BCAB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_free_exception(v18);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(a11);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<double>::__init_with_size[abi:se200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:se200100](result, a4);
  }

  return result;
}

void sub_1BE5BCB7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *morphun::util::lemmatization::FeedForwardInflectionAnalyzer::preMultiply@<X0>(void *a1@<X0>, double **a2@<X1>, uint64_t *a3@<X8>)
{
  result = a3;
  v5 = a1[1] - *a1;
  if (!v5)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  if (((a2[1] - *a2) >> 3) != v7)
  {
    v21 = a1;
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string((a2[1] - *a2), &v27);
    std::basic_string<char16_t>::insert(&v27, L"must be v->size() == m->size(), v->size()=", 0x2A, v23);
    v28 = v27;
    memset(&v27, 0, sizeof(v27));
    std::basic_string<char16_t>::append(&v28, ",", 0xDuLL);
    v29 = v28;
    memset(&v28, 0, sizeof(v28));
    morphun::util::StringUtils::to_u16string((0xAAAAAAAAAAAAAAABLL * ((v21[1] - *v21) >> 3)), &v26);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v26;
    }

    else
    {
      v24 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v29, v24, size);
    v30 = v29;
    memset(&v29, 0, sizeof(v29));
    morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &v30);
  }

  v8 = *(*a1 + 8) - **a1;
  result = std::vector<double>::vector[abi:se200100](a3, (v8 >> 3));
  if ((v8 >> 3) >= 1)
  {
    v9 = 0;
    v10 = *a2;
    v11 = a2[1] - *a2;
    v12 = *result;
    v13 = (result[1] - *result) >> 3;
    while (v7 < 1)
    {
      v16 = 0.0;
LABEL_13:
      if (v9 == v13)
      {
        goto LABEL_23;
      }

      *(v12 + 8 * v9++) = v16;
      if (v9 == ((v8 >> 3) & 0x7FFFFFFF))
      {
        return result;
      }
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
    v15 = (*a1 + 8);
    v16 = 0.0;
    result = v11;
    v17 = v10;
    v18 = v7 & 0x7FFFFFFF;
    while (result)
    {
      if (!v14)
      {
        break;
      }

      v19 = *(v15 - 1);
      if (v9 >= (*v15 - v19) >> 3)
      {
        break;
      }

      v20 = *v17++;
      v15 += 3;
      v16 = v16 + v20 * *(v19 + 8 * v9);
      --v14;
      result = (result - 1);
      if (!--v18)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_23;
  }

  return result;
}

void sub_1BE5BCDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
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

double **morphun::util::lemmatization::FeedForwardInflectionAnalyzer::add@<X0>(void *a1@<X0>, double **a2@<X1>, void *a3@<X8>)
{
  v6 = a1[1] - *a1;
  if (v6 != a2[1] - *a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v20 = a1;
    v21 = exception;
    morphun::util::StringUtils::to_u16string(((v20[1] - *v20) >> 3), &v26);
    std::basic_string<char16_t>::insert(&v26, "m", 0x29, v22);
    v27 = v26;
    memset(&v26, 0, sizeof(v26));
    std::basic_string<char16_t>::append(&v27, ",", 0xCuLL);
    v28 = v27;
    memset(&v27, 0, sizeof(v27));
    morphun::util::StringUtils::to_u16string((a2[1] - *a2), &v25);
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
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v28, v23, size);
    v29 = v28;
    memset(&v28, 0, sizeof(v28));
    morphun::exception::IllegalArgumentException::IllegalArgumentException(v21, &v29);
  }

  result = std::vector<double>::vector[abi:se200100](a3, v6 >> 3);
  v8 = *result;
  v9 = result[1] - *result;
  v10 = v9 >> 3;
  if ((v9 >> 3) >= 1)
  {
    v11 = *a1;
    v12 = (a1[1] - *a1) >> 3;
    v13 = *a2;
    v14 = a2[1] - *a2;
    v15 = (v9 >> 3) & 0x7FFFFFFF;
    while (v12 && v14 && v10)
    {
      v16 = *v11++;
      v17 = v16;
      v18 = *v13++;
      *v8++ = v17 + v18;
      --v10;
      --v14;
      --v12;
      if (!--v15)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1BE5BD054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void morphun::util::lemmatization::FeedForwardInflectionAnalyzer::softMax(double **a1@<X0>, long double **a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a1;
  if (v4 == *a1)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v7 = v4 - *a1;
  v8 = *v5;
  v9 = *a1;
  do
  {
    v10 = *v9++;
    v11 = v10;
    if (v10 > v8)
    {
      v8 = v11;
    }
  }

  while (v9 != v4);
  v12 = 0.0;
  do
  {
    v13 = *v5++;
    v12 = v12 + exp(v13 - v8);
  }

  while (v5 != v4);
  std::vector<double>::vector[abi:se200100](a2, v7);
  v15 = a1;
  v14 = *a1;
  v16 = v15[1] - v14;
  v17 = v16 >> 3;
  if ((v16 >> 3) >= 1)
  {
    v19 = a2;
    v18 = *a2;
    v20 = v19[1] - v18;
    v21 = (v16 >> 3) & 0x7FFFFFFF;
    while (v17 && v20)
    {
      v22 = *v14++;
      *v18++ = exp(v22 - v8) / v12;
      --v20;
      --v17;
      if (!--v21)
      {
        return;
      }
    }

    goto LABEL_14;
  }
}

double **morphun::util::lemmatization::FeedForwardInflectionAnalyzer::rectifiedLinear@<X0>(double **a1@<X0>, void *a2@<X8>)
{
  result = std::vector<double>::vector[abi:se200100](a2, a1[1] - *a1);
  v4 = *result;
  v5 = result[1] - *result;
  v6 = v5 >> 3;
  if ((v5 >> 3) >= 1)
  {
    v7 = *a1;
    v8 = a1[1] - *a1;
    v9 = (v5 >> 3) & 0x7FFFFFFF;
    while (v8 && v6)
    {
      v10 = *v7++;
      *v4++ = fmax(v10, 0.0);
      --v6;
      --v8;
      if (!--v9)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void *std::vector<double>::vector[abi:se200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:se200100](result, a2);
  }

  return result;
}

void sub_1BE5BD2D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void morphun::util::lemmatization::FeedForwardInflectionAnalyzer::activation(double **a1@<X0>, long double **a2@<X8>, int a3@<W1>)
{
  if (a3)
  {
    morphun::util::lemmatization::FeedForwardInflectionAnalyzer::softMax(a1, a2);
  }

  else
  {
    morphun::util::lemmatization::FeedForwardInflectionAnalyzer::rectifiedLinear(a1, a2);
  }
}

std::basic_string<char16_t> *morphun::util::lemmatization::FeedForwardInflectionAnalyzer::enforceSizeTo(int a1, std::basic_string<char16_t> *this)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  std::basic_string<char16_t>::resize(this, a1, 32);
  return this;
}

BOOL morphun::transliteration::ICUScriptTransliterator::transliterate(uint64_t a1, void **a2, unint64_t a3, uint64_t a4)
{
  if (!morphun::util::UnicodeSetUtils::containsSome(a1 + 136, a2, a3))
  {
    return 0;
  }

  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_36:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a3 > 0xA)
  {
    if ((a3 | 3) == 0xB)
    {
      v8 = 13;
    }

    else
    {
      v8 = (a3 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v8);
  }

  v22 = a3;
  v9 = (__p + 2 * a3);
  if (__p <= a2 && v9 > a2)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (a3)
  {
    memmove(__p, a2, 2 * a3);
  }

  *v9 = 0;
  if (*(a1 + 168))
  {
    icu4cxx::Transliterator::trans();
  }

  v10 = *(a1 + 152);
  icu4cxx::Transliterator::trans();
  v11 = v22;
  v12 = __p[0];
  if ((v22 & 0x80u) == 0)
  {
    v13 = v22;
  }

  else
  {
    v13 = __p[1];
  }

  if (a3 == v13)
  {
    if (!a3)
    {
LABEL_25:
      v17 = 1;
      if ((v22 & 0x80) == 0)
      {
        return !v17;
      }

LABEL_33:
      operator delete(__p[0]);
      return !v17;
    }

    v14 = __p;
    if ((v22 & 0x80u) != 0)
    {
      v14 = __p[0];
    }

    v15 = a3;
    v16 = a2;
    while (*v14 == *v16)
    {
      v16 = (v16 + 2);
      v14 = (v14 + 2);
      if (!--v15)
      {
        goto LABEL_25;
      }
    }
  }

  isAllLowerCase = morphun::util::StringViewUtils::isAllLowerCase(a2, a3);
  if (v11 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = v12;
  }

  morphun::transliteration::Transliterator::matchCase(a1, a4, v19, v13, a2, a3, isAllLowerCase);
  v17 = 0;
  if ((v22 & 0x80) != 0)
  {
    goto LABEL_33;
  }

  return !v17;
}

void sub_1BE5BD528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::basic_string<char16_t> *U16copy(void **a1, int a2, int a3, int a4)
{
  v7 = npc<std::basic_string<char16_t>>(a1);
  v8 = npc<std::basic_string<char16_t>>(v7);
  v9 = v8;
  if (*(v8 + 23) < 0)
  {
    v9 = *v8;
  }

  return std::basic_string<char16_t>::replace(v8, a4, 0, (v9 + 2 * a2), a3 - a2);
}

UChar *U16extract(const UChar *a1, int a2, int a3, unsigned __int16 *a4)
{
  v7 = a1;
  if (*(npc<std::basic_string<char16_t> const>(a1) + 23) < 0)
  {
    v7 = *v7;
  }

  return u_strncpy(a4, v7, a3 - a2);
}

uint64_t npc<std::basic_string<char16_t> const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

std::basic_string<char16_t> *U16replace(void **a1, int a2, int a3, const std::basic_string<char16_t>::value_type *a4, int a5)
{
  v9 = npc<std::basic_string<char16_t>>(a1);

  return std::basic_string<char16_t>::replace(v9, a2, a3 - a2, a4, a5);
}

uint64_t U16char32At(void *const *a1, int a2)
{
  result = npc<std::basic_string<char16_t> const>(a1);
  v4 = *(result + 23);
  if ((v4 & 0x80000000) != 0)
  {
    v6 = *(result + 8);
    if (v6 < a2)
    {
      goto LABEL_26;
    }

    v5 = a2;
    v7 = *result;
  }

  else
  {
    if (v4 < a2)
    {
      goto LABEL_26;
    }

    v5 = a2;
    LODWORD(v6) = *(result + 23);
    v7 = result;
  }

  v8 = *(v7 + 2 * v5);
  if ((v8 & 0xF800) != 0xD800)
  {
    return v8;
  }

  if ((v8 & 0x400) != 0)
  {
    v10 = (a2 - 1);
    if (a2 >= 1)
    {
      if ((v4 & 0x80000000) != 0)
      {
        if (*(result + 8) < v10)
        {
          goto LABEL_26;
        }

        result = *result;
      }

      else if (v10 > v4)
      {
        goto LABEL_26;
      }

      v11 = *(result + 2 * v10);
      v12 = (v11 & 0xFC00) == 55296;
      v13 = v8 + (v11 << 10);
      goto LABEL_22;
    }

    return v8;
  }

  v9 = a2 + 1;
  if (a2 + 1 == v6)
  {
    return v8;
  }

  if ((v4 & 0x80000000) == 0)
  {
    if (v9 > v4)
    {
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  if (*(result + 8) >= v9)
  {
    result = *result;
LABEL_21:
    v14 = *(result + 2 * v9);
    v12 = (v14 & 0xFC00) == 56320;
    v13 = v14 + (v8 << 10);
LABEL_22:
    v15 = v13 - 56613888;
    if (v12)
    {
      return v15;
    }

    else
    {
      return v8;
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t U16charAt(void *const *a1, unsigned int a2)
{
  v3 = npc<std::basic_string<char16_t> const>(a1);
  v4 = *(v3 + 23);
  if ((v4 & 0x80000000) != 0)
  {
    if (*(v3 + 8) <= a2)
    {
      goto LABEL_7;
    }

    v3 = *v3;
  }

  else if (v4 <= a2)
  {
LABEL_7:
    std::basic_string<char16_t>::__throw_out_of_range[abi:se200100]();
  }

  return *(v3 + 2 * a2);
}

uint64_t U16length(void *const *a1)
{
  result = *(npc<std::basic_string<char16_t> const>(a1) + 23);
  if (result < 0)
  {
    return *(a1 + 1);
  }

  return result;
}

void morphun::transliteration::ICUScriptTransliterator::~ICUScriptTransliterator(void **this)
{
  *this = &unk_1F3CD9600;
  v2 = (this + 17);
  icu4cxx::Transliterator::~Transliterator((this + 21));
  icu4cxx::Transliterator::~Transliterator((this + 19));
  icu4cxx::UnicodeSet::~UnicodeSet(v2);
  *this = &off_1F3CED608;

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD9600;
  v2 = (this + 17);
  icu4cxx::Transliterator::~Transliterator((this + 21));
  icu4cxx::Transliterator::~Transliterator((this + 19));
  icu4cxx::UnicodeSet::~UnicodeSet(v2);
  *this = &off_1F3CED608;
}

void icu4cxx::Transliterator::~Transliterator(icu4cxx::Transliterator *this)
{
  if (*(this + 8) == 1)
  {
    v1 = *this;
    utrans_close();
  }
}

const char *morphun::transliteration::ICUScriptTransliterator::createTransliterator(morphun::transliteration::ICUScriptTransliterator *this, const morphun::util::ULocale *a2, const morphun::util::ULocale *a3, icu4cxx::UnicodeSet *a4)
{
  v6 = this;
  v95 = *MEMORY[0x1E69E9840];
  code = U_ZERO_ERROR;
  *&v7 = -1;
  *(&v7 + 1) = -1;
  __dst[0] = v7;
  __dst[1] = v7;
  v8 = morphun::util::LocaleUtils::ROOT(this);
  v9 = *(v8 + 31);
  if (v9 >= 0)
  {
    v10 = *(v8 + 31);
  }

  else
  {
    v10 = *(v8 + 16);
  }

  v11 = *(v6 + 31);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v6 + 2);
  }

  if (v10 != v11)
  {
    goto LABEL_13;
  }

  v15 = *(v8 + 8);
  v13 = (v8 + 8);
  v14 = v15;
  if (v9 < 0)
  {
    v13 = v14;
  }

  v16 = v12 >= 0 ? v6 + 8 : *(v6 + 1);
  v17 = memcmp(v13, v16, v10);
  if (!v17)
  {
    v61 = morphun::util::LocaleUtils::ENGLISH(v17);
    morphun::util::ULocale::ULocale(&v93, v61);
    *&v62 = -1;
    *(&v62 + 1) = -1;
    __src = v62;
    v92 = v62;
    v19 = uscript_getCode();
    v63 = v19 - 1;
    if (v19 >= 1)
    {
      if (v63 >= 7)
      {
        v63 = 7;
      }

      memcpy(__dst, &__src, 4 * v63 + 4);
    }
  }

  else
  {
LABEL_13:
    if (*(v6 + 127) < 0)
    {
      v18 = *(v6 + 13);
    }

    v19 = uscript_getCode();
  }

  v89 = -1;
  if (*(a2 + 127) < 0)
  {
    v20 = *(a2 + 13);
  }

  uscript_getCode();
  __src = 0uLL;
  *&v92 = 0;
  Name = uscript_getName();
  std::string::basic_string[abi:se200100]<0>(&v93, Name);
  if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v93;
  }

  else
  {
    v22 = v93.__r_.__value_.__r.__words[0];
  }

  if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v93.__r_.__value_.__r.__words[1];
  }

  morphun::util::StringViewUtils::convert(&__src, v22, v23);
  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  memset(&v88, 0, sizeof(v88));
  memset(&v87, 0, sizeof(v87));
  if (v19 < 1)
  {
LABEL_169:
    if (!a3)
    {
      if ((SHIBYTE(v87.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        if (*(&v87.__r_.__value_.__s + 23))
        {
          goto LABEL_179;
        }

LABEL_188:
        v64 = 0;
        goto LABEL_180;
      }

      if (!v87.__r_.__value_.__l.__size_)
      {
        goto LABEL_188;
      }
    }

LABEL_179:
    v64 = utrans_openU();
LABEL_180:
    if (code >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      utrans_close();
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::ICUException::ICUException(exception, code);
    }

    if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v87.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v92) < 0)
    {
      operator delete(__src);
    }

    v65 = *MEMORY[0x1E69E9840];
    return v64;
  }

  v24 = v19;
  v25 = __dst;
  while (1)
  {
    v26 = *v25++;
    size = HIBYTE(v88.__r_.__value_.__r.__words[2]);
    if ((v88.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v88.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::basic_string<char16_t>::append(&v88, L";", 1uLL);
    }

    v84 = 0;
    v85 = 0;
    v86 = 0;
    result = uscript_getName();
    v29 = result;
    if (!result)
    {
      break;
    }

    v30 = strlen(result);
    morphun::util::StringViewUtils::convert(&v84, v29, v30);
    if (v86 >= 0)
    {
      v31 = &v84;
    }

    else
    {
      v31 = v84;
    }

    if (v86 >= 0)
    {
      v32 = HIBYTE(v86);
    }

    else
    {
      v32 = v85;
    }

    std::basic_string<char16_t>::append(&v88, v31, v32);
    std::basic_string<char16_t>::append(&v88, "-", 1uLL);
    if ((SBYTE7(v92) & 0x80u) == 0)
    {
      p_src = &__src;
    }

    else
    {
      p_src = __src;
    }

    if ((SBYTE7(v92) & 0x80u) == 0)
    {
      v34 = BYTE7(v92);
    }

    else
    {
      v34 = *(&__src + 1);
    }

    std::basic_string<char16_t>::append(&v88, p_src, v34);
    if (a3)
    {
      std::operator+<char16_t>(&v83, L"[:", &v84);
      std::basic_string<char16_t>::append(&v83, ":", 2uLL);
      v93 = v83;
      memset(&v83, 0, sizeof(v83));
      icu4cxx::UnicodeSet::UnicodeSet(&v82);
      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      MEMORY[0x1BFB499D0](*a3, v82.__r_.__value_.__r.__words[0]);
      if (LOBYTE(v82.__r_.__value_.__r.__words[1]) == 1)
      {
        uset_close();
      }
    }

    else
    {
      morphun::util::ResourceLocator::getRootForLocale(v6, &v76);
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v74, L"/transliteration/");
      if ((v75 & 0x80u) == 0)
      {
        v35 = v74;
      }

      else
      {
        v35 = v74[0];
      }

      if ((v75 & 0x80u) == 0)
      {
        v36 = v75;
      }

      else
      {
        v36 = v74[1];
      }

      std::basic_string<char16_t>::append(&v76, v35, v36);
      v77 = v76;
      memset(&v76, 0, sizeof(v76));
      v37 = *(a2 + 31);
      if (v37 >= 0)
      {
        v38 = a2 + 8;
      }

      else
      {
        v38 = *(a2 + 1);
      }

      if (v37 >= 0)
      {
        LODWORD(v39) = *(a2 + 31);
      }

      else
      {
        v39 = *(a2 + 2);
      }

      morphun::util::StringViewUtils::to_u16string(v38, v39, &v73);
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v73;
      }

      else
      {
        v40 = v73.__r_.__value_.__r.__words[0];
      }

      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v73.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::append(&v77, v40, v41);
      v78 = v77;
      memset(&v77, 0, sizeof(v77));
      std::basic_string<char16_t>::append(&v78, "/", 1uLL);
      v79 = v78;
      memset(&v78, 0, sizeof(v78));
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v71, L"transliteration_map_");
      if ((v72 & 0x80u) == 0)
      {
        v42 = v71;
      }

      else
      {
        v42 = v71[0];
      }

      if ((v72 & 0x80u) == 0)
      {
        v43 = v72;
      }

      else
      {
        v43 = v71[1];
      }

      std::basic_string<char16_t>::append(&v79, v42, v43);
      v80 = v79;
      memset(&v79, 0, sizeof(v79));
      if (v86 >= 0)
      {
        v44 = &v84;
      }

      else
      {
        v44 = v84;
      }

      if (v86 >= 0)
      {
        v45 = HIBYTE(v86);
      }

      else
      {
        v45 = v85;
      }

      std::basic_string<char16_t>::append(&v80, v44, v45);
      v81 = v80;
      memset(&v80, 0, sizeof(v80));
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v69, L"_");
      if ((v70 & 0x80u) == 0)
      {
        v46 = v69;
      }

      else
      {
        v46 = v69[0];
      }

      if ((v70 & 0x80u) == 0)
      {
        v47 = v70;
      }

      else
      {
        v47 = v69[1];
      }

      std::basic_string<char16_t>::append(&v81, v46, v47);
      v82 = v81;
      memset(&v81, 0, sizeof(v81));
      if ((SBYTE7(v92) & 0x80u) == 0)
      {
        v48 = &__src;
      }

      else
      {
        v48 = __src;
      }

      if ((SBYTE7(v92) & 0x80u) == 0)
      {
        v49 = BYTE7(v92);
      }

      else
      {
        v49 = *(&__src + 1);
      }

      std::basic_string<char16_t>::append(&v82, v48, v49);
      v93 = v82;
      memset(&v82, 0, sizeof(v82));
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L".rules");
      if ((v68 & 0x80u) == 0)
      {
        v50 = __p;
      }

      else
      {
        v50 = __p[0];
      }

      if ((v68 & 0x80u) == 0)
      {
        v51 = v68;
      }

      else
      {
        v51 = __p[1];
      }

      std::basic_string<char16_t>::append(&v93, v50, v51);
      v83 = v93;
      memset(&v93, 0, sizeof(v93));
      if (v68 < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (v70 < 0)
      {
        operator delete(v69[0]);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (v72 < 0)
      {
        operator delete(v71[0]);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      memset(&v82, 0, sizeof(v82));
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = &v83;
      }

      else
      {
        v52 = v83.__r_.__value_.__r.__words[0];
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v53 = v83.__r_.__value_.__r.__words[1];
      }

      morphun::util::StringViewUtils::convert(&v82, v52, v53);
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &v82;
      }

      else
      {
        v54 = v82.__r_.__value_.__r.__words[0];
      }

      if (access(v54, 0) != -1)
      {
        result = morphun::util::MemoryMappedFile::MemoryMappedFile(&v93, &v83);
        if (!v93.__r_.__value_.__r.__words[0] && v93.__r_.__value_.__l.__size_)
        {
          break;
        }

        if (v93.__r_.__value_.__l.__size_ >= 0x7FFFFFFFFFFFFFF8)
        {
          std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
        }

        v55 = v6;
        if (v93.__r_.__value_.__l.__size_ > 0x16)
        {
          operator new();
        }

        *(&v80.__r_.__value_.__s + 23) = v93.__r_.__value_.__r.__words[1];
        result = &v80;
        v56 = &v80 + v93.__r_.__value_.__l.__size_;
        if (&v80 <= v93.__r_.__value_.__r.__words[0] && v56 > v93.__r_.__value_.__r.__words[0])
        {
          break;
        }

        if (v93.__r_.__value_.__l.__size_)
        {
          memmove(&v80, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_);
        }

        *v56 = 0;
        if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &v80;
        }

        else
        {
          v57 = v80.__r_.__value_.__r.__words[0];
        }

        if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = HIBYTE(v80.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v58 = v80.__r_.__value_.__r.__words[1];
        }

        morphun::util::StringViewUtils::to_u16string(v57, v58, &v81);
        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = &v81;
        }

        else
        {
          v59 = v81.__r_.__value_.__r.__words[0];
        }

        if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v60 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v60 = v81.__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::append(&v87, v59, v60);
        v6 = v55;
        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v80.__r_.__value_.__l.__data_);
        }

        morphun::util::MemoryMappedFile::~MemoryMappedFile(&v93);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v86) < 0)
    {
      operator delete(v84);
    }

    if (!--v24)
    {
      goto LABEL_169;
    }
  }

  __break(1u);
  return result;
}

void sub_1BE5BE54C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  morphun::exception::Throwable::~Throwable((v50 - 256));
  if (a50 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  if (v51 < 0)
  {
    JUMPOUT(0x1BE5BE6F8);
  }

  JUMPOUT(0x1BE5BE6FCLL);
}

void sub_1BE5BE580(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1BE5BE770);
}

void sub_1BE5BE594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if ((a31 & 0x80000000) == 0)
  {
    if (v33 < 0)
    {
      operator delete(v32);
    }

    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (v37 < 0)
    {
      operator delete(v36);
    }

    if (v39 < 0)
    {
      operator delete(v38);
    }

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1BE5BE708);
}

void sub_1BE5BE59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (*(v75 - 233) < 0)
  {
    operator delete(*(v75 - 256));
  }

  if (a75 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a73 < 0)
  {
    operator delete(a72);
  }

  if (a70 < 0)
  {
    operator delete(a65);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a31 < 0)
  {
    operator delete(a26);
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
    JUMPOUT(0x1BE5BE708);
  }

  JUMPOUT(0x1BE5BE730);
}

void sub_1BE5BE5FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v60 - 233) < 0)
  {
    operator delete(*(v60 - 256));
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  JUMPOUT(0x1BE5BE648);
}

void sub_1BE5BE6E8()
{
  if (*(v0 - 233) < 0)
  {
    v1 = *(v0 - 256);
    JUMPOUT(0x1BE5BE6F8);
  }

  JUMPOUT(0x1BE5BE6FCLL);
}

void sub_1BE5BE710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  icu4cxx::UnicodeSet::~UnicodeSet(&a49);
  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v53 < 0)
  {
    operator delete(v52);
  }

  if (v55 < 0)
  {
    operator delete(v54);
  }

  if (v57 < 0)
  {
    operator delete(v56);
  }

  _Unwind_Resume(a1);
}

char *std::string::basic_string[abi:se200100]<0>(char *a1, char *__s)
{
  if (!__s)
  {
    goto LABEL_13;
  }

  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_14;
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  a1[23] = v4;
  v5 = &a1[v4];
  if (a1 <= __s && v5 > __s)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *v5 = 0;
  return a1;
}

void std::__throw_with_nested<morphun::exception::InvalidConfigurationException,morphun::exception::InvalidConfigurationException,true>::__do_throw[abi:se200100](uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  std::__nested<morphun::exception::InvalidConfigurationException>::__nested[abi:se200100](exception, a1);
}

uint64_t std::__nested<morphun::exception::InvalidConfigurationException>::__nested[abi:se200100](uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F3CD0878;
  if (*(a2 + 31) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  *a1 = &unk_1F3CD0908;
  std::nested_exception::nested_exception((a1 + 56));
  *a1 = &unk_1F3CCFF68;
  *(a1 + 56) = &unk_1F3CCFF98;
  return a1;
}

void sub_1BE5BE9A0(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void std::__nested<morphun::exception::InvalidConfigurationException>::~__nested(uint64_t a1)
{
  std::nested_exception::~nested_exception((a1 + 56));

  morphun::exception::Throwable::~Throwable(a1);
}

{
  std::nested_exception::~nested_exception((a1 + 56));
  morphun::exception::Throwable::~Throwable(a1);

  JUMPOUT(0x1BFB49160);
}

void non-virtual thunk tostd::__nested<morphun::exception::InvalidConfigurationException>::~__nested(std::nested_exception *a1)
{
  p_ptr = &a1[-4].__ptr_;
  std::nested_exception::~nested_exception(a1);
  morphun::exception::Throwable::~Throwable(p_ptr);

  JUMPOUT(0x1BFB49160);
}

{
  p_ptr = &a1[-4].__ptr_;
  std::nested_exception::~nested_exception(a1);

  morphun::exception::Throwable::~Throwable(p_ptr);
}

morphun::transliteration::ICUScriptTransliterator *morphun::transliteration::ICUScriptTransliterator::ICUScriptTransliterator(morphun::transliteration::ICUScriptTransliterator *this, const morphun::util::ULocale *a2, const morphun::util::ULocale *a3)
{
  *this = &off_1F3CED608;
  morphun::util::ULocale::ULocale(this + 8, a3);
  *this = &unk_1F3CD9600;
  *(this + 17) = 0;
  *(this + 144) = 1;
  *(this + 17) = uset_openEmpty();
  *(this + 19) = morphun::transliteration::ICUScriptTransliterator::createTransliterator(a2, a3, (this + 136), v6);
  *(this + 160) = 1;
  *(this + 21) = morphun::transliteration::ICUScriptTransliterator::createTransliterator(a2, a3, 0, v7);
  *(this + 176) = 1;
  return this;
}

void sub_1BE5BEBA4(_Unwind_Exception *a1)
{
  icu4cxx::Transliterator::~Transliterator((v1 + 19));
  icu4cxx::UnicodeSet::~UnicodeSet(v2);
  morphun::transliteration::Transliterator::~Transliterator(v1, off_1F3CDCED0);
  _Unwind_Resume(a1);
}

void *morphun::analysis::filter::TransliterationFilter::reset(morphun::analysis::filter::TransliterationFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::KeywordAttribute>(this);
  *(this + 21) = result;
  return result;
}

uint64_t morphun::analysis::filter::TransliterationFilter::incrementToken(const std::basic_string<char16_t> *this)
{
  data = this[5].__r_.__value_.__l.__data_;
  if (!data)
  {
    goto LABEL_13;
  }

  v3 = (*(*data + 24))(data);
  if (!v3)
  {
    return v3;
  }

  v4 = this[7].__r_.__value_.__l.__data_;
  if (v4)
  {
    if ((*(*v4 + 56))(v4))
    {
      return v3;
    }
  }

  size = this[5].__r_.__value_.__l.__size_;
  if (!size)
  {
LABEL_13:
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v6 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(this[5].__r_.__value_.__r.__words[2]);
  v7 = *(*v6 - 96);
  v8 = (v6 + v7);
  v9 = *(v6 + v7 + 23);
  if (v9 < 0)
  {
    v8 = *v8;
    v9 = *(v6 + v7 + 8);
  }

  if ((*(*size + 24))(size, v8, v9, this + 6))
  {
    v10 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(this[5].__r_.__value_.__r.__words[2]);
    std::basic_string<char16_t>::operator=((v10 + *(*v10 - 96)), this + 6);
    if (SHIBYTE(this[6].__r_.__value_.__r.__words[2]) < 0)
    {
      *this[6].__r_.__value_.__l.__data_ = 0;
      this[6].__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this[6].__r_.__value_.__s.__data_[0] = 0;
      *(&this[6].__r_.__value_.__s + 23) = 0;
    }
  }

  return v3;
}

void morphun::analysis::filter::TransliterationFilter::~TransliterationFilter(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA3D0);

  JUMPOUT(0x1BFB49160);
}

{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA3D0);
}

morphun::analysis::filter::TransliterationFilter *morphun::analysis::filter::TransliterationFilter::TransliterationFilter(morphun::analysis::filter::TransliterationFilter *this, morphun::analysis::TokenStream *a2, const morphun::transliteration::Transliterator *a3)
{
  *this = &unk_1F3CD9158;
  v5 = morphun::analysis::TokenFilter::TokenFilter(this, off_1F3CDA3D0, a2);
  *v5 = &unk_1F3CD1690;
  *(v5 + 16) = a3;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 21) = 0;
  *(this + 17) = morphun::analysis::util::AttributeSource::addAttribute<morphun::analysis::tokenattributes::CharTermAttribute>(v5);
  return this;
}

void sub_1BE5BEF6C(_Unwind_Exception *a1)
{
  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  morphun::analysis::TokenFilter::~TokenFilter(v1, off_1F3CDA3D0);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,morphun::tokenizer::dictionary::ParsingsScorer::_getBestLeaf(std::vector<std::shared_ptr<morphun::tokenizer::dictionary::Segment>> *)::$_0 &,std::shared_ptr<morphun::tokenizer::dictionary::Segment>*,false>(uint64_t *a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
LABEL_1:
  v7 = (a2 - 2);
  v192 = a2 - 1;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v76 = *a1;
          LODWORD(v14) = *(*a1 + 96);
          v13 = a1[2];
          v103 = *(v13 + 24);
          v104 = *v7;
          v105 = *(*v7 + 96);
          if (*&v14 >= v103)
          {
            if (v103 >= v105)
            {
              return;
            }

            a1[2] = v104;
            *v7 = v13;
            v176 = a1[3];
            a1[3] = *v192;
            *v192 = v176;
            v177 = *a1;
            v178 = a1[2];
            if (*(*a1 + 96) >= *(v178 + 96))
            {
              return;
            }

            *a1 = v178;
            a1[2] = v177;
            v106 = a1 + 1;
            v192 = a1 + 3;
LABEL_217:
            v191 = *v106;
            *v106 = *v192;
            *v192 = v191;
            return;
          }

          if (v103 < v105)
          {
            v106 = a1 + 1;
            *a1 = v104;
LABEL_216:
            *v7 = v76;
            goto LABEL_217;
          }

LABEL_214:
          v106 = a1 + 3;
          v189 = a1[3];
          v190 = a1[1];
          *a1 = v13;
          a1[1] = v189;
          a1[2] = v76;
          a1[3] = v190;
          if (*&v14 >= *(*v7 + 96))
          {
            return;
          }

          a1[2] = *v7;
          goto LABEL_216;
        case 4:

          std::__sort4[abi:se200100]<std::_ClassicAlgPolicy,morphun::tokenizer::dictionary::ParsingsScorer::_getBestLeaf(std::vector<std::shared_ptr<morphun::tokenizer::dictionary::Segment>> *)::$_0 &,std::shared_ptr<morphun::tokenizer::dictionary::Segment>*,0>(a1, a1 + 2, a1 + 4, a2 - 2);
          return;
        case 5:
          std::__sort4[abi:se200100]<std::_ClassicAlgPolicy,morphun::tokenizer::dictionary::ParsingsScorer::_getBestLeaf(std::vector<std::shared_ptr<morphun::tokenizer::dictionary::Segment>> *)::$_0 &,std::shared_ptr<morphun::tokenizer::dictionary::Segment>*,0>(a1, a1 + 2, a1 + 4, a1 + 6);
          v107 = a1[6];
          if (*(v107 + 96) < *(*v7 + 96))
          {
            a1[6] = *v7;
            *v7 = v107;
            v108 = a1[7];
            a1[7] = *v192;
            *v192 = v108;
            v109 = a1[4];
            v110 = a1[6];
            v111 = *(v110 + 96);
            if (*(v109 + 96) < v111)
            {
              v112 = a1[5];
              v113 = a1[7];
              a1[4] = v110;
              a1[5] = v113;
              a1[6] = v109;
              a1[7] = v112;
              v114 = a1[2];
              if (*(v114 + 96) < v111)
              {
                v115 = a1[3];
                a1[2] = v110;
                a1[3] = v113;
                a1[4] = v114;
                a1[5] = v115;
                v116 = *a1;
                if (*(*a1 + 96) < v111)
                {
                  v117 = a1[1];
                  *a1 = v110;
                  a1[1] = v113;
                  a1[2] = v116;
                  a1[3] = v117;
                }
              }
            }
          }

          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v118 = *a1;
        if (*(*a1 + 96) < *(*v7 + 96))
        {
          *a1 = *v7;
          *v7 = v118;
          v119 = a1[1];
          a1[1] = *v192;
          *v192 = v119;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v135 = v10 >> 1;
      v136 = v10 >> 1;
      do
      {
        v137 = v136;
        if (v135 >= v136)
        {
          v138 = (2 * v136) | 1;
          v139 = &a1[2 * v138];
          if (2 * v137 + 2 < v9 && *(v139[2] + 96) < *(*v139 + 96))
          {
            v139 += 2;
            v138 = 2 * v137 + 2;
          }

          v140 = &a1[2 * v137];
          if (*(*v140 + 96) >= *(*v139 + 96))
          {
            v141 = *v140;
            *v140 = 0;
            v140[1] = 0;
            v194 = v141;
            v142 = v141;
            do
            {
              v143 = v139;
              v144 = *v139;
              *v139 = 0;
              v139[1] = 0;
              v145 = v140[1];
              *v140 = v144;
              if (v145)
              {
                std::__shared_weak_count::__release_shared[abi:se200100](v145);
              }

              if (v135 < v138)
              {
                break;
              }

              v146 = 2 * v138;
              v138 = (2 * v138) | 1;
              v139 = &a1[2 * v138];
              v147 = v146 + 2;
              if (v147 < v9 && *(v139[2] + 96) < *(*v139 + 96))
              {
                v139 += 2;
                v138 = v147;
              }

              v140 = v143;
            }

            while (*(v142 + 96) >= *(*v139 + 96));
            v148 = v143[1];
            *v143 = v194;
            if (v148)
            {
              std::__shared_weak_count::__release_shared[abi:se200100](v148);
            }
          }
        }

        v136 = v137 - 1;
      }

      while (v137);
      while (2)
      {
        v149 = 0;
        v150 = a2;
        v152 = *a1;
        v151 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v153 = a1;
        do
        {
          v154 = &v153[2 * v149];
          v155 = (v154 + 2);
          v156 = 2 * v149;
          v149 = (2 * v149) | 1;
          v157 = v156 + 2;
          if (v157 < v9)
          {
            v159 = v154[4];
            v158 = (v154 + 4);
            if (*(v159 + 96) < *(*(v158 - 2) + 96))
            {
              v155 = v158;
              v149 = v157;
            }
          }

          v160 = *v155;
          *v155 = 0;
          *(v155 + 1) = 0;
          v161 = v153[1];
          *v153 = v160;
          if (v161)
          {
            std::__shared_weak_count::__release_shared[abi:se200100](v161);
          }

          v153 = v155;
        }

        while (v149 <= ((v9 - 2) >> 1));
        a2 -= 2;
        if (v155 == (v150 - 2))
        {
          v175 = *(v155 + 1);
          *v155 = v152;
          *(v155 + 1) = v151;
          if (!v175)
          {
            goto LABEL_195;
          }
        }

        else
        {
          v162 = *(v150 - 1);
          *a2 = 0;
          *(v150 - 1) = 0;
          v163 = *(v155 + 1);
          *v155 = v162;
          if (v163)
          {
            std::__shared_weak_count::__release_shared[abi:se200100](v163);
          }

          v164 = *(v150 - 1);
          *(v150 - 2) = v152;
          *(v150 - 1) = v151;
          if (v164)
          {
            std::__shared_weak_count::__release_shared[abi:se200100](v164);
          }

          v165 = (v155 + 16 - a1) >> 4;
          v166 = v165 < 2;
          v167 = v165 - 2;
          if (v166)
          {
            goto LABEL_195;
          }

          v168 = v167 >> 1;
          v169 = &a1[2 * (v167 >> 1)];
          v170 = *v155;
          if (*(*v155 + 96) >= *(*v169 + 96))
          {
            goto LABEL_195;
          }

          v171 = *(v155 + 1);
          *v155 = 0;
          *(v155 + 1) = 0;
          do
          {
            v172 = v169;
            v173 = *v169;
            *v169 = 0;
            v169[1] = 0;
            v174 = *(v155 + 1);
            *v155 = v173;
            if (v174)
            {
              std::__shared_weak_count::__release_shared[abi:se200100](v174);
            }

            if (!v168)
            {
              break;
            }

            v168 = (v168 - 1) >> 1;
            v169 = &a1[2 * v168];
            v155 = v172;
          }

          while (*(v170 + 96) < *(*v169 + 96));
          v175 = v172[1];
          *v172 = v170;
          v172[1] = v171;
          if (!v175)
          {
LABEL_195:
            v166 = v9-- <= 2;
            if (v166)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      std::__shared_weak_count::__release_shared[abi:se200100](v175);
      goto LABEL_195;
    }

    v11 = &a1[2 * (v9 >> 1)];
    v12 = v11;
    v13 = *v7;
    LODWORD(v14) = *(*v7 + 96);
    if (v9 >= 0x81)
    {
      v15 = *a1;
      v16 = *(*a1 + 96);
      v17 = *v11;
      v18 = *(*v11 + 96);
      if (v16 >= v18)
      {
        if (v18 < *&v14)
        {
          *v11 = v13;
          *v7 = v17;
          v25 = v11 + 1;
          v26 = v11[1];
          v11[1] = *v192;
          *v192 = v26;
          v27 = *a1;
          if (*(*a1 + 96) < *(*v11 + 96))
          {
            *a1 = *v11;
            v19 = a1 + 1;
            *v11 = v27;
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v18 < *&v14)
        {
          v19 = a1 + 1;
          *a1 = v13;
          goto LABEL_26;
        }

        v19 = v11 + 1;
        v30 = v11[1];
        v31 = a1[1];
        *a1 = v17;
        a1[1] = v30;
        *v11 = v15;
        v11[1] = v31;
        if (v16 < *(*v7 + 96))
        {
          *v11 = *v7;
LABEL_26:
          *v7 = v15;
          v25 = a2 - 1;
LABEL_27:
          v32 = *v19;
          *v19 = *v25;
          *v25 = v32;
        }
      }

      v13 = v11 - 2;
      v33 = *(v11 - 2);
      v34 = a1[2];
      v35 = *(v34 + 96);
      v36 = *(v33 + 96);
      v37 = *(a2 - 4);
      v38 = *(v37 + 96);
      if (v35 >= v36)
      {
        if (v36 < v38)
        {
          *v13 = v37;
          *(a2 - 4) = v33;
          v40 = v11 - 1;
          v41 = *(v11 - 1);
          *(v11 - 1) = *(a2 - 3);
          *(a2 - 3) = v41;
          v42 = a1[2];
          if (*(v42 + 96) < *(*v13 + 96))
          {
            a1[2] = *v13;
            *v13 = v42;
            v39 = a1 + 3;
            goto LABEL_41;
          }
        }
      }

      else
      {
        if (v36 < v38)
        {
          v39 = a1 + 3;
          a1[2] = v37;
          goto LABEL_40;
        }

        v39 = v11 - 1;
        v44 = *(v11 - 1);
        v45 = a1[3];
        a1[2] = v33;
        a1[3] = v44;
        *v13 = v34;
        *(v11 - 1) = v45;
        v46 = *(a2 - 4);
        if (v35 < *(v46 + 96))
        {
          *v13 = v46;
LABEL_40:
          *(a2 - 4) = v34;
          v40 = a2 - 3;
LABEL_41:
          v47 = *v39;
          *v39 = *v40;
          *v40 = v47;
        }
      }

      v50 = v11[2];
      v48 = v11 + 2;
      v49 = v50;
      v51 = a1[4];
      v52 = *(v51 + 96);
      v53 = *(v50 + 96);
      v54 = *(a2 - 6);
      v55 = *(v54 + 96);
      if (v52 >= v53)
      {
        if (v53 < v55)
        {
          *v48 = v54;
          *(a2 - 6) = v49;
          v58 = v48 + 1;
          v57 = v48[1];
          v48[1] = *(a2 - 5);
          *(a2 - 5) = v57;
          v59 = a1[4];
          v49 = *v48;
          if (*(v59 + 96) < *(*v48 + 96))
          {
            a1[4] = v49;
            *v48 = v59;
            v56 = a1 + 5;
            goto LABEL_51;
          }
        }
      }

      else
      {
        if (v53 < v55)
        {
          v56 = a1 + 5;
          a1[4] = v54;
          goto LABEL_50;
        }

        v56 = v48 + 1;
        v60 = v48[1];
        v61 = a1[5];
        a1[4] = v49;
        a1[5] = v60;
        *v48 = v51;
        v48[1] = v61;
        v62 = *(a2 - 6);
        if (v52 >= *(v62 + 96))
        {
          v49 = v51;
        }

        else
        {
          *v48 = v62;
LABEL_50:
          *(a2 - 6) = v51;
          v58 = a2 - 5;
LABEL_51:
          v63 = *v56;
          *v56 = *v58;
          *v58 = v63;
          v49 = *v48;
        }
      }

      v64 = *v13;
      v65 = *(*v13 + 96);
      v66 = *v12;
      v67 = *(*v12 + 96);
      v68 = *(v49 + 96);
      if (v65 >= v67)
      {
        if (v67 < v68)
        {
          v70 = v12 + 1;
          v71 = v12[1];
          *v12 = v49;
          v12[1] = v48[1];
          *v48 = v66;
          v48[1] = v71;
          if (v65 < v68)
          {
            *v13++ = v49;
            *v12 = v64;
            goto LABEL_61;
          }
        }
      }

      else
      {
        if (v67 < v68)
        {
          *v13++ = v49;
          *v48 = v64;
          v69 = v48 + 1;
          goto LABEL_60;
        }

        v72 = v12[1];
        *v12 = v64;
        v73 = v13[1];
        *v13 = v66;
        v13[1] = v72;
        v12[1] = v73;
        if (v65 < v68)
        {
          *v12 = v49;
          *v48 = v64;
          v69 = v48 + 1;
          v13 = v12 + 1;
LABEL_60:
          v70 = v69;
LABEL_61:
          v74 = *v13;
          *v13 = *v70;
          *v70 = v74;
        }
      }

      v14 = *a1;
      *a1 = *v12;
      *v12 = v14;
      goto LABEL_63;
    }

    v20 = *v11;
    v21 = *(*v11 + 96);
    v22 = *a1;
    v23 = *(*a1 + 96);
    if (v21 >= v23)
    {
      if (v23 < *&v14)
      {
        *a1 = v13;
        *v7 = v22;
        v28 = a1 + 1;
        v29 = a1[1];
        a1[1] = *v192;
        *v192 = v29;
        v13 = *v12;
        LODWORD(v14) = *(*v12 + 96);
        if (*&v14 < *(*a1 + 96))
        {
          *v12 = *a1;
          v24 = (v12 + 1);
          *a1 = v13;
LABEL_37:
          v13 = *v24;
          *v24 = *v28;
          *v28 = v13;
        }
      }
    }

    else
    {
      if (v23 < *&v14)
      {
        *v11 = v13;
        v24 = (v11 + 1);
        *v7 = v20;
LABEL_36:
        v28 = a2 - 1;
        goto LABEL_37;
      }

      v13 = a1[1];
      v43 = v11[1];
      *v11 = v22;
      v11[1] = v13;
      *a1 = v20;
      a1[1] = v43;
      LODWORD(v14) = *(*v7 + 96);
      if (v21 < *&v14)
      {
        *a1 = *v7;
        *v7 = v20;
        v24 = (a1 + 1);
        goto LABEL_36;
      }
    }

LABEL_63:
    --a3;
    v75 = *a1;
    v76 = a4;
    if ((a4 & 1) != 0 || (LODWORD(v14) = *(v75 + 96), v76 = *(a1 - 2), *&v14 < *(v76 + 96)))
    {
      v77 = a1[1];
      v13 = a1 + 2;
      *a1 = 0;
      a1[1] = 0;
      do
      {
        if (v13 == a2)
        {
          goto LABEL_213;
        }

        v78 = v13;
        LODWORD(v14) = *(v75 + 96);
        v79 = v13 - 2;
        v76 = *v13;
        v80 = *(*v13 + 96);
        v13 += 2;
      }

      while (*&v14 < v80);
      v81 = a2;
      if (v79 != a1)
      {
        while (v81 != a1)
        {
          v82 = *(v81 - 2);
          v81 -= 2;
          if (*&v14 < *(v82 + 96))
          {
            goto LABEL_75;
          }
        }

        goto LABEL_213;
      }

      v81 = a2;
      do
      {
        if (v78 >= v81)
        {
          break;
        }

        v83 = *(v81 - 2);
        v81 -= 2;
      }

      while (*&v14 >= *(v83 + 96));
LABEL_75:
      if (v78 < v81)
      {
        v13 = *v81;
        v8 = v78;
        v84 = v81;
LABEL_77:
        *v8 = v13;
        *v84 = v76;
        v76 = v8[1];
        v8[1] = v84[1];
        v84[1] = v76;
        v13 = v8 + 2;
        while (v13 != a2)
        {
          v8 = v13;
          v85 = *v13;
          v13 += 2;
          v76 = v85;
          if (*&v14 >= *(v85 + 96))
          {
            while (v84 != a1)
            {
              v86 = *(v84 - 2);
              v84 -= 2;
              v13 = v86;
              if (*&v14 < *(v86 + 96))
              {
                if (v8 < v84)
                {
                  goto LABEL_77;
                }

                goto LABEL_85;
              }
            }

            goto LABEL_213;
          }
        }

        goto LABEL_213;
      }

      v8 = v78;
LABEL_85:
      v87 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v88 = *v87;
        *v87 = 0;
        *(v8 - 1) = 0;
        v89 = a1[1];
        *a1 = v88;
        if (v89)
        {
          std::__shared_weak_count::__release_shared[abi:se200100](v89);
        }
      }

      v90 = *(v8 - 1);
      *(v8 - 2) = v75;
      *(v8 - 1) = v77;
      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:se200100](v90);
      }

      if (v78 < v81)
      {
LABEL_93:
        std::__introsort<std::_ClassicAlgPolicy,morphun::tokenizer::dictionary::ParsingsScorer::_getBestLeaf(std::vector<std::shared_ptr<morphun::tokenizer::dictionary::Segment>> *)::$_0 &,std::shared_ptr<morphun::tokenizer::dictionary::Segment>*,false>(a1, v8 - 2, a3, a4 & 1);
        a4 = 0;
        continue;
      }

      v91 = std::__insertion_sort_incomplete[abi:se200100]<std::_ClassicAlgPolicy,morphun::tokenizer::dictionary::ParsingsScorer::_getBestLeaf(std::vector<std::shared_ptr<morphun::tokenizer::dictionary::Segment>> *)::$_0 &,std::shared_ptr<morphun::tokenizer::dictionary::Segment>*>(a1, v8 - 2);
      if (!std::__insertion_sort_incomplete[abi:se200100]<std::_ClassicAlgPolicy,morphun::tokenizer::dictionary::ParsingsScorer::_getBestLeaf(std::vector<std::shared_ptr<morphun::tokenizer::dictionary::Segment>> *)::$_0 &,std::shared_ptr<morphun::tokenizer::dictionary::Segment>*>(v8, a2))
      {
        if (v91)
        {
          continue;
        }

        goto LABEL_93;
      }

      a2 = v8 - 2;
      if (v91)
      {
        return;
      }

      goto LABEL_1;
    }

    v92 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    LODWORD(v14) = *(v75 + 96);
    v76 = (a1 + 2);
    if (*(*v7 + 96) >= *&v14)
    {
      do
      {
        v8 = v76;
        if (v76 >= a2)
        {
          break;
        }

        v76 += 16;
      }

      while (*(*v8 + 96) >= *&v14);
    }

    else
    {
      do
      {
        if (v76 == a2)
        {
          goto LABEL_213;
        }

        v93 = *v76;
        v76 += 16;
      }

      while (*(v93 + 96) >= *&v14);
      v8 = (v76 - 16);
    }

    v76 = a2;
    if (v8 < a2)
    {
      v76 = a2;
      while (v76 != a1)
      {
        v94 = *(v76 - 16);
        v76 -= 16;
        if (*(v94 + 96) >= *&v14)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_213;
    }

LABEL_105:
    if (v8 < v76)
    {
      v95 = *v8;
      v13 = *v76;
      do
      {
        *v8 = v13;
        *v76 = v95;
        v96 = v8[1];
        v8[1] = *(v76 + 8);
        *(v76 + 8) = v96;
        v13 = v8 + 2;
        do
        {
          if (v13 == a2)
          {
            goto LABEL_213;
          }

          v8 = v13;
          v97 = *v13;
          v13 += 2;
          v95 = v97;
        }

        while (*(v97 + 96) >= *&v14);
        do
        {
          if (v76 == a1)
          {
            goto LABEL_213;
          }

          v98 = *(v76 - 16);
          v76 -= 16;
          v13 = v98;
        }

        while (*(v98 + 96) < *&v14);
      }

      while (v8 < v76);
    }

    v99 = v8 - 2;
    if (v8 - 2 != a1)
    {
      v100 = *v99;
      *v99 = 0;
      *(v8 - 1) = 0;
      v101 = a1[1];
      *a1 = v100;
      if (v101)
      {
        std::__shared_weak_count::__release_shared[abi:se200100](v101);
      }
    }

    a4 = 0;
    v102 = *(v8 - 1);
    *(v8 - 2) = v75;
    *(v8 - 1) = v92;
    if (v102)
    {
      std::__shared_weak_count::__release_shared[abi:se200100](v102);
      a4 = 0;
    }
  }

  v120 = a1 + 2;
  v122 = a1 == a2 || v120 == a2;
  if ((a4 & 1) == 0)
  {
    if (v122)
    {
      return;
    }

    v179 = 0;
    v180 = 16;
    v181 = a1;
    while (1)
    {
      v182 = v179;
      v179 = v180;
      v13 = *v181;
      v7 = *v120;
      if (*(*v181 + 96) < *(*v120 + 96))
      {
        break;
      }

LABEL_211:
      v181 = (a1 + v179);
      v180 = v179 + 16;
      v120 = (a1 + v179 + 16);
      if (v120 == a2)
      {
        return;
      }
    }

    v183 = v181[3];
    *v120 = 0;
    v120[1] = 0;
    while (1)
    {
      v76 = a1 + v182;
      v14 = *(a1 + v182);
      *v76 = 0;
      *(v76 + 8) = 0;
      v184 = *(a1 + v182 + 24);
      *(v76 + 16) = v14;
      if (v184)
      {
        std::__shared_weak_count::__release_shared[abi:se200100](v184);
      }

      if (v182 == -16)
      {
        break;
      }

      v185 = v182 - 16;
      v186 = *(*(a1 + v182 - 16) + 96);
      v182 -= 16;
      if (v186 >= v7[24])
      {
        v187 = a1 + v185;
        v188 = *(v187 + 3);
        *(v187 + 2) = v7;
        *(v187 + 3) = v183;
        if (v188)
        {
          std::__shared_weak_count::__release_shared[abi:se200100](v188);
        }

        goto LABEL_211;
      }
    }

LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

  if (!v122)
  {
    v123 = 0;
    v124 = a1;
    do
    {
      v125 = v124;
      v124 = v120;
      v126 = v125[2];
      if (*(*v125 + 96) < *(v126 + 96))
      {
        v127 = v125[3];
        v128 = v123;
        *v120 = 0;
        v120[1] = 0;
        while (1)
        {
          v129 = a1 + v128;
          v130 = *(a1 + v128);
          *v129 = 0;
          *(v129 + 1) = 0;
          v131 = *(a1 + v128 + 24);
          *(v129 + 1) = v130;
          if (v131)
          {
            std::__shared_weak_count::__release_shared[abi:se200100](v131);
          }

          if (!v128)
          {
            break;
          }

          v132 = *(*(a1 + v128 - 16) + 96);
          v128 -= 16;
          if (v132 >= *(v126 + 96))
          {
            v133 = (a1 + v128 + 16);
            goto LABEL_150;
          }
        }

        v133 = a1;
LABEL_150:
        v134 = v133[1];
        *v133 = v126;
        v133[1] = v127;
        if (v134)
        {
          std::__shared_weak_count::__release_shared[abi:se200100](v134);
        }
      }

      v120 = v124 + 2;
      v123 += 16;
    }

    while (v124 + 2 != a2);
  }
}

uint64_t *std::__sort4[abi:se200100]<std::_ClassicAlgPolicy,morphun::tokenizer::dictionary::ParsingsScorer::_getBestLeaf(std::vector<std::shared_ptr<morphun::tokenizer::dictionary::Segment>> *)::$_0 &,std::shared_ptr<morphun::tokenizer::dictionary::Segment>*,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *result;
  v5 = *a2;
  v6 = *(*a2 + 96);
  v7 = *a3;
  v8 = *(*a3 + 96);
  if (*(*result + 96) >= v6)
  {
    if (v6 < v8)
    {
      *a2 = v7;
      *a3 = v5;
      v11 = a2 + 1;
      v10 = a2[1];
      a2[1] = a3[1];
      a3[1] = v10;
      v12 = *result;
      if (*(*result + 96) < *(*a2 + 96))
      {
        *result = *a2;
        v9 = result + 1;
        *a2 = v12;
LABEL_10:
        v14 = *v9;
        *v9 = *v11;
        *v11 = v14;
      }
    }
  }

  else
  {
    if (v6 < v8)
    {
      v9 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v4;
      v11 = a3 + 1;
      goto LABEL_10;
    }

    *result = v5;
    *a2 = v4;
    v9 = a2 + 1;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v4 = *a2;
    if (*(*a2 + 96) < *(*a3 + 96))
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v15 = *a3;
  if (*(*a3 + 96) < *(*a4 + 96))
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = a3[1];
    a3[1] = a4[1];
    a4[1] = v16;
    v17 = *a2;
    if (*(*a2 + 96) < *(*a3 + 96))
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = a2[1];
      a2[1] = a3[1];
      a3[1] = v18;
      v19 = *result;
      if (*(*result + 96) < *(*a2 + 96))
      {
        *result = *a2;
        *a2 = v19;
        v20 = result[1];
        result[1] = a2[1];
        a2[1] = v20;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:se200100]<std::_ClassicAlgPolicy,morphun::tokenizer::dictionary::ParsingsScorer::_getBestLeaf(std::vector<std::shared_ptr<morphun::tokenizer::dictionary::Segment>> *)::$_0 &,std::shared_ptr<morphun::tokenizer::dictionary::Segment>*>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v20 = *a1;
      v21 = *(*a1 + 96);
      v22 = a1[2];
      v23 = *(v22 + 96);
      v24 = *(a2 - 2);
      v25 = *(v24 + 96);
      if (v21 >= v23)
      {
        if (v23 >= v25)
        {
          return 1;
        }

        a1[2] = v24;
        *(a2 - 2) = v22;
        v36 = a1 + 3;
        v35 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v35;
        v37 = *a1;
        v38 = a1[2];
        if (*(*a1 + 96) >= *(v38 + 96))
        {
          return 1;
        }

        *a1 = v38;
        a1[2] = v37;
        v26 = a1 + 1;
      }

      else
      {
        if (v23 >= v25)
        {
          v26 = a1 + 3;
          v42 = a1[3];
          v43 = a1[1];
          *a1 = v22;
          a1[1] = v42;
          a1[2] = v20;
          a1[3] = v43;
          v44 = *(a2 - 2);
          if (v21 >= *(v44 + 96))
          {
            return 1;
          }

          a1[2] = v44;
        }

        else
        {
          v26 = a1 + 1;
          *a1 = v24;
        }

        *(a2 - 2) = v20;
        v36 = a2 - 1;
      }

      v45 = *v26;
      *v26 = *v36;
      *v36 = v45;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:se200100]<std::_ClassicAlgPolicy,morphun::tokenizer::dictionary::ParsingsScorer::_getBestLeaf(std::vector<std::shared_ptr<morphun::tokenizer::dictionary::Segment>> *)::$_0 &,std::shared_ptr<morphun::tokenizer::dictionary::Segment>*,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        v8 = a1[6];
        v9 = *(a2 - 2);
        if (*(v8 + 96) < *(v9 + 96))
        {
          a1[6] = v9;
          *(a2 - 2) = v8;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          v11 = a1[4];
          v12 = a1[6];
          v13 = *(v12 + 96);
          if (*(v11 + 96) < v13)
          {
            v14 = a1[5];
            v15 = a1[7];
            a1[4] = v12;
            a1[5] = v15;
            a1[6] = v11;
            a1[7] = v14;
            v16 = a1[2];
            if (*(v16 + 96) < v13)
            {
              v17 = a1[3];
              a1[2] = v12;
              a1[3] = v15;
              a1[4] = v16;
              a1[5] = v17;
              v18 = *a1;
              if (*(*a1 + 96) < v13)
              {
                v19 = a1[1];
                *a1 = v12;
                a1[1] = v15;
                a1[2] = v18;
                a1[3] = v19;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:se200100]<std::_ClassicAlgPolicy,morphun::tokenizer::dictionary::ParsingsScorer::_getBestLeaf(std::vector<std::shared_ptr<morphun::tokenizer::dictionary::Segment>> *)::$_0 &,std::shared_ptr<morphun::tokenizer::dictionary::Segment>*,0>(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *a1;
    v6 = *(a2 - 2);
    if (*(*a1 + 96) < *(v6 + 96))
    {
      *a1 = v6;
      *(a2 - 2) = v5;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v27 = a1 + 4;
  v28 = a1[4];
  v29 = *a1;
  v30 = *(*a1 + 96);
  v31 = a1[2];
  v32 = *(v31 + 96);
  v33 = *(v28 + 96);
  if (v30 < v32)
  {
    if (v32 >= v33)
    {
      v34 = a1 + 3;
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v31;
      a1[1] = v46;
      a1[2] = v29;
      a1[3] = v47;
      if (v30 >= v33)
      {
        goto LABEL_35;
      }

      a1[2] = v28;
    }

    else
    {
      v34 = a1 + 1;
      *a1 = v28;
    }

    a1[4] = v29;
    v40 = a1 + 5;
    goto LABEL_34;
  }

  if (v32 < v33)
  {
    v40 = a1 + 3;
    v39 = a1[3];
    v41 = a1[5];
    a1[2] = v28;
    a1[3] = v41;
    a1[4] = v31;
    a1[5] = v39;
    if (v30 < v33)
    {
      *a1 = v28;
      a1[2] = v29;
      v34 = a1 + 1;
LABEL_34:
      v48 = *v34;
      *v34 = *v40;
      *v40 = v48;
    }
  }

LABEL_35:
  v49 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = *v49;
    if (*(*v27 + 96) < *(*v49 + 96))
    {
      v53 = v49[1];
      v54 = v50;
      *v49 = 0;
      v49[1] = 0;
      while (1)
      {
        v55 = a1 + v54;
        v56 = *(a1 + v54 + 32);
        *(v55 + 4) = 0;
        *(v55 + 5) = 0;
        v57 = *(a1 + v54 + 56);
        *(v55 + 3) = v56;
        if (v57)
        {
          std::__shared_weak_count::__release_shared[abi:se200100](v57);
        }

        if (v54 == -32)
        {
          break;
        }

        v58 = *(*(a1 + v54 + 16) + 96);
        v54 -= 16;
        if (v58 >= *(v52 + 96))
        {
          v59 = (a1 + v54 + 48);
          goto LABEL_45;
        }
      }

      v59 = a1;
LABEL_45:
      v60 = v59[1];
      *v59 = v52;
      v59[1] = v53;
      if (v60)
      {
        std::__shared_weak_count::__release_shared[abi:se200100](v60);
      }

      if (++v51 == 8)
      {
        return v49 + 2 == a2;
      }
    }

    v27 = v49;
    v50 += 16;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::unordered_map<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void),std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,std::allocator<std::pair<std::u16string_view const,std::map<std::u16string_view,char16_t const*> (*)(void)>>>::unordered_map(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v4 = a2;
    v5 = a2 + 24 * a3;
    do
    {
      v6 = *v4;
      v7 = *(v4 + 8);
      v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](*v4, 2 * v7);
      v9 = *(a1 + 8);
      if (!*&v9)
      {
        goto LABEL_23;
      }

      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = v8;
        if (v8 >= *&v9)
        {
          v11 = v8 % *&v9;
        }
      }

      else
      {
        v11 = (*&v9 - 1) & v8;
      }

      v12 = *(*a1 + 8 * v11);
      if (!v12 || (v13 = *v12) == 0)
      {
LABEL_23:
        operator new();
      }

      while (1)
      {
        v14 = v13[1];
        if (v14 == v8)
        {
          break;
        }

        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= *&v9)
          {
            v14 %= *&v9;
          }
        }

        else
        {
          v14 &= *&v9 - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_23;
        }

LABEL_22:
        v13 = *v13;
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      if (v13[3] != v7)
      {
        goto LABEL_22;
      }

      if (v7)
      {
        v15 = v13[2];
        v16 = v7;
        v17 = v6;
        while (*v17 == *v15)
        {
          ++v15;
          v17 = (v17 + 2);
          if (!--v16)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_22;
      }

LABEL_24:
      v4 += 24;
    }

    while (v4 != v5);
  }

  return a1;
}

void sub_1BE5C06D4(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__hash_table<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *com::apple::morphun::tokenizer::config_zh_TW::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805AA38;
  v5 = "z";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_zh_Hant::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805AA08;
  v4[1] = *&off_1E805AA18;
  v4[2] = xmmword_1E805AA28;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_zh_Hans::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805A9D8;
  v4[1] = *&off_1E805A9E8;
  v4[2] = xmmword_1E805A9F8;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_zh_HK::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805A9A8;
  v4[1] = *&off_1E805A9B8;
  v4[2] = xmmword_1E805A9C8;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_zh_CN::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A990;
  v5 = L"zh_Hans";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_zh::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[2] = xmmword_1E805A968;
  v4[3] = *&off_1E805A978;
  v5 = L"/zh-Hant";
  v4[0] = xmmword_1E805A948;
  v4[1] = *&off_1E805A958;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 3);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_yue_Hant::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805A9A8;
  v4[1] = *&off_1E805A9B8;
  v4[2] = xmmword_1E805A9C8;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_yue_Hans::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805A9D8;
  v4[1] = *&off_1E805A9E8;
  v4[2] = xmmword_1E805A9F8;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_yue_CN::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A930;
  v5 = 0x1BE80759ELL;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_yue::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805A9D8;
  v4[1] = *&off_1E805A9E8;
  v4[2] = xmmword_1E805A9F8;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_wuu::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A990;
  v5 = L"zh_Hans";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_vi::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_uk::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_tr::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805A8E8;
  v4[1] = *&off_1E805A8F8;
  v4[2] = xmmword_1E805A908;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_th::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A8D0;
  v5 = "l";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_sv::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805A8A0;
  v4[1] = *&off_1E805A8B0;
  v4[2] = xmmword_1E805A8C0;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_sk::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_ru::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_ro::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_pt::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_pl::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_no::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A888;
  v5 = "n";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_nl::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805A858;
  v4[1] = *&off_1E805A868;
  v4[2] = xmmword_1E805A878;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_nb::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805A828;
  v4[1] = *&off_1E805A838;
  v4[2] = xmmword_1E805A848;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_ms::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[2] = xmmword_1E805A800;
  v4[3] = *&off_1E805A810;
  v5 = 0x1BE807336;
  v4[0] = xmmword_1E805A7E0;
  v4[1] = *&off_1E805A7F0;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 3);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_lt::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_ko::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A7C8;
  v5 = "l";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_kk::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_ja::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[2] = xmmword_1E805A7A0;
  v4[3] = *&off_1E805A7B0;
  v5 = &unk_1BE8074B0;
  v4[0] = xmmword_1E805A780;
  v4[1] = *&off_1E805A790;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 3);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_iw::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A768;
  v5 = "h";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_it::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805A738;
  v4[1] = *&off_1E805A748;
  v4[2] = xmmword_1E805A758;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_is::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_in::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A720;
  v5 = L"id";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_id::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[2] = xmmword_1E805A800;
  v4[3] = *&off_1E805A810;
  v5 = 0x1BE807336;
  v4[0] = xmmword_1E805A7E0;
  v4[1] = *&off_1E805A7F0;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 3);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_hu::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_hr::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_hi::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_he::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[2] = xmmword_1E805A6F8;
  v4[3] = *&off_1E805A708;
  v5 = 0x1BE80727ELL;
  v4[0] = xmmword_1E805A6D8;
  v4[1] = *&off_1E805A6E8;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 3);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_fr::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805A6A8;
  v4[1] = *&off_1E805A6B8;
  v4[2] = xmmword_1E805A6C8;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_fi::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E805A678;
  v4[1] = *&off_1E805A688;
  v4[2] = xmmword_1E805A698;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_et::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_es::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_el::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_de::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[2] = xmmword_1E805A650;
  v4[3] = *&off_1E805A660;
  v5 = 0x1BE807162;
  v4[0] = xmmword_1E805A630;
  v4[1] = *&off_1E805A640;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 3);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_da::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[2] = xmmword_1E805A608;
  v4[3] = *&off_1E805A618;
  v5 = L"(her|der)(fra|til)";
  v4[0] = xmmword_1E805A5E8;
  v4[1] = *&off_1E805A5F8;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 3);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_cs::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_cmn_Hant::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805AA38;
  v5 = "z";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_cmn_Hans::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A990;
  v5 = L"zh_Hans";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_ca::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_bg::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::tokenizer::config_ar::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[8] = xmmword_1E805A5A8;
  v4[9] = *&off_1E805A5B8;
  v4[10] = xmmword_1E805A5C8;
  v4[11] = unk_1E805A5D8;
  v4[4] = xmmword_1E805A568;
  v4[5] = unk_1E805A578;
  v4[6] = xmmword_1E805A588;
  v4[7] = *&off_1E805A598;
  v4[0] = xmmword_1E805A528;
  v4[1] = *&off_1E805A538;
  v4[2] = xmmword_1E805A548;
  v4[3] = *&off_1E805A558;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 8);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::locale::supported_locales::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  memcpy(__dst, &off_1E805A198, sizeof(__dst));
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, __dst, 38);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::locale::fallback_locales::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E8059FE8;
  v4[1] = *&off_1E8059FF8;
  v4[2] = xmmword_1E805A008;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *com::apple::morphun::inflection::pronoun::getContent@<X0>(void *a1@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[2] = xmmword_1E8059FA8;
  v4[3] = *&off_1E8059FB8;
  v4[4] = xmmword_1E8059FC8;
  v4[5] = unk_1E8059FD8;
  v4[0] = xmmword_1E8059F88;
  v4[1] = *&off_1E8059F98;
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, v4, 4);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::unordered_map<std::u16string_view,char16_t const*>::unordered_map(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v4 = a2;
    v5 = a2 + 24 * a3;
    do
    {
      v6 = *v4;
      v7 = *(v4 + 8);
      v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](*v4, 2 * v7);
      v9 = *(a1 + 8);
      if (!*&v9)
      {
        goto LABEL_23;
      }

      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        v11 = v8;
        if (v8 >= *&v9)
        {
          v11 = v8 % *&v9;
        }
      }

      else
      {
        v11 = (*&v9 - 1) & v8;
      }

      v12 = *(*a1 + 8 * v11);
      if (!v12 || (v13 = *v12) == 0)
      {
LABEL_23:
        operator new();
      }

      while (1)
      {
        v14 = v13[1];
        if (v14 == v8)
        {
          break;
        }

        if (v10.u32[0] > 1uLL)
        {
          if (v14 >= *&v9)
          {
            v14 %= *&v9;
          }
        }

        else
        {
          v14 &= *&v9 - 1;
        }

        if (v14 != v11)
        {
          goto LABEL_23;
        }

LABEL_22:
        v13 = *v13;
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      if (v13[3] != v7)
      {
        goto LABEL_22;
      }

      if (v7)
      {
        v15 = v13[2];
        v16 = v7;
        v17 = v6;
        while (*v17 == *v15)
        {
          ++v15;
          v17 = (v17 + 2);
          if (!--v16)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_22;
      }

LABEL_24:
      v4 += 24;
    }

    while (v4 != v5);
  }

  return a1;
}

void sub_1BE5C23C0(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__hash_table<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::map<std::u16string_view,char16_t const*> (*)(void)>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void morphun::analysis::JaAnalyzer::~JaAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB008);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDB008);
}

BOOL morphun::dialog::SpeakableString::contains(uint64_t a1, unsigned __int16 *a2)
{
  v3 = (*(*a1 + 32))(a1);
  v4 = *(v3 + 23);
  v5 = v4 < 0;
  if (v4 >= 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = *v3;
  }

  if (v5)
  {
    v7 = *(v3 + 8);
  }

  else
  {
    v7 = *(v3 + 23);
  }

  v8 = *(a2 + 23);
  v9 = v8 < 0;
  if (v8 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9)
  {
    v11 = *(a2 + 1);
  }

  else
  {
    v11 = *(a2 + 23);
  }

  if (!v11)
  {
    return 1;
  }

  v12 = (v6 + 2 * v7);
  if (v7 >= v11)
  {
    v17 = v6;
    do
    {
      v13 = v17;
      v18 = v7 - v11 + 1;
      if (v7 - v11 != -1)
      {
        v21 = 2 - 2 * v11 + 2 * v7;
        v13 = v17;
        while (*v13 != *v10)
        {
          ++v13;
          v21 -= 2;
          if (!v21)
          {
            goto LABEL_15;
          }
        }
      }

      if (v13 == &v17[v18] || v13 == 0)
      {
        break;
      }

      v20 = 0;
      while (v10[v20] == v13[v20])
      {
        if (v11 == ++v20)
        {
          goto LABEL_16;
        }
      }

      v17 = v13 + 1;
      v7 = v12 - (v13 + 1);
    }

    while (v7 >= v11);
  }

LABEL_15:
  v13 = v12;
LABEL_16:
  v14 = v13 - v6;
  return v13 != v12 && v14 + 2 != 0;
}

BOOL morphun::dialog::SpeakableString::isEmpty(morphun::dialog::SpeakableString *this)
{
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (*(this + 2))
    {
      return 0;
    }
  }

  else if (*(this + 31))
  {
    return 0;
  }

  v2 = *(this + 4);
  if (!v2)
  {
    return 1;
  }

  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v3 = *(v2 + 8);
  }

  return v3 == 0;
}

uint64_t morphun::dialog::SpeakableString::getSpeak(morphun::dialog::SpeakableString *this)
{
  if (*(this + 4))
  {
    return *(this + 4);
  }

  else
  {
    return this + 8;
  }
}

void sub_1BE5C26D8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  MEMORY[0x1BFB49160](v2, v1);
  _Unwind_Resume(a1);
}

morphun::dialog::SpeakableString *morphun::dialog::SpeakableString::SpeakableString(morphun::dialog::SpeakableString *this, const morphun::dialog::SpeakableString *a2)
{
  *this = &unk_1F3CD8D28;
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

  *(this + 4) = 0;
  if (((*(*a2 + 48))(a2) & 1) == 0)
  {
    operator new();
  }

  return this;
}

void sub_1BE5C27F8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v3, 0x1012C40EC159624);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::SpeakableString::~SpeakableString(morphun::dialog::SpeakableString *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dialog::SpeakableString::~SpeakableString(morphun::dialog::SpeakableString *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 56)) = a2[1];
  *(this + *(*this - 40)) = a2[2];
  v4 = *(this + 4);
  v5 = (this + 8);
  if (v4 && v4 != v5)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1BFB49160](v4, 0x1012C40EC159624);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*v5);
  }
}

void morphun::dialog::SpeakableString::toString(morphun::dialog::SpeakableString *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  if ((*(*this + 48))(this))
  {
    std::operator+<char16_t>(&v10, &qword_1BE8075D6, this + 8);
    std::basic_string<char16_t>::push_back(&v10, 93);
    *a2 = v10;
  }

  else
  {
    std::operator+<char16_t>(&v8, &qword_1BE8075D6, this + 8);
    std::basic_string<char16_t>::append(&v8, word_1BE8075DE, 5uLL);
    v9 = v8;
    memset(&v8, 0, sizeof(v8));
    v4 = npc<std::basic_string<char16_t>>(*(this + 4));
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

    std::basic_string<char16_t>::append(&v9, v6, v7);
    v10 = v9;
    memset(&v9, 0, sizeof(v9));
    std::basic_string<char16_t>::push_back(&v10, 93);
    *a2 = v10;
    memset(&v10, 0, sizeof(v10));
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1BE5C2B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

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

uint64_t morphun::dialog::SpeakableString::SpeakableString(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + *(v4 - 56)) = a2[1];
  *(a1 + *(*a1 - 40)) = a2[2];
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = 0;
  return a1;
}

void *morphun::dialog::SpeakableString::SpeakableString(void *a1, __int128 *a2)
{
  *a1 = &unk_1F3CD8D28;
  v3 = (a1 + 1);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  a1[4] = 0;
  return a1;
}

uint64_t morphun::dialog::SpeakableString::SpeakableString(uint64_t a1, uint64_t *a2, __int128 *a3, unsigned __int16 *a4)
{
  v7 = *a2;
  *a1 = *a2;
  *(a1 + *(v7 - 56)) = a2[1];
  *(a1 + *(*a1 - 40)) = a2[2];
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v8;
  }

  *(a1 + 32) = 0;
  v9 = *(a3 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 1);
  }

  v11 = *(a4 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 1);
  }

  if (v9 != v11)
  {
    goto LABEL_19;
  }

  if (v9)
  {
    if (v12 >= 0)
    {
      v13 = a4;
    }

    else
    {
      v13 = *a4;
    }

    if (v10 >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    while (*v13 == *v14)
    {
      ++v14;
      ++v13;
      if (!--v9)
      {
        return a1;
      }
    }

LABEL_19:
    operator new();
  }

  return a1;
}

void sub_1BE5C2F44(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v2, 0x1012C40EC159624);
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::dialog::SpeakableString::SpeakableString(uint64_t a1, __int128 *a2, unsigned __int16 *a3)
{
  *a1 = &unk_1F3CD8D28;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v6;
  }

  *(a1 + 32) = 0;
  v7 = *(a2 + 23);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 1);
  }

  v9 = *(a3 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 1);
  }

  if (v7 != v9)
  {
    goto LABEL_19;
  }

  if (v7)
  {
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v8 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    while (*v11 == *v12)
    {
      ++v12;
      ++v11;
      if (!--v7)
      {
        return a1;
      }
    }

LABEL_19:
    operator new();
  }

  return a1;
}

void sub_1BE5C30B8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v3, 0x1012C40EC159624);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

morphun::dialog::SpeakableString *morphun::dialog::SpeakableString::SpeakableString(morphun::dialog::SpeakableString *this, const morphun::dialog::SpeakableString *a2, uint64_t a3)
{
  v5 = *a2;
  *this = *a2;
  *(this + *(v5 - 56)) = *(a2 + 1);
  *(this + *(*this - 40)) = *(a2 + 2);
  if (*(a3 + 31) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((this + 8), *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    *(this + 3) = *(a3 + 24);
    *(this + 8) = v6;
  }

  *(this + 4) = 0;
  if (((*(*a3 + 48))(a3) & 1) == 0)
  {
    operator new();
  }

  return this;
}

void sub_1BE5C329C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v2, 0x1012C40EC159624);
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

void virtual thunk tomorphun::dialog::SpeakableString::~SpeakableString(morphun::dialog::SpeakableString *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void virtual thunk tomorphun::dialog::SpeakableString::~SpeakableString(void *a1)
{
}

{

  JUMPOUT(0x1BFB49160);
}

BOOL morphun::dialog::SpeakableString::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

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
        goto LABEL_16;
      }
    }

    return 0;
  }

LABEL_16:
  v8 = *(a1 + 32);
  v9 = *(a2 + 32);
  result = (v8 | v9) == 0;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(v8 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v8 + 8);
    }

    v14 = *(v9 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v9 + 8);
    }

    if (v12 == v14)
    {
      if (v12)
      {
        if (v15 < 0)
        {
          v9 = *v9;
        }

        if (v13 < 0)
        {
          v8 = *v8;
        }

        v16 = v12 - 1;
        do
        {
          v18 = *v8;
          v8 += 2;
          v17 = v18;
          v20 = *v9;
          v9 += 2;
          v19 = v20;
          v22 = v16-- != 0;
          result = v19 == v17;
        }

        while (v19 == v17 && v22);
        return result;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

void morphun::dialog::SpeakableString::operator+(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v22, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *&v22.__r_.__value_.__l.__data_ = *v6;
    v22.__r_.__value_.__r.__words[2] = *(a1 + 24);
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 31);
  if (v8 >= 0)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 31);
  }

  else
  {
    v10 = *(a2 + 16);
  }

  std::basic_string<char16_t>::append(&v22, v9, v10);
  v11 = *(a1 + 32);
  if (v11 | *(a2 + 32))
  {
    memset(&v21, 0, sizeof(v21));
    if (v11)
    {
      v12 = *(v11 + 23);
      if (v12 >= 0)
      {
        v13 = v11;
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
    }

    else
    {
      v15 = *(a1 + 31);
      if (v15 >= 0)
      {
        v13 = v6;
      }

      else
      {
        v13 = *(a1 + 8);
      }

      if (v15 >= 0)
      {
        v14 = *(a1 + 31);
      }

      else
      {
        v14 = *(a1 + 16);
      }
    }

    std::basic_string<char16_t>::append(&v21, v13, v14);
    v16 = *(a2 + 32);
    if (v16)
    {
      v17 = *(v16 + 23);
      if (v17 >= 0)
      {
        v18 = *(a2 + 32);
      }

      else
      {
        v18 = *v16;
      }

      if (v17 >= 0)
      {
        v19 = *(v16 + 23);
      }

      else
      {
        v19 = *(v16 + 8);
      }
    }

    else
    {
      v20 = *(a2 + 31);
      if (v20 >= 0)
      {
        v18 = (a2 + 8);
      }

      else
      {
        v18 = *(a2 + 8);
      }

      if (v20 >= 0)
      {
        v19 = *(a2 + 31);
      }

      else
      {
        v19 = *(a2 + 16);
      }
    }

    std::basic_string<char16_t>::append(&v21, v18, v19);
    morphun::dialog::SpeakableString::SpeakableString(a3, &v22, &v21);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    morphun::dialog::SpeakableString::SpeakableString(a3, &v22);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5C36B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t morphun::dialog::SpeakableString::operator=(uint64_t a1, uint64_t a2)
{
  std::basic_string<char16_t>::operator=((a1 + 8), (a2 + 8));
  v4 = *(a1 + 32);
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1BFB49160](v4, 0x1012C40EC159624);
    *(a1 + 32) = 0;
  }

  if (((*(*a2 + 48))(a2) & 1) == 0)
  {
    operator new();
  }

  return a1;
}

uint64_t morphun::dialog::SpeakableString::operator+=(uint64_t a1, uint64_t a2)
{
  morphun::dialog::SpeakableString::operator+(a1, a2, v4);
  morphun::dialog::SpeakableString::operator=(a1, v4);
  return a1;
}

void sub_1BE5C3838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

void morphun::util::lemmatization::FeedForwardInflectionAnalyzer_InflectionLikelihoods::~FeedForwardInflectionAnalyzer_InflectionLikelihoods(morphun::util::lemmatization::FeedForwardInflectionAnalyzer_InflectionLikelihoods *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::util::lemmatization::FeedForwardInflectionAnalyzer_InflectionLikelihoods::~FeedForwardInflectionAnalyzer_InflectionLikelihoods(morphun::util::lemmatization::FeedForwardInflectionAnalyzer_InflectionLikelihoods *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 5));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t morphun::util::lemmatization::FeedForwardInflectionAnalyzer_InflectionLikelihoods::FeedForwardInflectionAnalyzer_InflectionLikelihoods(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4, uint64_t a5)
{
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 40)) = a2[1];
  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v9;
  }

  std::map<std::basic_string<char16_t>,double>::map[abi:se200100]((a1 + 32), a4);
  *(a1 + 56) = a5;
  return a1;
}

void sub_1BE5C3A6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void *std::map<std::basic_string<char16_t>,double>::map[abi:se200100](void *a1, void *a2)
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
          v8 = *(v8 + 8);
        }

        while (v8);
      }

      else
      {
        do
        {
          v7 = *(v9 + 2);
          v10 = *v7 == v9;
          v9 = v7;
        }

        while (v10);
      }

      if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v7 + 16, v5 + 16) & 0x80) != 0)
      {
LABEL_9:
        if (!v6)
        {
          v15 = v3;
LABEL_14:
          operator new();
        }

        v15 = v7;
        v11 = v7 + 4;
      }

      else
      {
        v11 = std::__tree<std::basic_string<char16_t>>::__find_equal<std::basic_string<char16_t>>(a1, &v15, v5 + 16);
      }

      if (!*v11)
      {
        goto LABEL_14;
      }

      v12 = *(v5 + 1);
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
          v13 = *(v5 + 2);
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

void sub_1BE5C3C10(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::lemmatization::FeedForwardInflectionAnalyzer_InflectionLikelihoods::FeedForwardInflectionAnalyzer_InflectionLikelihoods(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  *a1 = &unk_1F3CD9338;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v7;
  }

  std::map<std::basic_string<char16_t>,double>::map[abi:se200100]((a1 + 32), a3);
  *(a1 + 56) = a4;
  return a1;
}

void sub_1BE5C3CC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void virtual thunk tomorphun::util::lemmatization::FeedForwardInflectionAnalyzer_InflectionLikelihoods::~FeedForwardInflectionAnalyzer_InflectionLikelihoods(morphun::util::lemmatization::FeedForwardInflectionAnalyzer_InflectionLikelihoods *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

double morphun::util::lemmatization::FeedForwardInflectionAnalyzer_InflectionLikelihoods::getLikelihood(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a1 + 40;
  v3 = *(a1 + 40);
  v4 = 0.0;
  if (v3)
  {
    v6 = a1 + 40;
    do
    {
      v7 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v3 + 32), a2);
      if ((v7 & 0x80u) == 0)
      {
        v6 = v3;
      }

      v3 = *(v3 + ((v7 >> 4) & 8));
    }

    while (v3);
    if (v6 != v2 && (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a2, (v6 + 32)) & 0x80) == 0)
    {
      return *(v6 + 56);
    }
  }

  return v4;
}

uint64_t morphun::analysis::ar::ArabicNormalizationFilter::incrementToken(morphun::analysis::ar::ArabicNormalizationFilter *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
LABEL_46:
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v3 = (*(*v2 + 24))(v2);
  if (v3)
  {
    v4 = *(this + 16);
    if (v4)
    {
      v5 = v4 + *(*v4 - 96);
    }

    else
    {
      v5 = 0;
    }

    v6 = npc<std::basic_string<char16_t>>(v5);
    v7 = *(v6 + 23);
    if (v7 < 0)
    {
      v7 = *(v6 + 8);
    }

    if (v7 >= 1)
    {
      for (i = 0; i < v7; ++i)
      {
        v9 = *(v6 + 23);
        if ((v9 & 0x80000000) != 0)
        {
          if (*(v6 + 8) < i)
          {
            goto LABEL_45;
          }

          v10 = *v6;
        }

        else
        {
          v10 = v6;
          if (i > v9)
          {
            goto LABEL_45;
          }
        }

        v11 = *(v10 + 2 * i);
        if (v11 <= 1599)
        {
          if ((v11 - 1570) < 2 || v11 == 1573)
          {
            if ((v9 & 0x80000000) != 0)
            {
              if (*(v6 + 8) < i)
              {
                goto LABEL_45;
              }

              v14 = *v6;
            }

            else
            {
              v14 = v6;
              if (i > v9)
              {
                goto LABEL_45;
              }
            }

            *(v14 + 2 * i) = 1575;
          }

          else if (v11 == 1577)
          {
            if ((v9 & 0x80000000) != 0)
            {
              if (*(v6 + 8) < i)
              {
                goto LABEL_45;
              }

              v13 = *v6;
            }

            else
            {
              v13 = v6;
              if (i > v9)
              {
                goto LABEL_45;
              }
            }

            *(v13 + 2 * i) = 1607;
          }
        }

        else if ((v11 - 1611) < 8 || v11 == 1600)
        {
          v12 = npc<std::basic_string<char16_t>>(v6);
          v6 = std::basic_string<char16_t>::erase(v12, i, 1uLL);
          LODWORD(v7) = v7 - 1;
          --i;
        }

        else if (v11 == 1609)
        {
          if ((v9 & 0x80000000) != 0)
          {
            if (*(v6 + 8) < i)
            {
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v15 = *v6;
          }

          else
          {
            v15 = v6;
            if (i > v9)
            {
              goto LABEL_45;
            }
          }

          *(v15 + 2 * i) = 1610;
        }
      }
    }

    v16 = *(this + 16);
    if (!v16)
    {
      goto LABEL_46;
    }

    std::basic_string<char16_t>::resize((v16 + *(*v16 - 96)), v7, 0);
  }

  return v3;
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::erase(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __pos, std::basic_string<char16_t>::size_type __n)
{
  v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (size < __pos)
  {
    std::basic_string<char16_t>::__throw_out_of_range[abi:se200100]();
  }

  if (__n == -1)
  {
    if ((v4 & 0x80000000) != 0)
    {
      v6 = this->__r_.__value_.__r.__words[0];
      this->__r_.__value_.__l.__size_ = __pos;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = __pos & 0x7F;
      v6 = this;
    }

    v6->__r_.__value_.__s.__data_[__pos] = 0;
  }

  else
  {
    std::basic_string<char16_t>::__erase_external_with_move(this, __pos, __n);
  }

  return this;
}

void std::basic_string<char16_t>::__erase_external_with_move(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __pos, std::basic_string<char16_t>::size_type __n)
{
  if (__n)
  {
    v4 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    size = v4;
    v6 = this;
    if ((v4 & 0x8000000000000000) != 0)
    {
      v6 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
    }

    if (size - __pos >= __n)
    {
      v7 = __n;
    }

    else
    {
      v7 = size - __pos;
    }

    if (size - __pos > __n)
    {
      memmove(v6 + 2 * __pos, v6 + 2 * __pos + 2 * v7, 2 * (size - __pos - v7));
      LOBYTE(v4) = *(&this->__r_.__value_.__s + 23);
    }

    v8 = size - v7;
    if ((v4 & 0x80) != 0)
    {
      this->__r_.__value_.__l.__size_ = v8;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v8 & 0x7F;
    }

    v6->__r_.__value_.__s.__data_[v8] = 0;
  }
}

void morphun::analysis::ar::ArabicNormalizationFilter::~ArabicNormalizationFilter(morphun::analysis::ar::ArabicNormalizationFilter *this)
{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA860);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA860);
}

uint64_t marisa::grimoire::trie::Tail::build(__int128 *a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/tail.cc";
    exception[2] = 0x20000000DLL;
    v50 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/tail.cc:13: MARISA_NULL_ERROR: offsets == NULL";
    goto LABEL_85;
  }

  if (a4 == 4096)
  {
    v8 = *(a2 + 24);
    if (v8)
    {
      v9 = 0;
      v7 = 1;
      while (1)
      {
        v10 = *(a2 + 8) + 16 * v9;
        v11 = *(v10 + 8);
        if (v11)
        {
          break;
        }

LABEL_11:
        if (++v9 == v8)
        {
          goto LABEL_15;
        }
      }

      v12 = *v10;
      v13 = -v11;
      while (*(v12 + 1 + v13))
      {
        if (!++v13)
        {
          goto LABEL_11;
        }
      }

      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_15;
  }

  if (a4 != 0x2000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/tail.cc";
    exception[2] = 0x500000024;
    v50 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/tail.cc:36: MARISA_CODE_ERROR: undefined tail mode";
LABEL_85:
    exception[3] = v50;
  }

  v7 = 0;
  v8 = *(a2 + 24);
LABEL_15:
  memset(v51, 0, 41);
  memset(v52, 0, 41);
  v55 = 0u;
  memset(v56, 0, sizeof(v56));
  v57 = 0u;
  memset(v58, 0, sizeof(v58));
  v52[3] = 0u;
  v53 = 0u;
  memset(v54, 0, sizeof(v54));
  v14 = *(a2 + 8);
  if (v8)
  {
    v15 = 0;
    v16 = vdupq_n_s64(v8 - 1);
    v17 = xmmword_1BE695F40;
    v18 = xmmword_1BE695F50;
    v19 = (v14 + 44);
    v20 = vdupq_n_s64(4uLL);
    do
    {
      v21 = vmovn_s64(vcgeq_u64(v16, v18));
      if (vuzp1_s16(v21, *v16.i8).u8[0])
      {
        *(v19 - 8) = v15;
      }

      if (vuzp1_s16(v21, *&v16).i8[2])
      {
        *(v19 - 4) = v15 + 1;
      }

      if (vuzp1_s16(*&v16, vmovn_s64(vcgeq_u64(v16, *&v17))).i32[1])
      {
        *v19 = v15 + 2;
        v19[4] = v15 + 3;
      }

      v15 += 4;
      v17 = vaddq_s64(v17, v20);
      v18 = vaddq_s64(v18, v20);
      v19 += 16;
    }

    while (((v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v15);
  }

  marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Entry *>(v14, v14 + 16 * v8, 0);
  memset(v61, 0, 41);
  v22 = *(a2 + 24);
  if (v22)
  {
    marisa::grimoire::vector::Vector<unsigned int>::realloc(v61, *(a2 + 24));
    v23 = *(&v61[1] + 1);
  }

  else
  {
    v23 = 0;
  }

  v24 = v22 - v23;
  if (v22 > v23)
  {
    v25 = 0;
    v26 = vdupq_n_s64(v24 - 1);
    v27 = (*(&v61[0] + 1) + 4 * v23 + 8);
    do
    {
      v28 = vdupq_n_s64(v25);
      v29 = vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_1BE695F50)));
      if (vuzp1_s16(v29, *v26.i8).u8[0])
      {
        *(v27 - 2) = 0;
      }

      if (vuzp1_s16(v29, *&v26).i8[2])
      {
        *(v27 - 1) = 0;
      }

      if (vuzp1_s16(*&v26, vmovn_s64(vcgeq_u64(v26, vorrq_s8(v28, xmmword_1BE695F40)))).i32[1])
      {
        *v27 = 0;
        v27[1] = 0;
      }

      v25 += 4;
      v27 += 4;
    }

    while (((v24 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v25);
  }

  *(&v61[1] + 1) = v22;
  v60[0] = 0;
  v60[1] = 0;
  v30 = *(a2 + 24);
  if (!v30)
  {
    v31 = 0;
    goto LABEL_64;
  }

  v31 = 0;
  v32 = v60;
  v33 = *(&v61[0] + 1);
  do
  {
    --v30;
    v34 = *(a2 + 8) + 16 * v30;
    v35 = *(v34 + 8);
    if (!v35)
    {
      v47 = __cxa_allocate_exception(0x20uLL);
      *v47 = &unk_1F3CD9BC8;
      v47[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/tail.cc";
      v47[2] = 0x4000000AALL;
      v47[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/tail.cc:170: MARISA_RANGE_ERROR: current.length() == 0";
    }

    v36 = 0;
    v37 = *(v32 + 2);
    while (v36 != v37)
    {
      if (*(*v32 - v36) != *(*v34 - v36))
      {
        goto LABEL_45;
      }

      if (++v36 == v35)
      {
        goto LABEL_46;
      }
    }

    v36 = *(v32 + 2);
LABEL_45:
    if (v36 != v35)
    {
      goto LABEL_48;
    }

LABEL_46:
    if (v37)
    {
      *(v33 + 4 * *(v34 + 12)) = v37 - v35 + *(v33 + 4 * *(v32 + 3));
      goto LABEL_60;
    }

LABEL_48:
    *(v33 + 4 * *(v34 + 12)) = v31;
    v38 = *(v34 + 8);
    if (v38)
    {
      for (i = 0; i < v38; ++i)
      {
        v59 = *(*v34 - v38 + i + 1);
        marisa::grimoire::vector::Vector<char>::push_back(v51, &v59);
        v38 = *(v34 + 8);
      }

      if (v7)
      {
LABEL_57:
        v59 = 0;
        marisa::grimoire::vector::Vector<char>::push_back(v51, &v59);
        goto LABEL_59;
      }

      if (v38 >= 2)
      {
        v40 = 1;
        do
        {
          marisa::grimoire::vector::BitVector::push_back(v52, 0);
          ++v40;
        }

        while (v40 < *(v34 + 8));
      }
    }

    else if (v7)
    {
      goto LABEL_57;
    }

    marisa::grimoire::vector::BitVector::push_back(v52, 1);
LABEL_59:
    v31 = *(&v51[1] + 1);
    if (HIDWORD(*(&v51[1] + 1)))
    {
      v48 = __cxa_allocate_exception(0x20uLL);
      *v48 = &unk_1F3CD9BC8;
      v48[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/tail.cc";
      v48[2] = 0x7000000C0;
      v48[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/trie/tail.cc:192: MARISA_SIZE_ERROR: buf_.size() > MARISA_UINT32_MAX";
    }

LABEL_60:
    v32 = v34;
  }

  while (v30);
  if (BYTE8(v51[2]))
  {
    v41 = __cxa_allocate_exception(0x20uLL);
    *v41 = &unk_1F3CD9BC8;
    v41[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h";
    v41[2] = 0x100000064;
    v41[3] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h:100: MARISA_STATE_ERROR: fixed_";
  }

LABEL_64:
  if (v31 != *&v51[2])
  {
    marisa::grimoire::vector::Vector<char>::realloc(v51, v31);
  }

  v42 = *a3;
  *a3 = v61[0];
  a3[2] = *&v61[1];
  *(a3 + 3) = *(&v61[1] + 8);
  *(a3 + 40) = BYTE8(v61[2]);
  if (v42)
  {
    MEMORY[0x1BFB49140](v42, 0x1000C8077774924);
  }

  v43 = *a1;
  *a1 = v51[0];
  v51[0] = v43;
  v44 = *(a1 + 2);
  *(a1 + 2) = *&v51[1];
  *&v51[1] = v44;
  v45 = *(a1 + 24);
  *(a1 + 24) = *(&v51[1] + 8);
  *(&v51[1] + 8) = v45;
  LOBYTE(v44) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v51[2]);
  BYTE8(v51[2]) = v44;
  marisa::grimoire::vector::BitVector::swap((a1 + 3), v52);
  if (v57)
  {
    MEMORY[0x1BFB49140](v57, 0x1000C8077774924);
  }

  if (v55)
  {
    MEMORY[0x1BFB49140](v55, 0x1000C8077774924);
  }

  if (v53)
  {
    MEMORY[0x1BFB49140](v53, 0x1000C8077774924);
  }

  if (*&v52[0])
  {
    MEMORY[0x1BFB49140](*&v52[0], 0x1000C8077774924);
  }

  result = *&v51[0];
  if (*&v51[0])
  {

    JUMPOUT(0x1BFB49140);
  }

  return result;
}

void sub_1BE5C48DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 - 144);
  if (v11)
  {
    MEMORY[0x1BFB49140](v11, 0x1000C8077774924);
  }

  marisa::grimoire::trie::Tail::~Tail(&a9);
  _Unwind_Resume(a1);
}

uint64_t *marisa::grimoire::vector::BitVector::swap(marisa::grimoire::vector::BitVector *this, marisa::grimoire::vector::BitVector *a2)
{
  marisa::grimoire::vector::Vector<unsigned int>::swap(this, a2);
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  v7 = *(a2 + 8);
  *(this + 7) = *(a2 + 7);
  *(this + 8) = v7;
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  v11 = *(a2 + 11);
  *(this + 10) = *(a2 + 10);
  *(this + 11) = v11;
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v12 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v12;
  LOBYTE(v12) = *(this + 104);
  *(this + 104) = *(a2 + 104);
  *(a2 + 104) = v12;
  marisa::grimoire::vector::Vector<unsigned int>::swap(this + 14, a2 + 14);

  return marisa::grimoire::vector::Vector<unsigned int>::swap(this + 20, a2 + 20);
}

void marisa::grimoire::trie::Tail::~Tail(marisa::grimoire::trie::Tail *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    MEMORY[0x1BFB49140](v2, 0x1000C8077774924);
  }

  v3 = *(this + 20);
  if (v3)
  {
    MEMORY[0x1BFB49140](v3, 0x1000C8077774924);
  }

  v4 = *(this + 14);
  if (v4)
  {
    MEMORY[0x1BFB49140](v4, 0x1000C8077774924);
  }

  v5 = *(this + 6);
  if (v5)
  {
    MEMORY[0x1BFB49140](v5, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x1BFB49140](*this, 0x1000C8077774924);
  }
}

uint64_t *marisa::grimoire::vector::Vector<unsigned int>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  v5 = result[3];
  v6 = a2[3];
  result[2] = a2[2];
  result[3] = v6;
  a2[2] = v4;
  a2[3] = v5;
  v7 = result[4];
  result[4] = a2[4];
  a2[4] = v7;
  LOBYTE(v7) = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  return result;
}

uint64_t marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Entry *>(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = (a2 - a1) >> 4;
  if (v6 < 11)
  {
    v7 = 0;
    goto LABEL_91;
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
      v10 = *(*v9 - a3);
    }

    v11 = v9 + 16 * (v6 >> 1);
    if (a3 >= *(v11 + 8))
    {
      v12 = -1;
    }

    else
    {
      v12 = *(*v11 - a3);
    }

    if (a3 >= *(v4 - 8))
    {
      v13 = -1;
    }

    else
    {
      v13 = *(*(v4 - 16) - a3);
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
      v20 = a3 >= v19 ? -1 : *(*v16 - a3);
      if (v20 > v15)
      {
        break;
      }

      if (v20 == v15)
      {
        v21 = *v16;
        v22 = *(v16 + 12);
        *v16 = *v17;
        *(v16 + 8) = *(v17 + 8);
        *v17 = v21;
        *(v17 + 8) = v19;
        *(v17 + 12) = v22;
        v17 += 16;
      }

LABEL_30:
      v16 += 16;
    }

    if (v16 < v5)
    {
      v23 = v5 - 16;
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
          v25 = *(*v5 - a3);
        }

        if (v25 < v15)
        {
          break;
        }

        if (v25 == v15)
        {
          v26 = *(v18 - 16);
          v18 -= 16;
          v27 = *v5;
          v28 = *(v5 + 12);
          *v5 = v26;
          *(v5 + 8) = *(v18 + 8);
          *v18 = v27;
          *(v18 + 8) = v24;
          *(v18 + 12) = v28;
        }

        v23 = v5 - 16;
      }

      while (v16 < v5);
    }

    if (v16 < v5)
    {
      v29 = *v16;
      *v16 = *v5;
      v30 = *(v5 + 8);
      *v5 = v29;
      v31 = *(v16 + 8);
      *(v16 + 8) = v30;
      *(v5 + 8) = v31;
      goto LABEL_30;
    }

    while (v17 > v9)
    {
      v33 = *(v17 - 16);
      v17 -= 16;
      v32 = v33;
      v34 = *(v16 - 16);
      v16 -= 16;
      *v17 = v34;
      v35 = *(v16 + 8);
      *v16 = v32;
      v36 = *(v17 + 8);
      *(v17 + 8) = v35;
      *(v16 + 8) = v36;
    }

    while (v18 < v4)
    {
      v37 = *v18;
      *v18 = *v5;
      v38 = *(v5 + 8);
      *v5 = v37;
      v39 = *(v18 + 8);
      *(v18 + 8) = v38;
      *(v5 + 8) = v39;
      v18 += 16;
      v5 += 16;
    }

    v40 = v16 - v8;
    v41 = (v16 - v8) >> 4;
    v42 = v5 - v16;
    v43 = (v5 - v16) >> 4;
    if (v41 <= v43 && (v44 = (v4 - v5) >> 4, v44 <= v43))
    {
      if (v40 == 16)
      {
        ++v7;
      }

      else if (v41 >= 2)
      {
        v46 = v7;
        v47 = marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Entry *>(v9, v16, a3);
        v44 = (v4 - v5) >> 4;
        v43 = (v5 - v16) >> 4;
        v7 = v47 + v46;
      }

      if (v4 - v5 == 16)
      {
        ++v7;
      }

      else if (v44 >= 2)
      {
        v48 = v4;
        v49 = v7;
        v50 = v43;
        v51 = marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Entry *>(v5, v48, a3);
        v43 = v50;
        v7 = v51 + v49;
      }

      if (v42 == 16)
      {
        ++v7;
        v4 = v5;
        v5 = v16;
      }

      else
      {
        if (v15 == -1)
        {
          v52 = v7 + 1;
        }

        else
        {
          v52 = v7;
        }

        if (v15 == -1)
        {
          v53 = a3;
        }

        else
        {
          v53 = a3 + 1;
        }

        if (v15 == -1)
        {
          v54 = v5;
        }

        else
        {
          v54 = v16;
        }

        if (v43 >= 2)
        {
          v7 = v52;
          a3 = v53;
        }

        v4 = v5;
        if (v43 >= 2)
        {
          v5 = v54;
        }

        else
        {
          v5 = v16;
        }
      }
    }

    else
    {
      if (v42 == 16)
      {
        goto LABEL_50;
      }

      if (v43 >= 2)
      {
        if (v15 == -1)
        {
LABEL_50:
          ++v7;
        }

        else
        {
          v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Entry *>(v16, v5, a3 + 1);
        }
      }

      v45 = v4 - v5;
      if (v41 >= (v4 - v5) >> 4)
      {
        if (v45 == 16)
        {
          ++v7;
        }

        else if (v45 >> 4 >= 2)
        {
          v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Entry *>(v5, v4, a3);
        }

        v4 = v16;
        v5 = v9;
      }

      else if (v40 == 16)
      {
        ++v7;
      }

      else if (v41 >= 2)
      {
        v7 += marisa::grimoire::algorithm::details::sort<marisa::grimoire::trie::Entry *>(v9, v16, a3);
      }
    }

    v6 = (v4 - v5) >> 4;
    v8 = v5;
    v9 = v5;
  }

  while (v6 > 10);
LABEL_91:
  if (v6 >= 2)
  {
    v55 = v5 + 16;
    if (v5 + 16 >= v4)
    {
      v56 = 1;
      goto LABEL_113;
    }

    v56 = 1;
    while (1)
    {
      if (v55 <= v5)
      {
        v66 = 0;
        goto LABEL_110;
      }

      v57 = v55;
      while (1)
      {
        v58 = *(v57 - 8);
        v59 = *(v57 + 8);
        if (a3 < v58)
        {
          v60 = *(v57 - 16);
          v61 = *v57;
          v62 = -a3;
          while (-v59 != v62)
          {
            v63 = *(v60 + v62) - *(v61 + v62);
            if (v63)
            {
              if (v63 < 1)
              {
                goto LABEL_109;
              }

              goto LABEL_105;
            }

            if (-v58 == --v62)
            {
              goto LABEL_101;
            }
          }

          goto LABEL_105;
        }

LABEL_101:
        if (v58 == v59)
        {
          break;
        }

        if (v58 < v59)
        {
          goto LABEL_106;
        }

        v60 = *(v57 - 16);
        v61 = *v57;
LABEL_105:
        *(v57 - 16) = v61;
        v64 = *(v57 + 8);
        *v57 = v60;
        v65 = *(v57 - 8);
        *(v57 - 8) = v64;
        *(v57 + 8) = v65;
        v57 -= 16;
        if (v57 <= v5)
        {
LABEL_106:
          v63 = 1;
          goto LABEL_109;
        }
      }

      v63 = 0;
LABEL_109:
      v66 = v63 != 0;
LABEL_110:
      v56 += v66;
      v55 += 16;
      if (v55 >= v4)
      {
LABEL_113:
        v7 += v56;
        return v7;
      }
    }
  }

  return v7;
}

uint64_t *marisa::grimoire::vector::Vector<char>::push_back(uint64_t *result, _BYTE *a2)
{
  v3 = result;
  v4 = result[3];
  v5 = result[4];
  v6 = v4 + 1;
  if (v5 < (v4 + 1))
  {
    v7 = 2 * v5;
    if (v5 < 0)
    {
      v7 = -1;
    }

    if (v5 <= v6 >> 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    result = marisa::grimoire::vector::Vector<char>::realloc(result, v8);
    v4 = v3[3];
  }

  *(v3[1] + v4) = *a2;
  ++v3[3];
  return result;
}

uint64_t *marisa::grimoire::vector::BitVector::push_back(uint64_t *this, int a2)
{
  v2 = this[6];
  if (v2 == 0xFFFFFFFF)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/bit-vector.h";
    exception[2] = 0x700000034;
    exception[3] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/bit-vector.h:52: MARISA_SIZE_ERROR: size_ == MARISA_UINT32_MAX";
  }

  v4 = this;
  v5 = this[3];
  if (v2 == v5 << 6)
  {
    v6 = v5 + 1;
    v7 = this[4];
    if (v7 < v5 + 1)
    {
      v8 = 2 * v7;
      if (v7 >> 60)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      if (v7 <= v6 >> 1)
      {
        v9 = v5 + 1;
      }

      else
      {
        v9 = v8;
      }

      this = marisa::grimoire::vector::Vector<unsigned long long>::realloc(this, v9);
      v5 = v4[3];
    }

    v10 = v6 - v5;
    if (v6 > v5)
    {
      v11 = 0;
      v12 = vdupq_n_s64(v10 - 1);
      v13 = v4[1] + 8 * v5;
      do
      {
        v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v11), xmmword_1BE695F50)));
        if (v14.i8[0])
        {
          *(v13 + 8 * v11) = 0;
        }

        if (v14.i8[4])
        {
          *(v13 + 8 * v11 + 8) = 0;
        }

        v11 += 2;
      }

      while (((v10 + 1) & 0xFFFFFFFFFFFFFFFELL) != v11);
    }

    v4[3] = v6;
    v2 = v4[6];
  }

  if (a2)
  {
    *(v4[1] + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v2;
    ++v4[7];
  }

  v4[6] = v2 + 1;
  return this;
}

void *marisa::grimoire::vector::Vector<unsigned long long>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](8 * a2, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = a2;
  if (v9)
  {

    JUMPOUT(0x1BFB49140);
  }

  return result;
}

_BYTE *marisa::grimoire::vector::Vector<char>::realloc(uint64_t *a1, size_t __sz)
{
  result = operator new[](__sz, MEMORY[0x1E69E5398]);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = result;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v9 = *a1;
  *a1 = result;
  a1[1] = result;
  a1[2] = result;
  a1[4] = __sz;
  if (v9)
  {

    JUMPOUT(0x1BFB49140);
  }

  return result;
}