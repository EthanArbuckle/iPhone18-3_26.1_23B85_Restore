void sub_1BE629F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void morphun::dialog::language::HiCommonConceptFactory::~HiCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC5E0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC5E0);
}

uint64_t morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor::normalize(uint64_t a1, std::basic_string<char16_t> *a2, const UChar *a3, std::basic_string<char16_t>::size_type a4, uint64_t a5, std::basic_string<char16_t>::size_type a6, int a7)
{
  v22[0] = a3;
  v22[1] = a4;
  v11 = *(a1 + 232);
  if (!v11 || ((v15 = std::u16string_view::ends_with[abi:se200100](v22, *(a1 + 224), v11), v16 = a4 + a7, v15) ? (v17 = v16 >= a6) : (v17 = 1), v17 || !MEMORY[0x1BFB49A20](*(a1 + 152), *(a5 + 2 * v16))))
  {
    morphun::util::StringViewUtils::lowercase(a2, a3, a4, a1 + 8);
    return a2;
  }

  result = npc<std::basic_string<char16_t>>(a2);
  if (a4 >= a4 - *(a1 + 232))
  {
    v19 = a4 - *(a1 + 232);
  }

  else
  {
    v19 = a4;
  }

  if (a3 || !v19)
  {
    v20 = std::basic_string<char16_t>::__assign_external(a2, a3, v19);
    v21 = npc<std::basic_string<char16_t>>(v20);
    std::basic_string<char16_t>::append(v21, *(a1 + 240), *(a1 + 248));
    return a2;
  }

  __break(1u);
  return result;
}

void morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor::~SemiticWordAndDelimiterTokenExtractor(morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor *this)
{
  v2 = (this + 200);
  std::vector<morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>::__destroy_vector::operator()[abi:se200100](&v2);
  std::__tree<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::__map_value_compare<char16_t,std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::less<char16_t>,true>,std::allocator<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>>>::destroy(*(this + 22));
  icu4cxx::UnicodeSet::~UnicodeSet((this + 152));
  morphun::tokenizer::TokenExtractor::~TokenExtractor(this, off_1F3CD9C80);

  JUMPOUT(0x1BFB49160);
}

{
  v2 = (this + 200);
  std::vector<morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>::__destroy_vector::operator()[abi:se200100](&v2);
  std::__tree<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::__map_value_compare<char16_t,std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::less<char16_t>,true>,std::allocator<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>>>::destroy(*(this + 22));
  icu4cxx::UnicodeSet::~UnicodeSet((this + 152));

  morphun::tokenizer::TokenExtractor::~TokenExtractor(this, off_1F3CD9C80);
}

void std::vector<morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>::__destroy_vector::operator()[abi:se200100](void ***a1)
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
        v6 = v4 - 32;
        std::__tree<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::__map_value_compare<char16_t,std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::less<char16_t>,true>,std::allocator<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>>>::destroy(*(v4 - 3));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor::addPrefix(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"Condition is false.");
    morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &__dst);
  }

  v3 = a2;
  v5 = &a2[a3];
  do
  {
    if (!a1)
    {
      v16 = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(v16);
    }

    v6 = *v3;
    v8 = a1 + 1;
    v7 = a1[1];
    if (!v7)
    {
      goto LABEL_12;
    }

    v9 = a1 + 1;
    do
    {
      v10 = *(v7 + 32);
      v11 = v10 >= v6;
      v12 = v10 < v6;
      if (v11)
      {
        v9 = v7;
      }

      v7 = *(v7 + 8 * v12);
    }

    while (v7);
    if (v9 == v8 || *(v9 + 16) > v6)
    {
LABEL_12:
      v19[0] = 0;
      v19[1] = 0;
      v18 = v19;
      v20 = 0;
      LOWORD(__dst) = v6;
      std::map<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>::map[abi:se200100](&__dst + 1, &v18);
      v23 = v20;
      v13 = *v8;
      if (!*v8)
      {
LABEL_18:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 32);
          if (__dst >= v15)
          {
            break;
          }

          v13 = *v14;
          if (!*v14)
          {
            goto LABEL_18;
          }
        }

        if (v15 >= __dst)
        {
          break;
        }

        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      v9 = v14;
      std::__tree<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::__map_value_compare<char16_t,std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::less<char16_t>,true>,std::allocator<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>>>::destroy(v22);
      std::__tree<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::__map_value_compare<char16_t,std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>,std::less<char16_t>,true>,std::allocator<std::__value_type<char16_t,morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor_AffixRecord>>>::destroy(v19[0]);
    }

    a1 = v9 + 5;
    ++v3;
  }

  while (v3 != v5);
  *(v9 + 64) = 1;
}

void sub_1BE62A55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

BOOL morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor::isKnownWord(_BOOL8 result, unsigned __int16 *a2, unint64_t a3)
{
  if (result)
  {
    return result + 8 != std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(result, a2, a3);
  }

  return result;
}

uint64_t morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor::decompoundWord(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6)
{
  v6 = a6;
  v7 = a4;
  v68 = result;
  v8 = result;
  v65 = result + 168;
  while (1)
  {
    if (v7 < a5)
    {
LABEL_90:
      std::__throw_out_of_range[abi:se200100]("string_view::substr");
    }

    v70 = a5;
    v9 = v7 - a5;
    if (v9 >= v6 - a5)
    {
      v9 = v6 - a5;
    }

    if (v9 < 3)
    {
      return result;
    }

    v10 = (a3 + 2 * a5);
    v74 = v9;
    result = morphun::util::UnicodeSetUtils::containsSome((v8 + 19), v10, v9);
    if (!result)
    {
      return result;
    }

    v11 = v8[17];
    result = morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor::isKnownWord(v11, v10, v74);
    if (result)
    {
      return result;
    }

    v12 = v8[25];
    v72 = v8[26];
    if (v12 == v72)
    {
      v39 = 0;
      LODWORD(v19) = 0;
      v16 = v10;
      v15 = v74;
      LODWORD(v22) = v74;
    }

    else
    {
      v13 = 0;
      v73 = 0;
      v14 = v74;
      v15 = v74;
      v16 = v10;
      while (1)
      {
        v17 = v8;
        v11 = v8[17];
        v18 = v15;
        if (morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor::isKnownWord(v11, v16, v15))
        {
          break;
        }

        v19 = v13;
        if (v74 <= v13)
        {
          v20 = v13;
        }

        else
        {
          v20 = v74;
        }

        v21 = v12;
        v22 = v14;
        do
        {
          if (!v21)
          {
            goto LABEL_89;
          }

          if (v19 == v20)
          {
            goto LABEL_88;
          }

          v23 = *(v21 + 8);
          if (!v23)
          {
            goto LABEL_28;
          }

          v24 = v10[v19];
          v25 = v21 + 8;
          do
          {
            v26 = *(v23 + 32);
            v27 = v26 >= v24;
            v28 = v26 < v24;
            if (v27)
            {
              v25 = v23;
            }

            v23 = *(v23 + 8 * v28);
          }

          while (v23);
          if (v25 == v21 + 8 || *(v25 + 32) > v24)
          {
            goto LABEL_28;
          }

          v21 = v25 + 40;
          ++v19;
          v29 = v22 <= 3;
          v22 = (v22 - 1);
        }

        while (!v29);
        v22 = 2;
LABEL_28:
        if (*(v21 + 24) == 1)
        {
          if (v74 < v19)
          {
            goto LABEL_90;
          }

          v30 = v22;
          if (v74 - v19 < v22)
          {
            v30 = v74 - v19;
          }

          v71 = v30;
          v31 = npc<std::vector<int>>(a2);
          v33 = v31[1];
          v32 = v31[2];
          if (v33 >= v32)
          {
            v34 = v33 - *v31;
            v35 = (v34 >> 2) + 1;
            if (!(v35 >> 62))
            {
              v36 = v32 - *v31;
              v37 = v36 >> 1;
              if (v36 >> 1 <= v35)
              {
                v37 = (v34 >> 2) + 1;
              }

              if (v36 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v38 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v37;
              }

              if (v38)
              {
                std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v38);
              }

              goto LABEL_88;
            }

LABEL_91:
            std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
          }

          if (!v33)
          {
            goto LABEL_88;
          }

          v8 = v17;
          *v33 = v70 + v19;
          v16 = &v10[v19];
          v31[1] = v33 + 1;
          ++v73;
          v15 = v71;
        }

        else
        {
          v19 = v13;
          v22 = v14;
          v15 = v18;
          v8 = v17;
        }

        v12 += 32;
        if (v12 != v72)
        {
          v14 = v22;
          v13 = v19;
          if (v22 > 2)
          {
            continue;
          }
        }

        v11 = v8[17];
        goto LABEL_49;
      }

      LODWORD(v19) = v13;
      LODWORD(v22) = v14;
      v15 = v18;
      v8 = v17;
LABEL_49:
      v39 = v73 > 1;
      v6 = a6;
    }

    result = morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor::isKnownWord(v11, v16, v15);
    if (result)
    {
      v7 = a4;
      v40 = a2;
    }

    else
    {
      v41 = v65;
      v7 = a4;
      v42 = v22;
      v40 = a2;
      if (v22 >= 3)
      {
        v43 = v74 & 0x7FFFFFFF;
        v42 = v22;
        v41 = v65;
        while (1)
        {
          if (v74 <= --v43)
          {
            goto LABEL_88;
          }

          v44 = *(v41 + 8);
          if (!v44)
          {
            goto LABEL_67;
          }

          v45 = v10[v43];
          v46 = v41 + 8;
          do
          {
            v47 = *(v44 + 32);
            v27 = v47 >= v45;
            v48 = v47 < v45;
            if (v27)
            {
              v46 = v44;
            }

            v44 = *(v44 + 8 * v48);
          }

          while (v44);
          if (v46 == v41 + 8)
          {
            break;
          }

          v29 = *(v46 + 32) > v45;
          v40 = a2;
          if (v29)
          {
            goto LABEL_67;
          }

          v41 = v46 + 40;
          v29 = v42-- <= 3;
          if (v29)
          {
            v42 = 2;
            goto LABEL_67;
          }
        }

        v40 = a2;
      }

LABEL_67:
      if (*(v41 + 24) == 1)
      {
        v49 = v74 - v22;
        LODWORD(v19) = v42 + v49;
        v50 = v40;
        v51 = v42 != v74 && v39;
        npc<std::vector<int>>(v40);
        if (v51 == 1)
        {
          v53 = *v50;
          v52 = v50[1];
          result = morphun::tokenizer::SemiticWordAndDelimiterTokenExtractor::decompoundWord(v8, v50, a3, a4, (v49 + v70), (v19 + v70));
          v40 = v50;
          if (v50[1] - *v50 == v52 - v53)
          {
            v76 = v19 + v70;
            result = std::vector<int>::emplace_back<int>(v50, &v76);
            v40 = v50;
          }

          v8 = v68;
        }

        else
        {
          v75 = v19 + v70;
          result = std::vector<int>::emplace_back<int>(v50, &v75);
          v40 = v50;
        }
      }
    }

    if (v19 == 0 || !v39)
    {
      break;
    }

    a5 = v19 + v70;
  }

  v54 = v40;
  result = npc<std::vector<int>>(v40);
  v55 = *v54;
  v56 = v54[1];
  if (*v54 != v56)
  {
    v57 = v54[2];
    if (v56 >= v57)
    {
      v58 = v56 - v55;
      v59 = (v58 >> 2) + 1;
      if (v59 >> 62)
      {
        goto LABEL_91;
      }

      v60 = v57 - v55;
      v61 = v60 >> 1;
      if (v60 >> 1 <= v59)
      {
        v61 = (v58 >> 2) + 1;
      }

      if (v60 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v62 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v62 = v61;
      }

      if (v62)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v62);
      }
    }

    else if (v56)
    {
      *v56 = v6;
      v54[1] = v56 + 4;
      return result;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *std::vector<int>::emplace_back<int>(void *result, _DWORD *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2)
  {
    v4 = v3 - *result;
    v5 = (v4 >> 2) + 1;
    if (v5 >> 62)
    {
      goto LABEL_13;
    }

    v6 = v2 - *result;
    v7 = v6 >> 1;
    if (v6 >> 1 <= v5)
    {
      v7 = (v4 >> 2) + 1;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v8 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v8);
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

void morphun::analysis::util::AttributeFactory_DefaultAttributeFactory::~AttributeFactory_DefaultAttributeFactory(morphun::analysis::util::AttributeFactory_DefaultAttributeFactory *this)
{
  *this = &off_1F3CE1B40;
  std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::~__hash_table(this + 8);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CE1B40;
  std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::~__hash_table(this + 8);
}

BOOL std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::__emplace_unique_key_args<std::type_index,std::type_index,morphun::analysis::tokenattributes::PackedTokenAttributeImpl * (*)(void)>(void *a1, uint64_t a2)
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
    goto LABEL_21;
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
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v3)
    {
      break;
    }

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
      goto LABEL_21;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  result = std::type_info::operator==[abi:se200100](*(v12[2] + 8), a2);
  if (!result)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BE62B020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,void *>>>>::~unique_ptr[abi:se200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,void *>>>>::~unique_ptr[abi:se200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<morphun::analysis::util::AttributeImpl * ()(void)>::~__value_func[abi:se200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<morphun::analysis::tokenattributes::PackedTokenAttributeImpl * (*)(void),std::allocator<morphun::analysis::tokenattributes::PackedTokenAttributeImpl * (*)(void)>,morphun::analysis::util::AttributeImpl * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:se200100](*(a2 + 8), "PFPN7morphun8analysis15tokenattributes24PackedTokenAttributeImplEvE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<morphun::analysis::tokenattributes::PackedTokenAttributeImpl * (*)(void),std::allocator<morphun::analysis::tokenattributes::PackedTokenAttributeImpl * (*)(void)>,morphun::analysis::util::AttributeImpl * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F3CD00C8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<morphun::analysis::tokenattributes::LemmaMappingAttributeImpl * (*)(void),std::allocator<morphun::analysis::tokenattributes::LemmaMappingAttributeImpl * (*)(void)>,morphun::analysis::util::AttributeImpl * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:se200100](*(a2 + 8), "PFPN7morphun8analysis15tokenattributes25LemmaMappingAttributeImplEvE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<morphun::analysis::tokenattributes::LemmaMappingAttributeImpl * (*)(void),std::allocator<morphun::analysis::tokenattributes::LemmaMappingAttributeImpl * (*)(void)>,morphun::analysis::util::AttributeImpl * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F3CD0068;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<morphun::analysis::tokenattributes::KeywordAttributeImpl * (*)(void),std::allocator<morphun::analysis::tokenattributes::KeywordAttributeImpl * (*)(void)>,morphun::analysis::util::AttributeImpl * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:se200100](*(a2 + 8), "PFPN7morphun8analysis15tokenattributes20KeywordAttributeImplEvE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<morphun::analysis::tokenattributes::KeywordAttributeImpl * (*)(void),std::allocator<morphun::analysis::tokenattributes::KeywordAttributeImpl * (*)(void)>,morphun::analysis::util::AttributeImpl * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F3CD0188;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<morphun::analysis::tokenattributes::GrammemeAttributeImpl * (*)(void),std::allocator<morphun::analysis::tokenattributes::GrammemeAttributeImpl * (*)(void)>,morphun::analysis::util::AttributeImpl * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:se200100](*(a2 + 8), "PFPN7morphun8analysis15tokenattributes21GrammemeAttributeImplEvE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<morphun::analysis::tokenattributes::GrammemeAttributeImpl * (*)(void),std::allocator<morphun::analysis::tokenattributes::GrammemeAttributeImpl * (*)(void)>,morphun::analysis::util::AttributeImpl * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F3CD0128;
  a2[1] = v2;
  return result;
}

void morphun::analysis::util::AttributeFactory_DefaultAttributeFactory::AttributeFactory_DefaultAttributeFactory(morphun::analysis::util::AttributeFactory_DefaultAttributeFactory *this)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *this = &unk_1F3CD1A88;
  if (("N7morphun8analysis15tokenattributes17GrammemeAttributeE" & 0x8000000000000000) != 0)
  {
    v1 = ("N7morphun8analysis15tokenattributes17GrammemeAttributeE" & 0x7FFFFFFFFFFFFFFFLL);
    v2 = 5381;
    do
    {
      v3 = *v1++;
      v2 = (33 * v2) ^ v3;
    }

    while (v3);
  }

  operator new();
}

void sub_1BE62BB68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,void *>>>>::~unique_ptr[abi:se200100](va);
  morphun::analysis::util::AttributeFactory::~AttributeFactory(v2, off_1F3CDA610);
  _Unwind_Resume(a1);
}

uint64_t mtokc_compare(uint64_t a1, uint64_t a2)
{
  npc<morphun::TokenChain const>(a1);
  npc<morphun::TokenChain const>(a2);
  if (a1 == a2)
  {
    return 0;
  }

  npc<morphun::TokenChain const>(a1);
  v4 = (*(*a1 + 48))(a1);
  npc<morphun::TokenChain const>(a2);
  v5 = (*(*a2 + 48))(a2);
  if (v4)
  {
    while (1)
    {
      if (!v5)
      {
        goto LABEL_6;
      }

      if ((morphun::Token::operator==(v4, v5) & 1) == 0)
      {
        break;
      }

      v4 = v4[10];
      v5 = v5[10];
      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v8 = *(v5 + 39);
    v9 = v8;
    if (v8 < 0)
    {
      v8 = v5[3];
    }

    v10 = *(v4 + 39);
    v11 = v10;
    if (v10 < 0)
    {
      v10 = v4[3];
    }

    if (v8 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    if (v12)
    {
      if (v11 >= 0)
      {
        v13 = (v4 + 2);
      }

      else
      {
        v13 = v4[2];
      }

      if (v9 >= 0)
      {
        v14 = (v5 + 2);
      }

      else
      {
        v14 = v5[2];
      }

      do
      {
        v15 = *v13;
        v16 = *v14;
        if (v15 < v16)
        {
          return 0xFFFFFFFFLL;
        }

        if (v16 < v15)
        {
          return 1;
        }

        v13 += 2;
        v14 += 2;
      }

      while (--v12);
    }

    if (v10 < v8)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 1;
    }

    if (v8 == v10)
    {
      v17 = *(v5 + 63);
      v18 = v17;
      if (v17 < 0)
      {
        v17 = v5[6];
      }

      v19 = *(v4 + 63);
      v20 = v19;
      if (v19 < 0)
      {
        v19 = v4[6];
      }

      if (v17 >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      if (v21)
      {
        if (v20 >= 0)
        {
          v22 = (v4 + 5);
        }

        else
        {
          v22 = v4[5];
        }

        if (v18 >= 0)
        {
          v23 = (v5 + 5);
        }

        else
        {
          v23 = v5[5];
        }

        do
        {
          v24 = *v22;
          v25 = *v23;
          if (v24 < v25)
          {
            return 0xFFFFFFFFLL;
          }

          if (v25 < v24)
          {
            return 1;
          }

          v22 += 2;
          v23 += 2;
        }

        while (--v21);
      }

      if (v19 < v17)
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = 1;
      }

      if (v17 == v19)
      {
        v26 = *v5;
        v27 = **v5;
        v29 = *v4;
        v30 = **v4;
        result = (v28 - v31);
        if (v28 == v31)
        {
          v32 = *v26;
          v34 = *v29;
          result = (v33 - v35);
          if (v33 == v35)
          {
            v36 = *(v5 + 64);
            v37 = *(v4 + 64);
            result = (v36 - v37);
            if (v36 == v37)
            {
              v38 = *(v5 + 65) - *(v4 + 65);
              if (v38 <= 1)
              {
                return 1;
              }

              else
              {
                return v38;
              }
            }
          }
        }
      }
    }
  }

  else
  {
LABEL_6:
    if (v5)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

CFStringRef mtokc_getTokenValueCopy(uint64_t a1, uint64_t a2)
{
  v3 = npc<morphun::TokenChain const>(a1);
  v4 = (*(*v3 + 144))(v3, a2);
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

  return CFStringCreateWithCharacters(0, v6, v7);
}

CFStringRef mtokc_toStringCopy(uint64_t a1)
{
  v1 = npc<morphun::TokenChain const>(a1);
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

void sub_1BE62C350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    JUMPOUT(0x1BE62C338);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef mtokc_toOriginatingStringCopy(uint64_t a1)
{
  v1 = npc<morphun::TokenChain const>(a1);
  (*(*v1 + 160))(__p);
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

void sub_1BE62C444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    JUMPOUT(0x1BE62C42CLL);
  }

  _Unwind_Resume(exception_object);
}

BOOL morphun::analysis::tokenattributes::CharTermAttributeImpl::isImplemented(morphun::analysis::tokenattributes::CharTermAttributeImpl *this, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v2 = **lpsrc;
}

std::basic_string<char16_t> *morphun::analysis::tokenattributes::CharTermAttributeImpl::copyTo(morphun::analysis::tokenattributes::CharTermAttributeImpl *this, char **lpsrc)
{
  if (!lpsrc)
  {
LABEL_13:
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v3 = **lpsrc;
  if (!v4)
  {
    v11 = __cxa_allocate_exception(0x38uLL);
    *(v11 + 8) = 0u;
    *(v11 + 24) = 0u;
    *(v11 + 40) = 0u;
    *v11 = &unk_1F3CD0AE8;
  }

  v5 = this + *(*this - 104);
  v6 = v5[23];
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(v5 + 1);
    if (*v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (!v7)
    {
      __break(1u);
      goto LABEL_13;
    }

    v5 = *v5;
  }

  v8 = (v4 + *(*v4 - 96));

  return std::basic_string<char16_t>::__assign_external(v8, v5, v6);
}

void *morphun::analysis::tokenattributes::CharTermAttributeImpl::clear(void *this)
{
  v1 = this + *(*this - 104);
  if (v1[23] < 0)
  {
    **v1 = 0;
    *(v1 + 1) = 0;
  }

  else
  {
    *v1 = 0;
    v1[23] = 0;
  }

  return this;
}

uint64_t morphun::analysis::tokenattributes::CharTermAttributeImpl::operator()(int a1, char **lpsrc)
{
  v2 = **lpsrc;
  if (!v3)
  {
    __cxa_bad_cast();
  }

  return (*(*v3 + 40))(v3);
}

unint64_t morphun::analysis::tokenattributes::CharTermAttributeImpl::hashCode(morphun::analysis::tokenattributes::CharTermAttributeImpl *this)
{
  v1 = this + *(*this - 104);
  v2 = v1[23];
  if (v2 >= 0)
  {
    v3 = (this + *(*this - 104));
  }

  else
  {
    v3 = *v1;
  }

  if (v2 >= 0)
  {
    v4 = v1[23];
  }

  else
  {
    v4 = *(v1 + 1);
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](v3, 2 * v4);
}

uint64_t morphun::analysis::tokenattributes::CharTermAttributeImpl::equals(morphun::analysis::tokenattributes::CharTermAttributeImpl *this, char **lpsrc)
{
  v2 = *this;
  if ((this + *(*this - 88)) == lpsrc)
  {
    return 1;
  }

  v4 = **lpsrc;
  if (!result)
  {
    return result;
  }

  v6 = (this + *(v2 - 104));
  v7 = (result + *(*result - 104));
  v8 = *(v6 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v6 + 1);
  }

  v10 = *(v7 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v7 + 1);
  }

  if (v8 != v10)
  {
    return 0;
  }

  if (!v8)
  {
    return 1;
  }

  if (v11 < 0)
  {
    v7 = *v7;
  }

  if (v9 < 0)
  {
    v6 = *v6;
  }

  v12 = v8 - 1;
  do
  {
    v14 = *v6++;
    v13 = v14;
    v16 = *v7++;
    v15 = v16;
    v18 = v12-- != 0;
    result = v15 == v13;
  }

  while (v15 == v13 && v18);
  return result;
}

void morphun::analysis::tokenattributes::CharTermAttributeImpl::toString(morphun::analysis::tokenattributes::CharTermAttributeImpl *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  v2 = this + *(*this - 104);
  if (v2[23] < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
  }
}

void morphun::grammar::synthesis::HiGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::HiGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, "c");
  operator new();
}

void sub_1BE62D68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  v52 = (v50 - 193);
  v53 = -48;
  v54 = (v50 - 193);
  while (1)
  {
    v55 = *v54;
    v54 -= 24;
    if (v55 < 0)
    {
      operator delete(*(v52 - 23));
    }

    v52 = v54;
    v53 += 24;
    if (!v53)
    {
      v56 = *(v48 + 32);
      *(v48 + 32) = 0;
      if (v56)
      {
        (*(*v56 + 16))(v56);
      }

      MEMORY[0x1BFB49160](v48, v49);
      _Unwind_Resume(a1);
    }
  }
}

void morphun::grammar::synthesis::PtGrammarSynthesizer_GenericLookupFunction::determine(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  morphun::dialog::DictionaryLookupFunction::determine(a1, a2, __p);
  v6 = HIBYTE(v18);
  v7 = SHIBYTE(v18);
  if (v18 < 0)
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
    a3[2] = v18;
    __p[1] = 0;
    v18 = 0;
    __p[0] = 0;
  }

  else
  {
    v9 = *(a1 + 208);
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    v10 = (*(*v9 + 24))(v9, a2);
    v16 = *(v10 + 8);
    v11 = *(&v16 + 1);
    if (*(&v16 + 1))
    {
LABEL_11:
      v11 = *(v11 + 80);
      goto LABEL_12;
    }

    while (1)
    {
LABEL_12:
      if (v11 == v16)
      {
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
        goto LABEL_19;
      }

      if (v16)
      {
        v12 = **v16;
        {
          break;
        }
      }

      npc<morphun::Token const>(v16);
      *(&v13 + 1) = *(&v16 + 1);
      *&v13 = *(v16 + 80);
      v16 = v13;
      v11 = *(v10 + 16);
      if (v11)
      {
        goto LABEL_11;
      }
    }

    morphun::dialog::DictionaryLookupFunction::determine(a1, v16 + 16, a3);
LABEL_19:
    (*(*v10 + 16))(v10);
    if (v7 < 0)
    {
      v14 = __p[0];

      operator delete(v14);
    }
  }
}

void sub_1BE62DDF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  (*(*v12 + 16))(v12);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::PtGrammarSynthesizer_GenericLookupFunction::~PtGrammarSynthesizer_GenericLookupFunction(morphun::grammar::synthesis::PtGrammarSynthesizer_GenericLookupFunction *this)
{
  morphun::grammar::synthesis::PtGrammarSynthesizer_GenericLookupFunction::~PtGrammarSynthesizer_GenericLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD4620;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  *this = &off_1F3CE6678;
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

void morphun::grammar::synthesis::PtGrammarSynthesizer_GenericLookupFunction::PtGrammarSynthesizer_GenericLookupFunction(morphun::util::LocaleUtils *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  *a1 = &off_1F3CE66D8;
  v1 = morphun::util::LocaleUtils::PORTUGUESE(a1);
  v2 = morphun::grammar::synthesis::GrammemeConstants::POS_NOUN(v1);
  if (*(v2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v5, *v2, *(v2 + 8));
  }

  else
  {
    v3 = *v2;
    v5.__r_.__value_.__r.__words[2] = *(v2 + 16);
    *&v5.__r_.__value_.__l.__data_ = v3;
  }

  memset(v4, 0, sizeof(v4));
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(v4, &v5, &v6, 1uLL);
}

void sub_1BE62E0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::UkGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::UkGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, L"gender");
  operator new();
}

void sub_1BE62E41C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

void morphun::dictionary::DictionaryMetaData_MMappedDictionary::~DictionaryMetaData_MMappedDictionary(morphun::dictionary::DictionaryMetaData_MMappedDictionary *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dictionary::DictionaryMetaData_MMappedDictionary::~DictionaryMetaData_MMappedDictionary(morphun::dictionary::DictionaryMetaData_MMappedDictionary *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  v4 = *(this + 51);
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(this + 52);
  if (v5)
  {
    morphun::util::MemoryMappedFile::~MemoryMappedFile(v5);
    MEMORY[0x1BFB49160]();
  }

  if (*(this + 400) == 1)
  {
    v6 = *(this + 48);
    if (v6)
    {
      MEMORY[0x1BFB49140](v6, 0x1000C8000313F17);
    }
  }

  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(this + 42);
  morphun::dictionary::metadata::StringArrayContainer::~StringArrayContainer((this + 296));
  if (*(this + 288) == 1)
  {
    v7 = *(this + 34);
    if (v7)
    {
      MEMORY[0x1BFB49140](v7, 0x1000C8000313F17);
    }
  }

  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(this + 184);
  morphun::dictionary::metadata::StringArrayContainer::~StringArrayContainer((this + 144));
}

void morphun::dictionary::DictionaryMetaData_MMappedDictionary::DictionaryMetaData_MMappedDictionary(morphun::dictionary::DictionaryMetaData_MMappedDictionary *this, const morphun::util::ULocale *a2, uint64_t a3)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 40)) = *(a2 + 1);
  *(this + 4) = 0;
  morphun::util::ULocale::ULocale(this + 16, a3);
  *(this + 18) = 0;
  *(this + 168) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  FieldMetrics = morphun::dictionary::metadata::MarisaTrie<unsigned long long>::getFieldMetrics(&v6);
  morphun::dictionary::metadata::MarisaTrie<unsigned long long>::MarisaTrie(this + 184, &v6, FieldMetrics);
}

void sub_1BE62E874(_Unwind_Exception *a1)
{
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr((v1 + 336));
  morphun::dictionary::metadata::StringArrayContainer::~StringArrayContainer((v1 + 296));
  if (*(v1 + 288) == 1)
  {
    v4 = *(v1 + 272);
    if (v4)
    {
      MEMORY[0x1BFB49140](v4, 0x1000C8000313F17);
    }
  }

  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(v2 + 40);
  morphun::dictionary::metadata::StringArrayContainer::~StringArrayContainer(v2);
  _Unwind_Resume(a1);
}

unint64_t morphun::dictionary::metadata::MarisaTrie<unsigned long long>::getFieldMetrics(void *a1)
{
  morphun::dictionary::metadata::CharsetConverter::CharsetConverter(v28, "BOCU1");
  memset(&__p, 0, sizeof(__p));
  v2 = *a1;
  v26 = a1 + 1;
  if (*a1 == a1 + 1)
  {
    v19 = 0;
    v18 = 0;
    v5 = 0;
    v4 = 0;
    goto LABEL_25;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v25 = a1[2];
  do
  {
    v9 = v2[6];
    if (v25 >= 0x20000)
    {
      if (v25 >> 17 > v8)
      {
        ++v8;
        goto LABEL_13;
      }

      v8 = 0;
    }

    v10 = v2[5];
    morphun::dictionary::metadata::CharsetConverter::encode(v28, &__p, v2[4], v10);
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    size = __p.__r_.__value_.__l.__size_;
    morphun::util::StringViewUtils::convert(&__p, v2[4], v2[5]);
    v6 += v10;
    if ((v11 & 0x80u) == 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = size;
    }

    v4 += v13;
    v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = __p.__r_.__value_.__l.__size_;
    }

    v5 += v14;
LABEL_13:
    v15 = v2[1];
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
        v16 = v2[2];
        v17 = *v16 == v2;
        v2 = v16;
      }

      while (!v17);
    }

    v7 |= v9;
    v2 = v16;
  }

  while (v16 != v26);
  v18 = 2 * v6;
  if (v7)
  {
    v19 = 64 - __clz(v7);
    if (v3 < 0)
    {
LABEL_24:
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v19 = 0;
    if (v3 < 0)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  if (v19 <= 1)
  {
    LOWORD(v19) = 1;
  }

  v20 = v18 >= v4 || v18 >= v5;
  v21 = 1;
  if (!v20)
  {
    v21 = 2;
  }

  if (v4 >= v18 || v4 >= v5)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  return v23 | (v19 << 32);
}

void sub_1BE62EADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::dictionary::metadata::MarisaTrie<unsigned long long>::MarisaTrie(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = WORD2(a3);
  *a1 = 0;
  v6 = (a1 + 8);
  EncodingName = morphun::dictionary::metadata::MarisaTrie<unsigned long long>::getEncodingName(a3);
  morphun::dictionary::metadata::CharsetConverter::CharsetConverter(v6, EncodingName);
  morphun::dictionary::metadata::CompressedArray<unsigned long long>::CompressedArray((a1 + 32), v3, *(a2 + 16));
}

void sub_1BE62ECBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  marisa::Keyset::~Keyset(&a16);
  if (*(v16 + 56) == 1)
  {
    v19 = *(v16 + 40);
    if (v19)
    {
      MEMORY[0x1BFB49140](v19, 0x1000C8000313F17);
    }
  }

  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v16);
  _Unwind_Resume(a1);
}

void morphun::dictionary::metadata::CompressedArray<unsigned long long>::CompressedArray(int *a1, char **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = *a2;
  do
  {
    v6 = *v5;
    v5 += 8;
    v4 |= v6;
  }

  while (v5 != v3);
  if (!v4)
  {
LABEL_6:
    v7 = 1;
  }

  else
  {
    v7 = 64 - __clz(v4);
  }

  morphun::dictionary::metadata::CompressedArray<unsigned long long>::CompressedArray(a1, v7, (v3 - v2) >> 3);
}

void sub_1BE62EE00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      MEMORY[0x1BFB49140](v3, 0x1000C8000313F17);
    }
  }

  _Unwind_Resume(exception_object);
}

void morphun::dictionary::metadata::CompressedArray<int>::CompressedArray(int *a1, int **a2)
{
  v2 = a2[1];
  if (*a2 == v2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = *a2;
  do
  {
    v5 = *v4++;
    v3 |= v5;
  }

  while (v4 != v2);
  if (!v3)
  {
LABEL_6:
    v6 = 1;
  }

  else
  {
    v6 = 64 - __clz(v3);
  }

  v7 = v6 * ((v2 - *a2) >> 2);
  v8 = v7 + 63;
  if (v7 < -63)
  {
    v8 = v7 + 126;
  }

  *a1 = v8 >> 6;
  a1[1] = v6;
  operator new[]();
}

void sub_1BE62F01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      if (*(v15 + 24) == 1)
      {
        v20 = *(v15 + 8);
        if (v20)
        {
          MEMORY[0x1BFB49140](v20, v16);
        }
      }

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

void morphun::dictionary::metadata::CompressedArray<unsigned long long>::CompressedArray(int *a1, int a2, int a3)
{
  v3 = a3 * a2 + 63;
  if (a3 * a2 < -63)
  {
    v3 = a3 * a2 + 126;
  }

  *a1 = v3 >> 6;
  a1[1] = a2;
  operator new[]();
}

uint64_t morphun::dictionary::metadata::CompressedArray<unsigned long long>::write(uint64_t result, int a2, unint64_t a3)
{
  v3 = *(result + 4);
  v4 = v3 * a2;
  v5 = v3 * a2 + 63;
  if (v3 * a2 >= 0)
  {
    v5 = v3 * a2;
  }

  v6 = v3 + v4;
  v7 = v6 - 1;
  v8 = v6 + 62;
  if (v7 >= 0)
  {
    v8 = v7;
  }

  v9 = v8 >> 6;
  if (v9 > *result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"CompressedArray index too big");
    morphun::exception::IndexOutOfBoundsException::IndexOutOfBoundsException(exception, &__dst);
  }

  v10 = v5 >> 6;
  v11 = v4 - (v5 & 0xC0);
  v12 = (*(result + 8) + 8 * v10);
  *v12 |= a3 << v11;
  if (v10 != v9)
  {
    v12[1] |= a3 >> -v11;
  }

  return result;
}

void sub_1BE62F1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

char *morphun::dictionary::metadata::MarisaTrie<unsigned long long>::getEncodingName(unsigned int a1)
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

void sub_1BE62F2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void morphun::dictionary::DictionaryMetaData_MMappedDictionary::DictionaryMetaData_MMappedDictionary(morphun::dictionary::DictionaryMetaData_MMappedDictionary *this, const morphun::util::ULocale *a2)
{
  *this = &unk_1F3CD98D8;
  *(this + 4) = 0;
  morphun::util::ULocale::ULocale(this + 16, a2);
  *(this + 18) = 0;
  *(this + 168) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  FieldMetrics = morphun::dictionary::metadata::MarisaTrie<unsigned long long>::getFieldMetrics(&v4);
  morphun::dictionary::metadata::MarisaTrie<unsigned long long>::MarisaTrie(this + 184, &v4, FieldMetrics);
}

void sub_1BE62F438(_Unwind_Exception *a1)
{
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr((v1 + 336));
  morphun::dictionary::metadata::StringArrayContainer::~StringArrayContainer((v1 + 296));
  if (*(v1 + 288) == 1)
  {
    v4 = *(v1 + 272);
    if (v4)
    {
      MEMORY[0x1BFB49140](v4, 0x1000C8000313F17);
    }
  }

  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(v2 + 40);
  morphun::dictionary::metadata::StringArrayContainer::~StringArrayContainer(v2);
  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::DictionaryMetaData_MMappedDictionary::DictionaryMetaData_MMappedDictionary(uint64_t a1, uint64_t *a2, morphun::util::MemoryMappedFile *a3)
{
  v5 = *a2;
  *a1 = *a2;
  *(a1 + *(v5 - 40)) = a2[1];
  npc<morphun::util::MemoryMappedFile>(a3);
  LOWORD(v19[0]) = 0;
  morphun::util::MemoryMappedFile::read<short>(a3, v19);
  *(a1 + 8) = v19[0];
  v6 = npc<morphun::util::MemoryMappedFile>(a3);
  __s[0] = 0;
  morphun::util::MemoryMappedFile::read<char *>(v6, __s, 4uLL);
  std::string::basic_string[abi:se200100]<0>(v19, __s[0]);
  __s[0] = 0;
  __s[1] = 0;
  v18 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  morphun::util::ULocale::ULocale(a1 + 16, v19, __s, v15, __p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__s[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  morphun::dictionary::metadata::StringArrayContainer::StringArrayContainer((a1 + 144), a3);
  npc<morphun::util::MemoryMappedFile>(a3);
  LOBYTE(v19[0]) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a3, v19);
  *(a1 + 176) = v19[0];
  npc<morphun::util::MemoryMappedFile>(a3);
  LOBYTE(v19[0]) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a3, v19);
  *(a1 + 177) = v19[0];
  npc<morphun::util::MemoryMappedFile>(a3);
  LOBYTE(v19[0]) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a3, v19);
  *(a1 + 178) = v19[0];
  npc<morphun::util::MemoryMappedFile>(a3);
  LOBYTE(v19[0]) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a3, v19);
  *(a1 + 179) = v19[0];
  npc<morphun::util::MemoryMappedFile>(a3);
  LODWORD(v19[0]) = 0;
  morphun::util::MemoryMappedFile::read<int>(a3, v19);
  *(a1 + 180) = v19[0];
  morphun::dictionary::metadata::MarisaTrie<unsigned long long>::MarisaTrie(a1 + 184, a3);
  npc<morphun::util::MemoryMappedFile>(a3);
  v7 = *(a1 + 180);
  v19[0] = 0;
  morphun::util::MemoryMappedFile::read<long long *>(a3, v19, 8 * v7);
  *(a1 + 256) = v19[0];
  morphun::dictionary::metadata::CompressedArray<unsigned long long>::CompressedArray((a1 + 264), a3);
  morphun::dictionary::metadata::StringArrayContainer::StringArrayContainer((a1 + 296), a3);
  morphun::dictionary::metadata::StringContainer::StringContainer((a1 + 328), a3);
  morphun::dictionary::metadata::CompressedArray<int>::CompressedArray((a1 + 376), a3);
  if (*(a1 + 8))
  {
    operator new();
  }

  *(a1 + 408) = 0;
  *(a1 + 416) = a3;
  IdentifierIfAvailable = morphun::dictionary::metadata::StringArrayContainer::getIdentifierIfAvailable(a1 + 296, "i", 0xAuLL);
  *(a1 + 424) = IdentifierIfAvailable;
  *(a1 + 428) = ~(-1 << *(a1 + 178));
  v9 = *(a1 + 296);
  v10 = 64 - __clz(v9);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1;
  }

  *(a1 + 432) = v11;
  *(a1 + 436) = *(a1 + 264) != 0;
  return a1;
}

void sub_1BE62F7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 + 400) == 1)
  {
    v28 = *(v26 + 384);
    if (v28)
    {
      MEMORY[0x1BFB49140](v28, 0x1000C8000313F17);
    }
  }

  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr((v26 + 336));
  morphun::dictionary::metadata::StringArrayContainer::~StringArrayContainer((v26 + 296));
  if (*(v26 + 288) == 1)
  {
    v29 = *(v26 + 272);
    if (v29)
    {
      MEMORY[0x1BFB49140](v29, 0x1000C8000313F17);
    }
  }

  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(v26 + 184);
  morphun::dictionary::metadata::StringArrayContainer::~StringArrayContainer((v26 + 144));
  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::metadata::MarisaTrie<unsigned long long>::MarisaTrie(uint64_t a1, void *a2)
{
  morphun::util::Validate::notNull<morphun::util::MemoryMappedFile>(a2);
  LODWORD(v9[0]) = 0;
  morphun::util::MemoryMappedFile::read<int>(a2, v9);
  v4 = LODWORD(v9[0]);
  v5 = morphun::util::Validate::notNull<morphun::util::MemoryMappedFile>(a2);
  LOWORD(v9[0]) = 0;
  morphun::util::MemoryMappedFile::read<short>(v5, v9);
  v6 = SLOWORD(v9[0]);
  *a1 = 0;
  EncodingName = morphun::dictionary::metadata::MarisaTrie<unsigned long long>::getEncodingName(v6);
  morphun::dictionary::metadata::CharsetConverter::CharsetConverter((a1 + 8), EncodingName);
  morphun::dictionary::metadata::CompressedArray<unsigned long long>::CompressedArray((a1 + 32), a2);
  *(a1 + 64) = v6;
  if (v4 < 1)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    *v9 = 0u;
    memset(v10, 0, sizeof(v10));
    marisa::Trie::build(a1, v9);
    marisa::scoped_array<marisa::scoped_array<marisa::Key>>::~scoped_array(v11);
    marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v10 + 1);
    marisa::scoped_array<marisa::scoped_array<char>>::~scoped_array(v9);
  }

  else
  {
    npc<morphun::util::MemoryMappedFile>(a2);
    v9[0] = 0;
    morphun::util::MemoryMappedFile::read<char *>(a2, v9, v4);
    marisa::Trie::map(a1, v9[0], v4);
  }

  return a1;
}

void sub_1BE62FAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  marisa::Keyset::~Keyset(&a9);
  if (*(v9 + 56) == 1)
  {
    v12 = *(v9 + 40);
    if (v12)
    {
      MEMORY[0x1BFB49140](v12, 0x1000C8000313F17);
    }
  }

  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v9);
  _Unwind_Resume(a1);
}

int *morphun::dictionary::metadata::CompressedArray<unsigned long long>::CompressedArray(int *a1, void *a2)
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

uint64_t morphun::dictionary::DictionaryMetaData_MMappedDictionary::DictionaryMetaData_MMappedDictionary(uint64_t a1, morphun::util::MemoryMappedFile *a2)
{
  *a1 = &unk_1F3CD98D8;
  npc<morphun::util::MemoryMappedFile>(a2);
  LOWORD(v16[0]) = 0;
  morphun::util::MemoryMappedFile::read<short>(a2, v16);
  *(a1 + 8) = v16[0];
  npc<morphun::util::MemoryMappedFile>(a2);
  __s[0] = 0;
  morphun::util::MemoryMappedFile::read<char *>(a2, __s, 4uLL);
  std::string::basic_string[abi:se200100]<0>(v16, __s[0]);
  __s[0] = 0;
  __s[1] = 0;
  v15 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  morphun::util::ULocale::ULocale(a1 + 16, v16, __s, v12, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__s[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  morphun::dictionary::metadata::StringArrayContainer::StringArrayContainer((a1 + 144), a2);
  npc<morphun::util::MemoryMappedFile>(a2);
  LOBYTE(v16[0]) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, v16);
  *(a1 + 176) = v16[0];
  npc<morphun::util::MemoryMappedFile>(a2);
  LOBYTE(v16[0]) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, v16);
  *(a1 + 177) = v16[0];
  npc<morphun::util::MemoryMappedFile>(a2);
  LOBYTE(v16[0]) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, v16);
  *(a1 + 178) = v16[0];
  npc<morphun::util::MemoryMappedFile>(a2);
  LOBYTE(v16[0]) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(a2, v16);
  *(a1 + 179) = v16[0];
  npc<morphun::util::MemoryMappedFile>(a2);
  LODWORD(v16[0]) = 0;
  morphun::util::MemoryMappedFile::read<int>(a2, v16);
  *(a1 + 180) = v16[0];
  morphun::dictionary::metadata::MarisaTrie<unsigned long long>::MarisaTrie(a1 + 184, a2);
  npc<morphun::util::MemoryMappedFile>(a2);
  v4 = *(a1 + 180);
  v16[0] = 0;
  morphun::util::MemoryMappedFile::read<long long *>(a2, v16, 8 * v4);
  *(a1 + 256) = v16[0];
  morphun::dictionary::metadata::CompressedArray<unsigned long long>::CompressedArray((a1 + 264), a2);
  morphun::dictionary::metadata::StringArrayContainer::StringArrayContainer((a1 + 296), a2);
  morphun::dictionary::metadata::StringContainer::StringContainer((a1 + 328), a2);
  morphun::dictionary::metadata::CompressedArray<int>::CompressedArray((a1 + 376), a2);
  if (*(a1 + 8))
  {
    operator new();
  }

  *(a1 + 408) = 0;
  *(a1 + 416) = a2;
  IdentifierIfAvailable = morphun::dictionary::metadata::StringArrayContainer::getIdentifierIfAvailable(a1 + 296, "i", 0xAuLL);
  *(a1 + 424) = IdentifierIfAvailable;
  *(a1 + 428) = ~(-1 << *(a1 + 178));
  v6 = *(a1 + 296);
  v7 = 64 - __clz(v6);
  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  *(a1 + 432) = v8;
  *(a1 + 436) = *(a1 + 264) != 0;
  return a1;
}

void sub_1BE62FE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 + 400) == 1)
  {
    v28 = *(v26 + 384);
    if (v28)
    {
      MEMORY[0x1BFB49140](v28, 0x1000C8000313F17);
    }
  }

  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr((v26 + 336));
  morphun::dictionary::metadata::StringArrayContainer::~StringArrayContainer((v26 + 296));
  if (*(v26 + 288) == 1)
  {
    v29 = *(v26 + 272);
    if (v29)
    {
      MEMORY[0x1BFB49140](v29, 0x1000C8000313F17);
    }
  }

  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(v26 + 184);
  morphun::dictionary::metadata::StringArrayContainer::~StringArrayContainer((v26 + 144));
  _Unwind_Resume(a1);
}

void virtual thunk tomorphun::dictionary::DictionaryMetaData_MMappedDictionary::~DictionaryMetaData_MMappedDictionary(morphun::dictionary::DictionaryMetaData_MMappedDictionary *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::dictionary::metadata::CompressedArray<unsigned long long>::read(uint64_t a1, int a2)
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
  v11 = (*(a1 + 8) + 8 * v9);
  v12 = *v11 >> v10;
  if (v9 != v8)
  {
    v12 |= v11[1] << -v10;
  }

  return v12 & *(a1 + 16);
}

void sub_1BE630124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t morphun::dictionary::DictionaryMetaData_MMappedDictionary::getValueOfType(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  IdentifierIfAvailable = morphun::dictionary::metadata::StringArrayContainer::getIdentifierIfAvailable(a1 + 144, a2, a3);
  if (IdentifierIfAvailable < 0)
  {
    return 0;
  }

  else
  {
    return 1 << IdentifierIfAvailable;
  }
}

void *morphun::dictionary::DictionaryMetaData_MMappedDictionary::getTypeOfValue@<X0>(void *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((a2 ^ (a2 - 1)) <= a2 - 1 || (v4 = vcnt_s8((a2 - 1)), v4.i16[0] = vaddlv_u8(v4), v5 = *(this + 36), this += 18, v5 <= v4.i32[0]))
  {
    v6 = 0;
    *a3 = 0;
  }

  else
  {
    this = morphun::dictionary::metadata::StringArrayContainer::getString(this, v4.u32[0], a3);
    v6 = 1;
  }

  a3[24] = v6;
  return this;
}

void morphun::dictionary::DictionaryMetaData_MMappedDictionary::getTypesOfValues(morphun::dictionary::DictionaryMetaData_MMappedDictionary *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a2)
  {
    v3 = a2;
    do
    {
      morphun::dictionary::DictionaryMetaData_MMappedDictionary::getTypeOfValue(this, (((v3 - 1) ^ v3) >> 1) + 1, __p);
      if (v11 == 1)
      {
        v6 = *(a3 + 8);
        if (v6 >= *(a3 + 16))
        {
          v8 = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(a3, __p);
          v7 = HIBYTE(v10);
        }

        else
        {
          if (!v6)
          {
            __break(1u);
            return;
          }

          v7 = HIBYTE(v10);
          if (SHIBYTE(v10) < 0)
          {
            std::basic_string<char16_t>::__init_copy_ctor_external(*(a3 + 8), __p[0], __p[1]);
          }

          else
          {
            *v6 = *__p;
            *(v6 + 16) = v10;
          }

          v8 = v6 + 24;
        }

        *(a3 + 8) = v8;
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v3 &= v3 - 1;
    }

    while (v3);
  }
}

void sub_1BE6302D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v14[1] = v15;
  operator delete(__p);
  __p = v14;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1BE63036C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>::~MarisaTrieIterator(va);
  _Unwind_Resume(a1);
}

uint64_t morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>::MarisaTrieIterator(uint64_t result, uint64_t a2, char *__src, unint64_t a4)
{
  v4 = result;
  *result = a2;
  *(result + 8) = 0u;
  v5 = (result + 8);
  *(result + 24) = 0u;
  *(result + 40) = 0u;
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a4 > 0xA)
  {
    if ((a4 | 3) == 0xB)
    {
      v10 = 13;
    }

    else
    {
      v10 = (a4 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v10);
  }

  *(result + 79) = a4;
  v9 = (result + 56);
  v11 = &v9[2 * a4];
  if (v9 <= __src && v11 > __src)
  {
    __break(1u);
    return result;
  }

  if (a4)
  {
    memmove(v9, __src, 2 * a4);
    *&v9[2 * a4] = 0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0;
    __p = 0;
    v19 = 0;
    v20 = 0;
    morphun::dictionary::metadata::CharsetConverter::encode(a2 + 8, &__p, __src, a4);
    if (SHIBYTE(v20) < 0)
    {
      p_p = __p;
      if (!__p)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *exception = &unk_1F3CD9BC8;
        exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/agent.cc";
        exception[2] = 0x20000000FLL;
        exception[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/agent.cc:15: MARISA_NULL_ERROR: str == NULL";
      }

      goto LABEL_16;
    }
  }

  else
  {
    *v11 = 0;
    *(result + 80) = 0u;
    *(result + 112) = 0;
    *(result + 96) = 0u;
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  p_p = &__p;
LABEL_16:
  v14 = *(v4 + 48);
  if (v14)
  {
    *(v14 + 108) = 0;
  }

  v15 = 0;
  do
  {
    v16 = v15;
  }

  while (p_p[v15++]);
  *(v4 + 8) = p_p;
  *(v4 + 16) = v16;
  if (a4 == 1 && *__src == -1 || (marisa::Trie::predictive_search(*v4, v5) & 1) == 0)
  {
    *(v4 + 112) = 1;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  return v4;
}

uint64_t morphun::dictionary::metadata::MarisaTrieIterator<unsigned long long>::~MarisaTrieIterator(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr((a1 + 48));
  return a1;
}

uint64_t morphun::dictionary::DictionaryMetaData_MMappedDictionary::getAllWordsSize(morphun::dictionary::DictionaryMetaData_MMappedDictionary *this)
{
  v1 = *(this + 23);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/trie.cc";
    exception[2] = 0x100000095;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/trie.cc:149: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  return *(v1 + 264);
}

void morphun::dictionary::DictionaryMetaData_MMappedDictionary::getPropertyMapInternalIdentifiers(uint64_t a1, std::vector<int> *this, int a3, int a4)
{
  v4 = a4;
  std::vector<int>::reserve(this, a4);
  if (v4 >= 1)
  {
    do
    {
      v8 = morphun::dictionary::metadata::CompressedArray<int>::read(a1 + 376, a3);
      end = this->__end_;
      value = this->__end_cap_.__value_;
      if (end >= value)
      {
        v11 = end - this->__begin_;
        v12 = (v11 >> 2) + 1;
        if (!(v12 >> 62))
        {
          v13 = value - this->__begin_;
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

LABEL_15:
          __break(1u);
        }

        std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
      }

      if (!end)
      {
        goto LABEL_15;
      }

      *end = v8;
      this->__end_ = end + 1;
      ++a3;
      --v4;
    }

    while (v4);
  }
}

uint64_t morphun::dictionary::DictionaryMetaData_MMappedDictionary::getWordPropertyInternalIdentifiers(uint64_t a1, std::vector<int> *a2, const std::string::value_type *a3, uint64_t a4, int a5)
{
  if (a5 < 0)
  {
    return 0;
  }

  v8 = morphun::dictionary::metadata::MarisaTrie<unsigned long long>::find((a1 + 184), a3, a4);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  a2->__end_ = a2->__begin_;
  if (*(a1 + 436) == 1)
  {
    v10 = morphun::dictionary::metadata::CompressedArray<unsigned long long>::read(a1 + 264, v8);
  }

  Value = morphun::dictionary::metadata::CompressedArray<int>::extractValue(v10, *(a1 + 176), *(a1 + 177));
  if (Value)
  {
    v12 = Value;
    v13 = morphun::dictionary::metadata::CompressedArray<int>::read(a1 + 376, Value);
    v14 = morphun::dictionary::metadata::CompressedArray<int>::extractValue(v13, (*(a1 + 179) + *(a1 + 178)), *(a1 + 432));
    if (v14 >= 1)
    {
      v15 = v14;
      v16 = 0;
      v17 = v12;
      for (i = v14; i; --i)
      {
        v19 = morphun::dictionary::metadata::CompressedArray<int>::read(a1 + 376, v17);
        v20 = morphun::dictionary::metadata::CompressedArray<int>::extractValue(v19, 0, (*(a1 + 179) + *(a1 + 178)));
        v21 = *(a1 + 428) & v20;
        if (v21 > a5)
        {
          break;
        }

        v22 = v20 >> *(a1 + 178);
        if (v21 == a5)
        {
          morphun::dictionary::DictionaryMetaData_MMappedDictionary::getPropertyMapInternalIdentifiers(a1, a2, v15 + v12 + v16, v22);
          return 2;
        }

        v16 += v22;
        ++v17;
      }
    }
  }

  return 1;
}

unint64_t morphun::dictionary::DictionaryMetaData_MMappedDictionary::getWordPropertyValues(uint64_t a1, void *a2, const std::string::value_type *a3, uint64_t a4, unsigned __int16 *a5, unint64_t a6)
{
  Identifier = morphun::dictionary::metadata::StringArrayContainer::getIdentifier(a1 + 296, a5, a6);
  memset(&v28, 0, sizeof(v28));
  WordPropertyInternalIdentifiers = morphun::dictionary::DictionaryMetaData_MMappedDictionary::getWordPropertyInternalIdentifiers(a1, &v28, a3, a4, Identifier);
  v12 = WordPropertyInternalIdentifiers;
  if (!a2 || WordPropertyInternalIdentifiers != 2)
  {
    begin = v28.__begin_;
LABEL_26:
    if (begin)
    {
      operator delete(begin);
    }

    return v12 == 2;
  }

  if (*(a1 + 408))
  {
    v13 = Identifier == *(a1 + 424);
  }

  else
  {
    v13 = 0;
  }

  begin = v28.__begin_;
  end = v28.__end_;
  if (v28.__begin_ == v28.__end_)
  {
    goto LABEL_26;
  }

  v25 = v28.__begin_;
  v16 = v28.__begin_;
  while (1)
  {
    if (v13)
    {
      v17 = *(a1 + 408);
      if (!v17)
      {
        exception = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(exception);
      }

      result = morphun::dictionary::metadata::MarisaTrie<int>::getKey(__p, (v17 + 256), *v16);
    }

    else
    {
      result = morphun::dictionary::metadata::StringContainer::getString((a1 + 328), *v16, __p);
    }

    v19 = a2[1];
    v20 = a2[2];
    if (v19 >= v20)
    {
      break;
    }

    if (!v19)
    {
      goto LABEL_31;
    }

    v21 = *__p;
    *(v19 + 16) = v27;
    *v19 = v21;
    a2[1] = v19 + 24;
    if (++v16 == end)
    {
      begin = v25;
      goto LABEL_26;
    }
  }

  v22 = 1 - 0x5555555555555555 * ((v19 - *a2) >> 3);
  if (v22 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v23 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a2) >> 3);
  if (2 * v23 > v22)
  {
    v22 = 2 * v23;
  }

  if (v23 >= 0x555555555555555)
  {
    result = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    result = v22;
  }

  v29 = a2;
  if (result)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(result);
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_1BE630B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18)
{
  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE630EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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
      std::unique_ptr<morphun::util::MemoryMappedFile>::~unique_ptr[abi:se200100]((v23 - 40));
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

morphun::util::MemoryMappedFile **std::unique_ptr<morphun::util::MemoryMappedFile>::~unique_ptr[abi:se200100](morphun::util::MemoryMappedFile **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    morphun::util::MemoryMappedFile::~MemoryMappedFile(v2);
    MEMORY[0x1BFB49160]();
  }

  return a1;
}

void morphun::dialog::language::EnCommonConceptFactory::~EnCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC738);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC738);
}

void morphun::dialog::language::PtCommonConceptFactory::~PtCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC370);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC370);
}

uint64_t morphun::grammar::synthesis::HiGrammarSynthesizer_HiDisplayFunction::getDisplayValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
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
      *&v15.__r_.__value_.__l.__data_ = *(a1 + 8);
      memset(&v14, 0, sizeof(v14));
      std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(&v14, &v15, &v15.__r_.__value_.__r.__words[2], 2uLL);
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

void sub_1BE632548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, int a39, __int16 a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61)
{
  if (*(v61 - 209) < 0)
  {
    operator delete(*(v61 - 232));
  }

  if (a53 < 0)
  {
    operator delete(__p);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (*(v61 - 137) < 0)
  {
    operator delete(*(v61 - 160));
  }

  *(v61 - 160) = v61 - 128;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100]((v61 - 160));
  a55 = &a61;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a55);
  a38 = a11;
  a55 = &a40;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a55);
  a55 = &a31;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a55);
  if (a9)
  {
    (*(*a9 + 16))(a9);
  }

  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(a20);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::anonymous namespace::guessSingularInflection(std::basic_string<char16_t> *a1, uint64_t a2)
{
  if (std::basic_string<char16_t>::ends_with[abi:se200100](a2, word_1BE80A7BC))
  {
    v5 = *(a2 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    std::basic_string<char16_t>::basic_string(&v14, a2, 0, v5 - 1, v4);
    std::basic_string<char16_t>::append(&v14, word_1BE80A7B8, 1uLL);
LABEL_9:
    *&a1->__r_.__value_.__l.__data_ = *&v14.__r_.__value_.__l.__data_;
    v8 = v14.__r_.__value_.__r.__words[2];
LABEL_10:
    a1->__r_.__value_.__r.__words[2] = v8;
    return;
  }

  if (std::basic_string<char16_t>::ends_with[abi:se200100](a2, "G\t"))
  {
    v7 = *(a2 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    std::basic_string<char16_t>::basic_string(&v14, a2, 0, v7 - 1, v6);
    std::basic_string<char16_t>::append(&v14, ">\t", 1uLL);
    goto LABEL_9;
  }

  v9 = std::basic_string<char16_t>::ends_with[abi:se200100](a2, word_1BE80A7C0);
  v11 = *(a2 + 23);
  if (v9)
  {
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    std::basic_string<char16_t>::basic_string(a1, a2, 0, v11 - 1, v10);
  }

  else
  {
    if ((v11 & 0x80) == 0)
    {
      *&a1->__r_.__value_.__l.__data_ = *a2;
      v8 = *(a2 + 16);
      goto LABEL_10;
    }

    v12 = *a2;
    v13 = *(a2 + 8);

    std::basic_string<char16_t>::__init_copy_ctor_external(a1, v12, v13);
  }
}

void sub_1BE632B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::HiGrammarSynthesizer_HiDisplayFunction::~HiGrammarSynthesizer_HiDisplayFunction(morphun::grammar::synthesis::HiGrammarSynthesizer_HiDisplayFunction *this)
{
  morphun::grammar::synthesis::HiGrammarSynthesizer_HiDisplayFunction::~HiGrammarSynthesizer_HiDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD5490;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

std::basic_string<char16_t> *morphun::grammar::synthesis::EnGrammarSynthesizer_EnDisplayFunction::getDisplayValue(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v93 = *MEMORY[0x1E69E9840];
  TheBestDisplayValue = morphun::grammar::synthesis::GrammarSynthesizerUtil::getTheBestDisplayValue(*(a2 + 8), *(a2 + 16), a3);
  if (!TheBestDisplayValue)
  {
LABEL_90:
    v48 = *MEMORY[0x1E69E9840];
    return 0;
  }

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

  if (!size)
  {
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_90;
  }

  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](&v84, a3);
  morphun::grammar::synthesis::getFeatureValue(&v83, a3, a1[1]);
  v11 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v10);
  v12 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
  if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v83.__r_.__value_.__l.__size_;
  }

  v13 = *(v11 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v11 + 8);
  }

  if (v12 == v13)
  {
    if (!v12)
    {
      goto LABEL_36;
    }

    if (v14 >= 0)
    {
      v15 = v11;
    }

    else
    {
      v15 = *v11;
    }

    v16 = &v83;
    if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v83.__r_.__value_.__r.__words[0];
    }

    while (*v15 == v16->__r_.__value_.__s.__data_[0])
    {
      v16 = (v16 + 2);
      ++v15;
      if (!--v12)
      {
        goto LABEL_36;
      }
    }
  }

  v17 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v11);
  v18 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
  if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v83.__r_.__value_.__l.__size_;
  }

  v19 = *(v17 + 23);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v17 + 8);
  }

  if (v18 == v19)
  {
    if (v18)
    {
      if (v20 >= 0)
      {
        v21 = v17;
      }

      else
      {
        v21 = *v17;
      }

      v22 = &v83;
      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v83.__r_.__value_.__r.__words[0];
      }

      while (*v21 == v22->__r_.__value_.__s.__data_[0])
      {
        v22 = (v22 + 2);
        ++v21;
        if (!--v18)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_39;
    }

LABEL_36:
    v92.__r_.__value_.__r.__words[0] = a1[1];
    __p[1] = 0;
    v89 = 0;
    __p[0] = 0;
    std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(__p, &v92, &v92.__r_.__value_.__l.__size_, 1uLL);
  }

LABEL_39:
  v23 = (*(*v6 + 40))(v6);
  v24 = a1[3];
  if (v23 + 8 != std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(v23, v24))
  {
    std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__emplace_unique_key_args<morphun::dialog::SemanticFeature,morphun::dialog::SemanticFeature const&,std::basic_string<char16_t> const&>(&v84, v24);
  }

  morphun::grammar::synthesis::getFeatureValue(&v92, a3, a1[2]);
  v26 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(v25);
  v27 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v92.__r_.__value_.__l.__size_;
  }

  v28 = *(v26 + 23);
  v29 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v28 = *(v26 + 8);
  }

  if (v27 != v28)
  {
    goto LABEL_89;
  }

  if (v27)
  {
    if (v29 >= 0)
    {
      v30 = v26;
    }

    else
    {
      v30 = *v26;
    }

    v31 = &v92;
    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = v92.__r_.__value_.__r.__words[0];
    }

    do
    {
      if (*v30 != v31->__r_.__value_.__s.__data_[0])
      {
        goto LABEL_89;
      }

      v31 = (v31 + 2);
      ++v30;
      --v27;
    }

    while (v27);
  }

  __p[0] = 0;
  __p[1] = 0;
  v89 = 0;
  v32 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  v33 = *&__str.__r_.__value_.__l.__data_;
  v34 = morphun::util::LocaleUtils::ENGLISH(v26);
  if ((v32 & 0x80u) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = v33;
  }

  if ((v32 & 0x80u) == 0)
  {
    v36 = v32;
  }

  else
  {
    v36 = DWORD2(v33);
  }

  v37 = morphun::util::StringViewUtils::lowercase(__p, p_str, v36, v34);
  v38 = morphun::grammar::synthesis::EnGrammarSynthesizer_EnDisplayFunction::POSSESSIVE_DETERMINERS(v37);
  if (v89 >= 0)
  {
    v39 = __p;
  }

  else
  {
    v39 = __p[0];
  }

  if (v89 >= 0)
  {
    v40 = HIBYTE(v89);
  }

  else
  {
    v40 = __p[1];
  }

  v41 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(v38, v39, v40);
  if ((morphun::grammar::synthesis::EnGrammarSynthesizer_EnDisplayFunction::POSSESSIVE_DETERMINERS(v41) + 8) == v41)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__str.__r_.__value_.__l.__size_)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v91, __str.__r_.__value_.__l.__data_, 0);
        goto LABEL_84;
      }
    }

    else if (!*(&__str.__r_.__value_.__s + 23))
    {
      v91 = __str;
      goto LABEL_84;
    }

    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, word_1BE80E64A);
    v50 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v50 = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_ <= 2)
      {
        goto LABEL_145;
      }
    }

    else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) <= 2)
    {
      goto LABEL_145;
    }

    std::basic_string<char16_t>::basic_string(&v90, &__str, v50 - 2, 2uLL, v49);
    v51 = a1[40];
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &v90;
    }

    else
    {
      v52 = v90.__r_.__value_.__r.__words[0];
    }

    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v53 = v90.__r_.__value_.__l.__size_;
    }

    if (!v51 || !v53)
    {
      goto LABEL_124;
    }

    v54 = 2 * v51;
    v55 = v52;
    v56 = (v52 + 2 * v53);
    while (1)
    {
      v57 = v54;
      v58 = a1[39];
      do
      {
        if (v55->__r_.__value_.__s.__data_[0] == *v58)
        {
          if (v55 == v56)
          {
            goto LABEL_124;
          }

          if (v55 - v52 == -2)
          {
            goto LABEL_124;
          }

          v59 = a1[42];
          if (!v59)
          {
            goto LABEL_124;
          }

          v60 = 2 * v59;
          v61 = v52;
          while (1)
          {
            v62 = v60;
            v63 = a1[41];
            do
            {
              if (v61->__r_.__value_.__s.__data_[0] == *v63)
              {
                if (v61 == v56 || v61 - v52 == -2)
                {
                  goto LABEL_124;
                }

                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  *__dst.__r_.__value_.__l.__data_ = 0;
                  __dst.__r_.__value_.__l.__size_ = 0;
                }

                else
                {
                  __dst.__r_.__value_.__s.__data_[0] = 0;
                  *(&__dst.__r_.__value_.__s + 23) = 0;
                }

LABEL_143:
                if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v90.__r_.__value_.__l.__data_);
                }

LABEL_145:
                v78 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(&v84, a1[3]);
                if (&v85 != v78)
                {
                  std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v90, (v78 + 104), &__dst);
                  v87.__r_.__value_.__r.__words[0] = a1[3];
                  v79 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__emplace_unique_key_args<morphun::dialog::SemanticFeature,std::piecewise_construct_t const&,std::tuple<morphun::dialog::SemanticFeature const&>,std::tuple<>>(&v84, v87.__r_.__value_.__l.__data_);
                  v80 = v79;
                  if (*(v79 + 127) < 0)
                  {
                    operator delete(*(v79 + 104));
                  }

                  *(v80 + 104) = v90;
                }

                std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v91, &__str, &__dst);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

LABEL_84:
                if (SHIBYTE(v89) < 0)
                {
                  operator delete(__p[0]);
                }

                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                __str = v91;
LABEL_89:
                operator new();
              }

              ++v63;
              v62 -= 2;
            }

            while (v62);
            v61 = (v61 + 2);
            if (v61 == v56)
            {
              goto LABEL_124;
            }
          }
        }

        ++v58;
        v57 -= 2;
      }

      while (v57);
      v55 = (v55 + 2);
      if (v55 == v56)
      {
LABEL_124:
        if (std::basic_string<char16_t>::ends_with[abi:se200100](&v90, word_1BE80EB90))
        {
          v64 = npc<morphun::Tokenizer>(a1[44]);
          v65 = (*(*v64 + 24))(v64, &__str);
          npc<morphun::TokenChain>(v65);
          v66 = a1[34];
          v67 = (*(*v65 + 112))(v65);
          if (!v67 || (v68 = *(v67 + 72)) == 0)
          {
            exception = __cxa_allocate_exception(0x38uLL);
            morphun::exception::NullPointerException::NullPointerException(exception);
          }

          v71 = *(v68 + 16);
          v69 = v68 + 16;
          v70 = v71;
          v72 = *(v69 + 23);
          if (v72 >= 0)
          {
            v73 = v69;
          }

          else
          {
            v73 = v70;
          }

          if (v72 >= 0)
          {
            v74 = *(v69 + 23);
          }

          else
          {
            v74 = *(v69 + 8);
          }

          v75 = a1[35];
          v87.__r_.__value_.__r.__words[0] = 0;
          if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v66, &v87, v73, v74))
          {
            v76 = (v87.__r_.__value_.__r.__words[0] & v75) == v75;
          }

          else
          {
            v76 = 0;
          }

          if (v76)
          {
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              __dst.__r_.__value_.__l.__size_ = 1;
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            else
            {
              *(&__dst.__r_.__value_.__s + 23) = 1;
              p_dst = &__dst;
            }

            LODWORD(p_dst->__r_.__value_.__l.__data_) = 8217;
          }

          (*(*v65 + 16))(v65);
        }

        goto LABEL_143;
      }
    }
  }

  v42 = *(v41 + 7);
  if (v42 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  v43 = *(v41 + 6);
  if (v42 > 0xA)
  {
    if ((v42 | 3) == 0xB)
    {
      v45 = 13;
    }

    else
    {
      v45 = (v42 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v45);
  }

  *(&v91.__r_.__value_.__s + 23) = v42;
  result = &v91;
  v46 = (&v91 + 2 * v42);
  if (&v91 > v43 || v46 <= v43)
  {
    if (v42)
    {
      memmove(&v91, v43, 2 * v42);
    }

    v46->__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_84;
  }

  __break(1u);
  return result;
}

void sub_1BE633A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void **a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, char a59)
{
  if (a59 == 1 && a58 < 0)
  {
    operator delete(__p);
  }

  if (*(v60 - 121) < 0)
  {
    operator delete(*(v60 - 144));
  }

  if (v59)
  {
    (*(*v59 + 16))(v59);
  }

  __p = (v60 - 112);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&__p);
  __p = (v60 - 168);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&__p);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(a25);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::EnGrammarSynthesizer_EnDisplayFunction::POSSESSIVE_DETERMINERS(morphun::grammar::synthesis::EnGrammarSynthesizer_EnDisplayFunction *this)
{
  v4 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = morphun::grammar::synthesis::EnGrammarSynthesizer_EnDisplayFunction::POSSESSIVE_DETERMINERS(void)::POSSESSIVE_DETERMINERS_;
  if (!morphun::grammar::synthesis::EnGrammarSynthesizer_EnDisplayFunction::POSSESSIVE_DETERMINERS(void)::POSSESSIVE_DETERMINERS_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE633E58(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *morphun::grammar::synthesis::EnGrammarSynthesizer_EnDisplayFunction::guessPluralInflection(uint64_t a1, unsigned __int16 **a2)
{
  if ((std::basic_string<char16_t>::ends_with[abi:se200100](a2, word_1BE80EB90) & 1) != 0 || (std::basic_string<char16_t>::ends_with[abi:se200100](a2, L"ch") & 1) != 0 || (std::basic_string<char16_t>::ends_with[abi:se200100](a2, L"sh") & 1) != 0 || (std::basic_string<char16_t>::ends_with[abi:se200100](a2, L"x") & 1) != 0 || std::basic_string<char16_t>::ends_with[abi:se200100](a2, "z"))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = a2[1];
    }

    std::basic_string<char16_t>::basic_string[abi:se200100](a1, (v4 + 1));
    if (*(a1 + 23) >= 0)
    {
      result = a1;
    }

    else
    {
      result = *a1;
    }

    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v7 = result + 2 * v4;
      if (v6 < result || v7 <= v6)
      {
        if (v4)
        {
          result = memmove(result, v6, 2 * v4);
        }

        if (v7 > "e" || v7 + 4 <= "e")
        {
          *v7 = 7536741;
          *(v7 + 4) = 0;
          return result;
        }
      }
    }

LABEL_61:
    __break(1u);
    return result;
  }

  v10 = *(a2 + 23);
  LOBYTE(v11) = v10;
  v12 = a2[1];
  if ((v10 & 0x80u) != 0)
  {
    v10 = a2[1];
  }

  if (v10 < 3)
  {
    goto LABEL_44;
  }

  v13 = std::basic_string<char16_t>::ends_with[abi:se200100](a2, word_1BE80D48A);
  if ((v13 & 1) == 0)
  {
    LOBYTE(v11) = *(a2 + 23);
    v12 = a2[1];
    goto LABEL_44;
  }

  result = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(v13);
  v14 = *(a2 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = a2[1];
  }

  if (v14 <= 1)
  {
    goto LABEL_61;
  }

  v16 = v15 >= 0 ? a2 : *a2;
  v17 = MEMORY[0x1BFB49A20](*result, *(v16 + v14 - 2));
  v11 = *(a2 + 23);
  v12 = a2[1];
  if (v17)
  {
LABEL_44:
    if ((v11 & 0x80u) == 0)
    {
      v20 = v11;
    }

    else
    {
      v20 = v12;
    }

    std::basic_string<char16_t>::basic_string[abi:se200100](a1, v20 + 1);
    if (*(a1 + 23) >= 0)
    {
      result = a1;
    }

    else
    {
      result = *a1;
    }

    if (*(a2 + 23) >= 0)
    {
      v21 = a2;
    }

    else
    {
      v21 = *a2;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      v22 = result + v20;
      if (v21 < result || v22 <= v21)
      {
        if (v20)
        {
          result = memmove(result, v21, 2 * v20);
        }

        if (v22 > word_1BE80EB90 || v22 + 1 <= word_1BE80EB90)
        {
          *v22 = 115;
          return result;
        }
      }
    }

    goto LABEL_61;
  }

  if (v11 >= 0)
  {
    v19 = *(a2 + 23);
  }

  else
  {
    v19 = a2[1];
  }

  std::basic_string<char16_t>::basic_string(&v23, a2, 0, v19 - 1, v18);
  result = std::basic_string<char16_t>::append(&v23, "i", 3uLL);
  *a1 = v23;
  return result;
}

void sub_1BE6341E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::EnGrammarSynthesizer_EnDisplayFunction::guessSingularInflection(std::basic_string<char16_t> *a1, uint64_t a2)
{
  if ((std::basic_string<char16_t>::ends_with[abi:se200100](a2, "s") & 1) != 0 || (std::basic_string<char16_t>::ends_with[abi:se200100](a2, "c") & 1) != 0 || (std::basic_string<char16_t>::ends_with[abi:se200100](a2, L"shes") & 1) != 0 || (std::basic_string<char16_t>::ends_with[abi:se200100](a2, "x") & 1) != 0 || std::basic_string<char16_t>::ends_with[abi:se200100](a2, word_1BE80EB6E))
  {
    v5 = *(a2 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    v6 = v5 - 2;
LABEL_9:

    std::basic_string<char16_t>::basic_string(a1, a2, 0, v6, v4);
    return;
  }

  if (std::basic_string<char16_t>::ends_with[abi:se200100](a2, "i"))
  {
    v8 = *(a2 + 23);
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 8);
    }

    std::basic_string<char16_t>::basic_string(&v14, a2, 0, v8 - 3, v7);
    std::basic_string<char16_t>::append(&v14, word_1BE80D48A, 1uLL);
    *&a1->__r_.__value_.__l.__data_ = *&v14.__r_.__value_.__l.__data_;
    v9 = v14.__r_.__value_.__r.__words[2];
    goto LABEL_22;
  }

  v10 = std::basic_string<char16_t>::ends_with[abi:se200100](a2, word_1BE80EB90);
  v11 = *(a2 + 23);
  if (v10)
  {
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 8);
    }

    v6 = v11 - 1;
    goto LABEL_9;
  }

  if ((v11 & 0x80) == 0)
  {
    *&a1->__r_.__value_.__l.__data_ = *a2;
    v9 = *(a2 + 16);
LABEL_22:
    a1->__r_.__value_.__r.__words[2] = v9;
    return;
  }

  v12 = *a2;
  v13 = *(a2 + 8);

  std::basic_string<char16_t>::__init_copy_ctor_external(a1, v12, v13);
}

void sub_1BE63439C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::EnGrammarSynthesizer_EnDisplayFunction::~EnGrammarSynthesizer_EnDisplayFunction(morphun::grammar::synthesis::EnGrammarSynthesizer_EnDisplayFunction *this)
{
  morphun::grammar::synthesis::EnGrammarSynthesizer_EnDisplayFunction::~EnGrammarSynthesizer_EnDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD56B0;
  *(this + 55) = &unk_1F3CD84E0;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 64));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(this + 61));
  *(this + 45) = &unk_1F3CD8468;
  if (*(this + 439) < 0)
  {
    operator delete(*(this + 52));
  }

  if (*(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  v2 = *(this + 44);
  *(this + 44) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

void morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction::inflectSignificantTokens(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char **a4@<X3>, void *a5@<X8>)
{
  v6 = a4[1];
  if (*a4 != v6)
  {
    v8 = *(v6 - 1);
    v9 = *a3;
    if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > v8)
    {
      v13 = a1[6];
      v14 = (v9 + 24 * v8);
      v15 = v14[23];
      if (v15 < 0)
      {
        v14 = *v14;
        v15 = *(v9 + 24 * v8 + 8);
      }

      v34.__r_.__value_.__r.__words[0] = 0;
      if (!morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v13, &v34, v14, v15))
      {
        *a5 = 0;
        a5[1] = 0;
        a5[2] = 0;
        return;
      }

      v16 = *a4;
      if (a4[1] - *a4 != 8)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3) > v8)
        {
          morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction::inflectWord(&v34, a1, a2, *a3 + 24 * v8, *a3 + 24 * v8);
        }

        goto LABEL_38;
      }

      v17 = *v16;
      v18 = *a3;
      v19 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
      if (v19 > v17)
      {
        v20 = (v18 + 24 * v17);
        if ((*(v20 + 23) & 0x80000000) == 0)
        {
          v21 = *v20;
          v34.__r_.__value_.__r.__words[2] = *(v20 + 2);
          *&v34.__r_.__value_.__l.__data_ = v21;
          goto LABEL_15;
        }

        std::basic_string<char16_t>::__init_copy_ctor_external(&v34, *v20, *(v20 + 1));
        v16 = *a4;
        if ((a4[1] - *a4) >= 5)
        {
          v18 = *a3;
          v19 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
LABEL_15:
          v22 = *(v16 + 1);
          if (v19 > v22)
          {
            v23 = (v18 + 24 * v22);
            if (*(v23 + 23) < 0)
            {
              std::basic_string<char16_t>::__init_copy_ctor_external(&v33, *v23, *(v23 + 1));
            }

            else
            {
              v24 = *v23;
              v33.__r_.__value_.__r.__words[2] = *(v23 + 2);
              *&v33.__r_.__value_.__l.__data_ = v24;
            }

            v32 = 0;
            if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &v34;
            }

            else
            {
              v25 = v34.__r_.__value_.__r.__words[0];
            }

            if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v34.__r_.__value_.__l.__size_;
            }

            morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[6], &v32, v25, size);
            v31 = 0;
            if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v27 = &v33;
            }

            else
            {
              v27 = v33.__r_.__value_.__r.__words[0];
            }

            if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v28 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v28 = v33.__r_.__value_.__l.__size_;
            }

            morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[6], &v31, v27, v28);
            if (!v32 || !v31 || (a1[9] & v32) != 0 && (v29 = a1[10], (v29 & v32) == 0) && (v29 & v31) != 0)
            {
              morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction::inflectWord(&v30, a1, a2, &v34, &v33);
            }

            morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction::inflectWord(&v30, a1, a2, &v33, &v33);
          }
        }
      }
    }
  }

LABEL_38:
  __break(1u);
}

void sub_1BE63492C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction::inflectWord(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  morphun::grammar::synthesis::getFeatureValue(&v19, a3, a2[2]);
  morphun::grammar::synthesis::getFeatureValue(&v18, a3, a2[1]);
  morphun::grammar::synthesis::getFeatureValue(&__s, a3, a2[3]);
  morphun::grammar::synthesis::getFeatureValue(&__p, a3, a2[4]);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v10 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v8);
    v11 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v19.__r_.__value_.__l.__size_;
    }

    v12 = *(v10 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v10 + 8);
    }

    if (v11 == v12)
    {
      if (v11)
      {
        if (v13 >= 0)
        {
          v14 = v10;
        }

        else
        {
          v14 = *v10;
        }

        v15 = &v19;
        if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v15 = v19.__r_.__value_.__r.__words[0];
        }

        while (*v14 == v15->__r_.__value_.__s.__data_[0])
        {
          v15 = (v15 + 2);
          ++v14;
          if (!--v11)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        morphun::grammar::synthesis::SvGrammarSynthesizer_GenderLookupFunction::determine(a2 + 11, a5, &__str);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = __str;
      }
    }
  }

  memset(&v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  v23 = v20;
  std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(1uLL);
}

void sub_1BE635278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39)
{
  if (*(v39 + 23) < 0)
  {
    operator delete(*v39);
  }

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

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

void virtual thunk tomorphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction::~SvGrammarSynthesizer_SvDisplayFunction(morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction *this)
{
  morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction::~SvGrammarSynthesizer_SvDisplayFunction((this + *(*this - 32)));

  JUMPOUT(0x1BFB49160);
}

{
  morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction::~SvGrammarSynthesizer_SvDisplayFunction((this + *(*this - 32)));
}

void morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction::~SvGrammarSynthesizer_SvDisplayFunction(morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction *this)
{
  *this = &unk_1F3CD5158;
  *(this + 69) = &unk_1F3CD51B0;
  morphun::grammar::synthesis::SvGrammarSynthesizer_GenderLookupFunction::~SvGrammarSynthesizer_GenderLookupFunction((this + 88));
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

{
  morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction::~SvGrammarSynthesizer_SvDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction::getDisplayValue(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(&v15, 0, sizeof(v15));
  v4 = *(a2 + 8);
  if (v4 != *(a2 + 16))
  {
    v6 = (*(*v4 + 24))(v4);
    std::basic_string<char16_t>::operator=(&v15, v6);
    size = SHIBYTE(v15.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v15.__r_.__value_.__l.__size_;
      if (v15.__r_.__value_.__l.__size_)
      {
        v8 = v15.__r_.__value_.__r.__words[0];
LABEL_8:
        v9 = a1[6];
        v14.__r_.__value_.__r.__words[0] = 0;
        if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v9, &v14, v8, size))
        {
          morphun::grammar::synthesis::SvGrammarSynthesizer_SvDisplayFunction::inflectWord(&v14, a1, a3, &v15, &v15);
        }

        v10 = a1[8];
        if (v10)
        {
          v11 = (*(*v10 + 24))(v10, &v15);
          npc<morphun::TokenChain>(v11);
          npc<morphun::TokenChain>(v11);
          morphun::grammar::synthesis::GrammarSynthesizerUtil::inflectSignificantWords(&v14, a3, v11, a1 + *(*a1 - 64));
          if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v15.__r_.__value_.__l.__data_);
          }

          v15 = v14;
          (*(*v11 + 16))(v11);
          operator new();
        }

        exception = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(exception);
      }

      operator delete(v15.__r_.__value_.__l.__data_);
    }

    else if (*(&v15.__r_.__value_.__s + 23))
    {
      v8 = &v15;
      goto LABEL_8;
    }
  }

  return 0;
}

void sub_1BE6356BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  __cxa_free_exception(v18);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::PtGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::PtGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "d");
  operator new();
}

void sub_1BE639BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  __cxa_free_exception(v54);
  MEMORY[0x1BFB49160](v53, 0x10F3C405FC599D6);
  _Unwind_Resume(a1);
}

void sub_1BE63A658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  while (1)
  {
    v34 = *(v33 - 1);
    v33 -= 3;
    if (v34 < 0)
    {
      operator delete(*v33);
    }

    if (v33 == &a33)
    {
      JUMPOUT(0x1BE63A340);
    }
  }
}

void sub_1BE63A680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v34 = v33;
  while (1)
  {
    v36 = *(v34 - 3);
    v34 -= 24;
    v35 = v36;
    if (v36)
    {
      *(v33 - 2) = v35;
      operator delete(v35);
    }

    v33 = v34;
    if (v34 == &a33)
    {
      JUMPOUT(0x1BE63A350);
    }
  }
}

void sub_1BE63A6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  while (1)
  {
    v34 = *(v33 - 1);
    v33 -= 3;
    if (v34 < 0)
    {
      operator delete(*v33);
    }

    if (v33 == &a33)
    {
      JUMPOUT(0x1BE63A6DCLL);
    }
  }
}

uint64_t morphun::grammar::synthesis::PtGrammarSynthesizer::getCount(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::PtGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::PtGrammarSynthesizer::Count>>(morphun::grammar::synthesis::PtGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::PtGrammarSynthesizer::Count>>(morphun::grammar::synthesis::PtGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE63A8EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::PtGrammarSynthesizer::Count>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE63AB2C(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::PtGrammarSynthesizer::Count>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::PtGrammarSynthesizer::getGender(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::PtGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::PtGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::PtGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::PtGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::PtGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE63AD98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::PtGrammarSynthesizer::Gender>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE63AFD8(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::PtGrammarSynthesizer::Gender>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::grammar::synthesis::ItGrammarSynthesizer_PossessiveAdjectiveLookupFunction::getFeatureValue(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, a1[1]);
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

  v10 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, a1[2]);
  v11 = v10;
  if (v8 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (v10 + 104);
  }

  v13 = (*(*a2 + 32))(a2, a1[3]);
  Count = morphun::grammar::synthesis::ItGrammarSynthesizer::getCount(v13);
  v15 = (*(*a2 + 32))(a2, a1[4]);
  Gender = morphun::grammar::synthesis::ItGrammarSynthesizer::getGender(v15);
  v17 = (*(*a2 + 24))(a2);
  if (Count)
  {
    v18 = Gender == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    v19 = v17;
    if (!Count && (morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::determine(a1 + 5, v17, &__p), Count = morphun::grammar::synthesis::ItGrammarSynthesizer::getCount(&__p), v30 < 0))
    {
      operator delete(__p);
      if (Gender)
      {
        goto LABEL_18;
      }
    }

    else if (Gender)
    {
      goto LABEL_18;
    }

    morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction::determine(a1 + 34, v19, &__p);
    Gender = morphun::grammar::synthesis::ItGrammarSynthesizer::getGender(&__p);
    if (v30 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_18:
  if (v8 != v11 && v8 != v7)
  {
    PossessiveAdjectiveCount = morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjectiveCount(v12);
    PossessiveAdjectivePerson = morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjectivePerson(v9);
    PossessiveAdjective = morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjective(PossessiveAdjectiveCount, PossessiveAdjectivePerson);
    if (v23)
    {
      InflectedPossessiveAdjectiveValue = morphun::grammar::synthesis::ItGrammarSynthesizer::getInflectedPossessiveAdjectiveValue(PossessiveAdjective, v23, Gender, Count);
      if (v25 < 0x7FFFFFFFFFFFFFF8)
      {
        if (v25 > 0xA)
        {
          if ((v25 | 3) == 0xB)
          {
            v26 = 13;
          }

          else
          {
            v26 = (v25 | 3) + 1;
          }

          std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v26);
        }

        v30 = v25;
        v27 = (&__p + 2 * v25);
        if (&__p > InflectedPossessiveAdjectiveValue || v27 <= InflectedPossessiveAdjectiveValue)
        {
          if (v25)
          {
            memmove(&__p, InflectedPossessiveAdjectiveValue, 2 * v25);
          }

          *v27 = 0;
          operator new();
        }

        __break(1u);
      }

      std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
    }

    operator new();
  }

  operator new();
}

void sub_1BE63B364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v15, v16);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::ItGrammarSynthesizer_PossessiveAdjectiveLookupFunction::~ItGrammarSynthesizer_PossessiveAdjectiveLookupFunction(morphun::grammar::synthesis::ItGrammarSynthesizer_PossessiveAdjectiveLookupFunction *this)
{
  *this = &unk_1F3CD3D00;
  v1 = (this + 40);
  morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction::~ItGrammarSynthesizer_GenderLookupFunction((this + 272));
  morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::~ItGrammarSynthesizer_CountLookupFunction(v1);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD3D00;
  v1 = (this + 40);
  morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction::~ItGrammarSynthesizer_GenderLookupFunction((this + 272));
  morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::~ItGrammarSynthesizer_CountLookupFunction(v1);
}

uint64_t npc<morphun::tokenizer::locale::fi::FiSegment>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::tokenizer::locale::fi::FiSuffixSplit::CLITICSET(morphun::tokenizer::locale::fi::FiSuffixSplit *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = npc<std::set<std::u16string_view>>(morphun::tokenizer::locale::fi::FiSuffixSplit::CLITICSET(void)::CLITICSET_);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE63B6C0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

uint64_t morphun::tokenizer::locale::fi::FiSuffixSplit::SUFFIX_SPLIT(morphun::tokenizer::locale::fi::FiSuffixSplit *this)
{
  {
    operator new();
  }

  v1 = morphun::tokenizer::locale::fi::FiSuffixSplit::SUFFIX_SPLIT(void)::SUFFIX_SPLIT_;

  return npc<std::set<std::u16string_view>>(v1);
}

void sub_1BE63B794(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::set<std::u16string_view>::set[abi:se200100]<char16_t const* const*>(void *result, uint64_t a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a2 != a3)
  {
    operator new();
  }

  return result;
}

uint64_t morphun::tokenizer::locale::fi::FiSuffixSplit::SUFFIXINFO(morphun::tokenizer::locale::fi::FiSuffixSplit *this)
{
  {
    if (v2)
    {
      morphun::tokenizer::locale::fi::FiSuffixSplit::loadSuffixInfo(v2);
    }
  }

  result = morphun::tokenizer::locale::fi::FiSuffixSplit::SUFFIXINFO(void)::SUFFIXINFO_;
  if (!morphun::tokenizer::locale::fi::FiSuffixSplit::SUFFIXINFO(void)::SUFFIXINFO_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::tokenizer::locale::fi::FiSuffixSplit::loadSuffixInfo(morphun::tokenizer::locale::fi::FiSuffixSplit *this)
{
  v1 = std::set<std::u16string_view>::set[abi:se200100]<char16_t const* const*>(&v16, &morphun::tokenizer::locale::fi::ALL_SUFFIX_SEQUENCE_PRIMITIVE, (&morphun::tokenizer::locale::fi::ALL_SUFFIX_SEQUENCE_PRIMITIVE + 665));
  v2 = 0;
  v3 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14 = v15;
  while (1)
  {
    v4 = &(&off_1E8069DE0)[v3];
    v5 = v15;
    if (v14 == v15)
    {
      goto LABEL_8;
    }

    v6 = v2;
    v7 = v15;
    if (v2)
    {
      do
      {
        v5 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      do
      {
        v5 = v7[2];
        v8 = *v5 == v7;
        v7 = v5;
      }

      while (v8);
    }

    v9 = *v4;
    v10 = v4[1];
    v1 = std::less<std::u16string_view>::operator()[abi:se200100](v5[4], v5[5], *v4, v10);
    if (v1)
    {
LABEL_8:
      if (!v2)
      {
        __p = v15;
LABEL_14:
        operator new();
      }

      __p = v5;
      v11 = v5 + 1;
    }

    else
    {
      v1 = std::__tree<std::u16string_view>::__find_equal<std::u16string_view>(&v14, &__p, v9, v10);
      v11 = v1;
    }

    if (!*v11)
    {
      goto LABEL_14;
    }

    v3 += 3;
    if (v3 == 6)
    {
      v12 = morphun::tokenizer::locale::fi::FiSuffixSplit::SUFFIX_SPLIT(v1);
      std::set<std::u16string_view>::insert[abi:se200100]<std::__tree_const_iterator<std::u16string_view,std::__tree_node<std::u16string_view,void *> *,long>>(&v16, *v12, (v12 + 8));
      operator new();
    }

    v2 = v15[0];
  }
}

void sub_1BE63C11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::u16string_view>::destroy(a22);
  std::__tree<std::u16string_view>::destroy(*(v22 - 96));
  _Unwind_Resume(a1);
}

void sub_1BE63C208(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__hash_table<std::__hash_value_type<std::u16string_view,std::vector<int>>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::vector<int>>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::vector<int>>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::vector<int>>>>::__emplace_unique_key_args<std::u16string_view,std::u16string_view const&,std::vector<int>>(void *a1, uint64_t *a2, uint64_t a3)
{
  result = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](a2, 2 * a3);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_22;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = result;
    if (result >= *&v7)
    {
      v9 = result % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & result;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == result)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_22;
    }

LABEL_21:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_22;
    }
  }

  if (v11[3] != a3)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    v13 = v11[2];
    v14 = a3;
    for (i = a2; *i == *v13; i = (i + 2))
    {
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    goto LABEL_21;
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::u16string_view,std::vector<int>>,void *>>>::operator()[abi:se200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<std::u16string_view,std::vector<int>>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::vector<int>>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::vector<int>>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::vector<int>>>>::find<std::u16string_view>(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](a3, 2 * a4);
  if (!a2)
  {
    return 0;
  }

  v9 = vcnt_s8(a2);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v8;
    if (v8 >= a2)
    {
      v10 = v8 % a2;
    }
  }

  else
  {
    v10 = (a2 - 1) & v8;
  }

  i = *(a1 + 8 * v10);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v12 = i[1];
      if (v8 == v12)
      {
        if (i[3] == a4)
        {
          if (!a4)
          {
            return i;
          }

          v13 = i[2];
          v14 = a4;
          for (j = a3; *j == *v13; j = (j + 2))
          {
            ++v13;
            if (!--v14)
            {
              return i;
            }
          }
        }
      }

      else
      {
        if (v9.u32[0] > 1uLL)
        {
          if (v12 >= a2)
          {
            v12 %= a2;
          }
        }

        else
        {
          v12 &= a2 - 1;
        }

        if (v12 != v10)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

void *morphun::tokenizer::locale::fi::FiSuffixSplit::addSuffixInfo(morphun::tokenizer::locale::fi::FiSuffixSplit *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = morphun::tokenizer::locale::fi::FiSuffixSplit::SUFFIXINFO(a1);
  v9 = std::__hash_table<std::__hash_value_type<std::u16string_view,std::vector<int>>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::vector<int>>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::vector<int>>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::vector<int>>>>::find<std::u16string_view>(*v8, *(v8 + 8), a1, a2);
  result = morphun::tokenizer::locale::fi::FiSuffixSplit::SUFFIXINFO(v9);
  if (v9)
  {
    v12 = *(v9 + 4);
    v11 = *(v9 + 5);
    while (v12 != v11)
    {
      v13 = *v12++;
      v14 = npc<std::vector<int>>(a3);
      v15 = v13 + a4;
      result = std::vector<int>::emplace_back<int>(v14, &v15);
    }
  }

  return result;
}

BOOL morphun::tokenizer::locale::fi::FiSuffixSplit::isInNotNominative(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  v6 = morphun::tokenizer::locale::fi::FiSuffixSplit::isInNotNominative(morphun::tokenizer::locale::fi::FiSegment const*,std::u16string_view)::notNominativeSuffix_;
  if (!morphun::tokenizer::locale::fi::FiSuffixSplit::isInNotNominative(morphun::tokenizer::locale::fi::FiSegment const*,std::u16string_view)::notNominativeSuffix_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v7 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(morphun::tokenizer::locale::fi::FiSuffixSplit::isInNotNominative(morphun::tokenizer::locale::fi::FiSegment const*,std::u16string_view)::notNominativeSuffix_, a2, a3);
  if (v6 + 8 == v7)
  {
    result = 1;
  }

  else
  {
    if (!a1)
    {
      v11 = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(v11);
    }

    v12 = *(a1 + 8);
    result = std::u16string_view::ends_with[abi:se200100](&v12, *(v7 + 48), *(v7 + 56));
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE63C8A4(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void morphun::tokenizer::locale::fi::FiSuffixSplit::addBoundaries(uint64_t a1, void *a2, int a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 12);
  v6 = npc<morphun::tokenizer::locale::fi::FiSegment>(*a1);
  if (v5 == 1)
  {
    *(a1 + 8) = *(v6 + 60);
    v7 = npc<morphun::tokenizer::locale::fi::FiSegment>(*a1);
    v8 = *MEMORY[0x1E69E9840];

    morphun::tokenizer::locale::fi::FiSegment::addBoundaries(v7, a2);
  }

  else
  {
    v33 = *(v6 + 64);
    v36 = *(npc<morphun::tokenizer::locale::fi::FiSegment>(*a1) + 16);
    v9 = npc<morphun::tokenizer::locale::fi::FiSegment>(*a1);
    v35 = a1;
    v10 = *(v9 + 2);
    v11 = v10 - 3;
    v32 = a2;
    if (v10 - 3 >= 1)
    {
      v12 = *(v9 + 1);
      if (a3 == 1)
      {
        v13 = 3;
      }

      else
      {
        v13 = 10;
      }

      if (v11 >= v13)
      {
        v11 = v13;
      }

      v34 = v11 + 1;
      v14 = 1;
      while (1)
      {
        v15 = v10 - v14;
        if (v14 == v10 + 1)
        {
LABEL_48:
          std::__throw_out_of_range[abi:se200100]("string_view::substr");
        }

        v16 = a3;
        if (a3 == 1)
        {
          {
            operator new();
          }

          v17 = npc<std::set<std::u16string_view>>(morphun::tokenizer::locale::fi::FiSuffixSplit::MIDDLESUFFIXSET(void)::MIDDLESUFFIXSET_);
          v9 = std::__tree<std::u16string_view>::__count_unique<std::u16string_view>(*(v17 + 8), (v12 + 2 * v15), v14);
          if (v9)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (a3)
          {
            goto LABEL_21;
          }

          v18 = morphun::tokenizer::locale::fi::FiSuffixSplit::CLITICSET(v9);
          v9 = std::__tree<std::u16string_view>::__count_unique<std::u16string_view>(*(v18 + 8), (v12 + 2 * v15), v14);
          if (v9)
          {
            if (v15 > 2)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v19 = morphun::tokenizer::locale::fi::FiSuffixSplit::SUFFIXINFO(0);
            v9 = std::__hash_table<std::__hash_value_type<std::u16string_view,std::vector<int>>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::vector<int>>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::vector<int>>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::vector<int>>>>::find<std::u16string_view>(*v19, *(v19 + 8), (v12 + 2 * v15), v14);
            if (v15 >= 3 && v9)
            {
              goto LABEL_16;
            }
          }

          if (v14 < 3)
          {
            goto LABEL_21;
          }

          v20 = v14 - 1;
          v21 = 1;
          do
          {
            while (1)
            {
              v22 = morphun::tokenizer::locale::fi::FiSuffixSplit::SUFFIXINFO(v9);
              v23 = v14 >= v14 - v21 ? v14 - v21 : v14;
              v9 = std::__hash_table<std::__hash_value_type<std::u16string_view,std::vector<int>>,std::__unordered_map_hasher<std::u16string_view,std::__hash_value_type<std::u16string_view,std::vector<int>>,std::hash<std::u16string_view>,std::equal_to<std::u16string_view>,true>,std::__unordered_map_equal<std::u16string_view,std::__hash_value_type<std::u16string_view,std::vector<int>>,std::equal_to<std::u16string_view>,std::hash<std::u16string_view>,true>,std::allocator<std::__hash_value_type<std::u16string_view,std::vector<int>>>>::find<std::u16string_view>(*v22, *(v22 + 8), (v12 + 2 * v15), v23);
              if (v9)
              {
                break;
              }

              if (++v21 >= v20)
              {
                v16 = a3;
                goto LABEL_21;
              }
            }

            v24 = morphun::tokenizer::locale::fi::FiSuffixSplit::CLITICSET(v9);
            if (v14 < v21)
            {
              goto LABEL_48;
            }

            v9 = std::__tree<std::u16string_view>::__count_unique<std::u16string_view>(*(v24 + 8), (v12 + 2 * (v10 - v21)), v21);
            ++v21;
          }

          while (v21 < v20 && !v9);
          v16 = a3;
          if (v9)
          {
LABEL_16:
            std::__allocate_at_least[abi:se200100]<std::allocator<std::u16string_view>>(1uLL);
          }
        }

LABEL_21:
        if (++v14 == v34)
        {
          goto LABEL_42;
        }
      }
    }

    v16 = a3;
LABEL_42:
    if ((*(v35 + 12) & 1) == 0)
    {
      v25 = npc<std::vector<int>>(v32);
      v26 = npc<std::vector<int>>(v25);
      std::vector<int>::__insert_with_size[abi:se200100]<std::__wrap_iter<int *>,std::__wrap_iter<int *>>(v26, *(v26 + 8), 0, 0, 0);
      v27 = npc<morphun::tokenizer::locale::fi::FiSegment>(*v35);
      v28 = *(v27 + 16);
      if (v28 < v36)
      {
        std::__throw_out_of_range[abi:se200100]("string_view::substr");
      }

      if (!v16)
      {
        v29 = v28 - v36;
        v30 = (*(v27 + 8) + 2 * v36);
        if (morphun::tokenizer::locale::fi::FiSuffixSplit::isInNotNominative(*v35, v30, v29))
        {
          morphun::tokenizer::locale::fi::FiSuffixSplit::addSuffixInfo(v30, v29, v32, v36 + v33);
        }
      }
    }

    v31 = *MEMORY[0x1E69E9840];
  }
}

void sub_1BE63CF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  MEMORY[0x1BFB49160](v19, 0x1020C4062D53EE8);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::KkGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::KkGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, "c");
  operator new();
}

void sub_1BE63D184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

void morphun::lang::features::LanguageGrammarFeatures_Feature::getValue(morphun::lang::features::LanguageGrammarFeatures_Feature *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
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

void morphun::lang::features::LanguageGrammarFeatures_Feature::~LanguageGrammarFeatures_Feature(morphun::lang::features::LanguageGrammarFeatures_Feature *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::lang::features::LanguageGrammarFeatures_Feature::~LanguageGrammarFeatures_Feature(morphun::lang::features::LanguageGrammarFeatures_Feature *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  std::__tree<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::destroy(*(this + 5));
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t morphun::lang::features::LanguageGrammarFeatures_Feature::LanguageGrammarFeatures_Feature(uint64_t a1, uint64_t *a2, __int128 *a3, void *a4)
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

  std::map<std::basic_string<char16_t>,std::basic_string<char16_t>>::map[abi:se200100]((a1 + 32), a4);
  return a1;
}

void sub_1BE63D450(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::lang::features::LanguageGrammarFeatures_Feature::LanguageGrammarFeatures_Feature(uint64_t a1, __int128 *a2, void *a3)
{
  *a1 = &unk_1F3CD9458;
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

  std::map<std::basic_string<char16_t>,std::basic_string<char16_t>>::map[abi:se200100]((a1 + 32), a3);
  return a1;
}

void sub_1BE63D4F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void virtual thunk tomorphun::lang::features::LanguageGrammarFeatures_Feature::~LanguageGrammarFeatures_Feature(morphun::lang::features::LanguageGrammarFeatures_Feature *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void morphun::dialog::NumberConcept::asDigits(uint64_t a1@<X0>, uint64_t a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  std::operator+<char16_t>(__p, L"%digits-", a2);
  morphun::dialog::NumberConcept::format(a1, __p, a3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BE63D600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::NumberConcept::format(uint64_t a1@<X0>, uint64_t *a2@<X2>, std::basic_string<char16_t> *a3@<X8>)
{
  morphun::dialog::NumberConcept::createRuleBasedNumberFormat(a1, &v13);
  if ((*(a2 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_6;
    }

LABEL_13:
    morphun::dialog::NumberConcept::format(a1, &v13, a3);
    goto LABEL_14;
  }

  if (!a2[1])
  {
    goto LABEL_13;
  }

  v6 = *a2;
LABEL_6:
  v15 = 0;
  unum_setTextAttribute();
  v7 = v15;
  if (v15 >= 1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::ICUException::ICUException(exception, v7);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = *(a1 + 8);
    if (v8 != 1)
    {
      v10 = *(a1 + 8);
    }

    morphun::dialog::NumberConcept::formatDouble(&v13, a3);
  }

  else
  {
    v11 = *(a1 + 8);
    morphun::dialog::NumberConcept::formatInt64(&v13, a3);
  }

LABEL_14:
  if (v14 == 1)
  {
    unum_close();
  }
}

void sub_1BE63D8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  __cxa_end_catch();
  icu4cxx::NumberFormat::~NumberFormat((v35 - 72));
  _Unwind_Resume(a1);
}

icu4cxx::NumberFormat *morphun::dialog::NumberConcept::createRuleBasedNumberFormat@<X0>(uint64_t a1@<X0>, icu4cxx::NumberFormat *a2@<X8>)
{
  if (*(a1 + 151) < 0)
  {
    v4 = *(a1 + 128);
  }

  icu4cxx::NumberFormat::NumberFormat(a2);
  return morphun::dialog::NumberConcept::configure(a1, a2);
}

void morphun::dialog::NumberConcept::formatInt64(morphun::dialog::NumberConcept *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  std::basic_string<char16_t>::resize(a2, 0x14uLL, 0);
  v5 = *this;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = a2->__r_.__value_.__r.__words[0];
  }

  v7 = unum_formatInt64();
  v8 = v7;
  v9 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  LOBYTE(v10) = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = a2->__r_.__value_.__r.__words[1];
  }

  if (v7 != v9)
  {
    std::basic_string<char16_t>::resize(a2, v7, 0);
    LOBYTE(v10) = *(&a2->__r_.__value_.__s + 23);
  }

  v10 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = a2->__r_.__value_.__r.__words[1];
  }

  if (v8 != v10)
  {
    std::basic_string<char16_t>::resize(a2, v8, 0);
  }
}

void sub_1BE63DB38(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::NumberConcept::formatDouble(morphun::dialog::NumberConcept *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  std::basic_string<char16_t>::resize(a2, 0x14uLL, 0);
  v6 = *this;
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = a2->__r_.__value_.__r.__words[0];
  }

  v8 = unum_formatDouble();
  v9 = v8;
  v10 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  LOBYTE(v11) = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = a2->__r_.__value_.__r.__words[1];
  }

  if (v8 != v10)
  {
    std::basic_string<char16_t>::resize(a2, v8, 0);
    LOBYTE(v11) = *(&a2->__r_.__value_.__s + 23);
  }

  v11 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = a2->__r_.__value_.__r.__words[1];
  }

  if (v9 != v11)
  {
    std::basic_string<char16_t>::resize(a2, v9, 0);
  }
}

void sub_1BE63DCC8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::NumberConcept::format(morphun::dialog::NumberConcept *this@<X0>, const icu4cxx::NumberFormat *a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(this + 1);
    if (v4 != 1)
    {
      v6 = *(this + 1);
    }

    morphun::dialog::NumberConcept::formatDouble(a2, a3);
  }

  else
  {
    v7 = *(this + 1);
    morphun::dialog::NumberConcept::formatInt64(a2, a3);
  }
}

uint64_t icu4cxx::NumberFormat::NumberFormat(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *a1 = unum_open();
  return a1;
}

icu4cxx::NumberFormat *morphun::dialog::NumberConcept::configure(morphun::dialog::NumberConcept *this, icu4cxx::NumberFormat *a2)
{
  if ((*(this + 70) & 0x80000000) != 0)
  {
    npc<icu4cxx::NumberFormat>(a2);
    v6 = *a2;
    unum_getTextAttribute();
  }

  else
  {
    npc<icu4cxx::NumberFormat>(a2);
    v4 = *(this + 70);
    v5 = *a2;
    unum_setAttribute();
  }

  if ((*(this + 71) & 0x80000000) == 0)
  {
    v7 = *a2;
    unum_setAttribute();
  }

  if ((*(this + 72) & 0x80000000) == 0)
  {
    v8 = *a2;
    unum_setAttribute();
  }

  if ((*(this + 73) & 0x80000000) == 0)
  {
    v9 = *a2;
    unum_setAttribute();
  }

  if ((*(this + 74) & 0x80000000) == 0)
  {
    v10 = *a2;
    unum_setAttribute();
  }

  v11 = *a2;
  if ((*(this + 75) & 0x80000000) != 0)
  {
    unum_getTextAttribute();
  }

  else
  {
    unum_setAttribute();
  }

  return a2;
}

uint64_t npc<icu4cxx::NumberFormat>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::dialog::NumberConcept::getAsOrdinalDigits(morphun::dialog::NumberConcept *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"%digits-ordinal");
  morphun::dialog::NumberConcept::format(this, __p, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BE63DFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::NumberConcept::getAsDigits(morphun::dialog::NumberConcept *this@<X0>, uint64_t a2@<X8>)
{
  morphun::dialog::NumberConcept::createSimpleNumberFormat(this, (this + 152), &v105);
  morphun::dialog::NumberConcept::format(this, &v105, &v106);
  if (LOBYTE(v105.__r_.__value_.__r.__words[1]) == 1)
  {
    v4 = unum_close();
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v105, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v105 = v106;
  }

  v5 = morphun::util::LocaleUtils::AUSTRIA(v4);
  v6 = (this + 80);
  v7 = *(v5 + 79);
  if (v7 >= 0)
  {
    v8 = *(v5 + 79);
  }

  else
  {
    v8 = *(v5 + 64);
  }

  v9 = *(this + 103);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(this + 11);
  }

  if (v8 == v9)
  {
    v13 = *(v5 + 56);
    v11 = (v5 + 56);
    v12 = v13;
    if (v7 < 0)
    {
      v11 = v12;
    }

    v14 = *v6;
    v15 = v10 >= 0 ? (this + 80) : *v6;
    v5 = memcmp(v11, v15, v8);
    if (!v5)
    {
      v44 = morphun::util::LocaleUtils::AUSTRIA(v5);
      v45 = *(this + 151);
      if (v45 >= 0)
      {
        v46 = *(this + 151);
      }

      else
      {
        v46 = *(this + 17);
      }

      v47 = *(v44 + 127);
      v48 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v47 = *(v44 + 112);
      }

      if (v46 == v47)
      {
        v49 = v45 >= 0 ? (this + 128) : *(this + 16);
        v52 = *(v44 + 104);
        v50 = v44 + 104;
        v51 = v52;
        v53 = (v48 >= 0 ? v50 : v51);
        v54 = memcmp(v49, v53, v46);
        if (!v54)
        {
          v55 = morphun::util::LocaleUtils::GERMANY(v54);
          morphun::dialog::NumberConcept::createSimpleNumberFormat(this, v55, &v102);
          morphun::dialog::NumberConcept::format(this, &v102, &__p);
          if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v105.__r_.__value_.__l.__data_);
          }

          v105 = __p;
          *(&__p.__r_.__value_.__s + 23) = 0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if (v103 == 1)
          {
            goto LABEL_163;
          }
        }
      }

      goto LABEL_167;
    }
  }

  v16 = morphun::util::LocaleUtils::SWITZERLAND_GERMAN(v5);
  v17 = *(v16 + 79);
  if (v17 >= 0)
  {
    v18 = *(v16 + 79);
  }

  else
  {
    v18 = *(v16 + 64);
  }

  v19 = *(this + 103);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(this + 11);
  }

  if (v18 == v19)
  {
    v23 = *(v16 + 56);
    v21 = (v16 + 56);
    v22 = v23;
    if (v17 < 0)
    {
      v21 = v22;
    }

    v24 = *v6;
    v25 = v20 >= 0 ? (this + 80) : *v6;
    v16 = memcmp(v21, v25, v18);
    if (!v16)
    {
      v56 = morphun::util::LocaleUtils::SWITZERLAND_GERMAN(v16);
      v57 = *(this + 151);
      if (v57 >= 0)
      {
        v58 = *(this + 151);
      }

      else
      {
        v58 = *(this + 17);
      }

      v59 = *(v56 + 127);
      v60 = v59;
      if ((v59 & 0x80u) != 0)
      {
        v59 = *(v56 + 112);
      }

      if (v58 == v59)
      {
        v61 = v57 >= 0 ? (this + 128) : *(this + 16);
        v64 = *(v56 + 104);
        v62 = v56 + 104;
        v63 = v64;
        v65 = (v60 >= 0 ? v62 : v63);
        v56 = memcmp(v61, v65, v58);
        if (!v56)
        {
          v97 = morphun::util::LocaleUtils::GERMANY(v56);
          morphun::dialog::NumberConcept::createSimpleNumberFormat(this, v97, &v102);
          morphun::dialog::NumberConcept::format(this, &v102, &__p);
          if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v105.__r_.__value_.__l.__data_);
          }

          v105 = __p;
          *(&__p.__r_.__value_.__s + 23) = 0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if (v103 == 1)
          {
            goto LABEL_163;
          }

          goto LABEL_167;
        }
      }

      v66 = morphun::util::LocaleUtils::SWITZERLAND_FRENCH(v56);
      v67 = *(this + 151);
      if (v67 >= 0)
      {
        v68 = *(this + 151);
      }

      else
      {
        v68 = *(this + 17);
      }

      v69 = *(v66 + 127);
      v70 = v69;
      if ((v69 & 0x80u) != 0)
      {
        v69 = *(v66 + 112);
      }

      if (v68 != v69 || (v67 >= 0 ? (v71 = this + 128) : (v71 = *(this + 16)), (v74 = *(v66 + 104), v72 = (v66 + 104), v73 = v74, v70 >= 0) ? (v75 = v72) : (v75 = v73), v66 = memcmp(v71, v75, v68), v66))
      {
        v76 = morphun::util::LocaleUtils::SWITZERLAND_ITALIAN(v66);
        v77 = *(this + 151);
        if (v77 >= 0)
        {
          v78 = *(this + 151);
        }

        else
        {
          v78 = *(this + 17);
        }

        v79 = *(v76 + 127);
        v80 = v79;
        if ((v79 & 0x80u) != 0)
        {
          v79 = *(v76 + 112);
        }

        if (v78 == v79 && (v77 >= 0 ? (v81 = this + 128) : (v81 = *(this + 16)), (v84 = *(v76 + 104), v82 = (v76 + 104), v83 = v84, v80 >= 0) ? (v85 = v82) : (v85 = v83), v86 = memcmp(v81, v85, v78), !v86))
        {
          v101 = morphun::util::LocaleUtils::ITALY(v86);
          morphun::dialog::NumberConcept::createSimpleNumberFormat(this, v101, &v102);
          morphun::dialog::NumberConcept::format(this, &v102, &__p);
          if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v105.__r_.__value_.__l.__data_);
          }

          v105 = __p;
          *(&__p.__r_.__value_.__s + 23) = 0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if (v103 == 1)
          {
            goto LABEL_163;
          }
        }

        else
        {
          morphun::dialog::NumberConcept::createSimpleNumberFormat(this, (this + 24), &v102);
          morphun::dialog::NumberConcept::format(this, &v102, &__p);
          if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v105.__r_.__value_.__l.__data_);
          }

          v105 = __p;
          *(&__p.__r_.__value_.__s + 23) = 0;
          __p.__r_.__value_.__s.__data_[0] = 0;
          if (v103 == 1)
          {
            goto LABEL_163;
          }
        }

        goto LABEL_167;
      }

      if (*(this + 4) == 1)
      {
        v98 = *(this + 1);
      }

      else
      {
        v98 = *(this + 1);
      }

      if (v98 < 0)
      {
        v98 = -v98;
      }

      if (v98 <= 0x3B)
      {
        v99 = morphun::util::LocaleUtils::FRANCE(v66);
        morphun::dialog::NumberConcept::createSimpleNumberFormat(this, v99, &v102);
        morphun::dialog::NumberConcept::format(this, &v102, &__p);
        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }

        v105 = __p;
        *(&__p.__r_.__value_.__s + 23) = 0;
        __p.__r_.__value_.__s.__data_[0] = 0;
        if (v103 == 1)
        {
          goto LABEL_163;
        }

        goto LABEL_167;
      }

      goto LABEL_164;
    }
  }

  v26 = morphun::util::LocaleUtils::BELGIUM_FRENCH(v16);
  v27 = *(v26 + 79);
  if (v27 >= 0)
  {
    v28 = *(v26 + 79);
  }

  else
  {
    v28 = *(v26 + 64);
  }

  v29 = *(this + 103);
  v30 = v29;
  if ((v29 & 0x80u) != 0)
  {
    v29 = *(this + 11);
  }

  if (v28 == v29)
  {
    v33 = *(v26 + 56);
    v31 = (v26 + 56);
    v32 = v33;
    if (v27 < 0)
    {
      v31 = v32;
    }

    v34 = *v6;
    v35 = v30 >= 0 ? (this + 80) : *v6;
    v36 = memcmp(v31, v35, v28);
    if (!v36)
    {
      v87 = morphun::util::LocaleUtils::BELGIUM_FRENCH(v36);
      v88 = *(this + 151);
      if (v88 >= 0)
      {
        v89 = *(this + 151);
      }

      else
      {
        v89 = *(this + 17);
      }

      v90 = *(v87 + 127);
      v91 = v90;
      if ((v90 & 0x80u) != 0)
      {
        v90 = *(v87 + 112);
      }

      if (v89 != v90 || (v88 >= 0 ? (v92 = this + 128) : (v92 = *(this + 16)), (v95 = *(v87 + 104), v93 = (v87 + 104), v94 = v95, v91 >= 0) ? (v96 = v93) : (v96 = v94), memcmp(v92, v96, v89)))
      {
        morphun::dialog::NumberConcept::createSimpleNumberFormat(this, (this + 24), &v102);
        morphun::dialog::NumberConcept::format(this, &v102, &__p);
        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }

        v105 = __p;
        *(&__p.__r_.__value_.__s + 23) = 0;
        __p.__r_.__value_.__s.__data_[0] = 0;
        if (v103 == 1)
        {
          goto LABEL_163;
        }

        goto LABEL_167;
      }

      if (*(this + 4) == 1)
      {
        v100 = *(this + 1);
      }

      else
      {
        v100 = *(this + 1);
      }

      if (v100 < 0)
      {
        v100 = -v100;
      }

      if (v100 <= 0x3B)
      {
        morphun::dialog::NumberConcept::createSimpleNumberFormat(this, (this + 24), &v102);
        morphun::dialog::NumberConcept::format(this, &v102, &__p);
        if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v105.__r_.__value_.__l.__data_);
        }

        v105 = __p;
        *(&__p.__r_.__value_.__s + 23) = 0;
        __p.__r_.__value_.__s.__data_[0] = 0;
        if (v103 == 1)
        {
          goto LABEL_163;
        }

        goto LABEL_167;
      }

LABEL_164:
      (*(*this + 176))(&__p, this);
      if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v105.__r_.__value_.__l.__data_);
      }

      v105 = __p;
      goto LABEL_167;
    }
  }

  v37 = *(this + 151);
  if (v37 >= 0)
  {
    v38 = *(this + 151);
  }

  else
  {
    v38 = *(this + 17);
  }

  v39 = *(this + 279);
  v40 = v39;
  if ((v39 & 0x80u) != 0)
  {
    v39 = *(this + 33);
  }

  if (v38 != v39 || (v37 >= 0 ? (v41 = this + 128) : (v41 = *(this + 16)), (v42 = *(this + 32), v40 >= 0) ? (v43 = this + 256) : (v43 = *(this + 32)), memcmp(v41, v43, v38)))
  {
    morphun::dialog::NumberConcept::createSimpleNumberFormat(this, (this + 24), &v102);
    morphun::dialog::NumberConcept::format(this, &v102, &__p);
    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }

    v105 = __p;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    if (v103 == 1)
    {
LABEL_163:
      unum_close();
    }
  }

LABEL_167:
  morphun::dialog::NumberConcept::postProcess(&v106, &__p);
  morphun::dialog::SpeakableString::SpeakableString(a2, &__p, &v105);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }
}

void sub_1BE63E7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  icu4cxx::NumberFormat::~NumberFormat(&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(a1);
}

icu4cxx::NumberFormat *morphun::dialog::NumberConcept::createSimpleNumberFormat@<X0>(morphun::dialog::NumberConcept *this@<X0>, const morphun::util::ULocale *a2@<X1>, icu4cxx::NumberFormat *a3@<X8>)
{
  v5 = *(a2 + 13);
  *(a2 + 127);
  icu4cxx::NumberFormat::NumberFormat(a3);
  return morphun::dialog::NumberConcept::configure(this, a3);
}

void morphun::dialog::NumberConcept::postProcess(uint64_t a1@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  if (std::basic_string<char16_t>::starts_with[abi:se200100](a1, L"."))
  {
    v5 = *(a1 + 23) >= 0 ? *(a1 + 23) : *(a1 + 8);
    if (v5 >= 2)
    {
      std::basic_string<char16_t>::basic_string(&v10, a1, 1uLL, 0xFFFFFFFFFFFFFFFFLL, v4);
      std::basic_string<char16_t>::insert(&v10, "\v .", 3, v6);
      *&a2->__r_.__value_.__l.__data_ = *&v10.__r_.__value_.__l.__data_;
      v7 = v10.__r_.__value_.__r.__words[2];
LABEL_9:
      a2->__r_.__value_.__r.__words[2] = v7;
      return;
    }
  }

  if ((*(a1 + 23) & 0x80) == 0)
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    v7 = *(a1 + 16);
    goto LABEL_9;
  }

  v8 = *a1;
  v9 = *(a1 + 8);

  std::basic_string<char16_t>::__init_copy_ctor_external(a2, v8, v9);
}

void sub_1BE63E9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::NumberConcept::asSpokenWords(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  morphun::dialog::NumberConcept::createSimpleNumberFormat(a1, (a1 + 152), &v8);
  morphun::dialog::NumberConcept::format(a1, &v8, &v9);
  if (LOBYTE(v8.__r_.__value_.__r.__words[1]) == 1)
  {
    unum_close();
  }

  morphun::dialog::NumberConcept::postProcess(&v9, &v8);
  (*(*a1 + 184))(__p, a1, a2);
  morphun::dialog::SpeakableString::SpeakableString(a3, &v8, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1BE63EAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  _Unwind_Resume(exception_object);
}

void morphun::dialog::NumberConcept::getAsSpokenWords(morphun::dialog::NumberConcept *this@<X0>, uint64_t a2@<X8>)
{
  morphun::dialog::NumberConcept::createSimpleNumberFormat(this, (this + 152), &v6);
  morphun::dialog::NumberConcept::format(this, &v6, &v7);
  if (LOBYTE(v6.__r_.__value_.__r.__words[1]) == 1)
  {
    unum_close();
  }

  morphun::dialog::NumberConcept::postProcess(&v7, &v6);
  (*(*this + 176))(__p, this);
  morphun::dialog::SpeakableString::SpeakableString(a2, &v6, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_1BE63EC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::NumberConcept::asWords(uint64_t a1@<X0>, uint64_t a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  std::operator+<char16_t>(__p, "%", a2);
  morphun::dialog::NumberConcept::format(a1, __p, a3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BE63ECEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dialog::NumberConcept::getAsWords(morphun::dialog::NumberConcept *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v3 = 0;
  morphun::dialog::NumberConcept::format(this, __p, a2);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BE63ED50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL morphun::dialog::NumberConcept::getIsNegative(morphun::dialog::NumberConcept *this)
{
  v1 = *(this + 1);
  if (*(this + 4) != 1)
  {
    v1 = *(this + 1);
  }

  return v1 < 0.0;
}

morphun::dialog::NumberConcept *morphun::dialog::NumberConcept::NumberConcept(morphun::dialog::NumberConcept *this, const morphun::dialog::NumberConcept *a2)
{
  *this = &unk_1F3CD9010;
  *(this + 8) = *(a2 + 8);
  morphun::util::ULocale::ULocale(this + 24, a2 + 24);
  morphun::util::ULocale::ULocale(this + 152, a2 + 152);
  *(this + 36) = -1;
  *(this + 37) = -1;
  *(this + 35) = -1;
  *(this + 280) = *(a2 + 280);
  *(this + 37) = *(a2 + 37);
  return this;
}

uint64_t morphun::dialog::NumberConcept::getMaximumFractionDigits(morphun::dialog::NumberConcept *this)
{
  v1 = *(this + 70);
  if (v1 < 0)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t morphun::dialog::NumberConcept::maxFractionDigitsAboveOne(morphun::dialog::NumberConcept *this, uint64_t a2)
{
  v4 = *(this + 1);
  if (*(this + 4) != 1)
  {
    v4 = *(this + 1);
  }

  v5 = fabs(v4);
  if (v5 > 1.0e-16)
  {
    v6 = ceil(log10(v5));
    v7 = -v6;
    if (v6 >= 0.0)
    {
      v7 = 0;
    }

    a2 = (v7 + a2);
  }

  v8 = *(*this + 48);

  return v8(this, a2);
}

void morphun::dialog::NumberConcept::getAbsolute(morphun::dialog::NumberConcept *this)
{
  if ((*(*this + 144))(this))
  {
    v2 = *(this + 4);
    operator new();
  }

  morphun::dialog::NumberConcept::getMutableVersion(this);
}

morphun::dialog::NumberConcept *morphun::dialog::NumberConcept::NumberConcept(morphun::dialog::NumberConcept *this, uint64_t a2, const morphun::util::ULocale *a3, const morphun::util::ULocale *a4)
{
  *this = &unk_1F3CD9010;
  *(this + 1) = 0;
  *(this + 4) = 0;
  morphun::util::ULocale::ULocale(this + 24, a3);
  morphun::util::ULocale::ULocale(this + 152, a4);
  *(this + 36) = -1;
  *(this + 37) = -1;
  *(this + 35) = -1;
  *(this + 1) = a2;
  *(this + 4) = 0;
  return this;
}

morphun::dialog::NumberConcept *morphun::dialog::NumberConcept::NumberConcept(morphun::dialog::NumberConcept *this, double a2, const morphun::util::ULocale *a3, const morphun::util::ULocale *a4)
{
  *this = &unk_1F3CD9010;
  *(this + 1) = 0;
  *(this + 4) = 0;
  morphun::util::ULocale::ULocale(this + 24, a3);
  morphun::util::ULocale::ULocale(this + 152, a4);
  *(this + 36) = -1;
  *(this + 37) = -1;
  *(this + 35) = -1;
  *(this + 1) = a2;
  *(this + 4) = 1;
  return this;
}

void morphun::dialog::NumberConcept::~NumberConcept(void **this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::dialog::NumberConcept::~NumberConcept(void **this, void **a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 7)) = a2[1];
  *(this + *(*this - 5)) = a2[2];
}

void morphun::dialog::NumberConcept::toString(const char **this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  (*(*this + 26))(&v14);
  std::operator+<char16_t>(&v16, L"NumberConcept{", &v15);
  std::basic_string<char16_t>::append(&v16, ",", 1uLL);
  v17 = v16;
  memset(&v16, 0, sizeof(v16));
  v4 = *(this + 151);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = this[16];
    v4 = this[17];
  }

  else
  {
    v5 = (this + 16);
  }

  morphun::util::StringViewUtils::to_u16string(v5, v4, &v13);
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

  std::basic_string<char16_t>::append(&v17, v6, size);
  v18 = v17;
  memset(&v17, 0, sizeof(v17));
  std::basic_string<char16_t>::append(&v18, ",", 1uLL);
  v19 = v18;
  memset(&v18, 0, sizeof(v18));
  v8 = *(this + 279);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = this[32];
    v8 = this[33];
  }

  else
  {
    v9 = (this + 32);
  }

  morphun::util::StringViewUtils::to_u16string(v9, v8, &__p);
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
    v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&v19, p_p, v11);
  v20 = v19;
  memset(&v19, 0, sizeof(v19));
  std::basic_string<char16_t>::append(&v20, "}", 1uLL);
  *a2 = v20;
  memset(&v20, 0, sizeof(v20));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1BE63F774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (*(v37 - 41) < 0)
  {
    operator delete(*(v37 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 73) < 0)
  {
    operator delete(*(v37 - 96));
  }

  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

morphun::dialog::NumberConcept *morphun::dialog::NumberConcept::NumberConcept(morphun::dialog::NumberConcept *this, double a2, const morphun::util::ULocale *a3, const morphun::util::ULocale *a4, uint64_t a5)
{
  v8 = *a3;
  *this = *a3;
  *(this + *(v8 - 56)) = *(a3 + 1);
  *(this + *(*this - 40)) = *(a3 + 2);
  *(this + 1) = 0;
  *(this + 4) = 0;
  morphun::util::ULocale::ULocale(this + 24, a4);
  morphun::util::ULocale::ULocale(this + 152, a5);
  *(this + 36) = -1;
  *(this + 37) = -1;
  *(this + 35) = -1;
  *(this + 1) = a2;
  *(this + 4) = 1;
  return this;
}

morphun::dialog::NumberConcept *morphun::dialog::NumberConcept::NumberConcept(morphun::dialog::NumberConcept *this, uint64_t *a2, const morphun::util::ULocale *a3, const morphun::util::ULocale *a4, uint64_t a5)
{
  v8 = *a2;
  *this = *a2;
  *(this + *(v8 - 56)) = a2[1];
  *(this + *(*this - 40)) = a2[2];
  *(this + 1) = 0;
  *(this + 4) = 0;
  morphun::util::ULocale::ULocale(this + 24, a4);
  morphun::util::ULocale::ULocale(this + 152, a5);
  *(this + 36) = -1;
  *(this + 37) = -1;
  *(this + 35) = -1;
  *(this + 1) = a3;
  *(this + 4) = 0;
  return this;
}

morphun::dialog::NumberConcept *morphun::dialog::NumberConcept::NumberConcept(morphun::dialog::NumberConcept *this, const morphun::dialog::NumberConcept *a2, uint64_t a3)
{
  v5 = *a2;
  *this = *a2;
  *(this + *(v5 - 56)) = *(a2 + 1);
  *(this + *(*this - 40)) = *(a2 + 2);
  *(this + 8) = *(a3 + 8);
  morphun::util::ULocale::ULocale(this + 24, a3 + 24);
  morphun::util::ULocale::ULocale(this + 152, a3 + 152);
  *(this + 36) = -1;
  *(this + 37) = -1;
  *(this + 35) = -1;
  *(this + 280) = *(a3 + 280);
  *(this + 37) = *(a3 + 296);
  return this;
}

double morphun::dialog::NumberConcept::copySettings(morphun::dialog::NumberConcept *this, const morphun::dialog::NumberConcept *a2)
{
  *(this + 280) = *(a2 + 280);
  result = *(a2 + 37);
  *(this + 37) = result;
  return result;
}

void virtual thunk tomorphun::dialog::NumberConcept::~NumberConcept(morphun::dialog::NumberConcept *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

void virtual thunk tomorphun::dialog::NumberConcept::~NumberConcept(void *a1)
{
}

{

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::dialog::NumberConcept::longValue(_DWORD *a1)
{
  v1 = *a1;
  if (a1[2] == 1)
  {
    return *a1;
  }

  else
  {
    return *a1;
  }
}

double morphun::dialog::NumberConcept::doubleValue(uint64_t a1)
{
  result = *a1;
  if (*(a1 + 8) != 1)
  {
    return *a1;
  }

  return result;
}

uint64_t morphun::dialog::NumberConcept::longValue(morphun::dialog::NumberConcept *this)
{
  if (*(this + 4) == 1)
  {
    return *(this + 1);
  }

  else
  {
    return *(this + 1);
  }
}

double morphun::dialog::NumberConcept::doubleValue(morphun::dialog::NumberConcept *this)
{
  result = *(this + 1);
  if (*(this + 4) != 1)
  {
    return *(this + 1);
  }

  return result;
}

BOOL morphun::dialog::NumberConcept::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 8);
  v7 = v6;
  if (v5 != 1)
  {
    v7 = *(a2 + 8);
  }

  if (v4 != v7)
  {
    return 0;
  }

  if (v3 != 1)
  {
    v2 = *(a1 + 8);
  }

  if (v5 != 1)
  {
    v6 = *(a2 + 8);
  }

  return v2 == v6;
}

uint64_t morphun::dialog::NumberConcept::hashCode(morphun::dialog::NumberConcept *this)
{
  if (*(this + 4) == 1)
  {
    return *(this + 1);
  }

  else
  {
    return *(this + 1);
  }
}

uint64_t morphun::dialog::NumberConcept::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 16) != 1)
  {
    return *(a2 + 8);
  }

  return v2;
}

BOOL morphun::dialog::NumberConcept::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a1 + 16) != 1)
  {
    v2 = *(a1 + 8);
  }

  v3 = *(a2 + 8);
  if (*(a2 + 16) != 1)
  {
    v3 = *(a2 + 8);
  }

  return v2 < v3;
}

uint64_t morphun::grammar::synthesis::ArGrammarSynthesizer_ArDisplayFunction::getDisplayValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 8) != *(a2 + 16))
  {
    memset(v28, 0, sizeof(v28));
    memset(v27, 0, sizeof(v27));
    memset(v26, 0, sizeof(v26));
    memset(v25, 0, sizeof(v25));
    memset(v24, 0, sizeof(v24));
    memset(v23, 0, sizeof(v23));
    v5 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, *(a1 + 240));
    v6 = a3 + 8;
    if (a3 + 8 != v5)
    {
      std::basic_string<char16_t>::operator=(v23, (v5 + 104));
    }

    v7 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, *(a1 + 248));
    if (v6 != v7)
    {
      std::basic_string<char16_t>::operator=(&v23[1], (v7 + 104));
    }

    v8 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, *(a1 + 256));
    if (v6 != v8)
    {
      std::basic_string<char16_t>::operator=(v24, (v8 + 104));
    }

    v9 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, *(a1 + 264));
    if (v6 != v9)
    {
      std::basic_string<char16_t>::operator=(&v24[1], (v9 + 104));
    }

    v10 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, *(a1 + 272));
    if (v6 != v10)
    {
      std::basic_string<char16_t>::operator=(v25, (v10 + 104));
    }

    v11 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, *(a1 + 280));
    if (v6 != v11)
    {
      std::basic_string<char16_t>::operator=(&v25[1], (v11 + 104));
    }

    v12 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, *(a1 + 288));
    if (v6 != v12)
    {
      std::basic_string<char16_t>::operator=(v26, (v12 + 104));
    }

    v13 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, *(a1 + 304));
    if (v6 != v13)
    {
      std::basic_string<char16_t>::operator=(&v26[1], (v13 + 104));
    }

    v14 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, *(a1 + 312));
    if (v6 != v14)
    {
      std::basic_string<char16_t>::operator=(v27, (v14 + 104));
    }

    v15 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, *(a1 + 320));
    if (v6 != v15)
    {
      std::basic_string<char16_t>::operator=(&v27[1], (v15 + 104));
    }

    v16 = *(a1 + 296);
    v17 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, v16);
    if (v6 != v17)
    {
      std::basic_string<char16_t>::operator=(v28, (v17 + 104));
      v16 = *(a1 + 296);
    }

    v18 = *(a1 + 248);
    *&v29[0] = v16;
    *(&v29[0] + 1) = v18;
    v29[1] = vextq_s8(*(a1 + 264), *(a1 + 264), 8uLL);
    __p[1] = 0;
    v22 = 0;
    __p[0] = 0;
    std::vector<morphun::dialog::SemanticFeature const*>::__init_with_size[abi:se200100]<morphun::dialog::SemanticFeature const* const*,morphun::dialog::SemanticFeature const* const*>(__p, v29, v30, 4uLL);
  }

  v19 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1BE640CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  morphun::grammar::synthesis::ArGrammarSynthesizer_ArDisplayFunction::InflectionConstraints::~InflectionConstraints(&a38);
  _Unwind_Resume(a1);
}

BOOL morphun::grammar::synthesis::anonymous namespace::hasFeature(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v5 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a2, a3);
  if (a2 + 8 == v5)
  {
    return 0;
  }

  v6 = *(v5 + 127);
  v7 = *(v5 + 112);
  if (v6 >= 0)
  {
    v7 = *(v5 + 127);
  }

  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 1);
  }

  if (v7 != v8)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v6 >= 0)
  {
    v11 = (v5 + 104);
  }

  else
  {
    v11 = *(v5 + 104);
  }

  v12 = v7 - 1;
  do
  {
    v14 = *v11++;
    v13 = v14;
    v16 = *v10++;
    v15 = v16;
    v18 = v12-- != 0;
    result = v15 == v13;
  }

  while (v15 == v13 && v18);
  return result;
}

void morphun::grammar::synthesis::ArGrammarSynthesizer_ArDisplayFunction::lookupDefiniteArticle(std::basic_string<char16_t> *a1, uint64_t a2)
{
  morphun::util::StringUtils::trim(a2, __p);
  v4 = HIBYTE(v12);
  if (v12 < 0)
  {
    v4 = __p[1];
  }

  if (v4)
  {
    v5 = std::basic_string<char16_t>::starts_with[abi:se200100](__p, word_1BE7E4FB6);
    if (v5)
    {
      *&a1->__r_.__value_.__l.__data_ = *__p;
      a1->__r_.__value_.__r.__words[2] = v12;
      __p[1] = 0;
      v12 = 0;
      __p[0] = 0;
    }

    else
    {
      v9[0] = 0;
      v9[1] = 0;
      v10 = 0;
      v6 = morphun::lang::StringFilterUtil::ARABIC_SCRIPT(v5);
      v7 = __p;
      if (v12 < 0)
      {
        v7 = __p[0];
      }

      if (MEMORY[0x1BFB49A20](*v6, *v7))
      {
        HIBYTE(v10) = 2;
        LODWORD(v9[0]) = 105121319;
        v8 = 4;
      }

      else
      {
        HIBYTE(v10) = 4;
        v9[0] = 0xA0064006440627;
        v8 = 8;
      }

      *(v9 + v8) = 0;
      std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1, v9, __p);
    }
  }

  else if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a1, *a2, *(a2 + 8));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = *a2;
    a1->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BE641038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::ArGrammarSynthesizer_ArDisplayFunction::InflectionConstraints::~InflectionConstraints(void **this)
{
  v2 = this + 33;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v2);
  if (*(this + 263) < 0)
  {
    operator delete(this[30]);
  }

  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void morphun::grammar::synthesis::ArGrammarSynthesizer_ArDisplayFunction::performInflection(morphun::grammar::synthesis::GrammemeConstants *a1, uint64_t *a2, void **p_p, uint64_t a4, uint64_t a5)
{
  v11 = a2[48];
  v10 = a2[49];
  v92 = a2[50];
  memset(&v93, 0, sizeof(v93));
  v12 = *(a5 + 71);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a5 + 56);
  }

  if (v12)
  {
    v98 = &v93;
    std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(1uLL);
  }

  v13 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(a1);
  v14 = 0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
  if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_157;
  }

  v15 = 0x5555555555555556 * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3);
  if (v15 <= v14 + 1)
  {
    v15 = v14 + 1;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
  {
    v16 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v16 = v15;
  }

  v98 = &v93;
  if (v16)
  {
    std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v16);
  }

  __p = 0;
  v95 = 8 * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
  v96 = v95;
  v97 = 0;
  std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v95, v13);
  v17 = (v96 + 24);
  v18 = (v95 - (v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]));
  memcpy(v18, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]);
  v19 = v93.__r_.__value_.__r.__words[0];
  v20 = v93.__r_.__value_.__r.__words[2];
  v93.__r_.__value_.__r.__words[0] = v18;
  v93.__r_.__value_.__l.__size_ = v17;
  v93.__r_.__value_.__r.__words[2] = v97;
  v96 = v19;
  v97 = v20;
  __p = v19;
  v95 = v19;
  v21 = std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&__p);
  v93.__r_.__value_.__l.__size_ = v17;
  v22 = *(a5 + 143);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a5 + 128);
  }

  if (v22)
  {
    if (v17 >= v93.__r_.__value_.__r.__words[2])
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v93.__r_.__value_.__r.__words[0]) >> 3);
      if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_157;
      }

      v24 = 0x5555555555555556 * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3);
      if (v24 <= v23 + 1)
      {
        v24 = v23 + 1;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
      {
        v25 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v25 = v24;
      }

      v98 = &v93;
      if (v25)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v25);
      }

      __p = 0;
      v95 = 24 * v23;
      v96 = 24 * v23;
      v97 = 0;
      std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>((24 * v23), (a5 + 120));
      v17 = (v96 + 24);
      v26 = (v95 - (v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]));
      memcpy(v26, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]);
      v27 = v93.__r_.__value_.__r.__words[0];
      v28 = v93.__r_.__value_.__r.__words[2];
      v93.__r_.__value_.__r.__words[0] = v26;
      v93.__r_.__value_.__l.__size_ = v17;
      v93.__r_.__value_.__r.__words[2] = v97;
      v96 = v27;
      v97 = v28;
      __p = v27;
      v95 = v27;
      v21 = std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&__p);
    }

    else
    {
      v21 = std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v17++, (a5 + 120));
    }

    v93.__r_.__value_.__l.__size_ = v17;
  }

  v29 = *(a5 + 167);
  if ((v29 & 0x80u) != 0)
  {
    v29 = *(a5 + 152);
  }

  if (v29)
  {
    if (v17 >= v93.__r_.__value_.__r.__words[2])
    {
      v31 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v93.__r_.__value_.__r.__words[0]) >> 3);
      if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_157;
      }

      v32 = 0x5555555555555556 * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3);
      if (v32 <= v31 + 1)
      {
        v32 = v31 + 1;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
      {
        v33 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v33 = v32;
      }

      v98 = &v93;
      if (v33)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v33);
      }

      __p = 0;
      v95 = 24 * v31;
      v96 = 24 * v31;
      v97 = 0;
      std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>((24 * v31), (a5 + 144));
      v30 = v96 + 24;
      v34 = (v95 - (v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]));
      memcpy(v34, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]);
      v35 = v93.__r_.__value_.__r.__words[0];
      v36 = v93.__r_.__value_.__r.__words[2];
      v93.__r_.__value_.__r.__words[0] = v34;
      v93.__r_.__value_.__l.__size_ = v30;
      v93.__r_.__value_.__r.__words[2] = v97;
      v96 = v35;
      v97 = v36;
      __p = v35;
      v95 = v35;
      v21 = std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&__p);
    }

    else
    {
      v21 = std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v17, (a5 + 144));
      v30 = &v17[1];
    }

    v93.__r_.__value_.__l.__size_ = v30;
  }

  v37 = *(a5 + 191);
  if ((v37 & 0x80u) != 0)
  {
    v37 = *(a5 + 176);
  }

  if (v37)
  {
    v21 = morphun::grammar::synthesis::GrammemeConstants::DEFINITENESS_CONSTRUCT(v21);
    v38 = *(v21 + 23);
    v39 = v38;
    if ((v38 & 0x80u) != 0)
    {
      v38 = *(v21 + 8);
    }

    v40 = *(a5 + 191);
    v41 = v40;
    if ((v40 & 0x80u) != 0)
    {
      v40 = *(a5 + 176);
    }

    if (v38 == v40)
    {
      if (v38)
      {
        if (v41 >= 0)
        {
          v42 = (a5 + 168);
        }

        else
        {
          v42 = *(a5 + 168);
        }

        if (v39 >= 0)
        {
          v43 = v21;
        }

        else
        {
          v43 = *v21;
        }

        while (*v42 == *v43)
        {
          ++v43;
          ++v42;
          if (!--v38)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
LABEL_60:
        size = v93.__r_.__value_.__l.__size_;
        if (v93.__r_.__value_.__l.__size_ >= v93.__r_.__value_.__r.__words[2])
        {
          v46 = 0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
          if (v46 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_157;
          }

          v47 = 0x5555555555555556 * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3);
          if (v47 <= v46 + 1)
          {
            v47 = v46 + 1;
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
          {
            v48 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v48 = v47;
          }

          v98 = &v93;
          if (v48)
          {
            std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v48);
          }

          __p = 0;
          v95 = 8 * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
          v96 = v95;
          v97 = 0;
          std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v95, (a5 + 168));
          v45 = v96 + 24;
          v49 = (v95 - (v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]));
          memcpy(v49, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]);
          v50 = v93.__r_.__value_.__r.__words[0];
          v51 = v93.__r_.__value_.__r.__words[2];
          v93.__r_.__value_.__r.__words[0] = v49;
          v93.__r_.__value_.__l.__size_ = v45;
          v93.__r_.__value_.__r.__words[2] = v97;
          v96 = v50;
          v97 = v51;
          __p = v50;
          v95 = v50;
          v21 = std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&__p);
        }

        else
        {
          v21 = std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v93.__r_.__value_.__l.__size_, (a5 + 168));
          v45 = size + 24;
        }

        v93.__r_.__value_.__l.__size_ = v45;
      }
    }
  }

  v52 = v11 & a4;
  v53 = *(a5 + 23);
  if ((v53 & 0x80u) != 0)
  {
    v53 = *(a5 + 8);
  }

  if (v53)
  {
    v54 = v93.__r_.__value_.__l.__size_;
    if (v93.__r_.__value_.__l.__size_ < v93.__r_.__value_.__r.__words[2])
    {
      std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v93.__r_.__value_.__l.__size_, a5);
      v55 = v54 + 24;
LABEL_92:
      v93.__r_.__value_.__l.__size_ = v55;
      goto LABEL_93;
    }

    v58 = 0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
    if (v58 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_157;
    }

    v59 = 0x5555555555555556 * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3);
    if (v59 <= v58 + 1)
    {
      v59 = v58 + 1;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
    {
      v60 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v60 = v59;
    }

    v98 = &v93;
    if (v60)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v60);
    }

    __p = 0;
    v95 = 8 * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
    v96 = v95;
    v97 = 0;
    std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v95, a5);
LABEL_91:
    v55 = v96 + 24;
    v61 = (v95 - (v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]));
    memcpy(v61, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]);
    v62 = v93.__r_.__value_.__r.__words[0];
    v63 = v93.__r_.__value_.__r.__words[2];
    v93.__r_.__value_.__r.__words[0] = v61;
    v93.__r_.__value_.__l.__size_ = v55;
    v93.__r_.__value_.__r.__words[2] = v97;
    v96 = v62;
    v97 = v63;
    __p = v62;
    v95 = v62;
    std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&__p);
    goto LABEL_92;
  }

  if (v52 != v10 && v52 != v92)
  {
    v56 = (a5 + 240);
    v57 = *(a5 + 263);
    if (v57 < 0)
    {
      if (*(a5 + 248) != 4)
      {
LABEL_146:
        v86 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v21);
        v87 = v93.__r_.__value_.__l.__size_;
        if (v93.__r_.__value_.__l.__size_ < v93.__r_.__value_.__r.__words[2])
        {
          std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v93.__r_.__value_.__l.__size_, v86);
          v55 = v87 + 24;
          goto LABEL_92;
        }

        v88 = 0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
        if (v88 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_157;
        }

        v89 = 0x5555555555555556 * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3);
        if (v89 <= v88 + 1)
        {
          v89 = v88 + 1;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
        {
          v90 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v90 = v89;
        }

        v98 = &v93;
        if (v90)
        {
          std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v90);
        }

        __p = 0;
        v95 = 8 * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
        v96 = v95;
        v97 = 0;
        std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v95, v86);
        goto LABEL_91;
      }

      v56 = *v56;
    }

    else if (v57 != 4)
    {
      goto LABEL_146;
    }

    v85 = 0;
    while (*&aV_0[v85] == *(v56 + v85))
    {
      v85 += 2;
      if (v85 == 8)
      {
        goto LABEL_93;
      }
    }

    goto LABEL_146;
  }

LABEL_93:
  v64 = *(a5 + 119);
  if ((v64 & 0x80u) != 0)
  {
    v64 = *(a5 + 104);
  }

  if (!v64)
  {
    goto LABEL_108;
  }

  v65 = v93.__r_.__value_.__l.__size_;
  if (v93.__r_.__value_.__l.__size_ >= v93.__r_.__value_.__r.__words[2])
  {
    v67 = 0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
    if (v67 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v68 = 0x5555555555555556 * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3);
      if (v68 <= v67 + 1)
      {
        v68 = v67 + 1;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v93.__r_.__value_.__r.__words[2] - v93.__r_.__value_.__r.__words[0]) >> 3) >= 0x555555555555555)
      {
        v69 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v69 = v68;
      }

      v98 = &v93;
      if (v69)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v69);
      }

      __p = 0;
      v95 = 8 * ((v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]) >> 3);
      v96 = v95;
      v97 = 0;
      std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v95, (a5 + 96));
      v66 = v96 + 24;
      v70 = (v95 - (v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]));
      memcpy(v70, v93.__r_.__value_.__l.__data_, v93.__r_.__value_.__l.__size_ - v93.__r_.__value_.__r.__words[0]);
      v71 = v93.__r_.__value_.__r.__words[0];
      v72 = v93.__r_.__value_.__r.__words[2];
      v93.__r_.__value_.__r.__words[0] = v70;
      v93.__r_.__value_.__l.__size_ = v66;
      v93.__r_.__value_.__r.__words[2] = v97;
      v96 = v71;
      v97 = v72;
      __p = v71;
      v95 = v71;
      std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&__p);
      goto LABEL_107;
    }

LABEL_157:
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  std::construct_at[abi:se200100]<std::basic_string<char16_t>,std::basic_string<char16_t> const&,std::basic_string<char16_t>*>(v93.__r_.__value_.__l.__size_, (a5 + 96));
  v66 = v65 + 24;
LABEL_107:
  v93.__r_.__value_.__l.__size_ = v66;
LABEL_108:
  v73 = &morphun::grammar::synthesis::GrammemeConstants::POS_PRONOUN(void)::POS_PRONOUN_;
  {
LABEL_159:
    if (v91)
    {
    }
  }

  v73 = v73[348];
  while (1)
  {
    v74 = *(p_p + 23);
    v75 = v74 >= 0 ? p_p : *p_p;
    v76 = v74 >= 0 ? *(p_p + 23) : p_p[1];
    morphun::dialog::DictionaryLookupInflector::inflect(&__p, a2 + 1, v75, v76, a4, &v93, (a5 + 264));
    v77 = v97;
    if (v97 == 1)
    {
      break;
    }

    if (v52 == v10)
    {
      if (*(p_p + 23) < 0)
      {
        goto LABEL_132;
      }

LABEL_130:
      *a1 = *p_p;
      *(a1 + 2) = p_p[2];
      goto LABEL_133;
    }

    if (v93.__r_.__value_.__r.__words[0] == v93.__r_.__value_.__l.__size_)
    {
      goto LABEL_158;
    }

    v78 = (v93.__r_.__value_.__l.__size_ - 24);
    v79 = *(v93.__r_.__value_.__l.__size_ - 1);
    if ((v79 & 0x8000000000000000) != 0)
    {
      v80 = *(v93.__r_.__value_.__l.__size_ - 24);
      v79 = *(v93.__r_.__value_.__l.__size_ - 16);
    }

    else
    {
      v80 = (v93.__r_.__value_.__l.__size_ - 24);
    }

    v81 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(v73, v80, v79);
    if (v73 + 1 == v81)
    {
      if (*(p_p + 23) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(a1, *p_p, p_p[1]);
      }

      else
      {
        *a1 = *p_p;
        *(a1 + 2) = p_p[2];
      }

      goto LABEL_139;
    }

    v82 = *(v81 + 48);
    v83 = *(v81 + 56);
    if (v82)
    {
      v84 = 1;
    }

    else
    {
      v84 = v83 == 0;
    }

    if (!v84)
    {
LABEL_158:
      __break(1u);
      goto LABEL_159;
    }

    std::basic_string<char16_t>::__assign_external(v78, v82, v83);
  }

  p_p = &__p;
  if ((SHIBYTE(v96) & 0x80000000) == 0)
  {
    goto LABEL_130;
  }

LABEL_132:
  std::basic_string<char16_t>::__init_copy_ctor_external(a1, *p_p, p_p[1]);
LABEL_133:
  if (v77 && SHIBYTE(v96) < 0)
  {
    operator delete(__p);
  }

LABEL_139:
  __p = &v93;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&__p);
}

void sub_1BE641ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  a13 = &a10;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a13);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::__emplace_unique_key_args<std::u16string_view,std::pair<std::u16string_view const,std::u16string_view>>(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  result = std::__tree<std::u16string_view>::__find_equal<std::u16string_view>(a1, &v4, a2, a3);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void morphun::grammar::synthesis::ArGrammarSynthesizer_ArDisplayFunction::~ArGrammarSynthesizer_ArDisplayFunction(morphun::grammar::synthesis::ArGrammarSynthesizer_ArDisplayFunction *this)
{
  *this = &unk_1F3CD5820;
  std::__tree<std::u16string_view>::destroy(*(this + 46));
  std::__tree<std::u16string_view>::destroy(*(this + 43));
  v2 = *(this + 41);
  *(this + 41) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD5820;
  std::__tree<std::u16string_view>::destroy(*(this + 46));
  std::__tree<std::u16string_view>::destroy(*(this + 43));
  v2 = *(this + 41);
  *(this + 41) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

void std::vector<int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v4 = end - this->__begin_;
  v5 = v4 >> 2;
  if ((v4 >> 2) > 0xF)
  {
    if (v4 != 64)
    {
      this->__end_ = begin + 16;
    }
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (16 - v5 > (value - end))
    {
      v7 = value - begin;
      v8 = (value - begin) >> 1;
      if (v8 <= 0x10)
      {
        v8 = 16;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v9);
    }

    v10 = &end[16 - v5];
    v11 = 64 - 4 * v5;
    while (end)
    {
      *end++ = 0;
      v11 -= 4;
      if (!v11)
      {
        this->__end_ = v10;
        return;
      }
    }

    __break(1u);
  }
}

uint64_t morphun::analysis::tokenizer::StreamingTokenizer::incrementTokenChain(morphun::analysis::tokenizer::StreamingTokenizer *this)
{
  morphun::analysis::util::AttributeSource::clearAttributes(this);
  for (result = *(this + 67); result; *(this + 67) = result)
  {
    v3 = (*(*result + 32))(result);
    v4 = npc<morphun::Token>(*(this + 68));
    if (v3 > (*(*v4 + 32))(v4))
    {
      return 0;
    }

    v5 = *(this + 508);
    v6 = npc<morphun::Token>(*(this + 67));
    if (v5)
    {
      v7 = 40;
    }

    else
    {
      v7 = 16;
    }

    v8 = (v6 + v7);
    size = *(v6 + v7 + 23);
    if ((size & 0x8000000000000000) != 0)
    {
      size = v8->__r_.__value_.__l.__size_;
    }

    v10 = *(this + 509);
    v11 = npc<morphun::Token>(*(this + 67));
    if (v10 == 1)
    {
      if (*(v11 + 64) == 1 && size != 0)
      {
LABEL_19:
        v13 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 64));
        std::basic_string<char16_t>::operator=((v13 + *(*v13 - 96)), v8);
        v14 = *(this + 65);
        npc<morphun::analysis::tokenattributes::OffsetAttribute>(v14);
        v15 = npc<morphun::Token>(*(this + 67));
        v16 = (*(*v15 + 24))(v15);
        v17 = npc<morphun::Token>(*(this + 67));
        v18 = (*(*v17 + 32))(v17);
        *(this + 144) = v18;
        (*(*v14 + 64))(v14, v16, v18);
        *(this + 67) = *(npc<morphun::Token>(*(this + 67)) + 80);
        return 1;
      }
    }

    else if ((*(v11 + 65) & 1) == 0 && size)
    {
      goto LABEL_19;
    }

    result = *(npc<morphun::Token>(*(this + 67)) + 80);
  }

  return result;
}

void morphun::analysis::tokenizer::StreamingTokenizer::~StreamingTokenizer(morphun::analysis::tokenizer::StreamingTokenizer *this)
{
  morphun::analysis::tokenizer::StreamingTokenizer::~StreamingTokenizer(this);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::util::AttributeSource::clearAttributes(this);
  v2 = *(this + 21);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 60);
  if (v4)
  {
    *(this + 61) = v4;
    operator delete(v4);
  }

  morphun::tokenizer::RegexSplitIterator::~RegexSplitIterator((this + 184));
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  morphun::analysis::util::AttributeSource::~AttributeSource(this, off_1F3CD9D60);
}

void sub_1BE642670(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v3, 0x1020C405F07FB98);
  MEMORY[0x1BFB49160](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::SvGrammarSynthesizer_ArticleLookupFunction::getFeatureValue(void *a1, uint64_t a2)
{
  v4 = a1[4];
  npc<morphun::dialog::SemanticFeature const>(v4);
  v5 = (*(*a2 + 32))(a2, v4);
  Count = morphun::grammar::synthesis::SvGrammarSynthesizer::getCount(v5);
  if (!Count)
  {
    FeatureValue = morphun::dialog::DictionaryLookupFunction::getFeatureValue((a1 + 14), a2);
    if (!FeatureValue)
    {
      goto LABEL_6;
    }

    v8 = FeatureValue;
    v9 = (*(*FeatureValue + 32))(FeatureValue);
    Count = morphun::grammar::synthesis::SvGrammarSynthesizer::getCount(v9);
    (*(*v8 + 16))(v8);
  }

  if (Count == 2)
  {
    v10 = 11;
    goto LABEL_12;
  }

LABEL_6:
  v11 = a1[3];
  npc<morphun::dialog::SemanticFeature const>(v11);
  v12 = (*(*a2 + 32))(a2, v11);
  Gender = morphun::grammar::synthesis::SvGrammarSynthesizer::getGender(v12);
  if (!Gender)
  {
    v14 = morphun::dialog::DictionaryLookupFunction::getFeatureValue((a1 + 40), a2);
    if (!v14)
    {
      goto LABEL_11;
    }

    v15 = v14;
    v16 = (*(*v14 + 32))(v14);
    Gender = morphun::grammar::synthesis::SvGrammarSynthesizer::getGender(v16);
    (*(*v15 + 16))(v15);
  }

  if (Gender == 2)
  {
    v10 = 8;
    goto LABEL_12;
  }

LABEL_11:
  v10 = 5;
LABEL_12:
  v17 = *(*a1 + 32);

  return v17(a1, a2, &a1[v10]);
}

void morphun::grammar::synthesis::SvGrammarSynthesizer_ArticleLookupFunction::~SvGrammarSynthesizer_ArticleLookupFunction(morphun::grammar::synthesis::SvGrammarSynthesizer_ArticleLookupFunction *this)
{
  morphun::grammar::synthesis::SvGrammarSynthesizer_ArticleLookupFunction::~SvGrammarSynthesizer_ArticleLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CD4598;
  morphun::grammar::synthesis::SvGrammarSynthesizer_GenderLookupFunction::~SvGrammarSynthesizer_GenderLookupFunction((this + 320));
  *(this + 14) = &unk_1F3CD8738;
  v2 = *(this + 36);
  if (v2)
  {
    *(this + 37) = v2;
    operator delete(v2);
  }

  v3 = *(this + 34);
  *(this + 34) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 15) = &unk_1F3CD2000;
  if (*(this + 111) < 0)
  {
    operator delete(*(this + 11));
  }

  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

void morphun::grammar::synthesis::SvGrammarSynthesizer_ArticleLookupFunction::SvGrammarSynthesizer_ArticleLookupFunction(uint64_t a1, uint64_t a2, char a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  v26[1] = *MEMORY[0x1E69E9840];
  *a1 = &off_1F3CE6620;
  morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(a1, off_1F3CDB818, a2, a3, 1);
  *a1 = &off_1F3CD4598;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, L"gender");
  v11 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a2 + 8, &__p);
  if (a2 + 16 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 + 56);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 24) = v12;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, "c");
  v13 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a2 + 8, &__p);
  if ((a2 + 16) == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 7);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(a1 + 32) = v14;
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v15 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v15;
  }

  if (*(a5 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 64), *a5, *(a5 + 1));
  }

  else
  {
    v16 = *a5;
    *(a1 + 80) = *(a5 + 2);
    *(a1 + 64) = v16;
  }

  if (*(a6 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 88), *a6, *(a6 + 1));
  }

  else
  {
    v17 = *a6;
    *(a1 + 104) = *(a6 + 2);
    *(a1 + 88) = v17;
  }

  v18 = morphun::util::LocaleUtils::SWEDISH(v13);
  v19 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v18);
  if (*(v19 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *v19, *(v19 + 8));
  }

  else
  {
    v20 = *v19;
    __p.__r_.__value_.__r.__words[2] = *(v19 + 16);
    *&__p.__r_.__value_.__l.__data_ = v20;
  }

  v21 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v19);
  if (*(v21 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v25, *v21, *(v21 + 8));
  }

  else
  {
    v22 = *v21;
    v25.__r_.__value_.__r.__words[2] = *(v21 + 16);
    *&v25.__r_.__value_.__l.__data_ = v22;
  }

  memset(v23, 0, sizeof(v23));
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(v23, &__p, v26, 2uLL);
}

void sub_1BE642D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 87) < 0)
  {
    operator delete(*(v18 + 64));
  }

  if (*(v18 + 63) < 0)
  {
    operator delete(*(v18 + 40));
  }

  _Unwind_Resume(exception_object);
}

void morphun::analysis::stemmer::StemmableDictionaryLookupLemmaFilter::getLemmaWithLemmaMappingsWithLowerCase(uint64_t *a1@<X0>, void **a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v29 = a4;
  if ((a1[49] & a4) != 0 || (a1[50] & a4) == 0)
  {
    if (!a1[19])
    {
      *a5 = 0;
      *(a5 + 24) = 0;
      return;
    }

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  isAllUpperCase = morphun::util::StringViewUtils::isAllUpperCase(a2, a3);
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_49:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  v12 = isAllUpperCase;
  if (a3 > 0xA)
  {
    if ((a3 | 3) == 0xB)
    {
      v13 = 13;
    }

    else
    {
      v13 = (a3 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v13);
  }

  v28 = a3;
  v14 = (&v26 + 2 * a3);
  if (&v26 <= a2 && v14 > a2)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (a3)
  {
    memmove(&v26, a2, 2 * a3);
  }

  *v14 = 0;
  if (v12)
  {
    morphun::util::StringViewUtils::lowercase(&v26, a2, a3, (a1 + 52));
    if ((v28 & 0x80u) == 0)
    {
      v15 = &v26;
    }

    else
    {
      v15 = v26;
    }

    if ((v28 & 0x80u) == 0)
    {
      v16 = v28;
    }

    else
    {
      v16 = v27;
    }

    morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a1[48], &v29, v15, v16);
    v5 = v29;
  }

  if ((v28 & 0x80u) == 0)
  {
    v17 = &v26;
  }

  else
  {
    v17 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v18 = v28;
  }

  else
  {
    v18 = v27;
  }

  morphun::analysis::MorphologicalAnalyzer::analyze_word(__p, a1 + 20, v17, v18, v5, a1[19], v10);
  if (v25)
  {
    if (v12)
    {
      v21 = 0uLL;
      v22 = 0;
      if (v24 >= 0)
      {
        v19 = __p;
      }

      else
      {
        v19 = __p[0];
      }

      if (v24 >= 0)
      {
        v20 = HIBYTE(v24);
      }

      else
      {
        v20 = __p[1];
      }

      morphun::util::StringViewUtils::uppercase(&v21, v19, v20, (a1 + 52));
      *a5 = v21;
      *(a5 + 16) = v22;
      *(a5 + 24) = 1;
      if ((v25 & 1) != 0 && SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a5 = *__p;
      *(a5 + 16) = v24;
      __p[1] = 0;
      v24 = 0;
      __p[0] = 0;
      *(a5 + 24) = 1;
    }
  }

  else
  {
    *a5 = 0;
    *(a5 + 24) = 0;
  }

  if (v28 < 0)
  {
    operator delete(v26);
  }
}

void sub_1BE64302C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void *morphun::util::lemmatization::FeedForwardInflectionAnalyzer_Layer::FeedForwardInflectionAnalyzer_Layer(void *a1, void *a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    if (v5 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<std::vector<double>>>(v5);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<double>::__init_with_size[abi:se200100]<double *,double *>((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  return a1;
}

void sub_1BE643208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](va);
  _Unwind_Resume(a1);
}

BOOL morphun::transliteration::ToRomanizationTransliterator::transliterate(uint64_t a1, UChar *a2, unint64_t a3, uint64_t a4)
{
  if (!morphun::util::UnicodeSetUtils::containsSome(a1 + 304, a2, a3))
  {
    return 0;
  }

  if (*(a1 + 512) == 1)
  {
    v20 = 0;
    v21 = 0;
    v8 = 1;
    v9 = a2;
    v10 = a3;
    v22 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    if (morphun::util::StringViewUtils::isAllLowerCase(a2, a3))
    {
      v8 = 1;
      v9 = a2;
      v10 = a3;
    }

    else
    {
      morphun::util::StringViewUtils::lowercase(&v20, a2, a3, a1 + 8);
      v8 = 0;
      if (v22 >= 0)
      {
        v9 = &v20;
      }

      else
      {
        v9 = v20;
      }

      if (v22 >= 0)
      {
        v10 = HIBYTE(v22);
      }

      else
      {
        v10 = v21;
      }
    }
  }

  v12 = morphun::dictionary::metadata::MarisaTrie<int>::find((a1 + 216), v9, v10);
  if (HIDWORD(v12))
  {
    morphun::dictionary::metadata::MarisaTrie<int>::getKey(&v23, *(a1 + 296), v12);
    v18 = v24;
    *__p = v23;
    v19 = 1;
    if (v24 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = v23;
    }

    if (v24 >= 0)
    {
      v14 = HIBYTE(v24);
    }

    else
    {
      v14 = *(&v23 + 1);
    }

    morphun::transliteration::Transliterator::matchCase(a1, a4, v13, v14, a2, a3, v8);
    v11 = 1;
    if ((v19 & 1) != 0 && SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    v19 = 0;
    v15 = *(a1 + 320);
    v11 = v15 && ((*(*v15 + 24))(v15, a2, a3, a4) & 1) != 0 || morphun::transliteration::ICUScriptTransliterator::transliterate(a1 + 328, a2, a3, a4);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  return v11;
}

void sub_1BE64341C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void morphun::transliteration::ToRomanizationTransliterator::~ToRomanizationTransliterator(morphun::transliteration::ToRomanizationTransliterator *this)
{
  morphun::transliteration::ToRomanizationTransliterator::~ToRomanizationTransliterator(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD95B0;
  *(this + 41) = &unk_1F3CD9600;
  icu4cxx::Transliterator::~Transliterator((this + 496));
  icu4cxx::Transliterator::~Transliterator((this + 480));
  icu4cxx::UnicodeSet::~UnicodeSet((this + 464));
  *(this + 41) = &off_1F3CED608;
  v2 = *(this + 40);
  *(this + 40) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  icu4cxx::UnicodeSet::~UnicodeSet((this + 304));
  morphun::transliteration::BidirectionalStringMap::~BidirectionalStringMap((this + 136));
  *this = &off_1F3CED5B8;
}

uint64_t morphun::tokenizer::GermanicTokenExtractorIterator::reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 84) = 0;
  result = morphun::tokenizer::ICUTokenExtractorIterator::reset(a1 + 16);
  *(a1 + 64) = *(a1 + 56);
  *(a1 + 80) = 0;
  return result;
}

uint64_t morphun::tokenizer::GermanicTokenExtractorIterator::getNextBoundary(morphun::tokenizer::GermanicTokenExtractorIterator *this)
{
  v2 = *(this + 7);
  v3 = *(this + 20);
  v4 = (*(this + 8) - v2) >> 2;
  if (v3 >= v4)
  {
    *(this + 8) = v2;
    *(this + 20) = 0;
    v6 = *(this + 3);
    v7 = ubrk_next();
    if (v7 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = v7;
    v23 = *(this + 21);
    v8 = v7 - v23;
    if (v7 - v23 < *(this + 22))
    {
      *(this + 21) = v7;
      return v5;
    }

    v9 = v7 - 1;
    v10 = *(this + 6);
    if (v10 > v9)
    {
      v11 = *(this + 5);
      if (*(v11 + 2 * v9) != 115)
      {
        goto LABEL_12;
      }

      v12 = v7 - 2;
      if (v10 > v12)
      {
        v13 = *(v11 + 2 * v12);
        if (v13 == 8217 || v13 == 39)
        {
          v8 = v12 - v23;
        }

LABEL_12:
        v14 = *(this + 1);
        memset(&v24, 0, sizeof(v24));
        v15 = v8;
        std::basic_string<char16_t>::reserve(&v24, v8);
        v16 = v10 - v23;
        if (v10 >= v23)
        {
          if (v16 >= v15)
          {
            v16 = v15;
          }

          if (v16)
          {
            v17 = 2 * v16;
            v18 = (v11 + 2 * v23);
            do
            {
              v19 = MEMORY[0x1BFB495D0](*v18);
              std::basic_string<char16_t>::push_back(&v24, v19);
              ++v18;
              v17 -= 2;
            }

            while (v17);
          }

          morphun::util::StringUtils::reverse(&v24);
          size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
          if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = &v24;
          }

          else
          {
            v21 = v24.__r_.__value_.__r.__words[0];
          }

          if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v24.__r_.__value_.__l.__size_;
          }

          v26 = v21;
          v27 = size;
          v25 = size;
          std::allocate_shared[abi:se200100]<morphun::tokenizer::dictionary::Segment,std::allocator<morphun::tokenizer::dictionary::Segment>,morphun::tokenizer::dictionary::DictionaryTokenizerConfig const&,morphun::tokenizer::trie::SerializedTrie const&,std::u16string_view &,int &,int &,0>();
        }

        std::__throw_out_of_range[abi:se200100]("string_view::substr");
      }
    }

LABEL_28:
    __break(1u);
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  *(this + 20) = v3 + 1;
  if (v4 <= v3)
  {
    goto LABEL_28;
  }

  return *(v2 + 4 * v3);
}

void sub_1BE643F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, std::__shared_weak_count *a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  __cxa_free_exception(v31);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](a22);
  }

  a21 = &a23;
  std::vector<std::shared_ptr<morphun::dialog::DucConcept>>::__destroy_vector::operator()[abi:se200100](&a21);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::tokenizer::GermanicTokenExtractorIterator::~GermanicTokenExtractorIterator(morphun::tokenizer::GermanicTokenExtractorIterator *this)
{
  morphun::tokenizer::GermanicTokenExtractorIterator::~GermanicTokenExtractorIterator(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD0550;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  morphun::tokenizer::ICUTokenExtractorIterator::~ICUTokenExtractorIterator((this + 16));
}

void non-virtual thunk tomorphun::analysis::stemmer::FrStemFilter::~FrStemFilter(morphun::analysis::stemmer::FrStemFilter *this)
{
  v1 = (this - 128);
  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer(this, &off_1F3CDA0F0);
  morphun::analysis::TokenFilter::~TokenFilter(v1, off_1F3CDA0C0);

  JUMPOUT(0x1BFB49160);
}

{
  v1 = (this - 128);
  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer(this, &off_1F3CDA0F0);

  morphun::analysis::TokenFilter::~TokenFilter(v1, off_1F3CDA0C0);
}

void morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer(morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 40)) = a2[5];
  v10 = (this + 304);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v10);
  v5 = *(this + 35);
  if (v5)
  {
    *(this + 36) = v5;
    operator delete(v5);
  }

  v6 = a2[1];
  *this = v6;
  *(this + *(v6 - 40)) = a2[4];
  v7 = *(this + 25);
  if (v7)
  {
    *(this + 26) = v7;
    operator delete(v7);
  }

  v10 = (this + 176);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v10);
  v8 = *(this + 19);
  if (v8)
  {
    *(this + 20) = v8;
    operator delete(v8);
  }

  v9 = a2[2];
  *this = v9;
  *(this + *(v9 - 40)) = a2[3];
}

void virtual thunk tomorphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::~DictionaryGenderedNounLemmatizer(morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void virtual thunk tomorphun::analysis::MorphologicalAnalyzer::~MorphologicalAnalyzer(morphun::analysis::MorphologicalAnalyzer *this)
{
  v1 = this + *(*this - 32);
  *v1 = &unk_1F3CD2130;
  v2 = *(v1 + 25);
  if (v2)
  {
    *(v1 + 26) = v2;
    operator delete(v2);
  }

  v4 = (v1 + 176);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v4);
  v3 = *(v1 + 19);
  if (v3)
  {
    *(v1 + 20) = v3;
    operator delete(v3);
  }

  *v1 = &off_1F3CE2288;

  JUMPOUT(0x1BFB49160);
}

{
  v1 = this + *(*this - 32);
  *v1 = &unk_1F3CD2130;
  v2 = *(v1 + 25);
  if (v2)
  {
    *(v1 + 26) = v2;
    operator delete(v2);
  }

  v4 = (v1 + 176);
  std::vector<std::vector<std::u16string_view>>::__destroy_vector::operator()[abi:se200100](&v4);
  v3 = *(v1 + 19);
  if (v3)
  {
    *(v1 + 20) = v3;
    operator delete(v3);
  }

  *v1 = &off_1F3CE2288;
}

void *morphun::analysis::stemmer::FrStemFilter::reset(morphun::analysis::stemmer::FrStemFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  *(this + 58) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::KeywordAttribute>(this);
  *(this + 59) = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::GrammemeAttribute>(this);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::LemmaMappingAttribute>(this);
  *(this + 60) = result;
  return result;
}

std::basic_string<char16_t> *morphun::analysis::stemmer::FrStemFilter::incrementToken(morphun::analysis::stemmer::FrStemFilter *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    goto LABEL_81;
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
LABEL_81:
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v6 = *(*v5 - 96);
  v7 = v5 + v6;
  v47 = 0;
  v8 = *(v5 + v6 + 23);
  if (v8 < 0)
  {
    v9 = *v7;
    v8 = *(v7 + 1);
  }

  else
  {
    v9 = v5 + v6;
  }

  morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 17), &v47, v9, v8);
  v10 = v7[23];
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = *v7;
    v10 = *(v7 + 1);
  }

  else
  {
    v11 = v7;
  }

  morphun::analysis::MorphologicalAnalyzer::analyze_word(&__p, this + 16, v11, v10, v47, *(this + 60), 0);
  if (v46 == 1 && v45 < 0)
  {
    operator delete(__p);
  }

  v12 = v7[23];
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = v7;
    v7 = *v7;
    v12 = *(v13 + 1);
  }

  morphun::analysis::stemmer::DictionaryGenderedNounLemmatizer::getLemma(&__str, this + 128, v7, v12, v47);
  result = (*(this + 57) + *(**(this + 57) - 96));
  if (v43 == 1)
  {
    std::basic_string<char16_t>::operator=(result, &__str);
LABEL_71:
    if (*(this + 59))
    {
      v41 = 0;
      v34 = *(this + 57);
      v35 = *(*v34 - 96);
      v36 = v34 + v35;
      v37 = *(v34 + v35 + 23);
      if (v37 < 0)
      {
        v36 = *v36;
        v37 = *(v34 + v35 + 8);
      }

      if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 17), &v41, v36, v37))
      {
        v38 = *(this + 59);
        if (!v38)
        {
          v40 = __cxa_allocate_exception(0x38uLL);
          morphun::exception::NullPointerException::NullPointerException(v40);
        }

        (*(*v38 + 64))(v38, v41);
      }
    }

    if (v43 == 1 && SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    return v3;
  }

  v15 = SHIBYTE(result->__r_.__value_.__r.__words[2]);
  if ((v15 & 0x80000000) != 0)
  {
    size = result->__r_.__value_.__l.__size_;
    if (size < 6)
    {
      goto LABEL_70;
    }

    v22 = (size - 1);
    if (size < v22)
    {
      goto LABEL_83;
    }

    v23 = result->__r_.__value_.__r.__words[0];
    v24 = *(result->__r_.__value_.__r.__words[0] + 2 * v22);
    if (v24 != 120)
    {
      if (v24 != 115)
      {
        LODWORD(v22) = result->__r_.__value_.__l.__size_;
      }

      v31 = (v22 - 1);
      if (size < v31)
      {
        goto LABEL_83;
      }

      if (*(v23 + 2 * v31) == 114)
      {
        LODWORD(v22) = v22 - 1;
      }

      v32 = (v22 - 1);
      if (size < v32)
      {
        goto LABEL_83;
      }

      if (*(v23 + 2 * v32) == 101)
      {
        LODWORD(v22) = v22 - 1;
      }

      v33 = (v22 - 1);
      if (size < v33)
      {
        goto LABEL_83;
      }

      if (*(v23 + 2 * v33) == 233)
      {
        LODWORD(v22) = v22 - 1;
      }

      v28 = (v22 - 1);
      if (size < v28)
      {
        goto LABEL_83;
      }

      v29 = (v22 - 2);
      if (size < v29)
      {
        goto LABEL_83;
      }

      v30 = (v23 + 2 * v28);
      goto LABEL_66;
    }

    v25 = (size - 3);
    if (size >= v25)
    {
      if (*(v23 + 2 * v25) == 97)
      {
        v20 = (size - 2);
        if (size < v20)
        {
          goto LABEL_83;
        }

        if (*(result->__r_.__value_.__r.__words[0] + 2 * v20) == 117)
        {
          v21 = result->__r_.__value_.__r.__words[0];
          LODWORD(size) = size - 1;
LABEL_37:
          *(v21 + 2 * v20) = 108;
          goto LABEL_70;
        }
      }

      LODWORD(size) = size - 1;
      goto LABEL_70;
    }
  }

  else
  {
    v16 = SHIBYTE(result->__r_.__value_.__r.__words[2]);
    LODWORD(size) = SHIBYTE(result->__r_.__value_.__r.__words[2]);
    if (v15 < 6)
    {
      goto LABEL_70;
    }

    size = v15 - 1;
    if (SHIBYTE(result->__r_.__value_.__r.__words[2]) >= size)
    {
      v18 = result->__r_.__value_.__s.__data_[size];
      if (v18 == 120)
      {
        v19 = v15 - 3;
        if (v19 <= SHIBYTE(result->__r_.__value_.__r.__words[2]))
        {
          if (result->__r_.__value_.__s.__data_[v19] != 97)
          {
            goto LABEL_70;
          }

          v20 = v15 - 2;
          if (v20 <= SHIBYTE(result->__r_.__value_.__r.__words[2]))
          {
            if (result->__r_.__value_.__s.__data_[v20] == 117)
            {
              v21 = *(this + 57) + *(**(this + 57) - 96);
              if (v20 > SHIBYTE(result->__r_.__value_.__r.__words[2]))
              {
                goto LABEL_83;
              }

              goto LABEL_37;
            }

LABEL_70:
            std::basic_string<char16_t>::resize(result, size, 0);
            goto LABEL_71;
          }
        }

        goto LABEL_83;
      }

      if (v18 != 115)
      {
        LODWORD(size) = SHIBYTE(result->__r_.__value_.__r.__words[2]);
      }

      v26 = (size - 1);
      if (v16 < v26)
      {
        goto LABEL_83;
      }

      if (result->__r_.__value_.__s.__data_[v26] == 114)
      {
        LODWORD(size) = size - 1;
      }

      v27 = (size - 1);
      if (v16 < v27)
      {
        goto LABEL_83;
      }

      if (result->__r_.__value_.__s.__data_[v27] == 101)
      {
        LODWORD(size) = size - 1;
      }

      v22 = (size - 1);
      if (v16 < v22)
      {
        goto LABEL_83;
      }

      if (result->__r_.__value_.__s.__data_[v22] != 233)
      {
        LODWORD(v22) = size;
      }

      v28 = (v22 - 1);
      if (v16 < v28)
      {
        goto LABEL_83;
      }

      v29 = (v22 - 2);
      if (v16 < v29)
      {
        goto LABEL_83;
      }

      v30 = (result + 2 * v28);
      v23 = *(this + 57) + *(**(this + 57) - 96);
LABEL_66:
      if (v30->__r_.__value_.__s.__data_[0] == *(v23 + 2 * v29))
      {
        LODWORD(size) = v28;
      }

      else
      {
        LODWORD(size) = v22;
      }

      goto LABEL_70;
    }
  }

LABEL_83:
  __break(1u);
  return result;
}