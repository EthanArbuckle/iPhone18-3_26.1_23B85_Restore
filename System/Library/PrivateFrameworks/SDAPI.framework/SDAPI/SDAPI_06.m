void sub_2625BE518(_Unwind_Exception *a1)
{
  v5 = v3;
  std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::destroy(v5, *(v1 + 160));
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

char *TStringParam::get(TStringParam *this)
{
  ActiveConfigHandle = TParam::getActiveConfigHandle(this);
  v3 = this + 24 * TParam::getValidConfig(this, ActiveConfigHandle);
  result = v3 + 152;
  if (v3[175] < 0)
  {
    return *result;
  }

  return result;
}

uint64_t TAligner<wchar_t const,TRneCost>::align<wchar_t const*>(uint64_t a1, int *a2, uint64_t a3, int *a4, uint64_t a5)
{
  v6 = (a3 - a2) >> 2;
  v7 = (a5 - a4) >> 2;
  v42 = v7 + 1;
  if (v7 + 1 >= (v6 + 1))
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = v6 + 1;
  if (v7 + 1 >= (v6 + 1))
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v6 + 1;
  }

  if (v7 + 1 < (v6 + 1))
  {
    v11 = a2;
  }

  else
  {
    v11 = a4;
  }

  if (v7 + 1 < (v6 + 1))
  {
    v12 = a4;
  }

  else
  {
    v12 = a2;
  }

  v37 = v12;
  v38 = v10;
  std::vector<unsigned long>::resize((a1 + 8), 3 * v8);
  std::vector<unsigned short>::resize((a1 + 32), 2 * v8);
  v13 = *(a1 + 8);
  v14 = *(a1 + 32);
  v15 = &v13[v8];
  *v15 = 0;
  *v13 = 0;
  *v14 = 0;
  if (v8 >= 2)
  {
    v16 = *v15 + 2;
    for (i = 1; i != v8; ++i)
    {
      v13[i] = 2;
      v15[i] = v16;
      v14[i] = i;
      v16 += 2;
    }
  }

  if (v38 >= 2)
  {
    v18 = &v13[2 * v8];
    v19 = 1;
    v20 = &v14[v8];
    while (1)
    {
      v39 = v19;
      v40 = v15;
      v21 = v18;
      v22 = v20;
      *v18 = *v15 + 2;
      v41 = v14;
      *v20 = *v14 + 1;
      if (v8 >= 2)
      {
        break;
      }

LABEL_34:
      v18 = v40;
      v19 = v39 + 1;
      ++v11;
      v20 = v41;
      v14 = v22;
      v15 = v21;
      if (v39 + 1 == v38)
      {
        goto LABEL_37;
      }
    }

    v23 = v15 + 1;
    v24 = v14 + 1;
    v25 = 1;
    v26 = v37;
    while (1)
    {
      if (v42 >= v9)
      {
        v27 = v26;
      }

      else
      {
        v27 = v11;
      }

      if (v42 >= v9)
      {
        v28 = v11;
      }

      else
      {
        v28 = v26;
      }

      SubstitutionCost = TRneCost::getSubstitutionCost(a1, *v27, *v28);
      if (v30 == -1)
      {
        v33 = *v23 + 2;
        v31 = v25 - 1;
      }

      else
      {
        v31 = v25 - 1;
        v32 = *(v23 - 1) + v30;
        v21[v25] = v32;
        v22[v25] = *(v24 - 1) + ((SubstitutionCost & 1) == 0);
        v33 = *v23 + 2;
        if (v33 >= v32)
        {
          goto LABEL_31;
        }
      }

      v21[v25] = v33;
      v22[v25] = *v24 + 1;
      v32 = v33;
LABEL_31:
      v34 = *(*(a1 + 8) + 8 * v25) + v21[v31];
      if (v34 < v32)
      {
        v21[v25] = v34;
        v22[v25] = v22[v31] + 1;
      }

      ++v25;
      ++v26;
      ++v23;
      ++v24;
      if (v8 == v25)
      {
        goto LABEL_34;
      }
    }
  }

  v21 = &v13[v8];
  v22 = v14;
LABEL_37:
  result = v21[v8 - 1];
  v36 = v22[v8 - 1];
  return result;
}

void std::vector<unsigned long>::resize(void *a1, unint64_t a2)
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
    std::vector<unsigned long>::__append(a1, a2 - v2);
  }
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

uint64_t TRneCost::getSubstitutionCost(uint64_t a1, int a2, int a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  v4 = *(*a1 + 16);
  if (v4)
  {
    if (a2 < 0x10000)
    {
      v5 = *(v4 + 4 * a2);
    }

    if (a3 < 0x10000)
    {
      v6 = *(v4 + 4 * a3);
    }
  }

  return 0;
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2)
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
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *TAligner<wchar_t const,TRneCost>::~TAligner(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;
    operator delete(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    a1[17] = v4;
    operator delete(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    a1[11] = v6;
    operator delete(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    a1[8] = v7;
    operator delete(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    a1[5] = v8;
    operator delete(v8);
  }

  v9 = a1[1];
  if (v9)
  {
    a1[2] = v9;
    operator delete(v9);
  }

  return a1;
}

void *TOutputStream::TOutputStream(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  v5 = (a2 + *(*a2 - 24));
  v6 = std::locale::classic();
  std::ios_base::getloc(v5);
  std::ios_base::imbue(v5, v6);
  std::locale::~locale(&v11);
  rdbuf = v5->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, v6);
    std::locale::locale(&v10, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, v6);
    std::locale::~locale(&v10);
  }

  std::locale::~locale(&v9);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x26672B0F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2625BED9C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t TRegisterable<TLatticeProcessor>::getRegistry()
{
  {
    operator new();
  }

  return TRegisterable<TLatticeProcessor>::getRegistry(void)::s_registry;
}

uint64_t TBaseRegistry<TLatticeProcessor *>::registerInstance(void *a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = a1[2];
  }

  else
  {
    v4 = a1[1];
    a1[2] = v4;
  }

  v5 = a1[3];
  if (v4 >= v5)
  {
    v7 = a1[1];
    v8 = (v4 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>((a1 + 1), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[1];
    v14 = a1[2] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[1];
    a1[1] = v15;
    a1[2] = v6;
    a1[3] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v4 = a2;
    v6 = (v4 + 1);
  }

  a1[2] = v6;
  v17 = a1[1];
  ++*a1;
  return (v6 - v17) >> 3;
}

void *std::vector<TLatticeConstructionTransData>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<TLatticeConstructionTransData>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2625BF0D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TLatticeConstructionTransData>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TLatticeConstructionTransData>>(a1, a2);
  }

  std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TLatticeConstructionTransData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x26672B0F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_2625BF228(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t AdaptConfig::writeObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v7 = *a1;
  writeObject(a2, &v7, a3);
  v7 = *(a1 + 4);
  writeObject(a2, &v7, a3);
  writeObject(a2, (a1 + 8), a3);
  writeObject(a2, (a1 + 9), a3);
  writeObject(a2, (a1 + 10), a3);
  writeObject(a2, (a1 + 11), a3);
  writeObject(a2, (a1 + 12), a3);
  return writeObject(a2, (a1 + 13), a3);
}

uint64_t AdaptStats::writeObject(AdaptStats *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this + 2, a3);
  writeObject(a2, this + 3, a3);
  writeObject(a2, this + 10, a3);
  writeObject(a2, this + 4, a3);

  return writeObject<double>(a2, this, a3);
}

void *AdaptConfig::clear(void *this)
{
  *(this + 6) = 0;
  *this = 0;
  return this;
}

double AdaptStats::update(AdaptStats *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  result = *(*this + 8 * a2) + a3 * *(this + 4) / a4;
  *(*this + 8 * a2) = result;
  return result;
}

void readObject<double>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  readObject(a1, &v8, a3);
  v6 = v8;
  v7 = *(a2 + 12);
  if (v8 > v7)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a2, v8 - v7, 0);
  }

  *(a2 + 8) = v6;
  readObjectArray(a1, *a2, v6, a3);
}

void (***AdaptStatsHistory::saveASB(void (***this)(void), DFile *a2, DFileChecksums *a3, char a4, int a5))(void)
{
  if ((a4 & 1) == 0)
  {
    v5 = this;
    if (*(this + 2))
    {
      v8 = OpenAndWriteMrecHeader(a2, 1u, a5, "MRASB!?", 19, 2);
      v12 = *(v5 + 8);
      v13 = 0;
      writeObject(v8, &v12, &v13);
      if (*(v5 + 8))
      {
        v9 = 0;
        do
        {
          v10 = *(*v5 + 8 * v9);
          AdaptConfig::writeObject(v10, v8, &v13);
          AdaptStats::writeObject((v10 + 16), v8, &v13);
          ++v9;
        }

        while (v9 < *(v5 + 8));
      }

      writeObjectChecksum(v8, &v13);
      CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
      DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 1u, v13);
      return DgnDelete<DgnStream>(v8);
    }
  }

  return this;
}

void *DgnIOwnArray<AdaptConfigAndStats *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<AdaptConfigAndStats>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

uint64_t sizeObject<AdaptConfigAndStats *>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += sizeObject<unsigned long long>(v10 + 16, a2) + 42;
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

uint64_t DgnDelete<AdaptConfigAndStats>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnPrimArray<unsigned int>::~DgnPrimArray(result + 16);
    *(v1 + 6) = 0;
    *v1 = 0;

    return MemChunkFree(v1, 0);
  }

  return result;
}

unint64_t applyNewPronSetHeuristics(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = *(result + 8);
  if (v5)
  {
    v10 = result;
    for (i = 0; i < v5; ++i)
    {
      if (*(*v10 + 16 * i + 8) < a5)
      {
        v12 = i;
        result = DgnArray<DgnPrimArray<unsigned short>>::removeIndexKeepOrder(v10, i);
        LODWORD(v13) = *(a4 + 8) - 1;
        if (v13 > i)
        {
          v14 = (*a4 + 4 * i + 4);
          v15 = i;
          do
          {
            ++v15;
            *(v14 - 1) = *v14;
            v13 = (*(a4 + 8) - 1);
            ++v14;
          }

          while (v15 < v13);
        }

        *(a4 + 8) = v13;
        if (a2)
        {
          LODWORD(v16) = *(a2 + 8) - 1;
          if (v16 > i)
          {
            v17 = i;
            do
            {
              *(*a2 + v17) = *(*a2 + v17 + 1);
              v16 = (*(a2 + 8) - 1);
              ++v17;
            }

            while (v17 < v16);
          }

          *(a2 + 8) = v16;
          LODWORD(v16) = *(a3 + 8) - 1;
          if (v16 > i)
          {
            do
            {
              *(*a3 + v12) = *(*a3 + v12 + 1);
              v16 = (*(a3 + 8) - 1);
              ++v12;
            }

            while (v12 < v16);
          }

          *(a3 + 8) = v16;
        }

        --i;
        v5 = *(v10 + 8);
      }
    }
  }

  return result;
}

unint64_t DgnArray<DgnPrimArray<unsigned short>>::removeIndexKeepOrder(unint64_t result, unsigned int a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = v3 - 1;
  if (v3 - 1 > a2)
  {
    v5 = 16 * a2;
    v6 = a2;
    do
    {
      ++v6;
      result = DgnPrimArray<unsigned short>::copyArraySlice(*v2 + v5, (*v2 + v5 + 16), 0, *(*v2 + v5 + 24));
      v3 = *(v2 + 8);
      v5 += 16;
    }

    while (v6 < (v3 - 1));
    v4 = v3 - 1;
  }

  if (v3 != 0x80000000)
  {
    if (v3)
    {
      v10 = v3;
      v11 = 16 * v3 - 16;
      do
      {
        --v10;
        result = DgnPrimArray<unsigned int>::~DgnPrimArray(*v2 + v11);
        v11 -= 16;
      }

      while (v10 > v4);
    }

    else
    {
      v7 = 0;
      v8 = v4;
      do
      {
        v9 = (*v2 + v7);
        *v9 = 0;
        v9[1] = 0;
        v7 += 16;
        --v8;
      }

      while (v8);
    }
  }

  *(v2 + 8) = v4;
  return result;
}

uint64_t permuteToAltProns(uint64_t a1)
{
  v2 = *a1;
  v20 = 0;
  v21 = 0;
  DgnPrimArray<int>::copyArraySlice(&v20, v2, 0, *(v2 + 8));
  if (v21)
  {
    v9 = 0;
    v10 = ModelMgr::smpModelMgr;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      v11 = *(v20 + 4 * v9);
      VocOrThrow = ModelMgr::getVocOrThrow(v10, v11 >> 25, v3, v4, v5, v6, v7, v8);
      WordList::lookupAll(*(VocOrThrow + 48), v11 & 0xFFFFFF, &v18);
      if (v19 >= 2)
      {
        DgnPrimArray<int>::copyArraySlice(&v16, &v20, 0, v21);
        *(v16 + 4 * v9) = v11 & 0xFE000000 | *(v18 + 4) & 0xFFFFFF;
        if (DgnArray<DgnPrimArray<unsigned int>>::find(a1, &v16) == -1)
        {
          v13 = *(a1 + 8);
          if (v13 == *(a1 + 12))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(a1, 1, 1);
            v13 = *(a1 + 8);
          }

          v14 = (*a1 + 16 * v13);
          *v14 = 0;
          v14[1] = 0;
          DgnPrimArray<int>::copyArraySlice(v14, &v16, 0, v17);
          ++*(a1 + 8);
        }
      }

      ++v9;
    }

    while (v9 < v21);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v18);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v20);
}

void sub_2625BFD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a13);
  _Unwind_Resume(a1);
}

uint64_t GssResults::GssResults(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, void *a6, uint64_t a7, unsigned int a8)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  DgnArray<DgnPrimArray<unsigned int>>::copyArraySlice(a1, a2, 0, *(a2 + 8));
  *(a1 + 16) = a3;
  *(a1 + 20) = a5;
  GssResults::getChoiceWords(a1, a6, a7, a4);
  GssResults::getWordProns(a1, a8);
  return a1;
}

void sub_2625BFE38(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v6);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v3);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v2);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1);
  _Unwind_Resume(a1);
}

unsigned int *GssResults::getChoiceWords(unsigned int *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = result;
  v5 = *(a4 + 8);
  v6 = result[8];
  if (v6 >= 1)
  {
    v7 = 16 * v6 - 16;
    do
    {
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*(v4 + 3) + v7);
      v7 -= 16;
    }

    while (v7 != -16);
  }

  v8 = 0;
  v4[8] = 0;
  v9 = v4[9];
  if (v5 <= v9 || (result = DgnArray<DgnPrimArray<double>>::reallocElts((v4 + 6), v5 - v9, 0), v8 = v4[8], v8 <= v5))
  {
    if (v8 < v5)
    {
      v12 = v5 - v8;
      v13 = 16 * v8;
      do
      {
        v14 = (*(v4 + 3) + v13);
        *v14 = 0;
        v14[1] = 0;
        v13 += 16;
        --v12;
      }

      while (v12);
    }

LABEL_13:
    v4[8] = v5;
    if (!v5)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v8 > v5)
  {
    v10 = v8;
    v11 = 16 * v8 - 16;
    do
    {
      --v10;
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*(v4 + 3) + v11);
      v11 -= 16;
    }

    while (v10 > v5);
    goto LABEL_13;
  }

  v4[8] = v5;
LABEL_14:
  v15 = 0;
  v30 = v5;
  do
  {
    v16 = *a4 + 48 * v15;
    v17 = *(v16 + 8);
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = *v16 + v18;
        if (*v21 != 1)
        {
          v22 = *(v21 + 4);
          v23 = *(v21 + 8);
          v24 = *(v21 + 12);
          v34 = 0;
          if (v20 == v4[4])
          {
            v25 = a3;
          }

          else
          {
            v25 = 0;
          }

          result = checkSpecInGrammar(v23, *(*a2 + 8 * v20), v25, &v34 + 1, &v34);
          if (v34 & 0x100) != 0 || (v34)
          {
            v26 = v20;
          }

          else
          {
            v26 = (v20 + 1);
            if (v26 == v4[4])
            {
              v29 = a3;
            }

            else
            {
              v29 = 0;
            }

            result = checkSpecInGrammar(v23, *(*a2 + 8 * v26), v29, &v34 + 1, &v34);
            if (v26 == v4[4] && (v34 & 1) == 0)
            {
              v26 = (v20 + 2);
              result = *(*a2 + 8 * v26);
              v35 = v23;
              if (result)
              {
                result = (*(*result + 32))(result, &v35);
              }
            }
          }

          if (v26 == v4[4])
          {
            v27 = *(v4 + 3) + 16 * v15;
            v28 = *(v27 + 8);
            if (v28 == *(v27 + 12))
            {
              result = DgnPrimArray<unsigned int>::reallocElts(*(v4 + 3) + 16 * v15, 1, 1);
              v28 = *(v27 + 8);
            }

            *(*v27 + 4 * v28) = v24 & 0xFFFFFF | (v22 << 25);
            ++*(v27 + 8);
          }

          v17 = *(v16 + 8);
          v20 = v26;
        }

        ++v19;
        v18 += 96;
      }

      while (v19 < v17);
    }

    ++v15;
  }

  while (v15 != v30);
  return result;
}

void *GssResults::getWordProns(GssResults *this, unsigned int a2)
{
  v3 = *(this + 8);
  v4 = ModelMgr::smpModelMgr;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v39 = v3;
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(this + 3) + 16 * v6;
      if (*(v7 + 8))
      {
        if (v5 >= 1)
        {
          v8 = 16 * v5 - 16;
          do
          {
            DgnPrimArray<unsigned int>::~DgnPrimArray(v44 + v8);
            v8 -= 16;
          }

          while (v8 != -16);
        }

        LODWORD(v45) = 0;
        if (HIDWORD(v45))
        {
          v9 = 0;
        }

        else
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v44, 1, 1);
          v9 = v45;
        }

        v10 = (v44 + 16 * v9);
        *v10 = 0;
        v10[1] = 0;
        DgnPrimArray<int>::copyArraySlice(v10, v7, 0, *(v7 + 8));
        v17 = v45 + 1;
        LODWORD(v45) = v45 + 1;
        if ((*(this + 20) & 1) == 0)
        {
          permuteToAltProns(&v44);
          v17 = v45;
        }

        if (v17)
        {
          v18 = 0;
          do
          {
            v19 = v44 + 16 * v18;
            LODWORD(v43) = 0;
            if (*(v19 + 8))
            {
              v20 = 0;
              PronPredecessorSeedCategory = -2;
              PronSuccessorSeedCategory = -2;
              do
              {
                v23 = *(*v19 + 4 * v20);
                v24 = *(ModelMgr::getVocOrThrow(v4, v23 >> 25, v11, v12, v13, v14, v15, v16) + 48);
                WordList::getPronWithWB(v24, v23 & 0xFFFFFF, &v40);
                if (!v20)
                {
                  PronSuccessorSeedCategory = WordList::getPronSuccessorSeedCategory(v24, v23 & 0xFFFFFF);
                }

                if (v20 == *(v19 + 8) - 1)
                {
                  PronPredecessorSeedCategory = WordList::getPronPredecessorSeedCategory(v24, v23 & 0xFFFFFF);
                }

                v25 = v41;
                if (v41)
                {
                  v26 = v43;
                  if ((v43 + v41) <= HIDWORD(v43) || (DgnPrimArray<short>::reallocElts(&v42, (v43 + v41 - HIDWORD(v43)), 1), v25 = v41, v26 = v43, v41))
                  {
                    v27 = 0;
                    v28 = v40;
                    v29 = v42;
                    do
                    {
                      *(v29 + 2 * (v26 + v27)) = *(v28 + 2 * v27);
                      ++v27;
                    }

                    while (v25 != v27);
                  }

                  LODWORD(v43) = v26 + v25;
                }

                ++v20;
              }

              while (v20 < *(v19 + 8));
              if (v43 && DgnArray<DgnPrimArray<unsigned short>>::find(this + 5, &v42) == -1)
              {
                v30 = *(this + 12);
                if (v30 == *(this + 13))
                {
                  DgnArray<DgnPrimArray<double>>::reallocElts(this + 40, 1, 1);
                  v30 = *(this + 12);
                }

                v31 = (*(this + 5) + 16 * v30);
                *v31 = 0;
                v31[1] = 0;
                DgnPrimArray<unsigned short>::copyArraySlice(v31, &v42, 0, v43);
                ++*(this + 12);
                v32 = *(this + 24);
                if (v32 == *(this + 25))
                {
                  DgnPrimArray<unsigned int>::reallocElts(this + 88, 1, 1);
                  v32 = *(this + 24);
                }

                *(*(this + 11) + 4 * v32) = v6;
                ++*(this + 24);
                if (PronPredecessorSeedCategory != 254)
                {
                  v33 = *(this + 16);
                  if (v33 == *(this + 17))
                  {
                    DgnPrimArray<char>::reallocElts(this + 56, 1, 1);
                    v33 = *(this + 16);
                  }

                  *(*(this + 7) + v33) = PronPredecessorSeedCategory;
                  ++*(this + 16);
                  v34 = *(this + 20);
                  if (v34 == *(this + 21))
                  {
                    DgnPrimArray<char>::reallocElts(this + 72, 1, 1);
                    v34 = *(this + 20);
                  }

                  *(*(this + 9) + v34) = PronSuccessorSeedCategory;
                  ++*(this + 20);
                }
              }
            }

            ++v18;
            v5 = v45;
          }

          while (v18 < v45);
        }

        else
        {
          v5 = 0;
        }
      }

      ++v6;
    }

    while (v6 != v39);
  }

  if (*(this + 16))
  {
    v35 = this + 56;
  }

  else
  {
    v35 = 0;
  }

  if (*(this + 20))
  {
    v36 = this + 72;
  }

  else
  {
    v36 = 0;
  }

  applyNewPronSetHeuristics(this + 40, v35, v36, this + 88, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  return DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v44);
}

void sub_2625C04B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va2);
  _Unwind_Resume(a1);
}

void GssResults::~GssResults(GssResults *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 88);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 72);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 56);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 40);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 24);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this);
}

uint64_t checkSpecInGrammar(int a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v10 = a1;
  if (a2)
  {
    v8 = (*(*a2 + 32))(a2, &v10);
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
  if (a3)
  {
    result = (*(*a3 + 32))(a3, &v10);
  }

  else
  {
    result = 0;
  }

  *a5 = result;
  return result;
}

uint64_t GssResults::updateWordProns(uint64_t a1, unsigned int a2, unsigned int a3, int a4, _DWORD *a5, uint64_t a6)
{
  v6 = ModelMgr::smpModelMgr;
  *a5 = 0;
  if (!*(a1 + 48))
  {
    return 4;
  }

  v13 = *a1 + 16 * *(a1 + 16);
  v39[0] = 0;
  v39[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v39, v13, 0, *(v13 + 8));
  v14 = *v39[0];
  v26 = *(ModelMgr::getVocOrThrow(v6, *v39[0] >> 25, v15, v16, v17, v18, v19, v20) + 48);
  if (a4)
  {
    ModelMgr::deleteWordClientProns(v6, v14 >> 25, v14 & 0xFFFFFF, v21, v22, v23, v24, v25);
    ModelMgr::rebuildAllStalePrefilterers(v6);
  }

  NumClientProns = WordList::getNumClientProns(v26, v14 & 0xFFFFFF);
  v28 = a3 - NumClientProns;
  if (a3 <= NumClientProns)
  {
    v31 = 3;
  }

  else
  {
    if (v28 >= a2)
    {
      v28 = a2;
    }

    v38[0] = 0;
    v38[1] = 0;
    v37[0] = 0;
    v37[1] = 0;
    v36[0] = 0;
    v36[1] = 0;
    if (*(a1 + 20))
    {
      v29 = "GuessPronsAcoustic";
    }

    else
    {
      v29 = "GuessPronsNonAcoustic";
    }

    ModelMgr::addClientPronsAvoidDuplicates(v6, v14 >> 25, (v14 & 0xFFFFFF), v38, v37, a1 + 40, (a1 + 56), (a1 + 72), v28, v29, v36);
    v30 = WordList::getNumClientProns(v26, v14 & 0xFFFFFF);
    if (v30 == NumClientProns)
    {
      v31 = 2;
    }

    else
    {
      *a5 = v30 - NumClientProns;
      ModelMgr::rebuildAllStalePrefilterers(v6);
      if (a6 && *a5)
      {
        v32 = 0;
        v33 = *(a6 + 8);
        do
        {
          v34 = *(*(a1 + 88) + 4 * *(v36[0] + 4 * v32));
          if (v33 == *(a6 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
            v33 = *(a6 + 8);
          }

          *(*a6 + 4 * v33) = v34;
          v33 = *(a6 + 8) + 1;
          *(a6 + 8) = v33;
          ++v32;
        }

        while (v32 < *a5);
      }

      v31 = 1;
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v36);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v37);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v38);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v39);
  return v31;
}

void sub_2625C0814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  _Unwind_Resume(a1);
}

uint64_t DgnArray<DgnPrimArray<unsigned int>>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*v7 + v9);
      v9 -= 16;
    }

    while (v9 != -16);
  }

  *(v7 + 8) = 0;
  v10 = *(v7 + 12);
  if (a4 <= v10)
  {
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v7, a4 - v10, 0);
    v11 = *(v7 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    v14 = *a2 + 16 * a3;
    v15 = (*v7 + 16 * v12);
    *v15 = 0;
    v15[1] = 0;
    result = DgnPrimArray<int>::copyArraySlice(v15, v14, 0, *(v14 + 8));
    v12 = *(v7 + 8) + 1;
    *(v7 + 8) = v12;
    ++a3;
    --v13;
  }

  while (v13);
  if (v12 > a4)
  {
    if (v12 > a4)
    {
      v16 = v12;
      v17 = 16 * v12 - 16;
      do
      {
        --v16;
        result = DgnPrimArray<unsigned int>::~DgnPrimArray(*v7 + v17);
        v17 -= 16;
      }

      while (v16 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v12 < a4)
  {
    v18 = a4 - v12;
    v19 = 16 * v12;
    do
    {
      v20 = (*v7 + v19);
      *v20 = 0;
      v20[1] = 0;
      v19 += 16;
      --v18;
    }

    while (v18);
  }

LABEL_17:
  *(v7 + 8) = a4;
  return result;
}

uint64_t DgnArray<DgnPrimArray<unsigned int>>::find(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = *a1;
  while (1)
  {
    v6 = v5 + 16 * result;
    if (v6 == a2)
    {
      return result;
    }

    if (*(v6 + 8) == *(a2 + 8))
    {
      v7 = *(a2 + 8);
      while (v7 >= 1)
      {
        v8 = *v6 + 4 * v7;
        v9 = *(*a2 - 4 + 4 * v7--);
        if (*(v8 - 4) != v9)
        {
          goto LABEL_8;
        }
      }

      return result;
    }

LABEL_8:
    if (++result == v2)
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t DgnArray<DgnPrimArray<unsigned short>>::find(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = *a1;
  while (1)
  {
    v6 = v5 + 16 * result;
    if (v6 == a2)
    {
      return result;
    }

    if (*(v6 + 8) == *(a2 + 8))
    {
      v7 = *(a2 + 8);
      while (v7 >= 1)
      {
        v8 = *v6 + 2 * v7;
        v9 = *(*a2 - 2 + 2 * v7--);
        if (*(v8 - 2) != v9)
        {
          goto LABEL_8;
        }
      }

      return result;
    }

LABEL_8:
    if (++result == v2)
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t SDParamSet_GetHandle(unint64_t a1, int64_t a2, ParamSetHolder *a3, unint64_t *a4)
{
  v8 = SdapiInsurance::SdapiInsurance(v115, "SDParamSet_GetHandle", 1, 1, 184);
  if (v115[97] != 1)
  {
    goto LABEL_98;
  }

  if (!a3)
  {
    throwBadStringPointer(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v115[151] = 0;
  if (gbShowCalls == 1)
  {
    if (gbShowCallPointerArguments)
    {
      v16 = a4;
    }

    else
    {
      v16 = 0;
    }

    xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, '%.500s', Masked:0x%016llx)\n", v9, v10, v11, v12, "SDParamSet_GetHandle", a1, a2, a3, v16);
  }

  if (!a4)
  {
    throwBadLengthForNullPointer(1, "DgnVerifyWritePtr", v10, v11, v12, v13, v14, v15);
  }

  *a4 = a1;
  a4[1] = a2;
  if (a2 > 6)
  {
    if (a2 > 9)
    {
      switch(a2)
      {
        case 10:
          v73 = ParamSetHolderMgr::smpParamSetHolderMgr;
          if (HIDWORD(a1))
          {
            throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
          }

          if ((a1 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
          }

          ParamSetHolder = ParamSetHolderMgr::getParamSetHolder(v73, a1, v10, v11, v12, v13, v14, v15);
          v80 = ParamSetHolder::lookupName(ParamSetHolder, a3, 10, v75, v76, v77, v78, v79);
          if (v80 == -1)
          {
            v113 = 0;
            a4[11] = -1;
            goto LABEL_99;
          }

          a4[11] = v80;
          break;
        case 11:
          v105 = ParamSetHolderMgr::smpParamSetHolderMgr;
          if (HIDWORD(a1))
          {
            throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
          }

          if ((a1 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
          }

          v106 = ParamSetHolderMgr::getParamSetHolder(v105, a1, v10, v11, v12, v13, v14, v15);
          v112 = ParamSetHolder::lookupName(v106, a3, 11, v107, v108, v109, v110, v111);
          if (v112 == -1)
          {
            v113 = 0;
            a4[12] = -1;
            goto LABEL_99;
          }

          a4[12] = v112;
          break;
        case 12:
          v41 = ParamSetHolderMgr::smpParamSetHolderMgr;
          if (HIDWORD(a1))
          {
            throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
          }

          if ((a1 + 1) <= 1)
          {
            throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
          }

          v42 = ParamSetHolderMgr::getParamSetHolder(v41, a1, v10, v11, v12, v13, v14, v15);
          v48 = ParamSetHolder::lookupName(v42, a3, 12, v43, v44, v45, v46, v47);
          if (v48 == -1)
          {
            v113 = 0;
            a4[13] = -1;
            goto LABEL_99;
          }

          a4[13] = v48;
          break;
        default:
LABEL_97:
          throwBadSdapiArgument("SDParamSetContainerType", a2, v10, v11, v12, v13, v14, v15);
LABEL_98:
          v113 = 0;
          goto LABEL_99;
      }
    }

    else if (a2 == 7)
    {
      v57 = ParamSetHolderMgr::smpParamSetHolderMgr;
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
      }

      v58 = ParamSetHolderMgr::getParamSetHolder(v57, a1, v10, v11, v12, v13, v14, v15);
      v64 = ParamSetHolder::lookupName(v58, a3, 7, v59, v60, v61, v62, v63);
      if (v64 == -1)
      {
        v113 = 0;
        a4[8] = -1;
        goto LABEL_99;
      }

      a4[8] = v64;
    }

    else if (a2 == 8)
    {
      v89 = ParamSetHolderMgr::smpParamSetHolderMgr;
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
      }

      v90 = ParamSetHolderMgr::getParamSetHolder(v89, a1, v10, v11, v12, v13, v14, v15);
      v96 = ParamSetHolder::lookupName(v90, a3, 8, v91, v92, v93, v94, v95);
      if (v96 == -1)
      {
        v113 = 0;
        a4[9] = -1;
        goto LABEL_99;
      }

      a4[9] = v96;
    }

    else
    {
      v25 = ParamSetHolderMgr::smpParamSetHolderMgr;
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
      }

      v26 = ParamSetHolderMgr::getParamSetHolder(v25, a1, v10, v11, v12, v13, v14, v15);
      v32 = ParamSetHolder::lookupName(v26, a3, 9, v27, v28, v29, v30, v31);
      if (v32 == -1)
      {
        v113 = 0;
        a4[10] = -1;
        goto LABEL_99;
      }

      a4[10] = v32;
    }
  }

  else if (a2 > 3)
  {
    if (a2 == 4)
    {
      v65 = ParamSetHolderMgr::smpParamSetHolderMgr;
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
      }

      v66 = ParamSetHolderMgr::getParamSetHolder(v65, a1, v10, v11, v12, v13, v14, v15);
      v72 = ParamSetHolder::lookupName(v66, a3, 4, v67, v68, v69, v70, v71);
      if (v72 == -1)
      {
        v113 = 0;
        a4[5] = -1;
        goto LABEL_99;
      }

      a4[5] = v72;
    }

    else if (a2 == 5)
    {
      v97 = ParamSetHolderMgr::smpParamSetHolderMgr;
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
      }

      v98 = ParamSetHolderMgr::getParamSetHolder(v97, a1, v10, v11, v12, v13, v14, v15);
      v104 = ParamSetHolder::lookupName(v98, a3, 5, v99, v100, v101, v102, v103);
      if (v104 == -1)
      {
        v113 = 0;
        a4[6] = -1;
        goto LABEL_99;
      }

      a4[6] = v104;
    }

    else
    {
      v33 = ParamSetHolderMgr::smpParamSetHolderMgr;
      if (HIDWORD(a1))
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
      }

      if ((a1 + 1) <= 1)
      {
        throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
      }

      v34 = ParamSetHolderMgr::getParamSetHolder(v33, a1, v10, v11, v12, v13, v14, v15);
      v40 = ParamSetHolder::lookupName(v34, a3, 6, v35, v36, v37, v38, v39);
      if (v40 == -1)
      {
        v113 = 0;
        a4[7] = -1;
        goto LABEL_99;
      }

      a4[7] = v40;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        v49 = ParamSetHolderMgr::smpParamSetHolderMgr;
        if (HIDWORD(a1))
        {
          throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
        }

        if ((a1 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
        }

        v50 = ParamSetHolderMgr::getParamSetHolder(v49, a1, v10, v11, v12, v13, v14, v15);
        v56 = ParamSetHolder::lookupName(v50, a3, 1, v51, v52, v53, v54, v55);
        if (v56 == -1)
        {
          v113 = 0;
          a4[2] = -1;
          goto LABEL_99;
        }

        a4[2] = v56;
        break;
      case 2:
        v81 = ParamSetHolderMgr::smpParamSetHolderMgr;
        if (HIDWORD(a1))
        {
          throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
        }

        if ((a1 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
        }

        v82 = ParamSetHolderMgr::getParamSetHolder(v81, a1, v10, v11, v12, v13, v14, v15);
        v88 = ParamSetHolder::lookupName(v82, a3, 2, v83, v84, v85, v86, v87);
        if (v88 == -1)
        {
          v113 = 0;
          a4[3] = -1;
          goto LABEL_99;
        }

        a4[3] = v88;
        break;
      case 3:
        v17 = ParamSetHolderMgr::smpParamSetHolderMgr;
        if (HIDWORD(a1))
        {
          throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
        }

        if ((a1 + 1) <= 1)
        {
          throwBadSdapiArgument("SDhParamSetHolder", a1, v10, v11, v12, v13, v14, v15);
        }

        v18 = ParamSetHolderMgr::getParamSetHolder(v17, a1, v10, v11, v12, v13, v14, v15);
        v24 = ParamSetHolder::lookupName(v18, a3, 3, v19, v20, v21, v22, v23);
        if (v24 == -1)
        {
          v113 = 0;
          a4[4] = -1;
          goto LABEL_99;
        }

        a4[4] = v24;
        break;
      default:
        goto LABEL_97;
    }
  }

  v113 = 1;
LABEL_99:
  SdapiInsurance::~SdapiInsurance(v115);
  return v113;
}

void sub_2625C11C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2 == 2)
  {
    v15 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v15, v16);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(&a14);
      _Unwind_Resume(a1);
    }

    v17 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v17);
  }

  __cxa_end_catch();
  JUMPOUT(0x2625C10E0);
}

void *DgnArray<LinearTransform>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 72 * v2 - 72;
    do
    {
      LinearTransform::~LinearTransform((*a1 + v3));
      v3 -= 72;
    }

    while (v3 != -72);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

_DWORD *BinaryIntScale::setScale(_DWORD *this, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    for (i = 1; i < a2; i *= 2)
    {
      ++v2;
    }
  }

  *this = v2;
  return this;
}

unint64_t BinaryIntScale::getBits(unint64_t this)
{
  if (this)
  {
    v1 = this;
    LODWORD(this) = 0;
    for (i = 1; i <= v1; i *= 2)
    {
      this = (this + 1);
    }
  }

  return this;
}

uint64_t BinaryIntScale::getUnscaleBits(BinaryIntScale *this, char a2)
{
  v2 = ~(-1 << (a2 + 1));
  v3 = 2 * this;
  if (2 * this < v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v2 *= 2;
    result = (result + 1);
  }

  while (v2 <= v3);
  return result;
}

void BandwidthTransform::saveBandwidthTransform(BandwidthTransform *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    BandwidthTransform::saveText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 3u, a5, "MRBEB!?", 22, 1);
    v10 = 0;
    writeObject(v8, this, &v10);
    writeObject(v8, this + 1, &v10);
    LinearTransform::writeObject((this + 8), v8, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 3u, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void BandwidthTransform::saveText(BandwidthTransform *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v30);
  DgnTextFileWriter::openDgnTextFileWriter(v30, a2, 4u, a3);
  v28 = 0;
  v29 = 0;
  DgnTextFile::legalDgnTextFileVersions(v30, sBET_Versions, &v28, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v30, "BandwidthExtensionTransform", (v28 + 8 * (v29 - 1)));
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v11 = realloc_array(0, &v24, 0x10uLL, 0, 0, 1);
  v25 = 0;
  v26 = v24;
  LODWORD(v27) = 4;
  HIDWORD(v27) = v11 >> 2;
  v23[0] = 0;
  HIDWORD(v25) = realloc_array(0, v23, 0x40uLL, 0, 0, 1) >> 4;
  v24 = v23[0];
  v12 = v25;
  if (v25 <= 4)
  {
    if (v25 != 4)
    {
      v14 = v25 + 1;
      v15 = 16 * v25;
      do
      {
        DgnString::DgnString((v24 + v15));
        v15 += 16;
      }

      while (v14++ != 4);
    }
  }

  else if (v25 >= 5)
  {
    v13 = 16 * v25 - 16;
    do
    {
      --v12;
      DgnString::~DgnString((v24 + v13));
      v13 -= 16;
    }

    while (v12 > 4);
  }

  LODWORD(v25) = 4;
  DgnString::operator=(v24, "TableName");
  *v26 = 0;
  DgnString::operator=((v24 + 16), "RowIndex");
  v26[1] = 3;
  DgnString::operator=((v24 + 32), "ColumnIndex");
  v26[2] = 3;
  DgnString::operator=((v24 + 48), "TableEntryInt");
  v26[3] = 1;
  DgnTextFileWriter::setLineFieldFormat(v30, &v26, &v24);
  v18 = *(this + 2);
  v17 = *(this + 3);
  v19 = *(this + 12);
  DgnTextFileWriter::setHeaderFieldUnsigned(v30, "InputSampleRate", *this);
  DgnTextFileWriter::setHeaderFieldUnsigned(v30, "OutputSampleRate", *(this + 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v30, "InputFeatureDim", v18);
  DgnTextFileWriter::setHeaderFieldUnsigned(v30, "OutputFeatureDim", v17);
  DgnTextFileWriter::setHeaderFieldUnsigned(v30, "TransformIntScale", 1 << v19);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (v18)
      {
        for (j = 0; j != v18; ++j)
        {
          DgnTextFileWriter::setLineFieldValue(v30, 0, "BETMatrix");
          DgnTextFileWriter::setLineFieldUnsignedValue(v30, 1u, i);
          DgnTextFileWriter::setLineFieldUnsignedValue(v30, 2u, j);
          DgnTextFileWriter::setLineFieldIntegerValue(v30, 3u, *(*(*(this + 4) + 16 * i) + 4 * j));
          DgnTextFileWriter::writeNextLine(v30);
        }
      }
    }
  }

  v23[0] = 0;
  v23[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v23, this + 2, 0, *(this + 6));
  if (v17)
  {
    for (k = 0; k != v17; ++k)
    {
      DgnTextFileWriter::setLineFieldValue(v30, 0, "BETOffset");
      DgnTextFileWriter::setLineFieldUnsignedValue(v30, 1u, k);
      DgnTextFileWriter::setLineFieldUnsignedValue(v30, 2u, 0);
      DgnTextFileWriter::setLineFieldIntegerValue(v30, 3u, *(v23[0] + k));
      DgnTextFileWriter::writeNextLine(v30);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
  DgnArray<DgnString>::releaseAll(&v24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  DgnIArray<Utterance *>::~DgnIArray(&v28);
  DgnTextFileWriter::~DgnTextFileWriter(v30);
}

void sub_2625C1800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

uint64_t MrecInitLibrary_fileutil(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();

  return MrecInitModule_sdpres_sdapi();
}

uint64_t MrecInitLibrarySet_throughFileutil(void)
{
  MrecInitLibrarySet_throughDfutil();

  return MrecInitLibrary_fileutil();
}

void MrecInitModule_genclass_pel(void)
{
  if (!gParDebugGenoneClassTree)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugGenoneClassTree", &unk_26286E9B8, &unk_26286E9B8, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugGenoneClassTree = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugGenoneClassTree);
  }
}

void GenoneClassTree::~GenoneClassTree(GenoneClassTree *this)
{
  DgnArray<DgnMatrix>::releaseAll(this + 280);
  DgnArray<DgnVector>::releaseAll(this + 264);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  BitArray::~BitArray((this + 96));
  BitArray::~BitArray((this + 80));
  BitArray::~BitArray((this + 64));
  BitArray::~BitArray((this + 48));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
}

void GenoneClassTree::printSize(GenoneClassTree *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 206, &v199);
  if (v200)
  {
    v16 = v199;
  }

  else
  {
    v16 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26286E9B8, a3, &unk_26286E9B8, v16);
  DgnString::~DgnString(&v199);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26286E9B8);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 4;
  }

  else
  {
    v21 = 8;
  }

  v22 = (a3 + 1);
  v23 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 207, &v199);
  if (v200)
  {
    v28 = v199;
  }

  else
  {
    v28 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, (a3 + 1), &unk_26286E9B8, (34 - a3), (34 - a3), v28, v21, v21, 0);
  DgnString::~DgnString(&v199);
  *a4 += v21;
  *a5 += v21;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v33 = v199;
  }

  else
  {
    v33 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, (a3 + 1), &unk_26286E9B8, (34 - a3), (34 - a3), v33, 4, 4, 0);
  DgnString::~DgnString(&v199);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v38 = v199;
  }

  else
  {
    v38 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v35, v36, v37, (a3 + 1), &unk_26286E9B8, (34 - a3), (34 - a3), v38, 4, 4, 0);
  v198 = a3;
  DgnString::~DgnString(&v199);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  else
  {
    v39 = 16;
  }

  v40 = *(this + 6);
  v41 = *(this + 7);
  if (v41 >= v40)
  {
    v42 = 0;
    if (v40 > 0)
    {
      v39 += 4 * (v40 - 1) + 4;
    }

    v43 = v39 + 4 * (v41 - v40);
  }

  else
  {
    v42 = 4 * v40;
    v43 = v39;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v48 = v199;
  }

  else
  {
    v48 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v45, v46, v47, v22, &unk_26286E9B8, v23, v23, v48, v43, v39, v42);
  DgnString::~DgnString(&v199);
  *a4 += v43;
  *a5 += v39;
  *a6 += v42;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v49 = 12;
  }

  else
  {
    v49 = 16;
  }

  v50 = *(this + 10);
  v51 = *(this + 11);
  if (v51 >= v50)
  {
    v52 = 0;
    if (v50 > 0)
    {
      v49 += 2 * (v50 - 1) + 2;
    }

    v53 = v49 + 2 * (v51 - v50);
  }

  else
  {
    v52 = 2 * v50;
    v53 = v49;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v58 = v199;
  }

  else
  {
    v58 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, v22, &unk_26286E9B8, v23, v23, v58, v53, v49, v52);
  DgnString::~DgnString(&v199);
  *a4 += v53;
  *a5 += v49;
  *a6 += v52;
  v59 = BitArray::sizeObject(this + 48, 0);
  v60 = BitArray::sizeObject(this + 48, 1);
  v61 = BitArray::sizeObject(this + 48, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v66 = v199;
  }

  else
  {
    v66 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v63, v64, v65, v22, &unk_26286E9B8, v23, v23, v66, v59, v60, v61);
  DgnString::~DgnString(&v199);
  *a4 += v59;
  *a5 += v60;
  *a6 += v61;
  v67 = BitArray::sizeObject(this + 64, 0);
  v68 = BitArray::sizeObject(this + 64, 1);
  v69 = BitArray::sizeObject(this + 64, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v74 = v199;
  }

  else
  {
    v74 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v71, v72, v73, v22, &unk_26286E9B8, v23, v23, v74, v67, v68, v69);
  DgnString::~DgnString(&v199);
  *a4 += v67;
  *a5 += v68;
  *a6 += v69;
  v75 = BitArray::sizeObject(this + 80, 0);
  v76 = BitArray::sizeObject(this + 80, 1);
  v77 = BitArray::sizeObject(this + 80, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v82 = v199;
  }

  else
  {
    v82 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v79, v80, v81, v22, &unk_26286E9B8, v23, v23, v82, v75, v76, v77);
  DgnString::~DgnString(&v199);
  *a4 += v75;
  *a5 += v76;
  *a6 += v77;
  v83 = BitArray::sizeObject(this + 96, 0);
  v84 = BitArray::sizeObject(this + 96, 1);
  v85 = BitArray::sizeObject(this + 96, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v90 = v199;
  }

  else
  {
    v90 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v87, v88, v89, v22, &unk_26286E9B8, v23, v23, v90, v83, v84, v85);
  DgnString::~DgnString(&v199);
  *a4 += v83;
  *a5 += v84;
  *a6 += v85;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v95 = v199;
  }

  else
  {
    v95 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v92, v93, v94, v22, &unk_26286E9B8, v23, v23, v95, 4, 4, 0);
  DgnString::~DgnString(&v199);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v96 = 12;
  }

  else
  {
    v96 = 16;
  }

  v97 = *(this + 32);
  v98 = *(this + 33);
  if (v98 >= v97)
  {
    v99 = 0;
    if (v97 > 0)
    {
      v96 += 4 * (v97 - 1) + 4;
    }

    v100 = v96 + 4 * (v98 - v97);
  }

  else
  {
    v99 = 4 * v97;
    v100 = v96;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v105 = v199;
  }

  else
  {
    v105 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v102, v103, v104, v22, &unk_26286E9B8, v23, v23, v105, v100, v96, v99);
  DgnString::~DgnString(&v199);
  *a4 += v100;
  *a5 += v96;
  *a6 += v99;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v106 = 12;
  }

  else
  {
    v106 = 16;
  }

  v107 = *(this + 36);
  v108 = *(this + 37);
  if (v108 >= v107)
  {
    v109 = 0;
    if (v107 > 0)
    {
      v106 += 4 * (v107 - 1) + 4;
    }

    v110 = v106 + 4 * (v108 - v107);
  }

  else
  {
    v109 = 4 * v107;
    v110 = v106;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v115 = v199;
  }

  else
  {
    v115 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v111, v112, v113, v114, v22, &unk_26286E9B8, v23, v23, v115, v110, v106, v109);
  DgnString::~DgnString(&v199);
  *a4 += v110;
  *a5 += v106;
  *a6 += v109;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v116 = 12;
  }

  else
  {
    v116 = 16;
  }

  v117 = *(this + 40);
  v118 = *(this + 41);
  if (v118 >= v117)
  {
    v119 = 0;
    if (v117 > 0)
    {
      v116 += 4 * (v117 - 1) + 4;
    }

    v120 = v116 + 4 * (v118 - v117);
  }

  else
  {
    v119 = 4 * v117;
    v120 = v116;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v125 = v199;
  }

  else
  {
    v125 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v121, v122, v123, v124, v22, &unk_26286E9B8, v23, v23, v125, v120, v116, v119);
  DgnString::~DgnString(&v199);
  *a4 += v120;
  *a5 += v116;
  *a6 += v119;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v126 = 12;
  }

  else
  {
    v126 = 16;
  }

  v127 = *(this + 44);
  v128 = *(this + 45);
  if (v128 >= v127)
  {
    v129 = 0;
    if (v127 > 0)
    {
      v126 += 4 * (v127 - 1) + 4;
    }

    v130 = v126 + 4 * (v128 - v127);
  }

  else
  {
    v129 = 4 * v127;
    v130 = v126;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v135 = v199;
  }

  else
  {
    v135 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v131, v132, v133, v134, v22, &unk_26286E9B8, v23, v23, v135, v130, v126, v129);
  DgnString::~DgnString(&v199);
  *a4 += v130;
  *a5 += v126;
  *a6 += v129;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v140 = v199;
  }

  else
  {
    v140 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v136, v137, v138, v139, v22, &unk_26286E9B8, v23, v23, v140, 4, 4, 0);
  DgnString::~DgnString(&v199);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v141 = 12;
  }

  else
  {
    v141 = 16;
  }

  v142 = *(this + 50);
  v143 = *(this + 51);
  if (v143 >= v142)
  {
    v144 = 0;
    if (v142 > 0)
    {
      v141 += 4 * (v142 - 1) + 4;
    }

    v145 = v141 + 4 * (v143 - v142);
  }

  else
  {
    v144 = 4 * v142;
    v145 = v141;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v150 = v199;
  }

  else
  {
    v150 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v146, v147, v148, v149, v22, &unk_26286E9B8, v23, v23, v150, v145, v141, v144);
  DgnString::~DgnString(&v199);
  *a4 += v145;
  *a5 += v141;
  *a6 += v144;
  v151 = sizeObject<DgnPrimArray<unsigned int>>(this + 208, 0);
  v152 = sizeObject<DgnPrimArray<unsigned int>>(this + 208, 1);
  v199 = 0;
  v200 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v199);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v157 = v199;
  }

  else
  {
    v157 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v153, v154, v155, v156, v22, &unk_26286E9B8, v23, v23, v157, v151, v152, 0);
  DgnString::~DgnString(&v199);
  *a4 += v151;
  *a5 += v152;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v158 = 12;
  }

  else
  {
    v158 = 16;
  }

  v159 = *(this + 58);
  v160 = *(this + 59);
  if (v160 >= v159)
  {
    v161 = 0;
    if (v159 > 0)
    {
      v158 += 4 * (v159 - 1) + 4;
    }

    v162 = v158 + 4 * (v160 - v159);
  }

  else
  {
    v161 = 4 * v159;
    v162 = v158;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v167 = v199;
  }

  else
  {
    v167 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v163, v164, v165, v166, v22, &unk_26286E9B8, v23, v23, v167, v162, v158, v161);
  DgnString::~DgnString(&v199);
  *a4 += v162;
  *a5 += v158;
  *a6 += v161;
  v168 = sizeObject(this + 240, 0);
  v169 = sizeObject(this + 240, 1);
  v170 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v175 = v199;
  }

  else
  {
    v175 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v171, v172, v173, v174, v22, &unk_26286E9B8, v23, v23, v175, v168, v169, v170);
  DgnString::~DgnString(&v199);
  *a4 += v168;
  *a5 += v169;
  *a6 += v170;
  v176 = sizeObject<DgnVector>(this + 264, 0);
  v177 = sizeObject<DgnVector>(this + 264, 1);
  v178 = sizeObject<DgnVector>(this + 264, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v183 = v199;
  }

  else
  {
    v183 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v179, v180, v181, v182, v22, &unk_26286E9B8, v23, v23, v183, v176, v177, v178);
  DgnString::~DgnString(&v199);
  *a4 += v176;
  *a5 += v177;
  *a6 += v178;
  v184 = sizeObject<DgnMatrix>(this + 280, 0);
  v185 = sizeObject<DgnMatrix>(this + 280, 1);
  v186 = sizeObject<DgnMatrix>(this + 280, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 209, &v199);
  if (v200)
  {
    v191 = v199;
  }

  else
  {
    v191 = &unk_26286E9B8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v187, v188, v189, v190, v22, &unk_26286E9B8, v23, v23, v191, v184, v185, v186);
  DgnString::~DgnString(&v199);
  *a4 += v184;
  *a5 += v185;
  *a6 += v186;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 210, &v199);
  if (v200)
  {
    v196 = v199;
  }

  else
  {
    v196 = &unk_26286E9B8;
  }

  v197 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v192, v193, v194, v195, v198, &unk_26286E9B8, (35 - v198), (35 - v198), v196, *a4, *a5, *a6);
  DgnString::~DgnString(&v199);
}

void sub_2625C284C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnVector>(uint64_t a1, int a2)
{
  v12 = 0;
  v11 = 0;
  v4 = sizeObject(&v11, 2);
  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v5 = 12;
    }

    else
    {
      v5 = 16;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 16 * v7 - 16;
        do
        {
          v5 += sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 16;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
  return v5;
}

uint64_t sizeObject<DgnMatrix>(uint64_t a1, int a2)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v4 = sizeObject(&v11, 2);
  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v5 = 12;
    }

    else
    {
      v5 = 16;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 24 * v7 - 24;
        do
        {
          v5 += sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 24;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v12);
  return v5;
}

void sub_2625C2AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

void *GenoneClassTree::getDynamicClasses(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 184);
  v11 = 48;
  if (v10 == 1)
  {
    v11 = 80;
  }

  v12 = v10 == 2;
  v13 = 96;
  if (!v12)
  {
    v13 = v11;
  }

  v113 = v13;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v134, *(a1 + 8));
  v14 = *(a1 + 112);
  v132 = 0;
  v133 = 0;
  if (v14)
  {
    v114 = 0;
    v15 = realloc_array(0, &v114, 4 * v14, 0, 0, 1);
    v16 = 0;
    v17 = v114;
    v132 = v114;
    LODWORD(v133) = v14;
    HIDWORD(v133) = v15 >> 2;
    do
    {
      v17[v16++] = 0;
    }

    while (v16 < v133);
  }

  else
  {
    LODWORD(v133) = 0;
  }

  v18 = *(a1 + 8);
  v130 = 0;
  v131 = 0;
  if (v18)
  {
    v114 = 0;
    v19 = realloc_array(0, &v114, 4 * v18, 0, 0, 1);
    v20 = 0;
    v21 = v114;
    v130 = v114;
    LODWORD(v131) = v18;
    HIDWORD(v131) = v19 >> 2;
    do
    {
      v21[v20++] = 0;
    }

    while (v20 < v131);
  }

  else
  {
    v21 = 0;
    LODWORD(v131) = 0;
  }

  if (*(a2 + 2))
  {
    v22 = 0;
    v23 = *a2;
    v24 = *(a1 + 192);
    do
    {
      v21[*(v24 + 4 * v22)] = *(v23 + 4 * v22);
      ++v22;
    }

    while (v22 < *(a2 + 2));
  }

  v128 = 0;
  v129 = 0;
  DgnPrimArray<int>::copyArraySlice(&v128, (a1 + 192), 0, *(a1 + 200));
  v126 = 0;
  v127 = 0;
  BitArray::BitArray(&v124, *(a1 + 8));
  BitArray::clearRange(&v124, 0, v125);
  v110 = a3;
  if (v129)
  {
    v25 = 0;
    v26 = v128;
    v27 = v124;
    do
    {
      *(v27 + ((v26[v25] >> 3) & 0x1FFFFFFC)) |= 1 << v26[v25];
      ++v25;
    }

    while (v25 < v129);
    v122 = 0;
    *v123 = 0;
    if (v129)
    {
      v28 = 0;
      while (1)
      {
        v29 = v128[v28];
        v30 = *(*(a1 + 16) + 4 * v29);
        v31 = v134[0];
        if ((*(*(a1 + v113) + 4 * (v29 >> 5)) & (1 << v29)) != 0)
        {
          v32 = v134[0] + 16 * v29;
          v33 = *(v32 + 8);
          if (v33 == *(v32 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(v134[0] + 16 * v29, 1, 1);
            v33 = *(v32 + 8);
            v31 = v134[0];
          }

          *(*v32 + 4 * v33) = v28;
          ++*(v32 + 8);
          v34 = v31 + 16 * v30;
          v36 = (v34 + 8);
          v35 = *(v34 + 8);
          if (v35 == *(v34 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(v34, 1, 1);
            v35 = *v36;
          }

          *(*v34 + 4 * v35) = v28;
          LODWORD(v37) = 1;
        }

        else
        {
          v38 = v134[0] + 16 * v30;
          v39 = v134[0] + 16 * v29;
          v40 = *(v39 + 8);
          v36 = (v38 + 8);
          v41 = *(v38 + 8) + v40;
          v42 = *(v38 + 12);
          if (v41 > v42)
          {
            DgnPrimArray<unsigned int>::reallocElts(v38, v41 - v42, 1);
            v40 = *(v39 + 8);
          }

          if (v40)
          {
            v43 = 0;
            v44 = *v39;
            v45 = *v38;
            do
            {
              *(v45 + 4 * (v43 + *v36)) = *(v44 + 4 * v43);
              ++v43;
              v37 = *(v39 + 8);
            }

            while (v43 < v37);
          }

          else
          {
            LODWORD(v37) = 0;
          }
        }

        *v36 += v37;
        v46 = v130;
        v130[v30] += v130[v29];
        ++v132[v30];
        v47 = a5;
        if (v29 == 1)
        {
          v47 = a4;
        }

        if (v46[v29] >= v47)
        {
          if ((*(v124 + 4 * (v29 >> 5)) & (1 << v29)) != 0)
          {
            v48 = v123[0];
            if (v123[0] == v123[1])
            {
              DgnPrimArray<unsigned int>::reallocElts(&v122, 1, 1);
              v48 = v123[0];
            }

            *&v122[4 * v48] = v29;
            ++v123[0];
          }
        }

        else
        {
          *(v124 + ((v30 >> 3) & 0x1FFFFFFC)) |= 1 << v30;
        }

        if (v30 && v132[v30] == *(*(a1 + 224) + 4 * v30))
        {
          v49 = v127;
          if (v127 == HIDWORD(v127))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v126, 1, 1);
            v49 = v127;
          }

          *(v126 + 4 * v49) = v30;
          LODWORD(v127) = v127 + 1;
        }

        if (++v28 >= v129)
        {
          DgnPrimArray<int>::copyArraySlice(&v128, &v126, 0, v127);
          v28 = 0;
          LODWORD(v127) = 0;
          if (!v129)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    v122 = 0;
    *v123 = 0;
  }

  v50 = v123[0];
  v51 = v110;
  if (v110)
  {
    while (v50 > v51)
    {
      DgnPrimArray<int>::copyArraySlice(&v128, &v122, 0, v50);
      v52 = *v130 + 1;
      v53 = v129;
      if (v129)
      {
        v54 = 0;
        v55 = v128;
        do
        {
          v56 = *v55++;
          v57 = *(*(a1 + 16) + 4 * v56);
          if (v57 && v130[v57] < v52)
          {
            v52 = v130[v57];
            v54 = v57;
          }

          --v53;
        }

        while (v53);
      }

      else
      {
        v54 = 0;
      }

      *(v124 + 4 * (v54 >> 5)) |= 1 << v54;
      v123[0] = 0;
      LODWORD(v127) = 0;
      if (!v129)
      {
        goto LABEL_93;
      }

      v58 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v62 = v52 + 1;
      v63 = v52 + 1;
      do
      {
        v64 = v128[v58];
        if (*(*(a1 + 16) + 4 * v64) != v54)
        {
          v69 = v123[0];
          if (v123[0] == v123[1])
          {
            DgnPrimArray<unsigned int>::reallocElts(&v122, 1, 1);
            v69 = v123[0];
          }

          *&v122[4 * v69] = v64;
          ++v123[0];
          goto LABEL_74;
        }

        v65 = v130;
        v66 = v130[v64];
        if (v66 >= v63)
        {
          if (v66 >= v62)
          {
            v72 = v127;
            if (v127 == HIDWORD(v127))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v126, 1, 1);
              v72 = v127;
            }

            *(v126 + 4 * v72) = v64;
            LODWORD(v127) = v127 + 1;
LABEL_74:
            v68 = v63;
            v70 = v60;
            goto LABEL_87;
          }

          if (v59)
          {
            v71 = v127;
            if (v127 == HIDWORD(v127))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v126, 1, 1);
              v71 = v127;
              v65 = v130;
            }

            *(v126 + 4 * v71) = v59;
            LODWORD(v127) = v127 + 1;
            v62 = v65[v64];
            v68 = v63;
          }

          else
          {
            v68 = v63;
            v62 = v130[v64];
          }

          v70 = v60;
          v59 = v64;
        }

        else
        {
          if (v59)
          {
            v67 = v127;
            if (v127 == HIDWORD(v127))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v126, 1, 1);
              v67 = v127;
              v65 = v130;
            }

            *(v126 + 4 * v67) = v59;
            LODWORD(v127) = v127 + 1;
            v68 = v65[v64];
          }

          else
          {
            v68 = v130[v64];
          }

          v62 = v63;
          v70 = v64;
          v59 = v60;
        }

LABEL_87:
        v61 |= v64 == v54;
        ++v58;
        v60 = v70;
        v63 = v68;
      }

      while (v58 < v129);
      v51 = v110;
      if (v61)
      {
        v73 = v127;
        if (v59)
        {
          if (v127 == HIDWORD(v127))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v126, 1, 1);
            v73 = v127;
          }

          *(v126 + 4 * v73) = v59;
          v73 = v127 + 1;
          LODWORD(v127) = v127 + 1;
        }

        goto LABEL_96;
      }

LABEL_93:
      v74 = v123[0];
      if (v123[0] == v123[1])
      {
        DgnPrimArray<unsigned int>::reallocElts(&v122, 1, 1);
        v74 = v123[0];
      }

      *&v122[4 * v74] = v54;
      ++v123[0];
      v73 = v127;
LABEL_96:
      if (v123[0] + v73 > v123[1])
      {
        DgnPrimArray<unsigned int>::reallocElts(&v122, v123[0] + v73 - v123[1], 1);
        v73 = v127;
      }

      if (v73)
      {
        v75 = 0;
        v76 = v126;
        v77 = v122;
        do
        {
          *&v77[4 * (v75 + v123[0])] = *(v76 + 4 * v75);
          ++v75;
          v78 = v127;
        }

        while (v75 < v127);
      }

      else
      {
        v78 = 0;
      }

      v50 = v123[0] + v78;
      v123[0] += v78;
    }
  }

  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v121, v50);
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(&v119, v50);
  BitArray::BitArray(&v117, *(a1 + 200));
  BitArray::setRange(&v117, 0, v118);
  mrec_qsort_r<GenoneClassTree>(v122, v123[0], 4);
  if (v50)
  {
    v79 = 0;
    v80 = v134[0];
    do
    {
      v81 = *&v122[4 * (v50 + ~v79)];
      v82 = v80 + 16 * v81;
      if (*(v82 + 8))
      {
        v83 = 0;
        do
        {
          v84 = *(*v82 + 4 * v83);
          v85 = v121[0] + 16 * v79;
          v86 = *(v85 + 8);
          if (v86 == *(v85 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(v121[0] + 16 * v79, 1, 1);
            v86 = *(v85 + 8);
          }

          *(*v85 + 4 * v86) = v84;
          ++*(v85 + 8);
          v87 = v117;
          if ((*(v117 + 4 * (v84 >> 5)) & (1 << v84)) != 0)
          {
            v88 = v119 + 16 * v79;
            v89 = *(v88 + 8);
            if (v89 == *(v88 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(v119 + 16 * v79, 1, 1);
              v89 = *(v88 + 8);
              v87 = v117;
            }

            *(*v88 + 4 * v89) = v84;
            ++*(v88 + 8);
            *(v87 + 4 * (v84 >> 5)) &= ~(1 << v84);
          }

          ++v83;
          v80 = v134[0];
          v82 = v134[0] + 16 * v81;
        }

        while (v83 < *(v82 + 8));
      }

      ++v79;
    }

    while (v79 != v50);
  }

  v90 = *(a6 + 8);
  if (v90 >= 1)
  {
    v91 = 16 * v90 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a6 + v91);
      v91 -= 16;
    }

    while (v91 != -16);
  }

  *(a6 + 8) = 0;
  v92 = *(a7 + 8);
  if (v92 >= 1)
  {
    v93 = 16 * v92 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a7 + v93);
      v93 -= 16;
    }

    while (v93 != -16);
  }

  *(a7 + 8) = 0;
  v94 = v120;
  if (v120)
  {
    v95 = 0;
    v96 = 0;
    v97 = 8;
    do
    {
      if (*(v119 + v97))
      {
        v98 = v121[0];
        v99 = *(a6 + 8);
        if (v99 == *(a6 + 12))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a6, 1, 1);
          v99 = *(a6 + 8);
        }

        v100 = (*a6 + 16 * v99);
        *v100 = 0;
        v100[1] = 0;
        DgnPrimArray<int>::copyArraySlice(v100, (v98 + v97 - 8), 0, *(v98 + v97));
        ++*(a6 + 8);
        v101 = v119;
        v102 = *(a7 + 8);
        if (v102 == *(a7 + 12))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a7, 1, 1);
          v102 = *(a7 + 8);
        }

        v103 = (*a7 + 16 * v102);
        *v103 = 0;
        v103[1] = 0;
        DgnPrimArray<int>::copyArraySlice(v103, (v101 + v97 - 8), 0, *(v101 + v97));
        v95 = *(a7 + 8) + 1;
        *(a7 + 8) = v95;
        v94 = v120;
      }

      ++v96;
      v97 += 16;
    }

    while (v96 < v94);
    if (v95)
    {
      v116 = &v117;
      v115 = v118;
      v114 = 0;
      SetBitOrStop = BitArrayIterator::scanForNextSetBitOrStop(&v114);
      if (HIDWORD(v114) < v115)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/genclass.cpp", 586, "pel/genclass", 20, &errStr_pel_genclass_E_TNODE_NOT_COVERED, v105, v106, *(*(a1 + 192) + 4 * SetBitOrStop));
      }
    }
  }

  BitArray::~BitArray(&v117);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v119);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v121);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v122);
  BitArray::~BitArray(&v124);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v126);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v130);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v132);
  return DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v134);
}

void sub_2625C3564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  BitArray::~BitArray(&a18);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a20);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a24);
  BitArray::~BitArray(&a26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a28);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v28 - 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v28 - 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v28 - 120);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v28 - 104);
  _Unwind_Resume(a1);
}

void *DgnArray<DgnPrimArray<unsigned int>>::DgnArray(void *a1, uint64_t a2)
{
  v2 = a2;
  *a1 = 0;
  a1[1] = 0;
  if (a2)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1, a2, 0);
    v4 = *(a1 + 2);
    if (v4 > v2)
    {
      if (v4 > v2)
      {
        v5 = v4;
        v6 = 16 * v4 - 16;
        do
        {
          --v5;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v6);
          v6 -= 16;
        }

        while (v5 > v2);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4 < v2)
  {
    v7 = v2 - v4;
    v8 = 16 * v4;
    do
    {
      v9 = (*a1 + v8);
      *v9 = 0;
      v9[1] = 0;
      v8 += 16;
      --v7;
    }

    while (v7);
  }

LABEL_11:
  *(a1 + 2) = v2;
  return a1;
}

char *mrec_qsort_r<GenoneClassTree>(char *result, unint64_t a2, int64_t a3)
{
  v4 = -a3;
  v5 = a3 != 8;
  v6 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_145:
    if ((a2 * a3) > a3)
    {
      v85 = &result[a2 * a3];
      v86 = &result[a3];
      v87 = result;
      do
      {
        if (v86 > result)
        {
          v88 = v87;
          v89 = v86;
          do
          {
            v90 = v89;
            v89 = (v89 + v4);
            if (*v89 - *v90 < 1)
            {
              break;
            }

            if (v7)
            {
              v91 = 0;
              if (v6)
              {
                v92 = v89;
                do
                {
                  v93 = *&v90[2 * v91];
                  *&v90[2 * v91] = *v92;
                  *v92++ = v93;
                  ++v91;
                }

                while (a3 >> 3 != v91);
              }

              else
              {
                v95 = a3;
                do
                {
                  v96 = *(v90 + v91);
                  *(v90 + v91) = *(v88 + v91);
                  *(v88 + v91++) = v96;
                  --v95;
                }

                while (v95);
              }
            }

            else
            {
              v94 = *v90;
              *v90 = *v89;
              *v89 = v94;
            }

            v88 = (v88 + v4);
          }

          while (v89 > result);
        }

        v86 += a3;
        v87 = (v87 + a3);
      }

      while (v86 < v85);
    }

    return result;
  }

  v8 = a3 >> 3;
  while (1)
  {
    v9 = &result[(a2 >> 1) * a3];
    if (a2 == 7)
    {
      goto LABEL_69;
    }

    v10 = &result[(a2 - 1) * a3];
    if (a2 <= 0x28)
    {
      v21 = *result;
      v32 = *v9;
      v13 = result;
      v36 = *v10;
      goto LABEL_64;
    }

    v11 = (a2 >> 3) * a3;
    v12 = 2 * v11;
    v13 = &result[2 * v11];
    v14 = *result;
    v15 = *&result[v11];
    v16 = *result - v15;
    v17 = v15 - *v13;
    v18 = *result - *v13;
    if (v18 >= 0)
    {
      v19 = *v13;
    }

    else
    {
      v19 = *result;
    }

    if (v18 >= 0)
    {
      v20 = &result[2 * v11];
    }

    else
    {
      v20 = result;
    }

    if (v17 > 0)
    {
      v19 = *&result[v11];
      v20 = &result[v11];
    }

    if (v18 >= 0)
    {
      v13 = result;
    }

    else
    {
      v14 = *v13;
    }

    if (v17 < 0)
    {
      v14 = *&result[v11];
      v13 = &result[v11];
    }

    if (v16 < 0)
    {
      v21 = v14;
    }

    else
    {
      v21 = v19;
    }

    if (v16 >= 0)
    {
      v13 = v20;
    }

    v22 = -v11;
    v23 = &v9[-v11];
    v24 = &v9[v11];
    v25 = *v23;
    v26 = *v23 - *v9;
    v27 = *v9 - *v24;
    v28 = *v23 - *v24;
    if (v28 >= 0)
    {
      v29 = *v24;
    }

    else
    {
      v29 = *v23;
    }

    if (v28 >= 0)
    {
      v30 = v24;
    }

    else
    {
      v30 = v23;
    }

    if (v27 > 0)
    {
      v29 = *v9;
      v30 = &result[(a2 >> 1) * a3];
    }

    if (v28 >= 0)
    {
      v24 = v23;
    }

    else
    {
      v25 = *v24;
    }

    if (v27 >= 0)
    {
      v31 = v25;
    }

    else
    {
      v31 = *v9;
    }

    if (v27 >= 0)
    {
      v9 = v24;
    }

    if (v26 < 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = v29;
    }

    if (v26 >= 0)
    {
      v9 = v30;
    }

    v33 = &v10[-v12];
    v34 = &v10[v22];
    v35 = *&v10[-v12];
    v36 = *v34;
    v37 = *v10;
    v38 = *v34 - *v10;
    if (v35 - *v34 < 0)
    {
      if (v38 < 0)
      {
LABEL_63:
        v10 = v34;
        goto LABEL_64;
      }

      if (v35 - v37 >= 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = *v10;
      }

      if (v35 - v37 >= 0)
      {
        v10 = v33;
      }
    }

    else
    {
      if (v38 > 0)
      {
        goto LABEL_63;
      }

      if (v35 - v37 >= 0)
      {
        v36 = *v10;
      }

      else
      {
        v36 = v35;
      }

      if (v35 - v37 < 0)
      {
        v10 = v33;
      }
    }

LABEL_64:
    v39 = v21 - v32;
    v40 = v32 - v36;
    v41 = v21 - v36;
    if ((v39 & 0x80000000) == 0)
    {
      if (v41 < 0)
      {
        v10 = v13;
      }

      if (v40 <= 0)
      {
        v9 = v10;
      }

LABEL_69:
      if (!v7)
      {
        goto LABEL_82;
      }

      goto LABEL_70;
    }

    if (v41 >= 0)
    {
      v10 = v13;
    }

    if (v40 >= 0)
    {
      v9 = v10;
    }

    if (!v7)
    {
LABEL_82:
      v48 = *result;
      *result = *v9;
      *v9 = v48;
      goto LABEL_83;
    }

LABEL_70:
    if (v6)
    {
      v42 = result;
      v43 = a3 >> 3;
      do
      {
        v44 = *v42;
        *v42 = *v9;
        v42 += 8;
        *v9 = v44;
        v9 += 8;
        --v43;
      }

      while (v43);
    }

    else
    {
      v45 = a3;
      v46 = result;
      do
      {
        v47 = *v46;
        *v46++ = *v9;
        *v9++ = v47;
        --v45;
      }

      while (v45);
    }

LABEL_83:
    v49 = 0;
    v50 = &result[a3];
    v51 = &result[(a2 - 1) * a3];
    v52 = v51;
    v53 = &result[a3];
    v54 = &result[a3];
LABEL_84:
    while (v53 <= v52 && *v53 - *result <= 0)
    {
      if (*v53 == *result)
      {
        if (v7)
        {
          v55 = 0;
          if (v6)
          {
            do
            {
              v56 = *&v54[8 * v55];
              *&v54[8 * v55] = *&v53[8 * v55];
              *&v53[8 * v55++] = v56;
            }

            while (v8 != v55);
          }

          else
          {
            do
            {
              v57 = v54[v55];
              v54[v55] = v53[v55];
              v53[v55++] = v57;
            }

            while (a3 != v55);
          }
        }

        else
        {
          v65 = *v54;
          *v54 = *v53;
          *v53 = v65;
        }

        v54 += a3;
        v49 = 1;
      }

      v53 += a3;
    }

    while (v53 <= v52)
    {
      if (*v52 - *result < 0)
      {
        if (v7)
        {
          v62 = 0;
          if (v6)
          {
            do
            {
              v63 = *&v53[8 * v62];
              *&v53[8 * v62] = *&v52[8 * v62];
              *&v52[8 * v62++] = v63;
            }

            while (v8 != v62);
          }

          else
          {
            do
            {
              v64 = v53[v62];
              v53[v62] = v52[v62];
              v52[v62++] = v64;
            }

            while (a3 != v62);
          }
        }

        else
        {
          v66 = *v53;
          *v53 = *v52;
          *v52 = v66;
        }

        v53 += a3;
        v52 += v4;
        v49 = 1;
        goto LABEL_84;
      }

      if (*v52 == *result)
      {
        if (v7)
        {
          v58 = 0;
          if (v6)
          {
            do
            {
              v59 = *&v52[8 * v58];
              *&v52[8 * v58] = *&v51[8 * v58];
              *&v51[8 * v58++] = v59;
            }

            while (v8 != v58);
          }

          else
          {
            do
            {
              v60 = v52[v58];
              v52[v58] = v51[v58];
              v51[v58++] = v60;
            }

            while (a3 != v58);
          }
        }

        else
        {
          v61 = *v52;
          *v52 = *v51;
          *v51 = v61;
        }

        v51 += v4;
        v49 = 1;
      }

      v52 += v4;
    }

    v67 = &result[a2 * a3];
    if (!v49)
    {
      break;
    }

    v68 = v53 - v54;
    if (v54 - result >= v53 - v54)
    {
      v69 = v53 - v54;
    }

    else
    {
      v69 = v54 - result;
    }

    if (v69)
    {
      if (v6)
      {
        v70 = &v53[-v69];
        v71 = v69 >> 3;
        v72 = result;
        do
        {
          v73 = *v72;
          *v72 = *v70;
          v72 += 8;
          *v70 = v73;
          v70 += 8;
          --v71;
        }

        while (v71);
      }

      else
      {
        v74 = -v69;
        v75 = result;
        do
        {
          v76 = *v75;
          *v75++ = v53[v74];
          v53[v74] = v76;
          v77 = __CFADD__(v74++, 1);
        }

        while (!v77);
      }
    }

    v78 = v51 - v52;
    v79 = v67 - &v51[a3];
    if (v51 - v52 < v79)
    {
      v79 = v51 - v52;
    }

    if (v79)
    {
      if (v6)
      {
        v80 = &v67[-v79];
        v81 = v79 >> 3;
        do
        {
          v82 = *v53;
          *v53 = *v80;
          v53 += 8;
          *v80 = v82;
          v80 += 8;
          --v81;
        }

        while (v81);
      }

      else
      {
        v83 = -v79;
        do
        {
          v84 = *v53;
          *v53++ = v67[v83];
          v67[v83] = v84;
          v77 = __CFADD__(v83++, 1);
        }

        while (!v77);
      }
    }

    if (v68 > a3)
    {
      result = mrec_qsort_r<GenoneClassTree>();
    }

    if (v78 <= a3)
    {
      return result;
    }

    result = &v67[-v78];
    a2 = v78 / a3;
    v6 = (((v67 - v78) | a3) & 7) == 0;
    if ((((v67 - v78) | a3) & 7) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = v5;
    }

    if (a2 < 7)
    {
      goto LABEL_145;
    }
  }

  if ((a2 * a3) > a3)
  {
    v97 = result;
    do
    {
      if (v50 > result)
      {
        v98 = v97;
        v99 = v50;
        do
        {
          v100 = v99;
          v99 = (v99 + v4);
          if (*v99 - *v100 < 1)
          {
            break;
          }

          if (v7)
          {
            v101 = 0;
            if (v6)
            {
              v102 = v99;
              do
              {
                v103 = *&v100[2 * v101];
                *&v100[2 * v101] = *v102;
                *v102++ = v103;
                ++v101;
              }

              while (v8 != v101);
            }

            else
            {
              v105 = a3;
              do
              {
                v106 = *(v100 + v101);
                *(v100 + v101) = *(v98 + v101);
                *(v98 + v101++) = v106;
                --v105;
              }

              while (v105);
            }
          }

          else
          {
            v104 = *v100;
            *v100 = *v99;
            *v99 = v104;
          }

          v98 = (v98 + v4);
        }

        while (v99 > result);
      }

      v50 += a3;
      v97 = (v97 + a3);
    }

    while (v50 < v67);
  }

  return result;
}

unint64_t GenoneClassTree::initForType(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 184) = a2;
  v5 = 48;
  if (a2 == 1)
  {
    v5 = 80;
  }

  if (a2 == 2)
  {
    v6 = 96;
  }

  else
  {
    v6 = v5;
  }

  *(a1 + 200) = 0;
  v7 = *(a1 + 8);
  v8 = 0;
  v9 = v7 - 1;
  if (v7 != 1)
  {
    do
    {
      if ((*(*(a1 + v6) + 4 * (v9 >> 5)) >> v9))
      {
        if (v8 == *(a1 + 204))
        {
          DgnPrimArray<unsigned int>::reallocElts(a1 + 192, 1, 1);
          v8 = *(a1 + 200);
        }

        *(*(a1 + 192) + 4 * v8) = v9;
        v8 = *(a1 + 200) + 1;
        *(a1 + 200) = v8;
      }

      --v9;
    }

    while (v9);
  }

  v10 = *(a1 + 216);
  if (v10 >= 1)
  {
    v11 = 16 * v10 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(a1 + 208) + v11);
      v11 -= 16;
    }

    while (v11 != -16);
    v8 = *(a1 + 200);
  }

  v12 = 0;
  *(a1 + 216) = 0;
  v13 = *(a1 + 220);
  if (v8 <= v13 || (DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 208, v8 - v13, 0), v12 = *(a1 + 216), v12 <= v8))
  {
    if (v12 < v8)
    {
      v16 = v8 - v12;
      v17 = 16 * v12;
      do
      {
        v18 = (*(a1 + 208) + v17);
        *v18 = 0;
        v18[1] = 0;
        v17 += 16;
        --v16;
      }

      while (v16);
    }
  }

  else if (v12 > v8)
  {
    v14 = v12;
    v15 = 16 * v12 - 16;
    do
    {
      --v14;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(a1 + 208) + v15);
      v15 -= 16;
    }

    while (v14 > v8);
  }

  *(a1 + 216) = v8;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v53, *(a1 + 8));
  v19 = 0;
  LODWORD(v20) = *(a1 + 8);
  while (1)
  {
    v21 = *(a1 + 112);
    v20 = (v20 - 1);
    if (!v20)
    {
      break;
    }

    if (v20 >= v21)
    {
      v22 = v53[0] + 16 * v20;
      v23 = *(v22 + 8);
      if (v23 == *(v22 + 12))
      {
        DgnPrimArray<unsigned int>::reallocElts(v53[0] + 16 * v20, 1, 1);
        v23 = *(v22 + 8);
      }

      *(*v22 + 4 * v23) = v20;
      ++*(v22 + 8);
    }

    if ((*(*(a1 + v6) + 4 * (v20 >> 5)) >> v20))
    {
      DgnPrimArray<int>::copyArraySlice(*(a1 + 208) + 16 * v19++, (v53[0] + 16 * v20), 0, *(v53[0] + 16 * v20 + 8));
    }

    else
    {
      v24 = v53[0];
      v25 = v53[0] + 16 * v20;
      if (*(v25 + 8))
      {
        v26 = 0;
        do
        {
          v27 = v24 + 16 * *(*(a1 + 16) + 4 * v20);
          v28 = *(*v25 + 4 * v26);
          v29 = *(v27 + 8);
          if (v29 == *(v27 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(v24 + 16 * *(*(a1 + 16) + 4 * v20), 1, 1);
            v29 = *(v27 + 8);
            v24 = v53[0];
          }

          *(*v27 + 4 * v29) = v28;
          ++*(v27 + 8);
          ++v26;
          v25 = v24 + 16 * v20;
        }

        while (v26 < *(v25 + 8));
      }
    }

    if (v19 == *(a1 + 200))
    {
      v21 = *(a1 + 112);
      break;
    }
  }

  v30 = *(a1 + 236);
  if (v21 > v30)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 224, v21 - v30, 0);
  }

  *(a1 + 232) = v21;
  if (v21 != 1)
  {
    bzero((*(a1 + 224) + 4 * (v21 - 1 - (v21 - 2))), 4 * (v21 - 1));
  }

  v31 = *(a1 + 8);
  v32 = (v31 - 1);
  if (v31 != 1)
  {
    v33 = (*(a1 + 16) + 4 * v32);
    v34 = v32 - 1;
    do
    {
      v36 = *v33--;
      v35 = v36;
      if (v36)
      {
        ++*(*(a1 + 224) + 4 * v35);
      }
    }

    while (v34--);
  }

  if (!a3)
  {
    goto LABEL_65;
  }

  v38 = *(a1 + 12);
  v39 = *(a3 + 12);
  if (v38 <= v39)
  {
    *(a3 + 8) = v38;
    v40 = (a3 + 8);
    if (!v38)
    {
      goto LABEL_55;
    }
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, v38 - v39, 0);
    *(a3 + 8) = v38;
    v40 = (a3 + 8);
  }

  v41 = 0;
  v42 = *a3;
  do
  {
    *(v42 + 4 * v41++) = 0;
  }

  while (v41 < *v40);
LABEL_55:
  v43 = *(a1 + 216);
  if (!v43)
  {
LABEL_65:
    v43 = 0;
    goto LABEL_66;
  }

  v44 = 0;
  v45 = *(a1 + 208);
  do
  {
    v46 = (v45 + 16 * v44);
    v47 = *(v46 + 2);
    if (v47)
    {
      v48 = 0;
      v49 = *v46;
      v50 = *(a1 + 32);
      do
      {
        v51 = *(v50 + 2 * *(v49 + 4 * v48));
        if (v51 != 65534)
        {
          *(*a3 + 4 * v51) = v44;
          v47 = *(v46 + 2);
        }

        ++v48;
      }

      while (v48 < v47);
      v43 = *(a1 + 216);
    }

    ++v44;
  }

  while (v44 < v43);
LABEL_66:
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v53);
  return v43;
}

void *GenoneClassTree::release(GenoneClassTree *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 24) = 0;
  }

  *(this + 25) = 0;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 208);
  result = *(this + 28);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 28) = 0;
  }

  *(this + 29) = 0;
  *(this + 46) = 3;
  return result;
}

BOOL GenoneClassTree::decomposeInverseVariancesForTransformationMatrixAdaptation(GenoneClassTree *this)
{
  v2 = (this + 240);
  v3 = *(this + 54);
  v5 = *(*this + 132);
  v4 = *(*this + 136);
  if (__PAIR64__(*(this + 60), *(this + 61)) == __PAIR64__(v4, v5) && *(this + 68) == v3 && *(this + 72) == v3)
  {
    return 1;
  }

  else
  {
    GenoneClassTree::clearDecomposedInverseVarianceData(this);
    v84 = __PAIR64__(v5, v4);
    v77 = v5;
    v7 = v5 * v4;
    v86 = 0;
    v85 = 0;
    if (v7)
    {
      v85 = MemChunkAlloc(8 * v7, 0);
      v86 = v7;
    }

    *(this + 60) = v4;
    *(this + 61) = v77;
    DgnPrimFixArray<double>::copyArraySlice(this + 248, &v85, 0, v7);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v85);
    v8 = *(this + 69);
    if (v3 > v8)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 264, v3 - v8, 0);
    }

    v9 = *(this + 68);
    if (v9 <= v3)
    {
      if (v9 < v3)
      {
        v12 = v3 - v9;
        v13 = (*(this + 33) + 16 * v9 + 8);
        do
        {
          *v13 = 0;
          *(v13 - 1) = 0;
          v13 += 4;
          --v12;
        }

        while (v12);
      }
    }

    else if (v9 > v3)
    {
      v10 = v9;
      v11 = 16 * v9 - 16;
      do
      {
        --v10;
        DgnPrimFixArray<double>::~DgnPrimFixArray(*(this + 33) + v11);
        v11 -= 16;
      }

      while (v10 > v3);
    }

    *(this + 68) = v3;
    v14 = *(this + 73);
    if (v3 > v14)
    {
      DgnArray<CWIDAC>::reallocElts(this + 280, v3 - v14, 0);
    }

    v15 = *(this + 72);
    if (v15 <= v3)
    {
      if (v15 < v3)
      {
        v18 = v3 - v15;
        v19 = 24 * v15;
        do
        {
          v20 = *(this + 35) + v19;
          *v20 = 0;
          *(v20 + 8) = 0;
          *(v20 + 16) = 0;
          v19 += 24;
          --v18;
        }

        while (v18);
      }
    }

    else if (v15 > v3)
    {
      v16 = v15;
      v17 = 24 * v15 - 16;
      do
      {
        --v16;
        DgnPrimFixArray<double>::~DgnPrimFixArray(*(this + 35) + v17);
        v17 -= 24;
      }

      while (v16 > v3);
    }

    *(this + 72) = v3;
    v84 = 0;
    v85 = 0;
    v83[0] = 0;
    v83[1] = 0;
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        PelMgr::getComponentByIndex(*this, i, &v84, v83);
        if (v77)
        {
          v22 = v83[0];
          v23 = *v2;
          v24 = v77;
          v25 = i;
          v26 = *(this + 31);
          do
          {
            v27 = *v22++;
            *(v26 + 8 * v25) = 1.0 / (v27 * v27);
            v25 += v23;
            --v24;
          }

          while (v24);
        }
      }
    }

    BitArray::BitArray(&v81, v4);
    BitArray::clearRange(&v81, 0, v82);
    if (v3)
    {
      v28 = 0;
      v6 = 0;
      v74 = v3;
      while (1)
      {
        v78 = 16 * v28;
        if (v3 < 2)
        {
          BitArray::setRange(&v81, 0, v82);
          v36 = 0;
          v37 = v2;
        }

        else
        {
          v29 = *(this + 26) + 16 * v28;
          v30 = *(v29 + 8);
          if (v30)
          {
            v31 = 0;
            v32 = *v29;
            v33 = v30;
            do
            {
              v34 = *v32++;
              v35 = *(*(this + 4) + 2 * v34);
              if (v35 != 65534)
              {
                v31 = *(*(*this + 272) + 4 * v35 + 4) + v31 - *(*(*this + 272) + 4 * v35);
              }

              --v33;
            }

            while (v33);
          }

          else
          {
            v31 = 0;
          }

          v37 = MemChunkAlloc(0x18uLL, 0);
          *v37 = v31;
          *(v37 + 1) = v77;
          v38 = v31 * v77;
          *(v37 + 4) = 0;
          v37[1] = 0;
          if (v38)
          {
            v37[1] = MemChunkAlloc(8 * v38, 0);
            *(v37 + 4) = v38;
          }

          if (v30)
          {
            v39 = v28;
            v40 = 0;
            v41 = 0;
            do
            {
              v42 = *(*(this + 4) + 2 * *(*(*(this + 26) + v78) + 4 * v40));
              if (v42 != 65534)
              {
                v43 = (*(*this + 272) + 4 * v42);
                v44 = *v43;
                v45 = v43[1];
                if (*v43 < v45)
                {
                  do
                  {
                    DgnMatrix::getRow(v2, v44, v80);
                    v46 = *(v37 + 1);
                    if (v46)
                    {
                      v47 = v80[0];
                      v48 = *v37;
                      v49 = v41;
                      v50 = v37[1];
                      do
                      {
                        v51 = *v47++;
                        *(v50 + 8 * v49) = v51;
                        v49 += v48;
                        --v46;
                      }

                      while (v46);
                    }

                    ++v41;
                    DgnPrimFixArray<double>::~DgnPrimFixArray(v80);
                    *(v81 + 4 * (v44 >> 5)) |= 1 << v44;
                    ++v44;
                  }

                  while (v44 != v45);
                }
              }

              ++v40;
            }

            while (v40 != v30);
            v36 = v37;
            LODWORD(v3) = v74;
            v28 = v39;
          }

          else
          {
            v36 = v37;
          }
        }

        v52 = (*(this + 33) + 16 * v28);
        v76 = v28;
        v53 = (*(this + 35) + 24 * v28);
        if ((DgnMatrix::singularValueDecompose(v37, v52, v53) & 1) == 0)
        {
          break;
        }

        v75 = v36;
        if (v3 >= 2)
        {
          v54 = *(*(this + 26) + 16 * v76 + 8);
          if (v54)
          {
            v55 = 0;
            v56 = 0;
            do
            {
              v57 = *(*(this + 4) + 2 * *(*(*(this + 26) + v78) + 4 * v55));
              if (v57 != 65534)
              {
                v58 = (*(*this + 272) + 4 * v57);
                v59 = *v58;
                v60 = v58[1];
                if (*v58 < v60)
                {
                  do
                  {
                    DgnMatrix::getRow(v37, v56, v80);
                    v61 = *(this + 61);
                    if (v61)
                    {
                      v62 = v80[0];
                      v63 = *v2;
                      v64 = v59;
                      v65 = *(this + 31);
                      do
                      {
                        v66 = *v62++;
                        *(v65 + 8 * v64) = v66;
                        v64 += v63;
                        --v61;
                      }

                      while (v61);
                    }

                    ++v56;
                    DgnPrimFixArray<double>::~DgnPrimFixArray(v80);
                    ++v59;
                  }

                  while (v59 != v60);
                }
              }

              ++v55;
            }

            while (v55 != v54);
          }
        }

        if (v77)
        {
          for (j = 0; j != v77; ++j)
          {
            DgnMatrix::getCol(v53, j, v79);
            DgnVector::operator*(v79, v80, *(*v52 + 8 * j));
            v68 = *v53;
            if (v68)
            {
              v69 = v80[0];
              v70 = *(v53 + 1);
              v71 = v68 * j;
              do
              {
                v72 = *v69++;
                *(v70 + 8 * v71++) = v72;
                --v68;
              }

              while (v68);
            }

            DgnPrimFixArray<double>::~DgnPrimFixArray(v80);
            DgnPrimFixArray<double>::~DgnPrimFixArray(v79);
          }
        }

        LODWORD(v3) = v74;
        if (v75)
        {
          DgnPrimFixArray<double>::~DgnPrimFixArray((v75 + 1));
          MemChunkFree(v75, 0);
        }

        v28 = v76 + 1;
        v6 = v76 + 1 >= v74;
        if (v76 + 1 == v74)
        {
          goto LABEL_77;
        }
      }

      GenoneClassTree::clearDecomposedInverseVarianceData(this);
    }

    else
    {
LABEL_77:
      v6 = 1;
    }

    BitArray::~BitArray(&v81);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v83);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v84);
  }

  return v6;
}

void sub_2625C47F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  BitArray::~BitArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

void *GenoneClassTree::clearDecomposedInverseVarianceData(GenoneClassTree *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 31) = 0;
  }

  *(this + 64) = 0;
  *(this + 30) = 0;
  DgnArray<DgnVector>::releaseAll(this + 264);

  return DgnArray<DgnMatrix>::releaseAll(this + 280);
}

void DgnVector::operator*(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  DgnPrimFixArray<double>::copyArraySlice(a2, a1, 0, *(a1 + 8));
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *a2;
    do
    {
      *v6 = *v6 * a3;
      ++v6;
      --v5;
    }

    while (v5);
  }
}

void *DgnArray<DgnVector>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnPrimFixArray<double>::~DgnPrimFixArray(*a1 + v3);
      v3 -= 16;
    }

    while (v3 != -16);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *DgnArray<DgnMatrix>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 24 * v2 - 16;
    do
    {
      DgnPrimFixArray<double>::~DgnPrimFixArray(*a1 + v3);
      v3 -= 24;
    }

    while (v3 != -16);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void GenoneClassTree::saveGenoneClassTree(GenoneClassTree *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {

    GenoneClassTree::saveGenoneClassTreeText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x19u, a5, "MRGCT!?#", 24, 4);
    v10 = 0;
    writeObject(v8, this + 2, &v10);
    writeObject(v8, this + 3, &v10);
    writeObject<unsigned int>(v8, this + 16, &v10);
    writeObject<unsigned short>(v8, this + 32, &v10);
    writeObject(v8, this + 48, &v10);
    writeObject(v8, this + 64, &v10);
    writeObject(v8, this + 80, &v10);
    writeObject(v8, this + 96, &v10);
    writeObject(v8, this + 28, &v10);
    writeObject<unsigned int>(v8, this + 120, &v10);
    writeObject<unsigned int>(v8, this + 136, &v10);
    writeObject<unsigned int>(v8, this + 152, &v10);
    writeObject<unsigned int>(v8, this + 168, &v10);
    writeObject(v8, (this + 240), &v10);
    writeObject<DgnVector>(v8, this + 264, &v10);
    writeObject<DgnMatrix>(v8, this + 280, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x19u, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void GenoneClassTree::saveGenoneClassTreeText(GenoneClassTree *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v41);
  DgnTextFileWriter::openDgnTextFileWriter(v41, a2, 0x1Au, a3);
  v39 = 0;
  v40 = 0;
  DgnTextFile::legalDgnTextFileVersions(v41, sGCT_Versions, &v39, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v41, "GenoneClassTree", (v39 + 8 * (v40 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "NumberOfNodes", (*(this + 2) - 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "NumberOfGenones", *(this + 3));
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  DgnString::DgnString(v34, "NodeId");
  v11 = v38;
  if (v38 == HIDWORD(v38))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v37, 1, 1);
    v11 = v38;
  }

  DgnString::DgnString((v37 + 16 * v11), v34);
  LODWORD(v38) = v38 + 1;
  DgnString::~DgnString(v34);
  v12 = v36;
  if (v36 == HIDWORD(v36))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v35, 1, 1);
    v12 = v36;
  }

  *(v35 + 4 * v12) = 3;
  LODWORD(v36) = v12 + 1;
  v33 = v38;
  DgnString::DgnString(v34, "ParentId");
  v13 = v38;
  if (v38 == HIDWORD(v38))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v37, 1, 1);
    v13 = v38;
  }

  DgnString::DgnString((v37 + 16 * v13), v34);
  LODWORD(v38) = v38 + 1;
  DgnString::~DgnString(v34);
  v14 = v36;
  if (v36 == HIDWORD(v36))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v35, 1, 1);
    v14 = v36;
  }

  *(v35 + 4 * v14) = 3;
  LODWORD(v36) = v14 + 1;
  v32 = v38;
  DgnString::DgnString(v34, "GenId");
  v15 = v38;
  if (v38 == HIDWORD(v38))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v37, 1, 1);
    v15 = v38;
  }

  DgnString::DgnString((v37 + 16 * v15), v34);
  LODWORD(v38) = v38 + 1;
  DgnString::~DgnString(v34);
  v16 = v36;
  if (v36 == HIDWORD(v36))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v35, 1, 1);
    v16 = v36;
  }

  *(v35 + 4 * v16) = 1;
  LODWORD(v36) = v16 + 1;
  v31 = v38;
  DgnString::DgnString(v34, "IsTransAccClass");
  v17 = v38;
  if (v38 == HIDWORD(v38))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v37, 1, 1);
    v17 = v38;
  }

  DgnString::DgnString((v37 + 16 * v17), v34);
  LODWORD(v38) = v38 + 1;
  DgnString::~DgnString(v34);
  v18 = v36;
  if (v36 == HIDWORD(v36))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v35, 1, 1);
    v18 = v36;
  }

  *(v35 + 4 * v18) = 3;
  LODWORD(v36) = v18 + 1;
  v19 = v38;
  DgnString::DgnString(v34, "IsSpeakerConstrainedTransAccClass");
  v20 = v38;
  if (v38 == HIDWORD(v38))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v37, 1, 1);
    v20 = v38;
  }

  DgnString::DgnString((v37 + 16 * v20), v34);
  LODWORD(v38) = v38 + 1;
  DgnString::~DgnString(v34);
  v21 = v36;
  if (v36 == HIDWORD(v36))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v35, 1, 1);
    v21 = v36;
  }

  *(v35 + 4 * v21) = 3;
  LODWORD(v36) = v21 + 1;
  v22 = v38;
  DgnString::DgnString(v34, "IsChannelConstrainedTransAccClass");
  v23 = v38;
  if (v38 == HIDWORD(v38))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v37, 1, 1);
    v23 = v38;
  }

  DgnString::DgnString((v37 + 16 * v23), v34);
  LODWORD(v38) = v38 + 1;
  DgnString::~DgnString(v34);
  v24 = v36;
  if (v36 == HIDWORD(v36))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v35, 1, 1);
    v24 = v36;
  }

  *(v35 + 4 * v24) = 3;
  LODWORD(v36) = v24 + 1;
  v25 = v38;
  DgnString::DgnString(v34, "IsTransAccAdaptable");
  v26 = v38;
  if (v38 == HIDWORD(v38))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v37, 1, 1);
    v26 = v38;
  }

  DgnString::DgnString((v37 + 16 * v26), v34);
  LODWORD(v38) = v38 + 1;
  DgnString::~DgnString(v34);
  v27 = v36;
  if (v36 == HIDWORD(v36))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v35, 1, 1);
    v27 = v36;
  }

  *(v35 + 4 * v27) = 3;
  LODWORD(v36) = v27 + 1;
  DgnTextFileWriter::setLineFieldFormat(v41, &v35, &v37);
  if (*(this + 6) >= 2u)
  {
    v28 = 1;
    do
    {
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, 0, v28);
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, v33, *(*(this + 2) + 4 * v28));
      v29 = *(*(this + 4) + 2 * v28);
      if (v29 == 65534)
      {
        v30 = -2;
      }

      else if (v29 == 0xFFFF)
      {
        v30 = -1;
      }

      else
      {
        v30 = *(*(this + 4) + 2 * v28);
      }

      DgnTextFileWriter::setLineFieldIntegerValue(v41, v32, v30);
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, v31, (*(*(this + 6) + 4 * (v28 >> 5)) >> v28) & 1);
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, v19, (*(*(this + 10) + 4 * (v28 >> 5)) >> (v28 & 0x1F)) & 1);
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, v22, (*(*(this + 12) + 4 * (v28 >> 5)) >> (v28 & 0x1F)) & 1);
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, v25, (*(*(this + 8) + 4 * (v28 >> 5)) >> (v28 & 0x1F)) & 1);
      DgnTextFileWriter::writeNextLine(v41);
      ++v28;
    }

    while (v28 < *(this + 6));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v35);
  DgnArray<DgnString>::releaseAll(&v37);
  DgnIArray<Utterance *>::~DgnIArray(&v39);
  DgnTextFileWriter::~DgnTextFileWriter(v41);
}

void sub_2625C5190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

uint64_t writeObject<DgnVector>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<DgnMatrix>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject(a1, (*a2 + v7), a3);
      ++v8;
      v7 += 24;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void BitArray::add(BitArray *this, int a2)
{
  v4 = *(this + 2);
  if (v4 == *(this + 3))
  {
    BitArray::reallocElts(this, 1, 1);
    v4 = *(this + 2);
  }

  *(this + 2) = v4 + 1;
  v5 = 1 << v4;
  v6 = v4 >> 5;
  if (a2)
  {
    v7 = *(*this + 4 * v6) | v5;
  }

  else
  {
    v7 = *(*this + 4 * v6) & ~v5;
  }

  *(*this + 4 * v6) = v7;
}

uint64_t BitArrayIterator::scanForNextSetBitOrStop(BitArrayIterator *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  if (v2 < v1)
  {
    v3 = v2 & 0x1F;
    if ((v2 & 0x1F) != 0)
    {
      while (v1 != v2)
      {
        if ((*(**(this + 2) + 4 * (v2 >> 5)) >> v3))
        {
          goto LABEL_17;
        }

        *(this + 1) = ++v2;
        ++v3;
        if ((v2 & 0x1F) == 0)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v4 = v2 >> 5;
      v5 = v1 >> 5;
      if (v4 < (v1 >> 5))
      {
        while (!*(**(this + 2) + 4 * v4))
        {
          if (v5 == ++v4)
          {
            goto LABEL_11;
          }
        }

        LODWORD(v5) = v4;
LABEL_11:
        v2 = 32 * v5;
      }

      *(this + 1) = v2;
      if (v2 < v1)
      {
        v6 = **(this + 2);
        while (((*(v6 + 4 * (v2 >> 5)) >> v2) & 1) == 0)
        {
          *(this + 1) = ++v2;
          if (v1 == v2)
          {
            return (v1 - *this);
          }
        }
      }

LABEL_17:
      LODWORD(v1) = v2;
    }
  }

  return (v1 - *this);
}

void MrecInitModule_psholder_recogctl(void)
{
  if (!gParDebugParamSetUpgrade)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugParamSetUpgrade", byte_26286EA0E, byte_26286EA0E, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugParamSetUpgrade = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugParamSetUpgrade);
  }
}

uint64_t ParamSetIdCollSearchCmp(unsigned int *a1, ParamSetHolder **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ParamSetCStringName = ParamSetHolder::getParamSetCStringName(a2[1], *a1, a3, a4, a5, a6, a7, a8);
  v10 = ParamSetCStringName;
  v11 = *(a2 + 26);
  v12 = *a2;
  if (v11 == 1)
  {
    v13 = strlen(v12);

    return ustrncmp(v10, v12, v13);
  }

  else
  {

    return ustrcmp(ParamSetCStringName, v12);
  }
}

void *ParamSetHolder::getParamSetCStringName(ParamSetHolder *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(this + 1) + 8 * a2);
  if (!v8)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2237, "recogctl/psholder", 11, "%u", a7, a8, a2);
    v8 = *(*(this + 1) + 8 * a2);
  }

  if (*(v8 + 16))
  {
    return *(v8 + 8);
  }

  else
  {
    return &unk_26286EA0E;
  }
}

uint64_t ParamSetIdCollSearchCmpFromParamSetId(unsigned int *a1, ParamSetHolder **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ParamSetCStringName = ParamSetHolder::getParamSetCStringName(a2[1], *a2, a3, a4, a5, a6, a7, a8);
  v11 = *(a2 + 12);
  v12 = *(a2 + 26);
  v20 = ParamSetCStringName;
  v21 = *(a2 + 1);
  v22 = v11;
  v23 = v12;
  return ParamSetIdCollSearchCmp(a1, &v20, v13, v14, v15, v16, v17, v18);
}

uint64_t ParamSetHolder::lookupName(ParamSetHolder *a1, ParamSetHolder *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18[0] = a2;
  v18[1] = a1;
  v18[2] = 0;
  v19 = -2;
  v20 = 0;
  v8 = a1 + 80 * a3;
  v10 = v8[72];
  v9 = v8 + 72;
  if (v10 == 1 && *(v9 + 1) == -2)
  {
    v11 = v9 + 8;
  }

  else
  {
    v11 = *(*(v9 + 3) + 524272);
  }

  v12 = *(v11 + 2);
  v13 = v12 - 1;
  if (v12 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = 0;
  while (1)
  {
    v15 = ((v13 + v14) / 2);
    v16 = ParamSetIdCollSearchCmp((*v11 + 4 * v15), v18, a3, a4, a5, a6, a7, a8);
    if (!v16)
    {
      break;
    }

    if (v16 < 0)
    {
      v14 = v15 + 1;
    }

    else
    {
      v13 = v15 - 1;
    }

    if (v14 > v13)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if ((v13 + v14 + 3) >= 2)
  {
    return *(*v11 + 4 * v15);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ParamSetHolder::addName(ParamSetHolder *a1, int a2, ParamSetHolder *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  if (ParamSetHolder::lookupName(a1, a3, a4, a4, a5, a6, a7, a8) != -1)
  {
    v15 = spParamSetTypeStringNames[v8];
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 732, "recogctl/psholder", 12, "%.500s %.500s", v12, v13, v9);
  }

  return DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::add(a1 + 80 * v8 + 72, a2);
}

uint64_t DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::add(uint64_t result, int a2)
{
  v3 = result;
  v4 = (result + 8);
  if (*result == 1)
  {
    v5 = *(result + 2);
    v26 = a2;
    v27 = *(result + 64);
    v28 = v5;
    v29 = 0;
    result = DgnPrimArray<unsigned int>::searchLastOrBefore((result + 8), 0, *(result + 16), &v26, *(result + 56));
    v6 = (result + 1);
    v7 = *(v3 + 16);
    if (v7 == *(v3 + 20))
    {
      result = DgnPrimArray<unsigned int>::reallocElts(v4, 1, 1);
      v7 = *(v3 + 16);
    }

    v8 = *v4;
    if (v7 > v6)
    {
      v9 = v7;
      v10 = (v8 + 4 * v7);
      v11 = v10;
      do
      {
        --v9;
        v12 = *--v11;
        *v10 = v12;
        v10 = v11;
      }

      while (v9 > v6);
    }

    v13 = (v8 + 4 * v6);
  }

  else
  {
    v14 = *(result + 16);
    if (v14 == *(result + 20))
    {
      result = DgnPrimArray<unsigned int>::reallocElts(result + 8, 1, 1);
      v14 = *(v3 + 16);
    }

    v13 = (*v4 + 4 * v14);
  }

  *v13 = a2;
  ++*(v3 + 16);
  v15 = *(v3 + 32);
  if (v15)
  {
    for (i = 0; i < v15; ++i)
    {
      result = *(*(v3 + 24) + 8 * i);
      if (result)
      {
        v26 = a2;
        v27 = *(v3 + 64);
        v28 = i;
        v29 = 0;
        result = DgnPrimArray<unsigned int>::searchLastOrBefore(result, 0, *(result + 8), &v26, *(v3 + 56));
        v17 = result;
        v18 = *(*(v3 + 24) + 8 * i);
        v19 = *(v18 + 2);
        if (v19 == *(v18 + 3))
        {
          result = DgnPrimArray<unsigned int>::reallocElts(*(*(v3 + 24) + 8 * i), 1, 1);
          v19 = *(v18 + 2);
        }

        v20 = (v17 + 1);
        v21 = *v18;
        if (v19 > v20)
        {
          v22 = v19;
          v23 = (v21 + 4 * v19);
          v24 = v23;
          do
          {
            --v22;
            v25 = *--v24;
            *v23 = v25;
            v23 = v24;
          }

          while (v22 > v20);
        }

        *(v21 + 4 * v20) = a2;
        ++*(v18 + 2);
        v15 = *(v3 + 32);
      }
    }
  }

  return result;
}

void ParamSetHolder::getRefDetails(ParamSetHolder *this@<X0>, DgnString *a2@<X8>)
{
  DgnString::DgnString(a2);
  v7 = *(this + 4);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = *(*(this + 1) + 8 * i);
      if (v9)
      {
        v10 = *(v9 + 36);
        if (v10)
        {
          if (*(v9 + 16))
          {
            v11 = *(v9 + 8);
          }

          else
          {
            v11 = byte_26286EA0E;
          }

          DgnString::printfAppend(a2, "%u,%u,%s,%u;", v4, v5, v6, *(v9 + 24), i, v11, v10);
        }
      }
    }
  }
}

void ParamSetHolder::ParamSetHolder(ParamSetHolder *this, int a2)
{
  v3 = 0;
  *this = a2;
  *(this + 1) = 0;
  v4 = this + 8;
  *(this + 2) = 0;
  *(this + 3) = 0x10000001DLL;
  *(this + 8) = 1;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  do
  {
    v5 = this + v3;
    v5[72] = 0;
    *(v5 + 74) = 0;
    *(v5 + 5) = 0uLL;
    *(v5 + 6) = 0uLL;
    *(v5 + 7) = 0uLL;
    v3 += 80;
    *(v5 + 17) = 0;
    *(v5 + 18) = 0;
  }

  while (v3 != 1040);
  *(this + 1153) = 0u;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 1112) = 0u;
  FileHistory::FileHistory((this + 1176), 0x64u, 0x64u);
  v6 = *(this + 4);
  if (v6 == *(this + 5))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v4, 1, 1);
    v6 = *(this + 4);
  }

  v7 = 0;
  *(*(this + 1) + 8 * v6) = 0;
  *(this + 4) = v6 + 1;
  do
  {
    v8 = this + v7;
    *(v8 + 16) = ParamSetIdCollSearchCmpFromParamSetId;
    *(v8 + 17) = this;
    *(v8 + 18) = 0;
    v8[72] = 1;
    *(v8 + 74) = 131070;
    v7 += 80;
  }

  while (v7 != 1040);
  v9 = MemChunkAlloc(0x110uLL, 0);
  *(this + 139) = EnvMgr::EnvMgr(v9, 0xDu);
}

void sub_2625C5BE8(_Unwind_Exception *a1)
{
  v5 = v3 + 1032;
  v6 = -1040;
  do
  {
    v5 = DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(v5) - 80;
    v6 += 80;
  }

  while (v6);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnIOwnArray<ParamSetBase *>::releaseAll(v1);
  _Unwind_Resume(a1);
}

void ParamSetHolder::~ParamSetHolder(EnvMgr **this)
{
  DgnDelete<EnvMgr>(this[139]);
  FileHistory::~FileHistory((this + 147));
  for (i = 129; i != -1; i -= 10)
  {
    DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(&this[i]);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 5));
  DgnIOwnArray<ParamSetBase *>::releaseAll((this + 1));
}

void ParamSetHolder::printSize(ParamSetHolder *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 822, &v150);
  if (v151)
  {
    v16 = v150;
  }

  else
  {
    v16 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, byte_26286EA0E, a3, byte_26286EA0E, v16);
  DgnString::~DgnString(&v150);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, byte_26286EA0E);
  v21 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 824, &v150);
  if (v151)
  {
    v26 = v150;
  }

  else
  {
    v26 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v23, v24, v25, (a3 + 1), byte_26286EA0E, (34 - a3), (34 - a3), v26, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  v27 = sizeObject<ParamSetBase *>(this + 8, 0);
  v28 = sizeObject<ParamSetBase *>(this + 8, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 826, &v150);
  if (v151)
  {
    v33 = v150;
  }

  else
  {
    v33 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, (a3 + 1), byte_26286EA0E, (34 - a3), (34 - a3), v33, v27, v28, 0);
  v147 = (a3 + 1);
  v145 = a3;
  v146 = a6;
  DgnString::~DgnString(&v150);
  *a4 += v27;
  *a5 += v28;
  v34 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 12;
  }

  v35 = *(this + 12);
  v36 = *(this + 13);
  v37 = v36 >= v35;
  v38 = v36 - v35;
  if (v37)
  {
    if (v35 > 0)
    {
      v34 += 4 * (v35 - 1) + 4;
    }

    v34 += 4 * v38;
  }

  v39 = v34 + 24;
  v40 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 10, 1u) + 12;
  v41 = *(this + 12);
  v42 = this;
  if (v41 <= *(this + 13))
  {
    v43 = 0;
  }

  else
  {
    v43 = 4 * v41;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 828, &v150);
  if (v151)
  {
    v48 = v150;
  }

  else
  {
    v48 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v45, v46, v47, v147, byte_26286EA0E, (34 - a3), (34 - a3), v48, v39, v40, v43);
  DgnString::~DgnString(&v150);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  *a4 += v39;
  *a5 += v40;
  *v146 += v43;
  v52 = v42 + 72;
  v53 = 13;
  do
  {
    v49 += DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(v52, 0);
    v50 += DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(v52, 1);
    v51 += DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(v52, 3);
    v52 += 80;
    --v53;
  }

  while (v53);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 830, &v150);
  if (v151)
  {
    v58 = v150;
  }

  else
  {
    v58 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, v147, byte_26286EA0E, v21, v21, v58, v49, v50, v51);
  DgnString::~DgnString(&v150);
  *a4 += v49;
  *a5 += v50;
  *v146 += v51;
  v59 = *(v42 + 139);
  if (v59)
  {
    v150 = 0;
    v148 = 0;
    v149 = 0;
    EnvMgr::printSize(v59, 0xFFFFFFFFLL, v147, &v150, &v149, &v148);
    *a4 += v150;
    *a5 += v149;
    *v146 += v148;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v60 = 4;
  }

  else
  {
    v60 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 832, &v150);
  if (v151)
  {
    v65 = v150;
  }

  else
  {
    v65 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v62, v63, v64, v147, byte_26286EA0E, v21, v21, v65, v60, v60, 0);
  DgnString::~DgnString(&v150);
  *a4 += v60;
  *a5 += v60;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 834, &v150);
  if (v151)
  {
    v70 = v150;
  }

  else
  {
    v70 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v67, v68, v69, v147, byte_26286EA0E, v21, v21, v70, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 836, &v150);
  if (v151)
  {
    v75 = v150;
  }

  else
  {
    v75 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, v147, byte_26286EA0E, v21, v21, v75, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 838, &v150);
  if (v151)
  {
    v80 = v150;
  }

  else
  {
    v80 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v77, v78, v79, v147, byte_26286EA0E, v21, v21, v80, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 840, &v150);
  if (v151)
  {
    v85 = v150;
  }

  else
  {
    v85 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v82, v83, v84, v147, byte_26286EA0E, v21, v21, v85, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 842, &v150);
  if (v151)
  {
    v90 = v150;
  }

  else
  {
    v90 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v87, v88, v89, v147, byte_26286EA0E, v21, v21, v90, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 844, &v150);
  if (v151)
  {
    v95 = v150;
  }

  else
  {
    v95 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v92, v93, v94, v147, byte_26286EA0E, v21, v21, v95, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 846, &v150);
  if (v151)
  {
    v100 = v150;
  }

  else
  {
    v100 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v97, v98, v99, v147, byte_26286EA0E, v21, v21, v100, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 848, &v150);
  if (v151)
  {
    v105 = v150;
  }

  else
  {
    v105 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v102, v103, v104, v147, byte_26286EA0E, v21, v21, v105, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 850, &v150);
  if (v151)
  {
    v110 = v150;
  }

  else
  {
    v110 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v107, v108, v109, v147, byte_26286EA0E, v21, v21, v110, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 852, &v150);
  if (v151)
  {
    v115 = v150;
  }

  else
  {
    v115 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v111, v112, v113, v114, v147, byte_26286EA0E, v21, v21, v115, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 854, &v150);
  if (v151)
  {
    v120 = v150;
  }

  else
  {
    v120 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v116, v117, v118, v119, v147, byte_26286EA0E, v21, v21, v120, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 856, &v150);
  if (v151)
  {
    v125 = v150;
  }

  else
  {
    v125 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v121, v122, v123, v124, v147, byte_26286EA0E, v21, v21, v125, 4, 4, 0);
  DgnString::~DgnString(&v150);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 858, &v150);
  if (v151)
  {
    v130 = v150;
  }

  else
  {
    v130 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v126, v127, v128, v129, v147, byte_26286EA0E, v21, v21, v130, 1, 1, 0);
  DgnString::~DgnString(&v150);
  ++*a4;
  ++*a5;
  v131 = sizeObject(v42 + 1176, 0);
  v132 = sizeObject(v42 + 1176, 1);
  v133 = sizeObject(v42 + 1176, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 859, &v150);
  if (v151)
  {
    v138 = v150;
  }

  else
  {
    v138 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v134, v135, v136, v137, v147, byte_26286EA0E, v21, v21, v138, v131, v132, v133);
  DgnString::~DgnString(&v150);
  *a4 += v131;
  *a5 += v132;
  *v146 += v133;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 860, &v150);
  if (v151)
  {
    v143 = v150;
  }

  else
  {
    v143 = byte_26286EA0E;
  }

  v144 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v139, v140, v141, v142, v145, byte_26286EA0E, (35 - v145), (35 - v145), v143, *a4, *a5, *v146);
  DgnString::~DgnString(&v150);
}

uint64_t sizeObject<ParamSetBase *>(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += (*(*v10 + 104))(v10, a2);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

void *ParamSetHolder::loadParamSetHolderText(ParamSetHolder *this, DFile *a2)
{
  v2 = a2;
  v3 = 0;
  v363 = 0;
  v364[0] = 0;
  v361 = 0;
  v362 = 0;
  v359 = 0;
  v360 = 0;
  v357 = 0;
  v358 = 0;
  v355 = 0;
  v356 = 0;
  v353 = 0;
  v354 = 0;
  v351 = 0;
  v352 = 0;
  v349 = 0;
  v350 = 0;
  v347 = 0;
  v348 = 0;
  v346 = 0;
  v345 = 0;
  v344 = 0;
  v343 = 0;
  v342 = 0;
  v341 = 0;
  v4 = 1;
  v302 = -1;
  v303 = -1;
  v300 = 0xFFFFFFFFLL;
  v301 = -1;
  v298 = 0xFFFFFFFFLL;
  v299 = -1;
  v296 = 0xFFFFFFFFLL;
  v297 = -1;
  v294 = 0xFFFFFFFFLL;
  v295 = -1;
  v292 = 0xFFFFFFFFLL;
  v293 = -1;
  v290 = 0xFFFFFFFFLL;
  v291 = -1;
  v288 = 0xFFFFFFFFLL;
  v289 = -1;
  v286 = 0xFFFFFFFFLL;
  v287 = -1;
  v284 = 0xFFFFFFFFLL;
  v285 = -1;
  v283 = 0xFFFFFFFFLL;
  v306 = 0xFFFFFFFFLL;
  v304 = 0xFFFFFFFFLL;
  v305 = 0xFFFFFFFFLL;
  do
  {
    DgnTextFileParser::DgnTextFileParser(v340);
    LOBYTE(v322) = 0;
    v339[1] = 0;
    v339[0] = 0;
    v338 = 0;
    if (v4 > 6)
    {
      if (v4 > 9)
      {
        switch(v4)
        {
          case 0xA:
            *(this + 289) = 0;
            if (!DFile::subFileExists(v2, 0x58u))
            {
              v298 = 0;
              v301 = 1;
              goto LABEL_182;
            }

            v3 = qword_281051FB8;
            DgnTextFileParser::openDgnTextFileParser(v340, v2, 0x58u, 1);
            DgnTextFileParser::verifyMatchingFileType(v340, "SearchParamSetArrayText");
            DgnTextFile::legalDgnTextFileVersions(v340, sSRPT_Versions, v339, v92, v93, v94, v95, v96);
            DgnTextFileParser::verifyFileVersionInRange(v340, v339, v97, v98, v99, v100, v101, v102);
            DgnTextFile::getHeaderFieldUnsigned(v340, "NumberOfParamSets", &v338, 1, 1u, 0xFFFFu);
            --v338;
            FileVersion = DgnTextFile::getFileVersion(v340);
            v17 = HIDWORD(FileVersion);
            v312 = &v345;
            v322 = ".srpt";
            v310 = &v346;
            v309 = &v346 + 4;
            v301 = FileVersion;
            v18 = FileVersion;
            v298 = HIDWORD(FileVersion);
            goto LABEL_41;
          case 0xB:
            *(this + 290) = 0;
            if (!DFile::subFileExists(v2, 0x54u))
            {
              v300 = 0;
              v302 = 1;
              goto LABEL_182;
            }

            v3 = qword_281051FC0;
            DgnTextFileParser::openDgnTextFileParser(v340, v2, 0x54u, 1);
            DgnTextFileParser::verifyMatchingFileType(v340, "SearchCrossLayerParamSetArrayText");
            DgnTextFile::legalDgnTextFileVersions(v340, sSCPT_Versions, v339, v140, v141, v142, v143, v144);
            DgnTextFileParser::verifyFileVersionInRange(v340, v339, v145, v146, v147, v148, v149, v150);
            DgnTextFile::getHeaderFieldUnsigned(v340, "NumberOfParamSets", &v338, 1, 1u, 0xFFFFu);
            --v338;
            v151 = DgnTextFile::getFileVersion(v340);
            v17 = HIDWORD(v151);
            v312 = &v343;
            v322 = ".scpt";
            v310 = &v344;
            v309 = &v344 + 4;
            v302 = v151;
            v18 = v151;
            v300 = HIDWORD(v151);
            goto LABEL_41;
          case 0xC:
            *(this + 291) = 0;
            if (!DFile::subFileExists(v2, 0x65u))
            {
              v303 = 1;
              v304 = 0;
              goto LABEL_182;
            }

            v3 = qword_281051FC8;
            DgnTextFileParser::openDgnTextFileParser(v340, v2, 0x65u, 1);
            DgnTextFileParser::verifyMatchingFileType(v340, "UserDeltaParamSetArrayText");
            DgnTextFile::legalDgnTextFileVersions(v340, sUDPT_Versions, v339, v43, v44, v45, v46, v47);
            DgnTextFileParser::verifyFileVersionInRange(v340, v339, v48, v49, v50, v51, v52, v53);
            DgnTextFile::getHeaderFieldUnsigned(v340, "NumberOfParamSets", &v338, 1, 1u, 0xFFFFu);
            --v338;
            v54 = DgnTextFile::getFileVersion(v340);
            v55 = HIDWORD(v54);
            v312 = &v341;
            v322 = ".udpt";
            v310 = &v342;
            v309 = &v342 + 4;
            v303 = v54;
            v304 = HIDWORD(v54);
            v18 = v54;
            goto LABEL_43;
        }
      }

      else
      {
        switch(v4)
        {
          case 7:
            *(this + 286) = 0;
            if (!DFile::subFileExists(v2, 0x45u))
            {
              v292 = 0;
              v295 = 1;
              goto LABEL_182;
            }

            v3 = qword_281051FA0;
            DgnTextFileParser::openDgnTextFileParser(v340, v2, 0x45u, 1);
            DgnTextFileParser::verifyMatchingFileType(v340, "PrefiltererSearchParamSetArrayText");
            DgnTextFile::legalDgnTextFileVersions(v340, sPSPT_Versions, v339, v68, v69, v70, v71, v72);
            DgnTextFileParser::verifyFileVersionInRange(v340, v339, v73, v74, v75, v76, v77, v78);
            DgnTextFile::getHeaderFieldUnsigned(v340, "NumberOfParamSets", &v338, 1, 1u, 0xFFFFu);
            --v338;
            v79 = DgnTextFile::getFileVersion(v340);
            v17 = HIDWORD(v79);
            v312 = &v351;
            v322 = ".pspt";
            v310 = &v352;
            v309 = &v352 + 4;
            v295 = v79;
            v18 = v79;
            v292 = HIDWORD(v79);
            goto LABEL_41;
          case 8:
            *(this + 287) = 0;
            if (!DFile::subFileExists(v2, 0x3Cu))
            {
              v294 = 0;
              v297 = 1;
              goto LABEL_182;
            }

            v3 = qword_281051FA8;
            DgnTextFileParser::openDgnTextFileParser(v340, v2, 0x3Cu, 1);
            DgnTextFileParser::verifyMatchingFileType(v340, "PronGuessParamSetArrayText");
            DgnTextFile::legalDgnTextFileVersions(v340, sPGPT_Versions, v339, v116, v117, v118, v119, v120);
            DgnTextFileParser::verifyFileVersionInRange(v340, v339, v121, v122, v123, v124, v125, v126);
            DgnTextFile::getHeaderFieldUnsigned(v340, "NumberOfParamSets", &v338, 1, 1u, 0xFFFFu);
            --v338;
            v127 = DgnTextFile::getFileVersion(v340);
            v17 = HIDWORD(v127);
            v312 = &v349;
            v322 = ".pgpt";
            v310 = &v350;
            v309 = &v350 + 4;
            v297 = v127;
            v18 = v127;
            v294 = HIDWORD(v127);
            goto LABEL_41;
          case 9:
            *(this + 288) = 0;
            if (!DFile::subFileExists(v2, 0x4Fu))
            {
              v296 = 0;
              v299 = 1;
              goto LABEL_182;
            }

            v3 = qword_281051FB0;
            DgnTextFileParser::openDgnTextFileParser(v340, v2, 0x4Fu, 1);
            DgnTextFileParser::verifyMatchingFileType(v340, "SausageParamSetArrayText");
            DgnTextFile::legalDgnTextFileVersions(v340, sSAPT_Versions, v339, v19, v20, v21, v22, v23);
            DgnTextFileParser::verifyFileVersionInRange(v340, v339, v24, v25, v26, v27, v28, v29);
            DgnTextFile::getHeaderFieldUnsigned(v340, "NumberOfParamSets", &v338, 1, 1u, 0xFFFFu);
            --v338;
            v30 = DgnTextFile::getFileVersion(v340);
            v17 = HIDWORD(v30);
            v312 = &v347;
            v322 = ".sapt";
            v310 = &v348;
            v309 = &v348 + 4;
            v299 = v30;
            v18 = v30;
            v296 = HIDWORD(v30);
            goto LABEL_41;
        }
      }
    }

    else if (v4 > 3)
    {
      switch(v4)
      {
        case 4:
          *(this + 283) = 0;
          if (!DFile::subFileExists(v2, 0x21u))
          {
            v286 = 0;
            v289 = 1;
            goto LABEL_182;
          }

          v3 = qword_281051F88;
          DgnTextFileParser::openDgnTextFileParser(v340, v2, 0x21u, 1);
          DgnTextFileParser::verifyMatchingFileType(v340, "LatticeNBestParamSetArrayText");
          DgnTextFile::legalDgnTextFileVersions(v340, sLNPT_Versions, v339, v80, v81, v82, v83, v84);
          DgnTextFileParser::verifyFileVersionInRange(v340, v339, v85, v86, v87, v88, v89, v90);
          DgnTextFile::getHeaderFieldUnsigned(v340, "NumberOfParamSets", &v338, 1, 1u, 0xFFFFu);
          --v338;
          v91 = DgnTextFile::getFileVersion(v340);
          v17 = HIDWORD(v91);
          v312 = &v357;
          v322 = ".lnpt";
          v310 = &v358;
          v309 = &v358 + 4;
          v289 = v91;
          v18 = v91;
          v286 = HIDWORD(v91);
          goto LABEL_41;
        case 5:
          *(this + 284) = 0;
          if (!DFile::subFileExists(v2, 0x22u))
          {
            v288 = 0;
            v291 = 1;
            goto LABEL_182;
          }

          v3 = qword_281051F90;
          DgnTextFileParser::openDgnTextFileParser(v340, v2, 0x22u, 1);
          DgnTextFileParser::verifyMatchingFileType(v340, "LatticePostProbParamSetArrayText");
          DgnTextFile::legalDgnTextFileVersions(v340, sLPPT_Versions, v339, v128, v129, v130, v131, v132);
          DgnTextFileParser::verifyFileVersionInRange(v340, v339, v133, v134, v135, v136, v137, v138);
          DgnTextFile::getHeaderFieldUnsigned(v340, "NumberOfParamSets", &v338, 1, 1u, 0xFFFFu);
          --v338;
          v139 = DgnTextFile::getFileVersion(v340);
          v17 = HIDWORD(v139);
          v312 = &v355;
          v322 = ".lppt";
          v310 = &v356;
          v309 = &v356 + 4;
          v291 = v139;
          v18 = v139;
          v288 = HIDWORD(v139);
          goto LABEL_41;
        case 6:
          *(this + 285) = 0;
          if (!DFile::subFileExists(v2, 0x37u))
          {
            v290 = 0;
            v293 = 1;
            goto LABEL_182;
          }

          v3 = qword_281051F98;
          DgnTextFileParser::openDgnTextFileParser(v340, v2, 0x37u, 1);
          DgnTextFileParser::verifyMatchingFileType(v340, "PrefiltererBuildParamSetArrayText");
          DgnTextFile::legalDgnTextFileVersions(v340, sPBPT_Versions, v339, v31, v32, v33, v34, v35);
          DgnTextFileParser::verifyFileVersionInRange(v340, v339, v36, v37, v38, v39, v40, v41);
          DgnTextFile::getHeaderFieldUnsigned(v340, "NumberOfParamSets", &v338, 1, 1u, 0xFFFFu);
          --v338;
          v42 = DgnTextFile::getFileVersion(v340);
          v17 = HIDWORD(v42);
          v312 = &v353;
          v322 = ".pbpt";
          v310 = &v354;
          v309 = &v354 + 4;
          v293 = v42;
          v18 = v42;
          v290 = HIDWORD(v42);
          goto LABEL_41;
      }
    }

    else
    {
      switch(v4)
      {
        case 1:
          *(this + 280) = 0;
          if ((DFile::subFileExists(v2, 0) & 1) == 0)
          {
            v305 = 0;
            v306 = 1;
            goto LABEL_182;
          }

          v3 = qword_281051F70;
          DgnTextFileParser::openDgnTextFileParser(v340, v2, 0, 1);
          DgnTextFileParser::verifyMatchingFileType(v340, "AdapterParamSetArrayText");
          DgnTextFile::legalDgnTextFileVersions(v340, sADPT_Versions, v339, v56, v57, v58, v59, v60);
          DgnTextFileParser::verifyFileVersionInRange(v340, v339, v61, v62, v63, v64, v65, v66);
          DgnTextFile::getHeaderFieldUnsigned(v340, "NumberOfParamSets", &v338, 1, 1u, 0xFFFFu);
          --v338;
          v67 = DgnTextFile::getFileVersion(v340);
          v17 = HIDWORD(v67);
          v312 = &v363;
          v322 = ".adpt";
          v310 = v364;
          v309 = v364 + 4;
          v306 = v67;
          v18 = v67;
          v305 = HIDWORD(v67);
          goto LABEL_41;
        case 2:
          *(this + 281) = 0;
          if (!DFile::subFileExists(v2, 0xBu))
          {
            v283 = 0;
            v285 = 1;
            goto LABEL_182;
          }

          v3 = qword_281051F78;
          DgnTextFileParser::openDgnTextFileParser(v340, v2, 0xBu, 1);
          DgnTextFileParser::verifyMatchingFileType(v340, "ChannelParamSetArrayText");
          DgnTextFile::legalDgnTextFileVersions(v340, sCHPT_Versions, v339, v104, v105, v106, v107, v108);
          DgnTextFileParser::verifyFileVersionInRange(v340, v339, v109, v110, v111, v112, v113, v114);
          DgnTextFile::getHeaderFieldUnsigned(v340, "NumberOfParamSets", &v338, 1, 1u, 0xFFFFu);
          --v338;
          v115 = DgnTextFile::getFileVersion(v340);
          v17 = HIDWORD(v115);
          v312 = &v361;
          v322 = ".chpt";
          v310 = &v362;
          v309 = &v362 + 4;
          v285 = v115;
          v18 = v115;
          v283 = HIDWORD(v115);
          goto LABEL_41;
        case 3:
          *(this + 282) = 0;
          if (!DFile::subFileExists(v2, 0xFu))
          {
            v284 = 0;
            v287 = 1;
            goto LABEL_182;
          }

          v3 = qword_281051F80;
          DgnTextFileParser::openDgnTextFileParser(v340, v2, 0xFu, 1);
          DgnTextFileParser::verifyMatchingFileType(v340, "ConfidenceParamSetArrayText");
          DgnTextFile::legalDgnTextFileVersions(v340, sCOPT_Versions, v339, v5, v6, v7, v8, v9);
          DgnTextFileParser::verifyFileVersionInRange(v340, v339, v10, v11, v12, v13, v14, v15);
          DgnTextFile::getHeaderFieldUnsigned(v340, "NumberOfParamSets", &v338, 1, 1u, 0xFFFFu);
          --v338;
          v16 = DgnTextFile::getFileVersion(v340);
          v17 = HIDWORD(v16);
          v312 = &v359;
          v322 = ".copt";
          v310 = &v360;
          v309 = &v360 + 4;
          v287 = v16;
          v18 = v16;
          v284 = HIDWORD(v16);
LABEL_41:
          v152 = v17;
          goto LABEL_44;
      }
    }

    v310 = 8;
    v309 = 12;
    v312 = 0;
    v18 = v306;
    v55 = v305;
LABEL_43:
    v152 = v55;
LABEL_44:
    v337 = 0;
    v336 = 0;
    v314 = v18;
    v313 = v152;
    ParamSpecMgr::getAllParamIdsSortedByName(v3, &v336, v18, v152);
    DgnTextFileParser::verifyNoUnknownHeaderFields(v340, v153, v154, v155, v156, v157, v158, v159);
    v335 = 0;
    v334 = 0;
    DgnTextFile::getLineFieldNames(v340, &v334);
    v333[1] = 0;
    v333[0] = 0;
    DgnTextFile::getLineFieldFormats(v340, v333);
    if (v335)
    {
      v162 = 0;
      v163 = 0;
      v164 = 0;
      v319 = -1;
      v318 = -1;
      v317 = -1;
      v315 = -1;
      do
      {
        v165 = *(v334 + v162);
        if (*(v334 + v162 + 8))
        {
          v166 = *(v334 + v162);
        }

        else
        {
          v166 = byte_26286EA0E;
        }

        if (!strcmp(v166, "SetIndex"))
        {
          if (*(v333[0] + 4 * v163) != 3)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 963, "recogctl/psholder", 17, "%.500s %.500s %.500s", v160, v161, v322);
          }

          ++v164;
          v319 = v163;
        }

        else if (!strcmp(v166, "SetName"))
        {
          if (*(v333[0] + 4 * v163))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 971, "recogctl/psholder", 17, "%.500s %.500s %.500s", v160, v161, v322);
          }

          ++v164;
          v318 = v163;
        }

        else if (!strcmp(v166, "ParamName"))
        {
          if (*(v333[0] + 4 * v163))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 979, "recogctl/psholder", 17, "%.500s %.500s %.500s", v160, v161, v322);
          }

          ++v164;
          v317 = v163;
        }

        else if (!strcmp(v166, "ParamValue"))
        {
          if (*(v333[0] + 4 * v163))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 987, "recogctl/psholder", 17, "%.500s %.500s %.500s", v160, v161, v322);
          }

          ++v164;
          v315 = v163;
        }

        else
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 992, "recogctl/psholder", 15, "%.500s %.500s", v160, v161, v322);
        }

        ++v163;
        v162 += 16;
      }

      while (v163 < v335);
      if (v164 == 4)
      {
        goto LABEL_71;
      }
    }

    else
    {
      LOBYTE(v164) = 0;
      v319 = -1;
      v318 = -1;
      v317 = -1;
      v315 = -1;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 995, "recogctl/psholder", 16, "%u %u", v160, v161, v164);
LABEL_71:
    v332 = 0;
    v331 = 0;
    DgnString::DgnString(&v329, "_default");
    v167 = v332;
    v168 = v314;
    if (v332 == HIDWORD(v332))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(&v331, 1, 1);
      v167 = v332;
    }

    DgnString::DgnString((v331 + 16 * v167), &v329);
    v311 = v4;
    LODWORD(v332) = v332 + 1;
    DgnString::~DgnString(&v329);
    v316 = 0;
    v321 = 0;
    v320 = 0;
    v169 = 0;
    v330 = 0;
    v329 = 0;
    while ((DgnTextFileParser::parseNextLine(v340) & 1) != 0)
    {
      LineFieldUnsigned = DgnTextFileParser::getLineFieldUnsigned(v340, v319, v170, v171, v172, v173, v174, v175);
      LineFieldString = DgnTextFileParser::getLineFieldString(v340, v318);
      v178 = DgnTextFileParser::getLineFieldString(v340, v317);
      v179 = DgnTextFileParser::getLineFieldString(v340, v315);
      DgnString::DgnString(&v327, LineFieldString);
      DgnString::DgnString(&v325, v178);
      DgnString::DgnString(&v323, v179);
      if (v321 < v337)
      {
        v186 = *(v336 + 2 * v321);
        ParamByParamId = ParamSpecMgr::getParamByParamId(v3, v186, v180, v181, v182, v183, v184, v185);
        v188 = v3;
        v189 = ParamByParamId[1];
        v192 = (*(*ParamByParamId + 24))(ParamByParamId);
        if (LineFieldUnsigned)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1079, "recogctl/psholder", 37, "%u %.500s %u", v190, v191, LineFieldUnsigned);
        }

        if (v328)
        {
          v193 = v327;
        }

        else
        {
          v193 = byte_26286EA0E;
        }

        if (strcmp(v193, "_default"))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1082, "recogctl/psholder", 20, "%.500s %.500s %.500s %u", v194, v195, "_default");
        }

        if (v326)
        {
          v196 = v325;
        }

        else
        {
          v196 = byte_26286EA0E;
        }

        if (strcmp(v196, v189))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1086, "recogctl/psholder", 21, "%.500s %.500s %.500s %u", v199, v200, v189);
        }

        if (v192 <= 2)
        {
          if (v192 == 1)
          {
            v3 = v188;
            Default_BOOL = ParamSpecMgr::ParamGetDefault_BOOL(v188, v186, v314, v313, v197, v198, v199, v200);
            if (v324)
            {
              v265 = v323;
            }

            else
            {
              v265 = byte_26286EA0E;
            }

            v268 = strcmp(v265, "True");
            if (v268 && strcmp(v265, "False"))
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1102, "recogctl/psholder", 29, "%.500s %.500s %.500s %u", v266, v267, v189);
            }

            if (Default_BOOL != (v268 == 0))
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1109, "recogctl/psholder", 22, "%.500s %.500s %.500s %.500s %u", v266, v267, v189);
            }
          }

          else
          {
            v201 = v192 == 2;
            v3 = v188;
            if (v201)
            {
              Default_int = ParamSpecMgr::ParamGetDefault_int(v188, v186, v314, v313, v197, v198, v199, v200);
              if (DgnTextFile::atosi(v340, v179, v216, v217, v218, v219, v220, v221) != Default_int)
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1123, "recogctl/psholder", 23, "%.500s %d %d %.500s %u", v222, v223, v189);
              }
            }
          }
        }

        else if (v192 == 3)
        {
          v3 = v188;
          Default_double = ParamSpecMgr::ParamGetDefault_double(v188, v186, v314, v313, v197, v198, v199, v200);
          v257 = atof(v179);
          if (eround(v257, 14) != Default_double)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1138, "recogctl/psholder", 24, "%.500s %f %f %.500s %u", v258, v259, v189);
          }
        }

        else if (v192 == 4)
        {
          v3 = v188;
          Default_string = ParamSpecMgr::ParamGetDefault_string(v188, v186, v314, v313, v197, v198, v199, v200);
          if (v324)
          {
            v261 = v323;
          }

          else
          {
            v261 = byte_26286EA0E;
          }

          if (strcmp(v261, Default_string))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1153, "recogctl/psholder", 25, "%.500s %.500s %.500s %.500s %u", v262, v263, v189);
          }
        }

        else
        {
          v201 = v192 == 5;
          v3 = v188;
          if (v201)
          {
            Default_enumAsString = ParamSpecMgr::ParamGetDefault_enumAsString(v188, v186, v314, v313, v197, v198, v199, v200);
            if (v324)
            {
              v203 = v323;
            }

            else
            {
              v203 = byte_26286EA0E;
            }

            if (strcmp(v203, Default_enumAsString))
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1168, "recogctl/psholder", 26, "%.500s %.500s %.500s %.500s %u", v204, v205, v189);
            }
          }
        }

        ++v321;
        v168 = v314;
        goto LABEL_176;
      }

      if (!LineFieldUnsigned)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1183, "recogctl/psholder", 38, "%u %.500s %u", v184, v185, v320 + 1);
      }

      if (v169 & 1 | (LineFieldUnsigned != v320))
      {
        if (LineFieldUnsigned != v320 + 1)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1190, "recogctl/psholder", 19, "%u %u %.500s %u", v184, v185, v320 + 1);
        }

        if (v330 >= 1)
        {
          v206 = 16 * v330 - 16;
          do
          {
            DgnString::~DgnString((v329 + v206));
            v206 -= 16;
          }

          while (v206 != -16);
        }

        LODWORD(v330) = 0;
        if ((isValidRestrictedName(LineFieldString) & 1) == 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1197, "recogctl/psholder", 27, "%.500s %.500s %u", v207, v208, LineFieldString);
        }

        if (DgnArray<DgnString>::find(&v331, &v327) != -1)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1203, "recogctl/psholder", 36, "%.500s %u %u %.500s %u", v209, v210, LineFieldString);
        }

        v211 = v332;
        if (v332 == HIDWORD(v332))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v331, 1, 1);
          v211 = v332;
        }

        DgnString::DgnString((v331 + 16 * v211), &v327);
        LODWORD(v332) = v332 + 1;
        v316 = MemChunkAlloc(0x30uLL, 0);
        DynamicParamSet::DynamicParamSet(v316, LineFieldString, ParamSetHolderMgr::smParamSetTypeRanked[v311], v314 | (v313 << 32), &v336);
        v214 = *v310;
        if (*v310 == *v309)
        {
          DgnPrimArray<unsigned long long>::reallocElts(v312, 1, 1);
          v214 = *v310;
        }

        *(*v312 + 8 * v214) = v316;
        *v310 = v214 + 1;
        if (v326 <= 1)
        {
          if (v324 >= 2)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1222, "recogctl/psholder", 28, "%.500s %.500s %u", v212, v213, v179);
          }

          v169 = 1;
          v320 = LineFieldUnsigned;
          goto LABEL_176;
        }

        v320 = LineFieldUnsigned;
      }

      v224 = v331 + 16 * (v332 - 1);
      if (v328)
      {
        v225 = v327;
      }

      else
      {
        v225 = byte_26286EA0E;
      }

      v226 = *(v224 + 8);
      v227 = *v224;
      if (v226)
      {
        v228 = v227;
      }

      else
      {
        v228 = byte_26286EA0E;
      }

      if (strcmp(v225, v228))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1237, "recogctl/psholder", 30, "%u %.500s %.500s %.500s %u", v229, v230, v320);
      }

      if (v326 <= 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1241, "recogctl/psholder", 31, "%.500s %u %u", v229, v230, v322);
      }

      ParamIdByParamName = ParamSpecMgr::getParamIdByParamName(v3, v178);
      if (ParamIdByParamName == 0xFFFF)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1248, "recogctl/psholder", 32, "%.500s %.500s %u", v231, v232, v178);
      }

      if (DgnArray<DgnString>::find(&v329, &v325) != -1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1252, "recogctl/psholder", 33, "%.500s %.500s %u", v234, v235, v178);
      }

      v236 = v330;
      if (v330 == HIDWORD(v330))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v329, 1, 1);
        v236 = v330;
      }

      DgnString::DgnString((v329 + 16 * v236), &v325);
      LODWORD(v330) = v330 + 1;
      v243 = ParamSpecMgr::getParamByParamId(v3, ParamIdByParamName, v237, v238, v239, v240, v241, v242);
      v244 = (*(*v243 + 3))(v243);
      v169 = 0;
      if (v244 <= 2)
      {
        if (v244 == 1)
        {
          if (v324)
          {
            v271 = v323;
          }

          else
          {
            v271 = byte_26286EA0E;
          }

          v272 = strcmp(v271, "True");
          if (v272 && strcmp(v271, "False"))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1270, "recogctl/psholder", 29, "%.500s %.500s %.500s %u", v273, v274, v178);
          }

          DynamicParamSet::setBoolParameter(v316, ParamIdByParamName, v272 == 0);
        }

        else
        {
          if (v244 != 2)
          {
            goto LABEL_176;
          }

          v255 = DgnTextFile::atosi(v340, v179, v245, v246, v247, v248, v249, v250);
          DynamicParamSet::setIntParameter(v316, ParamIdByParamName, v255);
        }
      }

      else
      {
        switch(v244)
        {
          case 3:
            v269 = atof(v179);
            v270 = eround(v269, 14);
            DynamicParamSet::setDoubleParameter(v316, ParamIdByParamName, v270);
            break;
          case 4:
            DynamicParamSet::setStringParameter(v316, ParamIdByParamName, v179, 1);
            break;
          case 5:
            v251 = **v243;
            if ((EnumParamSpec::checkStringEnumValue(v252, v179, v168, v313) & 1) == 0)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1304, "recogctl/psholder", 10, "%.500s %.500s %.500s %u", v253, v254, v178);
            }

            DynamicParamSet::setEnumParameter(v316, ParamIdByParamName, v179, 1);
            break;
          default:
            goto LABEL_176;
        }
      }

      v169 = 0;
LABEL_176:
      DgnString::~DgnString(&v323);
      DgnString::~DgnString(&v325);
      DgnString::~DgnString(&v327);
    }

    if (v321 != v337)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1023, "recogctl/psholder", 34, "%u %u %.500s %u", v174, v175, v321);
    }

    if (v320 != v338)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1034, "recogctl/psholder", 35, "%u %u %.500s %u", v174, v175, v320 + 1);
    }

    DgnArray<DgnString>::releaseAll(&v329);
    v4 = v311;
    DgnArray<DgnString>::releaseAll(&v331);
    v2 = a2;
    DgnPrimArray<unsigned int>::~DgnPrimArray(v333);
    DgnArray<DgnString>::releaseAll(&v334);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v336);
LABEL_182:
    DgnIArray<Utterance *>::~DgnIArray(v339);
    DgnTextFileParser::~DgnTextFileParser(v340);
    ++v4;
  }

  while (v4 != 13);
  *(&v282 + 1) = &v345;
  *(&v281 + 1) = &v349;
  *&v282 = &v347;
  *(&v280 + 1) = &v353;
  *&v281 = &v351;
  *(&v279 + 1) = &v357;
  *&v280 = &v355;
  *(&v278 + 1) = &v361;
  *&v279 = &v359;
  *&v278 = &v363;
  *&v277 = v301 | (v298 << 32);
  *(&v277 + 1) = v302 | (v300 << 32);
  *&v276 = v297 | (v294 << 32);
  *(&v276 + 1) = v299 | (v296 << 32);
  ParamSetHolder::runUpgradeFunctionSequence(this, v306 | (v305 << 32), v285 | (v283 << 32), v287 | (v284 << 32), v289 | (v286 << 32), v291 | (v288 << 32), v293 | (v290 << 32), v295 | (v292 << 32), v276, v277, v303 | (v304 << 32), v278, v279, v280, v281, v282, &v343, &v341);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v363);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v361);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v359);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v357);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v355);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v353);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v351);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v349);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v347);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v345);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v343);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v341);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v341);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v343);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v345);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v347);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v349);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v351);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v353);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v355);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v357);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v359);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&v361);
  return DgnIOwnArray<DynamicParamSet *>::releaseAll(&v363);
}

void sub_2625C86E0(_Unwind_Exception *a1)
{
  DgnIArray<Utterance *>::~DgnIArray(&STACK[0x310]);
  DgnTextFileParser::~DgnTextFileParser(&STACK[0x320]);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&STACK[0x408]);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&STACK[0x418]);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&STACK[0x428]);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 248);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 232);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 216);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 200);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 184);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 168);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 152);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 136);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v1 - 120);
  _Unwind_Resume(a1);
}

uint64_t ParamSetHolder::runUpgradeFunctionSequence(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18)
{
  v153 = *MEMORY[0x277D85DE8];
  v149[0] = 1;
  v149[1] = a2;
  v149[2] = a3;
  v149[3] = a4;
  v149[4] = a5;
  v149[5] = a6;
  v149[6] = a7;
  v149[7] = a8;
  v150 = a9;
  v151 = a10;
  v152 = a11;
  v146[0] = a12;
  v146[1] = a13;
  v146[2] = a14;
  v146[3] = a15;
  v146[4] = a16;
  v145[0] = 0;
  v147 = a17;
  v148 = a18;
  v19 = MemChunkAlloc(0x70uLL, 0);
  Hash<DgnString,DgnString,DgnStringScope,unsigned int>::Hash(v19, 0, 16);
  v144 = 0;
  v20 = 1;
  memset(v143, 0, sizeof(v143));
  do
  {
    v21 = v145[v20];
    v22 = MemChunkAlloc(0x70uLL, 0);
    Hash<DgnString,DgnString,DgnStringScope,unsigned int>::Hash(v22, 0, 16);
    *(v143 + v20) = v22;
    LODWORD(v129) = 0;
    if (*(v21 + 8))
    {
      v23 = 0;
      do
      {
        v24 = *(*v21 + 8 * v23);
        DynamicParamSet::validateSelf(v24);
        if (*(v24 + 2))
        {
          v25 = *v24;
        }

        else
        {
          v25 = byte_26286EA0E;
        }

        DgnString::DgnString(v136, v25);
        Hash<DgnString,DgnString,DgnStringScope,unsigned int>::add(v22, v136, &v129);
        if (!*Hash<DgnString,DgnString,DgnStringScope,unsigned int>::findBucket(v19, v136))
        {
          LODWORD(v127) = 0;
          Hash<DgnString,DgnString,DgnStringScope,unsigned int>::add(v19, v136, &v127);
        }

        DgnString::~DgnString(v136);
        v23 = v129 + 1;
        LODWORD(v129) = v23;
      }

      while (v23 < *(v21 + 8));
    }

    ++v20;
  }

  while (v20 != 13);
  v26 = -1;
  v27 = &dword_28752B084;
  do
  {
    v28 = 0;
    ++v26;
    v29 = 1;
    v30 = v27;
    do
    {
      if (*(v30 - 1) != LODWORD(v149[v28 + 1]) || *v30 != HIDWORD(v149[v28 + 1]))
      {
        v29 = 0;
      }

      v30 += 2;
      ++v28;
    }

    while (v28 != 12);
    v27 += 30;
  }

  while (((v26 != 51) & ~v29) != 0);
  v122 = a1;
  if (v26 != 51)
  {
    v31 = v26;
    v119 = v19;
    do
    {
      do
      {
        v32 = &sUpgradeFunctionTable + 120 * ++v31;
      }

      while (v32[104] != 1);
      v33 = 0;
      v127 = 0;
      v128 = 0;
      v34 = 13;
      do
      {
        if (v33 == HIDWORD(v128))
        {
          DgnPrimArray<unsigned long long>::reallocElts(&v127, 1, 1);
          v33 = v128;
        }

        *(v127 + 8 * v33++) = 0;
        LODWORD(v128) = v33;
        --v34;
      }

      while (v34);
      v125 = 0;
      v126 = 0;
      v136[0] = 0;
      HIDWORD(v126) = realloc_array(0, v136, 0xD0uLL, 0, 0, 1) >> 4;
      v125 = v136[0];
      v35 = v126;
      if (v126 <= 0xD)
      {
        if (v126 != 13)
        {
          v37 = 16 * v126;
          do
          {
            v38 = &v125[v37];
            *v38 = 0;
            *(v38 + 1) = 0;
            v37 += 16;
          }

          while (v37 != 208);
        }
      }

      else if (v126 >= 14)
      {
        v36 = 16 * v126 - 16;
        do
        {
          --v35;
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v125[v36]);
          v36 -= 16;
        }

        while (v35 > 0xD);
      }

      LODWORD(v126) = 13;
      v39 = &sUpgradeFunctionTable + 120 * v26;
      v40 = 120 * v26;
      v41 = (v39 + 12);
      v42 = &dword_27FF2C08C;
      for (i = 16; i != 208; i += 16)
      {
        v44 = *v42++;
        ParamSpecMgr::getAllParamIdsSortedByName(ParamSpecMgr::smpParamSpecMgrArray[v44], &v125[i], *(v41 - 1), *v41);
        v41 += 2;
      }

      DgnString::DgnString(&v123);
      v45 = *(v119 + 3);
      v118 = v31;
      if (v45)
      {
        v46 = v119[10];
        v47 = *v46;
        if (*v46)
        {
          v48 = 0;
        }

        else
        {
          v49 = 0;
          v50 = v46 + 1;
          do
          {
            if (v45 - 1 == v49)
            {
              goto LABEL_83;
            }

            v47 = v50[v49++];
          }

          while (!v47);
          v48 = v49;
        }
      }

      else
      {
        v48 = 0;
        v47 = 0;
      }

      if (v48 < v45)
      {
        v51 = &unk_28752B080 + v40;
        v52 = &unk_28752B080 + 120 * v31;
        do
        {
          v120 = v47;
          v121 = v48;
          v142 = 0;
          if (v47)
          {
            v53 = (v47 + 2);
          }

          else
          {
            v53 = 0;
          }

          v140 = 0u;
          v141 = 0u;
          v138 = 0u;
          v139 = 0u;
          *v136 = 0u;
          v137 = 0u;
          v135 = 0;
          v133 = 0u;
          v134 = 0u;
          v131 = 0u;
          v132 = 0u;
          v54 = 16;
          v55 = 1;
          v129 = 0u;
          v130 = 0u;
          do
          {
            v56 = *&v39[8 * v55];
            v57 = *Hash<DgnString,DgnString,DgnStringScope,unsigned int>::findBucket(*(v143 + v55), v53);
            if (v57)
            {
              v58 = *(*v145[v55] + 8 * *(v57 + 32));
            }

            else
            {
              v59 = MemChunkAlloc(0x30uLL, 0);
              v58 = v59;
              if (*(v53 + 8))
              {
                v60 = *v53;
              }

              else
              {
                v60 = byte_26286EA0E;
              }

              DynamicParamSet::DynamicParamSet(v59, v60, ParamSetHolderMgr::smParamSetTypeRanked[v55], v56, &v125[v54]);
            }

            v136[v55] = v58;
            v61 = *&v32[8 * v55];
            if (v61 == v56)
            {
              *(&v129 + v55) = 0;
            }

            else
            {
              v62 = MemChunkAlloc(0x30uLL, 0);
              v63 = DynamicParamSet::DynamicParamSet(v62, v58);
              *(&v129 + v55) = v63;
              *(v63 + 2) = v61;
            }

            ++v55;
            v54 += 16;
          }

          while (v55 != 13);
          (*(v39 + 14))(&v123, v53, v136[1], v137, *(&v137 + 1), v138, *(&v138 + 1), v139, *(&v139 + 1), v140, *(&v140 + 1), v141, *(&v141 + 1), v142, *(&v129 + 1), v130, *(&v130 + 1), v131, *(&v131 + 1), v132, *(&v132 + 1), v133, *(&v133 + 1), v134, *(&v134 + 1), v135);
          for (j = 8; j != 104; j += 8)
          {
            if (*&v32[j] != *&v39[j])
            {
              DynamicParamSet::validateSelf(*(&v129 + j));
            }
          }

          for (k = 0; k != 96; k += 8)
          {
            v66 = *Hash<DgnString,DgnString,DgnStringScope,unsigned int>::findBucket(*(v143 + k + 8), v53);
            if (*&v51[k] != *&v52[k] || *&v51[k + 4] != *&v52[k + 4])
            {
              if (v66)
              {
                v67 = v136[k / 8 + 1];
                v68 = *(&v129 + k + 8);
                v136[k / 8 + 1] = v68;
                *(&v129 + k + 8) = v67;
                *(**(v146 + k) + 8 * *(v66 + 32)) = v68;
              }

              else
              {
                v67 = *(&v129 + k + 8);
              }

              DgnDelete<DynamicParamSet>(v67);
            }

            if (!v66)
            {
              DgnDelete<DynamicParamSet>(v136[k / 8 + 1]);
            }
          }

          v69 = *v120;
          v70 = *(v119 + 3);
          if (*v120)
          {
            v48 = v121;
          }

          else
          {
            v48 = (v121 + 1);
            if (v48 >= v70)
            {
              v69 = v120;
            }

            else
            {
              v71 = v119[10];
              v69 = *(v71 + 8 * v48);
              if (!v69)
              {
                v72 = (v71 + 8 * v48 + 8);
                v73 = ~v48 + v70;
                while (v73)
                {
                  v74 = *v72++;
                  v69 = v74;
                  v48 = (v48 + 1);
                  --v73;
                  if (v74)
                  {
                    goto LABEL_82;
                  }
                }

                break;
              }
            }
          }

LABEL_82:
          v47 = v69;
        }

        while (v48 < v70);
      }

LABEL_83:
      DgnIOwnArray<DynamicParamSet *>::releaseAll(&v127);
      if (v124 >= 2)
      {
        FileHistory::addEntry((v122 + 294), v123);
      }

      DgnString::~DgnString(&v123);
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v125);
      v19 = v119;
      v31 = v118;
      DgnIOwnArray<DynamicParamSet *>::releaseAll(&v127);
      LODWORD(v26) = v118;
    }

    while (v118 != 51);
  }

  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v19);
  for (m = 8; m != 104; m += 8)
  {
    DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(v143 + m));
  }

  for (n = 1; n != 13; ++n)
  {
    v77 = ParamSpecMgr::smpParamSpecMgrArray[ParamSetHolderMgr::smParamSetTypeRanked[n]];
    v136[0] = 0;
    v136[1] = 0;
    ParamSpecMgr::getAllParamIdsSortedByName(v77, v136, 0, 0);
    v78 = v145[n];
    if (*(v78 + 8))
    {
      v79 = 0;
      do
      {
        v80 = *(*v78 + 8 * v79);
        if (*(v80 + 2))
        {
          v81 = *v80;
        }

        else
        {
          v81 = byte_26286EA0E;
        }

        v82 = n;
        v83 = ParamSetHolder::newParamSet(v122, v81, ParamSetHolderMgr::smParamSetTypeRanked[n], 0, 0);
        ParamSet = ParamSetHolder::getParamSet(v122, v83, v84, v85, v86, v87, v88, v89);
        if (LODWORD(v136[1]))
        {
          v97 = ParamSet;
          v98 = 0;
          do
          {
            v99 = *(v136[0] + v98);
            ParamByParamId = ParamSpecMgr::getParamByParamId(v77, *(v136[0] + v98), v91, v92, v93, v94, v95, v96);
            v101 = (*(*ParamByParamId + 3))(ParamByParamId);
            if (v101 <= 2)
            {
              if (v101 == 1)
              {
                BoolParameter = DynamicParamSet::getBoolParameter(v80, v99, v91, v92, v93, v94, v95, v96);
                (*(*v97 + 64))(v97, v99, BoolParameter);
              }

              else if (v101 == 2)
              {
                IntParameter = DynamicParamSet::getIntParameter(v80, v99, v91, v92, v93, v94, v95, v96);
                (*(*v97 + 72))(v97, v99, IntParameter);
              }
            }

            else
            {
              switch(v101)
              {
                case 3:
                  DoubleParameter = DynamicParamSet::getDoubleParameter(v80, v99, v91, v92, v93, v94, v95, v96);
                  (*(*v97 + 80))(v97, v99, DoubleParameter);
                  break;
                case 4:
                  StringParameter = DynamicParamSet::getStringParameter(v80, v99, v91, v92, v93, v94, v95, v96);
                  (*(*v97 + 88))(v97, v99, StringParameter);
                  break;
                case 5:
                  EnumParameter = DynamicParamSet::getEnumParameter(v80, v99, v91, v92, v93, v94, v95, v96);
                  v103 = **ParamByParamId;
                  v111 = EnumParamSpec::convertEnumStringToInt(v104, EnumParameter, v105, v106, v107, v108, v109, v110);
                  (*(*v97 + 96))(v97, v99, v111);
                  break;
              }
            }

            ++v98;
          }

          while (v98 < LODWORD(v136[1]));
        }

        ++v79;
        n = v82;
      }

      while (v79 < *(v78 + 8));
    }

    result = DgnPrimArray<unsigned int>::~DgnPrimArray(v136);
  }

  v117 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2625C9320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *DgnIOwnArray<DynamicParamSet *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DynamicParamSet>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void *ParamSetHolder::loadParamSetHolderBinary(ParamSetHolder *this, DFile *a2, DFileChecksums *a3)
{
  *v92 = 0;
  MrecHeader = OpenAndReadMrecHeader(a2, 0x44u, 1, "MRPSB!? ", &v92[1], v92);
  v91 = 0;
  v8 = v92[1] == 22 && v92[0] == 1;
  v9 = v8;
  v57 = v9;
  v54 = a3;
  if (v8)
  {
    v10 = 0;
    v91 = 12;
    v11 = 22;
    v12 = 1;
  }

  else if (v92[1] == 23 && v92[0] == 2)
  {
    v10 = 0;
    v91 = 12;
    v11 = 23;
    v12 = 2;
  }

  else
  {
    if (*(a2 + 6))
    {
      v14 = *(a2 + 2);
    }

    else
    {
      v14 = byte_26286EA0E;
    }

    MrecHeaderCheckVersions(v14, "MRPSB!? ", v92[1], v92[0], 0x17u, 3u);
    v12 = v92[0];
    v11 = v92[1];
    v10 = 1;
  }

  v55 = a2;
  MrecHeaderCheckLatestVersionIfShared(a2, "MRPSB!? ", v11, v12, 23, 3, v5, v6);
  v90 = 0;
  v88 = -1;
  v89 = -1;
  v86 = -1;
  v87 = -1;
  v84 = -1;
  v85 = -1;
  v82 = -1;
  v83 = -1;
  v80 = -1;
  v81 = -1;
  v78 = -1;
  v79 = -1;
  v77[0] = 0;
  v77[1] = 0;
  v76[0] = 0;
  v76[1] = 0;
  v75[0] = 0;
  v75[1] = 0;
  v74[0] = 0;
  v74[1] = 0;
  v73[0] = 0;
  v73[1] = 0;
  v72[0] = 0;
  v72[1] = 0;
  v71[0] = 0;
  v71[1] = 0;
  v70[0] = 0;
  v70[1] = 0;
  v69[0] = 0;
  v69[1] = 0;
  v68[0] = 0;
  v68[1] = 0;
  v67[0] = 0;
  v67[1] = 0;
  v66[0] = 0;
  v66[1] = 0;
  if (v10)
  {
    readObject(MrecHeader, &v91, &v90);
  }

  v15 = 0;
  for (i = 1; i != 13; ++i)
  {
    v65 = 0;
    v17 = &v89;
    if (i > 6)
    {
      if (i > 9)
      {
        switch(i)
        {
          case 0xA:
            *(this + 289) = 0;
            if (i >= v91)
            {
              v80 = 1;
              continue;
            }

            readObject(MrecHeader, &v65, &v90);
            v17 = &v80;
            readObject(MrecHeader, &v80, &v90);
            v15 = v68;
            break;
          case 0xB:
            *(this + 290) = 0;
            if (i >= v91)
            {
              v79 = 1;
              continue;
            }

            readObject(MrecHeader, &v65, &v90);
            v17 = &v79;
            readObject(MrecHeader, &v79, &v90);
            v15 = v67;
            break;
          case 0xC:
            *(this + 291) = 0;
            if (i >= v91)
            {
              v78 = 1;
              continue;
            }

            readObject(MrecHeader, &v65, &v90);
            v17 = &v78;
            readObject(MrecHeader, &v78, &v90);
            v15 = v66;
            break;
        }
      }

      else
      {
        switch(i)
        {
          case 7:
            *(this + 286) = 0;
            if (i >= v91)
            {
              v83 = 1;
              continue;
            }

            readObject(MrecHeader, &v65, &v90);
            v17 = &v83;
            readObject(MrecHeader, &v83, &v90);
            v15 = v71;
            break;
          case 8:
            *(this + 287) = 0;
            if (i >= v91)
            {
              v82 = 1;
              continue;
            }

            readObject(MrecHeader, &v65, &v90);
            v17 = &v82;
            readObject(MrecHeader, &v82, &v90);
            v15 = v70;
            break;
          case 9:
            *(this + 288) = 0;
            if (i >= v91)
            {
              v81 = 1;
              continue;
            }

            readObject(MrecHeader, &v65, &v90);
            v17 = &v81;
            readObject(MrecHeader, &v81, &v90);
            v15 = v69;
            break;
        }
      }
    }

    else if (i > 3)
    {
      switch(i)
      {
        case 4:
          *(this + 283) = 0;
          if (i >= v91)
          {
            v86 = 1;
            continue;
          }

          readObject(MrecHeader, &v65, &v90);
          v17 = &v86;
          readObject(MrecHeader, &v86, &v90);
          v15 = v74;
          break;
        case 5:
          *(this + 284) = 0;
          if (i >= v91)
          {
            v85 = 1;
            continue;
          }

          readObject(MrecHeader, &v65, &v90);
          v17 = &v85;
          readObject(MrecHeader, &v85, &v90);
          v15 = v73;
          break;
        case 6:
          *(this + 285) = 0;
          if (i >= v91)
          {
            v84 = 1;
            continue;
          }

          readObject(MrecHeader, &v65, &v90);
          v17 = &v84;
          readObject(MrecHeader, &v84, &v90);
          v15 = v72;
          break;
      }
    }

    else
    {
      switch(i)
      {
        case 1:
          *(this + 280) = 0;
          if (i >= v91)
          {
            v89 = 1;
            continue;
          }

          readObject(MrecHeader, &v65, &v90);
          readObject(MrecHeader, &v89, &v90);
          v15 = v77;
          break;
        case 2:
          *(this + 281) = 0;
          if (i >= v91)
          {
            v88 = 1;
            continue;
          }

          readObject(MrecHeader, &v65, &v90);
          v17 = &v88;
          readObject(MrecHeader, &v88, &v90);
          v15 = v76;
          break;
        case 3:
          *(this + 282) = 0;
          if (i >= v91)
          {
            v87 = 1;
            continue;
          }

          readObject(MrecHeader, &v65, &v90);
          v17 = &v87;
          readObject(MrecHeader, &v87, &v90);
          v15 = v75;
          break;
      }
    }

    v20 = v17;
    v19 = *v17;
    v18 = *(v20 + 1);
    v21 = ParamSpecMgr::smpParamSpecMgrArray[ParamSetHolderMgr::smParamSetTypeRanked[i]];
    v63 = 0;
    v64 = 0;
    ParamSpecMgr::getAllParamIdsSortedByName(v21, &v63, v19, v18);
    if (v65)
    {
      v22 = 0;
      v23 = v19 | (v18 << 32);
      while (1)
      {
        v62 = 0;
        readObject(MrecHeader, &v62, &v90);
        DgnString::DgnString(&v60);
        readObject(MrecHeader, &v60, &v90);
        if (v57)
        {
          v24 = v61 ? v60 : byte_26286EA0E;
          if ((isValidRestrictedName(v24) & 1) == 0)
          {
            if (v61)
            {
              LOBYTE(v27) = v60;
            }

            else
            {
              v27 = byte_26286EA0E;
            }

            v47 = spParamSetTypeStringNames[i];
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1478, "recogctl/psholder", 39, "%.500s %.500s", v25, v26, v27);
          }
        }

        v28 = MemChunkAlloc(0x30uLL, 0);
        v29 = v28;
        v30 = v61 ? v60 : byte_26286EA0E;
        DynamicParamSet::DynamicParamSet(v28, v30, ParamSetHolderMgr::smParamSetTypeRanked[i], v23, &v63);
        if (v64)
        {
          break;
        }

LABEL_96:
        v43 = *(v15 + 2);
        if (v43 == *(v15 + 3))
        {
          DgnPrimArray<unsigned long long>::reallocElts(v15, 1, 1);
          v43 = *(v15 + 2);
        }

        *(*v15 + 8 * v43) = v29;
        *(v15 + 2) = v43 + 1;
        DgnString::~DgnString(&v60);
        if (v65 <= ++v22)
        {
          goto LABEL_99;
        }
      }

      v37 = 0;
      while (1)
      {
        v38 = *(v63 + 2 * v37);
        ParamByParamId = ParamSpecMgr::getParamByParamId(v21, v38, v31, v32, v33, v34, v35, v36);
        v40 = (*(*ParamByParamId + 24))(ParamByParamId);
        if (v40 <= 2)
        {
          if (v40 == 1)
          {
            v58[0] = 0;
            readObject(MrecHeader, v58, &v90);
            DynamicParamSet::setBoolParameter(v29, v38, v58[0]);
          }

          else if (v40 == 2)
          {
            *v58 = 0;
            readObject(MrecHeader, v58, &v90);
            DynamicParamSet::setIntParameter(v29, v38, *v58);
          }

          goto LABEL_95;
        }

        switch(v40)
        {
          case 3:
            *v58 = 0;
            readObject(MrecHeader, v58, &v90);
            DynamicParamSet::setDoubleParameter(v29, v38, *v58);
            break;
          case 4:
            DgnString::DgnString(v58);
            readObject(MrecHeader, v58, &v90);
            if (v59)
            {
              v42 = *v58;
            }

            else
            {
              v42 = byte_26286EA0E;
            }

            DynamicParamSet::setStringParameter(v29, v38, v42, 1);
            goto LABEL_93;
          case 5:
            DgnString::DgnString(v58);
            readObject(MrecHeader, v58, &v90);
            if (v59)
            {
              v41 = *v58;
            }

            else
            {
              v41 = byte_26286EA0E;
            }

            DynamicParamSet::setEnumParameter(v29, v38, v41, 1);
LABEL_93:
            DgnString::~DgnString(v58);
            break;
        }

LABEL_95:
        if (++v37 >= v64)
        {
          goto LABEL_96;
        }
      }
    }

LABEL_99:
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v63);
  }

  *(&v53 + 1) = v68;
  *(&v52 + 1) = v70;
  *&v53 = v69;
  *(&v51 + 1) = v72;
  *&v52 = v71;
  *(&v50 + 1) = v74;
  *&v51 = v73;
  *(&v49 + 1) = v76;
  *&v50 = v75;
  *&v49 = v77;
  *&v48 = v80;
  *(&v48 + 1) = v79;
  *&v46 = v82;
  *(&v46 + 1) = v81;
  ParamSetHolder::runUpgradeFunctionSequence(this, v89, v88, v87, v86, v85, v84, v83, v46, v48, v78, v49, v50, v51, v52, v53, v67, v66);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v77);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v76);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v75);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v74);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v73);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v72);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v71);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v70);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v69);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v68);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v67);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v66);
  readObjectChecksumAndVerify(MrecHeader, v90);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(v55);
  DFileChecksums::addChecksum(v54, CurrentSubDirComponents, 0x44u, v90);
  DgnDelete<DgnStream>(MrecHeader);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v66);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v67);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v68);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v69);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v70);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v71);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v72);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v73);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v74);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v75);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v76);
  return DgnIOwnArray<DynamicParamSet *>::releaseAll(v77);
}

void sub_2625C9E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, char a44, uint64_t a45, char a46, uint64_t a47, char a48, uint64_t a49, char a50, uint64_t a51, char a52, uint64_t a53, char a54, uint64_t a55, char a56)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a35);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a38);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a40);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a42);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a44);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a46);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a48);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a50);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a52);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a54);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(&a56);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v56 - 248);
  DgnIOwnArray<DynamicParamSet *>::releaseAll(v56 - 232);
  _Unwind_Resume(a1);
}

void ParamSetHolder::loadParamSetHolder(EnvMgr **this, char **a2)
{
  v17 = 0u;
  v18 = 0u;
  SnapTime::recordTime(&v17, 1, 1, 1, 1);
  EnvHolder::errorIfFileObviouslyIsNotOfTypeParamSetHolder(a2, v4);
  DFileChecksums::DFileChecksums(v16);
  EnvMgr::loadEnvMgr(this[139], a2, v16);
  v5 = DFile::subFileExists(a2, 0);
  if (v5)
  {
    ParamSetHolder::loadParamSetHolderText(this, a2);
  }

  else
  {
    ParamSetHolder::loadParamSetHolderBinary(this, a2, v16);
  }

  if (DFile::subFileExists(a2, 0x39u))
  {
    v15 = 0;
    v6 = OpenAndReadMrecHeader(a2, 0x39u, 1, "MRPCH!? ", &v15 + 1, &v15);
    if (*(a2 + 6))
    {
      v7 = a2[2];
    }

    else
    {
      v7 = byte_26286EA0E;
    }

    MrecHeaderCheckVersions(v7, "MRPCH!? ", HIDWORD(v15), v15, 0x16u, 1u);
    MrecHeaderCheckLatestVersionIfShared(a2, "MRPCH!? ", SHIDWORD(v15), v15, 22, 1, v8, v9);
    DFileChecksums::DFileChecksums(&v12);
    v14 = 0;
    readObject(v6, &v12, &v14);
    readObjectChecksumAndVerify(v6, v14);
    if ((DFileChecksums::operator==(&v12, v16) & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 1650, "recogctl/psholder", 14, "%s", v10, v11, byte_26286EA0E);
    }

    DgnDelete<DgnStream>(v6);
    DFileChecksums::~DFileChecksums(&v12);
  }

  FileHistory::loadFileHistory((this + 147), a2, v5);
  v12 = 0u;
  v13 = 0u;
  SnapTime::recordTime(&v12, 1, 1, 1, 1);
  v12 = vsubq_s64(v12, v17);
  v13 = vsubq_s64(v13, v18);
  FileHistory::addEntryWithElapsedTime((this + 147), " loadParamSetHolder time: ", &v12);
  *(this + 1168) = v5;
  (*(*a2 + 10))(a2, "ParamSetHolder");
  DFileChecksums::~DFileChecksums(v16);
}

void sub_2625CA184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  DFileChecksums::~DFileChecksums(va);
  _Unwind_Resume(a1);
}

void *ParamSetHolder::saveParamSetHolderText(ParamSetHolder *this, DFile *a2)
{
  v132 = 0;
  v128[0] = 0;
  HIDWORD(v132) = realloc_array(0, v128, 0x40uLL, 0, 0, 1) >> 4;
  v131 = v128[0];
  v2 = v132;
  if (v132 <= 4)
  {
    if (v132 != 4)
    {
      v4 = v132 + 1;
      v5 = 16 * v132;
      do
      {
        DgnString::DgnString((v131 + v5));
        v5 += 16;
      }

      while (v4++ != 4);
    }
  }

  else if (v132 >= 5)
  {
    v3 = 16 * v132 - 16;
    do
    {
      --v2;
      DgnString::~DgnString((v131 + v3));
      v3 -= 16;
    }

    while (v2 > 4);
  }

  LODWORD(v132) = 4;
  v129 = 0;
  v130 = 0;
  v128[0] = 0;
  v7 = realloc_array(0, v128, 0x10uLL, 0, 0, 1);
  v129 = v128[0];
  LODWORD(v130) = 4;
  HIDWORD(v130) = v7 >> 2;
  DgnString::operator=(v131, "SetIndex");
  DgnString::operator=((v131 + 16), "SetName");
  DgnString::operator=((v131 + 32), "ParamName");
  DgnString::operator=((v131 + 48), "ParamValue");
  v124 = 0;
  v113 = 0;
  v114 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v106 = 0;
  v107 = 0;
  v125 = 0;
  v121 = 0;
  v116 = 0;
  v117 = 0;
  v115 = 0;
  *v129 = xmmword_26286E9F0;
  v8 = 1;
  do
  {
    DgnTextFileWriter::DgnTextFileWriter(v128);
    if (v8 > 6)
    {
      if (v8 > 9)
      {
        switch(v8)
        {
          case 0xA:
            DgnTextFileWriter::openDgnTextFileWriter(v128, a2, 0x58u, 0);
            v126 = 0;
            v127 = 0;
            DgnTextFile::legalDgnTextFileVersions(v128, sSRPT_Versions, &v126, v44, v45, v46, v47, v48);
            DgnTextFileWriter::setFileType(v128, "SearchParamSetArrayText", (v126 + 8 * (v127 - 1)));
            DgnIArray<Utterance *>::~DgnIArray(&v126);
            DgnTextFileWriter::setHeaderFieldUnsigned(v128, "NumberOfParamSets", (*(this + 289) + 1));
            v124 = *(this + 289);
            v116 = MemChunkAlloc(0x210uLL, 0);
            v121 = SearchParamSet::SearchParamSet(v116, v125, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, 0xFFFFFFFFLL);
            break;
          case 0xB:
            DgnTextFileWriter::openDgnTextFileWriter(v128, a2, 0x54u, 0);
            v126 = 0;
            v127 = 0;
            DgnTextFile::legalDgnTextFileVersions(v128, sSCPT_Versions, &v126, v64, v65, v66, v67, v68);
            DgnTextFileWriter::setFileType(v128, "SearchCrossLayerParamSetArrayText", (v126 + 8 * (v127 - 1)));
            DgnIArray<Utterance *>::~DgnIArray(&v126);
            DgnTextFileWriter::setHeaderFieldUnsigned(v128, "NumberOfParamSets", (*(this + 290) + 1));
            v124 = *(this + 290);
            v115 = MemChunkAlloc(0x50uLL, 0);
            v121 = SearchCrossLayerParamSet::SearchCrossLayerParamSet(v115, v125, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, 0xFFFFFFFFLL);
            break;
          case 0xC:
            DgnTextFileWriter::openDgnTextFileWriter(v128, a2, 0x65u, 0);
            v126 = 0;
            v127 = 0;
            DgnTextFile::legalDgnTextFileVersions(v128, sUDPT_Versions, &v126, v24, v25, v26, v27, v28);
            DgnTextFileWriter::setFileType(v128, "UserDeltaParamSetArrayText", (v126 + 8 * (v127 - 1)));
            DgnIArray<Utterance *>::~DgnIArray(&v126);
            DgnTextFileWriter::setHeaderFieldUnsigned(v128, "NumberOfParamSets", (*(this + 291) + 1));
            v124 = *(this + 291);
            v117 = MemChunkAlloc(0x38uLL, 0);
            v121 = UserDeltaParamSet::UserDeltaParamSet(v117, v125, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, 0xFFFFFFFFLL);
            break;
        }
      }

      else if (v8 == 7)
      {
        DgnTextFileWriter::openDgnTextFileWriter(v128, a2, 0x45u, 0);
        v126 = 0;
        v127 = 0;
        DgnTextFile::legalDgnTextFileVersions(v128, sPSPT_Versions, &v126, v34, v35, v36, v37, v38);
        DgnTextFileWriter::setFileType(v128, "PrefiltererSearchParamSetArrayText", (v126 + 8 * (v127 - 1)));
        DgnIArray<Utterance *>::~DgnIArray(&v126);
        DgnTextFileWriter::setHeaderFieldUnsigned(v128, "NumberOfParamSets", (*(this + 286) + 1));
        v124 = *(this + 286);
        v121 = MemChunkAlloc(0x98uLL, 0);
        v106 = PrefiltererSearchParamSet::PrefiltererSearchParamSet(v121, v125, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, 0xFFFFFFFFLL);
      }

      else if (v8 == 8)
      {
        DgnTextFileWriter::openDgnTextFileWriter(v128, a2, 0x3Cu, 0);
        v126 = 0;
        v127 = 0;
        DgnTextFile::legalDgnTextFileVersions(v128, sPGPT_Versions, &v126, v54, v55, v56, v57, v58);
        DgnTextFileWriter::setFileType(v128, "PronGuessParamSetArrayText", (v126 + 8 * (v127 - 1)));
        DgnIArray<Utterance *>::~DgnIArray(&v126);
        DgnTextFileWriter::setHeaderFieldUnsigned(v128, "NumberOfParamSets", (*(this + 287) + 1));
        v124 = *(this + 287);
        v121 = MemChunkAlloc(0x40uLL, 0);
        v113 = PronGuessParamSet::PronGuessParamSet(v121, v125, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, 0xFFFFFFFFLL);
      }

      else
      {
        DgnTextFileWriter::openDgnTextFileWriter(v128, a2, 0x4Fu, 0);
        v126 = 0;
        v127 = 0;
        DgnTextFile::legalDgnTextFileVersions(v128, sSAPT_Versions, &v126, v14, v15, v16, v17, v18);
        DgnTextFileWriter::setFileType(v128, "SausageParamSetArrayText", (v126 + 8 * (v127 - 1)));
        DgnIArray<Utterance *>::~DgnIArray(&v126);
        DgnTextFileWriter::setHeaderFieldUnsigned(v128, "NumberOfParamSets", (*(this + 288) + 1));
        v124 = *(this + 288);
        v121 = MemChunkAlloc(0x48uLL, 0);
        v107 = SausageParamSet::SausageParamSet(v121, v125, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, 0xFFFFFFFFLL);
      }
    }

    else if (v8 > 3)
    {
      if (v8 == 4)
      {
        DgnTextFileWriter::openDgnTextFileWriter(v128, a2, 0x21u, 0);
        v126 = 0;
        v127 = 0;
        DgnTextFile::legalDgnTextFileVersions(v128, sLNPT_Versions, &v126, v39, v40, v41, v42, v43);
        DgnTextFileWriter::setFileType(v128, "LatticeNBestParamSetArrayText", (v126 + 8 * (v127 - 1)));
        DgnIArray<Utterance *>::~DgnIArray(&v126);
        DgnTextFileWriter::setHeaderFieldUnsigned(v128, "NumberOfParamSets", (*(this + 283) + 1));
        v124 = *(this + 283);
        v121 = MemChunkAlloc(0x30uLL, 0);
        v110 = LatticeNBestParamSet::LatticeNBestParamSet(v121, v125, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, 0xFFFFFFFFLL);
      }

      else if (v8 == 5)
      {
        DgnTextFileWriter::openDgnTextFileWriter(v128, a2, 0x22u, 0);
        v126 = 0;
        v127 = 0;
        DgnTextFile::legalDgnTextFileVersions(v128, sLPPT_Versions, &v126, v59, v60, v61, v62, v63);
        DgnTextFileWriter::setFileType(v128, "LatticePostProbParamSetArrayText", (v126 + 8 * (v127 - 1)));
        DgnIArray<Utterance *>::~DgnIArray(&v126);
        DgnTextFileWriter::setHeaderFieldUnsigned(v128, "NumberOfParamSets", (*(this + 284) + 1));
        v124 = *(this + 284);
        v121 = MemChunkAlloc(0x48uLL, 0);
        v111 = LatticePostProbParamSet::LatticePostProbParamSet(v121, v125, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, 0xFFFFFFFFLL);
      }

      else
      {
        DgnTextFileWriter::openDgnTextFileWriter(v128, a2, 0x37u, 0);
        v126 = 0;
        v127 = 0;
        DgnTextFile::legalDgnTextFileVersions(v128, sPBPT_Versions, &v126, v19, v20, v21, v22, v23);
        DgnTextFileWriter::setFileType(v128, "PrefiltererBuildParamSetArrayText", (v126 + 8 * (v127 - 1)));
        DgnIArray<Utterance *>::~DgnIArray(&v126);
        DgnTextFileWriter::setHeaderFieldUnsigned(v128, "NumberOfParamSets", (*(this + 285) + 1));
        v124 = *(this + 285);
        v121 = MemChunkAlloc(0x98uLL, 0);
        v112 = PrefiltererBuildParamSet::PrefiltererBuildParamSet(v121, v125, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, 0xFFFFFFFFLL);
      }
    }

    else
    {
      switch(v8)
      {
        case 1:
          DgnTextFileWriter::openDgnTextFileWriter(v128, a2, 0, 0);
          v126 = 0;
          v127 = 0;
          DgnTextFile::legalDgnTextFileVersions(v128, sADPT_Versions, &v126, v29, v30, v31, v32, v33);
          DgnTextFileWriter::setFileType(v128, "AdapterParamSetArrayText", (v126 + 8 * (v127 - 1)));
          DgnIArray<Utterance *>::~DgnIArray(&v126);
          DgnTextFileWriter::setHeaderFieldUnsigned(v128, "NumberOfParamSets", (*(this + 280) + 1));
          v124 = *(this + 280);
          v121 = MemChunkAlloc(0x190uLL, 0);
          v114 = AdapterParamSet::AdapterParamSet(v121, v125, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, 0xFFFFFFFFLL);
          break;
        case 2:
          DgnTextFileWriter::openDgnTextFileWriter(v128, a2, 0xBu, 0);
          v126 = 0;
          v127 = 0;
          DgnTextFile::legalDgnTextFileVersions(v128, sCHPT_Versions, &v126, v49, v50, v51, v52, v53);
          DgnTextFileWriter::setFileType(v128, "ChannelParamSetArrayText", (v126 + 8 * (v127 - 1)));
          DgnIArray<Utterance *>::~DgnIArray(&v126);
          DgnTextFileWriter::setHeaderFieldUnsigned(v128, "NumberOfParamSets", (*(this + 281) + 1));
          v124 = *(this + 281);
          v121 = MemChunkAlloc(0x150uLL, 0);
          v108 = ChannelParamSet::ChannelParamSet(v121, v125, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, 0xFFFFFFFFLL);
          break;
        case 3:
          DgnTextFileWriter::openDgnTextFileWriter(v128, a2, 0xFu, 0);
          v126 = 0;
          v127 = 0;
          DgnTextFile::legalDgnTextFileVersions(v128, sCOPT_Versions, &v126, v9, v10, v11, v12, v13);
          DgnTextFileWriter::setFileType(v128, "ConfidenceParamSetArrayText", (v126 + 8 * (v127 - 1)));
          DgnIArray<Utterance *>::~DgnIArray(&v126);
          DgnTextFileWriter::setHeaderFieldUnsigned(v128, "NumberOfParamSets", (*(this + 282) + 1));
          v124 = *(this + 282);
          v121 = MemChunkAlloc(0x260uLL, 0);
          v109 = ConfidenceParamSet::ConfidenceParamSet(v121, v125, ParamSetHolderMgr::smParamSetTypeRanked[v8], *this, 0xFFFFFFFFLL);
          break;
      }
    }

    DgnTextFileWriter::setLineFieldFormat(v128, &v129, &v131);
    v69 = ParamSpecMgr::smpParamSpecMgrArray[ParamSetHolderMgr::smParamSetTypeRanked[v8]];
    v126 = 0;
    v127 = 0;
    ParamSpecMgr::getAllParamIdsSortedByName(v69, &v126, 0, 0);
    v76 = 0;
    v77 = 0;
    v78 = this + 80 * v8 + 72;
    v119 = v8;
    v120 = v78 + 8;
    v122 = v78;
    do
    {
      if (v77)
      {
        if (*v78 != 1 || (v79 = v120, *(v78 + 1) != -2))
        {
          v79 = *(*(v78 + 3) + 524272);
        }

        v80 = *(*(this + 1) + 8 * *(*v79 + 4 * (v76 - 1)));
        v81 = 0;
        if (*(v80 + 4))
        {
          v125 = v80[1];
        }

        else
        {
          v125 = byte_26286EA0E;
        }
      }

      else
      {
        v81 = 1;
        v125 = "_default";
        v80 = v121;
      }

      if (!v127)
      {
LABEL_74:
        DgnTextFileWriter::setLineFieldUnsignedValue(v128, 0, v76);
        DgnTextFileWriter::setLineFieldValue(v128, 1u, v125);
        DgnTextFileWriter::setLineFieldValue(v128, 2u, byte_26286EA0E);
        DgnTextFileWriter::setLineFieldValue(v128, 3u, byte_26286EA0E);
        DgnTextFileWriter::writeNextLine(v128);
        goto LABEL_75;
      }

      v82 = 0;
      v83 = 0;
      do
      {
        v84 = *(v126 + 2 * v82);
        ParamByParamId = ParamSpecMgr::getParamByParamId(v69, *(v126 + 2 * v82), v70, v71, v72, v73, v74, v75);
        v86 = ParamByParamId[1];
        v87 = (*(*ParamByParamId + 24))(ParamByParamId);
        if (v87 <= 2)
        {
          if (v87 == 1)
          {
            v103 = (*(*v80 + 24))(v80, v84, v81);
            if (!v77 || v103 != (*(*v80 + 24))(v80, v84, 1))
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v128, 0, v76);
              DgnTextFileWriter::setLineFieldValue(v128, 1u, v125);
              DgnTextFileWriter::setLineFieldValue(v128, 2u, v86);
              if (v103)
              {
                v104 = "True";
              }

              else
              {
                v104 = "False";
              }

              DgnTextFileWriter::setLineFieldValue(v128, 3u, v104);
              DgnTextFileWriter::writeNextLine(v128);
              goto LABEL_71;
            }
          }

          else if (v87 == 2)
          {
            v99 = (*(*v80 + 32))(v80, v84, v81);
            if (!v77 || v99 != (*(*v80 + 32))(v80, v84, 1))
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v128, 0, v76);
              DgnTextFileWriter::setLineFieldValue(v128, 1u, v125);
              DgnTextFileWriter::setLineFieldValue(v128, 2u, v86);
              DgnTextFileWriter::setLineFieldIntegerValue(v128, 3u, v99);
              DgnTextFileWriter::writeNextLine(v128);
              goto LABEL_71;
            }
          }
        }

        else
        {
          switch(v87)
          {
            case 3:
              v100 = (*(*v80 + 40))(v80, v84, v81);
              if (!v77 || v100 != (*(*v80 + 40))(v80, v84, 1))
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v128, 0, v76);
                DgnTextFileWriter::setLineFieldValue(v128, 1u, v125);
                DgnTextFileWriter::setLineFieldValue(v128, 2u, v86);
                DgnTextFileWriter::setLineFieldRealValue(v128, 3u, v100);
                DgnTextFileWriter::writeNextLine(v128);
                goto LABEL_71;
              }

              break;
            case 4:
              v101 = (*(*v80 + 48))(v80, v84, v81);
              if (!v77 || (v102 = (*(*v80 + 48))(v80, v84, 1), strcmp(v101, v102)))
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v128, 0, v76);
                DgnTextFileWriter::setLineFieldValue(v128, 1u, v125);
                DgnTextFileWriter::setLineFieldValue(v128, 2u, v86);
                DgnTextFileWriter::setLineFieldValue(v128, 3u, v101);
                DgnTextFileWriter::writeNextLine(v128);
                goto LABEL_71;
              }

              break;
            case 5:
              v88 = (*(*v80 + 56))(v80, v84, v81);
              if (!v77 || v88 != (*(*v80 + 56))(v80, v84, 1))
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v128, 0, v76);
                DgnTextFileWriter::setLineFieldValue(v128, 1u, v125);
                DgnTextFileWriter::setLineFieldValue(v128, 2u, v86);
                v95 = ParamSpecMgr::getParamByParamId(v69, v84, v89, v90, v91, v92, v93, v94);
                v96 = **v95;
                NameForEnumItem = GetNameForEnumItem(v97[4] + 16, v88);
                DgnTextFileWriter::setLineFieldValue(v128, 3u, NameForEnumItem);
                DgnTextFileWriter::writeNextLine(v128);
LABEL_71:
                v83 = 1;
              }

              break;
          }
        }

        ++v82;
      }

      while (v82 < v127);
      v78 = v122;
      if ((v83 & 1) == 0)
      {
        goto LABEL_74;
      }

LABEL_75:
      v76 = ++v77;
    }

    while (v124 >= v77);
    if (v119 > 6)
    {
      if (v119 > 9)
      {
        switch(v119)
        {
          case 0xA:
            DgnDelete<AdapterParamSet>(v116);
            break;
          case 0xB:
            DgnDelete<AdapterParamSet>(v115);
            break;
          case 0xC:
            DgnDelete<AdapterParamSet>(v117);
            break;
        }
      }

      else if (v119 == 7)
      {
        DgnDelete<AdapterParamSet>(v106);
      }

      else if (v119 == 8)
      {
        DgnDelete<AdapterParamSet>(v113);
      }

      else
      {
        DgnDelete<AdapterParamSet>(v107);
      }
    }

    else if (v119 > 3)
    {
      if (v119 == 4)
      {
        DgnDelete<AdapterParamSet>(v110);
      }

      else if (v119 == 5)
      {
        DgnDelete<AdapterParamSet>(v111);
      }

      else
      {
        DgnDelete<AdapterParamSet>(v112);
      }
    }

    else
    {
      switch(v119)
      {
        case 1:
          DgnDelete<AdapterParamSet>(v114);
          break;
        case 2:
          DgnDelete<AdapterParamSet>(v108);
          break;
        case 3:
          DgnDelete<AdapterParamSet>(v109);
          break;
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v126);
    DgnTextFileWriter::~DgnTextFileWriter(v128);
    v8 = v119 + 1;
  }

  while (v119 != 12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v129);
  return DgnArray<DgnString>::releaseAll(&v131);
}

void (***DgnDelete<AdapterParamSet>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void (***ParamSetHolder::saveParamSetHolderBinary(ParamSetHolder *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v5 = OpenAndWriteMrecHeader(a2, 0x44u, a4, "MRPSB!? ", 23, 3);
  v106[0] = 13;
  writeObject(v5, v106, v106 + 1);
  v100 = this;
  v98 = this + 72;
  v6 = 1;
  do
  {
    v7 = &v98[80 * v6];
    v8 = *(v7 + 4);
    if (v6 > 6)
    {
      if (v6 > 9)
      {
        if (v6 != 10)
        {
          if (v6 == 11)
          {
            writeObject(v5, v100 + 290, v106 + 1);
            DgnTextFileWriter::DgnTextFileWriter(&v104);
            v102 = 0.0;
            v103 = 0;
            DgnTextFile::legalDgnTextFileVersions(&v104, sSCPT_Versions, &v102, v24, v25, v26, v27, v28);
          }

          else
          {
            writeObject(v5, v100 + 291, v106 + 1);
            DgnTextFileWriter::DgnTextFileWriter(&v104);
            v102 = 0.0;
            v103 = 0;
            DgnTextFile::legalDgnTextFileVersions(&v104, sUDPT_Versions, &v102, v64, v65, v66, v67, v68);
          }

          goto LABEL_17;
        }

        writeObject(v5, v100 + 289, v106 + 1);
        DgnTextFileWriter::DgnTextFileWriter(&v104);
        v102 = 0.0;
        v103 = 0;
        DgnTextFile::legalDgnTextFileVersions(&v104, sSRPT_Versions, &v102, v44, v45, v46, v47, v48);
        writeObject(v5, (*&v102 + 8 * (v103 - 1)), v106 + 1);
      }

      else
      {
        if (v6 != 7)
        {
          if (v6 == 8)
          {
            writeObject(v5, v100 + 287, v106 + 1);
            DgnTextFileWriter::DgnTextFileWriter(&v104);
            v102 = 0.0;
            v103 = 0;
            DgnTextFile::legalDgnTextFileVersions(&v104, sPGPT_Versions, &v102, v14, v15, v16, v17, v18);
          }

          else
          {
            writeObject(v5, v100 + 288, v106 + 1);
            DgnTextFileWriter::DgnTextFileWriter(&v104);
            v102 = 0.0;
            v103 = 0;
            DgnTextFile::legalDgnTextFileVersions(&v104, sSAPT_Versions, &v102, v54, v55, v56, v57, v58);
          }

          goto LABEL_17;
        }

        writeObject(v5, v100 + 286, v106 + 1);
        DgnTextFileWriter::DgnTextFileWriter(&v104);
        v102 = 0.0;
        v103 = 0;
        DgnTextFile::legalDgnTextFileVersions(&v104, sPSPT_Versions, &v102, v34, v35, v36, v37, v38);
        writeObject(v5, (*&v102 + 8 * (v103 - 1)), v106 + 1);
      }
    }

    else if (v6 > 3)
    {
      if (v6 != 4)
      {
        if (v6 == 5)
        {
          writeObject(v5, v100 + 284, v106 + 1);
          DgnTextFileWriter::DgnTextFileWriter(&v104);
          v102 = 0.0;
          v103 = 0;
          DgnTextFile::legalDgnTextFileVersions(&v104, sLPPT_Versions, &v102, v19, v20, v21, v22, v23);
        }

        else
        {
          writeObject(v5, v100 + 285, v106 + 1);
          DgnTextFileWriter::DgnTextFileWriter(&v104);
          v102 = 0.0;
          v103 = 0;
          DgnTextFile::legalDgnTextFileVersions(&v104, sPBPT_Versions, &v102, v59, v60, v61, v62, v63);
        }

        goto LABEL_17;
      }

      writeObject(v5, v100 + 283, v106 + 1);
      DgnTextFileWriter::DgnTextFileWriter(&v104);
      v102 = 0.0;
      v103 = 0;
      DgnTextFile::legalDgnTextFileVersions(&v104, sLNPT_Versions, &v102, v39, v40, v41, v42, v43);
      writeObject(v5, (*&v102 + 8 * (v103 - 1)), v106 + 1);
    }

    else
    {
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          writeObject(v5, v100 + 281, v106 + 1);
          DgnTextFileWriter::DgnTextFileWriter(&v104);
          v102 = 0.0;
          v103 = 0;
          DgnTextFile::legalDgnTextFileVersions(&v104, sCHPT_Versions, &v102, v9, v10, v11, v12, v13);
        }

        else
        {
          writeObject(v5, v100 + 282, v106 + 1);
          DgnTextFileWriter::DgnTextFileWriter(&v104);
          v102 = 0.0;
          v103 = 0;
          DgnTextFile::legalDgnTextFileVersions(&v104, sCOPT_Versions, &v102, v49, v50, v51, v52, v53);
        }

LABEL_17:
        writeObject(v5, (*&v102 + 8 * (v103 - 1)), v106 + 1);
        goto LABEL_26;
      }

      writeObject(v5, v100 + 280, v106 + 1);
      DgnTextFileWriter::DgnTextFileWriter(&v104);
      v102 = 0.0;
      v103 = 0;
      DgnTextFile::legalDgnTextFileVersions(&v104, sADPT_Versions, &v102, v29, v30, v31, v32, v33);
      writeObject(v5, (*&v102 + 8 * (v103 - 1)), v106 + 1);
    }

LABEL_26:
    DgnIArray<Utterance *>::~DgnIArray(&v102);
    DgnTextFileWriter::~DgnTextFileWriter(&v104);
    v99 = v6;
    v69 = ParamSpecMgr::smpParamSpecMgrArray[ParamSetHolderMgr::smParamSetTypeRanked[v6]];
    v104 = 0;
    v105 = 0;
    ParamSpecMgr::getAllParamIdsSortedByName(v69, &v104, 0, 0);
    v101 = 0;
    if (v8)
    {
      v70 = 0;
      while (1)
      {
        if (*v7 != 1 || (v71 = v7 + 8, *(v7 + 1) != -2))
        {
          v71 = *(*(v7 + 3) + 524272);
        }

        v72 = *(*(v100 + 1) + 8 * *(*v71 + 4 * v70));
        writeObject(v5, &v101, v106 + 1);
        writeObject(v5, v72 + 8, v106 + 1);
        if (v105)
        {
          break;
        }

LABEL_49:
        v70 = v101 + 1;
        v101 = v70;
        if (v8 <= v70)
        {
          goto LABEL_50;
        }
      }

      v79 = 0;
      while (1)
      {
        v80 = *(v104 + 2 * v79);
        ParamByParamId = ParamSpecMgr::getParamByParamId(v69, *(v104 + 2 * v79), v73, v74, v75, v76, v77, v78);
        v82 = (*(*ParamByParamId + 24))(ParamByParamId);
        if (v82 <= 2)
        {
          if (v82 == 1)
          {
            LOBYTE(v102) = (*(*v72 + 24))(v72, v80, 0);
            writeObject(v5, &v102, v106 + 1);
          }

          else if (v82 == 2)
          {
            LODWORD(v102) = (*(*v72 + 32))(v72, v80, 0);
            writeObject(v5, &v102, v106 + 1);
          }

          goto LABEL_48;
        }

        switch(v82)
        {
          case 3:
            v102 = (*(*v72 + 40))(v72, v80, 0);
            writeObject(v5, &v102, v106 + 1, v86, v87, v88, v89, v90);
            break;
          case 4:
            v91 = (*(*v72 + 48))(v72, v80, 0);
            DgnString::DgnString(&v102, v91);
            writeObject(v5, &v102, v106 + 1);
LABEL_47:
            DgnString::~DgnString(&v102);
            break;
          case 5:
            v83 = ParamSpecMgr::getParamByParamId(v69, v80, v73, v74, v75, v76, v77, v78);
            if (v83)
            {
              v84 = **v83;
            }

            else
            {
              v85 = 0;
            }

            v92 = (*(*v72 + 56))(v72, v80, 0);
            NameForEnumItem = GetNameForEnumItem(v85[4] + 16, v92);
            DgnString::DgnString(&v102, NameForEnumItem);
            writeObject(v5, &v102, v106 + 1);
            goto LABEL_47;
        }

LABEL_48:
        if (++v79 >= v105)
        {
          goto LABEL_49;
        }
      }
    }

LABEL_50:
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v104);
    ++v6;
  }

  while (v99 != 12);
  writeObjectChecksum(v5, v106 + 1);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x44u, SHIDWORD(v106[0]));
  return DgnDelete<DgnStream>(v5);
}

void sub_2625CBD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnTextFileWriter::~DgnTextFileWriter(va1);
  _Unwind_Resume(a1);
}

void ParamSetHolder::saveParamSetHolder(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, int a5)
{
  v19 = 0u;
  v20 = 0u;
  SnapTime::recordTime(&v19, 1, 1, 1, 1);
  LoadSaveTracker::LoadSaveTracker(&v18);
  if (a4)
  {
    v10 = a4 != 2;
  }

  else if (*(a1 + 1168) == 1)
  {
    v10 = *(*(a1 + 1112) + 264);
  }

  else
  {
    v10 = 0;
  }

  *a3 = 1;
  DFileOwner::DFileOwner(v17);
  v11 = DFile::openDFile(a2, 1, 13, v17);
  *a3 = 2;
  DFileChecksums::DFileChecksums(v16);
  EnvMgr::saveEnvMgr(*(a1 + 1112), v11, v16, v10 & 1, a5);
  if (v10)
  {
    ParamSetHolder::saveParamSetHolderText(a1, v11);
  }

  else
  {
    ParamSetHolder::saveParamSetHolderBinary(a1, v11, v16, a5);
    v12 = OpenAndWriteMrecHeader(v11, 0x39u, 0, "MRPCH!? ", 22, 1);
    v14.i32[0] = 0;
    writeObject(v12, v16, &v14);
    writeObjectChecksum(v12, v14.i32);
    DgnDelete<DgnStream>(v12);
  }

  v14 = 0u;
  v15 = 0u;
  SnapTime::recordTime(&v14, 1, 1, 1, 1);
  v14 = vsubq_s64(v14, v19);
  v15 = vsubq_s64(v15, v20);
  FileHistory::addEntryWithElapsedTime((a1 + 1176), " saveParamSetHolder time: ", &v14);
  FileHistory::saveFileHistory((a1 + 1176), v11, v10 & 1);
  DFileOwner::setRemoveFileOnDestruction(v17, 0);
  *a3 = 0;
  DFileChecksums::~DFileChecksums(v16);
  DFileOwner::~DFileOwner(v17, v13);
  LoadSaveTracker::~LoadSaveTracker(&v18);
}

void sub_2625CBFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  DFileChecksums::~DFileChecksums(&a13);
  DFileOwner::~DFileOwner(&a16, v22);
  LoadSaveTracker::~LoadSaveTracker(&a21);
  _Unwind_Resume(a1);
}

uint64_t ParamSetHolder::newParamSet(unsigned int *a1, char *a2, int a3, int a4, char **a5)
{
  if ((isValidRestrictedName(a2) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2122, "recogctl/psholder", 40, "%.500s", v10, v11, a2);
  }

  if (a5 || !a4)
  {
    if (a5 && (a4 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2127, "recogctl/psholder", 6, "%s", v10, v11, &errStr_recogctl_psholder_E_NONNULL_PARAMSET_ARG);
    }
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2125, "recogctl/psholder", 5, "%s", v10, v11, &errStr_recogctl_psholder_E_NULL_SET_TO_COPY);
  }

  NextId = IdMgr<unsigned int>::getNextId(a1 + 6);
  for (i = a1[4]; i <= NextId; a1[4] = i)
  {
    if (i == a1[5])
    {
      DgnPrimArray<unsigned long long>::reallocElts((a1 + 2), 1, 1);
      i = a1[4];
    }

    *(*(a1 + 1) + 8 * i++) = 0;
  }

  v16 = &a1[20 * a3];
  v17 = v16[22];
  if (v17)
  {
    v18 = *(v16 + 10);
    v19 = 0xFFFFFFFFLL;
    while (1)
    {
      v20 = *v18++;
      if (v20 == NextId)
      {
        break;
      }

      --v19;
      if (!--v17)
      {
        goto LABEL_20;
      }
    }

    if (v19)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2145, "recogctl/psholder", 3, "%.500s", v12, v13, a2);
    }
  }

LABEL_20:
  if (a3 > 6)
  {
    if (a3 > 9)
    {
      switch(a3)
      {
        case 10:
          v77 = MemChunkAlloc(0x210uLL, 0);
          v78 = v77;
          if (a4)
          {
            v79 = **a5;
            SearchParamSet::SearchParamSet(v78, v80, a2, 10, *a1, NextId);
          }

          else
          {
            SearchParamSet::SearchParamSet(v77, a2, 10, *a1, NextId);
          }

          *(*(a1 + 1) + 8 * NextId) = v78;
          ParamSetHolder::addName(a1, NextId, a2, 10, v81, v82, v83, v84);
          ++a1[289];
          break;
        case 11:
          v109 = MemChunkAlloc(0x50uLL, 0);
          v110 = v109;
          if (a4)
          {
            v111 = **a5;
            SearchCrossLayerParamSet::SearchCrossLayerParamSet(v110, v112, a2, 11, *a1, NextId);
          }

          else
          {
            SearchCrossLayerParamSet::SearchCrossLayerParamSet(v109, a2, 11, *a1, NextId);
          }

          *(*(a1 + 1) + 8 * NextId) = v110;
          ParamSetHolder::addName(a1, NextId, a2, 11, v113, v114, v115, v116);
          ++a1[290];
          break;
        case 12:
          v45 = MemChunkAlloc(0x38uLL, 0);
          v46 = v45;
          if (a4)
          {
            v47 = **a5;
            UserDeltaParamSet::UserDeltaParamSet(v46, v48, a2, 12, *a1, NextId);
          }

          else
          {
            UserDeltaParamSet::UserDeltaParamSet(v45, a2, 12, *a1, NextId);
          }

          *(*(a1 + 1) + 8 * NextId) = v46;
          ParamSetHolder::addName(a1, NextId, a2, 12, v49, v50, v51, v52);
          ++a1[291];
          break;
      }
    }

    else if (a3 == 7)
    {
      v61 = MemChunkAlloc(0x98uLL, 0);
      v62 = v61;
      if (a4)
      {
        v63 = **a5;
        PrefiltererSearchParamSet::PrefiltererSearchParamSet(v62, v64, a2, 7, *a1, NextId);
      }

      else
      {
        PrefiltererSearchParamSet::PrefiltererSearchParamSet(v61, a2, 7, *a1, NextId);
      }

      *(*(a1 + 1) + 8 * NextId) = v62;
      ParamSetHolder::addName(a1, NextId, a2, 7, v65, v66, v67, v68);
      ++a1[286];
    }

    else if (a3 == 8)
    {
      v93 = MemChunkAlloc(0x40uLL, 0);
      v94 = v93;
      if (a4)
      {
        v95 = **a5;
        PronGuessParamSet::PronGuessParamSet(v94, v96, a2, 8, *a1, NextId);
      }

      else
      {
        PronGuessParamSet::PronGuessParamSet(v93, a2, 8, *a1, NextId);
      }

      *(*(a1 + 1) + 8 * NextId) = v94;
      ParamSetHolder::addName(a1, NextId, a2, 8, v97, v98, v99, v100);
      ++a1[287];
    }

    else
    {
      v29 = MemChunkAlloc(0x48uLL, 0);
      v30 = v29;
      if (a4)
      {
        v31 = **a5;
        SausageParamSet::SausageParamSet(v30, v32, a2, 9, *a1, NextId);
      }

      else
      {
        SausageParamSet::SausageParamSet(v29, a2, 9, *a1, NextId);
      }

      *(*(a1 + 1) + 8 * NextId) = v30;
      ParamSetHolder::addName(a1, NextId, a2, 9, v33, v34, v35, v36);
      ++a1[288];
    }
  }

  else if (a3 > 3)
  {
    if (a3 == 4)
    {
      v69 = MemChunkAlloc(0x30uLL, 0);
      v70 = v69;
      if (a4)
      {
        v71 = **a5;
        LatticeNBestParamSet::LatticeNBestParamSet(v70, v72, a2, 4, *a1, NextId);
      }

      else
      {
        LatticeNBestParamSet::LatticeNBestParamSet(v69, a2, 4, *a1, NextId);
      }

      *(*(a1 + 1) + 8 * NextId) = v70;
      ParamSetHolder::addName(a1, NextId, a2, 4, v73, v74, v75, v76);
      ++a1[283];
    }

    else if (a3 == 5)
    {
      v101 = MemChunkAlloc(0x48uLL, 0);
      v102 = v101;
      if (a4)
      {
        v103 = **a5;
        LatticePostProbParamSet::LatticePostProbParamSet(v102, v104, a2, 5, *a1, NextId);
      }

      else
      {
        LatticePostProbParamSet::LatticePostProbParamSet(v101, a2, 5, *a1, NextId);
      }

      *(*(a1 + 1) + 8 * NextId) = v102;
      ParamSetHolder::addName(a1, NextId, a2, 5, v105, v106, v107, v108);
      ++a1[284];
    }

    else
    {
      v37 = MemChunkAlloc(0x98uLL, 0);
      v38 = v37;
      if (a4)
      {
        v39 = **a5;
        PrefiltererBuildParamSet::PrefiltererBuildParamSet(v38, v40, a2, 6, *a1, NextId);
      }

      else
      {
        PrefiltererBuildParamSet::PrefiltererBuildParamSet(v37, a2, 6, *a1, NextId);
      }

      *(*(a1 + 1) + 8 * NextId) = v38;
      ParamSetHolder::addName(a1, NextId, a2, 6, v41, v42, v43, v44);
      ++a1[285];
    }
  }

  else
  {
    switch(a3)
    {
      case 1:
        v53 = MemChunkAlloc(0x190uLL, 0);
        v54 = v53;
        if (a4)
        {
          v55 = **a5;
          AdapterParamSet::AdapterParamSet(v54, v56, a2, 1, *a1, NextId);
        }

        else
        {
          AdapterParamSet::AdapterParamSet(v53, a2, 1, *a1, NextId);
        }

        *(*(a1 + 1) + 8 * NextId) = v54;
        ParamSetHolder::addName(a1, NextId, a2, 1, v57, v58, v59, v60);
        ++a1[280];
        break;
      case 2:
        v85 = MemChunkAlloc(0x150uLL, 0);
        v86 = v85;
        if (a4)
        {
          v87 = **a5;
          ChannelParamSet::ChannelParamSet(v86, v88, a2, 2, *a1, NextId);
        }

        else
        {
          ChannelParamSet::ChannelParamSet(v85, a2, 2, *a1, NextId);
        }

        *(*(a1 + 1) + 8 * NextId) = v86;
        ParamSetHolder::addName(a1, NextId, a2, 2, v89, v90, v91, v92);
        ++a1[281];
        break;
      case 3:
        v21 = MemChunkAlloc(0x260uLL, 0);
        v22 = v21;
        if (a4)
        {
          v23 = **a5;
          ConfidenceParamSet::ConfidenceParamSet(v22, v24, a2, 3, *a1, NextId);
        }

        else
        {
          ConfidenceParamSet::ConfidenceParamSet(v21, a2, 3, *a1, NextId);
        }

        *(*(a1 + 1) + 8 * NextId) = v22;
        ParamSetHolder::addName(a1, NextId, a2, 3, v25, v26, v27, v28);
        ++a1[282];
        break;
    }
  }

  return NextId;
}