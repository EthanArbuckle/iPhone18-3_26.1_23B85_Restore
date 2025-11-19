std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::assign(std::basic_string<char16_t> *this, const std::basic_string<char16_t> *__str, std::basic_string<char16_t>::size_type __pos, std::basic_string<char16_t>::size_type __n)
{
  v5 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    v6 = size >= __pos;
    v7 = size - __pos;
    if (!v6)
    {
LABEL_19:
      std::basic_string<char16_t>::__throw_out_of_range[abi:se200100]();
    }

    __str = __str->__r_.__value_.__r.__words[0];
    if (v7 >= __n)
    {
      v7 = __n;
    }

    if (__str)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (!v9)
    {
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    v6 = v5 >= __pos;
    v7 = v5 - __pos;
    if (!v6)
    {
      goto LABEL_19;
    }

    if (v7 >= __n)
    {
      v7 = __n;
    }
  }

  v10 = (__str + 2 * __pos);

  return std::basic_string<char16_t>::__assign_external(this, v10, v7);
}

uint64_t morphun::analysis::tokenattributes::PackedTokenAttributeImpl::setOffset(uint64_t this, int a2, int a3)
{
  if (a2 < 0 || a3 < a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(a2, &v10);
    std::basic_string<char16_t>::insert(&v10, "s", 0x54, v6);
    v11 = v10;
    memset(&v10, 0, sizeof(v10));
    std::basic_string<char16_t>::append(&v11, L",endOffset=", 0xBuLL);
    v12 = v11;
    memset(&v11, 0, sizeof(v11));
    morphun::util::StringUtils::to_u16string(a3, &v9);
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v9;
    }

    else
    {
      v7 = v9.__r_.__value_.__r.__words[0];
    }

    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v9.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v9.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v12, v7, size);
    v13 = v12;
    memset(&v12, 0, sizeof(v12));
    morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &v13);
  }

  *(this + 8) = a2;
  *(this + 12) = a3;
  return this;
}

void sub_1BE57F4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

uint64_t morphun::analysis::filter::LanguageExpansion::expandWithWorkspace(uint64_t a1, const UChar *a2, int32_t a3, uint64_t a4)
{
  v4 = a4;
  morphun::util::StringViewUtils::lowercase(a4, a2, a3, a1 + 24);
  v6 = *(v4 + 23);
  v7 = v6;
  v8 = *v4;
  v9 = *(v4 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = *v4;
  }

  if ((v6 & 0x80u) == 0)
  {
    v11 = *(v4 + 23);
  }

  else
  {
    v11 = *(v4 + 8);
  }

  if (v11)
  {
    v12 = 2 * v11;
    do
    {
      if (*v10 == 8217)
      {
        *v10 = 39;
      }

      ++v10;
      v12 -= 2;
    }

    while (v12);
    v6 = *(v4 + 23);
    v8 = *v4;
    v9 = *(v4 + 8);
    v7 = *(v4 + 23);
  }

  if (v7 >= 0)
  {
    v13 = v6;
  }

  else
  {
    v4 = v8;
    v13 = v9;
  }

  v16 = *(a1 + 8);
  v14 = a1 + 8;
  v15 = v16;
  if (!v16)
  {
    goto LABEL_26;
  }

  v17 = v14;
  do
  {
    v18 = std::less<std::u16string_view>::operator()[abi:se200100](*(v15 + 32), *(v15 + 40), v4, v13);
    if (v18)
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    if (!v18)
    {
      v17 = v15;
    }

    v15 = *(v15 + v19);
  }

  while (v15);
  if (v17 == v14 || std::less<std::u16string_view>::operator()[abi:se200100](v4, v13, *(v17 + 32), *(v17 + 40)))
  {
LABEL_26:
    v17 = v14;
  }

  if (v14 == v17)
  {
    return 0;
  }

  else
  {
    return v17 + 48;
  }
}

uint64_t std::u16string_view::compare[abi:se200100](void *a1, unint64_t a2, unint64_t a3, unsigned __int16 *a4, unint64_t a5)
{
  v5 = a1[1];
  v6 = v5 >= a2;
  v7 = v5 - a2;
  if (!v6)
  {
    std::__throw_out_of_range[abi:se200100]("string_view::substr");
  }

  if (v7 >= a3)
  {
    v7 = a3;
  }

  if (a5 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = a5;
  }

  if (v8)
  {
    v9 = (*a1 + 2 * a2);
    while (1)
    {
      v10 = *v9;
      v11 = *a4;
      if (v10 < v11)
      {
        return 0xFFFFFFFFLL;
      }

      if (v11 < v10)
      {
        return 1;
      }

      ++v9;
      ++a4;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (v7 == a5)
    {
      return 0;
    }

    else if (v7 < a5)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }
}

void *morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(uint64_t a1, uint64_t a2, const std::string::value_type *a3, uint64_t a4)
{
  v6 = a2;
  npc<long long>(a2);
  *v6 = 0;
  v8 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(a1 + 8));
  WordType = morphun::dictionary::DictionaryMetaData_MMappedDictionary::getWordType(v8, a3, a4);
  v11 = v10;
  if (v10)
  {
    goto LABEL_19;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  v12 = *(a1 + 8);
  npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(v12);
  morphun::util::StringViewUtils::lowercase(&__p, a3, a4, v12 + 16);
  v13 = HIBYTE(v23);
  v14 = HIBYTE(v23);
  if (v23 < 0)
  {
    v13 = v22;
  }

  if (a4 == v13)
  {
    if (!v13)
    {
      goto LABEL_18;
    }

    p_p = __p;
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    while (*p_p == *a3)
    {
      a3 += 2;
      ++p_p;
      if (!--v13)
      {
        goto LABEL_18;
      }
    }
  }

  v16 = npc<morphun::dictionary::DictionaryMetaData_MMappedDictionary>(*(a1 + 8));
  if (v23 >= 0)
  {
    v17 = &__p;
  }

  else
  {
    v17 = __p;
  }

  if (v23 >= 0)
  {
    v18 = HIBYTE(v23);
  }

  else
  {
    v18 = v22;
  }

  WordType = morphun::dictionary::DictionaryMetaData_MMappedDictionary::getWordType(v16, v17, v18);
  v11 = v19;
  v14 = HIBYTE(v23);
LABEL_18:
  if (v14 < 0)
  {
    operator delete(__p);
    if (v11)
    {
      goto LABEL_20;
    }

    return 0;
  }

LABEL_19:
  if ((v11 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  *v6 = WordType;
  return v6;
}

void sub_1BE57F89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dictionary::metadata::MarisaTrie<unsigned long long>::find(marisa::Trie *a1, const std::string::value_type *a2, uint64_t a3)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  morphun::dictionary::metadata::CharsetConverter::encode(a1 + 8, &__p, a2, a3);
  if (v14 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v14 >= 0)
  {
    v5 = HIBYTE(v14);
  }

  else
  {
    v5 = v13;
  }

  marisa::Agent::set_query(v10, p_p, v5);
  v6 = marisa::Trie::lookup(a1, v10);
  v7 = DWORD1(v11);
  marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&v11 + 1);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = -1;
  }

  if (v8 < 0)
  {
    return 0;
  }

  else
  {
    return morphun::dictionary::metadata::CompressedArray<unsigned long long>::read(a1 + 32, v8);
  }
}

void sub_1BE57F98C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&a14);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *morphun::dictionary::metadata::CharsetConverter::encode(uint64_t a1, uint64_t a2, const std::string::value_type *a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  if (v7 == 6)
  {
    result = npc<std::string>(a2);
    v10 = 2 * a4;
    if (!a3 && v10)
    {
      __break(1u);
    }

    else
    {
      v11 = *MEMORY[0x1E69E9840];

      return std::string::__assign_external(a2, a3, v10);
    }
  }

  else if (v7 == 4)
  {
    v8 = *MEMORY[0x1E69E9840];

    return morphun::util::StringViewUtils::convert(a2, a3, a4);
  }

  else
  {
    v12 = *(a1 + 8);
    ucnv_safeClone();
    npc<std::string>(a2);
    std::string::resize(a2, a4 + 8, 0);
    if (*(a2 + 23) < 0)
    {
      v13 = *a2;
    }

    v14 = ucnv_fromUChars();
    if (a4 + 8 != v14)
    {
      std::string::resize(a2, v14, 0);
    }

    result = ucnv_close();
    v15 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void sub_1BE57FC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
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

unint64_t morphun::dictionary::DictionaryMetaData_MMappedDictionary::getWordType(uint64_t a1, const std::string::value_type *a2, uint64_t a3)
{
  v4 = morphun::dictionary::metadata::MarisaTrie<unsigned long long>::find((a1 + 184), a2, a3);
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = v4;
  if (*(a1 + 436) == 1)
  {
    v6 = morphun::dictionary::metadata::CompressedArray<unsigned long long>::read(a1 + 264, v4);
  }

  Value = morphun::dictionary::metadata::CompressedArray<short>::extractValue(v6, *(a1 + 176));
  if (Value)
  {
    v8 = *(*(a1 + 256) + 8 * Value) & 0xFFFFFFFFFFFFFF00;
    v9 = *(*(a1 + 256) + 8 * Value);
  }

  else
  {
LABEL_6:
    v9 = 0;
    v8 = 0;
  }

  return v8 | v9;
}

std::string *morphun::util::StringViewUtils::convert(std::string *this, uint64_t a2, int a3)
{
  if (!this)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
LABEL_5:
    v6 = 22;
    goto LABEL_6;
  }

  *this->__r_.__value_.__l.__data_ = 0;
  this->__r_.__value_.__l.__size_ = 0;
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v6 = LODWORD(this->__r_.__value_.__r.__words[2]) - 1;
LABEL_6:
  v20 = 0;
  *__s = 0;
  if (a3 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = a3 + 1;
    while (1)
    {
      v10 = v8 + 1;
      v11 = *(a2 + 2 * v8);
      if ((v11 & 0xFC00) == 0xD800 && v10 != a3)
      {
        break;
      }

      if (v11 > 0x7F)
      {
        if (v11 <= 0x7FF)
        {
          __s[0] = (v11 >> 6) | 0xC0;
          v16 = 1;
LABEL_21:
          v13 = v16 + 1;
          __s[v16] = v11 & 0x3F | 0x80;
          goto LABEL_22;
        }

LABEL_19:
        __s[0] = (v11 >> 12) | 0xE0;
        v15 = 1;
LABEL_20:
        v16 = v15 + 1;
        *(__s | v15) = (v11 >> 6) & 0x3F | 0x80;
        goto LABEL_21;
      }

      __s[0] = *(a2 + 2 * v8);
      v13 = 1;
LABEL_22:
      v8 = v10;
      v7 += v13;
      if (v7 >= v6)
      {
        std::string::reserve(this, ((v9 - v10) * v13));
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          v6 = LODWORD(this->__r_.__value_.__r.__words[2]) - 1;
        }

        else
        {
          v6 = 22;
        }
      }

      std::string::append(this, __s, v13);
      if (v8 >= a3)
      {
        return this;
      }
    }

    v14 = *(a2 + 2 * v10);
    if ((v14 & 0xFC00) != 0xDC00)
    {
      goto LABEL_19;
    }

    LODWORD(v10) = v8 + 2;
    v11 = v14 + (v11 << 10) - 56613888;
    __s[0] = (v11 >> 18) | 0xF0;
    __s[1] = (v11 >> 12) & 0x3F | 0x80;
    v15 = 2;
    goto LABEL_20;
  }

  return this;
}

uint64_t marisa::Trie::lookup(marisa::Trie *this, marisa::Agent *a2)
{
  v2 = *this;
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/trie.cc";
    exception[2] = 0x100000057;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/trie.cc:87: MARISA_STATE_ERROR: trie_.get() == NULL";
  }

  v4 = *(a2 + 5);
  if (!v4)
  {
    marisa::Agent::init_state(a2);
    v2 = *this;
    v4 = *(a2 + 5);
  }

  v6 = 0;
  *(v4 + 96) = 0;
  *(v4 + 108) = 0;
  while (1)
  {
    v7 = *(a2 + 1);
    if (v7 <= v6)
    {
      break;
    }

    v8 = *(a2 + 5);
    v9 = *(v8 + 96);
    v10 = *(v8 + 100);
    v11 = (*(*a2 + v10) ^ (32 * v9) ^ v9) & *(v2 + 1056);
    v12 = (*(v2 + 1024) + 12 * v11);
    if (v9 != *v12)
    {
      v14 = marisa::grimoire::vector::BitVector::select0(v2, *(v8 + 96));
      v15 = *(v2 + 16);
      if ((*(v15 + (((v14 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v14 + 1)))
      {
        v16 = v14 - v9;
        *(v8 + 96) = v14 - v9;
        v17 = v14 + 2;
        v18 = 0xFFFFFFFFLL;
        while (1)
        {
          v19 = v16;
          if ((*(*(v2 + 432) + ((v16 >> 3) & 0x1FFFFFF8)) >> v16))
          {
            if (v18 == 0xFFFFFFFFLL)
            {
              v18 = marisa::grimoire::vector::BitVector::rank1((v2 + 416), v16);
            }

            else
            {
              ++v18;
            }

            v20 = *(v2 + 720);
            v21 = v20 * v18;
            v22 = (v20 * v18) & 0x3F;
            v23 = v22 + v20;
            v24 = (*(v2 + 688) + 8 * ((v20 * v18) >> 6));
            v25 = *v24;
            if (v23 > 0x40)
            {
              v26 = ((2 * v24[1]) << ~v21) | (v25 >> v21);
            }

            else
            {
              v26 = v25 >> v22;
            }

            v27 = *(*(v2 + 640) + v19) | ((*(v2 + 728) & v26) << 8);
            v28 = *(v2 + 1000);
            if (v28)
            {
              if (marisa::grimoire::trie::LoudsTrie::match_(v28, a2, v27))
              {
                goto LABEL_33;
              }
            }

            else if (marisa::grimoire::trie::Tail::match((v2 + 744), a2, v27))
            {
              goto LABEL_33;
            }

            if (*(v8 + 100) != v10)
            {
              return 0;
            }

            v16 = *(v8 + 96);
            v15 = *(v2 + 16);
          }

          else if (*(*(v2 + 640) + v16) == *(*a2 + v10))
          {
            *(v8 + 100) = v10 + 1;
            goto LABEL_33;
          }

          *(v8 + 96) = ++v16;
          v29 = *(v15 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v17;
          ++v17;
          if ((v29 & 1) == 0)
          {
            return 0;
          }
        }
      }

      return 0;
    }

    v13 = v12[2];
    if (v13 <= 0xFFFFFEFF)
    {
      v30 = *(v2 + 1000);
      if (v30)
      {
        if ((marisa::grimoire::trie::LoudsTrie::match_(v30, a2, v13) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((marisa::grimoire::trie::Tail::match((v2 + 744), a2, v13) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      *(v8 + 100) = v10 + 1;
    }

    *(v8 + 96) = *(*(v2 + 1024) + 12 * v11 + 4);
LABEL_33:
    v6 = *(v4 + 100);
  }

  v31 = *(v4 + 96);
  if ((*(*(v2 + 224) + ((v31 >> 3) & 0x1FFFFFF8)) >> v31))
  {
    *(a2 + 3) = *a2;
    *(a2 + 8) = v7;
    *(a2 + 9) = marisa::grimoire::vector::BitVector::rank1((v2 + 208), v31);
    return 1;
  }

  return 0;
}

void *marisa::Agent::set_query(void *this, const char *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/agent.cc";
    exception[2] = 0x200000017;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/agent.cc:23: MARISA_NULL_ERROR: (ptr == NULL) && (length != 0)";
  }

  v3 = this[5];
  if (v3)
  {
    *(v3 + 108) = 0;
  }

  *this = a2;
  this[1] = a3;
  return this;
}

unint64_t marisa::grimoire::vector::BitVector::select0(marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 16) + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = *(this + 10);
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3;
    v8 = v3-- << 9;
    v9 = (v7 + 12);
    do
    {
      v10 = *v9;
      v9 += 3;
      ++v3;
      v8 += 512;
    }

    while (v8 - v10 <= a2);
  }

  else
  {
    do
    {
      if (((v4 + v3) >> 1 << 9) - *(v5 + 12 * ((v4 + v3) >> 1)) > a2)
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

  v11 = (v5 + 12 * v3);
  v12 = v11[1];
  v13 = (a2 - (v3 << 9) + *v11);
  v14 = 8 * v3;
  if (v13 >= 256 - (v12 >> 23))
  {
    v16 = v11[2];
    v17 = (v16 >> 9) & 0x1FF;
    if (v13 >= 384 - v17)
    {
      v19 = (v16 >> 18) & 0x1FF;
      if (v13 >= 448 - v19)
      {
        v14 |= 7uLL;
        v13 = (v13 + v19 - 448);
      }

      else
      {
        v14 |= 6uLL;
        v13 = (v13 + v17 - 384);
      }
    }

    else if (v13 >= 320 - (v16 & 0x1FF))
    {
      v14 |= 5uLL;
      v13 = (v13 + (v16 & 0x1FF) - 320);
    }

    else
    {
      v14 |= 4uLL;
      v13 = (v13 + (v12 >> 23) - 256);
    }
  }

  else if (v13 >= 128 - (v12 >> 7))
  {
    v18 = (v12 >> 15);
    if (v13 >= 192 - v18)
    {
      v14 |= 3uLL;
      v13 = (v13 + v18 - 192);
    }

    else
    {
      v14 |= 2uLL;
      v13 = (v13 + (v12 >> 7) - 128);
    }
  }

  else
  {
    v15 = v12 & 0x7F;
    if (v13 >= 64 - v15)
    {
      v14 |= 1uLL;
      v13 = (v13 + v15 - 64);
    }
  }
}

void *marisa::Agent::init_state(marisa::Agent *this)
{
  if (*(this + 5))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/agent.cc";
    exception[2] = 0x100000026;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/agent.cc:38: MARISA_STATE_ERROR: state_.get() != NULL";
    goto LABEL_9;
  }

  v2 = operator new(0x70uLL, MEMORY[0x1E69E5398]);
  if (v2)
  {
    *(v2 + 25) = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    *(v2 + 73) = 0u;
    *(v2 + 12) = 0;
    *(v2 + 13) = 0;
    v6 = 0;
    *(this + 5) = v2;
  }

  else
  {
    v6 = 0;
    *(this + 5) = 0;
  }

  result = marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&v6);
  if (!*(this + 5))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/agent.cc";
    exception[2] = 0x800000028;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Morphun/ext/lib/Marisa/marisa-trie/lib/marisa/agent.cc:40: MARISA_MEMORY_ERROR: state_.get() == NULL";
LABEL_9:
    exception[3] = v5;
  }

  return result;
}

void *marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[6];
    if (v3)
    {
      MEMORY[0x1BFB49140](v3, 0x1000C8077774924);
    }

    if (*v2)
    {
      MEMORY[0x1BFB49140](*v2, 0x1000C8077774924);
    }

    MEMORY[0x1BFB49160](v2, 0x1070C406A3FAA47);
  }

  return a1;
}

unint64_t marisa::grimoire::vector::anonymous namespace::select_bit(marisa::grimoire::vector::_anonymous_namespace_ *this, uint64_t a2, unint64_t a3)
{
  v3 = (((a3 - ((a3 >> 1) & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((a3 - ((a3 >> 1) & 0x5555555555555555)) & 0x3333333333333333);
  v4 = (v3 + (v3 >> 4)) & 0xF0F0F0F0F0F0F0FLL;
  v5 = __clz(__rbit64(((((0x101010101010101 * v4) | 0x8080808080808080) - 0x101010101010101 * this - 0x101010101010101) >> 7) & 0x101010101010101));
}

uint64_t marisa::grimoire::trie::LoudsTrie::match_(marisa::grimoire::trie::LoudsTrie *this, marisa::Agent *a2, unint64_t a3)
{
  v6 = *(a2 + 5);
  while (1)
  {
    while (1)
    {
      v7 = *(this + 132) & a3;
      v8 = *(this + 128) + 12 * v7;
      if (a3 == *(v8 + 4))
      {
        break;
      }

      if ((*(*(this + 54) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
      {
        v11 = *(this + 125);
        v12 = *(*(this + 80) + a3);
        v13 = marisa::grimoire::vector::BitVector::rank1((this + 416), a3);
        v14 = *(this + 90);
        v15 = v14 * v13;
        v16 = (v14 * v13) & 0x3F;
        v17 = v16 + v14;
        v18 = (*(this + 86) + 8 * ((v14 * v13) >> 6));
        v19 = *v18;
        if (v11)
        {
          if (v17 > 0x40)
          {
            v20 = ((2 * v18[1]) << ~v15) | (v19 >> v15);
          }

          else
          {
            v20 = v19 >> v16;
          }

          if ((marisa::grimoire::trie::LoudsTrie::match_(v11, a2, v12 | ((*(this + 182) & v20) << 8)) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v17 > 0x40)
          {
            v23 = ((2 * v18[1]) << ~v15) | (v19 >> v15);
          }

          else
          {
            v23 = v19 >> v16;
          }

          if ((marisa::grimoire::trie::Tail::match((this + 744), a2, v12 | ((*(this + 182) & v23) << 8)) & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        v22 = *(v6 + 100);
        if (*(*(this + 80) + a3) != *(*a2 + v22))
        {
          return 0;
        }

        *(v6 + 100) = v22 + 1;
      }

      if (a3 <= *(this + 133))
      {
        return 1;
      }

      if (*(a2 + 1) <= *(v6 + 100))
      {
        return 0;
      }

      a3 = marisa::grimoire::vector::BitVector::select1(this, a3) + ~a3;
    }

    v9 = *(v8 + 8);
    if (v9 <= 0xFFFFFEFF)
    {
      v21 = *(this + 125);
      if (v21)
      {
        if ((marisa::grimoire::trie::LoudsTrie::match_(v21, a2, v9) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((marisa::grimoire::trie::Tail::match((this + 744), a2, v9) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v10 = *(v6 + 100);
      if (*(*a2 + v10) != v9)
      {
        return 0;
      }

      *(v6 + 100) = v10 + 1;
    }

    a3 = *(*(this + 128) + 12 * v7);
    if (!a3)
    {
      break;
    }

    if (*(a2 + 1) <= *(v6 + 100))
    {
      return 0;
    }
  }

  return 1;
}

uint64_t marisa::grimoire::vector::BitVector::rank1(marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 10) + 12 * (a2 >> 9));
  v3 = *v2;
  v4 = (a2 >> 6) & 7;
  if (v4 > 3)
  {
    if (((a2 >> 6) & 7) > 5)
    {
      if (v4 == 6)
      {
        v5 = (v2[2] >> 9) & 0x1FF;
      }

      else
      {
        v5 = (v2[2] >> 18) & 0x1FF;
      }

      goto LABEL_16;
    }

    if (v4 != 4)
    {
      v5 = v2[2] & 0x1FF;
      goto LABEL_16;
    }

    v3 += v2[1] >> 23;
  }

  else if (((a2 >> 6) & 7) > 1)
  {
    if (v4 == 2)
    {
      v6 = v2[1] >> 7;
    }

    else
    {
      v6 = v2[1] >> 15;
    }

    v3 += v6;
  }

  else if (v4)
  {
    v5 = v2[1] & 0x7F;
LABEL_16:
    v3 += v5;
  }

  v7 = *(*(this + 2) + 8 * (a2 >> 6)) & ~(-1 << a2);
  v8 = (((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) & 0x3333333333333333);
  return v3 + ((0x101010101010101 * (((v8 >> 4) & 0x707070707070707) + (v8 & 0x707070707070707))) >> 56);
}

unint64_t morphun::analysis::stemmer::EnStemFilter::stem(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  v3 = *(a2 + 23);
  if (v2 < 0)
  {
    v5 = a2[1];
    result = v5;
    if (v5 < 4)
    {
      return result;
    }
  }

  else
  {
    if (v3 < 4)
    {
      return *(a2 + 23);
    }

    v5 = *(a2 + 23);
    result = *(a2 + 23);
  }

  v6 = (result - 1);
  if (v5 < v6)
  {
    goto LABEL_31;
  }

  if (v2 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (*(v7 + v6) != 115)
  {
    return result;
  }

  v8 = (result - 2);
  if ((v3 & 0x80000000) != 0)
  {
    v3 = a2[1];
  }

  if (v3 < v8)
  {
    goto LABEL_31;
  }

  v9 = *(v7 + v8);
  if (v9 == 117 || v9 == 115)
  {
    return result;
  }

  if (v9 != 101)
  {
    return (result - 1);
  }

  v10 = (v5 - 3);
  if (v3 < v10)
  {
    goto LABEL_31;
  }

  v11 = (((*(v7 + v10) - 97) >> 1) | ((*(v7 + v10) - 97) << 15));
  if (v11 > 3)
  {
    if (v11 == 7)
    {
      return result;
    }

    if (v11 == 4)
    {
      v13 = (v5 - 4);
      if (v3 >= v13)
      {
        if ((*(v7 + v13) & 0xFFFB) != 0x61)
        {
          *(v7 + v10) = 121;
          return (result - 2);
        }

        return result;
      }

LABEL_31:
      __break(1u);
      return result;
    }

    return (result - 1);
  }

  if (((*(v7 + v10) - 97) >> 1) | ((*(v7 + v10) - 97) << 15))
  {
    v12 = v11 == 2;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    return (result - 1);
  }

  return result;
}

uint64_t morphun::util::StringViewUtils::codePointAt(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0 || a2 <= a3)
  {
LABEL_17:
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::StringIndexOutOfBoundsException::StringIndexOutOfBoundsException(exception, a3);
  }

  if (a2 <= a3)
  {
    goto LABEL_16;
  }

  result = *(a1 + 2 * a3);
  if ((result & 0xF800) != 0xD800)
  {
    return result;
  }

  if ((result & 0x400) == 0)
  {
    v5 = a3 + 1;
    if (a3 + 1 == a2)
    {
      return result;
    }

    if (a2 > v5)
    {
      v6 = *(a1 + 2 * v5);
      v7 = (v6 & 0xFC00) == 56320;
      v8 = v6 + (result << 10);
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  if (!a3)
  {
    return result;
  }

  v9 = a3 - 1;
  if (a2 <= v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = *(a1 + 2 * v9);
  v7 = (v10 & 0xFC00) == 55296;
  v8 = result + (v10 << 10);
LABEL_12:
  v11 = v8 - 56613888;
  if (v7)
  {
    return v11;
  }

  else
  {
    return result;
  }
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::operator=(std::basic_string<char16_t> *this, const std::basic_string<char16_t> *__str)
{
  if (this != __str)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      size = __str->__r_.__value_.__l.__size_;
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        __str = __str->__r_.__value_.__r.__words[0];
        v4 = size;
      }

      return std::basic_string<char16_t>::__assign_no_alias<false>(this, __str, v4);
    }

    else if ((*(&__str->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      return std::basic_string<char16_t>::__assign_no_alias<true>(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v2 = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v2;
    }
  }

  return this;
}

BOOL morphun::analysis::core::StopFilter::accept(morphun::analysis::core::StopFilter *this)
{
  v2 = npc<std::set<std::basic_string<char16_t>> const>(*(this + 21));
  v3 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(v2, (*(this + 22) + *(**(this + 22) - 96)));
  return npc<std::set<std::basic_string<char16_t>> const>(*(this + 21)) + 8 == v3;
}

uint64_t std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(uint64_t a1, unsigned __int16 *a2)
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
    v6 = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((v3 + 32), a2);
    if ((v6 & 0x80u) == 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 4) & 8));
  }

  while (v3);
  if (v5 == v2 || (std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a2, (v5 + 32)) & 0x80) != 0)
  {
    return v2;
  }

  return v5;
}

uint64_t std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v4 >= v2)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v3 >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    do
    {
      v9 = *v8;
      v10 = *v7;
      if (v9 < v10)
      {
        return 255;
      }

      if (v10 < v9)
      {
        return 1;
      }

      ++v8;
      ++v7;
    }

    while (--v6);
  }

  if (v2 == v4)
  {
    return 0;
  }

  if (v2 < v4)
  {
    return 255;
  }

  return 1;
}

uint64_t npc<std::set<std::basic_string<char16_t>> const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::analysis::ConfigurableAnalyzer::getWordOrDelimiterToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  if (a6)
  {
    v6 = 2 * a6 - 2;
    do
    {
      v8 = *a5++;
      if (u_isUWhiteSpace(v8))
      {
        v9 = v6 == 0;
      }

      else
      {
        v9 = 1;
      }

      v6 -= 2;
    }

    while (!v9);
  }

  operator new();
}

uint64_t morphun::Token::calculateWhiteSpace(uint64_t this)
{
  v1 = this;
  v2 = *(this + 39);
  if (v2 < 0)
  {
    v2 = *(this + 24);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*(this + 39))
  {
    return 0;
  }

LABEL_3:
  if (v2 < 1)
  {
    return 1;
  }

  v3 = 0;
  v4 = (this + 16);
  v5 = (v2 & 0x7FFFFFFF) - 1;
  while (1)
  {
    v6 = *(v1 + 39);
    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    v7 = v1 + 16;
    if (v3 > v6)
    {
      goto LABEL_19;
    }

LABEL_10:
    isUWhiteSpace = u_isUWhiteSpace(*(v7 + 2 * v3));
    v9 = isUWhiteSpace == 0;
    this = isUWhiteSpace != 0;
    v9 = v9 || v5 == v3++;
    if (v9)
    {
      return this;
    }
  }

  if (*(v1 + 24) >= v3)
  {
    v7 = *v4;
    goto LABEL_10;
  }

LABEL_19:
  __break(1u);
  return this;
}

uint64_t morphun::analysis::TokenFilter::end(morphun::analysis::TokenFilter *this)
{
  v1 = *(*npc<morphun::analysis::TokenStream>(*(this + 15)) + 32);

  return v1();
}

uint64_t morphun::analysis::util::FilteringTokenFilter::end(morphun::analysis::util::FilteringTokenFilter *this)
{
  v1 = *(*npc<morphun::analysis::TokenStream>(*(this + 15)) + 32);

  return v1();
}

uint64_t morphun::analysis::tokenizer::StreamingTokenizer::end(morphun::analysis::tokenizer::StreamingTokenizer *this)
{
  v2 = *(this + 66);
  if (v2 && *(this + 60) != *(this + 61))
  {
    v3 = (*(*v2 + 72))(v2);
    if ((this + 480) != v3)
    {
      std::vector<int>::__assign_with_size[abi:se200100]<int *,int *>(this + 60, *v3, v3[1], (v3[1] - *v3) >> 2);
    }

    v4 = npc<morphun::analysis::tokenattributes::SkippedOffsetsAttribute>(*(this + 66));
    *(this + 126) = (*(*v4 + 64))(v4);
  }

  morphun::analysis::util::AttributeSource::clearAttributes(this);
  v5 = npc<morphun::analysis::tokenattributes::OffsetAttribute>(*(this + 65));
  (*(*v5 + 64))(v5, *(this + 144), *(this + 144));
  result = *(this + 66);
  if (result && *(this + 60) != *(this + 61))
  {
    v7 = *(this + 126);
    v8 = *(*result + 56);

    return v8();
  }

  return result;
}

morphun::Token *morphun::Token_Tail::Token_Tail(morphun::Token_Tail *this, int a2)
{
  *this = &off_1F3CEDAC0;
  result = morphun::Token_Delim::Token_Delim(this, off_1F3CDD088, a2, a2, &word_1BE80F080, 0, &word_1BE80F080, 0);
  *result = &unk_1F3CD9A38;
  return result;
}

morphun::TokenChain *morphun::TokenChain::TokenChain(morphun::TokenChain *this, morphun::Token_Head *a2, morphun::Token_Tail *a3)
{
  *this = &off_1F3CEDD68;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 6) = 0;
  *(this + 28) = 1;
  *(this + 6) = morphun::Chunk::checkSize(a2, a3, a3);
  *this = &unk_1F3CD9B10;
  npc<morphun::Token_Tail>(a3);
  v6 = (*(*a3 + 32))(a3);
  npc<morphun::Token_Head>(a2);
  v7 = (*(*a2 + 24))(a2);
  std::vector<morphun::Token *>::vector[abi:se200100](this + 4, v6 - v7 + 1);
  *(this + 7) = 0;
  result = (*(*a2 + 24))(a2);
  *(this + 15) = result;
  v9 = *(this + 4);
  if (*(this + 5) == v9)
  {
    goto LABEL_13;
  }

  *v9 = a2;
  result = (*(*a2 + 32))(a2);
  v10 = result - *(this + 15);
  v11 = *(this + 4);
  if (v10 >= (*(this + 5) - v11) >> 3)
  {
    goto LABEL_13;
  }

  *(v11 + 8 * v10) = a2;
  result = (*(*a3 + 24))(a3);
  v12 = result - *(this + 15);
  v13 = *(this + 4);
  if (v12 >= (*(this + 5) - v13) >> 3 || (*(v13 + 8 * v12) = a3, result = (*(*a3 + 32))(a3), v14 = result - *(this + 15), v15 = *(this + 4), v14 >= (*(this + 5) - v15) >> 3))
  {
LABEL_13:
    __break(1u);
  }

  else
  {
    *(v15 + 8 * v14) = a3;
    v16 = *(a2 + 10);
    do
    {
      if (v16 == a3)
      {
        break;
      }

      npc<morphun::Token>(v16);
      if (*(v16 + 12) > *(v16 + 8))
      {
        npc<morphun::Token>(v16);
        result = (*(*v16 + 24))(v16);
        v17 = result - *(this + 15);
        v18 = *(this + 4);
        if (v17 >= (*(this + 5) - v18) >> 3)
        {
          goto LABEL_13;
        }

        *(v18 + 8 * v17) = v16;
        result = (*(*v16 + 32))(v16);
        v19 = result + ~*(this + 15);
        v20 = *(this + 4);
        if (v19 >= (*(this + 5) - v20) >> 3)
        {
          goto LABEL_13;
        }

        *(v20 + 8 * v19) = v16;
      }

      npc<morphun::Token>(v16);
      v21 = (*(*v16 + 32))(v16);
      v16 = *(v16 + 80);
      npc<morphun::Token>(v16);
    }

    while ((*(*v16 + 24))(v16) >= v21);
    return this;
  }

  return result;
}

uint64_t npc<morphun::Token_Tail>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::Chunk::checkSize(morphun::Chunk *this, const morphun::Token *a2, const morphun::Token *a3)
{
  if (!this || !a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v3 = 1;
  while (this != a2)
  {
    v3 = (v3 + 1);
    this = *(this + 10);
    if (!this)
    {
      v4 = __cxa_allocate_exception(0x38uLL);
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"end token must be linked to and eventually follow start token!");
      morphun::exception::IllegalArgumentException::IllegalArgumentException(v4, &__dst);
    }
  }

  return v3;
}

void *std::vector<morphun::Token *>::vector[abi:se200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  return result;
}

void sub_1BE5818DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<morphun::Token_Head>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::analysis::TokenFilter::close(morphun::analysis::TokenFilter *this)
{
  v1 = *(*npc<morphun::analysis::TokenStream>(*(this + 15)) + 48);

  return v1();
}

void morphun::analysis::tokenizer::StreamingTokenizer::close(std::vector<int> *this, std::vector<int>::size_type a2)
{
  this[5].__begin_ = 0;
  this[5].__end_ = 0;
  if ((this[20].__end_cap_.__value_ - this[20].__begin_) >= 0x41)
  {
    std::vector<int>::resize(this + 20, a2);
    std::vector<int>::shrink_to_fit(this + 20);
    this[20].__end_ = this[20].__begin_;
  }

  begin = this[22].__begin_;
  if (begin)
  {
    __p = 0;
    v5 = 0;
    v6 = 0;
    (*(*begin + 56))(begin, 0, &__p);
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }
}

void sub_1BE581BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *virtual thunk tomorphun::analysis::tokenattributes::PackedTokenAttributeImpl::setSkippedTextWithOffsets(void *a1, int a2, char **a3)
{
  v3 = a1 + *(*a1 - 96);
  *(v3 + 4) = a2;
  result = v3 + 24;
  if (v3 + 24 != a3)
  {
    return std::vector<int>::__assign_with_size[abi:se200100]<int *,int *>(result, *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  return result;
}

void *std::vector<int>::__assign_with_size[abi:se200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:se200100](v6, v10);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
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

void morphun::analysis::TokenStreamContainer::~TokenStreamContainer(morphun::analysis::TokenStreamContainer *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  if (*(this + 2))
  {
    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 48))(v4);
      v5 = *(this + 1);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          v7 = *(this + 2);
          (*(*v6 + 32))(v6);
        }
      }
    }
  }
}

void morphun::analysis::Analyzer_ReuseStrategy::setStoredValue(morphun::analysis::Analyzer_ReuseStrategy *this, morphun::analysis::Analyzer *a2, morphun::analysis::Analyzer_TokenStreamComponents *a3)
{
  v5 = morphun::analysis::CLASS_MUTEX(this);
  std::mutex::lock(v5);
  npc<morphun::analysis::Analyzer>(a2);
  if (*(a2 + 7) > 0x3FuLL)
  {
    v8 = *(a2 + 3);
    v7 = (a2 + 24);
    v6 = v8;
    if (v8)
    {
      v9 = v7;
      do
      {
        v10 = *(v6 + 32);
        v11 = v10 >= a3;
        v12 = v10 < a3;
        if (v11)
        {
          v9 = v6;
        }

        v6 = *(v6 + 8 * v12);
      }

      while (v6);
      if (v9 != v7 && v9[4] <= a3)
      {
        std::__tree<morphun::analysis::Analyzer_TokenStreamComponents *>::__remove_node_pointer(v7 - 1, v9);
        operator delete(v9);
      }
    }

    if (a3)
    {
      (*(*a3 + 16))(a3);
    }
  }

  else
  {
    std::__tree<morphun::analysis::Analyzer_TokenStreamComponents *>::__emplace_unique_key_args<morphun::analysis::Analyzer_TokenStreamComponents *,morphun::analysis::Analyzer_TokenStreamComponents * const&>(a2 + 40, a3);
  }

  std::mutex::unlock(v5);
}

uint64_t npc<morphun::analysis::Analyzer>(uint64_t result)
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

uint64_t npc<morphun::TokenChain const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

char **java_cast<morphun::Token_Head *,morphun::Token>(char **result)
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

CFStringRef mtok_getCleanValueCopy(uint64_t a1)
{
  v1 = npc<morphun::Token const>(a1);
  v4 = *(v1 + 40);
  v2 = v1 + 40;
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

void morphun::TokenChain::~TokenChain(morphun::TokenChain *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 40)) = a2[3];
  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  morphun::Chunk::~Chunk(this, a2 + 1);
}

void morphun::TokenChain::~TokenChain(morphun::TokenChain *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

uint64_t mtokc_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void morphun::Chunk::~Chunk(morphun::Chunk *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  if (*(this + 28) == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      do
      {
        v4 = v3[10];
        (*(*v3 + 16))(v3);
        v3 = v4;
      }

      while (v4);
    }
  }
}

void morphun::Token_Head::~Token_Head(void **this)
{
  morphun::Token::~Token(this, off_1F3CDD0E8);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::Token::~Token(this, off_1F3CDD0E8);
}

void morphun::Token::~Token(void **this, void **a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 8)) = a2[1];
  *(this + *(*this - 5)) = a2[2];
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void morphun::Token_Word::~Token_Word(void **this)
{
  morphun::Token::~Token(this, off_1F3CDD048);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::Token::~Token(this, off_1F3CDD048);
}

void morphun::Token_Tail::~Token_Tail(void **this)
{
  morphun::Token::~Token(this, off_1F3CDD090);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::Token::~Token(this, off_1F3CDD090);
}

uint64_t npc<morphun::analysis::ConfigurableAnalyzer>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t *morphun::analysis::TokenStream::DEFAULT_TOKEN_ATTRIBUTE_FACTORY(morphun::analysis::TokenStream *this)
{
  v9[4] = *MEMORY[0x1E69E9840];
  {
    if (v3)
    {
      morphun::analysis::util::AttributeFactory::DEFAULT_ATTRIBUTE_FACTORY(v3);
      v6[0] = &unk_1F3CD00C8;
      v6[1] = morphun::analysis::tokenattributes::PackedTokenAttributeImpl::create;
      v6[3] = v6;
      v7[0] = &unk_1F3CD0188;
      v7[1] = morphun::analysis::tokenattributes::KeywordAttributeImpl::create;
      v7[3] = v7;
      v8[0] = &unk_1F3CD00C8;
      v8[1] = morphun::analysis::tokenattributes::PackedTokenAttributeImpl::create;
      v8[3] = v8;
      v9[0] = &unk_1F3CD00C8;
      v9[1] = morphun::analysis::tokenattributes::PackedTokenAttributeImpl::create;
      v9[3] = v9;
      std::unordered_map<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>::unordered_map(&v4, &v5, 4);
      morphun::analysis::util::AttributeFactory::getStaticImplementation();
    }
  }

  v1 = *MEMORY[0x1E69E9840];
  return &morphun::analysis::TokenStream::DEFAULT_TOKEN_ATTRIBUTE_FACTORY(void)::DEFAULT_TOKEN_ATTRIBUTE_FACTORY_;
}

void sub_1BE5829DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::~__hash_table(&a9);
  for (i = 128; i != -32; i -= 40)
  {
    std::__function::__value_func<morphun::analysis::util::AttributeImpl * ()(void)>::~__value_func[abi:se200100]((&a14 + i));
  }

  _Unwind_Resume(a1);
}

uint64_t CLASS_MUTEX(void)
{
  {
    operator new();
  }

  result = CLASS_MUTEX(void)::classMutex;
  if (!CLASS_MUTEX(void)::classMutex)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::analysis::Tokenizer::setReader(uint64_t this, UText *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"input must not be null");
    morphun::exception::NullPointerException::NullPointerException(exception, &__dst);
  }

  if (*(this + 120))
  {
    v3 = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "T");
    morphun::exception::IllegalStateException::IllegalStateException(v3, &__dst);
  }

  *(this + 128) = a2;
  return this;
}

void sub_1BE582BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<morphun::analysis::Analyzer_TokenStreamComponents *>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return std::__tree_remove[abi:se200100]<std::__tree_node_base<void *> *>(v6, a2);
}

uint64_t *std::__tree_remove[abi:se200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

void morphun::resources::fallthroughLocaleString(std::string *this, const morphun::util::ULocale *a2)
{
  {
    if (v12)
    {
      morphun::resources::initLOCALE_FALLTHROUGH_BLACKLIST(v12);
    }
  }

  v4 = morphun::resources::LOCALE_FALLTHROUGH_BLACKLIST(void)::LOCALE_FALLTHROUGH_BLACKLIST_;
  morphun::util::ULocale::ULocale(v14, a2);
  v5 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v5 = v15;
  }

  if (v5)
  {
    v6 = (v4 + 8);
    while (1)
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = v4 + 8;
        do
        {
          v9 = std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>((v7 + 32), v17);
          if ((v9 & 0x80u) == 0)
          {
            v8 = v7;
          }

          v7 = *(v7 + ((v9 >> 4) & 8));
        }

        while (v7);
        if (v8 != v6 && (std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v17, (v8 + 32)) & 0x80) == 0)
        {
          break;
        }
      }

      morphun::util::ULocale::getFallback(v14, v13);
      morphun::util::ULocale::operator=(v14, v13);
      v10 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v10 = v15;
      }

      if (!v10)
      {
        goto LABEL_16;
      }
    }

    if (*(v8 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(this, *(v8 + 56), *(v8 + 64));
    }

    else
    {
      v11 = *(v8 + 56);
      this->__r_.__value_.__r.__words[2] = *(v8 + 72);
      *&this->__r_.__value_.__l.__data_ = v11;
    }
  }

  else
  {
LABEL_16:
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(this, *(a2 + 1), *(a2 + 2));
    }

    else
    {
      *&this->__r_.__value_.__l.__data_ = *(a2 + 8);
      this->__r_.__value_.__r.__words[2] = *(a2 + 3);
    }
  }
}

void morphun::resources::DataRegistrationService::registerDataPathForLocale(morphun::util::ULocale *a1, uint64_t a2)
{
  morphun::resources::fallthroughLocaleString(&v51, a1);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
    if (__str.__r_.__value_.__l.__size_ >= 7)
    {
      size = 7;
    }

    else
    {
      size = __str.__r_.__value_.__l.__size_;
    }
  }

  else
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) >= 7)
    {
      size = 7;
    }

    else
    {
      size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    p_str = &__str;
  }

  v5 = memcmp(p_str, "file://", size);
  if (size >= 7 && v5 == 0)
  {
    std::string::erase(&__str, 0, 7uLL);
  }

  while ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (!*(&__str.__r_.__value_.__s + 23) || *(&v49 + SHIBYTE(__str.__r_.__value_.__r.__words[2])) != 47)
    {
      goto LABEL_26;
    }

    v7 = SHIBYTE(__str.__r_.__value_.__r.__words[2]) - 1;
    --*(&__str.__r_.__value_.__s + 23);
    v8 = &__str;
LABEL_25:
    v8->__r_.__value_.__s.__data_[v7] = 0;
  }

  if (__str.__r_.__value_.__l.__size_)
  {
    v8 = __str.__r_.__value_.__r.__words[0];
    if (*(__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_ - 1) == 47)
    {
      v7 = --__str.__r_.__value_.__l.__size_;
      goto LABEL_25;
    }
  }

LABEL_26:
  memset(&v46, 0, sizeof(v46));
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &__str;
  }

  else
  {
    v9 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = __str.__r_.__value_.__l.__size_;
  }

  if (!v10)
  {
    goto LABEL_64;
  }

  if (&v46 <= v9 && (&v46.__r_.__value_.__l.__data_ + 1) > v9)
  {
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
    }

    if (v10 > 0x16)
    {
      operator new();
    }

    v53 = v10;
    if (&__dst > v9 || &__dst + v10 <= v9)
    {
      memmove(&__dst, v9, v10);
      *(&__dst + v10) = 0;
      if ((v53 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if ((v53 & 0x80u) == 0)
      {
        v15 = v53;
      }

      else
      {
        v15 = *(&__dst + 1);
      }

      std::string::append(&v46, p_dst, v15);
      if (v53 < 0)
      {
        operator delete(__dst);
      }

      goto LABEL_64;
    }

LABEL_125:
    __break(1u);
  }

  else
  {
    if (v10 < 0x17)
    {
      v12 = &v46;
    }

    else
    {
      v12 = &v46;
      std::string::__grow_by(&v46, 0x16uLL, v10 - 22, 0, 0, 0, 0);
      v46.__r_.__value_.__l.__size_ = 0;
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v46.__r_.__value_.__r.__words[0];
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_125;
      }
    }

    if (v12 <= v9 && (v12 + v10) > v9)
    {
      goto LABEL_125;
    }

    memmove(v12, v9, v10);
    v12->__r_.__value_.__s.__data_[v10] = 0;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      v46.__r_.__value_.__l.__size_ = v10;
    }

    else
    {
      *(&v46.__r_.__value_.__s + 23) = v10 & 0x7F;
    }

LABEL_64:
    v16 = std::__fs::filesystem::__weakly_canonical(&v47, &v46, 0);
    if (SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v47.__pn_.__r_.__value_.__l.__data_, v47.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v47.__pn_;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = pn;
    *(&pn.__r_.__value_.__s + 23) = 0;
    pn.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v47.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    v17 = morphun::resources::CLASS_MUTEX(v16);
    std::mutex::lock(v17);
    v19 = morphun::resources::PATHS_MAP(v18);
    npc<std::map<std::string,std::string>>(v19);
    v20 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v19, &v51);
    if (v19 + 8 != v20)
    {
      v21 = v20;
      v22 = *(v20 + 79);
      if (v22 >= 0)
      {
        v23 = *(v20 + 79);
      }

      else
      {
        v23 = *(v20 + 64);
      }

      v24 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v24 = __str.__r_.__value_.__l.__size_;
      }

      if (v23 != v24 || (v22 >= 0 ? (v25 = (v20 + 56)) : (v25 = *(v20 + 56)), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v26 = &__str) : (v26 = __str.__r_.__value_.__r.__words[0]), memcmp(v25, v26, v23)))
      {
        std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&v44, "R");
        v28 = *(v21 + 79);
        if (v28 < 0)
        {
          v29 = *(v21 + 56);
          v28 = *(v21 + 64);
        }

        else
        {
          v29 = (v21 + 56);
        }

        morphun::util::StringViewUtils::to_u16string(v29, v28, &v43);
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v43;
        }

        else
        {
          v30 = v43.__r_.__value_.__r.__words[0];
        }

        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = v43.__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::append(&v44, v30, v31);
        v45 = v44;
        memset(&v44, 0, sizeof(v44));
        std::basic_string<char16_t>::append(&v45, "", 6uLL);
        v46 = v45;
        memset(&v45, 0, sizeof(v45));
        v32 = *(a2 + 23);
        if (v32 >= 0)
        {
          v33 = a2;
        }

        else
        {
          v33 = *a2;
        }

        if (v32 >= 0)
        {
          LODWORD(v34) = *(a2 + 23);
        }

        else
        {
          v34 = *(a2 + 8);
        }

        morphun::util::StringViewUtils::to_u16string(v33, v34, &v42);
        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v42;
        }

        else
        {
          v35 = v42.__r_.__value_.__r.__words[0];
        }

        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v36 = v42.__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::append(&v46, v35, v36);
        v47.__pn_ = v46;
        memset(&v46, 0, sizeof(v46));
        std::basic_string<char16_t>::append(&v47, L").", 3uLL);
        v37 = v47.__pn_.__r_.__value_.__r.__words[2];
        pn = v47.__pn_;
        memset(&v47, 0, sizeof(v47));
        v38 = HIBYTE(v37);
        if ((v38 & 0x80u) == 0)
        {
          p_pn = &pn;
        }

        else
        {
          p_pn = pn.__r_.__value_.__r.__words[0];
        }

        if ((v38 & 0x80u) == 0)
        {
          v40 = v38;
        }

        else
        {
          v40 = pn.__r_.__value_.__l.__size_;
        }

        exception = __cxa_allocate_exception(0x38uLL);
        std::basic_string<char16_t>::basic_string<std::u16string_view,0>(&__dst, p_pn, v40);
        morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &__dst);
      }
    }

    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&pn, &word_1BE80F080);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    v27 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(v19, &__dst, &v51);
    if (!v27)
    {
      operator new();
    }

    std::string::operator=((v27 + 56), &__str);
    std::mutex::unlock(v17);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1BE583810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v57 - 65) < 0)
  {
    operator delete(*(v57 - 88));
    if ((v56 & 1) == 0)
    {
LABEL_6:
      if (a54 < 0)
      {
        operator delete(__p);
      }

      if (a47 < 0)
      {
        operator delete(a42);
      }

      if (a15 < 0)
      {
        operator delete(a10);
      }

      if (a40 < 0)
      {
        operator delete(a35);
      }

      if (a33 < 0)
      {
        operator delete(a28);
      }

      if (a21 < 0)
      {
        operator delete(a16);
      }

      if (a27 < 0)
      {
        operator delete(a22);
      }

      std::mutex::unlock(v54);
      if (*(v57 - 121) < 0)
      {
        operator delete(*(v57 - 144));
      }

      if (*(v57 - 89) < 0)
      {
        operator delete(*(v57 - 112));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v56)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v55);
  goto LABEL_6;
}

uint64_t morphun::resources::CLASS_MUTEX(morphun::resources *this)
{
  {
    operator new();
  }

  result = morphun::resources::CLASS_MUTEX(void)::classMutex;
  if (!morphun::resources::CLASS_MUTEX(void)::classMutex)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::resources::PATHS_MAP(morphun::resources *this)
{
  {
    operator new();
  }

  return morphun::resources::PATHS_MAP(void)::PATHS_MAP_;
}

uint64_t npc<std::map<std::string,std::string>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, void *a2, void *a3)
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
        if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v4 + 4) & 0x80) == 0)
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

      if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, a3) & 0x80) == 0)
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

void *morphun::Tokenizer::setMaxTokens(void *this, int a2)
{
  v3 = this;
  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 != v5)
  {
    while (*v4 != morphun::tokenizer::OversizedTokenModifier::modifyTokens)
    {
      v4 += 8;
      if (v4 == v5)
      {
        v4 = *(this + 2);
        break;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v5 - (v4 + 8);
    if (v6)
    {
      this = memmove(v4, v4 + 8, v6);
    }

    v5 = &v4[v6];
    v3[2] = v5;
  }

  if (a2 >= 1)
  {
    v7 = v3[3];
    if (v5 >= v7)
    {
      v8 = v3[1];
      v9 = (&v5[-v8] >> 3) + 1;
      if (v9 >> 61)
      {
        goto LABEL_23;
      }

      v10 = v7 - v8;
      v11 = v10 >> 2;
      if (v10 >> 2 <= v9)
      {
        v11 = v9;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<void (*)(morphun::Tokenizer const*,std::u16string_view,morphun::Token_Head *)>>(v12);
      }
    }

    else if (v5)
    {
      *v5 = morphun::tokenizer::OversizedTokenModifier::modifyTokens;
      v3[2] = v5 + 8;
      goto LABEL_21;
    }

    __break(1u);
LABEL_23:
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

LABEL_21:
  *(v3 + 8) = a2;
  return this;
}

void morphun::Tokenizer::~Tokenizer(morphun::Tokenizer *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::Tokenizer::~Tokenizer(morphun::Tokenizer *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

void morphun::Tokenizer::createTokenChain(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    if (*(a2 + 23) >= 0)
    {
      v2 = *(a2 + 23);
    }

    else
    {
      v2 = *(a2 + 8);
    }

    *(a1 + 36);
    operator new();
  }

  exception = __cxa_allocate_exception(0x38uLL);
  morphun::exception::NullPointerException::NullPointerException(exception);
}

void sub_1BE5847F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  morphun::tokenizer::RegexSplitIterator::~RegexSplitIterator(&a49);
  if (*(v54 - 105) < 0)
  {
    operator delete(*(v54 - 128));
  }

  (*(*a15 + 16))(a15);
  _Unwind_Resume(a1);
}

void morphun::util::LocaleUtils::getFallbackPair(morphun::util::LocaleUtils *this@<X0>, uint64_t a2@<X8>)
{
  v5 = morphun::util::FALLBACK_PAIR_LOCALES(this);
  v6 = npc<std::map<morphun::util::ULocale,std::pair<morphun::util::ULocale,morphun::util::ULocale>> const>(v5);
  v7 = std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::find<morphun::util::ULocale>(v6, this);
  v8 = morphun::util::FALLBACK_PAIR_LOCALES(v7);
  if ((npc<std::map<morphun::util::ULocale,std::pair<morphun::util::ULocale,morphun::util::ULocale>> const>(v8) + 8) == v7)
  {
    morphun::util::ULocale::getFallback(this, v9);
    morphun::util::ULocale::ULocale(a2, this);
    morphun::util::ULocale::ULocale(a2 + 128, v9);
  }

  else
  {
    morphun::util::ULocale::ULocale(a2, v7 + 160);
    morphun::util::ULocale::ULocale(a2 + 128, v7 + 288);
  }
}

void sub_1BE584AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  _Unwind_Resume(a1);
}

uint64_t morphun::util::FALLBACK_PAIR_LOCALES(morphun::util *this)
{
  {
    if (v2)
    {
      morphun::util::initFALLBACK_PAIR_LOCALES(v2);
    }
  }

  return morphun::util::FALLBACK_PAIR_LOCALES(void)::FALLBACK_PAIR_LOCALES_;
}

uint64_t npc<std::map<morphun::util::ULocale,std::pair<morphun::util::ULocale,morphun::util::ULocale>> const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::util::LocaleUtils::toLocale(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      memset(&v12, 0, sizeof(v12));
      v2 = *a1;
      goto LABEL_6;
    }
  }

  else if (*(a1 + 23))
  {
    memset(&v12, 0, sizeof(v12));
LABEL_6:
    morphun::util::StringViewUtils::convert(&v12, v2, v4);
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v8[0] = 0;
    v8[1] = 0;
    v9 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v7 = 0;
    morphun::util::ULocale::ULocale(a2, &v12, v10, v8, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    return;
  }

  v5 = morphun::util::LocaleUtils::ROOT(a1);

  morphun::util::ULocale::ULocale(a2, v5);
}

void sub_1BE584D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_1BE585038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53)
{
  if (*(v53 + 55) < 0)
  {
    operator delete(*(v53 + 32));
  }

  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>::operator()[abi:se200100](0, v53);
  std::__tree<std::u16string_view>::destroy(*(v54 - 96));
  _Unwind_Resume(a1);
}

unint64_t morphun::resources::DataResource::getProperties(void *a1, uint64_t *a2, unint64_t a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  v8 = morphun::resources::DataResource::getProperties(std::u16string_view,BOOL)::resources;
  result = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](a2, 2 * a3);
  v10 = v8[1];
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = result;
      if (result >= *&v10)
      {
        v12 = result % *&v10;
      }
    }

    else
    {
      v12 = (*&v10 - 1) & result;
    }

    v13 = *(*v8 + 8 * v12);
    if (v13)
    {
      for (i = *v13; i; i = *i)
      {
        v15 = i[1];
        if (v15 == result)
        {
          if (i[3] == a3)
          {
            if (!a3)
            {
LABEL_25:
              result = (i[4])();
              goto LABEL_24;
            }

            v16 = i[2];
            v17 = a3;
            v18 = a2;
            while (*v18 == *v16)
            {
              ++v16;
              v18 = (v18 + 2);
              if (!--v17)
              {
                goto LABEL_25;
              }
            }
          }
        }

        else
        {
          if (v11.u32[0] > 1uLL)
          {
            if (v15 >= *&v10)
            {
              v15 %= *&v10;
            }
          }

          else
          {
            v15 &= *&v10 - 1;
          }

          if (v15 != v12)
          {
            break;
          }
        }
      }
    }
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string<std::u16string_view,0>(__dst, a2, a3);
    morphun::exception::FileNotFoundException::FileNotFoundException(exception, __dst);
  }

  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
LABEL_24:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE585384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  MEMORY[0x1BFB49160](v15, 0x10A0C408EF24B1CLL);
  _Unwind_Resume(a1);
}

void *com::apple::morphun::locale::registration_locale_list::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  memcpy(__dst, &off_1E805A018, sizeof(__dst));
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, __dst, 16);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *std::map<std::u16string_view,char16_t const*>::map[abi:se200100](void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = a2 + 24 * a3;
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
            v16 = v14[5];
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

      v5 += 24;
    }

    while (v5 != v6);
  }

  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

LABEL_11:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;
  if (this <= __s && this + v3 > __s)
  {
    __break(1u);
    goto LABEL_11;
  }

  memmove(this, __s, v3);
}

void morphun::util::StringViewUtils::to_string(uint64_t a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  morphun::util::StringViewUtils::convert(&__p, a1, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a3 = __p;
  }
}

void sub_1BE585764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::tokenizer::NumberCleaver::modifyTokens(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  v4 = *(a4 + 80);
  if (!v4)
  {
    return;
  }

  while (*(v4 + 12) - *(v4 + 8) < 2)
  {
    v6 = v4;
LABEL_101:
    v4 = *(v6 + 80);
    if (!v4)
    {
      return;
    }
  }

  if (*(v4 + 39) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&__str, *(v4 + 16), *(v4 + 24));
  }

  else
  {
    __str = *(v4 + 16);
  }

  v7 = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = LODWORD(__str.__r_.__value_.__r.__words[1]);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v11 = p_str->__r_.__value_.__s.__data_[0];
  if ((v11 & 0xF800) == 0xD800 && (v11 & 0x400) == 0 && v9 != 1)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!__str.__r_.__value_.__l.__size_)
      {
        goto LABEL_137;
      }
    }

    else
    {
      if (!*(&__str.__r_.__value_.__s + 23))
      {
        goto LABEL_137;
      }

      v7 = &__str;
    }

    v12 = v7->__r_.__value_.__s.__data_[1];
    v25 = (v12 & 0xFC00) == 56320;
    v13 = (v11 << 10) - 56613888 + v12;
    if (v25)
    {
      v11 = v13;
    }
  }

  if (size < size - 1)
  {
    goto LABEL_137;
  }

  v14 = p_str->__r_.__value_.__s.__data_[size - 1];
  if ((v14 & 0xF800) == 0xD800 && (v14 & 0x400) != 0 && v9 >= 2)
  {
    v15 = (size - 2);
    if (size < v15)
    {
      goto LABEL_137;
    }

    v16 = p_str->__r_.__value_.__s.__data_[v15];
    v25 = (v16 & 0xFC00) == 55296;
    v17 = v14 - 56613888 + (v16 << 10);
    if (v25)
    {
      v14 = v17;
    }
  }

  v18 = u_isdigit(v11);
  if (v18 == u_isdigit(v14) || (v19 = u_isalpha(v11), v19 == u_isalpha(v14)))
  {
LABEL_99:
    v6 = v4;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_101;
  }

  if (!v18)
  {
    if (v9 < 2)
    {
      goto LABEL_81;
    }

    v20 = 1;
    while (1)
    {
      v28 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = __str.__r_.__value_.__l.__size_;
      }

      if (v28 < v20)
      {
        goto LABEL_137;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &__str;
      }

      else
      {
        v29 = __str.__r_.__value_.__r.__words[0];
      }

      v30 = v29->__r_.__value_.__s.__data_[v20];
      if ((v30 & 0xF800) != 0xD800)
      {
        goto LABEL_78;
      }

      if ((v30 & 0x400) != 0)
      {
        break;
      }

      if (v20 + 1 != v9)
      {
        if (v28 <= v20)
        {
          goto LABEL_137;
        }

        v31 = v29->__r_.__value_.__s.__data_[v20 + 1];
        v32 = (v31 & 0xFC00) == 56320;
        v33 = (v30 << 10) - 56613888 + v31;
LABEL_75:
        if (v32)
        {
          v30 = v33;
        }
      }

LABEL_78:
      if (!u_isalpha(v30))
      {
        goto LABEL_82;
      }

      if (++v20 == v9)
      {
LABEL_80:
        LODWORD(v20) = v9;
        goto LABEL_82;
      }
    }

    if (v28 < v20 - 1)
    {
      goto LABEL_137;
    }

    v34 = v29->__r_.__value_.__s.__data_[v20 - 1];
    v32 = (v34 & 0xFC00) == 55296;
    v33 = v30 - 56613888 + (v34 << 10);
    goto LABEL_75;
  }

  if (v9 >= 2)
  {
    v20 = 1;
    while (1)
    {
      v21 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = __str.__r_.__value_.__l.__size_;
      }

      if (v21 < v20)
      {
        goto LABEL_137;
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__str;
      }

      else
      {
        v22 = __str.__r_.__value_.__r.__words[0];
      }

      v23 = v22->__r_.__value_.__s.__data_[v20];
      if ((v23 & 0xF800) == 0xD800)
      {
        if ((v23 & 0x400) != 0)
        {
          if (v21 < v20 - 1)
          {
            goto LABEL_137;
          }

          v27 = v22->__r_.__value_.__s.__data_[v20 - 1];
          v25 = (v27 & 0xFC00) == 55296;
          v26 = v23 - 56613888 + (v27 << 10);
        }

        else
        {
          if (v20 + 1 == v9)
          {
            goto LABEL_56;
          }

          if (v21 <= v20)
          {
            goto LABEL_137;
          }

          v24 = v22->__r_.__value_.__s.__data_[v20 + 1];
          v25 = (v24 & 0xFC00) == 56320;
          v26 = (v23 << 10) - 56613888 + v24;
        }

        if (v25)
        {
          v23 = v26;
        }
      }

LABEL_56:
      if (!u_ispunct(v23) && !u_isdigit(v23))
      {
        goto LABEL_82;
      }

      if (++v20 == v9)
      {
        goto LABEL_80;
      }
    }
  }

LABEL_81:
  LODWORD(v20) = 1;
LABEL_82:
  v35 = v20 - (v18 != 0);
  v36 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v36 = __str.__r_.__value_.__l.__size_;
  }

  if (v36 < v35)
  {
    goto LABEL_137;
  }

  v37 = v35;
  v38 = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = &__str;
  }

  v39 = v38->__r_.__value_.__s.__data_[v37];
  if ((v39 & 0xF800) == 0xD800)
  {
    if ((v39 & 0x400) != 0)
    {
      if (v37 < 1)
      {
        goto LABEL_98;
      }

      v44 = (v37 - 1);
      if (v36 < v44)
      {
        goto LABEL_137;
      }

      v45 = v38->__r_.__value_.__s.__data_[v44];
      v42 = (v45 & 0xFC00) == 55296;
      v43 = v39 - 56613888 + (v45 << 10);
    }

    else
    {
      v40 = v37 + 1;
      if (v40 == v9)
      {
        goto LABEL_98;
      }

      if (v36 < v40)
      {
        goto LABEL_137;
      }

      v41 = v38->__r_.__value_.__s.__data_[v40];
      v42 = (v41 & 0xFC00) == 56320;
      v43 = (v39 << 10) - 56613888 + v41;
    }

    if (v42)
    {
      v39 = v43;
    }
  }

LABEL_98:
  if (u_ispunct(v39))
  {
    goto LABEL_99;
  }

  std::basic_string<char16_t>::basic_string(&v68, &__str, 0, v20, v46);
  v47 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v47 = __str.__r_.__value_.__l.__size_;
    if (__str.__r_.__value_.__l.__size_ >= v20)
    {
      v48 = __str.__r_.__value_.__r.__words[0];
      goto LABEL_108;
    }

LABEL_136:
    std::basic_string<char16_t>::__throw_out_of_range[abi:se200100]();
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < v20)
  {
    goto LABEL_136;
  }

  v48 = &__str;
LABEL_108:
  v49 = v47 - v20;
  if (v49 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (v49 > 0xA)
  {
    if ((v49 | 3) == 0xB)
    {
      v50 = 13;
    }

    else
    {
      v50 = (v49 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v50);
  }

  v67 = v49;
  v51 = (&v48->__r_.__value_.__l.__data_ + 2 * v20);
  v52 = (&v65 + 2 * v49);
  if (&v65 > v51 || v52 <= v51)
  {
    if (v47 != v20)
    {
      memmove(&v65, v51, 2 * v49);
    }

    *v52 = 0;
    memset(v64, 0, sizeof(v64));
    memset(__p, 0, sizeof(__p));
    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = &v68;
    }

    else
    {
      v53 = v68.__r_.__value_.__r.__words[0];
    }

    if ((v68.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = HIBYTE(v68.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v54 = v68.__r_.__value_.__r.__words[1];
    }

    npc<morphun::Tokenizer const>(a1);
    v55 = *(a1 + 48);
    npc<morphun::tokenizer::TokenExtractor const>(v55);
    morphun::util::StringViewUtils::lowercase(v64, v53, v54, v55 + 8);
    v56 = v67;
    v57 = v65;
    v58 = v66;
    v59 = *(a1 + 48);
    npc<morphun::tokenizer::TokenExtractor const>(v59);
    if ((v56 & 0x80u) == 0)
    {
      v60 = &v65;
    }

    else
    {
      v60 = v57;
    }

    if ((v56 & 0x80u) == 0)
    {
      v61 = v56;
    }

    else
    {
      v61 = v58;
    }

    morphun::util::StringViewUtils::lowercase(__p, v60, v61, v59 + 8);
    operator new();
  }

LABEL_137:
  __break(1u);
}

void sub_1BE585F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

void morphun::tokenizer::RegexSplitIterator::~RegexSplitIterator(morphun::tokenizer::RegexSplitIterator *this)
{
  icu4cxx::RegularExpression::~RegularExpression(this + 8);
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }
}

{
  morphun::tokenizer::RegexSplitIterator::~RegexSplitIterator(this);

  JUMPOUT(0x1BFB49160);
}

void icu4cxx::RegularExpression::~RegularExpression(URegularExpression **this)
{
  if (*(this + 8) == 1)
  {
    uregex_close(*this);
  }
}

void morphun::tokenizer::ICUTokenExtractorIterator::~ICUTokenExtractorIterator(morphun::tokenizer::ICUTokenExtractorIterator *this)
{
  *this = &unk_1F3CD0698;
  v2 = *(this + 1);
  v3 = CLASS_MUTEX();
  std::mutex::lock(v3);
  if (v2)
  {
    v4 = gTokenizerCache;
    if (gTokenizerCache && (v5 = *(gTokenizerCache + 8), v6 = (v5 - *gTokenizerCache) >> 3, v6 <= 0x40))
    {
      v7 = *(gTokenizerCache + 16);
      if (v5 >= v7)
      {
        v8 = v7 - *gTokenizerCache;
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
        JUMPOUT(0x1BE5861E4);
      }

      *v5 = v2;
      *(v4 + 8) = v5 + 1;
    }

    else
    {
      ubrk_close();
    }
  }

  std::mutex::unlock(v3);
  *(this + 1) = 0;
  if (*(this + 16) == 1)
  {
    ubrk_close();
  }
}

{
  morphun::tokenizer::ICUTokenExtractorIterator::~ICUTokenExtractorIterator(this);

  JUMPOUT(0x1BFB49160);
}

void morphun::Token_Delim::~Token_Delim(void **this)
{
  morphun::Token::~Token(this, off_1F3CDCFB0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::Token::~Token(this, off_1F3CDCFB0);
}

BOOL morphun::readConfig(uint64_t a1, uint64_t a2)
{
  std::operator+<char16_t>(&v9, "/", a1);
  std::basic_string<char16_t>::append(&v9, L".properties", 0xBuLL);
  __p = v9;
  memset(&v9, 0, sizeof(v9));
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

  morphun::resources::DataResource::getProperties(&v11, p_p, size, 1);
  npc<std::map<std::u16string_view,char16_t const*>>(a2);
  v5 = a2 + 8;
  std::__tree<std::u16string_view>::destroy(*(a2 + 8));
  v6 = v12;
  *a2 = v11;
  *(a2 + 8) = v6;
  v7 = v13;
  *(a2 + 16) = v13;
  if (v7)
  {
    v6[2] = v5;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
    v6 = 0;
  }

  else
  {
    *a2 = v5;
  }

  std::__tree<std::u16string_view>::destroy(v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return *(a2 + 16) != 0;
}

void sub_1BE586440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::__tree<std::u16string_view>::destroy(*(v21 - 32));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void *com::apple::morphun::tokenizer::config_en::getContent@<X0>(void *a1@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = xmmword_1E805A918;
  v5 = L"DefaultTokenizer";
  result = std::map<std::u16string_view,char16_t const*>::map[abi:se200100](a1, &v4, 1);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t npc<std::map<std::u16string_view,char16_t const*>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::TokenizerFactory::createTokenizerObject(void (***a1)(std::basic_string<char16_t> *__return_ptr, void), uint64_t a2)
{
  v4 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(a2, L"tokenizer.implementation.class", 0x1EuLL);
  if (a2 + 8 != v4)
  {
    v5 = 0;
    v6 = *(v4 + 48);
    v7 = 12;
    do
    {
      v8 = v5 + ((v7 - v5) >> 1);
      v9 = u_strcmp(v6, (&morphun::TokenizerFactory::createTokenizerObject(morphun::util::ULocale const&,std::map<std::u16string_view,char16_t const*> const&)::TOKENIZER_CONSTRUCTORS)[2 * v8]);
      if (v9 < 0)
      {
        v7 = v8 - 1;
      }

      else
      {
        if (!v9)
        {
          if (morphun::util::gLogLevel <= 2)
          {
            (**a1)(&v17, a1);
            std::basic_string<char16_t>::insert(&v17, L"The tokenizer for ", 0x12, v14);
            v18 = v17;
            memset(&v17, 0, sizeof(v17));
            std::basic_string<char16_t>::append(&v18, L" is being constructed for the first time.", 0x29uLL);
            __p = v18;
            memset(&v18, 0, sizeof(v18));
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

            morphun::util::Logger::infoComponent("T", p_p, size);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v18.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v17.__r_.__value_.__l.__data_);
            }
          }

          operator new();
        }

        v5 = v8 + 1;
      }
    }

    while (v5 <= v7);
  }

  (**a1)(&v18, a1);
  std::basic_string<char16_t>::insert(&v18, L"Error creating tokenizer for locale ", 0x24, v10);
  __p = v18;
  memset(&v18, 0, sizeof(v18));
  if (morphun::util::gLogLevel <= 4)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &__p;
    }

    else
    {
      v11 = __p.__r_.__value_.__r.__words[0];
    }

    morphun::util::logToTopOfStackLogger(4, 0, v11);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  exception = __cxa_allocate_exception(0x38uLL);
  (**a1)(&v18, a1);
  std::basic_string<char16_t>::insert(&v18, L"Error creating tokenizer for locale ", 0x24, v13);
  __p = v18;
  memset(&v18, 0, sizeof(v18));
  morphun::exception::InvalidConfigurationException::InvalidConfigurationException(exception, &__p);
}

void sub_1BE5868F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  v3 = a1 + 8;
  v4 = *(a1 + 8);
  if (!v4)
  {
    return v3;
  }

  v7 = a1 + 8;
  do
  {
    v8 = std::less<std::u16string_view>::operator()[abi:se200100](*(v4 + 32), *(v4 + 40), a2, a3);
    if (v8)
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    if (!v8)
    {
      v7 = v4;
    }

    v4 = *(v4 + v9);
  }

  while (v4);
  if (v7 == v3 || std::less<std::u16string_view>::operator()[abi:se200100](a2, a3, *(v7 + 32), *(v7 + 40)))
  {
    return v3;
  }

  return v7;
}

void morphun::util::ULocale::toString(morphun::util::ULocale *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  v3 = *(this + 127);
  if (v3 < 0)
  {
    v4 = *(this + 13);
    v3 = *(this + 14);
  }

  else
  {
    v4 = this + 104;
  }

  morphun::util::StringViewUtils::to_u16string(v4, v3, a2);
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::insert(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __pos, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __n)
{
  v5 = __pos;
  v6 = this;
  if (__pos || !__s)
  {
    v7 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v7 < 0)
    {
      size = this->__r_.__value_.__l.__size_;
      v8 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v8 = 10;
      size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    if (v8 - size < __s)
    {
      std::basic_string<char16_t>::__grow_by_and_replace(this, v8, __s + size - v8, size, 0, 0, __s, v5);
      return v6;
    }

    if (!__s)
    {
      return v6;
    }

    v10 = this;
    if ((v7 & 0x80000000) != 0)
    {
      v10 = this->__r_.__value_.__r.__words[0];
      if (!size)
      {
LABEL_21:
        memmove(v10, v5, 2 * __s);
        v13 = __s + size;
        if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
        {
          v6->__r_.__value_.__l.__size_ = v13;
        }

        else
        {
          *(&v6->__r_.__value_.__s + 23) = v13 & 0x7F;
        }

        v10->__r_.__value_.__s.__data_[v13] = 0;
        return v6;
      }
    }

    else if (!size)
    {
      goto LABEL_21;
    }

    if ((size & 0x8000000000000000) == 0)
    {
      if (v10 + 2 * size <= v5 || v10 > v5)
      {
        v12 = 0;
      }

      else
      {
        v12 = __s;
      }

      v5 += v12;
      memmove(v10 + 2 * __s, v10, 2 * size);
      goto LABEL_21;
    }
  }

  __break(1u);
  return this;
}

void morphun::util::Logger::infoComponent(uint64_t a1, std::basic_string<char16_t> *__src, unint64_t a3)
{
  if (morphun::util::gLogLevel <= 2)
  {
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
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

    *(&v11.__r_.__value_.__s + 23) = a3;
    v5 = (&v11 + 2 * a3);
    if (&v11 <= __src && v5 > __src)
    {
      __break(1u);
    }

    else
    {
      if (a3)
      {
        memmove(&v11, __src, 2 * a3);
      }

      v5->__r_.__value_.__s.__data_[0] = 0;
      {
        operator new();
      }

      if (!morphun::util::PLATFORM_LOG_STRING(void)::PLATFORM_LOG_STRING_)
      {
        exception = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(exception);
      }

      v6 = *(morphun::util::PLATFORM_LOG_STRING(void)::PLATFORM_LOG_STRING_ + 23);
      if (v6 >= 0)
      {
        v7 = morphun::util::PLATFORM_LOG_STRING(void)::PLATFORM_LOG_STRING_;
      }

      else
      {
        v7 = *morphun::util::PLATFORM_LOG_STRING(void)::PLATFORM_LOG_STRING_;
      }

      if (v6 >= 0)
      {
        v8 = *(morphun::util::PLATFORM_LOG_STRING(void)::PLATFORM_LOG_STRING_ + 23);
      }

      else
      {
        v8 = *(morphun::util::PLATFORM_LOG_STRING(void)::PLATFORM_LOG_STRING_ + 8);
      }

      std::basic_string<char16_t>::append(&v11, v7, v8);
      __p = v11;
      memset(&v11, 0, sizeof(v11));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      morphun::util::logToTopOfStackLogger(2, a1, p_p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1BE586DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v27, 0x1012C40EC159624);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void morphun::util::generatePlatformString(std::basic_string<char16_t> *this)
{
  v33 = *MEMORY[0x1E69E9840];
  memset(&v30, 0, sizeof(v30));
  v2 = *MEMORY[0x1E695E480];
  fileURL = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/System/Library/CoreServices/SystemVersion.plist", kCFURLPOSIXPathStyle, 0);
  if (fileURL)
  {
    v27.__r_.__value_.__r.__words[0] = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v27.__r_.__value_.__r.__words[0])
    {
      v3 = CFReadStreamCreateWithFile(v2, fileURL);
      stream.__r_.__value_.__r.__words[0] = v3;
      if (v3)
      {
        if (CFReadStreamOpen(v3))
        {
          theDict[0] = CFPropertyListCreateWithStream(v2, stream.__r_.__value_.__l.__data_, 0, 0, 0, 0);
          v4 = CFGetTypeID(theDict[0]);
          if (v4 == CFDictionaryGetTypeID())
          {
            Value = CFDictionaryGetValue(theDict[0], @"ProductName");
            if (Value)
            {
              morphun::util::CFUtils::to_u16string(&__p, Value);
              v6 = __p.sysname[23] >= 0 ? &__p : *__p.sysname;
              v7 = __p.sysname[23] >= 0 ? __p.sysname[23] : *&__p.sysname[8];
              std::basic_string<char16_t>::append(&v30, v6, v7);
              if (__p.sysname[23] < 0)
              {
                operator delete(*__p.sysname);
              }
            }

            v8 = CFDictionaryGetValue(theDict[0], @"ProductVersion");
            if (v8)
            {
              morphun::util::CFUtils::to_u16string(&__dst, v8);
              std::basic_string<char16_t>::insert(&__dst, "-", 1, v9);
              *&__p.sysname[16] = *(&__dst.__r_.__value_.__l + 2);
              *__p.sysname = *&__dst.__r_.__value_.__l.__data_;
              memset(&__dst, 0, sizeof(__dst));
              if (__p.sysname[23] >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = *__p.sysname;
              }

              if (__p.sysname[23] >= 0)
              {
                v11 = HIBYTE(*&__p.sysname[16]);
              }

              else
              {
                v11 = *&__p.sysname[8];
              }

              std::basic_string<char16_t>::append(&v30, p_p, v11);
              if (__p.sysname[23] < 0)
              {
                operator delete(*__p.sysname);
              }

              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }
            }
          }

          morphun::util::AutoCRelease<void const*,&(CFRelease)>::~AutoCRelease(theDict);
        }

        CFReadStreamClose(stream.__r_.__value_.__l.__data_);
      }

      morphun::util::AutoCRelease<__CFReadStream *,&(CFRelease)>::~AutoCRelease(&stream.__r_.__value_.__l.__data_);
    }

    morphun::util::AutoCRelease<__CFDictionary *,&(CFRelease)>::~AutoCRelease(&v27.__r_.__value_.__l.__data_);
  }

  if (!uname(&__p))
  {
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v13 = strlen(__p.sysname);
      morphun::util::StringViewUtils::to_u16string(__p.sysname, v13, &v27);
      std::basic_string<char16_t>::append(&v27, "-", 1uLL);
      __dst = v27;
      memset(&v27, 0, sizeof(v27));
      v14 = strlen(__p.release);
      morphun::util::StringViewUtils::to_u16string(__p.release, v14, &stream);
      if ((stream.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_stream = &stream;
      }

      else
      {
        p_stream = stream.__r_.__value_.__r.__words[0];
      }

      if ((stream.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = HIBYTE(stream.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v16 = stream.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::append(&__dst, p_stream, v16);
      theDict[0] = __dst.__r_.__value_.__l.__size_;
      v17 = __dst.__r_.__value_.__r.__words[0];
      *(theDict + 7) = *(&__dst.__r_.__value_.__r.__words[1] + 7);
      v18 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      memset(&__dst, 0, sizeof(__dst));
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      v30.__r_.__value_.__r.__words[0] = v17;
      v30.__r_.__value_.__l.__size_ = theDict[0];
      *(&v30.__r_.__value_.__r.__words[1] + 7) = *(theDict + 7);
      *(&v30.__r_.__value_.__s + 23) = v18;
      if (SHIBYTE(stream.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(stream.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }
    }

    v19 = strlen(__p.machine);
    morphun::util::StringViewUtils::to_u16string(__p.machine, v19, &v27);
    std::basic_string<char16_t>::insert(&v27, "-", 1, v20);
    __dst = v27;
    memset(&v27, 0, sizeof(v27));
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v22 = __dst.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v30, p_dst, v22);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "P");
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v30;
  }

  else
  {
    v23 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = v30.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&__dst, v23, v24);
  *this = __dst;
  morphun::util::AutoCRelease<__CFURL const*,&(CFRelease)>::~AutoCRelease(&fileURL);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1BE587280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, const void *a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, const void *a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  morphun::util::AutoCRelease<void const*,&(CFRelease)>::~AutoCRelease(&a35);
  morphun::util::AutoCRelease<__CFReadStream *,&(CFRelease)>::~AutoCRelease(&a9);
  morphun::util::AutoCRelease<__CFDictionary *,&(CFRelease)>::~AutoCRelease(&a15);
  morphun::util::AutoCRelease<__CFURL const*,&(CFRelease)>::~AutoCRelease(&a28);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

const void **morphun::util::AutoCRelease<void const*,&(CFRelease)>::~AutoCRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **morphun::util::AutoCRelease<__CFReadStream *,&(CFRelease)>::~AutoCRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **morphun::util::AutoCRelease<__CFDictionary *,&(CFRelease)>::~AutoCRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **morphun::util::AutoCRelease<__CFURL const*,&(CFRelease)>::~AutoCRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void morphun::util::logToTopOfStackLogger(morphun::util *a1, uint64_t a2, uint64_t a3)
{
  v6 = morphun::util::CLASS_MUTEX(a1);
  std::mutex::lock(v6);
  v8 = morphun::util::LOGGER_CACHE(v7);
  v9 = npc<std::vector<std::pair<void *,void (*)(void *,MLogLevel,char16_t const*,char16_t const*)>>>(v8);
  v10 = v9[1];
  if (*v9 != v10)
  {
    (*(v10 - 8))(*(v10 - 16), a1, a2, a3);
  }

  std::mutex::unlock(v6);
}

uint64_t morphun::util::CLASS_MUTEX(morphun::util *this)
{
  {
    operator new();
  }

  result = morphun::util::CLASS_MUTEX(void)::classMutex;
  if (!morphun::util::CLASS_MUTEX(void)::classMutex)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::util::LOGGER_CACHE(morphun::util *this)
{
  v3 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = morphun::util::LOGGER_CACHE(void)::LOGGER_CACHE_;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BE5876BC(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x20C40960023A9);
  _Unwind_Resume(a1);
}

uint64_t morphun::util::getOSLog(morphun::util *this)
{
  {
    if (v3)
    {
      morphun::util::getOSLog(void)::log = os_log_create("com.apple.morphun", "libmorphun");
    }
  }

  return v1[56];
}

void sub_1BE5877D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<std::vector<std::pair<void *,void (*)(void *,MLogLevel,char16_t const*,char16_t const*)>>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void morphun::util::logOS(NSObject *a1, uint64_t a2, uint64_t a3, _WORD *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  {
    goto LABEL_41;
  }

  while (1)
  {
    memset(&__p, 0, sizeof(__p));
    if (a4)
    {
      break;
    }

    __break(1u);
LABEL_41:
    {
      v19 = getprogname();
      v20 = "unknown";
      if (v19)
      {
        v20 = v19;
      }

      morphun::util::logOS(void *,MLogLevel,char16_t const*,char16_t const*)::progname = v20;
    }
  }

  if (*a4)
  {
    v7 = 0;
    do
    {
      v8 = v7 + 1;
    }

    while (a4[++v7]);
  }

  else
  {
    v8 = 0;
  }

  morphun::util::StringViewUtils::convert(&__p, a4, v8);
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1 || !os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136446467;
      v23 = morphun::util::logOS(void *,MLogLevel,char16_t const*,char16_t const*)::progname;
      v24 = 2081;
      v25 = p_p;
      v11 = "[DEBUG] [%{public}s] %{private}s";
    }

    else
    {
      if (!os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      v17 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v17 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136446467;
      v23 = morphun::util::logOS(void *,MLogLevel,char16_t const*,char16_t const*)::progname;
      v24 = 2081;
      v25 = v17;
      v11 = "[TRACE] [%{public}s] %{private}s";
    }

    v12 = a1;
    v13 = OS_LOG_TYPE_DEBUG;
LABEL_36:
    _os_log_impl(&dword_1BE56D000, v12, v13, v11, buf, 0x16u);
    goto LABEL_37;
  }

  if (a2 == 2)
  {
    if (!os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
    {
      goto LABEL_37;
    }

    v15 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446466;
    v23 = morphun::util::logOS(void *,MLogLevel,char16_t const*,char16_t const*)::progname;
    v24 = 2082;
    v25 = v15;
    v11 = "[INFO] [%{public}s] %{public}s";
LABEL_30:
    v12 = a1;
    v13 = OS_LOG_TYPE_INFO;
    goto LABEL_36;
  }

  if (a2 == 3)
  {
    if (!os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
    {
      goto LABEL_37;
    }

    v16 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446466;
    v23 = morphun::util::logOS(void *,MLogLevel,char16_t const*,char16_t const*)::progname;
    v24 = 2082;
    v25 = v16;
    v11 = "[WARNING] [%{public}s] %{public}s";
    goto LABEL_30;
  }

  if (a2 == 4 && os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v10 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446466;
    v23 = morphun::util::logOS(void *,MLogLevel,char16_t const*,char16_t const*)::progname;
    v24 = 2082;
    v25 = v10;
    v11 = "[ERROR] [%{public}s] %{public}s";
    v12 = a1;
    v13 = OS_LOG_TYPE_ERROR;
    goto LABEL_36;
  }

LABEL_37:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1BE587DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v32 & 1) == 0)
    {
LABEL_6:
      MEMORY[0x1BFB49160](v29, v28);
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

uint64_t morphun::tokenizer::TokenExtractor::createWordsToNotSplit(uint64_t a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(a2, "t", 0x1CuLL);
  if (a2 + 8 != v3)
  {
    v4 = *(v3 + 48);
    if (*v4)
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, v4);
      if (morphun::util::gLogLevel <= 1)
      {
        std::operator+<char16_t>(&__p, L"Loading non-decompound list from ", &__dst);
        if (morphun::util::gLogLevel <= 1)
        {
          if (v8 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          morphun::util::logToTopOfStackLogger(1, 0, p_p);
        }

        if (v8 < 0)
        {
          operator delete(__p);
        }
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      operator new();
    }
  }

  return 0;
}

void sub_1BE58829C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x1BE5882C0);
}

uint64_t icu4cxx::UnicodeSet::UnicodeSet(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *a1 = uset_openPattern();
  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 1;
  *a1 = uset_openPatternOptions();
  return a1;
}

uint64_t morphun::grammar::synthesis::RuGrammarSynthesizer_AboutPrepositionLookupFunction::getArticle(morphun::grammar::synthesis::RuGrammarSynthesizer_AboutPrepositionLookupFunction *this, const morphun::dialog::SemanticFeatureModel_DisplayValue *a2)
{
  v4 = (*(*a2 + 24))(a2);
  v18[1] = 0;
  v19 = 0;
  v18[0] = 0;
  v5 = *(v4 + 23);
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = morphun::util::LocaleUtils::RUSSIAN(v4);
  if ((v5 & 0x80u) == 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if ((v5 & 0x80u) == 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  morphun::util::StringViewUtils::lowercase(v18, v9, v10, v8);
  if ((std::basic_string<char16_t>::starts_with[abi:se200100](v18, word_1BE800358) & 1) != 0 || (std::basic_string<char16_t>::starts_with[abi:se200100](v18, word_1BE80035E) & 1) != 0 || (v11 = std::basic_string<char16_t>::starts_with[abi:se200100](v18, word_1BE800364), v11))
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE80956A);
    v12 = (*(*this + 32))(this, a2, __p);
  }

  else
  {
    v15 = morphun::util::LocaleUtils::RUSSIAN(v11);
    if (morphun::dictionary::PhraseProperties::isStartsWithVowel(v15, v4))
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE809564);
    }

    else
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE809560);
    }

    v12 = (*(*this + 32))(this, a2, __p);
  }

  v13 = v12;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  return v13;
}

void sub_1BE5885F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t *std::basic_string<char16_t>::starts_with[abi:se200100](uint64_t *result, unsigned __int16 *a2)
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
    return std::u16string_view::starts_with[abi:se200100](v9, a2, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

std::logic_error *std::length_error::length_error[abi:se200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_out_of_range[abi:se200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:se200100](exception, a1);
  __cxa_throw(exception, off_1E8058080, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:se200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

uint64_t morphun::grammar::synthesis::RuGrammarSynthesizer_ArticleLookupFunction::getFeatureValue(void *a1, uint64_t a2)
{
  if (a1[3] && (v4 = (*(*a2 + 32))(a2)) != 0)
  {
    v5 = *(*a1 + 32);

    return v5(a1, a2, v4);
  }

  else
  {
    v7 = *(*a1 + 72);

    return v7(a1, a2);
  }
}

morphun::dialog::DefaultArticleLookupFunction *morphun::grammar::synthesis::RuGrammarSynthesizer_ArticleLookupFunction::RuGrammarSynthesizer_ArticleLookupFunction(morphun::dialog::DefaultArticleLookupFunction *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a4 + 8);
  }

  v9 = morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(a1, (a2 + 1), a3, v8 != 0, 1);
  v10 = *a2;
  *v9 = *a2;
  *(a1 + *(v10 - 56)) = a2[4];
  *(a1 + *(*a1 - 40)) = a2[5];
  v11 = *(a4 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a4 + 8);
  }

  if (v11)
  {
    v12 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a3 + 8, a4);
    if (a3 + 16 == v12)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(v12 + 56);
    }
  }

  *(a1 + 3) = v11;
  return a1;
}

uint64_t morphun::grammar::synthesis::RuGrammarSynthesizer_InPrepositionLookupFunction::getArticle(morphun::grammar::synthesis::RuGrammarSynthesizer_InPrepositionLookupFunction *this, const morphun::dialog::SemanticFeatureModel_DisplayValue *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 24))(a2);
  {
    operator new();
  }

  if (!morphun::grammar::synthesis::RuGrammarSynthesizer_InPrepositionLookupFunction::IN_WORDS(void)::IN_WORDS_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

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

  if (std::__tree<std::u16string_view>::__count_unique<std::u16string_view>(*(morphun::grammar::synthesis::RuGrammarSynthesizer_InPrepositionLookupFunction::IN_WORDS(void)::IN_WORDS_ + 8), v6, v7) || (std::basic_string<char16_t>::starts_with[abi:se200100](v4, word_1BE80037E) & 1) != 0 || (std::basic_string<char16_t>::starts_with[abi:se200100](v4, word_1BE800388) & 1) != 0)
  {
    goto LABEL_15;
  }

  {
    operator new();
  }

  if (!morphun::grammar::synthesis::RuGrammarSynthesizer_InPrepositionLookupFunction::IN_FIRST_CHAR(void)::IN_FIRST_CHAR_)
  {
    v13 = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(v13);
  }

  if (morphun::grammar::synthesis::RuGrammarSynthesizer::startsWith2Consonant(v4, *morphun::grammar::synthesis::RuGrammarSynthesizer_InPrepositionLookupFunction::IN_FIRST_CHAR(void)::IN_FIRST_CHAR_))
  {
LABEL_15:
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE809576);
    v8 = (*(*this + 32))(this, a2, __p);
  }

  else
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE809572);
    v8 = (*(*this + 32))(this, a2, __p);
  }

  v9 = v8;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_1BE588D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  MEMORY[0x1BFB49160](v14, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::u16string_view>::__count_unique<std::u16string_view>(void *a1, unsigned __int16 *a2, unint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    v6 = 1;
    do
    {
      v7 = v5[4];
      v8 = v5[5];
      if (!std::less<std::u16string_view>::operator()[abi:se200100](a2, a3, v7, v8))
      {
        if (!std::less<std::u16string_view>::operator()[abi:se200100](v7, v8, a2, a3))
        {
          return v6;
        }

        ++v5;
      }

      v5 = *v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t morphun::util::Validate::notNull<icu4cxx::UnicodeSet>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"Input argument is null.");
    morphun::exception::NullPointerException::NullPointerException(exception, &__dst);
  }

  return result;
}

void sub_1BE588F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *std::set<std::u16string_view>::set[abi:se200100](void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v5 = a2;
    v6 = a2 + 16 * a3;
    do
    {
      std::__tree<std::u16string_view>::__emplace_hint_unique_key_args<std::u16string_view,std::u16string_view const&>(a1, v4, *v5, *(v5 + 8));
      v5 += 16;
    }

    while (v5 != v6);
  }

  return a1;
}

void *std::__tree<std::u16string_view>::__emplace_hint_unique_key_args<std::u16string_view,std::u16string_view const&>(void *a1, void *a2, unsigned __int16 *a3, unint64_t a4)
{
  result = std::__tree<std::u16string_view>::__find_equal<std::u16string_view>(a1, a2, &v6, &v5, a3, a4);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void *std::__tree<std::u16string_view>::__find_equal<std::u16string_view>(void *a1, void *a2, void *a3, void *a4, unsigned __int16 *a5, unint64_t a6)
{
  v11 = a1 + 1;
  if (a1 + 1 == a2 || (v13 = a2[4], v14 = a2[5], std::less<std::u16string_view>::operator()[abi:se200100](a5, a6, v13, v14)))
  {
    v15 = *a2;
    if (*a1 == a2)
    {
      v17 = a2;
LABEL_17:
      if (v15)
      {
        *a3 = v17;
        return v17 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v15)
    {
      v16 = *a2;
      do
      {
        v17 = v16;
        v16 = v16[1];
      }

      while (v16);
    }

    else
    {
      v20 = a2;
      do
      {
        v17 = v20[2];
        v21 = *v17 == v20;
        v20 = v17;
      }

      while (v21);
    }

    if (std::less<std::u16string_view>::operator()[abi:se200100](v17[4], v17[5], a5, a6))
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!std::less<std::u16string_view>::operator()[abi:se200100](v13, v14, a5, a6))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v18 = a2[1];
    if (v18)
    {
      v19 = a2[1];
      do
      {
        a4 = v19;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      v22 = a2;
      do
      {
        a4 = v22[2];
        v21 = *a4 == v22;
        v22 = a4;
      }

      while (!v21);
    }

    if (a4 == v11 || std::less<std::u16string_view>::operator()[abi:se200100](a5, a6, a4[4], a4[5]))
    {
      if (v18)
      {
        *a3 = a4;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }

      return a4;
    }
  }

  return std::__tree<std::u16string_view>::__find_equal<std::u16string_view>(a1, a3, a5, a6);
}

void *std::__tree<std::u16string_view>::__find_equal<std::u16string_view>(uint64_t a1, void *a2, unsigned __int16 *a3, unint64_t a4)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    do
    {
      while (1)
      {
        v9 = v5;
        v10 = *(v5 + 32);
        v11 = *(v5 + 40);
        if (!std::less<std::u16string_view>::operator()[abi:se200100](a3, a4, v10, v11))
        {
          break;
        }

        v5 = *v9;
        v6 = v9;
        if (!*v9)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::u16string_view>::operator()[abi:se200100](v10, v11, a3, a4))
      {
        break;
      }

      v6 = v9 + 1;
      v5 = v9[1];
    }

    while (v5);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_9:
  *a2 = v9;
  return v6;
}

uint64_t npc<morphun::analysis::tokenattributes::LemmaMapping const>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

CFStringRef matlm_createLemma(uint64_t a1)
{
  v1 = npc<morphun::analysis::tokenattributes::LemmaMapping const>(a1);
  v4 = *(v1 + 24);
  v2 = v1 + 24;
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

uint64_t morphun::grammar::synthesis::RuGrammarSynthesizer_RuDisplayFunction::getDisplayValue(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v242[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (v4 != *(a2 + 16))
  {
    v230 = &unk_1F3CD8370;
    if (*(v4 + 31) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v231, *(v4 + 8), *(v4 + 16));
    }

    else
    {
      v8 = *(v4 + 8);
      v231.__r_.__value_.__r.__words[2] = *(v4 + 24);
      *&v231.__r_.__value_.__l.__data_ = v8;
    }

    std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](v232, v4 + 32);
    if (!*(a3 + 16) || ((v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v9 = &v231) : (v9 = v231.__r_.__value_.__r.__words[0]), (v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (size = HIBYTE(v231.__r_.__value_.__r.__words[2])) : (size = v231.__r_.__value_.__l.__size_), !morphun::util::UnicodeSetUtils::containsSome(a1[5] + 512, v9, size) || ((v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v11 = &v231) : (v11 = v231.__r_.__value_.__r.__words[0]), (v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v12 = HIBYTE(v231.__r_.__value_.__r.__words[2])) : (v12 = v231.__r_.__value_.__l.__size_), morphun::util::UnicodeSetUtils::containsSome((a1 + 6), v11, v12))))
    {
      operator new();
    }

    morphun::grammar::synthesis::getFeatureValue(&v229, a3, a1[8]);
    morphun::grammar::synthesis::getFeatureValue(&v228, a3, a1[9]);
    morphun::grammar::synthesis::getFeatureValue(&v227, a3, a1[10]);
    morphun::grammar::synthesis::getFeatureValue(&v226, a3, a1[11]);
    morphun::grammar::synthesis::getFeatureValue(&v225, a3, a1[12]);
    v16 = HIBYTE(v229.__r_.__value_.__r.__words[2]);
    if ((v229.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v229.__r_.__value_.__l.__size_;
    }

    if (!v16)
    {
      v23 = morphun::grammar::synthesis::GrammemeConstants::CASE_NOMINATIVE(v15);
      goto LABEL_59;
    }

    v17 = morphun::grammar::synthesis::GrammemeConstants::CASE_ABLATIVE(v15);
    v18 = HIBYTE(v229.__r_.__value_.__r.__words[2]);
    if ((v229.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v229.__r_.__value_.__l.__size_;
    }

    v19 = *(v17 + 23);
    v20 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(v17 + 8);
    }

    if (v18 == v19)
    {
      if (!v18)
      {
LABEL_38:
        v23 = morphun::grammar::synthesis::GrammemeConstants::CASE_INSTRUMENTAL(v17);
        goto LABEL_59;
      }

      if (v20 >= 0)
      {
        v21 = v17;
      }

      else
      {
        v21 = *v17;
      }

      v22 = &v229;
      if ((v229.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v229.__r_.__value_.__r.__words[0];
      }

      while (*v21 == v22->__r_.__value_.__s.__data_[0])
      {
        v22 = (v22 + 2);
        ++v21;
        if (!--v18)
        {
          goto LABEL_38;
        }
      }
    }

    v24 = morphun::grammar::synthesis::GrammemeConstants::CASE_LOCATIVE(v17);
    v25 = v229.__r_.__value_.__l.__size_;
    if ((v229.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v229.__r_.__value_.__r.__words[2]);
    }

    v26 = *(v24 + 23);
    v27 = v26;
    if ((v26 & 0x80u) != 0)
    {
      v26 = *(v24 + 8);
    }

    if (v25 != v26)
    {
      goto LABEL_60;
    }

    if (v25)
    {
      if (v27 >= 0)
      {
        v28 = v24;
      }

      else
      {
        v28 = *v24;
      }

      v29 = &v229;
      if ((v229.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v29 = v229.__r_.__value_.__r.__words[0];
      }

      v30 = v25 - 1;
      do
      {
        v32 = v29->__r_.__value_.__s.__data_[0];
        v29 = (v29 + 2);
        v31 = v32;
        v34 = *v28++;
        v33 = v34;
        v194 = v30-- != 0;
        v35 = v194;
      }

      while (v33 == v31 && (v35 & 1) != 0);
      if (v33 != v31)
      {
        goto LABEL_60;
      }
    }

    v23 = morphun::grammar::synthesis::GrammemeConstants::CASE_PREPOSITIONAL(v24);
LABEL_59:
    std::basic_string<char16_t>::operator=(&v229, v23);
LABEL_60:
    memset(&v224, 0, sizeof(v224));
    v36 = npc<morphun::Tokenizer>(a1[1]);
    v37 = (*(*v36 + 24))(v36, &v231);
    npc<morphun::TokenChain>(v37);
    v38 = *(v37 + 8);
    v39 = *(v37 + 16);
    if (v39)
    {
      v40 = *(v39 + 80);
    }

    else
    {
      v40 = 0;
    }

    while (1)
    {
      v219 = *(&v38 + 1);
      v41 = v38;
      if (v40 == v38)
      {
        goto LABEL_70;
      }

      if (*(v38 + 64) == 1)
      {
        v42 = *(v38 + 24);
        if (*(v38 + 39) < 0)
        {
          v43 = *(v38 + 16);
        }

        v44 = *(a1[5] + 512);
        if (!uset_containsAllCodePoints())
        {
          break;
        }
      }

      npc<morphun::Token const>(v41);
      *(&v38 + 1) = v219;
      *&v38 = *(v41 + 80);
    }

    a4 = 0;
LABEL_70:
    if ((*(*v37 + 32))(v37) < 7)
    {
      v45 = a4;
    }

    else
    {
      v45 = 0;
    }

    CombinedBinaryType = (*(*v37 + 32))(v37);
    v47 = *(v37 + 16);
    if (v47)
    {
      v48 = *(v47 + 80);
    }

    else
    {
      v48 = 0;
    }

    v223[0] = v48;
    v223[1] = v47;
    if (((CombinedBinaryType != 1) & v45) != 0)
    {
LABEL_77:
      v49 = &v229;
      if ((v229.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v49 = v229.__r_.__value_.__r.__words[0];
      }

      v215 = v49;
      if ((v229.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(v229.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v229.__r_.__value_.__l.__size_;
      }

      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v228;
      }

      else
      {
        v51 = v228.__r_.__value_.__r.__words[0];
      }

      if ((v228.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = HIBYTE(v228.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v52 = v228.__r_.__value_.__l.__size_;
      }

      if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v227;
      }

      else
      {
        v53 = v227.__r_.__value_.__r.__words[0];
      }

      if ((v227.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = HIBYTE(v227.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = v227.__r_.__value_.__l.__size_;
      }

      if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = &v226;
      }

      else
      {
        v55 = v226.__r_.__value_.__r.__words[0];
      }

      if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = HIBYTE(v226.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v56 = v226.__r_.__value_.__l.__size_;
      }

      memset(&v220, 0, sizeof(v220));
      memset(&__str, 0, sizeof(__str));
      v214 = HIBYTE(v231.__r_.__value_.__r.__words[2]);
      v212 = v231.__r_.__value_.__l.__size_;
      v213 = v231.__r_.__value_.__r.__words[0];
      v216 = a1[5];
      v57 = morphun::grammar::synthesis::GrammemeConstants::CASE_GENITIVE(CombinedBinaryType);
      v58 = *(v57 + 23);
      v59 = v58;
      if ((v58 & 0x80u) != 0)
      {
        v58 = *(v57 + 8);
      }

      if (v50 == v58)
      {
        if (!v50)
        {
          v61 = 304;
          goto LABEL_287;
        }

        if (v59 >= 0)
        {
          v60 = v57;
        }

        else
        {
          v60 = *v57;
        }

        v61 = 304;
        v62 = v50;
        v63 = v215;
        while (*v60 == v63->__r_.__value_.__s.__data_[0])
        {
          v63 = (v63 + 2);
          ++v60;
          if (!--v62)
          {
            goto LABEL_287;
          }
        }
      }

      v57 = morphun::grammar::synthesis::GrammemeConstants::CASE_DATIVE(v57);
      v100 = *(v57 + 23);
      v101 = v100;
      if ((v100 & 0x80u) != 0)
      {
        v100 = *(v57 + 8);
      }

      if (v50 == v100)
      {
        if (!v50)
        {
          v61 = 312;
          goto LABEL_287;
        }

        if (v101 >= 0)
        {
          v102 = v57;
        }

        else
        {
          v102 = *v57;
        }

        v61 = 312;
        v103 = v50;
        v104 = v215;
        while (*v102 == v104->__r_.__value_.__s.__data_[0])
        {
          v104 = (v104 + 2);
          ++v102;
          if (!--v103)
          {
            goto LABEL_287;
          }
        }
      }

      v57 = morphun::grammar::synthesis::GrammemeConstants::CASE_ACCUSATIVE(v57);
      v106 = *(v57 + 23);
      v107 = v106;
      if ((v106 & 0x80u) != 0)
      {
        v106 = *(v57 + 8);
      }

      if (v50 == v106)
      {
        if (!v50)
        {
          v61 = 320;
          goto LABEL_287;
        }

        if (v107 >= 0)
        {
          v108 = v57;
        }

        else
        {
          v108 = *v57;
        }

        v61 = 320;
        v109 = v50;
        v110 = v215;
        while (*v108 == v110->__r_.__value_.__s.__data_[0])
        {
          v110 = (v110 + 2);
          ++v108;
          if (!--v109)
          {
            goto LABEL_287;
          }
        }
      }

      v57 = morphun::grammar::synthesis::GrammemeConstants::CASE_INSTRUMENTAL(v57);
      v111 = *(v57 + 23);
      v112 = v111;
      if ((v111 & 0x80u) != 0)
      {
        v111 = *(v57 + 8);
      }

      if (v50 == v111)
      {
        if (!v50)
        {
          goto LABEL_273;
        }

        if (v112 >= 0)
        {
          v113 = v57;
        }

        else
        {
          v113 = *v57;
        }

        v61 = 328;
        v114 = v50;
        v115 = v215;
        while (*v113 == v115->__r_.__value_.__s.__data_[0])
        {
          v115 = (v115 + 2);
          ++v113;
          if (!--v114)
          {
            goto LABEL_287;
          }
        }
      }

      v57 = morphun::grammar::synthesis::GrammemeConstants::CASE_ABLATIVE(v57);
      v116 = *(v57 + 23);
      v117 = v116;
      if ((v116 & 0x80u) != 0)
      {
        v116 = *(v57 + 8);
      }

      if (v50 != v116)
      {
        goto LABEL_261;
      }

      if (v50)
      {
        if (v117 >= 0)
        {
          v118 = v57;
        }

        else
        {
          v118 = *v57;
        }

        v61 = 328;
        v119 = v50;
        v120 = v215;
        while (*v118 == v120->__r_.__value_.__s.__data_[0])
        {
          v120 = (v120 + 2);
          ++v118;
          if (!--v119)
          {
            goto LABEL_287;
          }
        }

LABEL_261:
        v57 = morphun::grammar::synthesis::GrammemeConstants::CASE_PREPOSITIONAL(v57);
        v121 = *(v57 + 23);
        v122 = v121;
        if ((v121 & 0x80u) != 0)
        {
          v121 = *(v57 + 8);
        }

        if (v50 == v121)
        {
          if (!v50)
          {
            goto LABEL_286;
          }

          if (v122 >= 0)
          {
            v123 = v57;
          }

          else
          {
            v123 = *v57;
          }

          v61 = 336;
          v124 = v50;
          v125 = v215;
          while (*v123 == v125->__r_.__value_.__s.__data_[0])
          {
            v125 = (v125 + 2);
            ++v123;
            if (!--v124)
            {
              goto LABEL_287;
            }
          }
        }

        v57 = morphun::grammar::synthesis::GrammemeConstants::CASE_LOCATIVE(v57);
        v126 = *(v57 + 23);
        v127 = v126;
        if ((v126 & 0x80u) != 0)
        {
          v126 = *(v57 + 8);
        }

        if (v50 != v126)
        {
LABEL_285:
          v61 = 296;
          goto LABEL_287;
        }

        if (v50)
        {
          v128 = *v57;
          if (v127 >= 0)
          {
            v128 = v57;
          }

          v61 = 336;
          while (*v128 == v215->__r_.__value_.__s.__data_[0])
          {
            v215 = (v215 + 2);
            ++v128;
            if (!--v50)
            {
              goto LABEL_287;
            }
          }

          goto LABEL_285;
        }

LABEL_286:
        v61 = 336;
LABEL_287:
        v129 = *(v216 + v61);
        v130 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v57);
        v131 = *(v130 + 23);
        v132 = v131;
        if ((v131 & 0x80u) != 0)
        {
          v131 = *(v130 + 8);
        }

        if (v52 == v131)
        {
          if (!v52)
          {
            v134 = 288;
            goto LABEL_310;
          }

          if (v132 >= 0)
          {
            v133 = v130;
          }

          else
          {
            v133 = *v130;
          }

          v134 = 288;
          v135 = v52;
          v136 = v51;
          while (*v133 == v136->__r_.__value_.__s.__data_[0])
          {
            v136 = (v136 + 2);
            ++v133;
            if (!--v135)
            {
              goto LABEL_310;
            }
          }
        }

        v130 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v130);
        v137 = *(v130 + 23);
        v138 = v137;
        if ((v137 & 0x80u) != 0)
        {
          v137 = *(v130 + 8);
        }

        if (v52 != v137)
        {
          goto LABEL_311;
        }

        if (v52)
        {
          v139 = *v130;
          if (v138 >= 0)
          {
            v139 = v130;
          }

          v134 = 280;
          while (*v139 == v51->__r_.__value_.__s.__data_[0])
          {
            v51 = (v51 + 2);
            ++v139;
            if (!--v52)
            {
              goto LABEL_310;
            }
          }

LABEL_311:
          v140 = morphun::grammar::synthesis::GrammemeConstants::GENDER_FEMININE(v130);
          v141 = *(v140 + 23);
          v142 = v141;
          if ((v141 & 0x80u) != 0)
          {
            v141 = *(v140 + 8);
          }

          if (v54 == v141)
          {
            if (!v54)
            {
              v144 = 232;
              goto LABEL_346;
            }

            if (v142 >= 0)
            {
              v143 = v140;
            }

            else
            {
              v143 = *v140;
            }

            v144 = 232;
            v145 = v54;
            v146 = v53;
            while (*v143 == v146->__r_.__value_.__s.__data_[0])
            {
              v146 = (v146 + 2);
              ++v143;
              if (!--v145)
              {
                goto LABEL_346;
              }
            }
          }

          v140 = morphun::grammar::synthesis::GrammemeConstants::GENDER_NEUTER(v140);
          v147 = *(v140 + 23);
          v148 = v147;
          if ((v147 & 0x80u) != 0)
          {
            v147 = *(v140 + 8);
          }

          if (v54 == v147)
          {
            if (!v54)
            {
              v144 = 248;
              goto LABEL_346;
            }

            if (v148 >= 0)
            {
              v149 = v140;
            }

            else
            {
              v149 = *v140;
            }

            v144 = 248;
            v150 = v54;
            v151 = v53;
            while (*v149 == v151->__r_.__value_.__s.__data_[0])
            {
              v151 = (v151 + 2);
              ++v149;
              if (!--v150)
              {
                goto LABEL_346;
              }
            }
          }

          v140 = morphun::grammar::synthesis::GrammemeConstants::GENDER_MASCULINE(v140);
          v152 = *(v140 + 23);
          v153 = v152;
          if ((v152 & 0x80u) != 0)
          {
            v152 = *(v140 + 8);
          }

          if (v54 != v152)
          {
            goto LABEL_347;
          }

          if (v54)
          {
            v154 = *v140;
            if (v153 >= 0)
            {
              v154 = v140;
            }

            v144 = 240;
            while (*v154 == v53->__r_.__value_.__s.__data_[0])
            {
              v53 = (v53 + 2);
              ++v154;
              if (!--v54)
              {
                goto LABEL_346;
              }
            }

LABEL_347:
            v155 = morphun::grammar::synthesis::GrammemeConstants::ANIMACY_ANIMATE(v140);
            v156 = *(v155 + 23);
            v157 = v156;
            if ((v156 & 0x80u) != 0)
            {
              v156 = *(v155 + 8);
            }

            if (v56 == v156)
            {
              if (!v56)
              {
                v159 = 256;
                goto LABEL_371;
              }

              if (v157 >= 0)
              {
                v158 = v155;
              }

              else
              {
                v158 = *v155;
              }

              v159 = 256;
              v160 = v56;
              v161 = v55;
              while (*v158 == v161->__r_.__value_.__s.__data_[0])
              {
                v161 = (v161 + 2);
                ++v158;
                if (!--v160)
                {
                  goto LABEL_371;
                }
              }
            }

            v162 = morphun::grammar::synthesis::GrammemeConstants::ANIMACY_INANIMATE(v155);
            v163 = *(v162 + 23);
            v164 = v163;
            if ((v163 & 0x80u) != 0)
            {
              v163 = *(v162 + 8);
            }

            if (v56 != v163)
            {
              v167 = v213;
              v166 = v214;
              v168 = v212;
              goto LABEL_373;
            }

            if (v56)
            {
              v165 = *v162;
              if (v164 >= 0)
              {
                v165 = v162;
              }

              v159 = 264;
              v167 = v213;
              v166 = v214;
              v168 = v212;
              while (*v165 == v55->__r_.__value_.__s.__data_[0])
              {
                v55 = (v55 + 2);
                ++v165;
                if (!--v56)
                {
                  goto LABEL_372;
                }
              }

LABEL_373:
              if (v166 >= 0)
              {
                v170 = &v231;
              }

              else
              {
                v170 = v167;
              }

              if (v166 >= 0)
              {
                v171 = v166;
              }

              else
              {
                v171 = v168;
              }

              if (!v171 || !a1[3])
              {
                goto LABEL_459;
              }

              v172 = a1[4];
              if (!v172)
              {
                exception = __cxa_allocate_exception(0x38uLL);
                morphun::exception::NullPointerException::NullPointerException(exception);
              }

              (*(*v172 + 24))(&v238);
              memset(&__p, 0, sizeof(__p));
              v173 = v170->__r_.__value_.__s.__data_[0];
              v174 = 2;
              v175 = 3;
              v176 = 3;
              if (v173 < 0xE000)
              {
                v176 = 0;
              }

              if (v173 >> 11 >= 0x1B)
              {
                v175 = v176;
              }

              if (v173 >= 0x800)
              {
                v174 = v175;
              }

              if (v173 >= 0x80)
              {
                v177 = v174;
              }

              else
              {
                v177 = 1;
              }

              v178 = HIBYTE(v238.__r_.__value_.__r.__words[2]);
              if ((v238.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v178 = v238.__r_.__value_.__l.__size_;
              }

              std::string::reserve(&__p, v178 + v177 * v171 + 1);
              morphun::util::StringViewUtils::convert(&__p, v170, v171);
              std::string::push_back(&__p, 32);
              if ((v238.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v179 = &v238;
              }

              else
              {
                v179 = v238.__r_.__value_.__r.__words[0];
              }

              if ((v238.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v180 = HIBYTE(v238.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v180 = v238.__r_.__value_.__l.__size_;
              }

              std::string::append(&__p, v179, v180);
              {
                operator new();
              }

              v181 = morphun::grammar::ml::Inflector::inflect(std::u16string_view,std::basic_string<char16_t> *,long long)const::mutex;
              if (!morphun::grammar::ml::Inflector::inflect(std::u16string_view,std::basic_string<char16_t> *,long long)const::mutex)
              {
                v211 = __cxa_allocate_exception(0x38uLL);
                morphun::exception::NullPointerException::NullPointerException(v211);
              }

              std::mutex::lock(morphun::grammar::ml::Inflector::inflect(std::u16string_view,std::basic_string<char16_t> *,long long)const::mutex);
              v182 = a1[3];
              v183 = QuasarCPDecTranslator_translate();
              std::mutex::unlock(v181);
              if (v183)
              {
                v184 = strlen(v183);
                morphun::util::StringViewUtils::convert(&__str, v183, v184);
                free(v183);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v238.__r_.__value_.__l.__data_);
              }

              if (v183)
              {
                v185 = (*(*a1[1] + 24))(a1[1], &__str);
                npc<morphun::TokenChain>(v185);
                v186 = (*(*v37 + 40))(v37);
                if (v186 == (*(*v185 + 40))(v185))
                {
                  v187 = *(v185 + 8);
                  *v217 = v187;
                  v218 = *(v37 + 8);
                  v188 = *(&v218 + 1);
                  if (!*(&v218 + 1))
                  {
                    goto LABEL_411;
                  }

LABEL_410:
                  v188 = *(v188 + 80);
LABEL_411:
                  while (v188 != v218)
                  {
                    if (*(v218 + 12) != *(v218 + 8) || HIDWORD(v217[0]->__r_.__value_.__r.__words[1]) != LODWORD(v217[0]->__r_.__value_.__r.__words[1]))
                    {
                      v189 = *(v218 + 16);
                      if (*(v218 + 39) < 0)
                      {
                        v190 = *(v218 + 24);
                      }

                      else
                      {
                        v189 = (v218 + 16);
                        v190 = *(v218 + 39);
                      }

                      v191 = v217[0]->__r_.__value_.__r.__words[2];
                      if ((v217[0][1].__r_.__value_.__r.__words[1] & 0x8000000000000000) != 0)
                      {
                        v192 = v217[0][1].__r_.__value_.__r.__words[0];
                      }

                      else
                      {
                        v191 = &v217[0]->__r_.__value_.__s.__data_[8];
                        v192 = HIBYTE(v217[0][1].__r_.__value_.__r.__words[1]);
                      }

                      v193 = v190 - 3;
                      v194 = v190 >= 3 && v192 >= 3;
                      if (v194 && (v192 < v193 || v192 > v190 + 3))
                      {
                        goto LABEL_462;
                      }

                      if (v190 >= 4 && v192 >= 4)
                      {
                        if (v190 >= v193)
                        {
                          v198 = v190 - 3;
                        }

                        else
                        {
                          v198 = v190;
                        }

                        if (v192 < v193)
                        {
                          v193 = v192;
                        }

                        if (v193 >= v198)
                        {
                          v199 = v198;
                        }

                        else
                        {
                          v199 = v193;
                        }

                        if (v199)
                        {
                          while (*v191 == *v189)
                          {
                            ++v189;
                            ++v191;
                            if (!--v199)
                            {
                              goto LABEL_449;
                            }
                          }

LABEL_462:
                          memset(&v235, 0, sizeof(v235));
                          (*(*v185 + 16))(v185);
LABEL_466:
                          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(__str.__r_.__value_.__l.__data_);
                            if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v220.__r_.__value_.__l.__data_);
                            }
                          }

                          if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v224.__r_.__value_.__l.__data_);
                          }

                          v224 = v235;
                          v204 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
                          v105 = HIBYTE(v235.__r_.__value_.__r.__words[2]);
                          if ((v235.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v204 = v235.__r_.__value_.__l.__size_;
                          }

                          if (!v204)
                          {
                            operator new();
                          }

LABEL_474:
                          if ((v231.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v205 = &v231;
                          }

                          else
                          {
                            v205 = v231.__r_.__value_.__r.__words[0];
                          }

                          v206 = v205->__r_.__value_.__s.__data_[0];
                          v207 = v105 < 0;
                          v208 = &v224;
                          if (v207)
                          {
                            v208 = v224.__r_.__value_.__r.__words[0];
                          }

                          v208->__r_.__value_.__s.__data_[0] = v206;
                          operator new();
                        }

LABEL_449:
                        v201 = v190 > 2 || v190 == v192;
                        if (v198 != v193 || !v201)
                        {
                          goto LABEL_462;
                        }
                      }

                      else if (v190 <= 2 && v190 != v192)
                      {
                        goto LABEL_462;
                      }
                    }

                    v202 = *(npc<morphun::Token const>(v218) + 80);
                    npc<morphun::Token const>(v217[0]);
                    *(&v203 + 1) = *(&v218 + 1);
                    *&v203 = v202;
                    v218 = v203;
                    *(&v203 + 1) = v217[1];
                    *&v203 = v217[0][3].__r_.__value_.__l.__size_;
                    *v217 = v203;
                    v188 = *(v37 + 16);
                    if (v188)
                    {
                      goto LABEL_410;
                    }
                  }

                  std::basic_string<char16_t>::operator=(&v220, &__str);
                }

                (*(*v185 + 16))(v185);
              }

              else
              {
LABEL_459:
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  *__str.__r_.__value_.__l.__data_ = 0;
                  __str.__r_.__value_.__l.__size_ = 0;
                }

                else
                {
                  __str.__r_.__value_.__s.__data_[0] = 0;
                  *(&__str.__r_.__value_.__s + 23) = 0;
                }
              }

              v235 = v220;
              memset(&v220, 0, sizeof(v220));
              goto LABEL_466;
            }

            v159 = 264;
LABEL_371:
            v167 = v213;
            v166 = v214;
            v168 = v212;
LABEL_372:
            v169 = *(v216 + v159) | v129;
            goto LABEL_373;
          }

          v144 = 240;
LABEL_346:
          v129 |= *(v216 + v144);
          goto LABEL_347;
        }

        v134 = 280;
LABEL_310:
        v129 |= *(v216 + v134);
        goto LABEL_311;
      }

LABEL_273:
      v61 = 328;
      goto LABEL_287;
    }

    while (1)
    {
      if (v223[0] == *(v37 + 8) || (morphun::TokenIterator::operator--(v223), v64 = v223[0], v223[0] == *(v37 + 8)))
      {
        v105 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
        goto LABEL_474;
      }

      if (*(v223[0] + 39) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v222, *(v223[0] + 16), *(v223[0] + 24));
        v64 = v223[0];
      }

      else
      {
        v222 = *(v223[0] + 16);
      }

      v65 = *(v64 + 72);
      if (!v65)
      {
        v209 = __cxa_allocate_exception(0x38uLL);
        morphun::exception::NullPointerException::NullPointerException(v209);
      }

      v66 = (v65 + 16);
      v67 = *(v65 + 39);
      if (v67 < 0)
      {
        if (*(v65 + 24) != 1)
        {
          goto LABEL_137;
        }

        v66 = *v66;
      }

      else if (v67 != 1)
      {
        goto LABEL_137;
      }

      if (*v66 == 45)
      {
        morphun::TokenIterator::operator--(v223);
        v69 = *(v223[0] + 39);
        v70 = v69 >= 0 ? v223[0] + 16 : *(v223[0] + 16);
        v71 = v69 >= 0 ? *(v223[0] + 39) : *(v223[0] + 24);
        std::basic_string<char16_t>::insert(&v222, v70, v71, v68);
        if (v223[0] != *(v37 + 8))
        {
          morphun::TokenIterator::operator--(v223);
          v73 = *(v223[0] + 39);
          if (v73 >= 0)
          {
            v74 = v223[0] + 16;
          }

          else
          {
            v74 = *(v223[0] + 16);
          }

          if (v73 >= 0)
          {
            v75 = *(v223[0] + 39);
          }

          else
          {
            v75 = *(v223[0] + 24);
          }

          std::basic_string<char16_t>::insert(&v222, v74, v75, v72);
        }
      }

LABEL_137:
      v76 = a1[5];
      v77 = v76[1];
      if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v78 = &v222;
      }

      else
      {
        v78 = v222.__r_.__value_.__r.__words[0];
      }

      if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = HIBYTE(v222.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v79 = v222.__r_.__value_.__l.__size_;
      }

      if ((morphun::analysis::stemmer::RussianExposableMorphology::isInflectable(a1[5], v78, v79) & 1) == 0)
      {
        if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(&v220, v222.__r_.__value_.__l.__data_, v222.__r_.__value_.__l.__size_);
        }

        else
        {
          v220 = v222;
        }

        v221 = 1;
        v92 = HIBYTE(v220.__r_.__value_.__r.__words[2]);
        v93 = v220.__r_.__value_.__l.__size_;
        v94 = (v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
        if ((v220.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = &v220;
        }

        else
        {
          v95 = v220.__r_.__value_.__r.__words[0];
        }

LABEL_195:
        if (v94)
        {
          v97 = v93;
        }

        else
        {
          v97 = v92;
        }

        CombinedBinaryType = std::basic_string<char16_t>::insert(&v224, v95, v97, v80);
        v96 = 0;
        if ((v221 & 1) != 0 && SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v220.__r_.__value_.__l.__data_);
          v96 = 0;
        }

        goto LABEL_201;
      }

      v236 = 0;
      if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v81 = &v222;
      }

      else
      {
        v81 = v222.__r_.__value_.__r.__words[0];
      }

      if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v82 = HIBYTE(v222.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v82 = v222.__r_.__value_.__l.__size_;
      }

      CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v77, &v236, v81, v82);
      if (v236)
      {
        v83 = (v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v222 : v222.__r_.__value_.__r.__words[0];
        v84 = (v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v222.__r_.__value_.__r.__words[2]) : v222.__r_.__value_.__l.__size_;
        v85 = morphun::util::StringViewUtils::codePointAt(v83, v84, 0);
        CombinedBinaryType = MEMORY[0x1BFB495E0]();
        if (v85 != CombinedBinaryType || (v76[44] & ~v236) == 0 || (v76[43] & ~v236) == 0)
        {
          if ((v76[43] & ~v236) != 0)
          {
            v86 = v76[49] & v236;
            if (v86 != v76[48] && v86 != v76[45] && SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0 && v225.__r_.__value_.__l.__size_ == 11)
            {
              v98 = 0;
              do
              {
                v99 = aProperNoun[v98] != *(v225.__r_.__value_.__r.__words[0] + v98 * 2) || v98 == 10;
                ++v98;
              }

              while (!v99);
            }
          }

          memset(&v235, 0, sizeof(v235));
          v87 = HIBYTE(v222.__r_.__value_.__r.__words[2]);
          v88 = *&v222.__r_.__value_.__l.__data_;
          v89 = morphun::util::LocaleUtils::RUSSIAN(CombinedBinaryType);
          if ((v87 & 0x80u) == 0)
          {
            v90 = &v222;
          }

          else
          {
            v90 = v88;
          }

          if ((v87 & 0x80u) == 0)
          {
            v91 = v87;
          }

          else
          {
            v91 = DWORD2(v88);
          }

          morphun::util::StringViewUtils::lowercase(&v235, v90, v91, v89);
          if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
          {
            std::basic_string<char16_t>::__init_copy_ctor_external(&v238, v229.__r_.__value_.__l.__data_, v229.__r_.__value_.__l.__size_);
          }

          else
          {
            v238 = v229;
          }

          if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
          {
            std::basic_string<char16_t>::__init_copy_ctor_external(&v239, v228.__r_.__value_.__l.__data_, v228.__r_.__value_.__l.__size_);
          }

          else
          {
            v239 = v228;
          }

          if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
          {
            std::basic_string<char16_t>::__init_copy_ctor_external(&v240, v227.__r_.__value_.__l.__data_, v227.__r_.__value_.__l.__size_);
          }

          else
          {
            v240 = v227;
          }

          if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
          {
            std::basic_string<char16_t>::__init_copy_ctor_external(&v241, v226.__r_.__value_.__l.__data_, v226.__r_.__value_.__l.__size_);
          }

          else
          {
            v241 = v226;
          }

          memset(v233, 0, sizeof(v233));
          std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(v233, &v238, v242, 4uLL);
        }
      }

      LOBYTE(v220.__r_.__value_.__l.__data_) = 0;
      v221 = 0;
      if ((v45 & 1) == 0)
      {
        v92 = HIBYTE(v222.__r_.__value_.__r.__words[2]);
        v93 = v222.__r_.__value_.__l.__size_;
        v94 = (v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
        if ((v222.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v95 = &v222;
        }

        else
        {
          v95 = v222.__r_.__value_.__r.__words[0];
        }

        goto LABEL_195;
      }

      v96 = 1;
LABEL_201:
      if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v222.__r_.__value_.__l.__data_);
        if (v96)
        {
          goto LABEL_77;
        }
      }

      else if (v96)
      {
        goto LABEL_77;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1BE58ACAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a73 < 0)
  {
    operator delete(__p);
  }

  if (*(v73 - 185) < 0)
  {
    operator delete(*(v73 - 208));
  }

  if (*(v73 - 209) < 0)
  {
    operator delete(*(v73 - 232));
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  (*(*a14 + 16))(a14);
  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
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

void *std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::map[abi:se200100](void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::insert[abi:se200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void morphun::grammar::synthesis::getFeatureValue(std::basic_string<char16_t> *a1, uint64_t a2, uint64_t a3)
{
  v5 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a2, a3);
  if (a2 + 8 == v5)
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
  }

  else if (*(v5 + 127) < 0)
  {
    v7 = *(v5 + 104);
    v8 = *(v5 + 112);

    std::basic_string<char16_t>::__init_copy_ctor_external(a1, v7, v8);
  }

  else
  {
    v6 = *(v5 + 104);
    a1->__r_.__value_.__r.__words[2] = *(v5 + 120);
    *&a1->__r_.__value_.__l.__data_ = v6;
  }
}

BOOL std::operator==[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 23);
  v3 = *(a1 + 1);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
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
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v2 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
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

uint64_t npc<morphun::Tokenizer>(uint64_t result)
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

uint64_t npc<morphun::TokenChain>(uint64_t result)
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

unint64_t std::basic_string<char16_t>::__assign_no_alias<true>(unint64_t __dst, const std::basic_string<char16_t>::value_type *__src, std::basic_string<char16_t>::size_type __n_add)
{
  v4 = __dst;
  v5 = __n_add > 0xA;
  v6 = __n_add - 10;
  if (v5)
  {
    std::basic_string<char16_t>::__grow_by_and_replace(__dst, 0xAuLL, v6, *(__dst + 23) & 0x7F, 0, *(__dst + 23) & 0x7F, __n_add, __src);
    return v4;
  }

  *(__dst + 23) = __n_add;
  v7 = (__dst + 2 * __n_add);
  if (__src < __dst || v7 <= __src)
  {
    if (__n_add)
    {
      memmove(__dst, __src, 2 * __n_add);
    }

    *v7 = 0;
    return v4;
  }

  __break(1u);
  return __dst;
}

std::basic_string<char16_t> *std::basic_string<char16_t>::__assign_no_alias<false>(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__src, std::basic_string<char16_t>::size_type __n_add)
{
  v4 = this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v4 <= __n_add)
  {
    std::basic_string<char16_t>::__grow_by_and_replace(this, v4 - 1, __n_add - v4 + 1, this->__r_.__value_.__l.__size_, 0, this->__r_.__value_.__l.__size_, __n_add, __src);
    return this;
  }

  result = this->__r_.__value_.__r.__words[0];
  this->__r_.__value_.__l.__size_ = __n_add;
  v6 = (result + 2 * __n_add);
  if (result > __src || v6 <= __src)
  {
    if (__n_add)
    {
      memmove(result, __src, 2 * __n_add);
    }

    *v6 = 0;
    return this;
  }

  __break(1u);
  return result;
}

uint64_t std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(uint64_t a1, uint64_t a2)
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
    return v2;
  }

  return v5;
}

uint64_t std::map<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>::insert[abi:se200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,void *> *,long>>>(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    v6 = (result + 8);
    do
    {
      v7 = v5[1];
      v8 = v6;
      if (*v5 == v6)
      {
        goto LABEL_10;
      }

      v9 = v5[1];
      v10 = v6;
      if (v7)
      {
        do
        {
          v8 = v9;
          v9 = *(v9 + 1);
        }

        while (v9);
      }

      else
      {
        do
        {
          v8 = *(v10 + 2);
          v11 = *v8 == v10;
          v10 = v8;
        }

        while (v11);
      }

      result = std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v8 + 24, v4 + 24);
      if ((result & 0x80) != 0)
      {
LABEL_10:
        if (!v7)
        {
          v15 = v6;
LABEL_15:
          operator new();
        }

        v15 = v8;
        v12 = v8 + 4;
      }

      else
      {
        result = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__find_equal<morphun::dialog::SemanticFeature>(v5, &v15, (v4 + 16));
        v12 = result;
      }

      if (!*v12)
      {
        goto LABEL_15;
      }

      v13 = *(v4 + 1);
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
          v14 = *(v4 + 2);
          v11 = *v14 == v4;
          v4 = v14;
        }

        while (!v11);
      }

      v4 = v14;
    }

    while (v14 != a3);
  }

  return result;
}

void sub_1BE58B5C0(_Unwind_Exception *a1)
{
  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(void **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(*a1);
    std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,void *>>>::destroy[abi:se200100]<std::pair<morphun::dialog::SemanticFeature const,std::basic_string<char16_t>>,void,0>(a1 + 4);

    operator delete(a1);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,void *>>>::destroy[abi:se200100]<std::pair<morphun::dialog::SemanticFeature const,std::basic_string<char16_t>>,void,0>(void **this)
{
  if (this)
  {
    if (*(this + 95) < 0)
    {
      operator delete(this[9]);
    }
  }

  else
  {
    __break(1u);
  }
}

unsigned __int16 *std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::__find_equal<morphun::dialog::SemanticFeature>(uint64_t a1, unsigned __int16 **a2, uint64_t a3)
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
        if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>((a3 + 16), v4 + 24) & 0x80) == 0)
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

      if ((std::operator<=>[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(v7 + 24, (a3 + 16)) & 0x80) == 0)
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

void morphun::grammar::synthesis::RuGrammarSynthesizer_RuDisplayFunction::~RuGrammarSynthesizer_RuDisplayFunction(morphun::grammar::synthesis::RuGrammarSynthesizer_RuDisplayFunction *this)
{
  morphun::grammar::synthesis::RuGrammarSynthesizer_RuDisplayFunction::~RuGrammarSynthesizer_RuDisplayFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  icu4cxx::UnicodeSet::~UnicodeSet((this + 48));
  morphun::grammar::ml::Inflector::~Inflector((this + 16));
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

void icu4cxx::UnicodeSet::~UnicodeSet(icu4cxx::UnicodeSet *this)
{
  if (*(this + 8) == 1)
  {
    v1 = *this;
    uset_close();
  }
}

uint64_t npc<morphun::dialog::SemanticFeature const>(uint64_t result)
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

void std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>::__destroy_vector::operator()[abi:se200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>,void,0>(i))
    {
      i -= 48;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__destroy_vector::operator()[abi:se200100](void ***a1)
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
        v7 = (v4 - 24);
        std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>::__destroy_vector::operator()[abi:se200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>::destroy[abi:se200100]<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>,void,0>(uint64_t a1)
{
  if (a1)
  {
    v3 = (a1 + 24);
    std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:se200100](&v3);
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

void std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>::__destroy_vector::operator()[abi:se200100](void ***a1)
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
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
        }

        v4 -= 4;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v5 = (i - 24);
    std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>::__destroy_vector::operator()[abi:se200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>,std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>*>>::~__exception_guard_exceptions[abi:se200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      do
      {
        v4 = v2 - 32;
        v6 = (v2 - 24);
        std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>::__destroy_vector::operator()[abi:se200100](&v6);
        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>::__init_with_size[abi:se200100]<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>*,std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>(a4);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>,std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>*>>::~__exception_guard_exceptions[abi:se200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 32;
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:se200100]<std::allocator<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

void std::__allocate_at_least[abi:se200100]<std::allocator<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::basic_string(std::basic_string<char16_t> *this, const std::basic_string<char16_t> *__str, std::basic_string<char16_t>::size_type __pos, std::basic_string<char16_t>::size_type __n, std::allocator<char16_t> *__a)
{
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos)
    {
      goto LABEL_24;
    }

    __str = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos)
  {
LABEL_24:
    std::basic_string<char16_t>::__throw_out_of_range[abi:se200100]();
  }

  v7 = size - __pos;
  if (v7 >= __n)
  {
    v8 = __n;
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  v9 = (__str + 2 * __pos);
  if (v8 > 0xA)
  {
    if ((v8 | 3) == 0xB)
    {
      v10 = 13;
    }

    else
    {
      v10 = (v8 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v10);
  }

  *(&this->__r_.__value_.__s + 23) = v8;
  v11 = (this + 2 * v8);
  if (this <= v9 && v11 > v9)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v8)
  {
    memmove(this, v9, 2 * v8);
  }

  v11->__r_.__value_.__s.__data_[0] = 0;
  return this;
}

uint64_t morphun::grammar::synthesis::RuGrammarSynthesizer_ToPrepositionLookupFunction::getArticle(morphun::grammar::synthesis::RuGrammarSynthesizer_ToPrepositionLookupFunction *this, const morphun::dialog::SemanticFeatureModel_DisplayValue *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 24))(a2);
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v5 = *(v4 + 23);
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = morphun::util::LocaleUtils::ROOT(v4);
  if ((v5 & 0x80u) == 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if ((v5 & 0x80u) == 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  morphun::util::StringViewUtils::lowercase(&v17, v9, v10, v8);
  {
    operator new();
  }

  if (!morphun::grammar::synthesis::RuGrammarSynthesizer_ToPrepositionLookupFunction::TO_WORDS(void)::TO_WORDS_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  if (v19 >= 0)
  {
    v11 = &v17;
  }

  else
  {
    v11 = v17;
  }

  if (v19 >= 0)
  {
    v12 = HIBYTE(v19);
  }

  else
  {
    v12 = v18;
  }

  if (std::__tree<std::u16string_view>::__count_unique<std::u16string_view>(*(morphun::grammar::synthesis::RuGrammarSynthesizer_ToPrepositionLookupFunction::TO_WORDS(void)::TO_WORDS_ + 8), v11, v12))
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE80958A);
  }

  else
  {
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE809586);
  }

  v13 = (*(*this + 32))(this, a2, __p);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1BE58C0B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  MEMORY[0x1BFB49160](v21, 0x1020C4062D53EE8);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::RoGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::RoGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, L"gender");
  operator new();
}

void sub_1BE58C458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

morphun::dictionary::PhraseProperties *morphun::grammar::synthesis::RuGrammarSynthesizer_WithPrepositionLookupFunction::getArticle(morphun::grammar::synthesis::RuGrammarSynthesizer_WithPrepositionLookupFunction *this, const morphun::dialog::SemanticFeatureModel_DisplayValue *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 24))(a2);
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = *(v4 + 23);
  v6 = *v4;
  v7 = *(v4 + 8);
  v8 = morphun::util::LocaleUtils::ROOT(v4);
  if ((v5 & 0x80u) == 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if ((v5 & 0x80u) == 0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  morphun::util::StringViewUtils::lowercase(&v22, v9, v10, v8);
  v11 = *(v4 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(v4 + 8);
  }

  if (!v11)
  {
    goto LABEL_34;
  }

  {
    operator new();
  }

  if (!morphun::grammar::synthesis::RuGrammarSynthesizer_WithPrepositionLookupFunction::WITH_WORDS(void)::WITH_WORDS_)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  if (v24 >= 0)
  {
    v12 = &v22;
  }

  else
  {
    v12 = v22;
  }

  if (v24 >= 0)
  {
    v13 = HIBYTE(v24);
  }

  else
  {
    v13 = v23;
  }

  if (std::__tree<std::u16string_view>::__count_unique<std::u16string_view>(*(morphun::grammar::synthesis::RuGrammarSynthesizer_WithPrepositionLookupFunction::WITH_WORDS(void)::WITH_WORDS_ + 8), v12, v13) || *v12 == 1097)
  {
    goto LABEL_23;
  }

  {
    operator new();
  }

  if (!morphun::grammar::synthesis::RuGrammarSynthesizer_WithPrepositionLookupFunction::WITH_FIRST_CHAR(void)::WITH_FIRST_CHAR_)
  {
    v21 = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(v21);
  }

  result = morphun::grammar::synthesis::RuGrammarSynthesizer::startsWith2Consonant(&v22, *morphun::grammar::synthesis::RuGrammarSynthesizer_WithPrepositionLookupFunction::WITH_FIRST_CHAR(void)::WITH_FIRST_CHAR_);
  if (result)
  {
    goto LABEL_23;
  }

  v16 = *(v4 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v4 + 8);
  }

  if (v16 < 2)
  {
    goto LABEL_34;
  }

  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    if (v22 == 1074)
    {
      if (HIBYTE(v24))
      {
        v17 = &v22;
        goto LABEL_33;
      }

LABEL_46:
      __break(1u);
      return result;
    }

LABEL_34:
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE80957C);
    v15 = (*(*this + 32))(this, a2, __p);
    goto LABEL_35;
  }

  v17 = v22;
  if (*v22 != 1074)
  {
    goto LABEL_34;
  }

  if (!v23)
  {
    goto LABEL_46;
  }

LABEL_33:
  if (v17[1] != 1095)
  {
    goto LABEL_34;
  }

LABEL_23:
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, word_1BE809580);
  v15 = (*(*this + 32))(this, a2, __p);
LABEL_35:
  v18 = v15;
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v22);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1BE58C944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  MEMORY[0x1BFB49160](v21, 0x1020C405F07FB98);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1BE58E53C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  if (*(v42 - 121) < 0)
  {
    operator delete(*(v42 - 144));
    if ((v41 & 1) == 0)
    {
LABEL_8:
      QuasarCSystemConfig_delete();
      if (a38 < 0)
      {
        operator delete(__p);
      }

      v44 = *(v38 + 32);
      *(v38 + 32) = 0;
      if (v44)
      {
        (*(*v44 + 16))(v44);
      }

      v45 = *(v38 + 8);
      *(v38 + 8) = 0;
      if (v45)
      {
        (*(*v45 + 16))(v45);
      }

      MEMORY[0x1BFB49160](v38, v39);
      _Unwind_Resume(a1);
    }
  }

  else if (!v41)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v40);
  goto LABEL_8;
}

morphun::dictionary::PhraseProperties *morphun::grammar::synthesis::RuGrammarSynthesizer::startsWith2Consonant(unsigned __int16 *a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 1) >= 2uLL)
    {
      a1 = *a1;
      goto LABEL_7;
    }

    return 0;
  }

  if (*(a1 + 23) < 2u)
  {
    return 0;
  }

LABEL_7:
  v3 = a1[1];
  result = MEMORY[0x1BFB49A20](a2, *a1);
  if (result)
  {
    v4 = morphun::dictionary::PhraseProperties::DEFAULT_VOWELS_START(result);
    return (MEMORY[0x1BFB49A20](*v4, v3) == 0);
  }

  return result;
}

void morphun::grammar::ml::Inflector::~Inflector(morphun::grammar::ml::Inflector *this)
{
  morphun::grammar::ml::Inflector::~Inflector(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD5870;
  v2 = *(this + 1);
  QuasarCPDecTranslator_delete();
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }
}

void virtual thunk tomorphun::Tokenizer::~Tokenizer(morphun::Tokenizer *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

morphun::Tokenizer *morphun::Tokenizer::Tokenizer(morphun::Tokenizer *this, const morphun::tokenizer::TokenExtractor *a2, uint64_t a3)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 40)) = *(a2 + 1);
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 36) = 0x7FFFFFFFLL;
  *(this + 6) = a3;
  morphun::Tokenizer::setStyle(this, 1);
  return this;
}

void sub_1BE58EDBC(_Unwind_Exception *exception_object)
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

void marisa::Exception::~Exception(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1BFB49160);
}

void morphun::exception::StringIndexOutOfBoundsException::~StringIndexOutOfBoundsException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

double morphun::exception::StringIndexOutOfBoundsException::StringIndexOutOfBoundsException(morphun::exception::StringIndexOutOfBoundsException *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD08D8;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD08D8;
  return result;
}

morphun::exception::StringIndexOutOfBoundsException *morphun::exception::StringIndexOutOfBoundsException::StringIndexOutOfBoundsException(morphun::exception::StringIndexOutOfBoundsException *this, int a2)
{
  morphun::util::StringUtils::to_u16string(a2, &v5);
  std::basic_string<char16_t>::insert(&v5, L"StringIndexOutOfBoundsException at ", 0x23, v3);
  __p = v5;
  memset(&v5, 0, sizeof(v5));
  morphun::exception::Throwable::Throwable(this, &__p);
  *this = &unk_1F3CD0978;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  *this = &unk_1F3CD08D8;
  return this;
}

void sub_1BE58EF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void *morphun::exception::StringIndexOutOfBoundsException::StringIndexOutOfBoundsException(uint64_t a1, __int128 *a2)
{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD08D8;
  return result;
}

{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD08D8;
  return result;
}

std::basic_string<char16_t>::size_type morphun::analysis::stemmer::SvStemFilter::stem(int a1, std::basic_string<char16_t> *this)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v4 = v3 < 0;
  if (v3 >= 0)
  {
    v5 = this;
  }

  else
  {
    v5 = this->__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  else
  {
    size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (!size)
  {
    goto LABEL_20;
  }

  v7 = 2 * size;
  v8 = v5;
  v9 = (v5 + 2 * size);
  while (v8->__r_.__value_.__s.__data_[0] != 58)
  {
    v8 = (v8 + 2);
    v7 -= 2;
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  v10 = v8 == v9 ? 0 : v8;
  v11 = (v10 - v5) >> 1;
  v12 = v8 == v9 ? -1 : v11;
  if (v12 >= 2)
  {
    std::basic_string<char16_t>::resize(this, v12 & 0x7FFFFFFF, 0);
  }

  else
  {
LABEL_20:
    R1Start = morphun::analysis::stemmer::NordicStemFilter::getR1Start(this);
    v15 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v15 < 0)
    {
      v12 = this->__r_.__value_.__l.__size_;
      if (R1Start >= v12)
      {
        goto LABEL_99;
      }
    }

    else if (R1Start >= v15)
    {
      v12 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      goto LABEL_99;
    }

    v16 = R1Start;
    std::basic_string<char16_t>::basic_string(&v62, this, 0, R1Start, v14);
    v18 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v18 & 0x80u) != 0)
    {
      v18 = this->__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::basic_string(&v61, this, v16, v18 - v16, v17);
    memset(&__str, 0, sizeof(__str));
    v19 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v19 >= 0)
    {
      v20 = this;
    }

    else
    {
      v20 = this->__r_.__value_.__r.__words[0];
    }

    if (v19 >= 0)
    {
      v21 = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = this->__r_.__value_.__l.__size_;
    }

    isAllLowerCase = morphun::util::StringViewUtils::isAllLowerCase(v20, v21);
    v23 = isAllLowerCase;
    if ((isAllLowerCase & 1) == 0)
    {
      v24 = HIBYTE(v62.__r_.__value_.__r.__words[2]);
      v25 = *&v62.__r_.__value_.__l.__data_;
      v26 = morphun::util::LocaleUtils::SWEDISH(isAllLowerCase);
      if ((v24 & 0x80u) == 0)
      {
        v27 = &v62;
      }

      else
      {
        v27 = v25;
      }

      if ((v24 & 0x80u) == 0)
      {
        v28 = v24;
      }

      else
      {
        v28 = DWORD2(v25);
      }

      morphun::util::StringViewUtils::lowercase(&__str, v27, v28, v26);
      v29 = std::basic_string<char16_t>::operator=(&v62, &__str);
      v30 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
      v31 = *&v61.__r_.__value_.__l.__data_;
      v32 = morphun::util::LocaleUtils::SWEDISH(v29);
      if ((v30 & 0x80u) == 0)
      {
        v33 = &v61;
      }

      else
      {
        v33 = v31;
      }

      if ((v30 & 0x80u) == 0)
      {
        v34 = v30;
      }

      else
      {
        v34 = DWORD2(v31);
      }

      morphun::util::StringViewUtils::lowercase(&__str, v33, v34, v32);
      std::basic_string<char16_t>::operator=(&v61, &__str);
    }

    {
      operator new();
    }

    v35 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::SvStemFilter::ENDINGS_FIRST_STEP_REMOVE(void)::ENDINGS_FIRST_STEP_REMOVE_);
    if ((morphun::analysis::stemmer::NordicStemFilter::removeIfEndsWith(&v61, *v35, v35[1]) & 1) == 0 && std::basic_string<char16_t>::ends_with[abi:se200100](&v61, word_1BE80EB90))
    {
      std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&__p, &v62, &v61);
      {
        operator new();
      }

      v36 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::SvStemFilter::ENDINGS_FIRST_STEP_SHORTEN(void)::ENDINGS_FIRST_STEP_SHORTEN_);
      morphun::analysis::stemmer::NordicStemFilter::shortenIfEndsWith(&__p, *v36, v36[1]);
      std::basic_string<char16_t>::assign(&v62, &__p, 0, v16);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = __p.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::assign(&v61, &__p, v16, v37);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    {
      operator new();
    }

    v38 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::SvStemFilter::ENDINGS_SECOND_STEP(void)::ENDINGS_SECOND_STEP_);
    morphun::analysis::stemmer::NordicStemFilter::shortenIfEndsWith(&v61, *v38, v38[1]);
    {
      operator new();
    }

    v39 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::SvStemFilter::ENDINGS_THIRD_STEP_SHORTEN(void)::ENDINGS_THIRD_STEP_SHORTEN_);
    if ((morphun::analysis::stemmer::NordicStemFilter::shortenIfEndsWith(&v61, *v39, v39[1]) & 1) == 0)
    {
      {
        operator new();
      }

      v40 = npc<std::vector<std::u16string_view>>(morphun::analysis::stemmer::SvStemFilter::ENDINGS_THIRD_STEP_REMOVE(void)::ENDINGS_THIRD_STEP_REMOVE_);
      morphun::analysis::stemmer::NordicStemFilter::removeIfEndsWith(&v61, *v40, v40[1]);
    }

    if (v23)
    {
      std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(__dst, &v62, &v61);
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(this->__r_.__value_.__l.__data_);
      }

      *&this->__r_.__value_.__l.__data_ = *__dst;
      this->__r_.__value_.__r.__words[2] = v64;
      v12 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if ((v12 & 0x8000000000000000) != 0)
      {
        v12 = this->__r_.__value_.__l.__size_;
      }
    }

    else
    {
      std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(__dst, &v62, &v61);
      v41 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
      if (v41 >= 0)
      {
        v42 = this;
      }

      else
      {
        v42 = this->__r_.__value_.__r.__words[0];
      }

      if (v41 >= 0)
      {
        v43 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = this->__r_.__value_.__l.__size_;
      }

      isAllUpperCase = morphun::util::StringViewUtils::isAllUpperCase(v42, v43);
      if (isAllUpperCase)
      {
        v45 = BYTE7(v64);
        v46 = __dst[0];
        v47 = __dst[1];
        v48 = morphun::util::LocaleUtils::SWEDISH(isAllUpperCase);
        if ((v45 & 0x80u) == 0)
        {
          v49 = __dst;
        }

        else
        {
          v49 = v46;
        }

        if ((v45 & 0x80u) == 0)
        {
          v50 = v45;
        }

        else
        {
          v50 = v47;
        }

        morphun::util::StringViewUtils::uppercase(this, v49, v50, v48);
      }

      else
      {
        v51 = BYTE7(v64);
        v52 = __dst[0];
        v53 = __dst[1];
        v54 = morphun::util::LocaleUtils::SWEDISH(isAllUpperCase);
        if ((v51 & 0x80u) == 0)
        {
          v55 = __dst;
        }

        else
        {
          v55 = v52;
        }

        if ((v51 & 0x80u) == 0)
        {
          v56 = v51;
        }

        else
        {
          v56 = v53;
        }

        morphun::util::StringViewUtils::capitalizeFirst(v55, v56, v54, &__p);
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(this->__r_.__value_.__l.__data_);
        }

        *this = __p;
      }

      if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = HIBYTE(this->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v12 = this->__r_.__value_.__l.__size_;
      }

      if (SBYTE7(v64) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }
  }

LABEL_99:
  v57 = *MEMORY[0x1E69E9840];
  return v12;
}