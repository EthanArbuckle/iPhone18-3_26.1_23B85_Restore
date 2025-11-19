void SLCartDict::SLCartDict(SLCartDict *this, _DWORD *a2)
{
  SLDictionary::SLDictionary(this);
  *v3 = &unk_287BD2D88;
  v4 = *a2;
  *(v3 + 56) = a2[4];
  *(v3 + 40) = v4;
  *(v3 + 64) = a2 + 5;
  v5 = *(v3 + 56);
  v6 = bswap32(v5);
  if (*(v3 + 16) == *(v3 + 20))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = a2 + v7 + 21;
  SLCartDict::SymtabRead(v3, &v8, (v3 + 80));
}

void sub_26B2D5B60(_Unwind_Exception *a1)
{
  v3 = *(v1 + 13);
  if (v3)
  {
    MEMORY[0x26D6753A0](v3, 0x1010C8082113244);
  }

  v4 = *(v1 + 11);
  if (v4)
  {
    MEMORY[0x26D6753A0](v4, 0x1010C8082113244);
  }

  SLDictionary::~SLDictionary(v1);
  _Unwind_Resume(a1);
}

void SLCartDict::SymtabRead(SLCartDict *this, char **a2, SLCartDict::Symtab *a3)
{
  v3 = *a2;
  v4 = *(*a2 + 13);
  v5 = bswap32(v4);
  if (*(this + 4) != *(this + 5))
  {
    v4 = v5;
  }

  *a3 = v4;
  *a2 = (v3 + 21);
  operator new[]();
}

void SLCartDict::Symtab::~Symtab(SLCartDict::Symtab *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    MEMORY[0x26D6753A0](v1, 0x1010C8082113244);
  }
}

{
  v1 = *(this + 1);
  if (v1)
  {
    MEMORY[0x26D6753A0](v1, 0x1010C8082113244);
  }
}

void SLCartDict::~SLCartDict(SLCartDict *this)
{
  *this = &unk_287BD2D88;
  v2 = *(this + 9);
  if (v2)
  {
    MEMORY[0x26D6753A0](v2, 0x1020C80FD9D5386);
  }

  v3 = *(this + 13);
  if (v3)
  {
    MEMORY[0x26D6753A0](v3, 0x1010C8082113244);
  }

  v4 = *(this + 11);
  if (v4)
  {
    MEMORY[0x26D6753A0](v4, 0x1010C8082113244);
  }

  SLDictionary::~SLDictionary(this);
}

{
  SLCartDict::~SLCartDict(this);

  JUMPOUT(0x26D6753C0);
}

uint64_t SLCartDict::Lookup(SLCartDict *this, const char *a2, uint64_t a3, SLWordBuilder *a4, SLDictionary *a5)
{
  v9 = SLCartDict::LTGenResultRaw(this, a2, a3);
  if (v9)
  {
    SLCartDict::LTCleanupLabels(this);
    (**a4)(a4, "CART");
    (*(*a4 + 8))(a4);
    (*(*a4 + 16))(a4, a2, a3);
    (*(*a4 + 56))(a4);
    __p = 0;
    v34 = 0;
    v35 = 0;
    v32 = 2;
    std::vector<unsigned char>::push_back[abi:ne200100](&__p, &v32);
    v10 = 1;
    if ((*(this + 120) & 0x80000000) == 0)
    {
      v31 = v9;
      v11 = 0;
      v12 = 0;
      v13 = *(this + 120);
      v14 = (this + 242);
      while (1)
      {
        if (v13 >= *(this + 32) && v13 <= *(this + 33))
        {
          v32 = 1;
          std::vector<unsigned char>::push_back[abi:ne200100](&__p, &v32);
          LOBYTE(v16) = *(*(this + 3) + *(v14 - 1));
          v12 = -1;
          if (v16)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v15 = *(this + 3);
          v16 = *(v15 + v13);
          if (*(v15 + v13))
          {
            if (v12 == 0xFF)
            {
              v12 = -1;
            }

            else
            {
              v17 = (*(*this + 24))(this, v16);
              if (v17 > v12)
              {
                v11 = v34 - __p;
                v12 = v17;
              }
            }

LABEL_13:
            v18 = v34;
            if (v34 >= v35)
            {
              v20 = __p;
              v21 = (v34 - __p);
              v22 = v34 - __p + 1;
              if (v22 < 0)
              {
                std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
              }

              v23 = v35 - __p;
              if (2 * (v35 - __p) > v22)
              {
                v22 = 2 * v23;
              }

              if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v24 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v22;
              }

              if (v24)
              {
                operator new();
              }

              v25 = v34 - __p;
              *v21 = v16;
              v19 = v21 + 1;
              memcpy(0, v20, v25);
              __p = 0;
              v34 = v21 + 1;
              v35 = 0;
              if (v20)
              {
                operator delete(v20);
              }
            }

            else
            {
              *v34 = v16;
              v19 = v18 + 1;
            }

            v34 = v19;
          }
        }

        v26 = *v14++;
        v13 = v26;
        if (v26 < 0)
        {
          v10 = v12 != 0xFF;
          v9 = v31;
          goto LABEL_29;
        }
      }
    }

    v11 = 0;
LABEL_29:
    v27 = __p;
    if (v34 != __p)
    {
      v28 = 0;
      do
      {
        if (v11 == v28 && v10)
        {
          (*(*a4 + 72))(a4, 1);
          v29 = (*(*this + 32))(this, *(__p + v11));
        }

        else
        {
          v29 = v27[v28];
        }

        (*(*a4 + 72))(a4, v29);
        ++v28;
        v27 = __p;
      }

      while (v28 < v34 - __p);
    }

    SLWordBuilder::SetPartOfSpeech(a4, *(this + 9));
    (*(*a4 + 96))(a4);
    (*(*a4 + 48))(a4);
    if (__p)
    {
      v34 = __p;
      operator delete(__p);
    }
  }

  return v9;
}

void sub_26B2D61E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SLCartDict::LTGenResultRaw(SLCartDict *this, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = *(this + 12);
  v7 = bswap32(v6);
  if (*(this + 4) != *(this + 5))
  {
    v6 = v7;
  }

  v8 = (v6 - 1) >> 1;
  memset(__b, 33, v8);
  if (!a3)
  {
    goto LABEL_16;
  }

  v9 = 0;
  do
  {
    v11 = *a2++;
    v10 = v11;
    if ((v11 - 97) >= 0x1A)
    {
      if ((v10 - 65) > 0x19)
      {
        goto LABEL_9;
      }

      LOBYTE(v10) = __tolower(v10);
    }

    v12 = v9 + v8;
    ++v9;
    __b[v12] = v10;
LABEL_9:
    --a3;
  }

  while (a3);
  v13 = &__b[v8];
  memset(&__b[v8 + v9], 33, v8);
  if (!v9)
  {
LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v14 = *(this + 8);
  v15 = __b[v8];
  result = strchr(v14, v15);
  if (result)
  {
    v17 = 0;
    v18 = 0;
    v25 = this + 112;
    v23 = *(this + 9);
    v24 = this + 240;
    while (1)
    {
      v27 = v15;
      v19 = &v13[v17];
      v26 = v23 + 32 * (result - v14);
      v25[v18] = v17;
      v13[v17] = 43;
      *&v24[2 * v18] = SLCartDict::LTGenLabelConfusions(this, v26, &__b[v17], this + 80);
      v20 = v18 | 1;
      v25[v18 | 1] = v17;
      *v19 = 45;
      v18 += 2;
      *&v24[2 * v20] = SLCartDict::LTGenLabelConfusions(this, v26, &__b[v17], this + 80);
      *v19 = v27;
      if (++v17 == v9)
      {
        break;
      }

      v15 = v13[v17];
      result = strchr(v14, v15);
      if (!result)
      {
        result = v17 >= v9;
        goto LABEL_18;
      }
    }

    v21 = v18 & 0xFFFFFFFE;
LABEL_17:
    *(this + v21 + 120) = -1;
    *(this + v21 + 112) = -1;
    result = 1;
  }

LABEL_18:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SLCartDict::LTCleanupLabels(uint64_t this)
{
  v1 = this + 240;
  v2 = *(this + 44);
  v3 = bswap32(v2);
  if (*(this + 16) != *(this + 20))
  {
    v2 = v3;
  }

  if ((*(this + 240) & 0x80000000) == 0)
  {
    v4 = 0;
    v5 = *(this + 240);
    v6 = (this + 113);
    v7 = (this + 242);
    do
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 == v5 || v2 == v8)
      {
        v11 = v4;
      }

      else
      {
        v11 = v4 + 1;
        *(v1 + 2 * v11) = v8;
        *(this + 112 + v11) = *v6;
        ++v4;
      }

      v12 = *(v1 + 2 * v11);
      v5 = *(v1 + 2 * v11);
      ++v6;
    }

    while ((v12 & 0x80000000) == 0);
  }

  return this;
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t SLCartDict::LTGenLabelConfusions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a2 + 4))
  {
    return *(a2 + 12);
  }

  v5 = *(a2 + 16);
  v6 = *(a4 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  v9 = v5;
  do
  {
    v10 = (v6 + 16 * v9[1]);
    if (memchr(v10[1], *(a3 + *v9), *v10))
    {
      v11 = 2;
    }

    else
    {
      v11 = 4;
    }

    v12 = *&v9[v11];
    v13 = bswap32(v12) >> 16;
    if (v7 != v8)
    {
      LOWORD(v12) = v13;
    }

    v9 = &v5[6 * v12];
  }

  while ((v12 & 0x8000) == 0);
  return v12 & 0x7FFF;
}

void SLCartMappedFileDict::SLCartMappedFileDict(SLCartMappedFileDict *this, const __CFURL *a2, SLMMapHint *a3)
{
  *this = &unk_287BD31E0;
  v4 = SLMappedFileDict::SetMappedFile((this + 496), a2, a3);
  SLCartDict::SLCartDict(this, v4);
}

uint64_t SLCartDictEng::VowelQuality(SLCartDictEng *this, int a2)
{
  if (a2 == 25 || a2 == 11)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  return ((SLPhonEng::sFlags[a2] << 31) >> 31) & v3;
}

uint64_t SLCartDictEng::PimpMySchwa(SLCartDictEng *this, unsigned int a2)
{
  if (a2 == 25)
  {
    v2 = 4;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == 11)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

void SLCartDict::Create(SLCartDict *this, const __CFLocale *a2, const __CFURL *a3)
{
  Value = CFLocaleGetValue(this, *MEMORY[0x277CBEED0]);
  if (CFStringCompare(Value, @"en", 0) == kCFCompareEqualTo)
  {
    operator new();
  }

  SLCartDict::Create();
}

void SLCartDictEng::~SLCartDictEng(SLCartDictEng *this)
{
  SLCartMappedFileDict::~SLCartMappedFileDict(this);

  JUMPOUT(0x26D6753C0);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279CD97A8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t SLCompressedDict::CompareEntry(SLCompressedDict *this, const char *a2, size_t a3, unsigned __int8 *a4)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v4 = *a4;
  v5 = v4 >> 3;
  v6 = v4 << 10;
  v7 = v16;
  v15 = v5;
  v8 = 10;
  v9 = a4;
LABEL_2:
  ++v9;
  do
  {
    if (v8 > 8)
    {
      v6 |= *v9 << (v8 - 8);
      v8 -= 8;
      goto LABEL_2;
    }

    v10 = (v6 >> 8) & 0x1F;
    if (v10 >= 3)
    {
      v11 = v10 + 62;
    }

    else
    {
      v11 = 0x272E2Du >> (8 * (BYTE1(v6) & 0x1F));
    }

    *v7++ = v11;
    v6 = 32 * v6;
    v8 += 5;
  }

  while (v5-- >= 2);
  *(this + 8) = v9 - a4;
  result = SLUncompressedDict::CompareEntry(this, a2, a3, &v15);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void SLCompressedDict::~SLCompressedDict(SLCompressedDict *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

uint64_t SLWordBuilder::BeginHomograph(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

uint64_t SLWordBuilder::AddPhonemes(uint64_t this, const unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v4 = this;
    v5 = a3 + 1;
    do
    {
      v6 = *a2++;
      this = (*(*v4 + 72))(v4, v6);
      --v5;
    }

    while (v5 > 1);
  }

  return this;
}

void SLWordBuilder::SLWordBuilder(SLWordBuilder *this)
{
  *this = &unk_287BD2EF8;
}

{
  *this = &unk_287BD2EF8;
}

uint64_t SLWordBuilderProxy::BeginHomograph(SLWordBuilderProxy *this)
{
  *(this + 8) = 0;
  *(this + 3) = 0;
  return (*(**(this + 2) + 56))();
}

uint64_t SLWordBuilderProxy::EndHomograph(SLWordBuilderProxy *this)
{
  v1 = *(this + 2);
  v1[3] = *(this + 3);
  return (*(*v1 + 96))(v1);
}

uint64_t SLWordBuilderPhonemeProxy::AddPhoneme(SLWordBuilderPhonemeProxy *this, char a2)
{
  result = (*(**(this + 2) + 72))(*(this + 2));
  *(this + 24) = a2;
  return result;
}

uint64_t SLWordBuilderPhonemeProxy::AddPhonemes(SLWordBuilderPhonemeProxy *this, const unsigned __int8 *a2, int a3)
{
  result = (*(**(this + 2) + 80))(*(this + 2));
  if (a3)
  {
    *(this + 24) = a2[a3 - 1];
  }

  return result;
}

void SLDictionary::SLDictionary(SLDictionary *this)
{
  *this = &unk_287BD2F90;
  *(this + 1) = 0;
  *(this + 2) = 0x100000002;
}

float SLDictionary::SmartSwapFloat32Value(SLDictionary *this, float result)
{
  v2 = COERCE_FLOAT(bswap32(LODWORD(result)));
  if (*(this + 4) != *(this + 5))
  {
    return v2;
  }

  return result;
}

uint64_t SLEncyclopedia::Lookup(SLEncyclopedia *this, const char *a2, uint64_t a3, SLWordBuilder *a4, SLDictionary *a5)
{
  v5 = *(this + 3);
  if (!v5)
  {
    return 0;
  }

  do
  {
    result = (**v5)(v5, a2, a3, a4, a5);
    if (result)
    {
      break;
    }

    v5 = *(v5 + 8);
  }

  while (v5);
  return result;
}

uint64_t SLEncyclopedia::PushFront(uint64_t this, SLDictionary *a2)
{
  v2 = *(this + 24);
  if (!v2)
  {
    *(this + 32) = a2;
  }

  *(a2 + 1) = v2;
  *(this + 24) = a2;
  return this;
}

uint64_t SLEncyclopedia::PushBack(uint64_t this, SLDictionary *a2)
{
  v2 = *(this + 32);
  if (v2)
  {
    v3 = (v2 + 8);
  }

  else
  {
    v3 = (this + 24);
  }

  *v3 = a2;
  *(a2 + 1) = 0;
  *(this + 32) = a2;
  return this;
}

void SLEncyclopedia::~SLEncyclopedia(SLEncyclopedia *this)
{
  *this = &unk_287BD2FB8;
  for (i = *(this + 3); i; i = *(this + 3))
  {
    *(this + 3) = i[1];
    if (*(this + 4) == i)
    {
      *(this + 4) = 0;
    }

    (*(*i + 16))(i);
  }
}

{
  SLEncyclopedia::~SLEncyclopedia(this);

  JUMPOUT(0x26D6753C0);
}

uint64_t SLEncyclopedia::Remove(uint64_t this, SLDictionary *a2)
{
  v2 = (this + 24);
  v3 = *(this + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v5 = 0;
LABEL_8:
      v6 = *(v3 + 1);
      if (v5)
      {
        v2 = (v5 + 8);
      }

      *v2 = v6;
      if (*(this + 32) == a2)
      {
        *(this + 32) = v5;
      }
    }

    else
    {
      v4 = *(this + 24);
      while (1)
      {
        v3 = *(v4 + 8);
        if (!v3)
        {
          break;
        }

        v5 = v4;
        v4 = *(v4 + 8);
        if (v3 == a2)
        {
          goto LABEL_8;
        }
      }
    }
  }

  return this;
}

void SLDictionaryRecursion::SLDictionaryRecursion(SLDictionaryRecursion *this, SLDictionary *a2, uint64_t a3)
{
  *(this + 2) = 0x100000002;
  *this = &unk_287BD2FE0;
  *(this + 1) = 0;
  *(this + 3) = a2;
  *(this + 4) = a3;
}

{
  *(this + 2) = 0x100000002;
  *this = &unk_287BD2FE0;
  *(this + 1) = 0;
  *(this + 3) = a2;
  *(this + 4) = a3;
}

uint64_t SLDictionaryRecursion::Lookup(SLDictionaryRecursion *this, const char *a2, uint64_t a3, SLWordBuilder *a4, SLDictionary *a5)
{
  v5 = *(this + 4);
  if (!v5)
  {
    return 0;
  }

  *(this + 4) = v5 - 1;
  result = (***(this + 3))(*(this + 3), a2, a3, a4, a5);
  ++*(this + 4);
  return result;
}

uint64_t SLMappedFileDict::SetMappedFile(SLMappedFileDict *this, const __CFURL *a2, SLMMapHint *a3)
{
  result = SLMMapCache::Map(a2, 0, a3);
  *this = result;
  return result;
}

void SLMappedFileDict::~SLMappedFileDict(SLMMapCache **this, void *a2)
{
  SLMMapCache::Unmap(*this, a2);
}

{
  SLMMapCache::Unmap(*this, a2);
}

void SLCartMappedFileDict::~SLCartMappedFileDict(SLCartMappedFileDict *this)
{
  SLCartDict::~SLCartDict(this);
  SLMMapCache::Unmap(*(v1 + 496), v2);
}

{
  SLCartMappedFileDict::~SLCartMappedFileDict(this);

  JUMPOUT(0x26D6753C0);
}

void SLPrefixMappedFileDict::~SLPrefixMappedFileDict(SLMMapCache **this, void *a2)
{
  SLMMapCache::Unmap(this[7], a2);

  SLPrefixDict::~SLPrefixDict(this);
}

{
  SLPrefixMappedFileDict::~SLPrefixMappedFileDict(this, a2);

  JUMPOUT(0x26D6753C0);
}

void SLPrefixMappedFileDict::SLPrefixMappedFileDict(SLPrefixMappedFileDict *this, const __CFURL *a2)
{
  SLDictionary::SLDictionary(this);
  *v4 = &unk_287BD31B8;
  v7 = &unk_287BD3298;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = SLMMapCache::Map(a2, 0, v5);
  SLPrefixDict::SetFileInfo(this, v6, 0, 0);
  SLMMapHint::~SLMMapHint(&v7);
}

void sub_26B2D73E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  SLMMapHint::~SLMMapHint(&a9);
  SLMappedFileDict::~SLMappedFileDict(v9 + 7, v11);
  SLPrefixDict::~SLPrefixDict(v9);
  _Unwind_Resume(a1);
}

void SLPrefixDictMapHint::~SLPrefixDictMapHint(SLPrefixDictMapHint *this)
{
  SLMMapHint::~SLMMapHint(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorphTraits::~SLMorphTraits(locale_t *this)
{
  freelocale(this[1]);
}

{
  freelocale(this[1]);
}

uint64_t SLMorph::SLMorph(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  SLDictionary::SLDictionary(a1);
  *v16 = &unk_287BD32D8;
  v16[3] = a2;
  *(a1 + 32) = strlen(a2);
  *(a1 + 40) = a4;
  v17 = *(a3 + 8);
  *(a1 + 48) = *a3;
  *(a1 + 56) = v17;
  *(a1 + 60) = a5;
  *(a1 + 64) = a6;
  *(a1 + 68) = a7;
  *(a1 + 76) = a8;
  return a1;
}

uint64_t SLMorph::Lookup(SLMorph *this, const char *a2, uint64_t a3, SLWordBuilder *a4, SLDictionary *a5)
{
  if (!(*(*this + 24))(this))
  {
    return 0;
  }

  SLTokenBuilder::SLTokenBuilder(v12, a4, 0);
  v10 = (*(*this + 32))(this, a2, a3, a5, v12);
  if (v10)
  {
    (*(*this + 56))(this, v13);
    *(v13 + 24) = "Dictionary+Morph";
    SLTokenBuilder::Forward(v12);
  }

  SLTokenBuilder::~SLTokenBuilder(v12);
  return v10;
}

void sub_26B2D76A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SLTokenBuilder::~SLTokenBuilder(va);
  _Unwind_Resume(a1);
}

BOOL SLMorph::Match(SLMorph *this, const char *a2, unint64_t a3)
{
  v4 = *(this + 4);
  if (a3 > v4 && ((v5 = *(this + 3), a3 - v4 > 1) || *v5 == 39))
  {
    return strncasecmp_l(&a2[a3 - v4], v5, v4, *(*(this + 5) + 8)) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t SLMorph::MarkAllCaps(uint64_t result, uint64_t a2, int a3)
{
  if ((*(*(a2 + 40) + 16) & 8) != 0)
  {
    v4 = result;
    v5 = *(a2 + 39);
    if (v5 < 0)
    {
      v5 = *(a2 + 24);
    }

    v6 = a3 - v5;
    if (a3 != v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = (a2 + 16);
      v10 = MEMORY[0x277D85DE0];
LABEL_6:
      ++v7;
      do
      {
        v11 = a2 + 16;
        if (*(a2 + 39) < 0)
        {
          v11 = *v9;
        }

        result = *(v11 + v7 - 1);
        if ((result & 0x80000000) != 0)
        {
          result = __maskrune_l(result, 0x8000uLL, *(*(v4 + 40) + 8));
          if (result)
          {
LABEL_21:
            v8 = 1;
            if (v6 + v7)
            {
              goto LABEL_6;
            }

            goto LABEL_24;
          }
        }

        else if ((*(v10 + 4 * result + 60) & 0x8000) != 0)
        {
          goto LABEL_21;
        }

        v12 = a2 + 16;
        if (*(a2 + 39) < 0)
        {
          v12 = *v9;
        }

        result = *(v12 + v7 - 1);
        if ((result & 0x80000000) != 0)
        {
          result = __maskrune_l(result, 0x1000uLL, *(*(v4 + 40) + 8));
          if (result)
          {
            return result;
          }
        }

        else if ((*(v10 + 4 * result + 60) & 0x1000) != 0)
        {
          return result;
        }

        ++v7;
      }

      while (v6 + v7 != 1);
      if ((v8 & 1) == 0)
      {
        return result;
      }

LABEL_24:
      *(*(a2 + 40) + 16) = *(*(a2 + 40) + 16) & 0xFFFFFFE7 | 0x10;
    }
  }

  return result;
}

uint64_t SLMorph::RestoreSuffix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 48))(a1, *(a2 + 40));
  if (v6)
  {
    SLMorph::MarkAllCaps(a1, a2, 0);
    v7 = *(a3 + 23);
    if (v7 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    if (v7 >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = *(a3 + 8);
    }

    std::string::append((a2 + 16), v8, v9);
  }

  return v6;
}

uint64_t SLMorph::RestoreSuffix(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (*(*a1 + 48))(a1, *(a2 + 40));
  if (v8)
  {
    SLMorph::MarkAllCaps(a1, a2, a4);
    v9 = *(a2 + 39);
    if (v9 < 0)
    {
      v9 = *(a2 + 24);
    }

    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    std::string::replace((a2 + 16), v9 - a4, a4, v11, v12);
  }

  return v8;
}

uint64_t SLMorph::MorphLookup(SLMorph *this, const char *a2, uint64_t a3, SLDictionary *a4, SLTokenBuilder *a5)
{
  v9 = *(this + 4);
  v10 = a3 - v9;
  std::string::basic_string[abi:ne200100](&__dst, &a2[a3 - v9], v9);
  if ((**a4)(a4, a2, v10, a5, a4))
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = __dst;
    }

    v11 = SLMorph::RestoreSuffix(this, a5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = 0;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_26B2D7AC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

BOOL SLMorph::POSFromSuffix(SLMorph *this, SLToken *a2, char a3)
{
  v3 = *(a2 + 10);
  v4 = *(a2 + 11);
  if (v4 != v3)
  {
    v8 = 0;
    while (1)
    {
      v9 = *(v3 + 8 * v8);
      if ((*(this + 16) & *v9) == 0 || SLWordTagSet::find((v9 + 4), 68) && !SLWordTagSet::find((this + 68), 68) || (a3 & 1) == 0 && SLWordTagSet::find((v9 + 4), 64) && !SLWordTagSet::find((this + 68), 64) || SLWordTagSet::find((v9 + 4), 72))
      {
        v10 = *(a2 + 10);
        v11 = *(a2 + 11);
        v12 = v10 + 8 * v8;
        v13 = v11 - (v12 + 8);
        if (v11 != v12 + 8)
        {
          memmove((v10 + 8 * v8), (v12 + 8), v11 - (v12 + 8));
        }

        *(a2 + 11) = v12 + v13;
        SLHomograph::~SLHomograph(v9);
        MEMORY[0x26D6753C0]();
        goto LABEL_18;
      }

      v14 = *(this + 15);
      if (v14 != **(this + 5))
      {
        goto LABEL_16;
      }

      if ((*v9 & v14) == 0)
      {
        break;
      }

LABEL_17:
      ++v8;
LABEL_18:
      v3 = *(a2 + 10);
      v4 = *(a2 + 11);
      if (v8 >= (v4 - v3) >> 3)
      {
        return v3 != v4;
      }
    }

    v14 = 1;
LABEL_16:
    *v9 = v14;
    goto LABEL_17;
  }

  v3 = *(a2 + 11);
  return v3 != v4;
}

char *SLMorph::AddAffix(char *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  if (*(a2 + 11) != v2)
  {
    v4 = this;
    v5 = 0;
    v6 = this + 50;
    do
    {
      this = std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(*(v2 + 8 * v5) + 32, *(*(v2 + 8 * v5) + 40), v6, &v6[*(v4 + 48)], *(v4 + 48));
      ++v5;
      v2 = *(a2 + 10);
    }

    while (v5 < (*(a2 + 11) - v2) >> 3);
  }

  return this;
}

BOOL SLMorph::PrefixMatch(SLMorph *this, const char *a2, size_t a3)
{
  v4 = *(this + 4);
  v5 = a3 > v4;
  v6 = a3 - v4;
  return v5 && v6 >= 3 && strncasecmp_l(a2, *(this + 3), v4, *(*(this + 5) + 8)) == 0;
}

uint64_t SLMorph::PrefixMorphLookup(SLMorph *this, char *a2, uint64_t a3, uint64_t a4, SLDictionary *a5, SLTokenBuilder *a6)
{
  std::string::basic_string[abi:ne200100](&__dst, a2, *(this + 4));
  v12 = *(this + 4);
  v13 = &a2[v12];
  v14 = a3 - v12;
  if (a4)
  {
    if (*v13 == 45)
    {
      std::string::push_back(&__dst, 45);
      ++v13;
      --v14;
      a4 = 1;
    }

    else
    {
      a4 = 0;
    }
  }

  if ((**a5)(a5, v13, v14, a6, a5))
  {
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
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    std::string::insert((a6 + 16), 0, p_dst, size);
    v17 = (*(*this + 40))(this, *(a6 + 5), a4);
  }

  else
  {
    v17 = 0;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v17;
}

void sub_26B2D7F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *SLMorph::PrefixAddAffix(char *this, SLToken *a2)
{
  v2 = *(a2 + 10);
  if (*(a2 + 11) != v2)
  {
    v4 = this;
    v5 = 0;
    v6 = this + 50;
    do
    {
      this = std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(*(v2 + 8 * v5) + 32, (*(*(v2 + 8 * v5) + 32) + 1), v6, &v6[*(v4 + 48)], *(v4 + 48));
      ++v5;
      v2 = *(a2 + 10);
    }

    while (v5 < (*(a2 + 11) - v2) >> 3);
  }

  return this;
}

uint64_t SLMorph_Apostrophe::MorphLookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (***a4)(void, uint64_t, uint64_t, uint64_t, void), uint64_t a5)
{
  result = (**a4)(a4, a2, a3 - 1, a5, a4);
  if (result)
  {
    v8 = *(a5 + 40);
    v9 = *(*a1 + 48);

    return v9(a1, v8);
  }

  return result;
}

void SLMorphRules::Create(SLMorphRules *this, const __CFLocale *a2)
{
  Value = CFLocaleGetValue(this, *MEMORY[0x277CBEED0]);
  if (CFStringCompare(Value, @"en", 0) == kCFCompareEqualTo)
  {

    SLCreateMorphRulesEng();
  }

  SLMorphRules::Create();
}

void SLMorphRules::CreateFlat(SLMorphRules *this, const __CFLocale *a2, SLDictionary *a3)
{
  Value = CFLocaleGetValue(this, *MEMORY[0x277CBEED0]);
  if (CFStringCompare(Value, @"en", 0) == kCFCompareEqualTo)
  {

    SLCreateFlatMorphRulesEng(a2);
  }

  SLMorphRules::CreateFlat();
}

void SLMorphRules::~SLMorphRules(SLMorphRules *this)
{
  SLEncyclopedia::~SLEncyclopedia(this);

  JUMPOUT(0x26D6753C0);
}

uint64_t SLFlatMorphRules::Lookup(SLFlatMorphRules *this, const char *a2, uint64_t a3, SLWordBuilder *a4, SLDictionary *a5)
{
  v5 = *(this + 3);
  if (!v5)
  {
    return 0;
  }

  do
  {
    result = (**v5)(v5, a2, a3, a4, *(this + 5));
    if (result)
    {
      break;
    }

    v5 = *(v5 + 8);
  }

  while (v5);
  return result;
}

void SLFlatMorphRules::~SLFlatMorphRules(SLFlatMorphRules *this)
{
  SLEncyclopedia::~SLEncyclopedia(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorph::~SLMorph(SLMorph *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLMorph_Apostrophe::~SLMorph_Apostrophe(SLMorph_Apostrophe *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(uint64_t a1, char *__dst, _BYTE *__src, char *a4, int64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 >= a5)
  {
    v16 = v10 - __dst;
    if (v10 - __dst >= a5)
    {
      v21 = &__dst[a5];
      v22 = &v10[-a5];
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = __src;
      v27 = a5;
    }

    else
    {
      v17 = &__src[v16];
      if (&__src[v16] == a4)
      {
        v18 = *(a1 + 8);
        v19 = v18;
      }

      else
      {
        v18 = &a4[__dst] - __src;
        v19 = *(a1 + 8);
        do
        {
          v20 = *v17++;
          *v19++ = v20;
        }

        while (v17 != a4);
      }

      *(a1 + 8) = v18;
      if (v16 < 1)
      {
        return v5;
      }

      v32 = &__dst[a5];
      v33 = (v18 - a5);
      v34 = v18;
      if (v18 - a5 < v10)
      {
        do
        {
          v35 = *v33++;
          *v34++ = v35;
        }

        while (v33 != v10);
      }

      *(a1 + 8) = v34;
      if (v19 != v32)
      {
        memmove(&__dst[a5], __dst, v18 - v32);
      }

      v25 = v5;
      v26 = __src;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = &v10[a5 - *a1];
  if (v12 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    operator new();
  }

  v28 = (__dst - v11);
  memcpy(v13, __src, a5);
  v29 = &v13[a5];
  v30 = v10 - v5;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v31 = &v13[v11 - v5];
  memcpy(v31, v11, v28);
  *a1 = v31;
  *(a1 + 8) = &v29[v30];
  *(a1 + 16) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v13;
}

uint64_t SLUncompressedDict::CompareEntry(SLUncompressedDict *this, const char *a2, size_t a3, unsigned __int8 *a4)
{
  v4 = a4 + 1;
  v5 = *a4;
  if (v5 >= a3)
  {
    LODWORD(result) = memcmp(v4, a2, a3);
    if (result)
    {
      return result;
    }

    else
    {
      return v5 > a3;
    }
  }

  else
  {
    LODWORD(result) = memcmp(v4, a2, *a4);
    if (result)
    {
      return result;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t SLUncompressedDict::FindEntry(SLUncompressedDict *this, const char *a2, uint64_t a3)
{
  v6 = *(this + 3);
  v7 = v6[288];
  if (*(this + 4) == *(this + 5))
  {
    v8 = v6 + v7;
    v9 = *a2;
    if ((v9 - 65) > 0x19)
    {
      if (v9 >= 65)
      {
        v11 = v6[29];
        v12 = v6[3];
      }

      else
      {
        v11 = 0;
        v12 = v6[4];
      }
    }

    else
    {
      v10 = v6 + 4;
      v11 = v10[(v9 - 65)];
      v12 = v10[(v9 - 64)];
    }
  }

  else
  {
    v8 = v6 + bswap32(v7);
    v13 = *a2;
    if ((v13 - 65) >= 0x1A)
    {
      if (v13 >= 65)
      {
        v11 = bswap32(v6[29]);
        v12 = bswap32(v6[3]);
      }

      else
      {
        v11 = 0;
        v12 = bswap32(v6[4]);
      }
    }

    else
    {
      v14 = v6 + 4;
      v11 = bswap32(v14[(v13 - 65)]);
      v12 = bswap32(v14[(v13 - 64)]);
    }
  }

  if (v11 < v12)
  {
    do
    {
      v15 = (v12 + v11) >> 1;
      LODWORD(v16) = *&v8[4 * v15];
      v17 = bswap32(v16);
      if (*(this + 4) == *(this + 5))
      {
        v16 = v16;
      }

      else
      {
        v16 = v17;
      }

      v18 = *(this + 3) + v16;
      v19 = (*(*this + 24))(this, a2, a3, v18);
      if (v19 <= 0)
      {
        if ((v19 & 0x80000000) == 0)
        {
          return v18;
        }

        v11 = v15 + 1;
        v15 = v12;
      }

      v12 = v15;
    }

    while (v11 < v15);
  }

  return 0;
}

uint64_t SLUncompressedDict::ExtractPOS(uint64_t this, int a2, SLWordBuilder *a3)
{
  v4 = this;
  v5 = 8 * a2 + 124;
  v6 = 4;
  do
  {
    v7 = *(*(v4 + 24) + v5);
    if (*(v4 + 16) != *(v4 + 20))
    {
      LOBYTE(v7) = HIBYTE(*(*(v4 + 24) + v5));
    }

    if ((v7 > 0x20u || ((1 << v7) & 0x118000000) == 0) && v7 != 255)
    {
      this = SLWordBuilder::AddPartOfSpeech(a3, v7 & 0x1F);
    }

    v5 += 2;
    --v6;
  }

  while (v6);
  return this;
}

char *SLUncompressedDict::ExtractHomograph(SLUncompressedDict *this, char *a2, SLWordBuilder *a3)
{
  (*(*a3 + 56))(a3);
  (*(*a3 + 72))(a3, 2);
  while (1)
  {
    v7 = *a2++;
    v6 = v7;
    if (v7 < 0)
    {
      break;
    }

    if (v6 >= 0x40u)
    {
      (*(*a3 + 72))(a3, 1);
      v6 &= 0x3Fu;
    }

    (*(*a3 + 72))(a3, v6);
  }

  (*(*this + 56))(this, v6 & 0x7F, a3);
  (*(*a3 + 96))(a3);
  return a2;
}

BOOL SLUncompressedDict::Lookup(SLUncompressedDict *this, const char *a2, uint64_t a3, SLWordBuilder *a4, SLDictionary *a5)
{
  v9 = (*(*this + 40))(this, a2, a3, a4, a5);
  if (v9)
  {
    v10 = v9 + (*(*this + 32))(this, v9);
    (**a4)(a4, "Dictionary");
    (*(*a4 + 8))(a4);
    (*(*a4 + 16))(a4, a2, a3);
    v11 = (*(*this + 48))(this, v10, a4);
    if (*v11 == 255)
    {
      (*(*this + 48))(this, v11 + 1, a4);
    }

    (*(*a4 + 48))(a4);
  }

  return v9 != 0;
}

void SLUncompressedDict::~SLUncompressedDict(SLUncompressedDict *this)
{
  SLDictionary::~SLDictionary(this);

  JUMPOUT(0x26D6753C0);
}

void SLPronouncer::Create(SLPronouncer *this, const __CFLocale *a2, const SLDictLookup *a3)
{
  Value = CFLocaleGetValue(this, *MEMORY[0x277CBEED0]);
  if (CFStringCompare(Value, @"en", 0) == kCFCompareEqualTo)
  {

    SLCreatePronouncerEng(a2);
  }

  SLPronouncer::Create();
}

void SLPronouncerImpl::MakePluralUnit(SLPronouncerImpl *this, SLToken *a2, SLToken *a3)
{
  if (a3)
  {
    SLToken::~SLToken(a3);

    JUMPOUT(0x26D6753C0);
  }
}

uint64_t SLPronouncerImpl::AppendUnit(uint64_t a1, char **a2, _BYTE *a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    SLTokenList::SLTokenList(__p);
    (*(*a1 + 232))(a1, a2, __p, 0, 0);
    v11 = __p[0];
    v12 = v26;
    v13 = *(__p[0] + 1);
    v14 = *(__p[0] + 2);
    v15 = *__p[0];
    *(v15 + 8) = v13;
    *v13 = v15;
    v26 = v12 - 1;
    operator delete(v11);
    for (i = v26; v26; i = v26)
    {
      v17 = __p[0];
      v18 = *(__p[0] + 1);
      v19 = *(__p[0] + 2);
      v20 = *__p[0];
      *(v20 + 8) = v18;
      *v18 = v20;
      v26 = i - 1;
      operator delete(v17);
      if (v19)
      {
        SLToken::~SLToken(v19);
        MEMORY[0x26D6753C0]();
      }
    }

    v21 = strpbrk(*a2, "|;");
    if (v21 && *v21 == 124)
    {
      v22 = 0;
      v23 = *a2;
      v27[1] = a2[1];
      v27[0] = v21 + 1;
      a2 = v27;
    }

    else
    {
      v22 = 1;
    }

    std::__list_imp<SLToken *>::clear(__p);
  }

  else
  {
    v22 = 0;
    v14 = 0;
  }

  a3[24] = 2;
  result = (*(*a1 + 232))(a1, a2, a3, a5, a6);
  if (v22)
  {
    result = (*(*a1 + 184))(a1, *(*a3 + 16));
  }

  if (v14)
  {
    return (*(*a1 + 264))(a1, *(*a3 + 16), v14);
  }

  return result;
}

uint64_t SLPronouncerImpl::AppendUnitModifier(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = result;
  switch(a3)
  {
    case '3':
      v15 = *(*result + 216);
LABEL_8:
      result = v15();
      v13 = result;
      v14 = a6;
      if (!result)
      {
        break;
      }

      goto LABEL_9;
    case '2':
      v15 = *(*result + 216);
      goto LABEL_8;
    case '/':
      result = (*(*result + 216))(result, 228);
      v13 = result;
      v14 = a6 - 1;
      if (result)
      {
LABEL_9:
        result = (*(*v12 + 232))(v12, v13, a5, v14, 1);
      }

      break;
  }

  if (a2)
  {
    *(a5 + 24) = 2;
    v16 = *(*v12 + 240);

    return v16(v12, a2, a5, a4, a6, a7);
  }

  return result;
}

uint64_t SLPronouncerImpl::SymbolLookup(uint64_t a1, uint64_t a2, unint64_t a3, char *__s1)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  while (1)
  {
    v8 = a2 + 16 * (v5 >> 1);
    v9 = strcmp(__s1, *v8);
    if (!v9)
    {
      break;
    }

    if (v9 <= 0)
    {
      v5 >>= 1;
    }

    else
    {
      v5 = (16 * v5 - (16 * (v5 >> 1) + 16)) >> 4;
    }

    if (v9 > 0)
    {
      a2 = v8 + 16;
    }

    if (!v5)
    {
      return 0;
    }
  }

  v11 = *(v8 + 8);
  v12 = *(*a1 + 216);

  return v12(a1, v11);
}

void SLPronouncerImpl::AppendSymbol(uint64_t a1, char **a2)
{
  if (a2)
  {
      ;
    }

    v3 = strpbrk(i, " ;|");
    if (v3)
    {
      v4 = v3 - i;
      v5 = *v3 != 32;
    }

    else
    {
      v4 = strlen(i);
    }

    if (v4 == 1 && (*i & 0xFE) == 0x28)
    {
      operator new();
    }

    operator new();
  }
}

void std::vector<unsigned short>::push_back[abi:ne200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t SLPronouncerImpl::AppendAccentedCharacterSpelling(SLPronouncerImpl *this, unsigned int a2, SLTokenList *a3, uint64_t a4, uint64_t a5)
{
  v7 = a2 & 0x3F | (SLChar::sUniMap[a2 >> 6] << 6);
  v8 = SLChar::sCharClass[v7];
  SLPronouncerImpl::AppendCharacterSpelling(this, SLChar::sFoldAll[v7] + a2, a3, a4, a5, (v8 & 0x9F) == 129);
  v9 = (v8 >> 8) & 7;
  if (v9 > 3)
  {
    if (((v8 >> 8) & 7) > 5)
    {
      if (v9 == 6)
      {
        v11 = (*(*this + 216))(this, 124);
      }

      else
      {
        v11 = (*(*this + 216))(this, 125);
      }
    }

    else if (v9 == 4)
    {
      v11 = (*(*this + 216))(this, 122);
    }

    else
    {
      v11 = (*(*this + 216))(this, 123);
    }
  }

  else if (((v8 >> 8) & 7) > 1)
  {
    if (v9 == 2)
    {
      v11 = (*(*this + 216))(this, 120);
    }

    else
    {
      v11 = (*(*this + 216))(this, 121);
    }
  }

  else
  {
    if (!v9)
    {
      v10 = 0;
      goto LABEL_17;
    }

    v11 = (*(*this + 216))(this, 119);
  }

  v10 = v11;
LABEL_17:
  v12 = *(*this + 232);

  return v12(this, v10, a3, 0, 0);
}

void SLPronouncerImpl::AppendCharacterSpelling(SLPronouncerImpl *this, unsigned int a2, SLTokenList *a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2 >> 6;
  if (!a6)
  {
    v11 = SLChar::sCharClass[a2 & 0x3F | (SLChar::sUniMap[v10] << 6)] & 0x9F;
  }

  memset(&__p, 0, sizeof(__p));
  SLChar::PushUTF8(&__p, (SLChar::sToUpper[a2 & 0x3F | (SLChar::sUniMap[v10] << 6)] + a2));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v13 = (*(*this + 208))(this, p_p);
  if (!v13)
  {
    operator new();
  }

  (*(*this + 232))(this, v13, a3, a4, a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26B2D98C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SLPronouncerImpl::PronounceCharByChar(SLPronouncerImpl *this, SLToken *a2, SLTokenList *a3, char a4)
{
  if ((a4 & 0x20) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = -2;
  if ((*(a2 + 18) & 8) == 0)
  {
    v8 = 0;
  }

  v9 = *(a2 + 7);
  v10 = *(a2 + 8) + v8 - 2;
  if (v9 != v10)
  {
    v12 = 0;
    v13 = 0;
    v14 = *(a2 + 4);
    v15 = 2;
    if ((a4 & 0x20) != 0)
    {
      v15 = 4;
    }

    v21 = v15;
    do
    {
      v16 = *(v9 + 2 * v13);
      if ((a4 & 0x40) != 0 || v16 >= 0x20)
      {
        if (v7 == v13 && (v21 < ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1 || (*(a2 + 18) & 0x20) != 0) && *(a2 + 2) != 4)
        {
          *(a3 + 25) = 4;
        }

        if (a4 < 0 && v16 == 38)
        {
          v17 = (*(*this + 216))(this, 118);
          (*(*this + 232))(this, v17, a3, v14 + v13, 1);
        }

        else if ((a4 & 0x20) == 0 || (v13 & 1) == 0)
        {
          SLPronouncerImpl::AppendCharacterSpelling(this, v16, a3, v14 + v13, v7, 0);
        }
      }

      ++v13;
      v12 += 2;
    }

    while (v9 + v12 != v10);
  }

  if (*(a3 + 2))
  {
    v18 = *(a3 + 1);
    *(*(v18 + 16) + 1) = *(a2 + 1);
    *(*(*a3 + 16) + 16) |= *(a2 + 4) & 1;
    for (i = *(v18 + 8); i != a3; i = *(i + 1))
    {
      *(*(i + 2) + 1) = 1;
    }

    if ((*(a2 + 18) & 8) != 0)
    {
      v20 = *(*this + 184);

      v20(this);
    }
  }
}

uint64_t SLPronouncerImpl::PronouncePhoneNumber(SLPronouncerImpl *this, SLToken *a2, SLTokenList *a3)
{
  *(a3 + 24) = (*(*this + 168))(this, 1);
  v6 = *(a2 + 7);
  v7 = *(a2 + 8) - 2;
  if (v6 != v7)
  {
    v8 = 0;
    v9 = *(a2 + 4);
    do
    {
      v10 = *v6;
      v11 = SLChar::sCharClass[v10 & 0x3F | (SLChar::sUniMap[v10 >> 6] << 6)] & 0x1F;
      if (v11 == 1)
      {
        SLPronouncerImpl::AppendCharacterSpelling(this, v10, a3, v9, 1, 0);
        *(a3 + 24) = 1;
      }

      else if (v11 == 2)
      {
        if ((v6 + 2) < v7 && v10 == 56 && v8 <= 1 && v6[1] == 48 && v6[2] == 48)
        {
          v12 = (*(*this + 216))(this, 134);
          (*(*this + 232))(this, v12, a3, v9, 1);
          *(a3 + 24) = 1;
          v13 = (*(*this + 216))(this, 155);
          (*(*this + 232))(this, v13, a3, v9 + 1, 2);
          *(a3 + 24) = (*(*this + 168))(this, 0);
          v9 += 2;
          v8 += 2;
          v6 += 2;
        }

        else
        {
          v16 = (*(*this + 216))(this, v10 + 78);
          (*(*this + 232))(this, v16, a3, v9, 1);
          *(a3 + 24) = 1;
        }

        ++v8;
      }

      else
      {
        v14 = *this;
        if (v10 == 43)
        {
          v15 = (*(v14 + 216))(this, 218);
          (*(*this + 232))(this, v15, a3, v9, 1);
        }

        else
        {
          *(a3 + 24) = (*(v14 + 168))(this, 0);
        }
      }

      ++v6;
      ++v9;
    }

    while (v6 != v7);
  }

  result = (*(*this + 168))(this, 1);
  *(a3 + 24) = result;
  return result;
}

uint64_t SLPronouncerImpl::PronounceWordByWord(uint64_t this, SLToken *a2, SLTokenList *a3)
{
  v28 = this;
  v3 = (*(a2 + 8) - *(a2 + 7)) >> 1;
  v4 = v3 - 1;
  if (v3 != 1)
  {
    v6 = 0;
    v7 = v3 - 3;
    v27 = v3 - 4;
    v8 = v3 - 2;
    v30 = v3 - 1;
    v31 = v3 - 3;
    v29 = v3 - 2;
    do
    {
      if (v4 - v6 < 2)
      {
        v10 = 0;
      }

      else
      {
        v9 = (*(a2 + 7) + 2 * v6);
        v10 = (SLChar::sCharClass[*v9 & 0x3F | (SLChar::sUniMap[*v9 >> 6] << 6)] & 0x9F) == 0x81 || (SLChar::sCharClass[v9[1] & 0x3F | (SLChar::sUniMap[v9[1] >> 6] << 6)] & 0x9F) == 129;
      }

      if (v6 + 1 >= v4)
      {
        v25 = 0;
        v13 = v6 + 1;
        goto LABEL_19;
      }

      v11 = 0;
      v12 = *(a2 + 7);
      v13 = v6;
      while (1)
      {
        v14 = v12 + 2 * v13;
        v15 = *(v14 + 2);
        v16 = SLChar::sCharClass[v15 & 0x3F | (SLChar::sUniMap[v15 >> 6] << 6)];
        if (v16 == 4)
        {
          if (v27 == v13)
          {
            if (*(v12 + 2 * v7 + 2) == 115)
            {
              v23 = (*(*v28 + 176))(v28);
              v25 = v23 ^ 1u;
              if (v23)
              {
                v13 = v4;
              }

              else
              {
                v13 = v31;
              }
            }

            else
            {
              v25 = 1;
              v13 = v7;
            }
          }

          else
          {
            ++v13;
            v25 = 1;
          }

          goto LABEL_19;
        }

        v17 = v16 & 0x9F;
        if (v10)
        {
          if (v17 != 129)
          {
            v25 = 0;
            ++v13;
            goto LABEL_19;
          }

          v11 |= (v16 & 0x20) >> 5;
          goto LABEL_16;
        }

        if (v17 == 129)
        {
          break;
        }

LABEL_16:
        if (v8 == ++v13)
        {
          v25 = 0;
          v13 = v4;
          goto LABEL_19;
        }
      }

      if (v15 != 115)
      {
        v25 = 0;
        goto LABEL_19;
      }

      if (v7 == v13)
      {
        v25 = 0;
      }

      else
      {
        v26 = SLChar::sCharClass[*(v14 + 4) & 0x3F | (SLChar::sUniMap[*(v14 + 4) >> 6] << 6)];
        if (v26 == 4)
        {
          v25 = 1;
        }

        else
        {
          v25 = 0;
          if ((v26 & 0x9F) != 1)
          {
            goto LABEL_19;
          }
        }
      }

      v13 += 2;
LABEL_19:
      if (v6 || v13 != 2)
      {
        if (v6 && v13 < v4 && v13 - v6 == 1)
        {
          v21 = *(a2 + 7);
          v22 = *(v21 + 2 * (v6 - 1));
          if (SLChar::sCharClass[v22 & 0x3F | (SLChar::sUniMap[v22 >> 6] << 6)] == 4 && SLChar::sCharClass[*(v21 + 2 * v13) & 0x3F | (SLChar::sUniMap[*(v21 + 2 * v13) >> 6] << 6)] == 4)
          {
            *(&v33.__r_.__value_.__s + 23) = 1;
            LOWORD(v33.__r_.__value_.__l.__data_) = 39;
            SLChar::PushUTF8(&v33, (SLChar::sToUpper[*(v21 + 2 * v6) & 0x3F | (SLChar::sUniMap[*(v21 + 2 * v6) >> 6] << 6)] + *(v21 + 2 * v6)));
            std::string::push_back(&v33, 39);
            operator new();
          }

          v4 = v30;
        }

LABEL_37:
        if (v13 == v4)
        {
          v24 = *(a2 + 4) & 1;
        }

        if (!v10 && v13 + v25 >= v4)
        {
          *(a2 + 18);
        }

        operator new();
      }

      v18 = *(a2 + 7);
      if (*v18 != 77 || v18[v6 + 1] != 99)
      {
        v13 = 2;
        goto LABEL_37;
      }

      v19 = (*(*v28 + 216))(v28, 231);
      this = (*(*v28 + 232))(v28, v19, a3, *(a2 + 4), 2);
      v7 = v31;
      v20 = *(*a3 + 16);
      *(v20 + 16) &= ~8u;
      *(v20 + 5) = 1;
      v6 = v25 + 2;
      v8 = v29;
    }

    while (v25 + 2 < v4);
  }

  return this;
}

void sub_26B2DA60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  MEMORY[0x26D6753C0](v23, 0x10F0C4034644DEDLL);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_26B2DAE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::__list_imp<SLToken *>::clear(&a15);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 81) < 0)
  {
    operator delete(*(v26 - 104));
  }

  _Unwind_Resume(a1);
}

uint64_t SLPronouncerImpl::IsURLDomain(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t *a5)
{
  *a5 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  if (a4 != 46)
  {
LABEL_13:
    if (a3 != 46 || ((a4 - 33) > 0x1F || ((1 << (a4 - 33)) & 0x82004011) == 0) && a4)
    {
      goto LABEL_30;
    }

    std::operator+<char>();
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    v21 = v19;
    *__p = *v18;
    v13 = v19 >= 0 ? __p : __p[0];
    v14 = (*(*a1 + 208))(a1, v13);
    *a5 = v14;
    if (!v14)
    {
      v15 = *(a2 + 23);
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(a2 + 8);
      }

      if (v15 >= 3)
      {
        goto LABEL_30;
      }
    }

LABEL_28:
    v16 = 1;
    goto LABEL_31;
  }

  if ((a3 - 33) <= 0x1F && ((1 << (a3 - 33)) & 0x82004011) != 0 || !a3)
  {
    std::operator+<char>();
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    v21 = v19;
    *__p = *v18;
    HIBYTE(v19) = 0;
    LOBYTE(v18[0]) = 0;
    if (v21 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = (*(*a1 + 208))(a1, v10);
    *a5 = v11;
    if (v11)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(a2 + 8);
    }

    if (v12 < 3)
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

LABEL_30:
  v16 = 0;
LABEL_31:
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  return v16;
}

void sub_26B2DB140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t std::list<SLToken *>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

void SLPronouncerImpl::PronounceURLSymbol(SLPronouncerImpl *this, unsigned int a2, SLTokenList *a3, uint64_t a4)
{
  v6 = a2;
  if (a2 >= 0x80)
  {
    if (SLChar::sCharClass[a2 & 0x3F | (SLChar::sUniMap[a2 >> 6] << 6)] != 6)
    {
      goto LABEL_6;
    }

    v6 = 45;
  }

  v9[0] = 47;
  v9[2] = 0;
  v9[1] = v6;
  v8 = (*(*this + 208))(this, v9);
  if (v8)
  {
    (*(*this + 232))(this, v8, a3, a4, 1);
    return;
  }

LABEL_6:
  SLPronouncerImpl::AppendCharacterSpelling(this, v6, a3, a4, 1, 0);
}

uint64_t SLPronouncerImpl::PronounceNumber(uint64_t a1, uint64_t a2, _WORD *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a4;
  v10 = 10 * *a4 + 20;
  v11 = a4[2];
  if (v11 > v10 || (v12 = a4[6], v12 > 5) || (v15 = a4[4], v16 = v15 | v12, !v9) && !v16 && a4[7] >= 0xF4241uLL)
  {
    operator new();
  }

  if (v9)
  {
    v17 = a5 | 0x20;
  }

  else
  {
    v17 = a5;
  }

  if (v16)
  {
    v18 = v17 | 0x100;
    a3[12] = *(a2 + 1);
    v19 = a3 + 12;
    if (v15)
    {
      (*(*a1 + 56))(a1, a2, a4[1]);
      v20 = a4[7];
      if (v20 > 0x14 || a4[4] >= 5)
      {
        *v19 = (*(*a1 + 168))(a1, v20 > 0x4E20);
      }

      v24 = (*(*a1 + 216))(a1, 209);
      (*(*a1 + 232))(a1, v24, a3, *(a2 + 32) + a4[3] - 1, 1);
      result = (*(*a1 + 64))(a1, a2, a4[3], a4[4], a3, v18, a6);
      goto LABEL_25;
    }
  }

  else
  {
    if (v17 & 3 | a6)
    {
      v18 = v17 | 0x100;
    }

    else
    {
      v18 = v17;
    }

    a3[12] = *(a2 + 1);
    v19 = a3 + 12;
  }

  if ((v18 & 0x200) != 0)
  {
    v21 = (*(*a1 + 216))(a1, 219);
    (*(*a1 + 232))(a1, v21, a3, 0, 0);
    v11 = a4[2];
  }

  result = (*(*a1 + 56))(a1, a2, a4[1], v11, a3, v18, a6);
  if ((v18 & 0x200) != 0)
  {
    v23 = (*(*a1 + 216))(a1, 227);
    result = (*(*a1 + 232))(a1, v23, a3, 0, 0);
  }

LABEL_25:
  if (a4[6])
  {
    *(a3 + 24) = (*(*a1 + 168))(a1, a4[7] > 0x4E20uLL);
    v25 = (*(*a1 + 216))(a1, 213);
    (*(*a1 + 232))(a1, v25, a3, *(a2 + 32) + a4[5] - 1, 1);
    v26 = a4[5];
    if (*(*(a2 + 56) + 2 * v26) == 43)
    {
      v27 = v26 + 1;
    }

    else
    {
      v27 = a4[5];
    }

    v28 = a4[6] - (*(*(a2 + 56) + 2 * v26) == 43);
    v18 = v18 & 2 | (*(*a1 + 272))(a1);
    result = (*(*a1 + 56))(a1, a2, v27, v28, a3, v18 | 0x100, 0);
  }

  if ((v18 & 2) != 0)
  {
    result = (*(*a1 + 184))(a1, *(*a3 + 16));
  }

  if (a4[7] > 0x3E7uLL || a4[4] > 1 || a4[6])
  {
    result = (*(*a1 + 168))(a1, 0);
    *v19 = result;
  }

  return result;
}

void SLPronouncerImpl::PronounceFraction(SLPronouncerImpl *this, SLToken *a2, SLTokenList *a3)
{
  if ((*(a2 + 17) & 4) != 0)
  {
    v6 = (*(*this + 216))(this, 210);
    (*(*this + 232))(this, v6, a3, 0, 0);
  }

  memset(&__p, 0, sizeof(__p));
  SLChar::PushUTF8(&__p, **(a2 + 7));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = (*(*this + 208))(this, p_p);
  v9 = v8;
  if ((*(a2 + 17) & 4) != 0)
  {
    v10 = strchr(*v8, 59);
    if (v10)
    {
      v11 = *v9;
      v12[1] = v9[1];
      v12[0] = v10 + 1;
      v9 = v12;
    }
  }

  (*(*this + 232))(this, v9, a3, *(a2 + 4), 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26B2DBA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *SLPronouncerImpl::PronounceRoman(SLPronouncerImpl *this, SLToken *a2, CFRange a3, unint64_t a4, SLTokenList *a5, uint64_t a6, uint64_t a7)
{
  length = a3.length;
  if ((*(a2 + 18) & 0x40) != 0)
  {
    v14 = (*(*this + 216))(this, 219, a3.location);
    (*(*this + 232))(this, v14, a5, 0, 0);
  }

  *(a2 + 8) = *(a2 + 7);
  if (a4 >= 0x3E8)
  {
    LOWORD(v25) = (a4 / 0x3E8 + 48);
    std::vector<unsigned short>::push_back[abi:ne200100](a2 + 7, &v25);
    a4 %= 0x3E8uLL;
LABEL_6:
    LOWORD(v25) = (a4 / 0x64u) | 0x30;
    std::vector<unsigned short>::push_back[abi:ne200100](a2 + 7, &v25);
    LOWORD(a4) = a4 % 0x64u;
LABEL_7:
    LOWORD(v25) = a4 / 0xAu + 48;
    std::vector<unsigned short>::push_back[abi:ne200100](a2 + 7, &v25);
    LOBYTE(a4) = a4 % 0xAu;
    goto LABEL_8;
  }

  if (a4 >= 0x64)
  {
    goto LABEL_6;
  }

  if (a4 >= 0xA)
  {
    goto LABEL_7;
  }

LABEL_8:
  LOWORD(v25) = (a4 + 48);
  std::vector<unsigned short>::push_back[abi:ne200100](a2 + 7, &v25);
  LOWORD(v25) = 0;
  std::vector<unsigned short>::push_back[abi:ne200100](a2 + 7, &v25);
  v15 = ((*(a2 + 8) - *(a2 + 7)) >> 1) - 1;
  SLTokenList::SLTokenList(&v25);
  (*(*this + 56))(this, a2, 0, v15, &v25, a6, a7);
  v16 = length + a7;
  v17 = v27;
  if (v27)
  {
    v18 = __p;
    v19 = *(__p + 1);
    v20 = *(__p + 2);
    v21 = *__p;
    *(v21 + 8) = v19;
    *v19 = v21;
    v27 = v17 - 1;
    operator delete(v18);
    *(v20 + 16) |= 0x10u;
    if (v27)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v22 = *(a2 + 4);
      v23 = v16;
    }

    *(v20 + 32) = v22;
    *(v20 + 40) = v23;
    SLTokenList::push_back(a5, v20);
  }

  return std::__list_imp<SLToken *>::clear(&v25);
}

uint64_t SLPronouncerImpl::PronounceInteger(uint64_t this, SLToken *a2, CFRange a3, SLTokenList *a4, unint64_t a5, uint64_t a6)
{
  v6 = a4;
  length = a3.length;
  location = a3.location;
  v10 = this;
  v11 = a3.length - 1;
  if (a3.length < 1)
  {
    v19 = a3.location;
    goto LABEL_13;
  }

  v12 = 0;
  v13 = 0;
  v14 = 2 * a3.location;
  v15 = 1;
  while (1)
  {
    v16 = *(a2 + 7);
    v17 = *(v16 + v14 + 2 * v12);
    switch(v17)
    {
      case '#':
        v18 = 217;
        break;
      case '-':
        v18 = 214;
        break;
      case '+':
        v18 = 216;
        break;
      default:
        goto LABEL_26;
    }

    this = (*(*v10 + 216))(v10, v18);
    if (!this)
    {
      break;
    }

    this = (*(*v10 + 232))(v10, this, v6, location + v12 + *(a2 + 4), 1);
    v13 -= 2;
    ++v12;
    --v15;
    if (length + v15 <= 1)
    {
      length = 0;
      v19 = location + v12;
LABEL_13:
      v20 = *(a2 + 7);
      goto LABEL_14;
    }
  }

  v16 = *(a2 + 7);
  v17 = *(v16 + v14 + 2 * v12);
LABEL_26:
  v34 = length - v12;
  v35 = location + v12;
  if ((a5 & 0x100) == 0 && v17 == 48)
  {
    v36 = (a5 & 0x10) == 0 && length - 2 == v12;
    v37 = (a5 >> 3) & 1;
    if (v36)
    {
      LODWORD(v37) = 1;
    }

    if (v11 != v12 && v37 && *(v16 + v14 + 2 * v12 + 2) != 48)
    {
      v35 = location + v12 + 1;
      v38 = (*(*v10 + 216))(v10, 136);
      (*(*v10 + 232))(v10, v38, a4, location + v12 + *(a2 + 4), 1);
      v34 = ~v12 + length;
    }

    do
    {
      v39 = *(a2 + 4);
      v40 = (*(*v10 + 216))(v10, *(*(a2 + 7) + 2 * v35) + 78);
      this = (*(*v10 + 232))(v10, v40, a4, v35 + v39, 1);
      ++v35;
      --v34;
    }

    while (v34);
    return this;
  }

  v41 = v14 - v13;
  v42 = -v12;
  v20 = *(a2 + 7);
  v19 = v35 + v34;
  v6 = a4;
  do
  {
    if (*(v20 + v41) != 48)
    {
      v21 = (v20 + v41);
      v71 = *(a2 + 4);
      v72 = location + v71 - v42;
      length += v42;
      if ((a5 & 0x80) == 0 || length != 3)
      {
        v22 = location + v71 - v42;
        goto LABEL_15;
      }

      if (*(v20 + v41 + 2) == 48 && !*(v20 + v41 + 4))
      {
        LOBYTE(v33) = 0;
        v22 = v72;
        goto LABEL_115;
      }

      v73 = *v21;
      v74 = location + v71 - v42;
      v75 = v74 + 1;
      v23 = a5 & 1;
      v76 = *v10 + 216;
      v24 = a6 + 1;
      v77 = 119;
      if ((a5 & 1) == 0)
      {
        v77 = 78;
      }

      v78 = (*(*v10 + 216))(v10, v73 + v77);
      (*(*v10 + 232))(v10, v78, a4, v72, v24);
      v70 = *(v20 + v41 + 2);
      if (v70 == 48)
      {
        v79 = (*(*v10 + 216))(v10, 136);
        (*(*v10 + 232))(v10, v79, a4, v74 + 1, 1);
        v80 = v20 + v41;
        v22 = v74 + 2;
        v21 = (v80 + 4);
LABEL_19:
        v25 = *v10 + 216;
        v26 = 119;
        if (!v23)
        {
          v26 = 78;
        }

        v27 = (*(*v10 + 216))(v10, *v21 + v26);
        v28 = *(*v10 + 232);
        v29 = v10;
        v30 = v6;
        v31 = v22;
        v32 = v24;
        goto LABEL_100;
      }

      v21 = (v20 + v41 + 2);
      v22 = v75;
      goto LABEL_132;
    }

    --v42;
    v41 += 2;
  }

  while (length + v42 + 1 > 1);
  length = 0;
LABEL_14:
  v21 = (v20 + 2 * v19);
  v22 = *(a2 + 4) + v19;
LABEL_15:
  if (length > 1)
  {
    if (length != 2)
    {
      if (length != 3)
      {
        goto LABEL_44;
      }

      LOBYTE(v33) = 0;
LABEL_115:
      v81 = *(v21 + 1);
      if (v81 == 48 && *(v21 + 2) == 48)
      {
        v82 = *v21;

        return SLPronouncerImpl::PronounceThreeDigits(v10, v82, 48, 48, v22, v6, a5, a6);
      }

      v83 = *v21;
      if (v83 == 48)
      {
        if ((v33 & 1) == 0)
        {
LABEL_128:
          v89 = v21[4];
          v90 = v81;
          v91 = v22 + 1;
          v92 = v10;
LABEL_133:

          return SLPronouncerImpl::PronounceTwoDigits(v92, v90, v89, v91, v6, a5, a6);
        }
      }

      else
      {
        v84 = (*(*v10 + 216))(v10, v83 + 78);
        (*(*v10 + 232))(v10, v84, v6, v22, 1);
        *(v6 + 24) = 2;
        v85 = (*(*v10 + 216))(v10, 155);
        (*(*v10 + 232))(v10, v85, v6, -1, 0);
        v81 = *(v21 + 1);
      }

      v86 = *v10 + 216;
      if (v81 == 48)
      {
        v87 = 211;
      }

      else
      {
        v87 = 1167;
      }

      v88 = (*(*v10 + 216))(v10, v87);
      (*(*v10 + 232))(v10, v88, v6, -1, 0);
      LOBYTE(v81) = v21[2];
      goto LABEL_128;
    }

    v70 = *v21;
    if (v70 == 48)
    {
      if (*(v21 + 1) == 48)
      {
        return this;
      }

      LOBYTE(v70) = 48;
    }

LABEL_132:
    v89 = v21[2];
    v90 = v70;
    v92 = v10;
    v91 = v22;
    goto LABEL_133;
  }

  if (length)
  {
    if (length == 1)
    {
      v23 = a5 & 1;
      v24 = a6 + 1;
      goto LABEL_19;
    }

LABEL_44:
    v33 = 0;
    v43 = a5 & 0x20;
    v98 = v43 >> 5;
    v44 = (v43 >> 5) + 3;
    v45 = v43 >> 4;
    v93 = v43 >> 4;
    while (2)
    {
      v46 = length % v44;
      v47 = 48;
      if (length % v44 > 1)
      {
        if (v46 != 2)
        {
          if (v46 != 3)
          {
            v49 = v22;
            v48 = 48;
            v50 = 48;
            goto LABEL_54;
          }

          goto LABEL_51;
        }
      }

      else
      {
        if (v46)
        {
          v48 = 48;
          v49 = v22;
          v50 = 48;
          if (v46 != 1)
          {
            goto LABEL_54;
          }

LABEL_53:
          v53 = *v21;
          v21 += 2;
          v50 = v53;
          v49 = v22 + 1;
LABEL_54:
          v54 = (length - 1) / v44;
          v21 += v45;
          v22 = v49 + v98;
          length = v44 * v54 - v98;
          if (v47 != 48 || v48 != 48 || v50 != 48)
          {
            v94 = v48;
            v95 = v47;
            SLPronouncerImpl::PronounceThreeDigits(v10, v47, v48, v50, v49 - 3, a4, 0, 0);
            if (length < 1)
            {
LABEL_66:
              *(a4 + 24) = 2;
              if ((a5 & 1) == 0)
              {
                v62 = v33;
                v63 = 0;
                goto LABEL_69;
              }

              v58 = (*(*v10 + 216))(v10, v54 + 195);
              v59 = 0;
              v60 = length + a6;
              v61 = v22;
            }

            else
            {
              v55 = v21;
              while (1)
              {
                v56 = *v55;
                if (v56 <= 0xFF && v56 != 48 && (*(MEMORY[0x277D85DE0] + 4 * v56 + 60) & 0x400) != 0)
                {
                  break;
                }

                if (++v55 >= &v21[2 * length])
                {
                  goto LABEL_66;
                }
              }

              v62 = v33;
              *(a4 + 24) = 2;
              v63 = 1;
LABEL_69:
              v58 = (*(*v10 + 216))(v10, v54 + 155);
              v64 = v22 - 1;
              if ((a5 & 0x20) == 0)
              {
                v64 = v49;
              }

              v59 = (v63 & 1) != 0;
              if (v63)
              {
                v61 = v64;
              }

              else
              {
                v61 = v22;
              }

              if (v63)
              {
                v60 = v98;
              }

              else
              {
                v60 = length + a6;
              }

              v33 = v62;
              v45 = v93;
            }

            (*(*v10 + 232))(v10, v58, a4, v61, v60);
            if (!v59)
            {
              v6 = a4;
              goto LABEL_115;
            }

            v67 = v54 > 1 || v95 > 48 || v94 > 49;
            if ((v67 | v33))
            {
              v6 = a4;
              *(a4 + 24) = (*(*v10 + 168))(v10, 0);
              v33 = 1;
              goto LABEL_92;
            }

            v33 = 1;
          }

          v6 = a4;
LABEL_92:
          if (length <= 3)
          {
            goto LABEL_115;
          }

          continue;
        }

LABEL_51:
        v51 = *v21;
        v21 += 2;
        v47 = v51;
        ++v22;
      }

      break;
    }

    v52 = *v21;
    v21 += 2;
    v48 = v52;
    ++v22;
    goto LABEL_53;
  }

  if ((a5 & 4) == 0)
  {
    v68 = *v10 + 216;
    if (a5)
    {
      v69 = 167;
    }

    else
    {
      v69 = 126;
    }

    v27 = (*(*v10 + 216))(v10, v69);
    v28 = *(*v10 + 232);
    v32 = a6 + 1;
    v29 = v10;
    v30 = v6;
    v31 = v22 - 1;
LABEL_100:

    return v28(v29, v27, v30, v31, v32);
  }

  return this;
}

uint64_t SLPronouncerImpl::PronounceOneDigit(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = *a1 + 216;
  v11 = 119;
  if ((a5 & 1) == 0)
  {
    v11 = 78;
  }

  v12 = (*(*a1 + 216))(a1, v11 + a2);
  v13 = *(*a1 + 232);

  return v13(a1, v12, a4, a3, a6 + 1);
}

uint64_t SLPronouncerImpl::PronounceTwoDigits(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v12 = result;
  if (a2 != 48)
  {
    if (a2 == 49)
    {
      v13 = *result + 216;
      if (a6)
      {
        v14 = a3 + 129;
      }

      else
      {
        v14 = a3 + 89;
      }

      v16 = (*(*result + 216))(result, v14);
      v17 = *(*v12 + 232);
      v21 = a7 + 2;
      v18 = v12;
      v19 = a5;
      v20 = a4;
      goto LABEL_18;
    }

    v15 = *(*result + 216);
    if (a3 == 48 && (a6 & 1) != 0)
    {
      v16 = v15(result, (a2 + 137));
      v17 = *(*v12 + 232);
      v18 = v12;
      v19 = a5;
      v20 = a4;
      v21 = a7 + 2;
      goto LABEL_18;
    }

    v22 = v15(result, a2 + 97);
    if (a3 == 48)
    {
      v23 = a7 + 2;
    }

    else
    {
      v23 = 1;
    }

    result = (*(*v12 + 232))(v12, v22, a5, a4, v23);
  }

  if (a3 == 48)
  {
    return result;
  }

  *(a5 + 24) = 2;
  v24 = *v12 + 216;
  v25 = 119;
  if ((a6 & 1) == 0)
  {
    v25 = 78;
  }

  v16 = (*(*v12 + 216))(v12, v25 + a3);
  v17 = *(*v12 + 232);
  v20 = a4 + 1;
  v21 = a7 + 1;
  v18 = v12;
  v19 = a5;
LABEL_18:

  return v17(v18, v16, v19, v20, v21);
}

uint64_t SLPronouncerImpl::PronounceThreeDigits(uint64_t result, int a2, int a3, int a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v14 = result;
  v16 = a3 != 48 || a4 != 48;
  if (a2 >= 49)
  {
    v17 = (*(*result + 216))(result, (a2 + 78));
    (*(*v14 + 232))(v14, v17, a6, a5, 1);
    *(a6 + 24) = 2;
    v18 = (a7 & 1) == 0 || v16;
    v19 = *(*v14 + 216);
    if ((v18 & 1) == 0)
    {
      v24 = v19(v14, 195);
      v25 = *(*v14 + 232);
      v26 = a5 + 1;
      v28 = v14;
      v29 = a6;
      v27 = a8 + 2;
      goto LABEL_25;
    }

    v20 = v19(v14, 155);
    if (v16)
    {
      v21 = 0;
    }

    else
    {
      v21 = a8 + 2;
    }

    result = (*(*v14 + 232))(v14, v20, a6, a5 + 1, v21);
  }

  if (a3 != 48)
  {

    return SLPronouncerImpl::PronounceTwoDigits(v14, a3, a4, a5 + 1, a6, a7, a8);
  }

  if (a4 == 48)
  {
    return result;
  }

  v22 = *v14 + 216;
  v23 = 119;
  if ((a7 & 1) == 0)
  {
    v23 = 78;
  }

  v24 = (*(*v14 + 216))(v14, v23 + a4);
  v25 = *(*v14 + 232);
  v26 = a5 + 2;
  v27 = a8 + 1;
  v28 = v14;
  v29 = a6;
LABEL_25:

  return v25(v28, v24, v29, v26, v27);
}

uint64_t SLPronouncerImpl::PronounceDigits(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v31 = 0;
  v30 = 0;
  if (a4 >= 1)
  {
    v10 = result;
    v11 = 0;
    v12 = 0;
    v13 = *(a2 + 56);
    v14 = 119;
    if ((a6 & 1) == 0)
    {
      v14 = 78;
    }

    v28 = v14;
    v15 = 1 - a4;
    while (1)
    {
      v16 = v11 % 3;
      if (v12)
      {
        if (!v16 && v15 != v12)
        {
          *(a5 + 24) = (*(*v10 + 168))(v10, 0);
        }
      }

      v18 = v15 == v12 && v16 == 0;
      v19 = *(v13 + 2 * a3);
      v20 = !v18 && *(v13 + 2 * a3) == *(&v30 + v16);
      v21 = v20 ? 2 : 3;
      *(a5 + 25) = v21;
      *(&v30 + v16) = v19;
      v22 = *(a2 + 32);
      v23 = v19;
      v24 = *(*v10 + 216);
      if (v15 == v12)
      {
        break;
      }

      v25 = v24(v10, v23 + 78);
      (*(*v10 + 232))(v10, v25, a5, a3 + v22, 1);
      ++a3;
      --v12;
      ++v11;
    }

    v26 = v24(v10, v28 + v23);
    v27 = *(*v10 + 232);

    return v27(v10, v26, a5, a3 + v22, a7 + 1);
  }

  return result;
}

void *SLPronouncerImpl::PronounceMoney(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t *a10)
{
  v17 = *a5;
  v37 = *a2;
  v18 = strchr(*a2, 59);
  SLTokenList::SLTokenList(v36);
  if (a5[3])
  {
    if (!v18)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(a5 + 4) = 0;
    if (!v18)
    {
      goto LABEL_9;
    }
  }

  if (*(a5 + 4) == 2 && !a6 && !*(a5 + 6) && *(a5 + 2) <= 10 * v17 + 20)
  {
    if (*(a5 + 7))
    {
      *a5;
      (*(*a1 + 56))(a1, a4, *(a5 + 1));
      (*(*a1 + 240))(a1, &v37, a10, *(a5 + 7) != 1, *(a3 + 32), *(a3 + 40));
      *(a10 + 24) = (*(*a1 + 168))(a1, 0);
      v28 = (*(*a1 + 216))(a1, 339);
      (*(*a1 + 232))(a1, v28, a10, *(a4 + 32) + *(a5 + 4) - 1, 1);
      v29 = *(a5 + 4);
    }

    else
    {
      v29 = 2;
    }

    if (*a5)
    {
      v30 = 32;
    }

    else
    {
      v30 = 256;
    }

    (*(*a1 + 56))(a1, a4, *(a5 + 3), v29, a10, v30, 0);
    *&v37 = v18 + 1;
    if (*(a5 + 7))
    {
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v31 = *(a3 + 32);
      v32 = *(a3 + 40);
    }

    (*(*a1 + 240))(a1, &v37, a10, a5[1] == 0, v31, v32);
    goto LABEL_21;
  }

LABEL_9:
  (*(*a1 + 48))(a1, a4, a10, a5, 256, 0);
  if (a6)
  {
    SLTokenList::SLTokenList(&v33);
    (*(*a1 + 240))(a1, a6, &v33, 0, a7, a8);
    if (v35)
    {
      SLToken::SetCapitalization(v34[2], a9);
      v19 = v35;
      if (v35)
      {
        v21 = v33;
        v20 = v34;
        v22 = *(v33 + 8);
        v23 = *v34;
        *(v23 + 8) = v22;
        *v22 = v23;
        v24 = *a10;
        *(v24 + 8) = v20;
        *v20 = v24;
        *a10 = v21;
        *(v21 + 8) = a10;
        a10[2] += v19;
        v35 = 0;
      }
    }

    std::__list_imp<SLToken *>::clear(&v33);
  }

  if (a6)
  {
    v25 = 1;
  }

  else
  {
    v25 = a5[2] == 0;
  }

  v26 = v25;
  (*(*a1 + 240))(a1, &v37, a10, v26, *(a3 + 32), *(a3 + 40));
LABEL_21:
  *(a10 + 24) = (*(*a1 + 168))(a1, 0);
  return std::__list_imp<SLToken *>::clear(v36);
}

void sub_26B2DD348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__list_imp<SLToken *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t SLPronouncerImpl::PronounceYear(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v11 = (*(a2 + 56) + 2 * a4);
  v12 = *(a2 + 32) + a4;
  v13 = v11[2] == 48 && v11[3] == 48;
  v14 = v11[1];
  v15 = *v11;
  if (v14 == 48)
  {
    v16 = (*(*a1 + 216))(a1, v15 + 78);
    (*(*a1 + 232))(a1, v16, a3, v12, 1);
    v17 = (*(*a1 + 216))(a1, 156);
    if (v13)
    {
      v18 = a7 + 3;
    }

    else
    {
      v18 = 1;
    }

    result = (*(*a1 + 232))(a1, v17, a3, v12 + 1, v18);
    if (!v13)
    {
      v20 = *(v11 + 4);
      v21 = *(v11 + 6);
      goto LABEL_17;
    }
  }

  else
  {
    SLPronouncerImpl::PronounceTwoDigits(a1, v15, v14, v12, a3, 0, 0);
    if (v13)
    {
      v22 = (*(*a1 + 216))(a1, 155);
      result = (*(*a1 + 232))(a1, v22, a3, v12 + 2, a7 + 2);
    }

    else
    {
      v23 = v11[2];
      if (v23 != 48)
      {
        v21 = *(v11 + 6);
        v20 = v23;
LABEL_17:
        result = SLPronouncerImpl::PronounceTwoDigits(a1, v20, v21, v12 + 2, a3, 0, a7);
        if ((a6 & 2) == 0)
        {
          return result;
        }

        goto LABEL_18;
      }

      v24 = (*(*a1 + 216))(a1, 136);
      (*(*a1 + 232))(a1, v24, a3, v12 + 2, 1);
      v25 = (*(*a1 + 216))(a1, *(v11 + 6) + 78);
      result = (*(*a1 + 232))(a1, v25, a3, v12 + 3, a7 + 1);
    }
  }

  if ((a6 & 2) == 0)
  {
    return result;
  }

LABEL_18:
  v26 = *(*a3 + 16);
  v27 = *(*a1 + 184);

  return v27(a1, v26);
}

uint64_t SLPronouncerImpl::PronounceDate(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 296))(a1, *(a4 + 4));
  (*(*a1 + 232))(a1, v8, a3, *(a4 + 24) + *(a2 + 32), *(a4 + 32));
  (*(*a1 + 56))(a1, a2, *(a4 + 40), *(a4 + 48), a3, 257, 0);
  *(a3 + 24) = (*(*a1 + 168))(a1, 0);
  v9 = *(a4 + 8);
  v10 = *a1;
  if (*(a4 + 16) == 4)
  {
    v11 = *(v10 + 96);
    v12 = *(a4 + 8);

    return v11(a1, a2, a3, v9, 4, 0, 0);
  }

  else
  {
    v14 = *(v10 + 56);
    v15 = *(a4 + 8);

    return v14(a1, a2, v9);
  }
}

uint64_t SLPronouncerImpl::PronounceTime(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 1) == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = (*(*a1 + 288))(a1, 0);
  }

  *(a3 + 24) = v8;
  if (*(a4 + 3) == 32)
  {
    v9 = 16;
  }

  else
  {
    v9 = 256;
  }

  (*(*a1 + 56))(a1, a2, *(a4 + 8), *(a4 + 16), a3, v9, 0);
  if (*(a4 + 1) || *(a4 + 2) || (v10 = *(a4 + 3), v10 == 32))
  {
    *(a3 + 24) = (*(*a1 + 288))(a1, 1);
    (*(*a1 + 56))(a1, a2, *(a4 + 24), *(a4 + 32), a3, 0, 0);
    v10 = *(a4 + 3);
  }

  if (*(a4 + 48))
  {
    if (!*(a4 + 2) && v10 != 32)
    {
      v11 = 1;
      goto LABEL_18;
    }

    *(a3 + 24) = (*(*a1 + 288))(a1, 1);
    (*(*a1 + 56))(a1, a2, *(a4 + 40), *(a4 + 48), a3, 0, 0);
    v10 = *(a4 + 3);
  }

  if (v10 == 32)
  {
    goto LABEL_25;
  }

  v11 = *(a4 + 2) == 0;
LABEL_18:
  if (*(a4 + 1) || !v11)
  {
    *(a3 + 24) = (*(*a1 + 288))(a1, 1);
    v10 = *(a4 + 3);
  }

  v12 = *a1 + 216;
  if (v10 == 65)
  {
    v13 = 220;
  }

  else
  {
    v13 = 221;
  }

  v14 = (*(*a1 + 216))(a1, v13);
  (*(*a1 + 232))(a1, v14, a3, *(a4 + 72) + *(a2 + 32), *(a4 + 80));
LABEL_25:
  result = (*(*a1 + 288))(a1, 0);
  *(a3 + 24) = result;
  return result;
}

uint64_t SLPronouncerImpl::PronounceElapsedTime(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a2 + 1) == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = (*(*a1 + 288))(a1, 0);
  }

  *(a3 + 24) = v8;
  (*(*a1 + 56))(a1, a2, a4[1], a4[2], a3, 16, 0);
  *(a3 + 24) = (*(*a1 + 288))(a1, 1);
  (*(*a1 + 56))(a1, a2, a4[3], a4[4], a3, 0, 0);
  if (a4[6])
  {
    *(a3 + 24) = (*(*a1 + 288))(a1, 1);
    (*(*a1 + 56))(a1, a2, a4[5], a4[6], a3, 0, 0);
  }

  if (a4[8])
  {
    *(a3 + 24) = (*(*a1 + 168))(a1, 0);
    v9 = (*(*a1 + 216))(a1, 209);
    (*(*a1 + 232))(a1, v9, a3, *(a2 + 32) + a4[7] - 1, 1);
    (*(*a1 + 64))(a1, a2, a4[7], a4[8], a3, 0, 0);
  }

  result = (*(*a1 + 288))(a1, 0);
  *(a3 + 24) = result;
  return result;
}

uint64_t SLPronouncerImpl::PronounceNumericPair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a2 + 56);
  do
  {
    v8 = *(v7 + 2 * v6++);
  }

  while (v8 != 58);
  v9 = ~v6 + ((*(a2 + 64) - v7) >> 1);
  *(a3 + 24) = (*(*a1 + 288))(a1, 0);
  (*(*a1 + 56))(a1, a2, 0, v6 - 1, a3, 0, 0);
  *(a3 + 24) = (*(*a1 + 288))(a1, 1);
  (*(*a1 + 56))(a1, a2, v6, v9, a3, 0, 0);
  result = (*(*a1 + 288))(a1, 0);
  *(a3 + 24) = result;
  return result;
}

uint64_t SLPronouncerImpl::PronounceDimensions(SLPronouncerImpl *this, SLToken *a2, SLTokenList *a3)
{
  v4 = *(a2 + 7);
  v5 = ((*(a2 + 8) - v4) >> 1) - 1;
  if ((*(a2 + 8) - v4) >> 1 != 1)
  {
    if (v5 <= 1)
    {
      v5 = 1;
    }

    for (i = 0; i != v5; ++i)
    {
      if (*(v4 + 2 * i) == 120)
      {
        break;
      }
    }

    operator new();
  }

  result = (*(*this + 168))(this, 0);
  *(a3 + 24) = result;
  return result;
}

void SLPronouncerImpl::PronounceLegalSection(SLPronouncerImpl *this, SLToken *a2, SLTokenList *a3)
{
  v3 = *(a2 + 7);
  v4 = -1;
  do
  {
    v5 = *v3++;
    ++v4;
  }

  while (SLChar::sCharClass[v5 & 0x3F | (SLChar::sUniMap[v5 >> 6] << 6)] == 2);
  operator new();
}

void SLPronouncerImpl::PronounceGeoLoc(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a2 + 17);
  v5 = a4[14] == 0;
  if (a4[2])
  {
    operator new();
  }

  if (a4[6])
  {
    operator new();
  }

  if (a4[10])
  {
    operator new();
  }

  if (a4[14])
  {
    operator new();
  }
}

uint64_t SLPronouncerImpl::PronounceDottedNumber(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a3 + 24) = (*(*a1 + 168))(a1, 1);
  if ((*(a2 + 17) & 4) != 0 && *a4 != 1)
  {
    v8 = 81;
  }

  else
  {
    v8 = 209;
  }

  (*(*a1 + 216))(a1, v8);
  if (*(a4 + 16) != *(a4 + 8))
  {
    operator new();
  }

  result = (*(*a1 + 168))(a1, 1);
  *(a3 + 24) = result;
  return result;
}

void *std::__list_imp<SLToken *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t SLSplitCartDict::Lookup(uint64_t (****this)(void), const char *a2, uint64_t a3, SLWordBuilder *a4, SLDictionary *a5)
{
  SLTokenBuilder::SLTokenBuilder(v28, a4, 1);
  v8 = (**this[3])();
  if (v8)
  {
    v9 = v29[10];
    v10 = *v9;
    v29[11] = v9;
    *v10 = 1;
    v11 = (v10 + 4);
    v12 = *(v10 + 4);
    if (v12 <= 6)
    {
      v13 = v12 + 1;
      *v11 = v13;
      v11[v13] = 64;
    }

    (**this[4])(this[4], a2, a3, v28, 0);
    v14 = v29;
    v16 = v29[11];
    v15 = v29[12];
    if (v16 >= v15)
    {
      v18 = v29[10];
      v19 = (v16 - v18) >> 3;
      if ((v19 + 1) >> 61)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v20 = v15 - v18;
      v21 = v20 >> 2;
      if (v20 >> 2 <= (v19 + 1))
      {
        v21 = v19 + 1;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<SLHomograph *>>((v29 + 10), v22);
      }

      *(8 * v19) = v10;
      v17 = 8 * v19 + 8;
      v23 = v14[10];
      v24 = v14[11] - v23;
      v25 = (8 * v19 - v24);
      memcpy(v25, v23, v24);
      v26 = v14[10];
      v14[10] = v25;
      v14[11] = v17;
      v14[12] = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v16 = v10;
      v17 = (v16 + 1);
    }

    v14[11] = v17;
    SLTokenBuilder::Forward(v28);
  }

  SLTokenBuilder::~SLTokenBuilder(v28);
  return v8;
}

void sub_26B2DEB2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SLTokenBuilder::~SLTokenBuilder(va);
  _Unwind_Resume(a1);
}

void SLSplitCartDict::~SLSplitCartDict(SLSplitCartDict *this)
{
  *this = &unk_287BD3738;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  SLDictionary::~SLDictionary(this);
}

{
  SLSplitCartDict::~SLSplitCartDict(this);

  JUMPOUT(0x26D6753C0);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SLHomograph *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t SLPrefixDict::SLPDFindPage(int a1, uint64_t a2, uint64_t a3, void *__s1, unint64_t a5, size_t *a6)
{
  v7 = a3 + *(a2 + 28);
  if (a5 >= 5)
  {
    v8 = 5;
  }

  else
  {
    v8 = a5;
  }

  if (a5)
  {
    v17 = a6;
    v18 = a3;
    v10 = *(a2 + 12 + 2 * v8);
    do
    {
      v11 = v8 - 1;
      v12 = *(a2 + 12 + 2 * (v8 - 1));
      if (v12 < v10)
      {
        v13 = *(a2 + 12 + 2 * (v8 - 1));
        do
        {
          v14 = (v10 + v13) >> 1;
          v15 = memcmp(__s1, (v7 + 8 * v14), v8);
          if ((v15 & 0x80000000) == 0)
          {
            if (!v15)
            {
              goto LABEL_14;
            }

            v13 = v14 + 1;
            v14 = v10;
          }

          v10 = v14;
        }

        while (v13 < v14);
      }

      v10 = v12;
      --v8;
    }

    while (v11);
    v14 = 0;
LABEL_14:
    a6 = v17;
    a3 = v18;
  }

  else
  {
    v14 = 0;
  }

  *a6 = v8;
  return a3 + *(a2 + 32) + 4 * (bswap32(*(v7 + 8 * v14 + 4)) & 0xFFFFFF);
}

uint64_t SLPrefixDict::SetFileInfo(uint64_t this, _DWORD *a2, int a3, uint64_t a4)
{
  *(this + 24) = a2;
  *(this + 44) = a3;
  *(this + 48) = a4;
  if (*a2 == 1146113107)
  {
    *(this + 40) = 1;
    operator new();
  }

  if (*a2 == 1397510212)
  {
    *(this + 40) = 0;
    *(this + 32) = a2;
  }

  return this;
}

void SLPrefixDict::~SLPrefixDict(SLPrefixDict *this)
{
  *this = &unk_287BD3778;
  if (*(this + 40) == 1)
  {
    v2 = *(this + 4);
    if (v2)
    {
      MEMORY[0x26D6753C0](v2, 0x1000C40F3912DEFLL);
    }
  }

  SLDictionary::~SLDictionary(this);
}

{
  SLPrefixDict::~SLPrefixDict(this);

  JUMPOUT(0x26D6753C0);
}

BOOL SLPrefixDict::Decoder::DecodePhoneme(SLPrefixDict::Decoder *this, char a2)
{
  v3 = a2 < 0;
  v4 = a2 & 0x3F;
  if ((a2 & 0x40) != 0)
  {
    (*(**(this + 3) + 72))(*(this + 3), *(this + 16));
  }

  if (v4 == 63)
  {
    return 1;
  }

  (*(**(this + 3) + 72))(*(this + 3), v4);
  return v3;
}

char *SLPrefixDict::Decoder::DecodePhonemes(SLPrefixDict::Decoder *this, char *a2)
{
  do
  {
    v4 = *a2++;
  }

  while (!SLPrefixDict::Decoder::DecodePhoneme(this, v4));
  return a2;
}

uint64_t SLPrefixDict::Decoder::FoundWord(SLPrefixDict::Decoder *this, const char *a2, uint64_t a3, char *a4, const unsigned __int8 *a5, const unsigned __int16 *a6, const unsigned int *a7, const unsigned __int16 *a8)
{
  (*(**(this + 3) + 8))(*(this + 3));
  (***(this + 3))(*(this + 3), *(this + 1));
  (*(**(this + 3) + 16))(*(this + 3), a2, a3);
  do
  {
    (*(**(this + 3) + 56))(*(this + 3));
    (*(**(this + 3) + 72))(*(this + 3), 2);
    v16 = *a4;
    v17 = a5;
    if (v16 >= 0x40)
    {
      v18 = v16 >> 6;
      if (*this == 1)
      {
        v19 = bswap32(a6[(v18 - 1)]) >> 16;
      }

      else
      {
        v19 = a6[v18 - 1];
      }

      v17 = &a5[v19];
    }

    do
    {
      v20 = *v17++;
    }

    while (!SLPrefixDict::Decoder::DecodePhoneme(this, v20));
    v22 = *a4;
    v21 = a4 + 1;
    if (!SLPrefixDict::Decoder::DecodePhoneme(this, v22 & 0x3F))
    {
      do
      {
        v23 = *v21++;
      }

      while (!SLPrefixDict::Decoder::DecodePhoneme(this, v23));
    }

    v24 = *v21;
    if (*v21 < 0)
    {
      v26 = v21[1];
      v25 = (v21 + 2);
      v24 = ((v24 & 0x7F) << 7) | v26;
    }

    else
    {
      v25 = (v21 + 1);
    }

    v27 = a7[v24];
    v28 = bswap32(v27);
    if (*this)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    SLWordBuilder::SetPartOfSpeech(*(this + 3), v29);
    v39[0] = 0;
    v30 = *v25;
    if ((v30 & 0x7F) != 0)
    {
      v31 = 0;
      v32 = *this;
      do
      {
        v33 = v30;
        if ((v30 & 0x80) != 0)
        {
          v34 = v25[1];
          v25 += 2;
          v33 = ((v30 & 0x7F) << 7) | v34;
        }

        else
        {
          ++v25;
        }

        if (v31 <= 6)
        {
          v35 = a8[v33];
          v36 = bswap32(v35) >> 16;
          if (v32)
          {
            LOWORD(v35) = v36;
          }

          v39[0] = ++v31;
          v39[v31] = v35;
        }

        v30 = *v25;
      }

      while ((v30 & 0x7F) != 0);
    }

    (*(**(this + 3) + 88))(*(this + 3), v39);
    (*(**(this + 3) + 96))(*(this + 3));
    v37 = *v25;
    a4 = (v25 + 1);
  }

  while (v37 != 128);
  (*(**(this + 3) + 48))(*(this + 3));
  return 1;
}

uint64_t SLPrefixDict::Lookup(SLPrefixDict *this, char *__s1, unint64_t a3, SLWordBuilder *a4, SLDictionary *a5)
{
  v40 = 0;
  v9 = *(this + 3);
  v10 = *(this + 4);
  v11 = SLPrefixDict::SLPDFindPage(this, v10, v9, __s1, a3, &v40);
  v12 = *(this + 40);
  v13 = *(v11 + 6);
  v14 = bswap32(v13) >> 16;
  if (*(this + 40))
  {
    LOWORD(v13) = v14;
  }

  if (!v13)
  {
    return 0;
  }

  v33 = a4;
  v34 = v9;
  v15 = 0;
  v16 = v13;
  v31 = v10;
  v32 = v11;
  v17 = v11 + 8;
  v18 = (v11 + 8 + 2 * v13);
  v30 = *(v10 + 36);
  v29 = *(v10 + 40);
  v19 = v40;
  v35 = a3;
  v20 = a3 - v40;
  while (1)
  {
    v21 = (v15 + v16) >> 1;
    v22 = *(v17 + 2 * v21);
    v23 = bswap32(v22) >> 16;
    if (v12)
    {
      LOWORD(v22) = v23;
    }

    v24 = &v18[v22];
    v25 = memcmp(&__s1[v19], v24, v20);
    if (v25 < 1)
    {
      break;
    }

    v15 = v21 + 1;
    v21 = v16;
LABEL_11:
    v16 = v21;
    if (v15 >= v21)
    {
      return 0;
    }
  }

  if (v25 < 0 || v24[v20])
  {
    goto LABEL_11;
  }

  v27 = v34 + *(v31 + 24);
  v28 = *(v31 + 8);
  v36[0] = v12;
  v37 = v27;
  v38 = v28;
  v39 = v33;
  SLPrefixDict::Decoder::FoundWord(v36, __s1, v35, &v24[v20 + 1], v18, v32, (v34 + v30), (v34 + v29));
  return 1;
}

uint64_t SLMMapCache::Map(SLMMapCache *this, const __CFURL *a2, SLMMapHint *a3)
{
  v3 = CFURLCopyFileSystemPath(this, kCFURLPOSIXPathStyle);
  if (v3)
  {
    CFStringGetMaximumSizeOfFileSystemRepresentation(v3);
    operator new[]();
  }

  return -1;
}

uint64_t SLMMapCache::Map(SLMMapCache *this, const char *a2, SLMMapHint *a3)
{
  if (stat(this, &v7) < 0)
  {
    return -1;
  }

  pthread_mutex_lock(&sMapCacheMutex);
  v5 = sMappedFiles;
  if (!sMappedFiles)
  {
LABEL_6:
    operator new();
  }

  while (*(v5 + 8) != v7.st_dev || *(v5 + 16) != v7.st_ino)
  {
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  ++*(v5 + 48);
  if (a2)
  {
    *(a2 + 2) = open(this, 0);
    *(a2 + 1) = *(v5 + 32);
  }

  pthread_mutex_unlock(&sMapCacheMutex);
  return *(v5 + 24);
}

uint64_t SLMMapCache::Unmap(SLMMapCache *this, void *a2)
{
  pthread_mutex_lock(&sMapCacheMutex);
  v3 = &sMappedFiles;
  while (1)
  {
    v4 = v3;
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    v5 = v3[3];
    if (v5 == this)
    {
      v6 = *(v3 + 12) - 1;
      *(v3 + 12) = v6;
      if (!v6)
      {
        munmap(v5, v3[5]);
        *v4 = *v3;
        MEMORY[0x26D6753C0](v3, 0x10A0C40695E290ELL);
      }

      break;
    }
  }

  return pthread_mutex_unlock(&sMapCacheMutex);
}

uint64_t SLMMapCache::IsFileAlreadyMapped(SLMMapCache *this, const char *a2)
{
  if (stat(this, &v5) < 0)
  {
    v3 = 0;
  }

  else
  {
    pthread_mutex_lock(&sMapCacheMutex);
    v2 = sMappedFiles;
    if (sMappedFiles)
    {
      v3 = 0;
      do
      {
        if (*(v2 + 8) == v5.st_dev)
        {
          v3 |= *(v2 + 16) == v5.st_ino;
        }

        v2 = *v2;
      }

      while (v2);
    }

    else
    {
      v3 = 0;
    }

    pthread_mutex_unlock(&sMapCacheMutex);
  }

  return v3 & 1;
}

void SLTuples::Create(SLTuples *this, CFLocaleRef locale, const __CFLocale *a3)
{
  Value = CFLocaleGetValue(locale, *MEMORY[0x277CBEED0]);
  if (CFStringCompare(Value, @"en", 0) == kCFCompareEqualTo)
  {

    SLCreateTuplesEng(this);
  }

  SLTuples::Create();
}

void SLTuplesImpl::SLTuplesImpl(SLTuplesImpl *this, SLLexer *a2, const __CFString *a3)
{
  *this = &unk_287BD38E0;
  SLLexerBuffer::SLLexerBuffer((this + 8), a2, 1);
  *this = &unk_287BD37F0;
  *(this + 1) = &unk_287BD3870;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  std::string::basic_string[abi:ne200100]<0>(this + 144, ".");
  v5 = SLGetSpeechDictionaryBundle();
  if (v5)
  {
    *(this + 13) = CFBundleCopyResourceURL(v5, a3, 0, 0);
  }
}

void sub_26B2DF9C8(_Unwind_Exception *a1)
{
  if (v1[103] < 0)
  {
    operator delete(*v3);
  }

  SLLexerBuffer::~SLLexerBuffer(v2);
  SLLexer::~SLLexer(v1);
  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t SLTuplesImpl::HasTupleDB(SLTuplesImpl *this)
{
  if (*(this + 14))
  {
    return 1;
  }

  v3 = *(this + 13);
  if (v3)
  {
    v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
    CFRelease(*(this + 13));
    *(this + 13) = 0;
    if (v4)
    {
      CFStringGetMaximumSizeOfFileSystemRepresentation(v4);
      operator new[]();
    }
  }

  return 0;
}

sqlite3_int64 SLTuplesImpl::TupleLookup(sqlite3_stmt **this, const char *a2)
{
  if (!SLTuplesImpl::HasTupleDB(this) || sqlite3_bind_text(this[15], 1, a2, -1, 0))
  {
    return 0;
  }

  if (sqlite3_step(this[15]) == 100)
  {
    v4 = sqlite3_column_int64(this[15], 0);
  }

  else
  {
    v4 = 0;
  }

  sqlite3_reset(this[15]);
  return v4;
}

sqlite3_int64 SLTuplesImpl::AbstractTupleLookup(SLTuplesImpl *this, const char *a2)
{
  if (SLTuplesImpl::HasTupleDB(this))
  {
    v4 = *(this + 16);
    if (v4)
    {
      if (!a2)
      {
        goto LABEL_6;
      }

      if (!sqlite3_bind_text(v4, 1, a2, -1, 0))
      {
LABEL_5:
        while (1)
        {
          v4 = *(this + 16);
LABEL_6:
          if (sqlite3_step(v4) != 100)
          {
            break;
          }

          v27 = sqlite3_column_int64(*(this + 16), 0);
          v5 = sqlite3_column_bytes(*(this + 16), 1);
          if (!v5)
          {
            return v27;
          }

          v6 = v5;
          v7 = sqlite3_column_blob(*(this + 16), 1);
          if (v6 < 1)
          {
            return v27;
          }

          v8 = v7;
          v9 = 0;
          v10 = &v7[v6];
          while (1)
          {
            v11 = SLLexerBuffer::operator[](this + 1, v9);
            if (!v11)
            {
              break;
            }

            v12 = v11;
            v13 = 0;
            v14 = v8;
            while (1)
            {
              v15 = *v14++;
              v13 |= v15 & 0x7F;
              if ((v15 & 0x80) == 0)
              {
                break;
              }

              v13 <<= 7;
              v8 = v14;
              if (v14 == v10)
              {
                v16 = v10;
                if (!v13)
                {
                  goto LABEL_18;
                }

                goto LABEL_17;
              }
            }

            v16 = v8 + 1;
            if (!v13)
            {
              goto LABEL_18;
            }

LABEL_17:
            if (!SLToken::HasPOS(v11, v13))
            {
              goto LABEL_5;
            }

LABEL_18:
            if (v16 < v10)
            {
              v17 = 0;
              v18 = v16;
              while (1)
              {
                v19 = *v18++;
                v17 |= v19 & 0x7F;
                if ((v19 & 0x80) == 0)
                {
                  break;
                }

                v17 <<= 7;
                v16 = v18;
                if (v18 == v10)
                {
                  v16 = v10;
                  if (!v17)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_25;
                }
              }

              ++v16;
              if (!v17)
              {
                goto LABEL_26;
              }

LABEL_25:
              if (SLToken::HasPOS(v12, v17))
              {
                break;
              }
            }

LABEL_26:
            while (v16 < v10)
            {
              v20 = *v16;
              if (!*v16)
              {
                break;
              }

              v21 = *v16++ & 0x7F;
              while (1)
              {
                v22 = v21;
                if (!v21)
                {
                  break;
                }

                if (v16 >= v10)
                {
                  LOWORD(v23) = 0;
                }

                else
                {
                  v23 = 0;
                  v24 = v16;
                  while (1)
                  {
                    v25 = *v24++;
                    v23 |= v25 & 0x7F;
                    if ((v25 & 0x80) == 0)
                    {
                      break;
                    }

                    v23 <<= 7;
                    v16 = v24;
                    if (v24 == v10)
                    {
                      v16 = v10;
                      goto LABEL_37;
                    }
                  }

                  ++v16;
                }

LABEL_37:
                --v21;
                if (v20 >= 0 != SLToken::HasTag(v12, v23))
                {
                  if (!v22)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_5;
                }
              }
            }

            v8 = v16 + 1;
            ++v9;
            if (v8 >= v10)
            {
              return v27;
            }
          }
        }

        sqlite3_reset(*(this + 16));
      }
    }
  }

  return 0;
}

void SLTuplesImpl::~SLTuplesImpl(SLTuplesImpl *this)
{
  *this = &unk_287BD37F0;
  v2 = (this + 8);
  *(this + 1) = &unk_287BD3870;
  v3 = *(this + 13);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    sqlite3_finalize(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    sqlite3_finalize(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    sqlite3_close(v6);
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  SLLexerBuffer::~SLLexerBuffer(v2);

  SLLexer::~SLLexer(this);
}

SLToken *SLTuplesImpl::NextToken(int64x2_t *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = this[8].i64[1];
  if (!v2)
  {
    v3 = SLLexerBuffer::operator[](&this->i64[1], 0);
    if (v3 && SLTokenGetClass(v3) == 32)
    {
      v2 = this[8].i64[1];
      if (!v2)
      {
        v18[0] = v18;
        v18[1] = v18;
        v19 = 0;
        v17[0] = v17;
        v17[1] = v17;
        v17[2] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v16, "");
        std::__list_imp<SLTupleHypothesis>::__create_node[abi:ne200100]<SLTupleHypothesis const&>();
      }
    }

    else
    {
      v2 = 1;
      this[8].i64[1] = 1;
    }
  }

  this[8].i64[1] = v2 - 1;
  v4 = SLLexerBuffer::operator[](&this->i64[1], 0);
  v5 = v4;
  if (!v4)
  {
    v9 = this[2].i64[1];
    v10 = this[3].i64[0];
    this[4].i64[1] = 0;
    v11 = (v10 - v9) >> 3;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v9);
        v12 = this[3].i64[0];
        v9 = (this[2].i64[1] + 8);
        this[2].i64[1] = v9;
        v11 = (v12 - v9) >> 3;
      }

      while (v11 > 2);
    }

    if (v11 == 1)
    {
      v13 = 256;
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_23;
      }

      v13 = 512;
    }

    this[4].i64[0] = v13;
    goto LABEL_23;
  }

  if (*(v4 + 8) - *(v4 + 7) == 4)
  {
    v6 = *(v4 + 4);
    if ((v6 & 0x10) == 0)
    {
      if ((v6 & 0x400) == 0)
      {
        *buffer = 4784129;
        SLToken::SelectHomographs(v4, 0x7FFFFFFF, buffer);
      }

      *buffer = 5046273;
      SLToken::SelectHomographs(v5, 0x7FFFFFFF, buffer);
    }
  }

  this[4] = vaddq_s64(this[4], xmmword_26B34D790);
  std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this[2].i64, 1);
  Class = SLTokenGetClass(v5);
  if ((Class - 35) > 0x38 || ((1 << (Class - 35)) & 0x100000010000001) == 0)
  {
    v8 = SLTuplesImpl::TokenContext(Class, v5);
    MEMORY[0x26D6752E0](&this[9], v8);
  }

LABEL_23:
  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

void sub_26B2E0A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  std::__list_imp<SLTupleHypothesis>::clear(&a33);
  std::__list_imp<SLTupleHypothesis>::clear(&a36);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

const char *SLTuplesImpl::TokenContext(SLTuplesImpl *this, SLToken *a2)
{
  if (!a2)
  {
    return ".";
  }

  Class = SLTokenGetClass(a2);
  if (Class == 43 || Class == 47)
  {
    return ".";
  }

  if (Class != 46 || *(a2 + 8) - *(a2 + 7) != 6)
  {
    return "";
  }

  Text = SLTokenGetText(a2);
  CharacterAtIndex = CFStringGetCharacterAtIndex(Text, 0);
  result = ".";
  if (CharacterAtIndex <= 57)
  {
    if (CharacterAtIndex != 33 && CharacterAtIndex != 46)
    {
      return ",";
    }
  }

  else
  {
    if (CharacterAtIndex == 8212)
    {
      return ":";
    }

    if (CharacterAtIndex != 63)
    {
      if (CharacterAtIndex == 58)
      {
        return ":";
      }

      return ",";
    }
  }

  return result;
}

BOOL SLTuplesImpl::HasTuple(sqlite3_stmt **this, char *a2, ...)
{
  va_start(va, a2);
  std::string::basic_string[abi:ne200100]<0>(&v8, a2);
  va_copy(v7, va);
  while (1)
  {
    v3 = va_arg(v7, const std::string::value_type *);
    if (!v3)
    {
      break;
    }

    std::string::push_back(&v8, 95);
    std::string::append(&v8, v3);
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v8;
  }

  else
  {
    v4 = v8.__r_.__value_.__r.__words[0];
  }

  v5 = SLTuplesImpl::TupleLookup(this, v4);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }

  return v5 != 0;
}

void sub_26B2E0DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__list_imp<SLTupleHypothesis>::clear(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      std::__list_imp<SLTupleHypothesis>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<SLTupleHypothesis>::__delete_node[abi:ne200100](int a1, void **__p)
{
  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  operator delete(__p);
}

uint64_t std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void SLToken::SLToken(SLToken *this, char a2, int a3)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 5) = 0x2000;
  *(this + 4) = a3;
  *(this + 20) = -1;
  *(this + 3) = "(None)";
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
}

{
  *this = a2;
  *(this + 1) = 0;
  *(this + 5) = 0x2000;
  *(this + 4) = a3;
  *(this + 20) = -1;
  *(this + 3) = "(None)";
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
}

void SLToken::~SLToken(SLToken *this)
{
  SLToken::clear(this);
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }
}

void SLToken::clear(SLToken *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
    *(this + 6) = 0;
  }

  v4 = *(this + 10);
  v3 = *(this + 11);
  while (v3 != v4)
  {
    v6 = *(v3 - 8);
    v3 -= 8;
    v5 = v6;
    *(this + 11) = v3;
    if (v6)
    {
      SLHomograph::~SLHomograph(v5);
      MEMORY[0x26D6753C0]();
      v4 = *(this + 10);
      v3 = *(this + 11);
    }
  }
}

void SLToken::SetType(SLToken *this, char a2)
{
  *this = a2;
  *(this + 4) &= ~0x40u;
  SLToken::clear(this);
}

void SLToken::ChooseHomograph(SLToken *this, SLHomograph *a2)
{
  v10 = a2;
  v3 = *(this + 10);
  v2 = *(this + 11);
  v4 = this + 80;
  while (v2 != v3)
  {
    v8 = *(v2 - 8);
    v2 -= 8;
    v7 = v8;
    *(this + 11) = v2;
    if (v8)
    {
      v9 = v7 == a2;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      SLHomograph::~SLHomograph(v7);
      MEMORY[0x26D6753C0]();
      v3 = *(this + 10);
      v2 = *(this + 11);
    }
  }

  std::vector<SLHomograph *>::push_back[abi:ne200100](v4, &v10);
}

void std::vector<SLHomograph *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SLHomograph *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t SLToken::SelectHomographs(SLToken *this, int a2, const SLWordTagSet *a3)
{
  v3 = *(this + 10);
  if (*(this + 11) == v3)
  {
    return 0;
  }

  v23 = (this + 80);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(v3 + 8 * v9);
    v11 = *v10 & a2;
    if (v11)
    {
      v12 = 0;
      *v10 = v11;
      v13 = (v10 + 1);
      v14 = 1;
      while (v12 < *a3)
      {
        v15 = v12 + 1;
        v16 = a3 + 2 * v12;
        v14 &= SLWordTagSet::find(v13, *(v16 + 1));
        v17 = SLWordTagSet::find(v13, *(v16 + 1) ^ 1);
        v12 = v15;
        if (v17)
        {
          if (!v14)
          {
            goto LABEL_12;
          }

          goto LABEL_10;
        }
      }

      if (v14)
      {
LABEL_10:
        v8 |= 1 << v9;
        goto LABEL_12;
      }

      v7 |= 1 << v9;
    }

LABEL_12:
    ++v9;
    v3 = *(this + 10);
    v18 = *(this + 11);
  }

  while (v9 < (v18 - v3) >> 3);
  if (!v8)
  {
    v8 = v7;
    if (!v7)
    {
      return 0;
    }
  }

  if ((v8 ^ (-1 << ((v18 - v3) >> 3))) != 0xFFFFFFFF)
  {
    if (v18 == v3)
    {
      v20 = 0;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = *(v3 + 8 * v19);
        if ((v8 >> v19))
        {
          *(v3 + 8 * v20++) = v21;
        }

        else if (v21)
        {
          SLHomograph::~SLHomograph(v21);
          MEMORY[0x26D6753C0]();
        }

        ++v19;
        v3 = *(this + 10);
      }

      while (v19 < (*(this + 11) - v3) >> 3);
    }

    std::vector<SLHomograph *>::resize(v23, v20);
  }

  return 1;
}

void std::vector<SLHomograph *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<SLHomograph *>::__append(a1, a2 - v2);
  }
}

uint64_t SLToken::ExcludeHomographs(SLToken *this, const SLWordTagSet *a2)
{
  v2 = *(this + 10);
  if (*(this + 11) == v2)
  {
    goto LABEL_13;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = 0;
    v8 = *(v2 + 8 * v6);
    do
    {
      if (v7 >= *a2)
      {
        v11 = *(this + 11);
        goto LABEL_10;
      }

      v9 = v7 + 1;
      v10 = SLWordTagSet::find((v8 + 4), *(a2 + v7 + 1));
      v7 = v9;
    }

    while (!v10);
    if (v8)
    {
      SLHomograph::~SLHomograph(v8);
      MEMORY[0x26D6753C0]();
    }

    *(*(this + 10) + 8 * v6) = *(*(this + 11) - 8);
    v11 = *(this + 11) - 8;
    *(this + 11) = v11;
    v5 = 1;
LABEL_10:
    ++v6;
    v2 = *(this + 10);
  }

  while (v6 < (v11 - v2) >> 3);
  if (v11 == v2)
  {
LABEL_13:
    SLToken::ExcludeHomographs();
  }

  return v5 & 1;
}

BOOL SLToken::HasTag(SLToken *this, int a2)
{
  v2 = *(this + 10);
  if (*(this + 11) == v2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    result = SLWordTagSet::find((*(v2 + 8 * v5) + 4), a2);
    if (result)
    {
      break;
    }

    ++v5;
    v2 = *(this + 10);
  }

  while (v5 < (*(this + 11) - v2) >> 3);
  return result;
}

BOOL SLToken::HasPOS(SLToken *this, int a2)
{
  v2 = *(this + 10);
  v3 = *(this + 11) - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = v3 >> 3;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if ((**v2 & a2) != 0)
  {
    return 1;
  }

  v7 = 1;
  do
  {
    v8 = v7;
    if (v5 == v7)
    {
      break;
    }

    v9 = *v2[v7++];
  }

  while ((v9 & a2) == 0);
  return v8 < v4;
}

void SLToken::SetText(SLToken *this, char *a2)
{
  v4 = (this + 56);
  *(this + 8) = *(this + 7);
  v5 = *(this + 6);
  if (v5)
  {
    CFRelease(v5);
    *(this + 6) = 0;
  }

  for (i = *a2; *a2; i = *a2)
  {
    LOWORD(v7) = i;
    if (i < 0)
    {
      if ((i & 0xE0) == 0xC0)
      {
        v8 = a2[1] & 0x3F | ((i & 0x1F) << 6);
        a2 += 2;
        LOWORD(v7) = v8;
        goto LABEL_14;
      }

      if ((i & 0xF0) == 0xE0)
      {
        LOWORD(v7) = (i << 12) | ((a2[1] & 0x3F) << 6) | a2[2] & 0x3F;
        a2 += 3;
        goto LABEL_14;
      }

      if ((i & 0xF8) == 0xF0)
      {
        v9 = ((i & 7) << 18) | ((a2[1] & 0x3F) << 12);
        v10 = a2[3] & 0x3F | ((a2[2] & 0x3F) << 6);
        v7 = v10 | v9;
        if (v9 >= 0x10000)
        {
          v22 = ((v7 + 67043328) >> 10) - 10240;
          std::vector<unsigned short>::push_back[abi:ne200100](v4, &v22);
          LOWORD(v7) = v10 | 0xDC00;
        }

        a2 += 4;
        goto LABEL_14;
      }

      LOWORD(v7) = 0;
    }

    ++a2;
LABEL_14:
    v12 = *(this + 8);
    v11 = *(this + 9);
    if (v12 >= v11)
    {
      v14 = *v4;
      v15 = v12 - *v4;
      v16 = v15 >> 1;
      if (v15 >> 1 <= -2)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      v17 = v11 - v14;
      if (v17 <= v16 + 1)
      {
        v18 = v16 + 1;
      }

      else
      {
        v18 = v17;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v18;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(v4, v19);
      }

      *(2 * v16) = v7;
      v13 = 2 * v16 + 2;
      memcpy(0, v14, v15);
      v20 = *(this + 7);
      *(this + 7) = 0;
      *(this + 8) = v13;
      *(this + 9) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v12 = v7;
      v13 = (v12 + 2);
    }

    *(this + 8) = v13;
  }

  v21 = 0;
  std::vector<unsigned short>::push_back[abi:ne200100](v4, &v21);
}

char *SLToken::AppendToken(SLToken *this, char **a2)
{
  result = std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(this + 56, (*(this + 8) - 2), a2[7], a2[8] - 2, (a2[8] - 2 - a2[7]) >> 1);
  *(this + 4) = a2[2] & 0x1001 | *(this + 4) & 0xFFFFEFFE;
  v5 = *(this + 5);
  if (a2[4] == (v5 + *(this + 4)))
  {
    *(this + 5) = &a2[5][v5];
  }

  return result;
}

void SLToken::SetTokenRange(SLToken *this, SLToken *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  std::vector<unsigned short>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(this + 7, (*(a2 + 7) + 2 * a3.location), (*(a2 + 7) + 2 * (a3.location + a3.length)), a3.length);
  v7 = 0;
  std::vector<unsigned short>::push_back[abi:ne200100](this + 7, &v7);
  *(this + 4) = location;
  *(this + 5) = length;
  *(this + 4) = *(a2 + 4) + location;
}

void *SLToken::RemoveRange(void *this, CFRange a2)
{
  length = a2.length;
  v3 = this;
  if (a2.length)
  {
    v4 = this[8];
    v5 = (this[7] + 2 * a2.location);
    v6 = &v5[2 * a2.length];
    v7 = v4 - v6;
    if (v4 != v6)
    {
      this = memmove(v5, v6, v4 - v6);
    }

    *(v3 + 64) = &v5[v7];
  }

  *(v3 + 40) -= length;
  return this;
}

void SLToken::TransferTokenRange(SLToken *this, SLToken *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  SLToken::SetTokenRange(this, a2, a3);
  if (length)
  {
    v6 = *(a2 + 8);
    v7 = (*(a2 + 7) + 2 * location);
    v8 = &v7[2 * length];
    v9 = v6 - v8;
    if (v6 != v8)
    {
      memmove(v7, v8, v6 - v8);
    }

    *(a2 + 8) = &v7[v9];
  }

  *(a2 + 5) -= length;
}

uint64_t SLToken::Capitalization(SLToken *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x10) != 0)
  {
    return 33;
  }

  if (*(this + 5) == 1)
  {
    if (*(this + 8) - *(this + 7) == 4)
    {
      return 33;
    }

    else
    {
      return 43;
    }
  }

  else if ((v1 & 8) != 0)
  {
    return 63;
  }

  else
  {
    v3 = *(this + 7);
    v4 = *(this + 8) - v3;
    result = 63;
    if (v4 >= 3)
    {
      if ((SLChar::sCharClass[*v3 & 0x3F | (SLChar::sUniMap[*v3 >> 6] << 6)] & 0x1F) == 1)
      {
        return 45;
      }

      else
      {
        return 63;
      }
    }
  }

  return result;
}

uint64_t SLToken::SetCapitalization(uint64_t result, int a2)
{
  v2 = *(result + 16);
  *(result + 16) = v2 & 0xFFFFFFF7;
  if (a2 != 45)
  {
    if (a2 == 43)
    {
      *(result + 5) = 1;
    }

    else
    {
      if (a2 == 33)
      {
        v3 = v2 & 0xFFFFFFE7 | 0x10;
      }

      else
      {
        v3 = v2 | 8;
      }

      *(result + 16) = v3;
    }
  }

  return result;
}

void SLPhonTune::SLPhonTune(SLPhonTune *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
}

{
  *this = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
}

void SLHomograph::SLHomograph(SLHomograph *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
}

{
  *this = 0;
  *(this + 2) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
}

void SLHomograph::~SLHomograph(SLHomograph *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = (this + 56);
  std::vector<SLPhonTune>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }
}

SLToken *SLTokenCreateFromBuffer(uint64_t a1)
{
  if (!SLLexerBuffer::operator[](a1, 0))
  {
    return 0;
  }

  if (*SLLexerBuffer::operator[](a1, 0) == 36 || *SLLexerBuffer::operator[](a1, 0) == 34)
  {
    v2 = SLLexerBuffer::operator[](a1, 0);
    *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_26B34D790);
    std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](a1 + 24, 1);
    if (v2)
    {
      SLToken::~SLToken(v2);
      MEMORY[0x26D6753C0]();
      return 0;
    }
  }

  else
  {
    if (SLLexerBuffer::operator[](a1, 1uLL))
    {
      operator new();
    }

    v2 = SLLexerBuffer::operator[](a1, 0);
    *(a1 + 56) = vaddq_s64(*(a1 + 56), xmmword_26B34D790);
    std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](a1 + 24, 1);
    v4 = *(v2 + 10);
    if (*(v2 + 11) != v4)
    {
      operator new();
    }

    *(v2 + 5) = 0uLL;
    v5 = *(v2 + 12);
    *(v2 + 12) = 0;
    if (v4)
    {
      operator delete(v4);
    }
  }

  return v2;
}

void sub_26B2E2524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef SLTokenGetText(void *a1)
{
  result = a1[6];
  if (!result)
  {
    v3 = a1[7];
    v4 = a1[8];
    if (v3 == v4)
    {
      result = &stru_287BD5310;
    }

    else
    {
      result = CFStringCreateWithCharactersNoCopy(0, v3, v4 - v3 - 1, *MEMORY[0x277CBED00]);
    }

    a1[6] = result;
  }

  return result;
}

char *SLTokenAddHomographs(uint64_t a1, uint64_t a2)
{
  result = std::vector<SLHomograph *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<SLHomograph **>,std::__wrap_iter<SLHomograph **>>(a1 + 80, *(a1 + 88), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
  *(a2 + 88) = *(a2 + 80);
  return result;
}

SLToken *SLTokenRelease(SLToken *result)
{
  if (result)
  {
    SLToken::~SLToken(result);

    JUMPOUT(0x26D6753C0);
  }

  return result;
}

uint64_t SLTokenGetClass(unsigned __int8 *a1)
{
  v2 = *a1;
  result = 32;
  if (v2 <= 6)
  {
    if (v2 >= 3)
    {
      if (v2 == 3)
      {
        return 91;
      }

      if (v2 == 6)
      {
        return 47;
      }

      return 63;
    }
  }

  else if (v2 > 14)
  {
    if (v2 == 15)
    {
      return 43;
    }

    if (v2 == 16)
    {
      return 35;
    }

    if (v2 != 33)
    {
      return 63;
    }
  }

  else if ((v2 - 7) >= 2)
  {
    if (v2 != 9)
    {
      if (v2 == 13)
      {
        return 46;
      }

      return 63;
    }

    v5 = a1 + 80;
    v4 = *(a1 + 10);
    if (*(v5 + 1) != v4 && (**v4 & 0x80000000) != 0)
    {
      return 46;
    }
  }

  return result;
}

uint64_t SLTokenGetInfo(SLToken *this, int a2, _WORD *a3)
{
  result = 0;
  if (a2 <= 1668577647)
  {
    if (a2 <= 1667330110)
    {
      if (a2 == 1634759278)
      {
        if ((*(this + 17) & 4) == 0)
        {
          result = 0;
          *a3 = 73;
          return result;
        }

        *a3 = 72;
        return 1;
      }

      if (a2 != 1651863140)
      {
        return result;
      }

      v5 = *(this + 1);
      goto LABEL_31;
    }

    switch(a2)
    {
      case 1667330111:
        *a3 = SLToken::Capitalization(this);
        return 1;
      case 1667657315:
        return (*(this + 17) >> 3) & 1;
      case 1668313709:
        if (*this == 3)
        {
          v6 = *(this + 3);
LABEL_28:
          *a3 = v6;
          return 1;
        }

        return 0;
    }
  }

  else
  {
    if (a2 <= 1802071651)
    {
      if (a2 != 1668577648)
      {
        if (a2 != 1684628340)
        {
          if (a2 != 1701671016)
          {
            return result;
          }

          v5 = *(this + 2);
          goto LABEL_31;
        }

        *a3 = *(this + 3);
        return 1;
      }

      if (*this == 3)
      {
        v6 = *(this + 2);
        goto LABEL_28;
      }

      return 0;
    }

    switch(a2)
    {
      case 1802071652:
        if ((*this | 2) == 0xF)
        {
          v5 = **(this + 7);
LABEL_31:
          *a3 = v5;
          return 1;
        }

        return 0;
      case 1886352161:
        return (*(this + 18) >> 4) & 1;
      case 2003330418:
        *a3 = *(this + 2);
        return 1;
    }
  }

  return result;
}

uint64_t SLTokenGetTupleGroup(uint64_t a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 20);
  }

  return *(a1 + 6);
}

CFDataRef SLHomographGetPhonemes(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    result = CFDataCreateWithBytesNoCopy(0, *(a1 + 32), *(a1 + 40) - *(a1 + 32), *MEMORY[0x277CBED00]);
    *(a1 + 24) = result;
  }

  return result;
}

void SLTokenList::SLTokenList(SLTokenList *this)
{
  *this = this;
  *(this + 1) = this;
  *(this + 2) = 0;
  *(this + 12) = 0;
}

{
  *this = this;
  *(this + 1) = this;
  *(this + 2) = 0;
  *(this + 12) = 0;
}

void SLTokenList::push_back(SLTokenList *this, SLToken *a2)
{
  if (*(this + 24))
  {
    *(a2 + 1) = *(this + 24);
    *(this + 24) = 0;
  }

  if (*(this + 25))
  {
    *(a2 + 2) = *(this + 25);
    *(this + 25) = 0;
  }

  operator new();
}

CFArrayRef SLHomographCopyTune(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  if (v1 == v2)
  {
    return 0;
  }

  memset(v25, 0, sizeof(v25));
  for (; v1 < v2; v1 += 32)
  {
    *v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v3 = kCFTuneDurationKey;
    v4 = CFNumberCreate(0, kCFNumberFloat32Type, v1);
    SLCFDictionaryBuilder::push_back(&v22, v3, v4);
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    v7 = *(v1 + 8);
    if (v7 != v6)
    {
      memset(v21, 0, sizeof(v21));
      while (v7 < v6)
      {
        *__p = 0u;
        v20 = 0u;
        v18 = 0u;
        v8 = kCFTunePitchKey;
        v9 = CFNumberCreate(0, kCFNumberFloat32Type, v7);
        SLCFDictionaryBuilder::push_back(&v18, v8, v9);
        v10 = kCFTuneLocationKey;
        v11 = v7 + 4;
        v12 = CFNumberCreate(0, kCFNumberFloat32Type, v11);
        SLCFDictionaryBuilder::push_back(&v18, v10, v12);
        Dictionary = SLCFDictionaryBuilder::CreateDictionary(&v18);
        std::vector<void const*>::push_back[abi:ne200100](v21, &Dictionary);
        if (__p[1])
        {
          *&v20 = __p[1];
          operator delete(__p[1]);
        }

        SLCFArrayBuilder::~SLCFArrayBuilder(&v18);
        v7 = v11 + 4;
      }

      v13 = kCFTunePitchTargetsKey;
      Array = SLCFArrayBuilder::CreateArray(v21);
      SLCFDictionaryBuilder::push_back(&v22, v13, Array);
      SLCFArrayBuilder::~SLCFArrayBuilder(v21);
    }

    *&v18 = SLCFDictionaryBuilder::CreateDictionary(&v22);
    std::vector<void const*>::push_back[abi:ne200100](v25, &v18);
    if (v23[1])
    {
      *&v24 = v23[1];
      operator delete(v23[1]);
    }

    SLCFArrayBuilder::~SLCFArrayBuilder(&v22);
  }

  v15 = SLCFArrayBuilder::CreateArray(v25);
  SLCFArrayBuilder::~SLCFArrayBuilder(v25);
  return v15;
}

void std::vector<void const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void SLCFDictionaryBuilder::~SLCFDictionaryBuilder(SLCFDictionaryBuilder *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  SLCFArrayBuilder::~SLCFArrayBuilder(this);
}

void std::vector<SLHomograph *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SLHomograph *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

char *std::vector<unsigned short>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + ((v10 - *a1) >> 1) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + ((v10 - *a1) >> 1))
    {
      v14 = a5 + ((v10 - *a1) >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * a5;
    v35 = (2 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 2;
    }

    while (v34);
    memcpy((v33 + 2 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 2 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (2 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 1;
  if (v18 >= a5)
  {
    v29 = &__dst[2 * a5];
    v30 = (v10 - 2 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v29);
    }

    v28 = 2 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_30;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[2 * a5];
    v23 = v10 + v20;
    if (&v21[-2 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -2 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 2;
        v24 += 2;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[2 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_30:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void *std::vector<unsigned short>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned short>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
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

void std::vector<unsigned short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

void std::vector<SLPhonTune>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<SLPhonTune>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<SLPhonTune>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
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

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

char *std::vector<SLHomograph *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<SLHomograph **>,std::__wrap_iter<SLHomograph **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<SLHomograph *>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v10 - v9 >= a5)
  {
    v15 = v9 - __dst;
    if (v9 - __dst >= a5)
    {
      v19 = &__dst[a5];
      v20 = &v9[-a5];
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = v5;
      v24 = v7;
      v25 = v6;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&v9[a4] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = v5;
      v24 = v7;
      v25 = v15;
    }

    memmove(v23, v24, v25);
    return v5;
  }

  v11 = *a1;
  v12 = &v9[a5 - *a1];
  if (v12 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v13 = v10 - v11;
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    operator new();
  }

  v26 = (__dst - v11);
  v27 = (__dst - v11 + a5);
  v28 = (__dst - v11);
  do
  {
    v29 = *v7++;
    *v28++ = v29;
    --v6;
  }

  while (v6);
  v30 = *(a1 + 8) - __dst;
  memcpy(v27, __dst, v30);
  v31 = &v27[v30];
  *(a1 + 8) = v5;
  v32 = *a1;
  v33 = &v26[*a1 - v5];
  memcpy(v33, *a1, &v5[-*a1]);
  *a1 = v33;
  *(a1 + 8) = v31;
  *(a1 + 16) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v26;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t SLFirstPOSInSet(unsigned int a1)
{
  v1 = __clz(__rbit32(a1));
  if (!a1)
  {
    return -1;
  }

  return v1;
}

const char *SLTag::Name(SLTag *this)
{
  if ((this - 154) >= 0xFFFFFFA6)
  {
    return SLTag::sName[this - 64];
  }

  else
  {
    return "";
  }
}

BOOL SLWordTagSet::find(SLWordTagSet *this, int a2)
{
  v2 = 0;
  v5 = *this;
  v3 = this + 2;
  v4 = v5;
  do
  {
    v6 = v2;
    if (v4 == v2)
    {
      break;
    }

    ++v2;
  }

  while (*&v3[2 * v6] != a2);
  return v6 < v4;
}

unsigned __int16 *SLWordTagSet::erase(unsigned __int16 *this, int a2)
{
  v2 = *this;
  if (*this)
  {
    v3 = 0;
    do
    {
      v4 = &this[v3];
      if (v4[1] == a2)
      {
        *this = v2 - 1;
        v4[1] = this[v2--];
      }

      ++v3;
    }

    while (v3 < v2);
  }

  return this;
}

_WORD *operator+=(_WORD *result, _WORD *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *result;
    do
    {
      v4 = a2[v2--];
      v5 = 1;
      while (v5 - v3 != 1)
      {
        v6 = result[v5++];
        if (v6 == v4)
        {
          v7 = v5 - 2;
          goto LABEL_8;
        }
      }

      v7 = v3;
LABEL_8:
      if (v3 <= 6 && v7 >= v3)
      {
        *result = ++v3;
        result[v3] = v4;
      }
    }

    while (v2);
  }

  return result;
}

void SLElementNames::Create(SLElementNames *this, const __CFLocale *a2)
{
  Value = CFLocaleGetValue(this, *MEMORY[0x277CBEED0]);
  if (CFStringCompare(Value, @"en", 0) == kCFCompareEqualTo)
  {

    SLCreateElementNamesEng();
  }

  SLElementNames::Create();
}

const char *SLElementNames::PhonName(SLElementNames *this, int a2)
{
  v2 = "Stress1";
  if (!a2)
  {
    v2 = "SIL";
  }

  if (a2 == 255)
  {
    return "None";
  }

  else
  {
    return v2;
  }
}

const char *SLElementNames::PhonText(SLElementNames *this, int a2)
{
  v2 = "1";
  if (!a2)
  {
    v2 = "%";
  }

  if (a2 == 255)
  {
    return "???";
  }

  else
  {
    return v2;
  }
}

const char *SLElementNames::POSName(SLElementNames *this, int a2)
{
  if (a2)
  {
    return "Undef";
  }

  else
  {
    return "Noun";
  }
}

const char *SLElementNames::TagName(SLElementNames *this, int a2)
{
  if ((a2 - 154) >= 0xFFFFFFA6)
  {
    return SLTag::sName[a2 - 64];
  }

  else
  {
    return "";
  }
}

void SLCFStringTextSource::SLCFStringTextSource(SLCFStringTextSource *this, const __CFString *a2)
{
  *this = &unk_287BD3998;
  *(this + 8) = 1;
  *(this + 2) = 0;
  *(this + 3) = CFStringCreateCopy(0, a2);
  *(this + 144) = 0;
}

{
  *this = &unk_287BD3998;
  *(this + 8) = 1;
  *(this + 2) = 0;
  *(this + 3) = CFStringCreateCopy(0, a2);
  *(this + 144) = 0;
}

void SLCFStringTextSource::~SLCFStringTextSource(SLCFStringTextSource *this)
{
  *this = &unk_287BD3998;
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  SLCFStringTextSource::~SLCFStringTextSource(this);

  JUMPOUT(0x26D6753C0);
}

uint64_t SLCFStringTextSource::Refill(SLCFStringTextSource *this, unsigned __int16 **a2, unsigned __int16 **a3, const unsigned __int16 *a4)
{
  v8 = *a2;
  if (*a2)
  {
    v9 = *a3 - v8;
    v10 = v9 >> 1;
    if (v9 >> 1 < 0)
    {
      SLCFStringTextSource::Refill();
    }

    memmove(this + 32, *a2, v9);
  }

  else
  {
    v8 = this + 32;
    if (*(this + 8) == 1)
    {
      *(this + 16) = 10;
      *(this + 8) = 0;
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = (this + 32);
  v12 = (this + 2 * v10 + 32);
  *a2 = (this + 32);
  *a3 = v12;
  v13 = *(this + 3);
  if (!v13)
  {
    *(this + 8) = 0;
    v13 = (*(*this + 24))(this);
    *(this + 3) = v13;
  }

  v14 = v10 < 0x80;
  if (v13 && v10 <= 0x7F)
  {
    do
    {
      Length = CFStringGetLength(v13);
      v16.location = *(this + 2);
      if (Length - v16.location >= 128 - v10)
      {
        v17 = 128 - v10;
      }

      else
      {
        v17 = Length - v16.location;
      }

      if (v17)
      {
        v16.length = v17;
        CFStringGetCharacters(*(this + 3), v16, &v11[v10]);
        v10 += v17;
        v18 = &v11[v10];
        *a3 = v18;
        *(this + 2) += v17;
      }

      else
      {
        v18 = *a3;
      }

      v13 = *(this + 3);
      if (v18 < this + 144)
      {
        CFRelease(v13);
        *(this + 8) = 0;
        v13 = (*(*this + 24))(this);
        *(this + 2) = 0;
        *(this + 3) = v13;
      }

      v14 = v10 < 128;
    }

    while (v13 && v10 < 128);
  }

  v19 = *a3;
  if (v11 >= *a3)
  {
    v21 = v8;
    goto LABEL_39;
  }

  v20 = 32;
  v21 = v8;
  while (1)
  {
    v22 = *v11;
    if ((v22 | 0x10) == 0x10)
    {
      if (v11 >= v12)
      {
        *v11 = 32;
      }

      else if (v11 == v19 - 1 && !*v11)
      {
        *a3 = --v19;
      }

      goto LABEL_36;
    }

    if (v22 == *a4)
    {
      break;
    }

LABEL_36:
    v20 += 2;
    v11 = (this + v20);
    if (this + v20 >= v19)
    {
      goto LABEL_39;
    }
  }

  if (!a4[1])
  {
LABEL_34:
    *(this + v20) = 16;
    a4 = &SLLexerInstance::sNoDelim;
    goto LABEL_36;
  }

  v23 = v20 + 2;
  if (v20 != 286)
  {
    if ((this + v23) == v19)
    {
      goto LABEL_39;
    }

    if (*(this + v23) != a4[1])
    {
      goto LABEL_36;
    }

    *v11 = 32;
    v20 += 2;
    goto LABEL_34;
  }

  *a3 = --v19;
  --*(this + 2);
LABEL_39:
  if (*(this + 3) == 0 && v14)
  {
    *v19 = 0;
    *a3 = v19 + 1;
  }

  return (v21 - *a2) >> 1;
}

void SLTokenTextSource::SLTokenTextSource(SLTokenTextSource *this, SLToken *a2)
{
  *this = &unk_287BD39C8;
  *(this + 1) = a2;
}

{
  *this = &unk_287BD39C8;
  *(this + 1) = a2;
}

uint64_t SLTokenTextSource::Refill(SLTokenTextSource *this, unsigned __int16 **a2, unsigned __int16 **a3, const unsigned __int16 *a4)
{
  v4 = *(*(this + 1) + 56);
  *a2 = v4;
  *a3 = (v4 + *(*(this + 1) + 64) - *(*(this + 1) + 56));
  return 0;
}

void SLLexerInstance::SLLexerInstance(SLLexerInstance *this, SLTextSource *a2, int a3)
{
  *this = &unk_287BD39F0;
  *(this + 1) = a2;
  *(this + 4) = a3;
  *(this + 3) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = &SLLexerInstance::sNoDelim;
  *(this + 44) = 256;
}

uint64_t SLLexerInstance::Refill(SLLexerInstance *this)
{
  result = (***(this + 1))(*(this + 1), this + 64, this + 40, *(this + 9));
  v3 = *(this + 3);
  if (v3)
  {
    v4 = v3 - 2 * result;
    v5 = *(this + 7) - 2 * result;
    *(this + 6) -= 2 * result;
    *(this + 7) = v5;
    *(this + 4) += result;
    v6 = *(this + 8);
  }

  else
  {
    v6 = *(this + 8);
    v4 = v6;
  }

  *(this + 3) = v4;
  *(this + 4) = v6;
  return result;
}

void SLLexerInstance::CreateToken(uint64_t this)
{
  v1 = *(this + 64);
  if ((*(this + 16) & 0x80000000) != 0 && v1 == *(this + 32))
  {
    *(this + 64) = v1 + 2;
  }

  v2 = *(this + 24);
  SLLexerInstance::CreateToken<unsigned short>(this);
}

void SLLexerInstance::CreateToken(SLLexerInstance *this, unsigned __int8 a2, unsigned int a3, const char *__s)
{
  strlen(__s);

  SLLexerInstance::CreateToken<char>(this);
}

void SLLexerInstance::CreateToken<char>(uint64_t a1)
{
  *(a1 + 89) = 0;
  v1 = *(a1 + 24);
  v2 = (SLChar::sLexFold[*v1 & 0x3F | (SLChar::sUniMap[*v1 >> 6] << 6)] + *v1);
  if (v2 <= 0x20)
  {
    v3 = ((1 << (LOBYTE(SLChar::sLexFold[*v1 & 0x3F | (SLChar::sUniMap[*v1 >> 6] << 6)]) + *v1)) & 0x100002601) == 0;
    LOBYTE(SLChar::sLexFold[*v1 & 0x3F | (SLChar::sUniMap[*v1 >> 6] << 6)]);
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3 || v2 == 8239;
  if (v4 || v2 == 160)
  {
    *(a1 + 89) = 1;
    v5 = 32;
  }

  else
  {
    v5 = *(v1 - 1);
  }

  *(a1 + 90) = v5;
  operator new();
}

void SLLexerInstance::CreateToken<unsigned short>(uint64_t a1)
{
  *(a1 + 89) = 0;
  v1 = *(a1 + 24);
  v2 = (SLChar::sLexFold[*v1 & 0x3F | (SLChar::sUniMap[*v1 >> 6] << 6)] + *v1);
  if (v2 <= 0x20)
  {
    v3 = ((1 << (LOBYTE(SLChar::sLexFold[*v1 & 0x3F | (SLChar::sUniMap[*v1 >> 6] << 6)]) + *v1)) & 0x100002601) == 0;
    LOBYTE(SLChar::sLexFold[*v1 & 0x3F | (SLChar::sUniMap[*v1 >> 6] << 6)]);
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3 || v2 == 8239;
  if (v4 || v2 == 160)
  {
    *(a1 + 89) = 1;
    v5 = 32;
  }

  else
  {
    v5 = *(v1 - 1);
  }

  *(a1 + 90) = v5;
  operator new();
}

double SLLexerImpl::SLLexerImpl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = &SLLexerInstance::sNoDelim;
  *(a1 + 88) = 256;
  *a1 = &unk_287BD3A40;
  *(a1 + 8) = a2;
  *(a1 + 92) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = a3;
  return result;
}

void SLLexerImpl::~SLLexerImpl(SLLexerImpl *this)
{
  *this = &unk_287BD3A40;
  v2 = *(this + 14);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  SLLexerImpl::~SLLexerImpl(this);

  JUMPOUT(0x26D6753C0);
}

uint64_t SLLexerImpl::SetDelim(SLLexerImpl *this, const unsigned __int16 *a2)
{
  *(this + 10) = *a2;
  result = this + 80;
  *(result - 8) = result;
  return result;
}

void *SLLexerImpl::SetErrorHandler(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 112) = result;
  return result;
}

uint64_t SLLexerImpl::Error(SLLexerImpl *this)
{
  result = *(this + 14);
  if (result)
  {
    return (*(result + 16))(result, ((*(this + 3) + 2 * *(this + 4) - *(this + 4)) >> 1) - 1);
  }

  return result;
}

unsigned __int16 *SLLexerImpl::SpaceDelimitedToken(SLLexerImpl *this, unsigned __int16 *a2, unsigned __int16 *a3, unsigned int *a4)
{
  result = a2;
  for (*a4 = 0; result < a3; ++result)
  {
    v5 = *result;
    if (v5 > 0x9F)
    {
      if (v5 != 8239 && v5 != 160)
      {
        break;
      }
    }

    else if (v5 != 9 && v5 != 32)
    {
      break;
    }
  }

  if (result < a3)
  {
    v6 = 1;
    v7 = result;
    do
    {
      v8 = *v7;
      if (v8 > 0x9F)
      {
        if (v8 == 160 || v8 == 8239)
        {
          return result;
        }
      }

      else if (v8 == 9 || v8 == 32)
      {
        return result;
      }

      ++v7;
      *a4 = v6++;
    }

    while (v7 < a3);
  }

  return result;
}

void SLLexerBuffer::SLLexerBuffer(SLLexerBuffer *this, SLLexer *a2, char a3)
{
  *this = &unk_287BD3A90;
  *(this + 1) = a2;
  *(this + 16) = a3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
}

{
  *this = &unk_287BD3A90;
  *(this + 1) = a2;
  *(this + 16) = a3;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
}

void SLLexerBuffer::~SLLexerBuffer(SLLexerBuffer *this)
{
  *this = &unk_287BD3A90;
  if (*(this + 16) == 1)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 56))(v2);
    }
  }

  for (i = *(this + 8); i; i = *(this + 8))
  {
    v4 = *(*(*(this + 4) + ((*(this + 7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(this + 7) & 0x1FFLL));
    ++*(this + 7);
    *(this + 8) = i - 1;
    std::deque<SLToken *>::__maybe_remove_front_spare[abi:ne200100](this + 24, 1);
    if (v4)
    {
      SLToken::~SLToken(v4);
      MEMORY[0x26D6753C0]();
    }
  }

  std::deque<SLToken *>::~deque[abi:ne200100](this + 3);
}

{
  SLLexerBuffer::~SLLexerBuffer(this);

  JUMPOUT(0x26D6753C0);
}

uint64_t *SLLexerBuffer::push_front(SLLexerBuffer *this, const SLTokenList *a2)
{
  v3 = *(this + 4);
  v4 = (v3 + 8 * (*(this + 7) >> 9));
  if (*(this + 5) == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4 + 8 * (*(this + 7) & 0x1FFLL);
  }

  v6 = *(a2 + 1);
  if (v6 == a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = *(a2 + 1);
    do
    {
      ++v7;
      v8 = *(v8 + 1);
    }

    while (v8 != a2);
  }

  return std::deque<SLToken *>::__insert_bidirectional[abi:ne200100]<std::__list_const_iterator<SLToken *,void *>>(this + 24, v4, v5, v6, a2, v7);
}

uint64_t (***SLLexerBuffer::operator[](void *a1, unint64_t a2))(void)
{
  if (a1[8] > a2)
  {
    return *(*(a1[4] + (((a1[7] + a2) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[7] + a2) & 0x1FF));
  }

  while (1)
  {
    result = a1[1];
    if (!result)
    {
      break;
    }

    v6 = (**result)(result);
    if (v6)
    {
      std::deque<SLToken *>::push_back(a1 + 3, &v6);
    }

    else
    {
      if (a1[8] != a2 || a2 && !*(*(a1[4] + (((a2 - 1 + a1[7]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a2 - 1 + a1[7]) & 0x1FF)))
      {
        return 0;
      }

      v5 = 0;
      std::deque<SLToken *>::push_back(a1 + 3, &v5);
    }

    if (a1[8] > a2)
    {
      return *(*(a1[4] + (((a1[7] + a2) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[7] + a2) & 0x1FF));
    }
  }

  return result;
}

void *std::deque<SLToken *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<SLToken *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void SLLexerChain::~SLLexerChain(SLLexerChain *this)
{
  *this = &unk_287BD3BB8;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 56))(v1);
  }
}

{
  *this = &unk_287BD3BB8;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 56))(v1);
  }

  JUMPOUT(0x26D6753C0);
}

void *std::vector<unsigned short>::__assign_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned short>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 2;
        *v15 = v16;
        v15 += 2;
        v14 += 2;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

_WORD *std::vector<unsigned short>::__assign_with_size[abi:ne200100]<char const*,char const*>(void *a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned short>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (v12 >= a4)
  {
    while (v5 != a3)
    {
      v17 = *v5++;
      *result++ = v17;
    }

    a1[1] = result;
  }

  else
  {
    v13 = &a2[v12];
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result++ = v14;
        --v12;
      }

      while (v12);
    }

    if (v13 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v11++ = v16;
        ++v15;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

uint64_t std::deque<SLToken *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<SLToken **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<SLToken **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::deque<SLToken *>::__insert_bidirectional[abi:ne200100]<std::__list_const_iterator<SLToken *,void *>>(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, unint64_t a6)
{
  v6 = a6;
  v10 = *(a1 + 32);
  v11 = v10 >> 9;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = (v12 + 8 * (v10 >> 9));
  if (v13 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  if (a3 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = ((a3 - *a2) >> 3) + ((a2 - v14) << 6) - ((v15 - *v14) >> 3);
  }

  v17 = *(a1 + 40);
  if (v16 < v17 - v16)
  {
    if (a6 > v10)
    {
      std::deque<SLToken *>::__add_front_capacity(a1, a6 - v10);
      v10 = *(a1 + 32);
      v12 = *(a1 + 8);
      v13 = *(a1 + 16);
      v11 = v10 >> 9;
    }

    v18 = (v12 + 8 * v11);
    if (v13 == v12)
    {
      v19 = 0;
    }

    else
    {
      v19 = *v18 + 8 * (v10 & 0x1FF);
    }

    v72.n128_u64[0] = v12 + 8 * v11;
    v72.n128_u64[1] = v19;
    v25 = v16 - v6;
    if (v16 >= v6)
    {
      v27 = a4;
      if (!v6)
      {
        goto LABEL_96;
      }

      goto LABEL_56;
    }

    if (v16 >= v6 >> 1)
    {
      v32 = v6 - v16;
      if ((v6 - v16) < 0)
      {
        v27 = a4;
        do
        {
          v27 = *v27;
          --v25;
        }

        while (v25);
      }

      else
      {
        if (!v32)
        {
          v27 = a4;
          goto LABEL_55;
        }

        v33 = v32 + 1;
        v27 = a4;
        do
        {
          v27 = v27[1];
          --v33;
        }

        while (v33 > 1);
      }
    }

    else if (v16)
    {
      v26 = v16;
      v27 = a5;
      do
      {
        v27 = *v27;
        --v26;
      }

      while (v26);
    }

    else
    {
      v27 = a5;
    }

    if (v27 != a4)
    {
      v34 = *(a1 + 40);
      v35 = v27;
      do
      {
        if (v19 == *v18)
        {
          v36 = *--v18;
          v19 = v36 + 4096;
        }

        v35 = *v35;
        *(v19 - 8) = v35[2];
        v19 -= 8;
        --v10;
        ++v34;
      }

      while (v35 != a4);
      *(a1 + 32) = v10;
      *(a1 + 40) = v34;
    }

LABEL_55:
    v6 = v16;
    if (!v16)
    {
      goto LABEL_96;
    }

LABEL_56:
    v37 = std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>::operator+[abi:ne200100](&v72, v6);
    v39 = v37;
    v40 = v38;
    v41 = v72.n128_u64[1];
    if (v72.n128_u64[1] != v38)
    {
      v42 = *(a1 + 32);
      v43 = v37;
      v44 = v38;
      do
      {
        if (v19 == *v18)
        {
          v45 = *--v18;
          v19 = v45 + 4096;
        }

        if (v44 == *v43)
        {
          v46 = *--v43;
          v44 = (v46 + 4096);
        }

        v47 = *(v44 - 1);
        v44 -= 8;
        *(v19 - 8) = v47;
        v19 -= 8;
        v42 = vaddq_s64(v42, xmmword_26B34D7E0);
        v41 = v72.n128_u64[1];
      }

      while (v44 != v72.n128_u64[1]);
      *(a1 + 32) = v42;
    }

    if (v6 < v16)
    {
      v48 = std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>::operator+[abi:ne200100](&v72, v16);
      v73 = v72;
      std::__for_each_segment[abi:ne200100]<std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>>>(v39, v40, v48, v49, &v73);
      v41 = v73.n128_u64[1];
      v72 = v73;
    }

    if (v27 != a5)
    {
      v50 = v72.n128_u64[0];
      do
      {
        *v41++ = v27[2];
        if ((v41 - *v50) == 4096)
        {
          v51 = v50[1];
          ++v50;
          v41 = v51;
        }

        v27 = v27[1];
      }

      while (v27 != a5);
    }

    goto LABEL_96;
  }

  v20 = ((v13 - v12) << 6) - 1;
  if (v13 == v12)
  {
    v20 = 0;
  }

  v21 = v10 + v17;
  v22 = v20 - v21;
  if (a6 > v22)
  {
    std::deque<SLToken *>::__add_back_capacity(a1, a6 - v22);
    v17 = *(a1 + 40);
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    v21 = *(a1 + 32) + v17;
  }

  v23 = (v12 + 8 * (v21 >> 9));
  if (v13 == v12)
  {
    v24 = 0;
  }

  else
  {
    v24 = (*v23 + 8 * (v21 & 0x1FF));
  }

  v72.n128_u64[0] = v12 + 8 * (v21 >> 9);
  v72.n128_u64[1] = v24;
  v28 = v17 - v16;
  v29 = v6 - (v17 - v16);
  if (v6 <= v17 - v16)
  {
    v31 = a5;
    if (!v6)
    {
      goto LABEL_96;
    }

    goto LABEL_81;
  }

  if (v28 >= v6 >> 1)
  {
    if (v29 < 1)
    {
      v52 = v28 - v6 + 1;
      v31 = a5;
      do
      {
        v31 = v31[1];
        --v52;
      }

      while (v52 > 1);
    }

    else
    {
      v31 = a5;
      do
      {
        v31 = *v31;
        --v29;
      }

      while (v29);
    }
  }

  else if (v28)
  {
    v30 = v28 + 1;
    v31 = a4;
    do
    {
      v31 = v31[1];
      --v30;
    }

    while (v30 > 1);
  }

  else
  {
    v31 = a4;
  }

  if (v31 != a5)
  {
    v53 = v31;
    do
    {
      *v24++ = v53[2];
      if ((v24 - *v23) == 4096)
      {
        v54 = v23[1];
        ++v23;
        v24 = v54;
      }

      v53 = v53[1];
      ++v17;
    }

    while (v53 != a5);
    *(a1 + 40) = v17;
  }

  v6 = v28;
  if (v28)
  {
LABEL_81:
    v55 = std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>::operator-[abi:ne200100](&v72, v6);
    v57 = v55;
    v58 = v56;
    v59 = v72.n128_u64[1];
    if (v72.n128_u64[1] != v56)
    {
      v60 = *(a1 + 40);
      v61 = v55;
      v62 = v56;
      do
      {
        *v24++ = *v62;
        if ((v24 - *v23) == 4096)
        {
          v63 = v23[1];
          ++v23;
          v24 = v63;
        }

        v62 += 8;
        if (&v62[-*v61] == 4096)
        {
          v64 = v61[1];
          ++v61;
          v62 = v64;
        }

        ++v60;
        v59 = v72.n128_u64[1];
      }

      while (v62 != v72.n128_u64[1]);
      *(a1 + 40) = v60;
    }

    if (v6 < v28)
    {
      v65 = std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>::operator-[abi:ne200100](&v72, v28);
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>(v65, v66, v57, v58, v72.n128_u64[0], v72.n128_u64[1], &v73);
      v59 = v74.n128_u64[1];
      v72 = v74;
    }

    if (v31 != a4)
    {
      v67 = v72.n128_u64[0];
      do
      {
        if (v59 == *v67)
        {
          v68 = *--v67;
          v59 = v68 + 4096;
        }

        v31 = *v31;
        *(v59 - 8) = v31[2];
        v59 -= 8;
      }

      while (v31 != a4);
    }
  }

LABEL_96:
  v69 = *(a1 + 8);
  if (*(a1 + 16) == v69)
  {
    v70 = 0;
  }

  else
  {
    v70 = *(v69 + 8 * (*(a1 + 32) >> 9)) + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  v73.n128_u64[0] = v69 + 8 * (*(a1 + 32) >> 9);
  v73.n128_u64[1] = v70;
  return std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>::operator+[abi:ne200100](&v73, v16);
}

const void **std::deque<SLToken *>::__add_front_capacity(const void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 6) - 1;
  }

  if ((v6 & 0x1FF) != 0)
  {
    v8 = (v6 >> 9) + 1;
  }

  else
  {
    v8 = v6 >> 9;
  }

  v9 = result[4];
  v10 = v7 - &v9[result[5]];
  if (v8 >= v10 >> 9)
  {
    v11 = v10 >> 9;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 9)
  {
    for (result[4] = &v9[512 * v11]; v11; --v11)
    {
      v15 = v2[2];
      *&v17[0] = *(v15 - 1);
      v2[2] = v15 - 1;
      result = std::__split_buffer<SLToken **>::emplace_front<SLToken **&>(v2, v17);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = result[3] - *result;
    if (v8 - v11 > (v13 >> 3) - (v5 >> 3))
    {
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v14 = v12 + (v5 >> 3);
      }

      else
      {
        v14 = v13 >> 2;
      }

      v18 = result;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<SLToken **>>(result, v14);
      }

      memset(v17, 0, sizeof(v17));
      operator new();
    }

    if (v12)
    {
      if (v3 != *result)
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = &v9[512 * v11]; v11; --v11)
    {
      v16 = v2[2];
      *&v17[0] = *(v16 - 1);
      v2[2] = v16 - 1;
      result = std::__split_buffer<SLToken **>::emplace_front<SLToken **&>(v2, v17);
    }
  }

  return result;
}

void sub_26B2E5840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>::operator+[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

void *std::deque<SLToken *>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<SLToken **>::emplace_back<SLToken **>(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<SLToken **>>(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<SLToken **>::emplace_back<SLToken **>(v2, v16);
    }
  }

  return result;
}

void sub_26B2E5BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>::operator-[abi:ne200100](uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = ((*(a1 + 8) - *result) >> 3) - a2;
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

const void **std::__split_buffer<SLToken **>::emplace_front<SLToken **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<SLToken **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<SLToken **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<SLToken **>::emplace_back<SLToken **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<SLToken **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<SLToken **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<SLToken **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double std::__for_each_segment[abi:ne200100]<std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>>>(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,SLToken **,SLToken **,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,SLToken **,SLToken **,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,SLToken **,SLToken **,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *std::__copy_move_unwrap_iters[abi:ne200100]<std::__move_impl<std::_ClassicAlgPolicy>,SLToken **,SLToken **,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 3 >= v11 >> 3 ? v11 >> 3 : (a3 - v9) >> 3;
      if (v12)
      {
        __src = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

__n128 std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<SLToken **,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<SLToken **,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<SLToken **,std::__deque_iterator<SLToken *,SLToken **,SLToken *&,SLToken ***,long,512l>,0>@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a1) >> 3;
      }

      v11 -= 8 * v13;
      a4 -= 8 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 8 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *--v6;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = v6[1];
      ++v6;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

void *std::deque<SLToken *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<SLToken **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<SLToken **>::emplace_back<SLToken **>(a1, &v10);
}

void sub_26B2E65AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFBundle *SLDictLookup::Create(SLDictLookup *this, const __CFLocale *a2)
{
  Value = CFLocaleGetValue(this, *MEMORY[0x277CBEED0]);
  if (CFStringCompare(Value, @"en", 0))
  {
    SLDictLookup::Create();
  }

  result = SLGetSpeechDictionaryBundle();
  if (result)
  {
    v5 = result;
    CopyLocalizedResourceURL(result, @"PrefixDictionary", v4);
    CopyLocalizedResourceURL(v5, @"CartLite", v6);
    CopyLocalizedResourceURL(v5, @"CartNames", v7);
    operator new();
  }

  return result;
}

CFURLRef CopyLocalizedResourceURL(__CFBundle *a1, const __CFString *a2, const __CFString *a3)
{
  v4 = CFStringCreateWithFormat(0, 0, @"%@Eng", a2);
  v5 = CFBundleCopyResourceURL(a1, v4, 0, 0);
  CFRelease(v4);
  return v5;
}

CFArrayRef SLDictLookup::CreatePhonemeSymbols(SLDictLookup *this, const __CFLocale *a2)
{
  Value = CFLocaleGetValue(this, *MEMORY[0x277CBEED0]);
  if (CFStringCompare(Value, @"en", 0))
  {
    SLDictLookup::CreatePhonemeSymbols();
  }

  v3 = SLGetSpeechDictionaryBundle();
  if (!v3)
  {
    return 0;
  }

  v5 = CopyLocalizedResourceURL(v3, @"PhonemeSymbols", v4);
  if (!v5)
  {
    return 0;
  }

  v7 = v5;
  v8 = SLMMapCache::Map(v5, 0, v6);
  CFRelease(v7);
  if (v8 == -1)
  {
    return 0;
  }

  __p = 0;
  v33 = 0;
  v34 = 0;
  if (*v8)
  {
    v10 = __rev16(*v8);
    v11 = v8 + 54;
    do
    {
      *v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      valuePtr = bswap32(*(v11 - 26)) >> 16;
      v12 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
      SLCFDictionaryBuilder::push_back(&v29, @"Opcode", v12);
      v13 = CFStringCreateWithPascalString(0, v11 - 50, 0x8000100u);
      SLCFDictionaryBuilder::push_back(&v29, @"Symbol", v13);
      v14 = CFStringCreateWithPascalString(0, v11 - 34, 0x8000100u);
      SLCFDictionaryBuilder::push_back(&v29, @"Example", v14);
      valuePtr = bswap32(*(v11 - 1)) >> 16;
      v15 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
      SLCFDictionaryBuilder::push_back(&v29, @"HiliteStart", v15);
      valuePtr = bswap32(*v11) >> 16;
      v16 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
      SLCFDictionaryBuilder::push_back(&v29, @"HiliteEnd", v16);
      Dictionary = SLCFDictionaryBuilder::CreateDictionary(&v29);
      v18 = v33;
      if (v33 >= v34)
      {
        v20 = (v33 - __p) >> 3;
        if ((v20 + 1) >> 61)
        {
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        v21 = (v34 - __p) >> 2;
        if (v21 <= v20 + 1)
        {
          v21 = v20 + 1;
        }

        if (v34 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v22 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(&__p, v22);
        }

        v23 = (8 * v20);
        *v23 = Dictionary;
        v19 = 8 * v20 + 8;
        v24 = v23 - (v33 - __p);
        memcpy(v24, __p, v33 - __p);
        v25 = __p;
        __p = v24;
        v33 = v19;
        v34 = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v33 = Dictionary;
        v19 = (v18 + 8);
      }

      v33 = v19;
      if (v30[1])
      {
        *&v31 = v30[1];
        operator delete(v30[1]);
      }

      SLCFArrayBuilder::~SLCFArrayBuilder(&v29);
      v11 += 54;
      --v10;
    }

    while (v10);
  }

  SLMMapCache::Unmap(v8, v9);
  Array = SLCFArrayBuilder::CreateArray(&__p);
  SLCFArrayBuilder::~SLCFArrayBuilder(&__p);
  return Array;
}

void sub_26B2E6C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  SLCFArrayBuilder::~SLCFArrayBuilder(va);
  _Unwind_Resume(a1);
}

void SLDictLookup::~SLDictLookup(SLDictLookup *this)
{
  *this = &unk_287BD3C20;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  SLDictLookup::~SLDictLookup(this);

  JUMPOUT(0x26D6753C0);
}

uint64_t SLDictLookup::Lookup(SLDictLookup *this, SLDictionary *a2, const char *a3, uint64_t a4, SLToken *a5, int a6)
{
  SLWordBuilder::SLWordBuilder(v13);
  v13[0] = &unk_287BD3C40;
  memset(&v13[2], 0, 24);
  v13[5] = a5;
  v13[7] = 0;
  v14 = 1;
  if (a6)
  {
    operator new();
  }

  v11 = (**a2)(a2, a3, a4, v13, 0);
  if (v11)
  {
    SLTokenBuilder::Build(v13);
  }

  SLTokenBuilder::~SLTokenBuilder(v13);
  return v11;
}