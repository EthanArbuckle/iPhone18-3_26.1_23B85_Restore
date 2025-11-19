_DWORD *marisa::grimoire::vector::Vector<unsigned int>::realloc(uint64_t *a1, uint64_t a2)
{
  result = operator new[](4 * a2, MEMORY[0x1E69E5398]);
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

uint64_t marisa::grimoire::vector::BitVector::map(marisa::grimoire::vector::BitVector *this, marisa::grimoire::io::Mapper *a2)
{
  memset(v13, 0, 41);
  memset(v17, 0, 41);
  memset(v18, 0, 41);
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, 25);
  marisa::grimoire::vector::Vector<unsigned long long>::map(v13, a2);
  v4 = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  *&v14 = v4;
  v5 = marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  if (v4 < *v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/bit-vector.h";
    exception[2] = 0xA00000087;
    exception[3] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/bit-vector.h:135: MARISA_FORMAT_ERROR: temp_num_1s > size_";
  }

  *(&v14 + 1) = *v5;
  v6 = marisa::grimoire::io::Mapper::map_data(a2, 8uLL);
  v7 = *v6 / 0xCuLL;
  if (*v6 % 0xCuLL)
  {
    v12 = __cxa_allocate_exception(0x20uLL);
    *v12 = &unk_1F3CD9BC8;
    v12[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h";
    v12[2] = 0xA000000CALL;
    v12[3] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  v8 = marisa::grimoire::io::Mapper::map_data(a2, 12 * v7);
  marisa::grimoire::io::Mapper::seek(a2, (-12 * v7) & 4);
  v9 = v15;
  v15 = 0uLL;
  *&v16[0] = v8;
  *(v16 + 8) = v7;
  BYTE8(v16[1]) = 1;
  if (v9)
  {
    MEMORY[0x1BFB49140](v9, 0x1000C8077774924);
  }

  marisa::grimoire::vector::Vector<unsigned int>::map(v17, a2);
  marisa::grimoire::vector::Vector<unsigned int>::map(v18, a2);
  marisa::grimoire::vector::BitVector::swap(this, v13);
  if (*&v18[0])
  {
    MEMORY[0x1BFB49140](*&v18[0], 0x1000C8077774924);
  }

  if (*&v17[0])
  {
    MEMORY[0x1BFB49140](*&v17[0], 0x1000C8077774924);
  }

  if (v15)
  {
    MEMORY[0x1BFB49140](v15, 0x1000C8077774924);
  }

  result = *&v13[0];
  if (*&v13[0])
  {

    JUMPOUT(0x1BFB49140);
  }

  return result;
}

void marisa::grimoire::vector::BitVector::~BitVector(marisa::grimoire::vector::BitVector *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    MEMORY[0x1BFB49140](v2, 0x1000C8077774924);
  }

  v3 = *(this + 14);
  if (v3)
  {
    MEMORY[0x1BFB49140](v3, 0x1000C8077774924);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x1BFB49140](v4, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x1BFB49140](*this, 0x1000C8077774924);
  }
}

uint64_t marisa::grimoire::vector::Vector<unsigned long long>::map(uint64_t a1, marisa::grimoire::io::Mapper *this)
{
  v4 = *marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  if ((v4 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  v5 = v4 >> 3;
  v6 = marisa::grimoire::io::Mapper::map_data(this, v4);
  marisa::grimoire::io::Mapper::seek(this, 0);
  result = *a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 40) = 1;
  if (result)
  {

    JUMPOUT(0x1BFB49140);
  }

  return result;
}

uint64_t marisa::grimoire::vector::Vector<unsigned int>::map(uint64_t a1, marisa::grimoire::io::Mapper *this)
{
  v4 = *marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  if ((v4 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  v5 = marisa::grimoire::io::Mapper::map_data(this, v4);
  marisa::grimoire::io::Mapper::seek(this, -v4 & 4);
  result = *a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4 >> 2;
  *(a1 + 40) = 1;
  if (result)
  {

    JUMPOUT(0x1BFB49140);
  }

  return result;
}

uint64_t *marisa::grimoire::vector::Vector<unsigned int>::resize(uint64_t *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[4];
  if (v4 < a2)
  {
    v5 = 2 * v4;
    if (v4 >> 61)
    {
      v5 = 0x3FFFFFFFFFFFFFFFLL;
    }

    if (v4 > a2 >> 1)
    {
      a2 = v5;
    }

    result = marisa::grimoire::vector::Vector<unsigned int>::realloc(result, a2);
  }

  v3[3] = v2;
  return result;
}

uint64_t marisa::grimoire::vector::BitVector::write_(marisa::grimoire::vector::BitVector *this, marisa::grimoire::io::Writer *a2)
{
  marisa::grimoire::vector::Vector<unsigned long long>::write_(this, a2);
  LODWORD(__buf) = *(this + 6);
  marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  LODWORD(__buf) = *(this + 7);
  marisa::grimoire::io::Writer::write_data(a2, &__buf, 4uLL);
  __buf = 12 * *(this + 11);
  marisa::grimoire::io::Writer::write_data(a2, &__buf, 8uLL);
  v4 = *(this + 10);
  v5 = *(this + 11);
  if (!v4 && v5)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x20000001ELL;
    v8 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h:30: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (v5 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000020;
    v8 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v8;
  }

  marisa::grimoire::io::Writer::write_data(a2, v4, 12 * v5);
  marisa::grimoire::io::Writer::seek(a2, 4 * (*(this + 11) & 1));
  marisa::grimoire::vector::Vector<unsigned int>::write_(this + 112, a2);
  return marisa::grimoire::vector::Vector<unsigned int>::write_(this + 160, a2);
}

uint64_t marisa::grimoire::vector::Vector<unsigned long long>::write_(uint64_t a1, marisa::grimoire::io::Writer *this)
{
  __buf = 8 * *(a1 + 24);
  marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
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
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x20000001ELL;
    v9 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h:30: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (v5 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000020;
    v9 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v9;
  }

  marisa::grimoire::io::Writer::write_data(this, v4, 8 * v5);
  return marisa::grimoire::io::Writer::seek(this, 0);
}

uint64_t marisa::grimoire::vector::Vector<unsigned int>::write_(uint64_t a1, marisa::grimoire::io::Writer *this)
{
  __buf = 4 * *(a1 + 24);
  marisa::grimoire::io::Writer::write_data(this, &__buf, 8uLL);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
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
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x20000001ELL;
    v9 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h:30: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_9;
  }

  if (v5 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F3CD9BC8;
    exception[1] = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h";
    exception[2] = 0x700000020;
    v9 = "ext/lib/Marisa/marisa-trie/lib/marisa/grimoire/io/writer.h:32: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_9:
    exception[3] = v9;
  }

  marisa::grimoire::io::Writer::write_data(this, v4, 4 * v5);
  return marisa::grimoire::io::Writer::seek(this, 4 * (*(a1 + 24) & 1));
}

uint64_t *marisa::grimoire::trie::Tail::restore(uint64_t *this, marisa::Agent *a2, unint64_t a3)
{
  v3 = a3;
  v5 = this;
  if (this[12])
  {
    do
    {
      this = marisa::grimoire::vector::Vector<char>::push_back(a2, (v5[2] + v3));
      v6 = *(v5[8] + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3;
      ++v3;
    }

    while ((v6 & 1) == 0);
  }

  else
  {
    v7 = (this[2] + a3);
    if (*v7)
    {
      do
      {
        this = marisa::grimoire::vector::Vector<char>::push_back(a2, v7);
      }

      while (*++v7);
    }
  }

  return this;
}

uint64_t marisa::grimoire::trie::Tail::match(marisa::grimoire::trie::Tail *this, marisa::Agent *a2, unint64_t a3)
{
  v3 = *(a2 + 5);
  v4 = *(this + 2);
  if (*(this + 12))
  {
    v5 = *(v3 + 100);
    v6 = *a2;
    v7 = *(a2 + 1);
    do
    {
      if (*(v4 + a3) != *(v6 + v5))
      {
        break;
      }

      *(v3 + 100) = ++v5;
      if ((*(*(this + 8) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
      {
        return 1;
      }

      ++a3;
    }

    while (v7 > v5);
  }

  else
  {
    v12 = v4 + a3;
    v8 = v4 + a3 - *(v3 + 100);
    v9 = *a2;
    v10 = *(a2 + 1);
    v11 = *v12;
    LODWORD(v12) = *(v3 + 100);
    while (v11 == *(v9 + v12))
    {
      v12 = (v12 + 1);
      *(v3 + 100) = v12;
      v11 = *(v8 + v12);
      if (!*(v8 + v12))
      {
        return 1;
      }

      if (v10 <= v12)
      {
        return 0;
      }
    }
  }

  return 0;
}

BOOL marisa::grimoire::trie::Tail::prefix_match(marisa::grimoire::trie::Tail *this, marisa::Agent *a2, unint64_t a3)
{
  v3 = a3;
  v6 = *(a2 + 5);
  if (*(this + 12))
  {
    v7 = *(v6 + 100);
    while (1)
    {
      v8 = *(this + 2);
      v9 = *(v8 + v3);
      v10 = *(*a2 + v7);
      result = v9 == v10;
      if (v9 != v10)
      {
        break;
      }

      marisa::grimoire::vector::Vector<char>::push_back(v6, (v8 + v3));
      v7 = *(v6 + 100) + 1;
      *(v6 + 100) = v7;
      if ((*(*(this + 8) + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3))
      {
        return 1;
      }

      ++v3;
      if (*(a2 + 1) <= v7)
      {
        do
        {
          marisa::grimoire::vector::Vector<char>::push_back(v6, (*(this + 2) + v3));
          v12 = *(*(this + 8) + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3;
          ++v3;
        }

        while ((v12 & 1) == 0);
        return 1;
      }
    }
  }

  else
  {
    v15 = *(this + 2) + a3;
    v13 = (v15 - *(v6 + 100));
    v14 = *v15;
    LODWORD(v15) = *(v6 + 100);
    while (1)
    {
      v16 = *(*a2 + v15);
      result = v14 == v16;
      if (v14 != v16)
      {
        break;
      }

      marisa::grimoire::vector::Vector<char>::push_back(v6, &v13[v15]);
      v15 = (*(v6 + 100) + 1);
      *(v6 + 100) = v15;
      v14 = v13[v15];
      if (!v13[v15])
      {
        return 1;
      }

      if (*(a2 + 1) <= v15)
      {
        v17 = &v13[v15];
        do
        {
          marisa::grimoire::vector::Vector<char>::push_back(v6, v17);
        }

        while (*++v17);
        return 1;
      }
    }
  }

  return result;
}

void morphun::dialog::language::LtCommonConceptFactory::~LtCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CEEEC0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CEEEC0);
}

void morphun::grammar::synthesis::CaGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::CaGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__p, L"gender");
  operator new();
}

void sub_1BE5C6240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

std::basic_string<char16_t> *morphun::util::StringUtils::appendCodePoint(std::basic_string<char16_t> *a1, unsigned int a2)
{
  npc<std::basic_string<char16_t>>(a1);
  if (HIWORD(a2))
  {
    std::basic_string<char16_t>::push_back(a1, (a2 >> 10) - 10304);
    npc<std::basic_string<char16_t>>(a1);
    LOWORD(a2) = a2 & 0x3FF | 0xDC00;
  }

  std::basic_string<char16_t>::push_back(a1, a2);
  return a1;
}

void morphun::util::StringUtils::replace(std::basic_string<char16_t> *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 23);
  v5 = *(a2 + 8);
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
    v4 = v5;
  }

  v6 = *(a3 + 23);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7)
  {
    v9 = *(a3 + 8);
  }

  else
  {
    v9 = *(a3 + 23);
  }

  v10 = *(a4 + 23);
  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v10 >= 0)
  {
    v12 = *(a4 + 23);
  }

  else
  {
    v12 = *(a4 + 8);
  }

  morphun::util::StringViewUtils::replace(a1, a2, v4, v8, v9, v11, v12);
}

_WORD *morphun::util::StringUtils::trim@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v4 = v3;
  }

  result = morphun::util::StringViewUtils::trim(a1, v4);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_19:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (v6 > 0xA)
  {
    if ((v6 | 3) == 0xB)
    {
      v7 = 13;
    }

    else
    {
      v7 = (v6 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v7);
  }

  a2[23] = v6;
  v8 = &a2[2 * v6];
  if (a2 <= result && v8 > result)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v6)
  {
    result = memmove(a2, result, 2 * v6);
  }

  *v8 = 0;
  return result;
}

uint64_t morphun::util::StringUtils::isAllLowerCase(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    return morphun::util::StringViewUtils::isAllLowerCase(a1, *(a1 + 23));
  }

  else
  {
    return morphun::util::StringViewUtils::isAllLowerCase(*a1, *(a1 + 8));
  }
}

uint64_t morphun::util::StringUtils::isAllUpperCase(uint64_t a1)
{
  if (*(a1 + 23) >= 0)
  {
    return morphun::util::StringViewUtils::isAllUpperCase(a1, *(a1 + 23));
  }

  else
  {
    return morphun::util::StringViewUtils::isAllUpperCase(*a1, *(a1 + 8));
  }
}

void morphun::util::StringUtils::capitalizeFirst(UChar *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 1);
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v5 = v4;
  }

  morphun::util::StringViewUtils::capitalizeFirst(a1, v5, a2, a3);
}

uint64_t morphun::util::StringUtils::uppercase(uint64_t a1, const UChar *a2, uint64_t a3)
{
  v4 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  return morphun::util::StringViewUtils::uppercase(a1, a2, v5, a3);
}

uint64_t morphun::util::StringUtils::lowercase(uint64_t a1, const UChar *a2, uint64_t a3)
{
  v4 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  return morphun::util::StringViewUtils::lowercase(a1, a2, v5, a3);
}

uint64_t morphun::util::StringUtils::reverse(uint64_t a1)
{
  result = npc<std::basic_string<char16_t>>(a1);
  v2 = *(result + 23);
  if (v2 < 0)
  {
    v2 = *(result + 8);
  }

  v3 = ((v2 - 2) >> 1);
  if ((v3 & 0x80000000) == 0)
  {
    v4 = 0;
    v5 = v2 - 1;
    v6 = v5 - v3;
    do
    {
      v7 = *(result + 23);
      if ((v7 & 0x8000000000000000) != 0)
      {
        v10 = *(result + 8);
        if (v10 < v3 || v10 < v6)
        {
LABEL_58:
          __break(1u);
          return result;
        }

        v8 = v5 - v3;
        v9 = *result;
      }

      else
      {
        if (v3 > v7)
        {
          goto LABEL_58;
        }

        v8 = v6;
        v9 = result;
        if (v6 > v7)
        {
          goto LABEL_58;
        }
      }

      v11 = *(v9 + 2 * v3);
      v12 = *(v9 + 2 * v8);
      v14 = (v11 & 0xF800) == 0xD800 || (v12 & 0xF800) == 55296;
      v4 = (v4 & 1) != 0 || v14;
      if ((v7 & 0x80000000) != 0)
      {
        if (*(result + 8) < v3)
        {
          goto LABEL_58;
        }

        v15 = *result;
      }

      else
      {
        v15 = result;
        if (v3 > v7)
        {
          goto LABEL_58;
        }
      }

      *(v15 + 2 * v3) = v12;
      v16 = *(result + 23);
      if ((v16 & 0x8000000000000000) != 0)
      {
        if (*(result + 8) < v8)
        {
          goto LABEL_58;
        }

        v17 = *result;
      }

      else
      {
        v17 = result;
        if (v8 > v16)
        {
          goto LABEL_58;
        }
      }

      *(v17 + 2 * v8) = v11;
      ++v6;
    }

    while (v3-- > 0);
    v19 = v4 ^ 1;
    if (v5 < 1)
    {
      v19 = 1;
    }

    if ((v19 & 1) == 0)
    {
      for (i = 0; i < v5; ++i)
      {
        v21 = i;
        v22 = *(result + 23);
        if ((v22 & 0x8000000000000000) != 0)
        {
          v27 = *(result + 8);
          if (v27 < i)
          {
            goto LABEL_58;
          }

          v23 = *(*result + 2 * i);
          if ((v23 & 0xFC00) == 0xDC00)
          {
            v24 = i + 1;
            if (v27 < v24)
            {
              goto LABEL_58;
            }

            v25 = *(*result + 2 * v24);
            if ((v25 & 0xFC00) == 0xD800)
            {
              if (v27 < i)
              {
                goto LABEL_58;
              }

              v26 = *result;
              ++i;
              goto LABEL_50;
            }
          }
        }

        else
        {
          if (v22 < i)
          {
            goto LABEL_58;
          }

          v23 = *(result + 2 * i);
          if ((v23 & 0xFC00) == 0xDC00)
          {
            v24 = i + 1;
            if (v22 < v24)
            {
              goto LABEL_58;
            }

            v25 = *(result + 2 * v24);
            if ((v25 & 0xFC00) == 0xD800)
            {
              if (i > v22)
              {
                goto LABEL_58;
              }

              ++i;
              v26 = result;
LABEL_50:
              *(v26 + 2 * v21) = v25;
              v28 = *(result + 23);
              if ((v28 & 0x8000000000000000) != 0)
              {
                if (*(result + 8) < v24)
                {
                  goto LABEL_58;
                }

                v29 = *result;
              }

              else
              {
                v29 = result;
                if (v24 > v28)
                {
                  goto LABEL_58;
                }
              }

              *(v29 + 2 * v24) = v23;
            }
          }
        }
      }
    }
  }

  return result;
}

std::string *morphun::util::StringUtils::convert(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return morphun::util::StringViewUtils::convert(a1, a2, v3);
}

uint64_t morphun::util::StringUtils::convert(uint64_t a1, const char *a2)
{
  v2 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return morphun::util::StringViewUtils::convert(a1, a2, v3);
}

void morphun::util::StringUtils::to_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  morphun::util::StringViewUtils::to_string(a1, v3, a2);
}

void morphun::util::StringUtils::to_u16string(const char *a1@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  v2 = *(a1 + 1);
  if (a1[23] >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  morphun::util::StringViewUtils::to_u16string(a1, v3, a2);
}

void morphun::util::StringUtils::to_u16string(double a1@<D0>, std::basic_string<char16_t> *a2@<X8>)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  std::to_string(&__p, a1);
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
    v5 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v5 = __p.__r_.__value_.__r.__words[1];
  }

  morphun::util::StringViewUtils::convert(v7, p_p, v5);
  if (SHIBYTE(v8) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a2, v7[0], v7[1]);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v7;
    a2->__r_.__value_.__r.__words[2] = v8;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_1BE5C68E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL morphun::util::StringUtils::endsWith(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v7[0] = v5;
  v7[1] = v4;
  return std::u16string_view::ends_with[abi:se200100](v7, a2, v3);
}

BOOL morphun::util::StringUtils::startsWith(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  v4 = *(a1 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  v7[0] = v5;
  v7[1] = v4;
  return std::u16string_view::starts_with[abi:se200100](v7, a2, v3);
}

uint64_t morphun::util::StringUtils::codePointAt(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  if (*(a1 + 23) >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v4 = v3;
  }

  return morphun::util::StringViewUtils::codePointAt(a1, v4, a2);
}

uint64_t mgcc_toSpeakableString(uint64_t a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return (*(*a1 + 24))(a1);
}

void sub_1BE5C6A6C(_Unwind_Exception *a1, int a2)
{
  __cxa_free_exception(v3);
  if (a2 == 1)
  {
    v6 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v6, v2, v7);
    __cxa_end_catch();
    JUMPOUT(0x1BE5C6A28);
  }

  _Unwind_Resume(a1);
}

uint64_t mgcc_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void morphun::exception::IllegalArgumentException::~IllegalArgumentException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

double morphun::exception::IllegalArgumentException::IllegalArgumentException(morphun::exception::IllegalArgumentException *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0A18;
  return result;
}

{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *this = &unk_1F3CD0A18;
  return result;
}

void *morphun::exception::IllegalArgumentException::IllegalArgumentException(uint64_t a1, __int128 *a2)
{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0A18;
  return result;
}

{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0A18;
  return result;
}

uint64_t morphun::grammar::synthesis::EnGrammarSynthesizer_CaseLookupFunction::getFeatureValue(uint64_t a1, uint64_t a2)
{
  __p = 0;
  v22 = 0;
  v23 = 0;
  v3 = (*(*a2 + 24))(a2);
  v4 = *(v3 + 23);
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = morphun::util::LocaleUtils::ENGLISH(v3);
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

  v10 = morphun::util::StringViewUtils::lowercase(&__p, v8, v9, v7);
  v11 = HIBYTE(v23);
  if (v23 < 0)
  {
    v11 = v22;
  }

  if (v11 >= 3)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v12 = morphun::analysis::filter::NormalizeFontVariantsFilter::SINGLE_QUOTES(v10);
    if (v23 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v23 >= 0)
    {
      v14 = SHIBYTE(v23);
    }

    else
    {
      v14 = v22;
    }

    morphun::util::UnicodeSetUtils::replaceSetFromString(&v18, v12, p_p, v14, L"'", 1uLL);
    if (std::basic_string<char16_t>::ends_with[abi:se200100](&v18, L"'s") & 1) != 0 || (std::basic_string<char16_t>::ends_with[abi:se200100](&v18, word_1BE8075EA))
    {
LABEL_18:
      if (a1 + 16 == std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a1 + 8, &v18))
      {
        operator new();
      }

      goto LABEL_21;
    }

    if (SHIBYTE(v20) < 0)
    {
      if (v19 == 3)
      {
        v16 = v18;
LABEL_31:
        v17 = 0;
        while (aIts[v17] == *&v16[v17 * 2])
        {
          if (++v17 == 3)
          {
            goto LABEL_18;
          }
        }
      }
    }

    else if (SHIBYTE(v20) == 3)
    {
      v16 = &v18;
      goto LABEL_31;
    }

LABEL_21:
    if (SHIBYTE(v20) < 0)
    {
      operator delete(v18);
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_1BE5C6DE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  MEMORY[0x1BFB49160](v20, 0x10B3C40F7FF9C27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::EnGrammarSynthesizer_CaseLookupFunction::~EnGrammarSynthesizer_CaseLookupFunction(char **this)
{
  *this = &unk_1F3CD5090;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(this[2]);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD5090;
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(this[2]);
}

unsigned __int16 *std::__tree<std::basic_string<char16_t>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t> const&>(uint64_t a1, unsigned __int16 *a2)
{
  result = std::__tree<std::basic_string<char16_t>>::__find_equal<std::basic_string<char16_t>>(a1, &v3, a2);
  if (!*result)
  {
    std::__tree<std::basic_string<char16_t>>::__construct_node<std::basic_string<char16_t> const&>();
  }

  return result;
}

morphun::Token *morphun::analysis::tokenizer::MorphologicalWordToken::MorphologicalWordToken(morphun::Token *a1, int a2, int a3, morphun::Token *a4, unint64_t a5, morphun::Token *a6, unint64_t a7, char a8, uint64_t a9, uint64_t *a10)
{
  *a1 = &off_1F3CDFCF0;
  v11 = morphun::Token_Word::Token_Word(a1, off_1F3CD9CF8, a2, a3, a4, a5, a6, a7, a8);
  *v11 = &unk_1F3CD0CB8;
  *(v11 + 11) = a9;
  *(v11 + 13) = 0;
  *(v11 + 14) = 0;
  *(v11 + 12) = 0;
  std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__init_with_size[abi:se200100]<morphun::analysis::tokenattributes::LemmaMapping*,morphun::analysis::tokenattributes::LemmaMapping*>(v11 + 96, *a10, a10[1], 0xAAAAAAAAAAAAAAABLL * ((a10[1] - *a10) >> 4));
  return a1;
}

uint64_t std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__init_with_size[abi:se200100]<morphun::analysis::tokenattributes::LemmaMapping*,morphun::analysis::tokenattributes::LemmaMapping*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__vallocate[abi:se200100](result, a4);
  }

  return result;
}

void sub_1BE5C71D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__destroy_vector::operator()[abi:se200100](&a9);
  _Unwind_Resume(a1);
}

void morphun::analysis::tokenizer::MorphologicalWordToken::~MorphologicalWordToken(void **this)
{
  *this = &unk_1F3CD0CB8;
  v2 = this + 12;
  std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__destroy_vector::operator()[abi:se200100](&v2);
  morphun::Token::~Token(this, off_1F3CD9D00);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD0CB8;
  v2 = this + 12;
  std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__destroy_vector::operator()[abi:se200100](&v2);

  morphun::Token::~Token(this, off_1F3CD9D00);
}

void morphun::analysis::tokenizer::MorphologicalWordToken::toString(morphun::analysis::tokenizer::MorphologicalWordToken *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  memset(&v72, 0, sizeof(v72));
  v4 = *(this + 12);
  v5 = *(this + 13);
  if (v4 != v5)
  {
    v6 = (v4 + 47);
    do
    {
      morphun::util::StringUtils::to_u16string(*(v6 - 39), &v65);
      std::basic_string<char16_t>::insert(&v65, L"{surfaceFormGrammemes=", 0x16, v7);
      v66 = v65;
      memset(&v65, 0, sizeof(v65));
      std::basic_string<char16_t>::append(&v66, ",", 0x11uLL);
      v67 = v66;
      memset(&v66, 0, sizeof(v66));
      morphun::util::StringUtils::to_u16string(*(v6 - 31), &__p);
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

      std::basic_string<char16_t>::append(&v67, p_p, size);
      v68 = v67;
      memset(&v67, 0, sizeof(v67));
      std::basic_string<char16_t>::append(&v68, ",", 8uLL);
      v69 = v68;
      memset(&v68, 0, sizeof(v68));
      v10 = *v6;
      if (v10 >= 0)
      {
        v11 = (v6 - 23);
      }

      else
      {
        v11 = *(v6 - 23);
      }

      if (v10 >= 0)
      {
        v12 = *v6;
      }

      else
      {
        v12 = *(v6 - 15);
      }

      std::basic_string<char16_t>::append(&v69, v11, v12);
      v70 = v69;
      memset(&v69, 0, sizeof(v69));
      std::basic_string<char16_t>::append(&v70, "}", 1uLL);
      v71 = v70;
      memset(&v70, 0, sizeof(v70));
      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v71;
      }

      else
      {
        v13 = v71.__r_.__value_.__r.__words[0];
      }

      if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = v71.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::append(&v72, v13, v14);
      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      v15 = (v6 + 1);
      v6 += 48;
    }

    while (v15 != v5);
  }

  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"MorphologicalWordToken{begin=");
  v16 = (*(*this + 24))(this);
  morphun::util::StringUtils::to_u16string(v16, &v59);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v59;
  }

  else
  {
    v17 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v59.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&__dst, v17, v18);
  v61 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v57, ",");
  if ((v58 & 0x80u) == 0)
  {
    v19 = v57;
  }

  else
  {
    v19 = v57[0];
  }

  if ((v58 & 0x80u) == 0)
  {
    v20 = v58;
  }

  else
  {
    v20 = v57[1];
  }

  std::basic_string<char16_t>::append(&v61, v19, v20);
  v62 = v61;
  memset(&v61, 0, sizeof(v61));
  v21 = (*(*this + 32))(this);
  morphun::util::StringUtils::to_u16string(v21, &v56);
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v56;
  }

  else
  {
    v22 = v56.__r_.__value_.__r.__words[0];
  }

  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v56.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&v62, v22, v23);
  v63 = v62;
  memset(&v62, 0, sizeof(v62));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v54, L", value='");
  if ((v55 & 0x80u) == 0)
  {
    v24 = v54;
  }

  else
  {
    v24 = v54[0];
  }

  if ((v55 & 0x80u) == 0)
  {
    v25 = v55;
  }

  else
  {
    v25 = v54[1];
  }

  std::basic_string<char16_t>::append(&v63, v24, v25);
  __p = v63;
  memset(&v63, 0, sizeof(v63));
  v26 = *(this + 39);
  if (v26 >= 0)
  {
    v27 = (this + 16);
  }

  else
  {
    v27 = *(this + 2);
  }

  if (v26 >= 0)
  {
    v28 = *(this + 39);
  }

  else
  {
    v28 = *(this + 3);
  }

  std::basic_string<char16_t>::append(&__p, v27, v28);
  v65 = __p;
  memset(&__p, 0, sizeof(__p));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v52, L"', cleanValue='");
  if ((v53 & 0x80u) == 0)
  {
    v29 = v52;
  }

  else
  {
    v29 = v52[0];
  }

  if ((v53 & 0x80u) == 0)
  {
    v30 = v53;
  }

  else
  {
    v30 = v52[1];
  }

  std::basic_string<char16_t>::append(&v65, v29, v30);
  v66 = v65;
  memset(&v65, 0, sizeof(v65));
  v31 = *(this + 63);
  if (v31 >= 0)
  {
    v32 = (this + 40);
  }

  else
  {
    v32 = *(this + 5);
  }

  if (v31 >= 0)
  {
    v33 = *(this + 63);
  }

  else
  {
    v33 = *(this + 6);
  }

  std::basic_string<char16_t>::append(&v66, v32, v33);
  v67 = v66;
  memset(&v66, 0, sizeof(v66));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v50, L"', grammemes=");
  if ((v51 & 0x80u) == 0)
  {
    v34 = v50;
  }

  else
  {
    v34 = v50[0];
  }

  if ((v51 & 0x80u) == 0)
  {
    v35 = v51;
  }

  else
  {
    v35 = v50[1];
  }

  std::basic_string<char16_t>::append(&v67, v34, v35);
  v68 = v67;
  memset(&v67, 0, sizeof(v67));
  v36 = (*(*this + 56))(this);
  morphun::util::StringUtils::to_u16string(v36, &v49);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v49;
  }

  else
  {
    v37 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v49.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&v68, v37, v38);
  v69 = v68;
  memset(&v68, 0, sizeof(v68));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v47, L", lemmaMappings={");
  if ((v48 & 0x80u) == 0)
  {
    v39 = v47;
  }

  else
  {
    v39 = v47[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v40 = v48;
  }

  else
  {
    v40 = v47[1];
  }

  std::basic_string<char16_t>::append(&v69, v39, v40);
  v70 = v69;
  memset(&v69, 0, sizeof(v69));
  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v72;
  }

  else
  {
    v41 = v72.__r_.__value_.__r.__words[0];
  }

  if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v72.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&v70, v41, v42);
  v71 = v70;
  memset(&v70, 0, sizeof(v70));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v45, L"}}");
  if ((v46 & 0x80u) == 0)
  {
    v43 = v45;
  }

  else
  {
    v43 = v45[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v44 = v46;
  }

  else
  {
    v44 = v45[1];
  }

  std::basic_string<char16_t>::append(&v71, v43, v44);
  *a2 = v71;
  memset(&v71, 0, sizeof(v71));
  if (v46 < 0)
  {
    operator delete(v45[0]);
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (v53 < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v55 < 0)
  {
    operator delete(v54[0]);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (v58 < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5C7A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v84 - 121) < 0)
  {
    operator delete(*(v84 - 144));
  }

  if (*(v84 - 153) < 0)
  {
    operator delete(*(v84 - 176));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v84 - 185) < 0)
  {
    operator delete(*(v84 - 208));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v84 - 217) < 0)
  {
    operator delete(*(v84 - 240));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a80 < 0)
  {
    operator delete(a79);
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

  if (*(v84 - 89) < 0)
  {
    operator delete(*(v84 - 112));
  }

  _Unwind_Resume(a1);
}

morphun::Token *morphun::analysis::tokenizer::MorphologicalWordToken::MorphologicalWordToken(morphun::Token *a1, uint64_t *a2, int a3, int a4, morphun::Token *a5, unint64_t a6, morphun::Token *a7, unint64_t a8, char a9, uint64_t a10, uint64_t *a11)
{
  v13 = morphun::Token_Word::Token_Word(a1, a2 + 1, a3, a4, a5, a6, a7, a8, a9);
  v14 = *a2;
  *v13 = *a2;
  *(a1 + *(v14 - 64)) = a2[7];
  *(a1 + *(*a1 - 40)) = a2[8];
  *(a1 + 12) = 0;
  *(a1 + 11) = a10;
  *(a1 + 13) = 0;
  *(a1 + 14) = 0;
  std::vector<morphun::analysis::tokenattributes::LemmaMapping>::__init_with_size[abi:se200100]<morphun::analysis::tokenattributes::LemmaMapping*,morphun::analysis::tokenattributes::LemmaMapping*>(a1 + 96, *a11, a11[1], 0xAAAAAAAAAAAAAAABLL * ((a11[1] - *a11) >> 4));
  return a1;
}

void morphun::util::StringViewUtils::replace(std::basic_string<char16_t> *a1, uint64_t a2, std::basic_string<char16_t>::size_type a3, unsigned __int16 *a4, unint64_t a5, std::basic_string<char16_t> *a6, unint64_t a7)
{
  if (*(npc<std::basic_string<char16_t>>(a1) + 23) < 0)
  {
    v14 = (a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v14 = 10;
  }

  if (a3 >= v14 && a5 <= a7)
  {
    std::basic_string<char16_t>::reserve(a1, a3);
  }

  v15 = 0;
  v16 = (a6 + 2 * a7);
  while (1)
  {
    v17 = std::u16string_view::find[abi:se200100](a2, a3, a4, a5, v15);
    v22 = (a2 + 2 * v15);
    if (v17 == -1)
    {
      break;
    }

    v23 = v17;
    std::basic_string<char16_t>::append<char16_t const*,0>(a1, v22, (a2 + 2 * v17), v18, v19, v20, v21);
    std::basic_string<char16_t>::append<char16_t const*,0>(v24, a6, v16, v25, v26, v27, v28);
    v15 = v23 + a5;
  }

  std::basic_string<char16_t>::append<char16_t const*,0>(a1, v22, (a2 + 2 * a3), v18, v19, v20, v21);
}

uint64_t std::u16string_view::find[abi:se200100](uint64_t result, unint64_t a2, unsigned __int16 *a3, uint64_t a4, unint64_t a5)
{
  if (a4)
  {
    if (a3)
    {
      if (a2 >= a5)
      {
        v5 = (result + 2 * a2);
        v6 = 2 * a2 - 2 * a5;
        if (v6 >= 2 * a4)
        {
          v8 = (result + 2 * a5);
          v9 = v6 >> 1;
          do
          {
            v7 = v8;
            v10 = v9 - a4 + 1;
            if (v9 - a4 != -1)
            {
              v13 = 2 - 2 * a4 + 2 * v9;
              v7 = v8;
              while (*v7 != *a3)
              {
                ++v7;
                v13 -= 2;
                if (!v13)
                {
                  goto LABEL_9;
                }
              }
            }

            if (v7 == &v8[v10] || v7 == 0)
            {
              break;
            }

            v12 = 0;
            while (a3[v12] == v7[v12])
            {
              if (a4 == ++v12)
              {
                goto LABEL_10;
              }
            }

            v8 = v7 + 1;
            v9 = v5 - (v7 + 1);
          }

          while (v9 >= a4);
        }

LABEL_9:
        v7 = (result + 2 * a2);
LABEL_10:
        if (v7 == v5)
        {
          return -1;
        }

        else
        {
          return (v7 - result) >> 1;
        }
      }

      else
      {
        return -1;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else if (a2 < a5)
  {
    return -1;
  }

  else
  {
    return a5;
  }

  return result;
}

void std::basic_string<char16_t>::append<char16_t const*,0>(std::basic_string<char16_t> *this, std::basic_string<char16_t> *__src, std::basic_string<char16_t> *a3, uint64_t a4, uint64_t a5, std::basic_string<char16_t>::size_type a6, std::basic_string<char16_t>::size_type a7)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v10 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return;
    }

    size = this->__r_.__value_.__l.__size_;
    v14 = this->__r_.__value_.__r.__words[2];
    v11 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v13 = this->__r_.__value_.__r.__words[0];
    v12 = HIBYTE(v14);
  }

  else
  {
    if (a3 == __src)
    {
      return;
    }

    v11 = 10;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    v13 = this;
  }

  v15 = v13->__r_.__value_.__r.__words + 2 * size + 2;
  if (v15 < v13)
  {
    goto LABEL_28;
  }

  v16 = v10 >> 1;
  if (v13 > __src || v15 <= __src)
  {
    if (v11 - size < v16)
    {
      std::basic_string<char16_t>::__grow_by(this, v11, size - v11 + v16, size, size, a6, a7);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    }

    v19 = this;
    if ((v12 & 0x80) != 0)
    {
      v19 = this->__r_.__value_.__r.__words[0];
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v20 = v19 + 2 * size;
      if (v20 > __src || v20 + v10 <= __src)
      {
        memmove(v19 + 2 * size, __src, v10);
        *(v20 + v10) = 0;
        v21 = v16 + size;
        if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
        {
          this->__r_.__value_.__l.__size_ = v21;
        }

        else
        {
          *(&this->__r_.__value_.__s + 23) = v21 & 0x7F;
        }

        return;
      }
    }

LABEL_28:
    __break(1u);
    return;
  }

  std::basic_string<char16_t>::__init_with_size[abi:se200100]<char16_t const*,char16_t const*>(__p, __src, a3, v16);
  if ((v23 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v18 = v23;
  }

  else
  {
    v18 = __p[1];
  }

  std::basic_string<char16_t>::append(this, v17, v18);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BE5C82A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::basic_string<char16_t>::__init_with_size[abi:se200100]<char16_t const*,char16_t const*>(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_15:
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (a4 > 0xA)
  {
    if ((a4 | 3) == 0xB)
    {
      v5 = 13;
    }

    else
    {
      v5 = (a4 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v5);
  }

  __dst[23] = a4;
  v6 = a3 - __src;
  if (a3 - __src < 0 || (v7 = &__dst[v6], __dst <= __src) && v7 > __src)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v6);
  }

  *v7 = 0;
  return __dst;
}

uint64_t morphun::util::StringViewUtils::trim(uint64_t a1, unint64_t a2)
{
  if (a2 < 1)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v2 = 0;
  do
  {
    if (a2 == v2)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (*(a1 + 2 * v2) > 0x20u)
    {
      v3 = v2;
      goto LABEL_9;
    }

    ++v2;
  }

  while ((a2 & 0x7FFFFFFF) != v2);
  v3 = a2;
LABEL_9:
  v4 = a2;
  do
  {
    if (v4 <= v3)
    {
      break;
    }

    if (a2 <= v4 - 1)
    {
      goto LABEL_15;
    }

    v5 = *(a1 - 2 + 2 * v4--);
  }

  while (v5 < 0x21);
  if (a2 < v3)
  {
LABEL_16:
    std::__throw_out_of_range[abi:se200100]("string_view::substr");
  }

  return a1 + 2 * v3;
}

uint64_t morphun::util::StringViewUtils::isAllLowerCase(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = morphun::util::StringViewUtils::codePointAt(a1, a2, v4);
    v6 = v5 == MEMORY[0x1BFB495D0]();
    result = v6;
    if (!v6)
    {
      break;
    }

    result = 1;
    v8 = v5 < 0x10000 ? 1 : 2;
    v4 += v8;
  }

  while (v4 < a2);
  return result;
}

uint64_t morphun::util::StringViewUtils::isAllUpperCase(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 1)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = morphun::util::StringViewUtils::codePointAt(a1, a2, v4);
    v6 = v5 == MEMORY[0x1BFB495E0]();
    result = v6;
    if (!v6)
    {
      break;
    }

    result = 1;
    v8 = v5 < 0x10000 ? 1 : 2;
    v4 += v8;
  }

  while (v4 < a2);
  return result;
}

void morphun::util::StringViewUtils::capitalizeFirst(UChar *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 < 2)
  {
    if (a2 == 1)
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      morphun::util::StringViewUtils::uppercase(a4, a1, 1, a3);
      return;
    }
  }

  else
  {
    v8 = morphun::util::StringViewUtils::codePointAt(a1, a2, 0);
    if (!u_isupper(v8))
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      morphun::util::StringUtils::appendCodePoint(a4, v8);
      v9 = *(a4 + 23);
      if (v9 >= 0)
      {
        v10 = a4;
      }

      else
      {
        v10 = *a4;
      }

      if (v9 >= 0)
      {
        LODWORD(v11) = *(a4 + 23);
      }

      else
      {
        v11 = *(a4 + 8);
      }

      morphun::util::StringViewUtils::uppercase(a4, v10, v11, a3);
      v16 = 2;
      if (v8 < 0x10000)
      {
        v16 = 1;
      }

      std::basic_string<char16_t>::append<char16_t const*,0>(a4, &a1[v16], &a1[a2], v12, v13, v14, v15);
      return;
    }
  }

  std::basic_string<char16_t>::__init_with_size[abi:se200100]<char16_t const*,char16_t const*>(a4, a1, &a1[a2], (2 * a2) >> 1);
}

void sub_1BE5C865C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::util::StringViewUtils::uppercase(uint64_t a1, const UChar *a2, int32_t a3, uint64_t a4)
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

  v12 = u_strToUpper(v9, a3, a2, a3, v11, &pErrorCode);
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

    v13 = u_strToUpper(v15, v13, a2, a3, v16, &pErrorCode);
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

void morphun::util::StringViewUtils::split(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = 0;
  v11 = 0;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  while (1)
  {
    v12 = std::u16string_view::find[abi:se200100](a1, a2, a3, a4, v11);
    v13 = (a1 + 2 * v11);
    if (v12 == -1)
    {
      break;
    }

    v14 = v12;
    if (v10 >= a5[2])
    {
      std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<char16_t const*,char16_t const*>(a5);
      v10 = v15;
    }

    else
    {
      std::vector<std::basic_string<char16_t>>::__construct_one_at_end[abi:se200100]<char16_t const*,char16_t const*>(a5, v13, (a1 + 2 * v12));
      v10 += 24;
    }

    a5[1] = v10;
    v11 = v14 + a4;
  }

  if (v10 >= a5[2])
  {
    std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<char16_t const*,char16_t const*>(a5);
  }

  else
  {
    std::vector<std::basic_string<char16_t>>::__construct_one_at_end[abi:se200100]<char16_t const*,char16_t const*>(a5, v13, (a1 + 2 * a2));
    v16 = v10 + 24;
  }

  a5[1] = v16;
}

void sub_1BE5C88F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](va);
  _Unwind_Resume(a1);
}

_BYTE *std::vector<std::basic_string<char16_t>>::__construct_one_at_end[abi:se200100]<char16_t const*,char16_t const*>(_BYTE *result, _BYTE *a2, _BYTE *a3)
{
  v3 = *(result + 1);
  if (v3)
  {
    v4 = result;
    result = std::basic_string<char16_t>::__init_with_size[abi:se200100]<char16_t const*,char16_t const*>(*(result + 1), a2, a3, (a3 - a2) >> 1);
    *(v4 + 1) = v3 + 24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<char16_t const*,char16_t const*>(void *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
    {
      v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v4 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v4 = v2;
    }

    v7 = a1;
    if (v4)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<std::basic_string<char16_t>>>(v4);
    }

    v5 = 24 * v1;
    v6 = 0;
    __break(1u);
  }

  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
}

void sub_1BE5C8A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::basic_string<char16_t> *morphun::util::StringViewUtils::join@<X0>(std::basic_string<char16_t>::value_type *__s@<X1>, std::basic_string<char16_t>::size_type __n@<X2>, std::basic_string<char16_t> *result@<X0>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v4 = result->__r_.__value_.__r.__words[0];
  size = result->__r_.__value_.__l.__size_;
  if (result->__r_.__value_.__r.__words[0] != size)
  {
    do
    {
      v9 = *(a4 + 23);
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(a4 + 8);
      }

      if (v9)
      {
        std::basic_string<char16_t>::append(a4, __s, __n);
      }

      v10 = *(v4 + 23);
      if (v10 >= 0)
      {
        v11 = v4;
      }

      else
      {
        v11 = *v4;
      }

      if (v10 >= 0)
      {
        v12 = *(v4 + 23);
      }

      else
      {
        v12 = *(v4 + 8);
      }

      result = std::basic_string<char16_t>::append(a4, v11, v12);
      v4 += 24;
    }

    while (v4 != size);
  }

  return result;
}

void sub_1BE5C8B30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef mloc_getSupportedLocalesList(morphun::util::LocaleUtils *a1)
{
  morphun::util::LocaleUtils::getSupportedLocaleList(a1, &v4);
  if (v6)
  {
    if (!(v6 >> 61))
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<__CFLocale const*>>(v6);
    }

    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  if (v4 != &v5)
  {
    morphun::util::CFUtils::convert((v4 + 4), v1);
    std::__allocate_at_least[abi:se200100]<std::allocator<__CFLocale const*>>(1uLL);
  }

  v2 = CFArrayCreate(0, 0, 0, &mloc_getSupportedLocalesList::callbacks);
  std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(v5);
  return v2;
}

void sub_1BE5C8D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  std::__tree<morphun::lang::features::LanguageGrammarFeatures_GrammarFeatures>::destroy(a11);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:se200100]<std::allocator<__CFLocale const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

CFLocaleRef mloc_createValidRegionAwareLanguage(__CFLocale *a1, const __CFLocale *a2)
{
  morphun::util::CFUtils::convert(v7, a1);
  morphun::util::CFUtils::convert(v6, a2);
  morphun::util::LocaleUtils::createValidRegionAwareLanguage(v7, v6, v8);
  v4 = morphun::util::CFUtils::convert(v8, v3);
  return v4;
}

void sub_1BE5C8E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::ArGrammarSynthesizer_PronounLookupFunction::getArticle(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = a3 & 0xF | (16 * (a4 & 0xF)) | ((a5 & 0xF) << 8);
  v8 = a1 + 56;
  do
  {
    if (*(v5 + 32) >= v7)
    {
      v8 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v7));
  }

  while (v5);
  if (v8 == v6 || v7 < *(v8 + 32))
  {
LABEL_8:
    v8 = a1 + 56;
  }

  v9 = (*(*a2 + 24))(a2);
  if (*(v9 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&__str, *v9, *(v9 + 8));
  }

  else
  {
    v11 = *v9;
    __str.__r_.__value_.__r.__words[2] = *(v9 + 16);
    *&__str.__r_.__value_.__l.__data_ = v11;
  }

  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
    v12 = (LODWORD(__str.__r_.__value_.__r.__words[1]) - 1);
    if (v12 <= 1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) <= 2)
    {
      goto LABEL_24;
    }

    v12 = (SHIBYTE(__str.__r_.__value_.__r.__words[2]) - 1);
    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (size < v12)
  {
    __break(1u);
  }

  p_str = &__str;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (p_str->__r_.__value_.__s.__data_[v12] == 1577)
  {
    std::basic_string<char16_t>::basic_string(&v32, &__str, 0, v12, v10);
    std::basic_string<char16_t>::append(&v32, word_1BE7E155A, 1uLL);
    v34[0] = v32.__r_.__value_.__l.__size_;
    v15 = v32.__r_.__value_.__r.__words[0];
    *(v34 + 7) = *(&v32.__r_.__value_.__r.__words[1] + 7);
    v16 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
    memset(&v32, 0, sizeof(v32));
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      __str.__r_.__value_.__r.__words[0] = v15;
      __str.__r_.__value_.__l.__size_ = v34[0];
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v34 + 7);
      *(&__str.__r_.__value_.__s + 23) = v16;
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      __str.__r_.__value_.__r.__words[0] = v15;
      __str.__r_.__value_.__l.__size_ = v34[0];
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v34 + 7);
      *(&__str.__r_.__value_.__s + 23) = v16;
    }
  }

LABEL_24:
  if (v8 == v6)
  {
    goto LABEL_59;
  }

  v17 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v17 = __str.__r_.__value_.__l.__size_;
    if (!__str.__r_.__value_.__l.__size_)
    {
      goto LABEL_59;
    }

    v18 = __str.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__str.__r_.__value_.__s + 23))
    {
      goto LABEL_59;
    }

    v18 = &__str;
  }

  v19 = morphun::util::StringViewUtils::trim(v18, v17);
  if (!v20)
  {
    goto LABEL_40;
  }

  v21 = 2 * v20;
  v22 = v19;
  v23 = (v19 + 2 * v20);
  while (*v22 != 32)
  {
    v22 = (v22 + 2);
    v21 -= 2;
    if (!v21)
    {
      goto LABEL_40;
    }
  }

  v24 = v22 == v23 ? 0 : v22;
  if (v22 == v23 || v24 - v19 == -2)
  {
LABEL_40:
    v25 = morphun::lang::StringFilterUtil::LATIN_SCRIPT(v19);
    v26 = &__str;
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = __str.__r_.__value_.__r.__words[0];
    }

    if (!MEMORY[0x1BFB49A20](*v25, v26->__r_.__value_.__s.__data_[0]) && (std::basic_string<char16_t>::starts_with[abi:se200100](&__str, word_1BE7E4FB6) & 1) == 0)
    {
      if (std::basic_string<char16_t>::ends_with[abi:se200100](&__str, word_1BE80CF6C))
      {
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__str.__r_.__value_.__l.__size_ != 3)
          {
            goto LABEL_57;
          }

          v27 = __str.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) != 3)
          {
            goto LABEL_57;
          }

          v27 = &__str;
        }

        v28 = 0;
        do
        {
          v29 = v27->__r_.__value_.__s.__data_[v28];
          v30 = word_1BE8076D6[v28];
        }

        while (v30 == v29 && v28++ != 2);
        if (v30 != v29)
        {
LABEL_57:
          if (!std::operator==[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&__str, word_1BE8076DE))
          {
            goto LABEL_59;
          }
        }
      }

      std::basic_string<char16_t>::append(&__str, *(v8 + 40), *(v8 + 48));
    }
  }

LABEL_59:
  operator new();
}

void sub_1BE5C920C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t std::operator==[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(uint64_t result, _WORD *a2)
{
  if (a2)
  {
    if (*a2)
    {
      v2 = 0;
      do
      {
        v3 = v2 + 1;
      }

      while (a2[++v2]);
    }

    else
    {
      v3 = 0;
    }

    v5 = *(result + 23);
    if (v5 < 0)
    {
      if (v3 == *(result + 8))
      {
        if (v3 == -1)
        {
          std::basic_string<char16_t>::__throw_out_of_range[abi:se200100]();
        }

        result = *result;
        if (v3)
        {
          goto LABEL_10;
        }

        return 1;
      }
    }

    else if (v3 == v5)
    {
      if (v3)
      {
LABEL_10:
        v6 = v3 - 1;
        do
        {
          v8 = *result;
          result += 2;
          v7 = v8;
          v10 = *a2++;
          v9 = v10;
          v12 = v6-- != 0;
          v13 = v9 == v7;
          v14 = v9 == v7;
        }

        while (v13 && v12);
        return v14;
      }

      return 1;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void morphun::grammar::synthesis::ArGrammarSynthesizer_PronounLookupFunction::~ArGrammarSynthesizer_PronounLookupFunction(morphun::grammar::synthesis::ArGrammarSynthesizer_PronounLookupFunction *this)
{
  *this = &unk_1F3CD4BE8;
  std::__tree<std::u16string_view>::destroy(*(this + 7));

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD4BE8;
  std::__tree<std::u16string_view>::destroy(*(this + 7));
}

void *std::map<int,std::u16string_view>::map[abi:se200100](void *a1, void *a2)
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
      std::__tree<std::__value_type<int,std::u16string_view>,std::__map_value_compare<int,std::__value_type<int,std::u16string_view>,std::less<int>,true>,std::allocator<std::__value_type<int,std::u16string_view>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::u16string_view> const&>(a1, v3, *(v5 + 8));
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

unint64_t morphun::Token::hashCode(morphun::Token *this)
{
  v3 = *(this + 2);
  v1 = (this + 16);
  v2 = v3;
  v4 = *(v1 + 23);
  if (v4 >= 0)
  {
    v2 = v1;
  }

  if (v4 < 0)
  {
    v4 = v1[1];
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](v2, 2 * v4);
}

void morphun::Token::toString(char **this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  memset(&v58, 0, sizeof(v58));
  p_size = (&v58.__r_.__value_.__r.__words[1] + 2);
  if (!this)
  {
    goto LABEL_16;
  }

  v5 = *this;
  v6 = **this;
  {
    v9 = *v5;
    {
      *(&v58.__r_.__value_.__s + 23) = 4;
      v8 = 0x6C006900610054;
      goto LABEL_7;
    }

    v10 = *v5;
    {
      *(&v58.__r_.__value_.__s + 23) = 4;
      v7 = 0x6100650048;
      goto LABEL_4;
    }

    v11 = *v5;
    {
      *(&v58.__r_.__value_.__s + 23) = 5;
      v58.__r_.__value_.__s.__data_[4] = 109;
      v12 = &qword_1BE8076E6;
LABEL_17:
      v58.__r_.__value_.__r.__words[0] = *v12;
      goto LABEL_18;
    }

    v13 = *v5;
    {
      *(&v58.__r_.__value_.__s + 23) = 5;
      v58.__r_.__value_.__s.__data_[4] = 112;
      v12 = &qword_1BE8076F2;
      goto LABEL_17;
    }

    v14 = *v5;
    {
      std::basic_string<char16_t>::__assign_external(&v58, word_1BE8076FE, 0xEuLL);
      goto LABEL_19;
    }

LABEL_16:
    *(&v58.__r_.__value_.__s + 23) = 5;
    v58.__r_.__value_.__s.__data_[4] = 110;
    v12 = L"Token";
    goto LABEL_17;
  }

  *(&v58.__r_.__value_.__s + 23) = 4;
  v7 = 0x72006F0057;
LABEL_4:
  v8 = v7 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
LABEL_7:
  v58.__r_.__value_.__r.__words[0] = v8;
  p_size = &v58.__r_.__value_.__l.__size_;
LABEL_18:
  *p_size = 0;
LABEL_19:
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"{begin=");
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v58;
  }

  else
  {
    v16 = v58.__r_.__value_.__r.__words[0];
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v58.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::insert(&__dst, v16, size, v15);
  v50 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  morphun::util::StringUtils::to_u16string(*(this + 2), &v48);
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v48;
  }

  else
  {
    v18 = v48.__r_.__value_.__r.__words[0];
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = v48.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&v50, v18, v19);
  v51 = v50;
  memset(&v50, 0, sizeof(v50));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v46, ",");
  if ((v47 & 0x80u) == 0)
  {
    v20 = v46;
  }

  else
  {
    v20 = v46[0];
  }

  if ((v47 & 0x80u) == 0)
  {
    v21 = v47;
  }

  else
  {
    v21 = v46[1];
  }

  std::basic_string<char16_t>::append(&v51, v20, v21);
  v52 = v51;
  memset(&v51, 0, sizeof(v51));
  morphun::util::StringUtils::to_u16string(*(this + 3), &v45);
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v45;
  }

  else
  {
    v22 = v45.__r_.__value_.__r.__words[0];
  }

  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v45.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&v52, v22, v23);
  v53 = v52;
  memset(&v52, 0, sizeof(v52));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v43, L", value='");
  if ((v44 & 0x80u) == 0)
  {
    v24 = v43;
  }

  else
  {
    v24 = v43[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v25 = v44;
  }

  else
  {
    v25 = v43[1];
  }

  std::basic_string<char16_t>::append(&v53, v24, v25);
  v54 = v53;
  memset(&v53, 0, sizeof(v53));
  v26 = *(this + 39);
  if (v26 >= 0)
  {
    v27 = (this + 2);
  }

  else
  {
    v27 = this[2];
  }

  if (v26 >= 0)
  {
    v28 = *(this + 39);
  }

  else
  {
    v28 = this[3];
  }

  std::basic_string<char16_t>::append(&v54, v27, v28);
  v55 = v54;
  memset(&v54, 0, sizeof(v54));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v41, L"', cleanValue='");
  if ((v42 & 0x80u) == 0)
  {
    v29 = v41;
  }

  else
  {
    v29 = v41[0];
  }

  if ((v42 & 0x80u) == 0)
  {
    v30 = v42;
  }

  else
  {
    v30 = v41[1];
  }

  std::basic_string<char16_t>::append(&v55, v29, v30);
  v56 = v55;
  memset(&v55, 0, sizeof(v55));
  v33 = this[5];
  v32 = (this + 5);
  v31 = v33;
  v34 = v32[23];
  if (v34 >= 0)
  {
    v35 = v32;
  }

  else
  {
    v35 = v31;
  }

  if (v34 >= 0)
  {
    v36 = v32[23];
  }

  else
  {
    v36 = *(v32 + 1);
  }

  std::basic_string<char16_t>::append(&v56, v35, v36);
  v57 = v56;
  memset(&v56, 0, sizeof(v56));
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"'}");
  if ((v40 & 0x80u) == 0)
  {
    v37 = __p;
  }

  else
  {
    v37 = __p[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v38 = v40;
  }

  else
  {
    v38 = __p[1];
  }

  std::basic_string<char16_t>::append(&v57, v37, v38);
  *a2 = v57;
  memset(&v57, 0, sizeof(v57));
  if (v40 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5C9A74(_Unwind_Exception *a1)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::Token::operator==(char **a1, char **a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  Type = mtok_getType(a1);
  if (Type != mtok_getType(a2))
  {
    return 0;
  }

  if (*(a1 + 3) - *(a1 + 2) != *(a2 + 3) - *(a2 + 2))
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  v5 = *a1;
  v6 = **a1;
  v8 = *a2;
  v9 = **a2;
  {
    return 0;
  }

  v10 = *v5;
  v12 = *v8;
  {
    return 0;
  }

  result = std::operator==[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1 + 20, a2 + 20);
  if (result)
  {

    return std::operator==[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(a1 + 8, a2 + 8);
  }

  return result;
}

char **morphun::Token::isHead(char **this)
{
  if (this)
  {
    v1 = **this;
  }

  return this;
}

char **morphun::Token::isTail(char **this)
{
  if (this)
  {
    v1 = **this;
  }

  return this;
}

unint64_t morphun::Token::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v2 = a2 + 16;
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

  v7 = *(v2 + 8);
  if (v5 >= 0)
  {
    v7 = *(v2 + 23);
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:se200100](v6, 2 * v7);
}

morphun::Token *morphun::Token_OverSizedToken::Token_OverSizedToken(morphun::Token *a1, int a2, int a3, morphun::Token *__src, unint64_t a5, morphun::Token *a6, unint64_t a7)
{
  *a1 = &off_1F3CED498;
  result = morphun::Token::Token(a1, off_1F3CDCE40, a2, a3, __src, a5, a6, a7, 1);
  *result = &unk_1F3CD9500;
  return result;
}

void morphun::Token_OverSizedToken::~Token_OverSizedToken(void **this)
{
  morphun::Token::~Token(this, off_1F3CDCE40);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::Token::~Token(this, off_1F3CDCE40);
}

morphun::Token *morphun::Token_OverSizedToken::Token_OverSizedToken(morphun::Token *a1, uint64_t *a2, int a3, int a4, morphun::Token *a5, unint64_t a6, morphun::Token *a7, unint64_t a8)
{
  result = morphun::Token::Token(a1, a2 + 1, a3, a4, a5, a6, a7, a8, 1);
  v10 = *a2;
  *result = *a2;
  *(result + *(v10 - 64)) = a2[4];
  *(result + *(*result - 40)) = a2[5];
  return result;
}

morphun::Token *morphun::Token_OverSizedToken::Token_OverSizedToken(morphun::Token *a1, int a2, int a3, morphun::Token *__src, unint64_t a5)
{
  *a1 = &off_1F3CED498;
  result = morphun::Token::Token(a1, off_1F3CDCE40, a2, a3, __src, a5, __src, a5, 1);
  *result = &unk_1F3CD9500;
  return result;
}

void morphun::dialog::language::IsCommonConceptFactory::~IsCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CEF248);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CEF248);
}

uint64_t std::__tree<std::__value_type<std::string,morphun::Tokenizer const*>,std::__map_value_compare<std::string,std::__value_type<std::string,morphun::Tokenizer const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,morphun::Tokenizer const*>>>::__emplace_unique_key_args<std::string,std::string const&,morphun::Tokenizer const*&>(uint64_t a1, void *a2)
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
      if ((std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(a2, v2 + 4) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    result = std::operator<=>[abi:se200100]<char,std::char_traits<char>,std::allocator<char>>(v4 + 4, a2);
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

uint64_t morphun::analysis::util::AttributeFactory::createAttributeInstance(morphun::analysis::util::AttributeFactory *this, const std::type_info *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::find<std::type_index>(this + 1, a2->__type_name);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    type_name = a2->__type_name;
    v9 = (type_name & 0x7FFFFFFFFFFFFFFFLL);
    if ((type_name & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = exception;
      v11 = strlen((type_name & 0x7FFFFFFFFFFFFFFFLL));
      morphun::util::StringViewUtils::to_u16string(v9, v11, &v13);
      std::basic_string<char16_t>::insert(&v13, "C", 0x24, v12);
      v14 = v13;
      memset(&v13, 0, sizeof(v13));
      morphun::exception::IllegalArgumentException::IllegalArgumentException(v10, &v14);
    }

    __break(1u);
LABEL_9:
    std::__throw_bad_function_call[abi:se200100]();
  }

  v4 = v3[6];
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *(*v4 + 48);

  return v5();
}

void sub_1BE5CA600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void std::__throw_bad_function_call[abi:se200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void morphun::analysis::util::AttributeFactory::~AttributeFactory(morphun::analysis::util::AttributeFactory *this)
{
  *this = &unk_1F3CD1CD8;
  std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::~__hash_table(this + 8);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD1CD8;
  std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::~__hash_table(this + 8);
}

uint64_t std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::__deallocate_node(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      std::__function::__value_func<morphun::analysis::util::AttributeImpl * ()(void)>::~__value_func[abi:se200100]((v1 + 3));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t std::__function::__value_func<morphun::analysis::util::AttributeImpl * ()(void)>::~__value_func[abi:se200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

double morphun::analysis::util::AttributeFactory::AttributeFactory(morphun::analysis::util::AttributeFactory *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 10) = 1065353216;
  return result;
}

double morphun::analysis::util::AttributeFactory::AttributeFactory(morphun::analysis::util::AttributeFactory *this)
{
  *this = &unk_1F3CD1CD8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  return result;
}

void morphun::analysis::util::AttributeFactory::~AttributeFactory(morphun::analysis::util::AttributeFactory *this, uint64_t *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 40)) = a2[1];
  std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::~__hash_table(this + 8);
}

void virtual thunk tomorphun::analysis::util::AttributeFactory::~AttributeFactory(morphun::analysis::util::AttributeFactory *this)
{
  v1 = (this + *(*this - 32));
  *v1 = &unk_1F3CD1CD8;
  std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::~__hash_table((v1 + 1));
}

{
  v1 = (this + *(*this - 32));
  *v1 = &unk_1F3CD1CD8;
  std::__hash_table<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::__unordered_map_hasher<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::hash<std::type_index>,std::equal_to<std::type_index>,true>,std::__unordered_map_equal<std::type_index,std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>,std::equal_to<std::type_index>,std::hash<std::type_index>,true>,std::allocator<std::__hash_value_type<std::type_index,std::function<morphun::analysis::util::AttributeImpl * ()(void)>>>>::~__hash_table((v1 + 1));

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::analysis::util::AttributeFactory::DEFAULT_ATTRIBUTE_FACTORY(morphun::analysis::util::AttributeFactory *this)
{
  {
    operator new();
  }

  return morphun::analysis::util::AttributeFactory::DEFAULT_ATTRIBUTE_FACTORY(void)::DEFAULT_ATTRIBUTE_FACTORY_;
}

void sub_1BE5CAB00(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x10A1C40EA59D502);
  _Unwind_Resume(a1);
}

void sub_1BE5CAC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  morphun::analysis::util::AttributeFactory::~AttributeFactory(v10, off_1F3CDA5E8);
  MEMORY[0x1BFB49160]();
  _Unwind_Resume(a1);
}

void sub_1BE5CAD94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(a1);
    morphun::util::CFUtils::convert(v12, v9, v13);
    __cxa_end_catch();
    JUMPOUT(0x1BE5CAD7CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t mtok_createTokenChain(uint64_t a1, const __CFString *a2)
{
  npc<morphun::Tokenizer const>(a1);
  morphun::util::CFUtils::to_u16string(&__p, a2);
  v4 = (*(*a1 + 24))(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1BE5CAE7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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
    JUMPOUT(0x1BE5CAE64);
  }

  _Unwind_Resume(exception_object);
}

uint64_t npc<morphun::Tokenizer const>(uint64_t result)
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

uint64_t mtok_destroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t mtok_setMaxInputSize(uint64_t a1, int a2)
{
  result = npc<morphun::Tokenizer>(a1);
  *(result + 36) = a2;
  return result;
}

void *morphun::analysis::stemmer::DeStemFilter::reset(morphun::analysis::stemmer::DeStemFilter *this)
{
  v2 = npc<morphun::analysis::TokenStream>(*(this + 15));
  (*(*v2 + 40))(v2);
  result = morphun::analysis::util::AttributeSource::getAttribute<morphun::analysis::tokenattributes::KeywordAttribute>(this);
  *(this + 17) = result;
  return result;
}

uint64_t morphun::analysis::stemmer::DeStemFilter::incrementToken(morphun::analysis::stemmer::DeStemFilter *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    goto LABEL_55;
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
      if ((v7 & 0x8000000000000000) != 0)
      {
        v8 = *v6;
        v7 = *(v6 + 1);
      }

      else
      {
        v8 = v5 + *(*v5 - 96);
      }

      morphun::dictionary::DictionaryMetaData::getPropertyValues(*(this + 18), v8, v7, "l", 5uLL, v28);
      v9 = v28[0];
      if (v28[0] != v28[1])
      {
        v10 = *(v28[0] + 23);
        if ((v10 & 0x8000000000000000) != 0)
        {
          v10 = *(v28[0] + 8);
        }

        if (v10 >= 2)
        {
          v11 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
          std::basic_string<char16_t>::operator=((v11 + *(*v11 - 96)), v9);
        }

        goto LABEL_52;
      }

      v29 = 0;
      v12 = v6[23];
      if (v12 < 0)
      {
        v13 = *v6;
        v12 = *(v6 + 1);
      }

      else
      {
        v13 = v6;
      }

      if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(*(this + 18), &v29, v13, v12) && (*(this + 19) & v29) != 0)
      {
LABEL_52:
        v29 = v28;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v29);
        return v3;
      }

      v14 = npc<morphun::analysis::tokenattributes::CharTermAttribute>(*(this + 16));
      LODWORD(v15) = v6[23];
      if ((v15 & 0x80000000) != 0)
      {
        v17 = *(v6 + 1);
        v18 = v17;
        v16 = v17;
        if (v17 < 5)
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v6[23] < 5)
        {
LABEL_20:
          v16 = v15;
LABEL_51:
          std::basic_string<char16_t>::resize((v14 + *(*v14 - 96)), v16, 0);
          goto LABEL_52;
        }

        LODWORD(v17) = v6[23];
        v18 = v6[23];
      }

      v19 = (v17 - 1);
      if (v18 >= v19)
      {
        v20 = (v15 & 0x80000000) == 0 ? v6 : *v6;
        v21 = (v15 & 0x80000000) == 0 ? v6[23] : *(v6 + 1);
        v15 = (v17 - 2);
        if (v21 >= v15)
        {
          v22 = *&v20[2 * v19];
          v23 = *&v20[2 * v15];
          if (v17 < 7)
          {
            if (v17 == 5)
            {
              goto LABEL_39;
            }

            goto LABEL_44;
          }

          v24 = (v17 - 3);
          if (v21 >= v24)
          {
            if (*&v20[2 * v24] == 110 && v23 == 101)
            {
              v16 = v17 - 3;
              if (v22 == 110)
              {
                goto LABEL_51;
              }
            }

LABEL_44:
            if (v23 == 101)
            {
              if ((v22 - 114) < 2)
              {
                goto LABEL_20;
              }

              if (v22 != 101)
              {
                v16 = v17 - 2;
                if (v22 != 110)
                {
                  v16 = v17;
                }

                goto LABEL_51;
              }

LABEL_43:
              v16 = v17 - 1;
              goto LABEL_51;
            }

            if (v23 == 115)
            {
              v16 = v17 - 2;
              if (v22 == 101)
              {
                goto LABEL_51;
              }
            }

LABEL_39:
            v25 = (v22 - 101) > 0xE || ((1 << (v22 - 101)) & 0x6201) == 0;
            v16 = v17;
            if (v25)
            {
              goto LABEL_51;
            }

            goto LABEL_43;
          }
        }
      }

      __break(1u);
LABEL_55:
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }
  }

  return v3;
}

void sub_1BE5CB574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&a12);
  _Unwind_Resume(a1);
}

void morphun::analysis::stemmer::DeStemFilter::~DeStemFilter(morphun::analysis::stemmer::DeStemFilter *this)
{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA200);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA200);
}

void *morphun::analysis::tokenattributes::CharTermAttribute::CharTermAttribute(void *this, const morphun::analysis::tokenattributes::CharTermAttribute *a2)
{
  v2 = *a2;
  *this = *a2;
  *(this + *(v2 - 88)) = *(a2 + 1);
  *(this + *(*this - 56)) = *(a2 + 2);
  *(this + *(*this - 40)) = *(a2 + 3);
  return this;
}

uint64_t morphun::grammar::synthesis::PtGrammarSynthesizer_ArticleLookupFunction::getFeatureValue(void *a1, uint64_t a2)
{
  if (a1[9] && (v4 = (*(*a2 + 32))(a2)) != 0)
  {
    v5 = *(*a1 + 32);

    return v5(a1, a2, v4);
  }

  else
  {
    v7 = (*(*a2 + 24))(a2);
    v8 = a1[10];
    npc<morphun::dialog::SemanticFeature const>(v8);
    v9 = (*(*a2 + 32))(a2, v8);
    Count = morphun::grammar::synthesis::PtGrammarSynthesizer::getCount(v9);
    if (!Count)
    {
      morphun::grammar::synthesis::PtGrammarSynthesizer_GenericLookupFunction::determine((a1 + 12), v7, __p);
      Count = morphun::grammar::synthesis::PtGrammarSynthesizer::getCount(__p);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v11 = a1[11];
    npc<morphun::dialog::SemanticFeature const>(v11);
    v12 = (*(*a2 + 32))(a2, v11);
    Gender = morphun::grammar::synthesis::PtGrammarSynthesizer::getGender(v12);
    if (!Gender)
    {
      morphun::grammar::synthesis::PtGrammarSynthesizer_GenericLookupFunction::determine((a1 + 39), v7, __p);
      Gender = morphun::grammar::synthesis::PtGrammarSynthesizer::getGender(__p);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (Count == 1 && Gender == 1)
    {
      return (*(*a1 + 32))(a1, a2, a1 + 75);
    }

    else if (Count == 1 && Gender == 2)
    {
      return (*(*a1 + 32))(a1, a2, a1 + 78);
    }

    else if (Count == 2 && Gender == 1)
    {
      return (*(*a1 + 32))(a1, a2, a1 + 81);
    }

    else
    {
      if (Count == 2 && Gender == 2)
      {
        v18 = *(*a1 + 32);
        v19 = a1 + 84;
      }

      else
      {
        if (Count == 1)
        {
          return (*(*a1 + 32))(a1, a2, a1 + 69);
        }

        v18 = *(*a1 + 32);
        if (Count == 2)
        {
          v19 = a1 + 72;
        }

        else
        {
          v19 = a1 + 66;
        }
      }

      return v18(a1, a2, v19);
    }
  }
}

void sub_1BE5CBA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::PtGrammarSynthesizer_ArticleLookupFunction::~PtGrammarSynthesizer_ArticleLookupFunction(void **this)
{
  morphun::grammar::synthesis::PtGrammarSynthesizer_ArticleLookupFunction::~PtGrammarSynthesizer_ArticleLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CD4690;
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

  morphun::grammar::synthesis::PtGrammarSynthesizer_GenericLookupFunction::~PtGrammarSynthesizer_GenericLookupFunction((this + 39));
  morphun::grammar::synthesis::PtGrammarSynthesizer_GenericLookupFunction::~PtGrammarSynthesizer_GenericLookupFunction((this + 12));
  v2 = this[4];
  this[4] = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }
}

void morphun::grammar::synthesis::PtGrammarSynthesizer_ArticleLookupFunction::PtGrammarSynthesizer_ArticleLookupFunction(morphun::dialog::DefaultArticleLookupFunction *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v19 = *MEMORY[0x1E69E9840];
  *a1 = &off_1F3CE67A8;
  v11 = *(a3 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a3 + 8);
  }

  v12 = morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(a1, off_1F3CDB8A0, a2, v11 != 0, 1);
  *a1 = &off_1F3CD4690;
  v13 = morphun::util::LocaleUtils::PORTUGUESE(v12);
  Dictionary = morphun::dictionary::DictionaryMetaData::createDictionary(v13, v14);
  if (Dictionary)
  {
    *(a1 + 3) = Dictionary;
    v16 = morphun::util::LocaleUtils::PORTUGUESE(Dictionary);
    morphun::TokenizerFactory::createTokenizer(v16, v17);
  }

  exception = __cxa_allocate_exception(0x38uLL);
  morphun::exception::NullPointerException::NullPointerException(exception);
}

void sub_1BE5CC334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 + 671) < 0)
  {
    operator delete(*v32);
  }

  if (*(v27 + 647) < 0)
  {
    operator delete(*v31);
  }

  if (*(v27 + 623) < 0)
  {
    operator delete(*v30);
  }

  if (*(v27 + 599) < 0)
  {
    operator delete(*v29);
  }

  if (*(v27 + 575) < 0)
  {
    operator delete(*v28);
  }

  if (*(v27 + 551) < 0)
  {
    operator delete(*a9);
  }

  morphun::grammar::synthesis::PtGrammarSynthesizer_GenericLookupFunction::~PtGrammarSynthesizer_GenericLookupFunction((v27 + 312));
  morphun::grammar::synthesis::PtGrammarSynthesizer_GenericLookupFunction::~PtGrammarSynthesizer_GenericLookupFunction((v27 + 96));
  v34 = *(v27 + 32);
  *(v27 + 32) = 0;
  if (v34)
  {
    (*(*v34 + 16))(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1BE5CC698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1BE5CC80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1BE5CC9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  MEMORY[0x1BFB49160](v28, v27);
  _Unwind_Resume(a1);
}

void sub_1BE5CCB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1BE5CCCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1BE5CCE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1BE5CD084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1BE5CD1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1BE5CD3E4(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v2, v1);
  _Unwind_Resume(a1);
}

void sub_1BE5CD540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1BE5CD6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1BE5CD838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1BE5CD9A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v16, v15);
  _Unwind_Resume(a1);
}

morphun::analysis::DefaultAnalyzerFactory *morphun::analysis::DefaultAnalyzerFactory::DefaultAnalyzerFactory(morphun::analysis::DefaultAnalyzerFactory *this, uint64_t *a2, unint64_t a3)
{
  v5 = a2[1];
  *this = v5;
  *(this + *(v5 - 40)) = a2[2];
  v6 = *a2;
  *this = *a2;
  v7 = a2[3];
  *(this + *(v6 - 40)) = v7;
  v8 = (this + 8);
  v9 = morphun::util::LocaleUtils::ENGLISH(v7);
  *v8 = &unk_1F3CD9158;
  morphun::analysis::ConfigurableAnalyzer::ConfigurableAnalyzer(v8, off_1F3CDADE8, v9, 0, a3);
  *v8 = &unk_1F3CD2E08;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 27) = this + 224;
  *(this + 31) = 0;
  *(this + 32) = 0;
  *(this + 33) = a3;
  *(this + 34) = 850045863;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 41) = 0;
  if (a3 >= 0x2000)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v12 = a3;
    v13 = exception;
    morphun::util::StringUtils::to_u16string(v12, &v15);
    std::basic_string<char16_t>::insert(&v15, "U", 0x1F, v14);
    v16 = v15;
    memset(&v15, 0, sizeof(v15));
    morphun::exception::IllegalArgumentException::IllegalArgumentException(v13, &v16);
  }

  return this;
}

void sub_1BE5CDDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void ***a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
        *(v23 + 248) = v28;
        operator delete(v28);
      }

      std::__tree<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::__map_value_compare<morphun::util::ULocale,std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>,std::less<morphun::util::ULocale>,true>,std::allocator<std::__value_type<morphun::util::ULocale,morphun::analysis::ConfigurableAnalyzer *>>>::destroy(*a11);
      morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(v24, off_1F3CDADE8);
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

void virtual thunk tomorphun::analysis::DefaultAnalyzerFactory::~DefaultAnalyzerFactory(morphun::analysis::DefaultAnalyzerFactory *this)
{
}

{

  JUMPOUT(0x1BFB49160);
}

uint64_t morphun::analysis::DefaultAnalyzerFactory::getDefaultInstance(morphun::analysis::DefaultAnalyzerFactory *this)
{
  {
    operator new();
  }

  return morphun::analysis::DefaultAnalyzerFactory::getDefaultInstance(void)::DEFAULT_FACTORY_;
}

void sub_1BE5CDF7C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x10F3C40F4CE41AFLL);
  _Unwind_Resume(a1);
}

void morphun::dialog::SemanticValue::~SemanticValue(void **this)
{
  morphun::dialog::SemanticValue::~SemanticValue(this);

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

double morphun::dialog::SemanticValue::toString@<D0>(morphun::dialog::SemanticValue *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  std::operator+[abi:se200100]<char16_t,std::char_traits<char16_t>,std::allocator<char16_t>>(&v12, (this + *(*this - 40)), 35);
  v4 = this + *(*this - 40);
  v7 = *(v4 + 3);
  v5 = v4 + 24;
  v6 = v7;
  v8 = v5[23];
  if (v8 >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v8 >= 0)
  {
    v10 = v5[23];
  }

  else
  {
    v10 = *(v5 + 1);
  }

  std::basic_string<char16_t>::append(&v12, v9, v10);
  result = *&v12.__r_.__value_.__l.__data_;
  *a2 = v12;
  return result;
}

void sub_1BE5CE0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *morphun::dialog::SemanticValue::SemanticValue(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  *(result + *(v2 - 48)) = a2[1];
  return result;
}

uint64_t morphun::dialog::SemanticValue::SemanticValue(uint64_t a1, __int128 *a2, __int128 *a3)
{
  std::pair<std::basic_string<char16_t>,std::basic_string<char16_t>>::pair[abi:se200100]<true,0>((a1 + 8), a2, a3);
  *a1 = &unk_1F3CD8FC0;
  return a1;
}

std::basic_string<char16_t> *std::pair<std::basic_string<char16_t>,std::basic_string<char16_t>>::pair[abi:se200100]<true,0>(std::basic_string<char16_t> *this, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1BE5CE234(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void virtual thunk tomorphun::dialog::SemanticValue::~SemanticValue(morphun::dialog::SemanticValue *this)
{
  morphun::dialog::SemanticValue::~SemanticValue((this + *(*this - 32)));
}

{
  morphun::dialog::SemanticValue::~SemanticValue((this + *(*this - 32)));

  JUMPOUT(0x1BFB49160);
}

void morphun::analysis::filter::PunctuationFilter::skipOffset(morphun::analysis::filter::PunctuationFilter *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    v3 = (*(*v2 + 72))(v2);
    v12 = 0;
    v13 = 0;
    __p = 0;
    std::vector<int>::__init_with_size[abi:se200100]<int *,int *>(&__p, *v3, v3[1], (v3[1] - *v3) >> 2);
    v4 = (*(**(this + 18) + 72))(*(this + 18));
    v5 = v12;
    if (v12 >= v13)
    {
      v6 = ((v12 - __p) >> 2) + 1;
      if (v6 >> 62)
      {
        std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
      }

      v7 = v13 - __p;
      if ((v13 - __p) >> 1 > v6)
      {
        v6 = v7 >> 1;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v6;
      }

      if (v8)
      {
        std::__allocate_at_least[abi:se200100]<std::allocator<int>>(v8);
      }
    }

    else if (v12)
    {
      *v12 = v4;
      v12 = v5 + 4;
      v9 = *(this + 19);
      v10 = (*(*v9 + 64))(v9);
      (*(*v9 + 56))(v9, v10, &__p);
      if (__p)
      {
        v12 = __p;
        operator delete(__p);
      }

      return;
    }

    __break(1u);
  }
}

void sub_1BE5CE50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:se200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:se200100](result, a4);
  }

  return result;
}

void sub_1BE5CE58C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void morphun::analysis::filter::PunctuationFilter::~PunctuationFilter(morphun::analysis::filter::PunctuationFilter *this)
{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA498);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA498);
}

void morphun::analysis::fi::FinnishMorphology_InflectionAnalysis::~FinnishMorphology_InflectionAnalysis(void **this)
{
  morphun::analysis::fi::FinnishMorphology_InflectionAnalysis::~FinnishMorphology_InflectionAnalysis(this);

  JUMPOUT(0x1BFB49160);
}

{
  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  morphun::util::lemmatization::InflectionIdentifier::~InflectionIdentifier(this + 4);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t morphun::analysis::fi::FinnishMorphology_InflectionAnalysis::FinnishMorphology_InflectionAnalysis(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F3CEF4E0;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
  }

  v7 = 0uLL;
  v8 = 0;
  v5 = 0uLL;
  v6 = 0;
  morphun::util::lemmatization::InflectionIdentifier::InflectionIdentifier(a1 + 32, &v7, &v5);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  return a1;
}

void sub_1BE5CE728(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::analysis::fi::FinnishMorphology_InflectionAnalysis::FinnishMorphology_InflectionAnalysis(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  *a1 = &unk_1F3CEF4E0;
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

  morphun::util::lemmatization::InflectionIdentifier::InflectionIdentifier(a1 + 32, (a3 + 8), (a3 + 32));
  if (*(a4 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external((a1 + 88), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 104) = *(a4 + 2);
    *(a1 + 88) = v8;
  }

  *(a1 + 112) = 1;
  return a1;
}

void sub_1BE5CE804(_Unwind_Exception *a1)
{
  morphun::util::lemmatization::InflectionIdentifier::~InflectionIdentifier((v1 + 32));
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void morphun::dialog::language::UkCommonConceptFactory::~UkCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC1A0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC1A0);
}

const void **morphun::util::CFUtils::convert(const void **this, const std::exception *a2, __CFError **a3)
{
  if (a2)
  {
    v4 = (*(*this + 2))(this, a2, a3);
    v5 = CFStringCreateWithCString(0, v4, 0x8000100u);
    a2->__vftable = CFErrorCreate(0, v5, 0, 0);
    return morphun::util::AutoCRelease<__CFString const*,&(CFRelease)>::~AutoCRelease(&v5);
  }

  return this;
}

void sub_1BE5CE904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  morphun::util::AutoCRelease<__CFString const*,&(CFRelease)>::~AutoCRelease(va);
  _Unwind_Resume(a1);
}

const void **morphun::util::AutoCRelease<__CFString const*,&(CFRelease)>::~AutoCRelease(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFLocaleRef morphun::util::CFUtils::convert(morphun::util::CFUtils *this, const morphun::util::ULocale *a2)
{
  v4 = *(this + 13);
  v2 = this + 104;
  v3 = v4;
  v5 = v2[23];
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
    v7 = v2[23];
  }

  else
  {
    v7 = *(v2 + 1);
  }

  v10 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
  v8 = CFLocaleCreate(0, v10);
  morphun::util::AutoCRelease<__CFString const*,&(CFRelease)>::~AutoCRelease(&v10);
  return v8;
}

void sub_1BE5CE9C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  morphun::util::AutoCRelease<__CFString const*,&(CFRelease)>::~AutoCRelease(va);
  _Unwind_Resume(a1);
}

void morphun::analysis::filter::bracket(std::basic_string<char16_t> *a1, uint64_t a2)
{
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "[");
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  std::basic_string<char16_t>::append(&__dst, v5, v6);
  v8 = __dst;
  memset(&__dst, 0, sizeof(__dst));
  std::basic_string<char16_t>::append(&v8, "]", 1uLL);
  *a1 = v8;
  memset(&v8, 0, sizeof(v8));
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5CEAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void morphun::analysis::filter::NormalizeFontVariantsFilter::~NormalizeFontVariantsFilter(morphun::analysis::filter::NormalizeFontVariantsFilter *this)
{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA300);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::TokenFilter::~TokenFilter(this, off_1F3CDA300);
}

uint64_t morphun::transliteration::MLTransliterator::transliterate(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 && *(a1 + 136))
  {
    memset(&v32, 0, sizeof(v32));
    memset(&v31, 0, sizeof(v31));
    v8 = 2 * a3;
    std::basic_string<char16_t>::reserve(&v31, 2 * a3);
    v9 = a2;
    do
    {
      v10 = *v9;
      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v31.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v12 = (v10 & 0xFC00) == 56320;
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        std::basic_string<char16_t>::push_back(&v31, 32);
      }

      std::basic_string<char16_t>::push_back(&v31, v10);
      ++v9;
      v8 -= 2;
    }

    while (v8);
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v31;
    }

    else
    {
      v13 = v31.__r_.__value_.__r.__words[0];
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v14 = v31.__r_.__value_.__r.__words[1];
    }

    morphun::util::StringViewUtils::convert(&v32, v13, v14);
    {
      operator new();
    }

    v15 = morphun::transliteration::MLTransliterator::transliterate(std::u16string_view,std::basic_string<char16_t> *)const::mutex;
    if (!morphun::transliteration::MLTransliterator::transliterate(std::u16string_view,std::basic_string<char16_t> *)const::mutex)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    std::mutex::lock(morphun::transliteration::MLTransliterator::transliterate(std::u16string_view,std::basic_string<char16_t> *)const::mutex);
    v16 = *(a1 + 136);
    v17 = QuasarCPDecTranslator_translate();
    std::mutex::unlock(v15);
    if (v17)
    {
      v18 = strlen(v17);
      morphun::util::StringViewUtils::convert(&v31, v17, v18);
      memset(&__str, 0, sizeof(__str));
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v31;
      }

      else
      {
        v19 = v31.__r_.__value_.__r.__words[0];
      }

      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = SHIBYTE(v31.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v31.__r_.__value_.__l.__size_;
      }

      morphun::util::StringViewUtils::replace(&__str, v19, v20, &word_1BE80F394, 1uLL, &word_1BE80F080, 0);
      memset(&__p, 0, sizeof(__p));
      isAllLowerCase = morphun::util::StringViewUtils::isAllLowerCase(a2, a3);
      if (isAllLowerCase)
      {
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
          v23 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v23 = __str.__r_.__value_.__r.__words[1];
        }

        morphun::util::StringViewUtils::lowercase(&__p, p_str, v23, a1 + 8);
      }

      else
      {
        std::basic_string<char16_t>::operator=(&__p, &__str);
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
        v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = __p.__r_.__value_.__l.__size_;
      }

      morphun::transliteration::Transliterator::matchCase(a1, a4, p_p, v25, a2, a3, isAllLowerCase);
      free(v17);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
      if (v17)
      {
        return 1;
      }
    }

    else if (v17)
    {
      return 1;
    }
  }

  if (!a4)
  {
    v27 = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(v27);
  }

  result = 0;
  if (*(a4 + 23) < 0)
  {
    **a4 = 0;
    *(a4 + 8) = 0;
  }

  else
  {
    *a4 = 0;
    *(a4 + 23) = 0;
  }

  return result;
}

void sub_1BE5CEF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

void morphun::transliteration::MLTransliterator::~MLTransliterator(morphun::transliteration::MLTransliterator *this)
{
  morphun::transliteration::MLTransliterator::~MLTransliterator(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD9678;
  v2 = *(this + 17);
  QuasarCPDecTranslator_delete();
  *this = &off_1F3CED650;
}

void morphun::dialog::language::BgCommonConceptFactory::~BgCommonConceptFactory(void **this)
{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC8C0);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::dialog::CommonConceptFactoryImpl::~CommonConceptFactoryImpl(this, off_1F3CDC8C0);
}

uint64_t morphun::grammar::synthesis::DaGrammarSynthesizer_ArticleLookupFunction::getFeatureValue(void *a1, uint64_t a2)
{
  v4 = a1[4];
  npc<morphun::dialog::SemanticFeature const>(v4);
  v5 = (*(*a2 + 32))(a2, v4);
  Count = morphun::grammar::synthesis::DaGrammarSynthesizer::getCount(v5);
  if (!Count)
  {
    FeatureValue = morphun::dialog::DictionaryLookupFunction::getFeatureValue((a1 + 20), a2);
    if (!FeatureValue)
    {
      goto LABEL_6;
    }

    v8 = FeatureValue;
    v9 = (*(*FeatureValue + 32))(FeatureValue);
    Count = morphun::grammar::synthesis::DaGrammarSynthesizer::getCount(v9);
    (*(*v8 + 16))(v8);
  }

  if (Count == 2)
  {
    v10 = 15;
    goto LABEL_12;
  }

LABEL_6:
  v11 = a1[3];
  npc<morphun::dialog::SemanticFeature const>(v11);
  v12 = (*(*a2 + 32))(a2, v11);
  Gender = morphun::grammar::synthesis::DaGrammarSynthesizer::getGender(v12);
  if (!Gender)
  {
    v14 = morphun::dialog::DictionaryLookupFunction::getFeatureValue((a1 + 46), a2);
    if (!v14)
    {
      goto LABEL_11;
    }

    v15 = v14;
    v16 = (*(*v14 + 32))(v14);
    Gender = morphun::grammar::synthesis::DaGrammarSynthesizer::getGender(v16);
    (*(*v15 + 16))(v15);
  }

  if (Gender == 2)
  {
    v10 = 10;
    goto LABEL_12;
  }

LABEL_11:
  v10 = 5;
LABEL_12:
  v17 = *(*a1 + 40);

  return v17(a1, a2, &a1[v10]);
}

void morphun::grammar::synthesis::DaGrammarSynthesizer_ArticleLookupFunction::~DaGrammarSynthesizer_ArticleLookupFunction(morphun::grammar::synthesis::DaGrammarSynthesizer_ArticleLookupFunction *this)
{
  morphun::grammar::synthesis::DaGrammarSynthesizer_ArticleLookupFunction::~DaGrammarSynthesizer_ArticleLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &off_1F3CD4B60;
  *(this + 46) = &unk_1F3CD8738;
  v2 = *(this + 68);
  if (v2)
  {
    *(this + 69) = v2;
    operator delete(v2);
  }

  v3 = *(this + 66);
  *(this + 66) = 0;
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  *(this + 47) = &unk_1F3CD2000;
  *(this + 20) = &unk_1F3CD8738;
  v4 = *(this + 42);
  if (v4)
  {
    *(this + 43) = v4;
    operator delete(v4);
  }

  v5 = *(this + 40);
  *(this + 40) = 0;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  *(this + 21) = &unk_1F3CD2000;
}

void morphun::grammar::synthesis::DaGrammarSynthesizer_ArticleLookupFunction::DaGrammarSynthesizer_ArticleLookupFunction(morphun::grammar::synthesis::DaGrammarSynthesizer_ArticleLookupFunction *a1, const morphun::dialog::SemanticFeatureModel *a2, char a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  morphun::dialog::SpeakableString::SpeakableString(v13, a4);
  morphun::dialog::SpeakableString::SpeakableString(v12, a5);
  morphun::dialog::SpeakableString::SpeakableString(v11, a6);
  morphun::grammar::synthesis::DaGrammarSynthesizer_ArticleLookupFunction::DaGrammarSynthesizer_ArticleLookupFunction(a1, a2, a3, v13, v12, v11);
}

void sub_1BE5CF604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::DaGrammarSynthesizer_ArticleLookupFunction::DaGrammarSynthesizer_ArticleLookupFunction(morphun::grammar::synthesis::DaGrammarSynthesizer_ArticleLookupFunction *this, const morphun::dialog::SemanticFeatureModel *a2, char a3, const morphun::dialog::SpeakableString *a4, const morphun::dialog::SpeakableString *a5, const morphun::dialog::SpeakableString *a6)
{
  v19[1] = *MEMORY[0x1E69E9840];
  *this = &off_1F3CE6F08;
  morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(this, off_1F3CDBB00, a2, a3, 1);
  *this = &off_1F3CD4B60;
  *(this + 3) = 0;
  *(this + 4) = 0;
  morphun::dialog::SpeakableString::SpeakableString((this + 40), a4);
  morphun::dialog::SpeakableString::SpeakableString((this + 80), a5);
  v10 = morphun::dialog::SpeakableString::SpeakableString((this + 120), a6);
  v11 = morphun::util::LocaleUtils::DANISH(v10);
  v12 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v11);
  if (*(v12 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&__dst, *v12, *(v12 + 8));
  }

  else
  {
    v13 = *v12;
    __dst.__r_.__value_.__r.__words[2] = *(v12 + 16);
    *&__dst.__r_.__value_.__l.__data_ = v13;
  }

  v14 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v12);
  if (*(v14 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v18, *v14, *(v14 + 8));
  }

  else
  {
    v15 = *v14;
    v18.__r_.__value_.__r.__words[2] = *(v14 + 16);
    *&v18.__r_.__value_.__l.__data_ = v15;
  }

  memset(v16, 0, sizeof(v16));
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(v16, &__dst, v19, 2uLL);
}

void sub_1BE5CF96C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction((v18 + 368));
  morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction((v18 + 160));
  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::FrGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::FrGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  __dst[21] = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__dst, "d");
  operator new();
}

void sub_1BE5D19F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  __cxa_free_exception(v64);
  MEMORY[0x1BFB49160](v62, v63);
  _Unwind_Resume(a1);
}

uint64_t morphun::grammar::synthesis::FrGrammarSynthesizer::getCount(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::FrGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FrGrammarSynthesizer::Count>>(morphun::grammar::synthesis::FrGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FrGrammarSynthesizer::Count>>(morphun::grammar::synthesis::FrGrammarSynthesizer::getCount(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE5D2354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FrGrammarSynthesizer::Count>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE5D2594(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FrGrammarSynthesizer::Count>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

uint64_t morphun::grammar::synthesis::FrGrammarSynthesizer::getGender(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v2 = morphun::grammar::synthesis::FrGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap;
  npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FrGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::FrGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap);
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

  if (npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FrGrammarSynthesizer::Gender>>(morphun::grammar::synthesis::FrGrammarSynthesizer::getGender(std::basic_string<char16_t> const*)::valueMap) + 8 == v6)
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

void sub_1BE5D2800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v14, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

void *std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FrGrammarSynthesizer::Gender>::map[abi:se200100](void *a1, unsigned __int16 *a2, uint64_t a3)
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

void sub_1BE5D2A40(_Unwind_Exception *a1)
{
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,void *>>>::operator()[abi:se200100](0, v1);
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*v2);
  _Unwind_Resume(a1);
}

uint64_t npc<std::map<std::basic_string<char16_t>,morphun::grammar::synthesis::FrGrammarSynthesizer::Gender>>(uint64_t result)
{
  if (!result)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  return result;
}

void *std::set<std::u16string_view>::set[abi:se200100](void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  std::set<std::u16string_view>::insert[abi:se200100]<std::__tree_const_iterator<std::u16string_view,std::__tree_node<std::u16string_view,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::set<std::u16string_view>::insert[abi:se200100]<std::__tree_const_iterator<std::u16string_view,std::__tree_node<std::u16string_view,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::u16string_view>::__emplace_hint_unique_key_args<std::u16string_view,std::u16string_view const&>(v5, v5 + 1, v4[4], v4[5]);
      v6 = v4[1];
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
          v7 = v4[2];
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

void morphun::tokenizer::dictionary::GermanicDecompounder::~GermanicDecompounder(char **this)
{
  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie((this + 28));
  morphun::util::MemoryMappedFile::~MemoryMappedFile((this + 24));
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(this[21]);
  v2 = this[17];
  if (v2)
  {
    this[18] = v2;
    operator delete(v2);
  }

  v3 = this[14];
  if (v3)
  {
    this[15] = v3;
    operator delete(v3);
  }

  std::__tree<std::u16string_view>::destroy(this[12]);
  std::__tree<std::u16string_view>::destroy(this[9]);
}

void morphun::tokenizer::dictionary::GermanicDecompounder::analyze(_DWORD *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = *a3;
  v10 = a2[1];
  v25[0] = *a2;
  v25[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    morphun::tokenizer::dictionary::Segment::tie(v9, v25);
    std::__shared_weak_count::__release_shared[abi:se200100](v10);
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_27:
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::NullPointerException::NullPointerException(exception);
  }

  morphun::tokenizer::dictionary::Segment::tie(v9, v25);
  if (!a6)
  {
    goto LABEL_27;
  }

LABEL_3:
  v11 = a6[1];
  v12 = a6[2];
  if (v11 >= v12)
  {
    v14 = ((v11 - *a6) >> 4) + 1;
    if (v14 >> 60)
    {
      goto LABEL_31;
    }

    v15 = v12 - *a6;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFF0)
    {
      v16 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      if (!(v16 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:se200100]();
    }

LABEL_30:
    __break(1u);
LABEL_31:
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  if (!v11)
  {
    goto LABEL_30;
  }

  *v11 = *a3;
  v13 = a3[1];
  v11[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  a6[1] = v11 + 2;
  v17 = *a3;
  if ((*(*a3 + 55) & 1) == 0 && (*(v17 + 56) & 1) == 0 && *(v17 + 48) <= a1[96] && *(v17 + 84) <= a1[93])
  {
    v18 = *(v17 + 40);
    if (!v18)
    {
      LODWORD(v18) = *(v17 + 20) - *(v17 + 24);
    }

    v19 = a1[95];
    if (v19 <= v18 - v19)
    {
      v23 = *(v17 + 8);
      v24 = *v17;
      if (v19 < a1[94])
      {
        v20 = *(*a3 + 24);
        v21 = *(*a3 + 28);
        operator new();
      }
    }
  }
}

void sub_1BE5D323C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v28);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](a18);
  }

  else
  {
    a18 = 0;
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v28);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](a18);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v26);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BE5D33C0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<morphun::tokenizer::dictionary::Segment>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v1);
  }
}

void std::__shared_ptr_emplace<morphun::tokenizer::dictionary::Segment>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F3CD0030;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFB49160);
}

void morphun::tokenizer::TokenExtractor::~TokenExtractor(morphun::tokenizer::TokenExtractor *this)
{

  JUMPOUT(0x1BFB49160);
}

{
}

void morphun::tokenizer::TokenExtractor::~TokenExtractor(morphun::tokenizer::TokenExtractor *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[1];
  v4 = *(this + 17);
  if (v4)
  {
    std::__tree<std::u16string_view>::destroy(*(v4 + 8));
    MEMORY[0x1BFB49160](v4, 0x1020C4062D53EE8);
  }

  v5 = *(this + 18);
  if (v5)
  {
    icu4cxx::RegularExpression::~RegularExpression(v5);
    MEMORY[0x1BFB49160]();
  }
}

uint64_t *morphun::tokenizer::TokenExtractor::TokenExtractor(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 40)) = a2[1];
  morphun::util::ULocale::ULocale((a1 + 1), a3);
  a1[17] = a5;
  a1[18] = 0;
  if (a5 && !*(a5 + 16))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string<std::u16string_view,0>(&__p, word_1BE80D802, 0x16uLL);
    morphun::exception::IllegalArgumentException::IllegalArgumentException(exception, &__p);
  }

  v9 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(a4, L"tokenizer.decompound", 0x14uLL);
  if (a4 + 8 != v9)
  {
    v10 = *(v9 + 48);
    if (*v10)
    {
      std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, v10);
      std::basic_string<char16_t>::insert(&__dst, L"^(", 2, v11);
      v15 = __dst;
      memset(&__dst, 0, sizeof(__dst));
      std::basic_string<char16_t>::append(&v15, ")", 2uLL);
      __p = v15;
      memset(&v15, 0, sizeof(v15));
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      operator new();
    }
  }

  morphun::tokenizer::TokenUtil::isSignificant("A", 1uLL);
  return a1;
}

void sub_1BE5D37E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v30 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

uint64_t icu4cxx::RegularExpression::RegularExpression(uint64_t a1, UChar *pattern, int32_t patternLength, uint32_t flags)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  status = U_ZERO_ERROR;
  *a1 = uregex_open(pattern, patternLength, flags, 0, &status);
  v5 = status;
  if (status >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::exception::ICUException::ICUException(exception, v5);
  }

  return a1;
}

BOOL morphun::tokenizer::TokenExtractor::isIndivisibleWordNormalized(uint64_t a1, uint64_t a2, const UChar *a3, uint64_t a4)
{
  v5 = a3;
  v6 = morphun::util::StringViewUtils::lowercase(a1, a3, a4, a2);
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

  if (a4 != v7)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v9 = v7 - 1;
  do
  {
    v11 = *v5++;
    v10 = v11;
    v13 = *v8++;
    v12 = v13;
    v15 = v9-- != 0;
    result = v12 == v10;
  }

  while (v12 == v10 && v15);
  return result;
}

void morphun::tokenizer::TokenExtractor::getRequiredKeyAsPath(uint64_t a1, morphun::util::ResourceLocator *a2, uint64_t a3, unsigned __int16 *a4, unint64_t a5)
{
  v10 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(a3, a4, a5);
  if (a3 + 8 == v10 || (v11 = v10, (v12 = *(v10 + 48)) == 0) || !*v12)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v21 = std::basic_string<char16_t>::basic_string<std::u16string_view,0>(&v25, a4, a5);
    std::basic_string<char16_t>::append(v21, " ", 0x12uLL);
    *&v22.st_dev = *&v25.__r_.__value_.__l.__data_;
    *&v22.st_uid = *(&v25.__r_.__value_.__l + 2);
    memset(&v25, 0, sizeof(v25));
    morphun::exception::InvalidConfigurationException::InvalidConfigurationException(exception, &v22.st_dev);
  }

  morphun::util::ResourceLocator::getRootForLocale(a2, &v25);
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__dst, L"/tokenizer");
  if ((v24 & 0x80u) == 0)
  {
    v13 = __dst;
  }

  else
  {
    v13 = __dst[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v14 = v24;
  }

  else
  {
    v14 = __dst[1];
  }

  std::basic_string<char16_t>::append(&v25, v13, v14);
  *&v22.st_dev = *&v25.__r_.__value_.__l.__data_;
  *&v22.st_uid = *(&v25.__r_.__value_.__l + 2);
  memset(&v25, 0, sizeof(v25));
  std::basic_string<char16_t>::append(&v22, *(v11 + 48));
  *a1 = *&v22.st_dev;
  *(a1 + 16) = *&v22.st_uid;
  memset(&v22, 0, 24);
  if (v24 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  memset(&v25, 0, sizeof(v25));
  v15 = *(a1 + 23);
  if (v15 >= 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = *a1;
  }

  if (v15 >= 0)
  {
    LODWORD(v17) = *(a1 + 23);
  }

  else
  {
    v17 = *(a1 + 8);
  }

  morphun::util::StringViewUtils::convert(&v25, v16, v17);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v25;
  }

  else
  {
    v18 = v25.__r_.__value_.__r.__words[0];
  }

  if (stat(v18, &v22))
  {
    std::operator+<char16_t>(__dst, "P", a1);
    if (morphun::util::gLogLevel <= 4)
    {
      if ((v24 & 0x80u) == 0)
      {
        v19 = __dst;
      }

      else
      {
        v19 = __dst[0];
      }

      morphun::util::logToTopOfStackLogger(4, 0, v19);
    }

    if (v24 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5D3C20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v15 - 89) < 0)
  {
    operator delete(*(v15 - 112));
  }

  if (*(v15 - 65) < 0)
  {
    operator delete(*(v15 - 88));
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::append(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s)
{
  if (__s)
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

    return std::basic_string<char16_t>::append(this, __s, v3);
  }

  else
  {
    __break(1u);
  }

  return this;
}

void morphun::exception::NullPointerException::~NullPointerException(std::exception *this)
{
  morphun::exception::Throwable::~Throwable(this);

  JUMPOUT(0x1BFB49160);
}

morphun::exception::NullPointerException *morphun::exception::NullPointerException::NullPointerException(morphun::exception::NullPointerException *this)
{
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"NullPointerException");
  morphun::exception::Throwable::Throwable(this, __p);
  *this = &unk_1F3CD0B50;
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_1F3CD0AB0;
  return this;
}

void sub_1BE5D3E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *morphun::exception::NullPointerException::NullPointerException(uint64_t a1, __int128 *a2)
{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0AB0;
  return result;
}

{
  result = morphun::exception::Throwable::Throwable(a1, a2);
  *result = &unk_1F3CD0AB0;
  return result;
}

void morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction::determine(uint64_t *a1@<X0>, uint64_t a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction::determineWord(v31, a1, a2);
  if (v33 == 1)
  {
    if (SHIBYTE(v32) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a3, v31[0], v31[1]);
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *v31;
      a3->__r_.__value_.__r.__words[2] = v32;
    }

    goto LABEL_50;
  }

  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(&v30, *a2, *(a2 + 8));
  }

  else
  {
    v30 = *a2;
  }

  v6 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  v7 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  size = v30.__r_.__value_.__l.__size_;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v30.__r_.__value_.__l.__size_;
  }

  if (v9)
  {
    v10 = a1[26];
    if (!v10 || (v11 = (*(*v10 + 24))(v10, &v30), (v12 = v11) == 0))
    {
      exception = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(exception);
    }

    v13 = (*(*v11 + 104))(v11);
    if (!v13 || (v14 = *(v13 + 80)) == 0)
    {
      v26 = __cxa_allocate_exception(0x38uLL);
      morphun::exception::NullPointerException::NullPointerException(v26);
    }

    std::basic_string<char16_t>::operator=(&v30, (v14 + 16));
    v15 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v30.__r_.__value_.__l.__size_;
    }

    v16 = *(a2 + 23);
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(a2 + 8);
    }

    if (v15 != v16)
    {
      morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction::determineWord(&__p, a1, &v30);
      std::__optional_storage_base<std::basic_string<char16_t>,false>::__assign_from[abi:se200100]<std::__optional_move_assign_base<std::basic_string<char16_t>,false>>(v31, &__p);
      if (v29 == 1 && v28 < 0)
      {
        operator delete(__p.n128_u64[0]);
      }

      if (v33 == 1)
      {
        if (SHIBYTE(v32) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(a3, v31[0], v31[1]);
        }

        else
        {
          *&a3->__r_.__value_.__l.__data_ = *v31;
          a3->__r_.__value_.__r.__words[2] = v32;
        }

        (*(*v12 + 16))(v12);
        goto LABEL_48;
      }
    }

    (*(*v12 + 16))(v12);
    v6 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    size = v30.__r_.__value_.__l.__size_;
    v7 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  if (v7 >= 0)
  {
    v17 = &v30;
  }

  else
  {
    v17 = v30.__r_.__value_.__r.__words[0];
  }

  if (v7 >= 0)
  {
    v18 = v6;
  }

  else
  {
    v18 = size;
  }

  v19 = a1[27];
  v20 = a1[28];
  __p.n128_u64[0] = 0;
  if (morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(v19, &__p, v17, v18))
  {
    v21 = (__p.n128_u64[0] & v20) == v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    v22 = std::basic_string<char16_t>::ends_with[abi:se200100](&v30, word_1BE80EB90);
    if ((v22 & 1) != 0 || (v22 = std::basic_string<char16_t>::ends_with[abi:se200100](&v30, L"x"), v22))
    {
      v23 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_PLURAL(v22);
    }

    else
    {
      v23 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(v22);
    }

    if (*(v23 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a3, *v23, *(v23 + 8));
    }

    else
    {
      v24 = *v23;
      a3->__r_.__value_.__r.__words[2] = *(v23 + 16);
      *&a3->__r_.__value_.__l.__data_ = v24;
    }
  }

  else
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }

LABEL_48:
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

LABEL_50:
  if (v33 == 1 && SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }
}

void sub_1BE5D422C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  (*(*v26 + 16))(v26);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction::determineWord(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  morphun::dialog::DictionaryLookupFunction::determine(a2, a3, __p);
  v6 = HIBYTE(v32);
  v7 = SHIBYTE(v32);
  if (v32 < 0)
  {
    v6 = __p[1];
  }

  if (v6)
  {
    *a1 = *__p;
    *(a1 + 16) = v32;
    *(a1 + 24) = 1;
    return;
  }

  v30 = 0;
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

  CombinedBinaryType = morphun::dictionary::DictionaryMetaData::getCombinedBinaryType(a2[27], &v30, v9, v10);
  v12 = v30;
  if ((a2[30] & ~v30) == 0)
  {
    goto LABEL_12;
  }

  if ((a2[29] & ~v30) != 0)
  {
    v16 = *(a3 + 23);
    if (v16 >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    if (v16 >= 0)
    {
      v18 = *(a3 + 23);
    }

    else
    {
      v18 = *(a3 + 8);
    }

    if ((a2[31] & ~v30) == 0)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      morphun::dictionary::Inflector::getInflectionPatternsForWord(a2[32], v17, v18, &v35);
      v19 = v35;
      v20 = v36;
      if (v35 == v36)
      {
        v26 = 1;
      }

      else
      {
        v28 = v35;
        v29 = v17;
        v21 = v18;
        while (1)
        {
          morphun::dictionary::Inflector_InflectionPattern::inflectionsForSurfaceForm(&v33, v19, v17, v18, v12);
          CombinedBinaryType = v33;
          if (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3) < 2)
          {
            break;
          }

          if (v33 == v34)
          {
            v22 = 0;
          }

          else
          {
            v22 = 0;
            v23 = v33;
            do
            {
              v22 |= *(v23 + 2);
              v23 = (v23 + 24);
            }

            while (v23 != v34);
          }

          v24 = a2[31];
          v25 = v24 & v22;
          v26 = (v24 & v22) != v24;
          if (v33)
          {
            operator delete(v33);
          }

          v19 += 40;
          v27 = v25 == v24 || v19 == v20;
          v17 = v29;
          v18 = v21;
          if (v27)
          {
            goto LABEL_45;
          }
        }

        if (v33)
        {
          operator delete(v33);
        }

        v26 = 0;
LABEL_45:
        v19 = v28;
      }

      if (v19)
      {
        operator delete(v19);
      }

      if (!v26)
      {
LABEL_12:
        v13 = morphun::grammar::synthesis::GrammemeConstants::NUMBER_SINGULAR(CombinedBinaryType);
        if (*(v13 + 23) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(a1, *v13, *(v13 + 8));
        }

        else
        {
          v14 = *v13;
          *(a1 + 16) = *(v13 + 16);
          *a1 = v14;
        }

        v15 = 1;
        goto LABEL_50;
      }
    }

    v15 = 0;
    *a1 = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    v15 = 1;
    *(a1 + 16) = 0;
  }

LABEL_50:
  *(a1 + 24) = v15;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BE5D4520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18)
  {
    operator delete(a18);
  }

  if (v18 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction::~FrGrammarSynthesizer_CountLookupFunction(morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction *this)
{
  morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction::~FrGrammarSynthesizer_CountLookupFunction(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD4F68;
  v2 = *(this + 26);
  *(this + 26) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  *this = &off_1F3CE75F0;
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

void morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction::FrGrammarSynthesizer_CountLookupFunction(morphun::grammar::synthesis::FrGrammarSynthesizer_CountLookupFunction *this)
{
  v4 = *MEMORY[0x1E69E9840];
  *this = &off_1F3CE7650;
  morphun::util::LocaleUtils::FRENCH(this);
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"singular");
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(v3, L"plural");
  memset(v1, 0, sizeof(v1));
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:se200100]<std::basic_string<char16_t> const*,std::basic_string<char16_t> const*>(v1, &__dst, &v4, 2uLL);
}

void sub_1BE5D4A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  v38 = &a36;
  v39 = -48;
  v40 = &a36;
  while (1)
  {
    v41 = *v40;
    v40 -= 24;
    if (v41 < 0)
    {
      operator delete(*(v38 - 23));
    }

    v38 = v40;
    v39 += 24;
    if (!v39)
    {
      v42 = *(v36 + 26);
      *(v36 + 26) = 0;
      if (v42)
      {
        (*(*v42 + 16))(v42);
      }

      morphun::dialog::DictionaryLookupFunction::~DictionaryLookupFunction(v36, off_1F3CDBD80);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t morphun::tokenizer::locale::de::DeTokenExtractorIterator::reset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  *(a1 + 108) = 0;
  result = morphun::tokenizer::ICUTokenExtractorIterator::reset(a1 + 16);
  *(a1 + 88) = *(a1 + 80);
  *(a1 + 104) = 0;
  return result;
}

uint64_t morphun::tokenizer::locale::de::DeTokenExtractorIterator::getNextBoundary(uint64_t this)
{
  v1 = this;
  v62 = *MEMORY[0x1E69E9840];
  v2 = *(this + 104);
  v3 = *(this + 80);
  v4 = (*(this + 88) - v3) >> 2;
  if (v2 >= v4)
  {
    *(this + 88) = v3;
    *(this + 104) = 0;
    v6 = *(this + 24);
    this = ubrk_next();
    if (this == -1)
    {
      v5 = 0xFFFFFFFFLL;
      goto LABEL_92;
    }

    v5 = this;
    v7 = *(v1 + 108);
    v59 = (this - v7);
    if (v59 < 6)
    {
LABEL_91:
      *(v1 + 108) = v5;
      goto LABEL_92;
    }

    v8 = *(v1 + 40);
    if (*(v1 + 48) <= v7)
    {
      v9 = *(v1 + 108);
    }

    else
    {
      v9 = *(v1 + 48);
    }

    while (v9 != v7)
    {
      v10 = *(v8 + 2 * v7);
      this = uscript_hasScript();
      if (!this)
      {
        this = uscript_hasScript();
        if (!this)
        {
          goto LABEL_91;
        }
      }

      if (++v7 >= v5)
      {
        v58 = (v1 + 56);
        morphun::tokenizer::locale::de::titleCase(v1 + 56, *(v1 + 40), *(v1 + 48), *(v1 + 108), v59);
        v11 = *(v1 + 8);
        v12 = *(v1 + 79);
        if (!v11 || ((*(v1 + 79) & 0x80) != 0 ? (v13 = *(v1 + 56), v14 = *(v1 + 64)) : (v13 = (v1 + 56), v14 = *(v1 + 79)), v11 + 8 == std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(*(v1 + 8), v13, v14)))
        {
          v60 = 0u;
          memset(v61, 0, sizeof(v61));
          if (v12 < 0)
          {
            v15 = *(v1 + 56);
            v16 = *(v1 + 64);
          }

          this = germantok_tokenize();
          if (this > 1 || this == 1 && *(&v60 + 1) != v59)
          {
            v17 = 0;
            v18 = v61;
            v19 = 1;
            v20 = this;
            do
            {
              v21 = *(v18 - 4);
              v22 = *(v18 - 2);
              v23 = v59;
              if (v19 < this)
              {
                v23 = *v18;
                if (v22 + v21 > *v18)
                {
                  v22 = *v18 - v21;
                }
              }

              if (v22 + v21 < v23)
              {
                v24 = v23 - 1;
                v25 = *(v1 + 79);
                if ((v25 & 0x80000000) != 0)
                {
                  if (*(v1 + 64) < v24)
                  {
                    goto LABEL_96;
                  }

                  v26 = *v58;
                }

                else
                {
                  v26 = v1 + 56;
                  if (v24 > v25)
                  {
                    goto LABEL_96;
                  }
                }

                if (*(v26 + 2 * v24) == 115 && v19 < this)
                {
                  --v23;
                }

                v22 = v23 - v21;
              }

              if (v21 <= v17)
              {
                v34 = *(v1 + 88);
              }

              else
              {
                v28 = *(v1 + 80);
                v29 = *(v1 + 88);
                if (v28 != v29 && v21 - v17 <= 6)
                {
                  v29 -= 4;
                  *(v1 + 88) = v29;
                }

                v31 = (v21 - 1);
                if (v21 >= 1)
                {
                  v32 = *(v1 + 79);
                  if ((v32 & 0x80000000) != 0)
                  {
                    if (*(v1 + 64) < v31)
                    {
                      goto LABEL_96;
                    }

                    v33 = *v58;
                  }

                  else
                  {
                    v33 = v1 + 56;
                    if (v31 > v32)
                    {
                      goto LABEL_96;
                    }
                  }

                  if (*(v33 + 2 * v31) == 115)
                  {
                    v35 = v31 + *(v1 + 108);
                    v36 = *(v1 + 96);
                    if (v29 >= v36)
                    {
                      v37 = v29 - v28;
                      v38 = (v37 >> 2) + 1;
                      if (v38 >> 62)
                      {
                        std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
                      }

                      v39 = v36 - v28;
                      v40 = v39 >> 1;
                      if (v39 >> 1 <= v38)
                      {
                        v40 = (v37 >> 2) + 1;
                      }

                      if (v39 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        this = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        this = v40;
                      }

                      if (this)
                      {
                        std::__allocate_at_least[abi:se200100]<std::allocator<int>>(this);
                      }

                      goto LABEL_96;
                    }

                    if (!v29)
                    {
                      goto LABEL_96;
                    }

                    *v29 = v35;
                    v29 += 4;
                    *(v1 + 88) = v29;
                  }
                }

                v41 = *(v1 + 96);
                if (v29 >= v41)
                {
                  v42 = *(v1 + 80);
                  v43 = &v29[-v42];
                  v44 = (v43 >> 2) + 1;
                  if (v44 >> 62)
                  {
                    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
                  }

                  v45 = v41 - v42;
                  v46 = v45 >> 1;
                  if (v45 >> 1 <= v44)
                  {
                    v46 = (v43 >> 2) + 1;
                  }

                  if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    this = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    this = v46;
                  }

                  if (this)
                  {
                    std::__allocate_at_least[abi:se200100]<std::allocator<int>>(this);
                  }

                  goto LABEL_96;
                }

                if (!v29)
                {
                  goto LABEL_96;
                }

                *v29 = *(v1 + 108) + v21;
                v34 = (v29 + 4);
                *(v1 + 88) = v34;
              }

              v17 = v22 + v21;
              v47 = v22 + v21 + *(v1 + 108);
              v48 = *(v1 + 96);
              if (v34 >= v48)
              {
                v50 = *(v1 + 80);
                v51 = v34 - v50;
                v52 = (v51 >> 2) + 1;
                if (v52 >> 62)
                {
                  std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
                }

                v53 = v48 - v50;
                v54 = v53 >> 1;
                if (v53 >> 1 <= v52)
                {
                  v54 = (v51 >> 2) + 1;
                }

                if (v53 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  this = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  this = v54;
                }

                if (this)
                {
                  std::__allocate_at_least[abi:se200100]<std::allocator<int>>(this);
                }

                goto LABEL_96;
              }

              if (!v34)
              {
                goto LABEL_96;
              }

              *v34 = v47;
              v49 = v34 + 1;
              *(v1 + 88) = v49;
              v18 += 4;
              ++v19;
              --v20;
            }

            while (v20);
            v55 = *(v1 + 104);
            *(v1 + 104) = v55 + 1;
            v56 = *(v1 + 80);
            if (v55 >= (v49 - v56) >> 2)
            {
              break;
            }

            v5 = *(v56 + 4 * v55);
          }
        }

        goto LABEL_91;
      }
    }
  }

  else
  {
    *(this + 104) = v2 + 1;
    if (v4 > v2)
    {
      v5 = *(v3 + 4 * v2);
LABEL_92:
      v57 = *MEMORY[0x1E69E9840];
      return v5;
    }
  }

LABEL_96:
  __break(1u);
  return this;
}

void morphun::tokenizer::locale::de::titleCase(uint64_t a1, uint64_t a2, unint64_t a3, int a4, int a5)
{
  if (*(npc<std::basic_string<char16_t>>(a1) + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  if (a5 >= 1)
  {
    if (a3 <= a4)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v10 = MEMORY[0x1BFB495E0](*(a2 + 2 * a4));
    std::basic_string<char16_t>::push_back(a1, v10);
    if (a5 != 1)
    {
      v11 = a5;
      v12 = (a2 + 2 * a4 + 2);
      v13 = ~a4 + a3;
      v14 = v11 - 1;
      while (1)
      {
        npc<std::basic_string<char16_t>>(a1);
        if (!v13)
        {
          break;
        }

        v15 = *v12++;
        v16 = MEMORY[0x1BFB495D0](v15);
        std::basic_string<char16_t>::push_back(a1, v16);
        --v13;
        if (!--v14)
        {
          return;
        }
      }

      goto LABEL_11;
    }
  }
}

void morphun::tokenizer::locale::de::DeTokenExtractorIterator::~DeTokenExtractorIterator(morphun::tokenizer::locale::de::DeTokenExtractorIterator *this)
{
  morphun::tokenizer::locale::de::DeTokenExtractorIterator::~DeTokenExtractorIterator(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD03E8;
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  morphun::tokenizer::ICUTokenExtractorIterator::~ICUTokenExtractorIterator((this + 16));
}

BOOL morphun::tokenizer::locale::de::DeTokenExtractorIterator::isIndivisibleWordNormalized(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  morphun::tokenizer::locale::de::titleCase(a1, a3, a4, 0, a4);
  result = 0;
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (a4 == v8)
  {
    if (a4)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v11 = a4 - 1;
      do
      {
        v13 = *v5++;
        v12 = v13;
        v15 = *v10++;
        v14 = v15;
        v17 = v11-- != 0;
        result = v14 == v12;
      }

      while (v14 == v12 && v17);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t morphun::dictionary::Inflector_InflectionPattern::constrain(void *a1, uint64_t a2, uint64_t *a3, int a4)
{
  result = morphun::dictionary::DictionaryMetaData_MMappedDictionary::getValuesOfTypes(*(*(a2 + 32) + 192), a3);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*(a2 + 18) >= 1)
  {
    v8 = result;
    v9 = 0;
    while (1)
    {
      result = morphun::dictionary::Inflector_InflectionPattern::getInflectionAtPosition(&v11, a2, v9);
      v10 = v12 & v8;
      if (a4)
      {
        break;
      }

      if (v10 == v8)
      {
        goto LABEL_7;
      }

LABEL_8:
      if (++v9 >= *(a2 + 18))
      {
        return result;
      }
    }

    if (v10 != v12)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = std::vector<morphun::dictionary::Inflector_Inflection>::push_back[abi:se200100](a1, &v11);
    goto LABEL_8;
  }

  return result;
}

void sub_1BE5D54D8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t morphun::dictionary::Inflector_InflectionPattern::getInflectionAtPosition(morphun::dictionary::Inflector_InflectionPattern *this, uint64_t a2, int a3)
{
  if (*(a2 + 18) <= a3)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"index too large for getInflectionAtPosition");
    morphun::exception::IndexOutOfBoundsException::IndexOutOfBoundsException(exception, &__dst);
  }

  v5 = morphun::dictionary::metadata::CompressedArray<long long>::read(*(a2 + 32) + 200, *(a2 + 24) + a3);
  Value = morphun::dictionary::metadata::CompressedArray<int>::extractValue(v5, 0, *(*(a2 + 32) + 232));
  result = morphun::dictionary::metadata::CompressedArray<int>::extractValue(v5 >> *(*(a2 + 32) + 232), 0, *(*(a2 + 32) + 233));
  v8 = *(*(*(a2 + 32) + 136) + 8 * Value);
  *this = a2;
  *(this + 2) = result;
  *(this + 2) = v8;
  return result;
}

void sub_1BE5D55E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *std::vector<morphun::dictionary::Inflector_Inflection>::push_back[abi:se200100](void *result, __int128 *a2)
{
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 3) + 1;
    if (v5 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_13;
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x555555555555555)
    {
      v7 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v7 = v5;
    }

    if (v7)
    {
      std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dictionary::Inflector_Inflection>>(v7);
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v4;
  result[1] = v2 + 24;
  return result;
}

void std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dictionary::Inflector_Inflection>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

uint64_t morphun::dictionary::metadata::CompressedArray<long long>::read(uint64_t a1, int a2)
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

void sub_1BE5D5874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t morphun::dictionary::metadata::CompressedArray<int>::extractValue(unint64_t a1, int a2, int a3)
{
  if ((a3 + a2) >= 0x41)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "I");
    morphun::exception::IndexOutOfBoundsException::IndexOutOfBoundsException(exception, &__dst);
  }

  return (a1 >> a2) & ~(-1 << a3);
}

void sub_1BE5D5948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t morphun::dictionary::Inflector_InflectionPattern::getLemmaSuffixMatches(uint64_t result, void *a2)
{
  a2[1] = *a2;
  if (*(result + 18) >= 1)
  {
    v3 = result;
    v4 = 0;
    do
    {
      result = morphun::dictionary::Inflector_InflectionPattern::getInflectionAtPosition(&v12, v3, v4);
      if (*(v3 + 16) >= 1)
      {
        v5 = 0;
        v6 = DWORD2(v12);
        while (1)
        {
          result = morphun::dictionary::metadata::CompressedArray<long long>::read(*(v3 + 32) + 200, v5 + *(v3 + 20));
          if (v6 == result)
          {
            break;
          }

          if (++v5 >= *(v3 + 16))
          {
            goto LABEL_19;
          }
        }

        v7 = a2[1];
        v8 = a2[2];
        if (v7 >= v8)
        {
          v9 = 1 - 0x5555555555555555 * ((v7 - *a2) >> 3);
          if (v9 <= 0xAAAAAAAAAAAAAAALL)
          {
            v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a2) >> 3);
            if (2 * v10 > v9)
            {
              v9 = 2 * v10;
            }

            if (v10 >= 0x555555555555555)
            {
              v11 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v11 = v9;
            }

            if (v11)
            {
              std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dictionary::Inflector_Inflection>>(v11);
            }

LABEL_21:
            __break(1u);
          }

          std::vector<std::pair<morphun::dialog::DefaultArticleLookupFunction const*,std::vector<std::pair<std::basic_string<char16_t>,std::vector<std::pair<morphun::dialog::SemanticFeature const* const,std::basic_string<char16_t>>>>> const>>::__throw_length_error[abi:se200100]();
        }

        if (!v7)
        {
          goto LABEL_21;
        }

        *v7 = v12;
        *(v7 + 16) = v13;
        a2[1] = v7 + 24;
      }

LABEL_19:
      ++v4;
    }

    while (v4 < *(v3 + 18));
  }

  return result;
}

void morphun::dictionary::Inflector_InflectionPattern::inflectionsForSurfaceForm(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[0] = a3;
  v18[1] = a4;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (*(a2 + 18) >= 1)
  {
    v8 = 0;
    v9 = -1;
    do
    {
      morphun::dictionary::Inflector_InflectionPattern::getInflectionAtPosition(&v16, a2, v8);
      if ((v17 & ~a5) == 0)
      {
        v10 = npc<morphun::dictionary::Inflector_InflectionPattern const>(v16);
        morphun::dictionary::metadata::StringContainer::getString((*(v10 + 32) + 144), SDWORD2(v16), &__p);
        v11 = v15;
        if ((v15 & 0x8000000000000000) != 0)
        {
          v11 = v14;
          if (v14 >= v9)
          {
            p_p = __p;
            goto LABEL_9;
          }

LABEL_14:
          operator delete(__p);
          goto LABEL_15;
        }

        if (v9 <= v15)
        {
          p_p = &__p;
LABEL_9:
          if (std::u16string_view::ends_with[abi:se200100](v18, p_p, v11))
          {
            if (v11 > v9)
            {
              a1[1] = *a1;
              v9 = v11;
            }

            std::vector<morphun::dictionary::Inflector_Inflection>::push_back[abi:se200100](a1, &v16);
          }

          if ((v15 & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }
      }

LABEL_15:
      ++v8;
    }

    while (v8 < *(a2 + 18));
  }
}

void sub_1BE5D5C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dictionary::Inflector_InflectionPattern::selectLemmaInflection(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = a1;
  if (*(a2 + 18))
  {
    if (*(a2 + 18) >= 1)
    {
      v8 = 0;
      do
      {
        morphun::dictionary::Inflector_InflectionPattern::getInflectionAtPosition(v20, a2, v8);
        v9 = *a4;
        v10 = a4[1];
        if (*a4 == v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          do
          {
            v12 = *v9++;
            v11 = ((v12 & *&v21) != 0) | (2 * v11);
          }

          while (v9 != v10);
        }

        v13 = vcnt_s8((*&v21 & a3));
        v13.i16[0] = vaddlv_u8(v13);
        v14 = v13.i32[0];
        v15 = vcnt_s8(v21);
        v15.i16[0] = vaddlv_u8(v15);
        v16 = -v15.i32[0];
        if (v11 == -1)
        {
          v17 = ((v14 & 0x8000u) != 0) << 7;
          v18 = (v16 < -255) << 7;
          if (v16 == 65281)
          {
            v18 = 0;
          }

          if (!v14)
          {
            v17 = v18;
          }

          if (!v17)
          {
LABEL_18:
            std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dictionary::Inflector_Inflection>>(1uLL);
          }
        }

        else if (v11 >= -1)
        {
          goto LABEL_18;
        }

        ++v8;
      }

      while (v8 < *(a2 + 18));
      v4 = a1;
    }

    *v4 = 0;
    v4[24] = 0;
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

void sub_1BE5D62D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void morphun::dictionary::Inflector_InflectionPattern::reinflectImplementation(std::basic_string<char16_t> *__dst, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, std::basic_string<char16_t> *__src, unint64_t a7)
{
  v7 = __dst;
  v72[0] = __src;
  v72[1] = a7;
  if (!a4 || (a4 & ~a3) == 0)
  {
    if (a7 > 0x7FFFFFFFFFFFFFF7)
    {
      std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
    }

    if (a7 > 0xA)
    {
      if ((a7 | 3) == 0xB)
      {
        v10 = 13;
      }

      else
      {
        v10 = (a7 | 3) + 1;
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v10);
    }

    *(&__dst->__r_.__value_.__s + 23) = a7;
    v11 = (__dst + 2 * a7);
    if (__dst > __src || v11 <= __src)
    {
      if (a7)
      {
        memmove(__dst, __src, 2 * a7);
      }

      v11->__r_.__value_.__s.__data_[0] = 0;
      return;
    }

LABEL_138:
    __break(1u);
    return;
  }

  LOBYTE(v70.__r_.__value_.__l.__data_) = 0;
  v71 = 0;
  if (*(a2 + 18) < 1)
  {
LABEL_115:
    v7->__r_.__value_.__r.__words[0] = 0;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    return;
  }

  v14 = 0;
  v15 = vcnt_s8(a4);
  v51 = 0xFFFFFFFF80000000;
  v15.i16[0] = vaddlv_u8(v15);
  v16 = -1;
  v52 = v15.u32[0];
  v53 = 0;
  v17 = -1;
  do
  {
    morphun::dictionary::Inflector_InflectionPattern::getInflectionAtPosition(&v69, a2, v14);
    v18 = v69.__r_.__value_.__r.__words[2];
    v19 = npc<morphun::dictionary::Inflector_InflectionPattern const>(v69.__r_.__value_.__l.__data_);
    morphun::dictionary::metadata::StringContainer::getString((*(v19 + 32) + 144), v69.__r_.__value_.__r.__words[1], &v68);
    v20 = (v18 & a3);
    if (!a3 || *&v20 == v18)
    {
      v21 = SHIBYTE(v68.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        size = v68.__r_.__value_.__l.__size_;
        v21 = v68.__r_.__value_.__s.__data_[4];
        if (v68.__r_.__value_.__s.__data_[4] <= v53)
        {
          goto LABEL_28;
        }

        v23 = v68.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) <= v53)
        {
          goto LABEL_28;
        }

        size = SHIBYTE(v68.__r_.__value_.__r.__words[2]);
        v23 = &v68;
      }

      if (std::u16string_view::ends_with[abi:se200100](v72, v23, size))
      {
        v24 = v21;
      }

      else
      {
        v24 = v53;
      }

      v53 = v24;
    }

LABEL_28:
    if ((a4 & ~v18) == 0)
    {
      v25 = *a5;
      v26 = a5[1];
      if (*a5 == v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = 0;
        do
        {
          v28 = *v25++;
          v27 = ((v28 & v18) != 0) | (2 * v27);
        }

        while (v25 != v26);
      }

      v29 = vcnt_s8(v20);
      v29.i16[0] = vaddlv_u8(v29);
      v30 = v29.u32[0];
      if (morphun::util::gLogLevel <= 0)
      {
        std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dsta, L"reinflect result candidate suffix: ");
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(&v59, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
        }

        else
        {
          v59 = v68;
        }

        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = &v59;
        }

        else
        {
          v31 = v59.__r_.__value_.__r.__words[0];
        }

        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v32 = v59.__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::append(&__dsta, v31, v32);
        v61 = __dsta;
        memset(&__dsta, 0, sizeof(__dsta));
        std::basic_string<char16_t>::append(&v61, L" , inflectionGrammemes: [", 0x19uLL);
        v62 = v61;
        memset(&v61, 0, sizeof(v61));
        morphun::dictionary::DictionaryMetaData_MMappedDictionary::getTypesOfValues(*(*(a2 + 32) + 192), v18, &v56);
        morphun::util::StringViewUtils::join(L", ", 2uLL, &v56, v57);
        if ((v58 & 0x80u) == 0)
        {
          v33 = v57;
        }

        else
        {
          v33 = v57[0];
        }

        if ((v58 & 0x80u) == 0)
        {
          v34 = v58;
        }

        else
        {
          v34 = v57[1];
        }

        std::basic_string<char16_t>::append(&v62, v33, v34);
        v63 = v62;
        memset(&v62, 0, sizeof(v62));
        std::basic_string<char16_t>::append(&v63, L"], Number of matches with existing grammemes: ", 0x2EuLL);
        v64 = v63;
        memset(&v63, 0, sizeof(v63));
        morphun::util::StringUtils::to_u16string(v30, &v55);
        if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v55;
        }

        else
        {
          v35 = v55.__r_.__value_.__r.__words[0];
        }

        if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v36 = v55.__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::append(&v64, v35, v36);
        v65 = v64;
        memset(&v64, 0, sizeof(v64));
        std::basic_string<char16_t>::append(&v65, ",", 0x23uLL);
        v66 = v65;
        memset(&v65, 0, sizeof(v65));
        morphun::util::StringUtils::to_u16string(v27, &__p);
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
          v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v38 = __p.__r_.__value_.__l.__size_;
        }

        std::basic_string<char16_t>::append(&v66, p_p, v38);
        v67 = v66;
        memset(&v66, 0, sizeof(v66));
        if (morphun::util::gLogLevel <= 0)
        {
          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = &v67;
          }

          else
          {
            v39 = v67.__r_.__value_.__r.__words[0];
          }

          morphun::util::logToTopOfStackLogger(0, 0, v39);
        }

        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        if (v58 < 0)
        {
          operator delete(v57[0]);
        }

        v55.__r_.__value_.__r.__words[0] = &v56;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:se200100](&v55);
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dsta.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dsta.__r_.__value_.__l.__data_);
        }
      }

      v40 = vcnt_s8(v18);
      v40.i16[0] = vaddlv_u8(v40);
      v41 = v52 - v40.u32[0];
      if (v27 < v16)
      {
        v42 = -1;
      }

      else
      {
        v42 = 1;
      }

      if (v27 != v16 || (v30 < v17 ? (v42 = -1) : (v42 = 1), v30 != v17 || (v41 < v51 ? (v42 = -1) : (v42 = 1), v41 != v51)))
      {
        if (v42 >= 1)
        {
          std::optional<std::basic_string<char16_t>>::operator=[abi:se200100]<std::basic_string<char16_t> const&,void>(&v70, &v68);
          v17 = v30;
          v51 = v41;
          v16 = v27;
        }
      }
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    ++v14;
  }

  while (v14 < *(a2 + 18));
  v7 = __dst;
  if ((v71 & 1) == 0)
  {
    goto LABEL_115;
  }

  if (a7 >= a7 - v53)
  {
    v43 = a7 - v53;
  }

  else
  {
    v43 = a7;
  }

  if (v43 > 0x7FFFFFFFFFFFFFF7)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
  }

  if (v43 > 0xA)
  {
    if ((v43 | 3) == 0xB)
    {
      v44 = 13;
    }

    else
    {
      v44 = (v43 | 3) + 1;
    }

    std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v44);
  }

  *(&v69.__r_.__value_.__s + 23) = v43;
  v45 = (&v69 + 2 * v43);
  if (&v69 <= __src && v45 > __src)
  {
    goto LABEL_138;
  }

  if (v43)
  {
    memmove(&v69, __src, 2 * v43);
  }

  v45->__r_.__value_.__s.__data_[0] = 0;
  if ((v71 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:se200100]();
  }

  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = &v70;
  }

  else
  {
    v46 = v70.__r_.__value_.__r.__words[0];
  }

  if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v47 = HIBYTE(v70.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v47 = v70.__r_.__value_.__l.__size_;
  }

  std::basic_string<char16_t>::append(&v69, v46, v47);
  *__dst = v69;
  if ((v71 & 1) != 0 && SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
  }
}

void sub_1BE5D69D0(_Unwind_Exception *a1)
{
  if (*(v1 - 112) == 1 && *(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
  }

  _Unwind_Resume(a1);
}

void std::__throw_bad_optional_access[abi:se200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

void *morphun::dictionary::metadata::MarisaTrie<int>::getKey(void *a1, marisa::Trie *this, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = 0u;
  v6 = 0u;
  v7 = a3;
  marisa::Trie::reverse_lookup(this, &v6);
  morphun::dictionary::metadata::CharsetConverter::decode((this + 8), a1, *(&v7 + 1), v8);
  return marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&v8 + 1);
}

void sub_1BE5D6C30(_Unwind_Exception *a1)
{
  marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr((v2 + 40));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void morphun::transliteration::BidirectionalStringMap::~BidirectionalStringMap(morphun::transliteration::BidirectionalStringMap *this)
{
  morphun::transliteration::BidirectionalStringMap::~BidirectionalStringMap(this);

  JUMPOUT(0x1BFB49160);
}

{
  *this = &unk_1F3CD9638;
  v2 = *(this + 19);
  if (v2)
  {
    v3 = morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(v2);
    MEMORY[0x1BFB49160](v3, 0x10B0C409C9F69B4);
  }

  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(this + 80);
  icu4cxx::UnicodeSet::~UnicodeSet((this + 64));
  icu4cxx::UnicodeSet::~UnicodeSet((this + 48));
  morphun::util::MemoryMappedFile::~MemoryMappedFile((this + 8));
}

void morphun::transliteration::BidirectionalStringMap::getFromUnicodeSetPattern(std::basic_string<char16_t> *this, morphun::util::MemoryMappedFile *a2)
{
  v3 = *(a2 + 2);
  if ((*(a2 + 1) - v3) <= 3)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(4, &v14);
    std::basic_string<char16_t>::insert(&v14, L"Input too small. Expected at least ", 0x23, v10);
    v15 = v14;
    memset(&v14, 0, sizeof(v14));
    std::basic_string<char16_t>::append(&v15, L" bytes; Available: ", 0x13uLL);
    v16 = v15;
    memset(&v15, 0, sizeof(v15));
    morphun::util::StringUtils::to_u16string((*(a2 + 2) - *(a2 + 4)), &v13);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v13;
    }

    else
    {
      v11 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v16, v11, size);
    v17 = v16;
    memset(&v16, 0, sizeof(v16));
    morphun::exception::IOException::IOException(exception, &v17);
  }

  v5 = *(*a2 + v3);
  *(a2 + 2) = v3 + 4;
  v16.__r_.__value_.__r.__words[0] = 0;
  morphun::util::MemoryMappedFile::read<char const*>(a2, &v16, v5);
  memset(&v17, 0, sizeof(v17));
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  if (v5)
  {
    v6 = v16.__r_.__value_.__r.__words[0] == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    __break(1u);
  }

  else
  {
    morphun::util::StringViewUtils::convert(&v17, v16.__r_.__value_.__l.__data_, v5);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v17;
    }

    else
    {
      v7 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v8 = v17.__r_.__value_.__l.__size_;
    }

    morphun::util::StringViewUtils::replace(this, v7, v8, word_1BE7E9CE4, 1uLL, &word_1BE80F080, 0);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1BE5D6F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void *morphun::util::MemoryMappedFile::read<signed char>(void *result, _BYTE *a2)
{
  v2 = result;
  v3 = result[2];
  if (result[1] == v3)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(1, &v9);
    std::basic_string<char16_t>::insert(&v9, L"Input too small. Expected at least ", 0x23, v5);
    v10 = v9;
    memset(&v9, 0, sizeof(v9));
    std::basic_string<char16_t>::append(&v10, L" bytes; Available: ", 0x13uLL);
    v11 = v10;
    memset(&v10, 0, sizeof(v10));
    morphun::util::StringUtils::to_u16string((*(v2 + 2) - *(v2 + 4)), &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v8;
    }

    else
    {
      v6 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v11, v6, size);
    v12 = v11;
    memset(&v11, 0, sizeof(v11));
    morphun::exception::IOException::IOException(exception, &v12);
  }

  *a2 = *(*result + v3);
  ++result[2];
  return result;
}

void sub_1BE5D713C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

uint64_t morphun::transliteration::BidirectionalStringMap::BidirectionalStringMap(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F3CD9638;
  v4 = (a1 + 8);
  v5 = morphun::util::MemoryMappedFile::MemoryMappedFile(a1 + 8, a2);
  __s1.__r_.__value_.__r.__words[0] = 0;
  morphun::util::MemoryMappedFile::read<char const*>(v5, &__s1, 8uLL);
  if (strncmp(__s1.__r_.__value_.__l.__data_, "MORPHTM", 8uLL))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v20, "I", a2);
    std::basic_string<char16_t>::append(&v20, " ", 0x16uLL);
    __dst = v20;
    memset(&v20, 0, sizeof(v20));
    morphun::exception::IOException::IOException(exception, &__dst);
  }

  __dst.__r_.__value_.__r.__words[0] = 0;
  morphun::util::MemoryMappedFile::read<long long>(v4, &__dst);
  if (__dst.__r_.__value_.__r.__words[0] != 1)
  {
    v10 = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v20, "I", a2);
    std::basic_string<char16_t>::append(&v20, " ", 0x1CuLL);
    __dst = v20;
    memset(&v20, 0, sizeof(v20));
    morphun::exception::IncompatibleVersionException::IncompatibleVersionException(v10, &__dst);
  }

  __dst.__r_.__value_.__s.__data_[0] = 0;
  morphun::util::MemoryMappedFile::read<short>(v4, &__dst);
  if (__dst.__r_.__value_.__s.__data_[0] != 1)
  {
    v11 = __cxa_allocate_exception(0x38uLL);
    std::operator+<char16_t>(&v20, "I", a2);
    std::basic_string<char16_t>::append(&v20, L" was built for a different architecture", 0x27uLL);
    __dst = v20;
    memset(&v20, 0, sizeof(v20));
    morphun::exception::IOException::IOException(v11, &__dst);
  }

  LOBYTE(__dst.__r_.__value_.__l.__data_) = 0;
  morphun::util::MemoryMappedFile::read<signed char>(v4, &__dst);
  if (LOBYTE(__dst.__r_.__value_.__l.__data_) - 3 <= 0xFFFFFFFD)
  {
    v12 = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, L"Unexpected number of tries");
    morphun::exception::IOException::IOException(v12, &__dst);
  }

  *(a1 + 40) = __dst.__r_.__value_.__l.__data_;
  v6 = *(a1 + 24);
  if (*(a1 + 16) == v6)
  {
    v13 = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(1, &v18);
    std::basic_string<char16_t>::insert(&v18, L"Input too small. Expected at least ", 0x23, v14);
    __s1 = v18;
    memset(&v18, 0, sizeof(v18));
    std::basic_string<char16_t>::append(&__s1, L" bytes; Available: ", 0x13uLL);
    v20 = __s1;
    memset(&__s1, 0, sizeof(__s1));
    morphun::util::StringUtils::to_u16string((*(a1 + 16) - *(a1 + 24)), &v17);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v17;
    }

    else
    {
      v15 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v20, v15, size);
    __dst = v20;
    memset(&v20, 0, sizeof(v20));
    morphun::exception::IOException::IOException(v13, &__dst);
  }

  v7 = *(*(a1 + 8) + v6);
  *(a1 + 24) = v6 + 1;
  morphun::util::MemoryMappedFile::read<char const*>(v4, &__dst, 4uLL);
  *(a1 + 41) = v7;
  morphun::transliteration::BidirectionalStringMap::getFromUnicodeSetPattern(&__dst, v4);
  icu4cxx::UnicodeSet::UnicodeSet(a1 + 48);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  morphun::transliteration::BidirectionalStringMap::getFromUnicodeSetPattern(&__dst, v4);
  icu4cxx::UnicodeSet::UnicodeSet(a1 + 64);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  morphun::dictionary::metadata::MarisaTrie<int>::MarisaTrie(a1 + 80, v4);
  if (*(a1 + 40) == 2)
  {
    operator new();
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 80;
  if (*(a1 + 41))
  {
    MEMORY[0x1BFB49A10](*(a1 + 48), 2);
  }

  MEMORY[0x1BFB49A40](*(a1 + 48));
  return a1;
}

void sub_1BE5D76CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v36 - 41) < 0)
  {
    operator delete(*(v36 - 64));
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
      morphun::util::MemoryMappedFile::~MemoryMappedFile(v33);
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v35);
  goto LABEL_14;
}

std::basic_string<char16_t> *morphun::grammar::synthesis::ItGrammarSynthesizer_ArticleLookupFunction::getFeatureValue(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a1[3] || (v6 = (*(*a2 + 32))(a2)) == 0)
  {
    v9 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, a1[7]);
    if (a3 + 8 == v9)
    {
      v10 = 0;
    }

    else
    {
      v10 = (v9 + 104);
    }

    PossessiveAdjectiveCount = morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjectiveCount(v10);
    v12 = std::__tree<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::__map_value_compare<morphun::dialog::SemanticFeature,std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>,std::less<morphun::dialog::SemanticFeature>,true>,std::allocator<std::__value_type<morphun::dialog::SemanticFeature,std::basic_string<char16_t>>>>::find<morphun::dialog::SemanticFeature>(a3, a1[6]);
    if (a3 + 8 == v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v12 + 104);
    }

    PossessiveAdjectivePerson = morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjectivePerson(v13);
    v15 = (*(*a2 + 32))(a2, a1[4]);
    Count = morphun::grammar::synthesis::ItGrammarSynthesizer::getCount(v15);
    v17 = (*(*a2 + 32))(a2, a1[5]);
    Gender = morphun::grammar::synthesis::ItGrammarSynthesizer::getGender(v17);
    v19 = (*(*a2 + 24))(a2);
    if (Count)
    {
      v20 = Gender == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      if (!Count)
      {
        morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::determine(a1 + 8, v19, __p);
        Count = morphun::grammar::synthesis::ItGrammarSynthesizer::getCount(__p);
        if (v49 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (!Gender)
      {
        morphun::grammar::synthesis::ItGrammarSynthesizer_GenderLookupFunction::determine(a1 + 37, v19, __p);
        Gender = morphun::grammar::synthesis::ItGrammarSynthesizer::getGender(__p);
        if (v49 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (!PossessiveAdjectiveCount || !PossessiveAdjectivePerson)
    {
      return (*(*a1 + 72))(a1, a2, 1, Count, Gender);
    }

    PossessiveAdjective = morphun::grammar::synthesis::ItGrammarSynthesizer::getPossessiveAdjective(PossessiveAdjectiveCount, PossessiveAdjectivePerson);
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
    }

    v23 = PossessiveAdjective;
    v47 = PossessiveAdjectivePerson;
    if (v22 > 0xA)
    {
      if ((v22 | 3) == 0xB)
      {
        v25 = 13;
      }

      else
      {
        v25 = (v22 | 3) + 1;
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v25);
    }

    v52 = v22;
    result = v51;
    v26 = (v51 + 2 * v22);
    if (v51 <= v23 && v26 > v23)
    {
      goto LABEL_91;
    }

    if (v22)
    {
      memmove(v51, v23, 2 * v22);
    }

    *v26 = 0;
    if ((v52 & 0x80u) == 0)
    {
      v27 = v51;
    }

    else
    {
      v27 = v51[0];
    }

    if ((v52 & 0x80u) == 0)
    {
      v28 = v52;
    }

    else
    {
      v28 = v51[1];
    }

    InflectedPossessiveAdjectiveValue = morphun::grammar::synthesis::ItGrammarSynthesizer::getInflectedPossessiveAdjectiveValue(v27, v28, Gender, Count);
    if (v30 > 0x7FFFFFFFFFFFFFF7)
    {
      std::basic_string<char16_t>::__throw_length_error[abi:se200100]();
    }

    v31 = InflectedPossessiveAdjectiveValue;
    if (v30 > 0xA)
    {
      if ((v30 | 3) == 0xB)
      {
        v32 = 13;
      }

      else
      {
        v32 = (v30 | 3) + 1;
      }

      std::__allocate_at_least[abi:se200100]<std::allocator<char16_t>>(v32);
    }

    *(&v50.__r_.__value_.__s + 23) = v30;
    result = &v50;
    v33 = (&v50 + 2 * v30);
    if (&v50 <= v31 && v33 > v31)
    {
LABEL_91:
      __break(1u);
      return result;
    }

    if (v30)
    {
      memmove(&v50, v31, 2 * v30);
    }

    v33->__r_.__value_.__s.__data_[0] = 0;
    size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v50.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::basic_string<char16_t>::append(&v50, &word_1BE80F394, 1uLL);
    }

    v35 = *(v19 + 23);
    if (v35 >= 0)
    {
      v36 = v19;
    }

    else
    {
      v36 = *v19;
    }

    if (v35 >= 0)
    {
      v37 = *(v19 + 23);
    }

    else
    {
      v37 = *(v19 + 8);
    }

    v38 = std::basic_string<char16_t>::append(&v50, v36, v37);
    v39 = morphun::grammar::synthesis::ItGrammarSynthesizer::WORDSWITHPOSSESSIVEWITHOUTARTICLE(v38);
    v40 = *(v19 + 23);
    if (v40 >= 0)
    {
      v41 = v19;
    }

    else
    {
      v41 = *v19;
    }

    if (v40 >= 0)
    {
      v42 = *(v19 + 23);
    }

    else
    {
      v42 = *(v19 + 8);
    }

    v43 = std::__tree<std::__value_type<std::u16string_view,std::u16string_view>,std::__map_value_compare<std::u16string_view,std::__value_type<std::u16string_view,std::u16string_view>,std::less<std::u16string_view>,true>,std::allocator<std::__value_type<std::u16string_view,std::u16string_view>>>::find<std::u16string_view>(v39, v41, v42);
    v46 = (morphun::grammar::synthesis::ItGrammarSynthesizer::WORDSWITHPOSSESSIVEWITHOUTARTICLE(v43) + 8) == v43 || (Count != 1 || PossessiveAdjectiveCount == 2) && v47 == 3;
    if (!a1[3])
    {
      morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(__p, &v50, a3);
      (*(*a1 + 72))(a1, __p, v46, Count, Gender);
      operator new();
    }

    morphun::dialog::SemanticFeatureModel_DisplayValue::SemanticFeatureModel_DisplayValue(__p, &v50, a3);
    v24 = (*(*a1 + 72))(a1, __p, v46, Count, Gender);
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    return v24;
  }

  v7 = *(*a1 + 32);

  return v7(a1, a2, v6);
}

void sub_1BE5D7EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v32, 0x10B3C40F7FF9C27);
  if (v33)
  {
    (*(*v33 + 16))(v33);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v34 - 81) < 0)
  {
    operator delete(*(v34 - 104));
  }

  _Unwind_Resume(a1);
}

void morphun::grammar::synthesis::ItGrammarSynthesizer_ArticleLookupFunction::ItGrammarSynthesizer_ArticleLookupFunction(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a4 + 8);
  }

  v8 = morphun::dialog::DefaultArticleLookupFunction::DefaultArticleLookupFunction(a1, (a2 + 1), a3, v7 != 0, 0);
  v9 = *a2;
  *v8 = *a2;
  *(a1 + *(v9 - 56)) = a2[4];
  *(a1 + *(*a1 - 40)) = a2[5];
  a1[3] = 0;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, "c");
  v10 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a3 + 8, __p);
  v11 = a3 + 16;
  if (a3 + 16 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v10 + 56);
  }

  npc<morphun::dialog::SemanticFeature const>(v12);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  a1[4] = v12;
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__p, L"gender");
  v13 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a3 + 8, __p);
  if (v11 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v13 + 56);
  }

  v15 = npc<morphun::dialog::SemanticFeature const>(v14);
  if (v24 < 0)
  {
    operator delete(__p[0]);
  }

  a1[5] = v14;
  v16 = morphun::grammar::synthesis::ItGrammarSynthesizer::POSSESSIVE_ADJECTIVE_PERSON(v15);
  v17 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a3 + 8, v16);
  if (v11 == v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(v17 + 56);
  }

  v19 = npc<morphun::dialog::SemanticFeature const>(v18);
  a1[6] = v19;
  v20 = morphun::grammar::synthesis::ItGrammarSynthesizer::POSSESSIVE_ADJECTIVE_COUNT(v19);
  v21 = std::__tree<std::basic_string<char16_t>>::find<std::basic_string<char16_t>>(a3 + 8, v20);
  if (v11 == v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v21 + 56);
  }

  a1[7] = npc<morphun::dialog::SemanticFeature const>(v22);
  morphun::grammar::synthesis::ItGrammarSynthesizer_CountLookupFunction::ItGrammarSynthesizer_CountLookupFunction((a1 + 8));
}

void sub_1BE5D84E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1BFB49160](v19, v20);
  _Unwind_Resume(a1);
}

void morphun::analysis::PtBrAnalyzer::~PtBrAnalyzer(void **this)
{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDAE60);

  JUMPOUT(0x1BFB49160);
}

{
  morphun::analysis::ConfigurableAnalyzer::~ConfigurableAnalyzer(this, off_1F3CDAE60);
}

void *morphun::util::MemoryMappedFile::read<long long *>(void *result, void *a2, unint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (result[1] - v4 < a3)
  {
    v5 = a3;
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(v5, &v11);
    std::basic_string<char16_t>::insert(&v11, L"Input too small. Expected at least ", 0x23, v7);
    v12 = v11;
    memset(&v11, 0, sizeof(v11));
    std::basic_string<char16_t>::append(&v12, L" bytes; Available: ", 0x13uLL);
    v13 = v12;
    memset(&v12, 0, sizeof(v12));
    morphun::util::StringUtils::to_u16string((*(v3 + 2) - *(v3 + 4)), &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v13, v8, size);
    v14 = v13;
    memset(&v13, 0, sizeof(v13));
    morphun::exception::IOException::IOException(exception, &v14);
  }

  *a2 = *result + v4;
  result[2] = v4 + a3;
  return result;
}

void sub_1BE5D8780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void *morphun::util::MemoryMappedFile::read<int *>(void *result, void *a2, unint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (result[1] - v4 < a3)
  {
    v5 = a3;
    exception = __cxa_allocate_exception(0x38uLL);
    morphun::util::StringUtils::to_u16string(v5, &v11);
    std::basic_string<char16_t>::insert(&v11, L"Input too small. Expected at least ", 0x23, v7);
    v12 = v11;
    memset(&v11, 0, sizeof(v11));
    std::basic_string<char16_t>::append(&v12, L" bytes; Available: ", 0x13uLL);
    v13 = v12;
    memset(&v12, 0, sizeof(v12));
    morphun::util::StringUtils::to_u16string((*(v3 + 2) - *(v3 + 4)), &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v10;
    }

    else
    {
      v8 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    std::basic_string<char16_t>::append(&v13, v8, size);
    v14 = v13;
    memset(&v13, 0, sizeof(v13));
    morphun::exception::IOException::IOException(exception, &v14);
  }

  *a2 = *result + v4;
  result[2] = v4 + a3;
  return result;
}

void sub_1BE5D8988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void morphun::dictionary::Inflector_MMappedDictionary::~Inflector_MMappedDictionary(morphun::dictionary::Inflector_MMappedDictionary *this)
{
  if (*(this + 416) == 1)
  {
    v2 = *(this + 50);
    if (v2)
    {
      MEMORY[0x1BFB49140](v2, 0x1000C8000313F17);
    }
  }

  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(this + 320);
  morphun::dictionary::metadata::MarisaTrie<int>::~MarisaTrie(this + 248);
  if (*(this + 224) == 1)
  {
    v3 = *(this + 26);
    if (v3)
    {
      MEMORY[0x1BFB49140](v3, 0x1000C8000313F17);
    }
  }

  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(this + 19);
}

uint64_t morphun::dictionary::Inflector_MMappedDictionary::getInflectionPattern(morphun::dictionary::Inflector_MMappedDictionary *this, uint64_t a2, int a3)
{
  v6 = morphun::dictionary::metadata::CompressedArray<int>::read(a2 + 280, a3);
  v7 = morphun::dictionary::metadata::CompressedArray<long long>::read(a2 + 200, v6);
  Value = morphun::dictionary::metadata::CompressedArray<short>::extractValue(v7, *(a2 + 427));
  v9 = v7 >> *(a2 + 427);
  v10 = morphun::dictionary::metadata::CompressedArray<short>::extractValue(v9, *(a2 + 426));
  v11 = v9 >> *(a2 + 426);
  v12 = morphun::dictionary::metadata::CompressedArray<short>::extractValue(v11, *(a2 + 425));
  result = morphun::dictionary::metadata::CompressedArray<int>::extractValue(v11 >> *(a2 + 425), 0, *(a2 + 424));
  v14 = *(*(a2 + 136) + 8 * v12);
  *this = a3;
  *(this + 1) = result;
  *(this + 1) = v14;
  *(this + 8) = v10;
  *(this + 9) = Value;
  *(this + 5) = v6 + 1;
  *(this + 6) = v6 + 1 + v10;
  *(this + 4) = a2;
  return result;
}

uint64_t morphun::dictionary::metadata::CompressedArray<short>::extractValue(__int16 a1, unsigned int a2)
{
  if (a2 >= 0x41)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    std::basic_string<char16_t>::basic_string[abi:se200100]<0>(&__dst, "I");
    morphun::exception::IndexOutOfBoundsException::IndexOutOfBoundsException(exception, &__dst);
  }

  return (a1 & ~(-1 << a2));
}

void sub_1BE5D8C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void std::__allocate_at_least[abi:se200100]<std::allocator<morphun::dictionary::Inflector_InflectionPattern>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:se200100]();
}

void morphun::grammar::synthesis::EnGrammarSynthesizer::addSemanticFeatures(morphun::grammar::synthesis::EnGrammarSynthesizer *this, morphun::dialog::SemanticFeatureModel *a2)
{
  __dst[9] = *MEMORY[0x1E69E9840];
  std::basic_string<char16_t>::basic_string[abi:se200100]<0>(__dst, L"indefArticle");
  operator new();
}

void sub_1BE5D9880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  std::__tree<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::__map_value_compare<std::basic_string<char16_t>,std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>,std::less<std::basic_string<char16_t>>,true>,std::allocator<std::__value_type<std::basic_string<char16_t>,morphun::grammar::synthesis::SvGrammarSynthesizer::Count>>>::destroy(*(v43 + 16));
  MEMORY[0x1BFB49160](v43, 0x10A1C40A4A8B666);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t morphun::lang::StringFilterUtil::LATIN_SCRIPT(morphun::lang::StringFilterUtil *this)
{
  {
    operator new();
  }

  v1 = morphun::lang::StringFilterUtil::LATIN_SCRIPT(void)::LATIN_SCRIPT_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE5D9C20(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::lang::StringFilterUtil::CYRILLIC_SCRIPT(morphun::lang::StringFilterUtil *this)
{
  {
    operator new();
  }

  v1 = morphun::lang::StringFilterUtil::CYRILLIC_SCRIPT(void)::CYRILLIC_SCRIPT_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE5D9D58(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::lang::StringFilterUtil::ARABIC_SCRIPT(morphun::lang::StringFilterUtil *this)
{
  {
    operator new();
  }

  v1 = morphun::lang::StringFilterUtil::ARABIC_SCRIPT(void)::ARABIC_SCRIPT_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE5D9E2C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::lang::StringFilterUtil::HEBREW_SCRIPT(morphun::lang::StringFilterUtil *this)
{
  {
    operator new();
  }

  v1 = morphun::lang::StringFilterUtil::HEBREW_SCRIPT(void)::HEBREW_SCRIPT_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE5D9F00(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::lang::StringFilterUtil::HAN_SCRIPT(morphun::lang::StringFilterUtil *this)
{
  {
    operator new();
  }

  v1 = morphun::lang::StringFilterUtil::HAN_SCRIPT(void)::HAN_SCRIPT_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE5D9FD4(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::lang::StringFilterUtil::HANGUL_SCRIPT(morphun::lang::StringFilterUtil *this)
{
  {
    operator new();
  }

  v1 = morphun::lang::StringFilterUtil::HANGUL_SCRIPT(void)::HANGUL_SCRIPT_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE5DA0A8(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::lang::StringFilterUtil::DEVANAGARI_SCRIPT(morphun::lang::StringFilterUtil *this)
{
  {
    operator new();
  }

  v1 = morphun::lang::StringFilterUtil::DEVANAGARI_SCRIPT(void)::DEVANAGARI_SCRIPT_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE5DA17C(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

uint64_t morphun::lang::StringFilterUtil::NON_WHITESPACE_SEPARATED_SCRIPTS(morphun::lang::StringFilterUtil *this)
{
  {
    operator new();
  }

  v1 = morphun::lang::StringFilterUtil::NON_WHITESPACE_SEPARATED_SCRIPTS(void)::NON_WHITESPACE_SEPARATED_SCRIPTS_;

  return npc<icu4cxx::UnicodeSet const>(v1);
}

void sub_1BE5DA250(_Unwind_Exception *a1)
{
  MEMORY[0x1BFB49160](v1, 0x1020C405F07FB98);
  _Unwind_Resume(a1);
}

void morphun::lang::StringFilterUtil::filteredUnaccent(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, std::basic_string<char16_t> *a4@<X8>)
{
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  memset(&v28, 0, sizeof(v28));
  if (v7 < 1)
  {
LABEL_63:
    if ((v6 & 0x80) != 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a4, *a3, *(a3 + 8));
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *a3;
      a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
    }

    goto LABEL_67;
  }

  v10 = 0;
  v11 = 1;
  do
  {
    while (1)
    {
      v12 = *(a3 + 23);
      v13 = v12 >= 0 ? a3 : *a3;
      v14 = v12 >= 0 ? *(a3 + 23) : *(a3 + 8);
      v15 = morphun::util::StringViewUtils::codePointAt(v13, v14, v10);
      if (!MEMORY[0x1BFB49A20](*a1, v15))
      {
        break;
      }

      if (v11)
      {
        std::basic_string<char16_t>::assign(&v28, a3, 0, v10);
      }

      memset(&v27, 0, sizeof(v27));
      morphun::util::StringUtils::appendCodePoint(&v27, v15);
      memset(&__s, 0, sizeof(__s));
      {
        operator new();
      }

      v18 = npc<icu4cxx::Normalizer2>(morphun::lang::NFD(void)::NFD_);
      morphun::dictionary::PhraseProperties::normalize(v18, &v27, &__p);
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

      morphun::util::UnicodeSetUtils::removeSetFromString(&__s, a2, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        if (__s.__r_.__value_.__l.__size_ > 1)
        {
LABEL_37:
          {
            operator new();
          }

          v21 = npc<icu4cxx::Normalizer2>(morphun::lang::NFC(void)::NFC_);
          morphun::dictionary::PhraseProperties::normalize(v21, &__s, &__p);
          goto LABEL_40;
        }

        std::basic_string<char16_t>::__init_copy_ctor_external(&__p, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
      }

      else
      {
        if (HIBYTE(__s.__r_.__value_.__r.__words[2]) >= 2u)
        {
          goto LABEL_37;
        }

        __p = __s;
      }

LABEL_40:
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = __p.__r_.__value_.__l.__size_;
      }

      std::basic_string<char16_t>::append(&v28, v22, v23);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      v11 = 0;
      if (v15 < 0x10000)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      v10 += v24;
      if (v10 >= v7)
      {
        goto LABEL_65;
      }
    }

    v16 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v28.__r_.__value_.__l.__size_;
    }

    if (v16)
    {
      morphun::util::StringUtils::appendCodePoint(&v28, v15);
    }

    if (v15 < 0x10000)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    v10 += v17;
  }

  while (v10 < v7);
  if (v11)
  {
    LOBYTE(v6) = *(a3 + 23);
    goto LABEL_63;
  }

LABEL_65:
  *a4 = v28;
  memset(&v28, 0, sizeof(v28));
LABEL_67:
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}