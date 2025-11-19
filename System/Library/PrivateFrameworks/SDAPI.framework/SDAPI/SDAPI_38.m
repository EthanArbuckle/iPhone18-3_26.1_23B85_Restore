void sub_262788340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

unint64_t TrigramData::fillTrigramRecordLookup(unint64_t a1, unsigned int a2, unsigned __int16 **a3, _WORD **a4, void *a5)
{
  v10 = (*a3)[*(a3 + 2) - 1];
  result = TrigramData::allocLookup(a1, a2, v10);
  if (*(a1 + 40))
  {
    if (v10)
    {
      v12 = 0;
      v13 = (v10 + 1);
      if (v13 <= 2)
      {
        v13 = 2;
      }

      v14 = v13 - 1;
      do
      {
        *(*(a1 + 328) + (v12 + *(*(a1 + 280) + 4 * a2))) = 0;
        ++v12;
      }

      while (v14 != v12);
    }

    if (*(a3 + 2))
    {
      v15 = 0;
      do
      {
        *(*(a1 + 328) + (*a3)[v15] + *(*(a1 + 280) + 4 * a2) - 1) = *(*a5 + v15);
        ++v15;
      }

      while (v15 < *(a3 + 2));
    }
  }

  else
  {
    if (v10)
    {
      v16 = *(*(a1 + 280) + 4 * a2);
      v17 = *(a1 + 312);
      if ((v10 + 1) <= 2u)
      {
        v18 = 2;
      }

      else
      {
        v18 = (v10 + 1);
      }

      v19 = v18 - 1;
      do
      {
        *(v17 + 2 * v16++) = 20000;
        --v19;
      }

      while (v19);
    }

    v20 = *(a3 + 2);
    if (v20)
    {
      v21 = *a3;
      v22 = *a4;
      v23 = *(*(a1 + 280) + 4 * a2);
      v24 = *(a1 + 312);
      do
      {
        v26 = *v21++;
        v25 = v26;
        LOWORD(v26) = *v22++;
        *(v24 + 2 * (v25 + v23 - 1)) = v26;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

unint64_t TrigramData::allocSearch(unint64_t this, unsigned int a2, int a3)
{
  v3 = this;
  *(*(this + 296) + 2 * a2) = a3;
  if (a3 == 1)
  {
    *(*(this + 280) + 4 * a2) = -65536;
  }

  else
  {
    v5 = *(this + 352);
    *(*(this + 280) + 4 * a2) = v5;
    v6 = v5 + a3;
    v7 = *(this + 356);
    if (v6 > v7)
    {
      this = DgnPrimArray<short>::reallocElts(this + 344, v6 - v7, 1);
      v6 = v3[88] + a3;
    }

    v3[88] = v6;
    if (v3[2])
    {
      v8 = v3[96] + a3;
      v9 = v3[97];
      if (v8 > v9)
      {
        this = DgnPrimArray<char>::reallocElts((v3 + 94), v8 - v9, 1);
        v8 = v3[96] + a3;
      }

      v3[96] = v8;
    }

    else
    {
      v10 = v3[92] + a3;
      v11 = v3[93];
      if (v10 > v11)
      {
        this = DgnPrimArray<short>::reallocElts((v3 + 90), v10 - v11, 1);
        v10 = v3[92] + a3;
      }

      v3[92] = v10;
    }
  }

  return this;
}

uint64_t TrigramData::setSearchSuccIdForIndex(uint64_t this, unsigned int a2, int a3, unsigned __int16 a4)
{
  v4 = *(this + 280);
  v5 = *(v4 + 4 * a2);
  if (*(*(this + 296) + 2 * a2) == 1)
  {
    *(v4 + 4 * a2) = *(v4 + 4 * a2) | (a4 << 16);
  }

  else
  {
    if (*this && ((*(*(this + 144) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      v6 = *(*(this + 424) + 4 * v5) + a3;
      v7 = *(this + 440);
    }

    else
    {
      v6 = v5 + a3;
      v7 = *(this + 344);
    }

    *(v7 + 2 * v6) = a4;
  }

  return this;
}

uint64_t TrigramData::setSearchQuantizedScoreForIndex(uint64_t this, unsigned int a2, int a3, int a4)
{
  v4 = *(this + 280);
  v5 = *(v4 + 4 * a2);
  if (*(*(this + 296) + 2 * a2) == 1)
  {
    *(v4 + 4 * a2) = v5 & 0xFFFF0000 | a4;
  }

  else
  {
    if (*this && ((*(*(this + 144) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      v6 = *(*(this + 424) + 4 * v5) + a3;
      v7 = *(this + 472);
    }

    else
    {
      v6 = v5 + a3;
      v7 = *(this + 376);
    }

    *(v7 + v6) = a4;
  }

  return this;
}

uint64_t TrigramData::setSearchScoreForIndex(uint64_t this, unsigned int a2, int a3, int a4)
{
  v4 = *(this + 280);
  v5 = *(v4 + 4 * a2);
  if (*(*(this + 296) + 2 * a2) == 1)
  {
    *(v4 + 4 * a2) = v5 & 0xFFFF0000 | a4;
  }

  else
  {
    if (*this && ((*(*(this + 144) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      v6 = *(*(this + 424) + 4 * v5) + a3;
      v7 = *(this + 456);
    }

    else
    {
      v6 = v5 + a3;
      v7 = *(this + 360);
    }

    *(v7 + 2 * v6) = a4;
  }

  return this;
}

unint64_t TrigramData::allocLookup(unint64_t this, unsigned int a2, int a3)
{
  v5 = this;
  v6 = *(this + 280);
  if (*(this + 8))
  {
    v7 = *(this + 336);
    *(v6 + 4 * a2) = v7;
    v8 = v7 + a3;
    v9 = *(this + 340);
    if (v8 > v9)
    {
      this = DgnPrimArray<char>::reallocElts(this + 328, v8 - v9, 1);
      v8 = *(v5 + 336) + a3;
    }

    *(v5 + 336) = v8;
  }

  else
  {
    v10 = *(this + 320);
    *(v6 + 4 * a2) = v10;
    v11 = v10 + a3;
    v12 = *(this + 324);
    if (v11 > v12)
    {
      this = DgnPrimArray<short>::reallocElts(this + 312, v11 - v12, 1);
      v11 = *(v5 + 320) + a3;
    }

    *(v5 + 320) = v11;
  }

  *(*(v5 + 296) + 2 * a2) = a3;
  *(*(v5 + 128) + 4 * (a2 >> 5)) |= 1 << a2;
  return this;
}

uint64_t TrigramData::fillTrigramRecordPreload(TrigramData *this, unsigned int a2, uint64_t a3, __int16 **a4, void *a5)
{
  v10 = 3;
  if (!*(this + 10))
  {
    v10 = 4;
  }

  if (v10 * *(a3 + 8) >= *(*a3 + 2 * (*(a3 + 8) - 1)) << (*(this + 10) == 0))
  {

    return TrigramData::fillTrigramRecordLookup(this, a2, a3, a4, a5);
  }

  else
  {
    result = TrigramData::allocSearch(this, a2, *(a3 + 8));
    v12 = *(a3 + 8);
    if (*(this + 10))
    {
      if (v12)
      {
        v13 = 0;
        do
        {
          v14 = v13 + *(*(this + 35) + 4 * a2);
          *(*(this + 43) + 2 * v14) = *(*a3 + 2 * v13);
          *(*(this + 47) + v14) = *(*a5 + v13++);
        }

        while (v13 < *(a3 + 8));
      }
    }

    else if (v12)
    {
      v15 = *a3;
      v16 = *(*(this + 35) + 4 * a2);
      v17 = *(this + 43);
      v18 = *a4;
      v19 = *(this + 45);
      do
      {
        v20 = *v15++;
        *(v17 + 2 * v16) = v20;
        v21 = *v18++;
        *(v19 + 2 * v16++) = v21;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

_DWORD *TrigramData::addTrigramBackoffWeightQuantization(_DWORD *this, unsigned __int8 a2, __int16 a3)
{
  v4 = this;
  this[1] = 1;
  v5 = this[6];
  if (!v5)
  {
    if (this[7])
    {
      v6 = 0;
    }

    else
    {
      this = DgnPrimArray<short>::reallocElts((this + 4), 1, 1);
      v6 = v4[6];
    }

    *(*(v4 + 2) + 2 * v6) = 20000;
    v5 = v6 + 1;
    v4[6] = v5;
  }

  if (v5 == v4[7])
  {
    this = DgnPrimArray<short>::reallocElts((v4 + 4), 1, 1);
    v5 = v4[6];
  }

  *(*(v4 + 2) + 2 * v5) = a3;
  v4[6] = v5 + 1;
  return this;
}

_DWORD *TrigramData::addTrigramScoreQuantization(_DWORD *this, unsigned __int8 a2, __int16 a3)
{
  v4 = this;
  this[2] = 1;
  v5 = this[10];
  if (!v5)
  {
    if (this[11])
    {
      v6 = 0;
    }

    else
    {
      this = DgnPrimArray<short>::reallocElts((this + 8), 1, 1);
      v6 = v4[10];
    }

    *(*(v4 + 4) + 2 * v6) = 20000;
    v5 = v6 + 1;
    v4[10] = v5;
  }

  if (v5 == v4[11])
  {
    this = DgnPrimArray<short>::reallocElts((v4 + 8), 1, 1);
    v5 = v4[10];
  }

  *(*(v4 + 4) + 2 * v5) = a3;
  v4[10] = v5 + 1;
  return this;
}

unint64_t TrigramData::allocLoaded(unint64_t this, unsigned int a2)
{
  v3 = this;
  v4 = *(this + 280);
  v5 = *(v4 + 4 * a2);
  v6 = *(this + 416);
  *(v4 + 4 * a2) = v6;
  if (v6 == *(this + 420))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(this + 408, 1, 1);
    v6 = *(v3 + 416);
  }

  *(*(v3 + 408) + 4 * v6) = v5;
  ++*(v3 + 416);
  v7 = *(v3 + 448);
  v8 = *(v3 + 432);
  if (v8 == *(v3 + 436))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(v3 + 424, 1, 1);
    v8 = *(v3 + 432);
  }

  *(*(v3 + 424) + 4 * v8) = v7;
  ++*(v3 + 432);
  v9 = *(*(v3 + 296) + 2 * a2);
  v10 = *(v3 + 448) + v9;
  v11 = *(v3 + 452);
  if (v10 > v11)
  {
    this = DgnPrimArray<short>::reallocElts(v3 + 440, v10 - v11, 1);
    v10 = *(v3 + 448) + v9;
  }

  *(v3 + 448) = v10;
  if (*(v3 + 8))
  {
    v12 = *(v3 + 480) + v9;
    v13 = *(v3 + 484);
    if (v12 > v13)
    {
      this = DgnPrimArray<char>::reallocElts(v3 + 472, v12 - v13, 1);
      v12 = *(v3 + 480) + v9;
    }

    *(v3 + 480) = v12;
  }

  else
  {
    v14 = *(v3 + 464) + v9;
    v15 = *(v3 + 468);
    if (v14 > v15)
    {
      this = DgnPrimArray<short>::reallocElts(v3 + 456, v14 - v15, 1);
      v14 = *(v3 + 464) + v9;
    }

    *(v3 + 464) = v14;
  }

  *(*(v3 + 160) + 4 * (a2 >> 5)) |= 1 << a2;
  v16 = *(v3 + 400);
  if (v16 == *(v3 + 404))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(v3 + 392, 1, 1);
    v16 = *(v3 + 400);
  }

  *(*(v3 + 392) + 4 * v16) = a2;
  ++*(v3 + 400);
  return this;
}

void QuadgramData::QuadgramData(QuadgramData *this)
{
  *(this + 1) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  DgnString::DgnString((this + 112));
  DgnString::DgnString((this + 128));
  DgnString::DgnString((this + 144));
  *(this + 10) = 0u;
  *this = 0;
  *(this + 2) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 70) = 0;
  QuadgramData::allocQuad1(this, 0, 0);
}

void sub_262788C70(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 552);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 536);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 520);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 504);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 488);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 472);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 456);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 440);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 424);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 392);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 376);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 360);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 280);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 248);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(v3);
  BitArray::~BitArray((v2 + 144));
  BitArray::~BitArray((v2 + 128));
  BitArray::~BitArray((v1 + 96));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void QuadgramData::allocQuad1(QuadgramData *this, unsigned int a2, int a3)
{
  v6 = *(this + 14);
  if (v6 <= a2)
  {
    do
    {
      if (v6 == *(this + 15))
      {
        DgnPrimArray<short>::reallocElts(this + 48, 1, 1);
        v6 = *(this + 14);
      }

      *(*(this + 6) + 2 * v6) = 0;
      *(this + 14) = v6 + 1;
      v8 = *(this + 18);
      if (v8 == *(this + 19))
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 64, 1, 1);
        v8 = *(this + 18);
      }

      v7 = *(this + 8);
      *(v7 + 4 * v8) = -1;
      ++*(this + 18);
      v6 = *(this + 14);
    }

    while (v6 <= a2);
  }

  else
  {
    v7 = *(this + 8);
  }

  *(*(this + 6) + 2 * a2) = a3;
  v9 = *(this + 22);
  *(v7 + 4 * a2) = v9;
  v10 = v9 + a3;
  v11 = *(this + 23);
  if (v10 > v11)
  {
    DgnPrimArray<short>::reallocElts(this + 80, v10 - v11, 1);
    v10 = *(this + 22) + a3;
  }

  *(this + 22) = v10;
  if (*this)
  {
    BitArray::addSize((this + 112), a3);
    BitArray::addSize((this + 128), a3);
    BitArray::addSize((this + 144), a3);
  }

  v12 = *(this + 64) + a3;
  v13 = *(this + 65);
  if (v12 > v13)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 248, v12 - v13, 1);
    v12 = *(this + 64) + a3;
  }

  *(this + 64) = v12;
  v14 = *(this + 27);
  v15 = *(this + 26) + a3;
  if (v15 > v14)
  {
    DgnPrimArray<short>::reallocElts(this + 96, v15 - v14, 1);
    v15 = *(this + 26) + a3;
  }

  *(this + 26) = v15;
}

void QuadgramData::~QuadgramData(QuadgramData *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 552);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 536);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 520);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 504);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 488);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 472);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 456);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 440);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 424);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 392);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 376);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 360);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 280);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 248);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(this + 160);
  BitArray::~BitArray((this + 144));
  BitArray::~BitArray((this + 128));
  BitArray::~BitArray((this + 112));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
}

void *QuadgramData::compact(QuadgramData *this)
{
  DgnPrimArray<unsigned short>::compact(this + 48);
  DgnPrimArray<unsigned int>::compact(this + 64);
  DgnPrimArray<unsigned short>::compact(this + 80);
  DgnPrimArray<unsigned short>::compact(this + 96);
  BitArray::compact((this + 112));
  BitArray::compact((this + 128));
  DgnPrimArray<unsigned int>::compact(this + 248);
  DgnPrimArray<unsigned short>::compact(this + 264);
  DgnPrimArray<unsigned short>::compact(this + 280);
  DgnPrimArray<unsigned short>::compact(this + 296);
  DgnPrimArray<unsigned char>::compact(this + 39);
  DgnPrimArray<unsigned int>::compact(this + 328);
  DgnPrimArray<unsigned short>::compact(this + 344);
  DgnPrimArray<unsigned short>::compact(this + 360);
  DgnPrimArray<unsigned char>::compact(this + 47);
  DgnPrimArray<unsigned int>::compact(this + 392);
  DgnPrimArray<unsigned int>::compact(this + 408);
  DgnPrimArray<unsigned int>::compact(this + 424);
  DgnPrimArray<unsigned short>::compact(this + 440);
  DgnPrimArray<unsigned short>::compact(this + 456);
  DgnPrimArray<unsigned char>::compact(this + 59);
  DgnPrimArray<unsigned int>::compact(this + 488);
  DgnPrimArray<unsigned short>::compact(this + 504);
  DgnPrimArray<unsigned short>::compact(this + 520);
  DgnPrimArray<unsigned short>::compact(this + 536);

  return DgnPrimArray<unsigned char>::compact(this + 69);
}

void QuadgramData::printSize(QuadgramData *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2771, &v342);
  if (v343)
  {
    v16 = v342;
  }

  else
  {
    v16 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288CFB0, a3, &unk_26288CFB0, v16);
  DgnString::~DgnString(&v342);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288CFB0);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v27 = v342;
  }

  else
  {
    v27 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v27, 4, 4, 0);
  DgnString::~DgnString(&v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v32 = v342;
  }

  else
  {
    v32 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v32, 4, 4, 0);
  DgnString::~DgnString(&v342);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v37 = v342;
  }

  else
  {
    v37 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v34, v35, v36, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v37, 4, 4, 0);
  v341 = a3;
  DgnString::~DgnString(&v342);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 12;
  }

  else
  {
    v38 = 16;
  }

  v39 = *(this + 6);
  v40 = *(this + 7);
  if (v40 >= v39)
  {
    v41 = 0;
    if (v39 > 0)
    {
      v38 += 2 * (v39 - 1) + 2;
    }

    v42 = v38 + 2 * (v40 - v39);
  }

  else
  {
    v41 = 2 * v39;
    v42 = v38;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v47 = v342;
  }

  else
  {
    v47 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v44, v45, v46, v21, &unk_26288CFB0, v22, v22, v47, v42, v38, v41);
  DgnString::~DgnString(&v342);
  *a4 += v42;
  *a5 += v38;
  *a6 += v41;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v48 = 12;
  }

  else
  {
    v48 = 16;
  }

  v49 = *(this + 10);
  v50 = *(this + 11);
  if (v50 >= v49)
  {
    v51 = 0;
    if (v49 > 0)
    {
      v48 += 2 * (v49 - 1) + 2;
    }

    v52 = v48 + 2 * (v50 - v49);
  }

  else
  {
    v51 = 2 * v49;
    v52 = v48;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v57 = v342;
  }

  else
  {
    v57 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v54, v55, v56, v21, &unk_26288CFB0, v22, v22, v57, v52, v48, v51);
  DgnString::~DgnString(&v342);
  *a4 += v52;
  *a5 += v48;
  *a6 += v51;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 12;
  }

  else
  {
    v58 = 16;
  }

  v59 = *(this + 14);
  v60 = *(this + 15);
  if (v60 >= v59)
  {
    v61 = 0;
    if (v59 > 0)
    {
      v58 += 2 * (v59 - 1) + 2;
    }

    v62 = v58 + 2 * (v60 - v59);
  }

  else
  {
    v61 = 2 * v59;
    v62 = v58;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v67 = v342;
  }

  else
  {
    v67 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, v21, &unk_26288CFB0, v22, v22, v67, v62, v58, v61);
  DgnString::~DgnString(&v342);
  *a4 += v62;
  *a5 += v58;
  *a6 += v61;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v68 = 12;
  }

  else
  {
    v68 = 16;
  }

  v69 = *(this + 18);
  v70 = *(this + 19);
  if (v70 >= v69)
  {
    v71 = 0;
    if (v69 > 0)
    {
      v68 += 4 * (v69 - 1) + 4;
    }

    v72 = v68 + 4 * (v70 - v69);
  }

  else
  {
    v71 = 4 * v69;
    v72 = v68;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v77 = v342;
  }

  else
  {
    v77 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v74, v75, v76, v21, &unk_26288CFB0, v22, v22, v77, v72, v68, v71);
  DgnString::~DgnString(&v342);
  *a4 += v72;
  *a5 += v68;
  *a6 += v71;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v78 = 12;
  }

  else
  {
    v78 = 16;
  }

  v79 = *(this + 22);
  v80 = *(this + 23);
  if (v80 >= v79)
  {
    v81 = 0;
    if (v79 > 0)
    {
      v78 += 2 * (v79 - 1) + 2;
    }

    v82 = v78 + 2 * (v80 - v79);
  }

  else
  {
    v81 = 2 * v79;
    v82 = v78;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v87 = v342;
  }

  else
  {
    v87 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v84, v85, v86, v21, &unk_26288CFB0, v22, v22, v87, v82, v78, v81);
  DgnString::~DgnString(&v342);
  *a4 += v82;
  *a5 += v78;
  *a6 += v81;
  v88 = BitArray::sizeObject(this + 112, 0);
  v89 = BitArray::sizeObject(this + 112, 1);
  v90 = BitArray::sizeObject(this + 112, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v95 = v342;
  }

  else
  {
    v95 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v92, v93, v94, v21, &unk_26288CFB0, v22, v22, v95, v88, v89, v90);
  DgnString::~DgnString(&v342);
  *a4 += v88;
  *a5 += v89;
  *a6 += v90;
  v96 = BitArray::sizeObject(this + 128, 0);
  v97 = BitArray::sizeObject(this + 128, 1);
  v98 = BitArray::sizeObject(this + 128, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v103 = v342;
  }

  else
  {
    v103 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v99, v100, v101, v102, v21, &unk_26288CFB0, v22, v22, v103, v96, v97, v98);
  DgnString::~DgnString(&v342);
  *a4 += v96;
  *a5 += v97;
  *a6 += v98;
  v104 = BitArray::sizeObject(this + 144, 0);
  v105 = BitArray::sizeObject(this + 144, 1);
  v106 = BitArray::sizeObject(this + 144, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v111 = v342;
  }

  else
  {
    v111 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v108, v109, v110, v21, &unk_26288CFB0, v22, v22, v111, v104, v105, v106);
  DgnString::~DgnString(&v342);
  *a4 += v104;
  *a5 += v105;
  *a6 += v106;
  v112 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 160, 0);
  v113 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 160, 1);
  v114 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 160, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v119 = v342;
  }

  else
  {
    v119 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v115, v116, v117, v118, v21, &unk_26288CFB0, v22, v22, v119, v112, v113, v114);
  DgnString::~DgnString(&v342);
  *a4 += v112;
  *a5 += v113;
  *a6 += v114;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v120 = 12;
  }

  else
  {
    v120 = 16;
  }

  v121 = *(this + 64);
  v122 = *(this + 65);
  if (v122 >= v121)
  {
    v123 = 0;
    if (v121 > 0)
    {
      v120 += 4 * (v121 - 1) + 4;
    }

    v124 = v120 + 4 * (v122 - v121);
  }

  else
  {
    v123 = 4 * v121;
    v124 = v120;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v129 = v342;
  }

  else
  {
    v129 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v125, v126, v127, v128, v21, &unk_26288CFB0, v22, v22, v129, v124, v120, v123);
  DgnString::~DgnString(&v342);
  *a4 += v124;
  *a5 += v120;
  *a6 += v123;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v130 = 12;
  }

  else
  {
    v130 = 16;
  }

  v131 = *(this + 26);
  v132 = *(this + 27);
  if (v132 >= v131)
  {
    v133 = 0;
    if (v131 > 0)
    {
      v130 += 2 * (v131 - 1) + 2;
    }

    v134 = v130 + 2 * (v132 - v131);
  }

  else
  {
    v133 = 2 * v131;
    v134 = v130;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v139 = v342;
  }

  else
  {
    v139 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v136, v137, v138, v21, &unk_26288CFB0, v22, v22, v139, v134, v130, v133);
  DgnString::~DgnString(&v342);
  *a4 += v134;
  *a5 += v130;
  *a6 += v133;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v140 = 12;
  }

  else
  {
    v140 = 16;
  }

  v141 = *(this + 68);
  v142 = *(this + 69);
  if (v142 >= v141)
  {
    v143 = 0;
    if (v141 > 0)
    {
      v140 += 2 * (v141 - 1) + 2;
    }

    v144 = v140 + 2 * (v142 - v141);
  }

  else
  {
    v143 = 2 * v141;
    v144 = v140;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v149 = v342;
  }

  else
  {
    v149 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v146, v147, v148, v21, &unk_26288CFB0, v22, v22, v149, v144, v140, v143);
  DgnString::~DgnString(&v342);
  *a4 += v144;
  *a5 += v140;
  *a6 += v143;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v150 = 12;
  }

  else
  {
    v150 = 16;
  }

  v151 = *(this + 76);
  v152 = *(this + 77);
  if (v152 >= v151)
  {
    v153 = 0;
    if (v151 > 0)
    {
      v150 += 2 * (v151 - 1) + 2;
    }

    v154 = v150 + 2 * (v152 - v151);
  }

  else
  {
    v153 = 2 * v151;
    v154 = v150;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v159 = v342;
  }

  else
  {
    v159 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v155, v156, v157, v158, v21, &unk_26288CFB0, v22, v22, v159, v154, v150, v153);
  DgnString::~DgnString(&v342);
  *a4 += v154;
  *a5 += v150;
  *a6 += v153;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v160 = 12;
  }

  else
  {
    v160 = 16;
  }

  v161 = *(this + 80);
  v162 = *(this + 81);
  v163 = v162 >= v161;
  v164 = v162 - v161;
  if (v163)
  {
    if (v161 > 0)
    {
      v165 = (v161 - 1) + v160 + 1;
    }

    else
    {
      v165 = v160;
    }

    v160 = v165 + v164;
    v161 = 0;
  }

  else
  {
    v165 = v160;
  }

  v166 = v161;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v171 = v342;
  }

  else
  {
    v171 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v167, v168, v169, v170, v21, &unk_26288CFB0, v22, v22, v171, v160, v165, v166);
  DgnString::~DgnString(&v342);
  *a4 += v160;
  *a5 += v165;
  *a6 += v166;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v172 = 12;
  }

  else
  {
    v172 = 16;
  }

  v173 = *(this + 84);
  v174 = *(this + 85);
  if (v174 >= v173)
  {
    v175 = 0;
    if (v173 > 0)
    {
      v172 += 4 * (v173 - 1) + 4;
    }

    v176 = v172 + 4 * (v174 - v173);
  }

  else
  {
    v175 = 4 * v173;
    v176 = v172;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v181 = v342;
  }

  else
  {
    v181 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v177, v178, v179, v180, v21, &unk_26288CFB0, v22, v22, v181, v176, v172, v175);
  DgnString::~DgnString(&v342);
  *a4 += v176;
  *a5 += v172;
  *a6 += v175;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v182 = 12;
  }

  else
  {
    v182 = 16;
  }

  v183 = *(this + 72);
  v184 = *(this + 73);
  if (v184 >= v183)
  {
    v185 = 0;
    if (v183 > 0)
    {
      v182 += 2 * (v183 - 1) + 2;
    }

    v186 = v182 + 2 * (v184 - v183);
  }

  else
  {
    v185 = 2 * v183;
    v186 = v182;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v191 = v342;
  }

  else
  {
    v191 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v187, v188, v189, v190, v21, &unk_26288CFB0, v22, v22, v191, v186, v182, v185);
  DgnString::~DgnString(&v342);
  *a4 += v186;
  *a5 += v182;
  *a6 += v185;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v192 = 12;
  }

  else
  {
    v192 = 16;
  }

  v193 = *(this + 88);
  v194 = *(this + 89);
  if (v194 >= v193)
  {
    v195 = 0;
    if (v193 > 0)
    {
      v192 += 2 * (v193 - 1) + 2;
    }

    v196 = v192 + 2 * (v194 - v193);
  }

  else
  {
    v195 = 2 * v193;
    v196 = v192;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v201 = v342;
  }

  else
  {
    v201 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v197, v198, v199, v200, v21, &unk_26288CFB0, v22, v22, v201, v196, v192, v195);
  DgnString::~DgnString(&v342);
  *a4 += v196;
  *a5 += v192;
  *a6 += v195;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v202 = 12;
  }

  else
  {
    v202 = 16;
  }

  v203 = *(this + 92);
  v204 = *(this + 93);
  if (v204 >= v203)
  {
    v205 = 0;
    if (v203 > 0)
    {
      v202 += 2 * (v203 - 1) + 2;
    }

    v206 = v202 + 2 * (v204 - v203);
  }

  else
  {
    v205 = 2 * v203;
    v206 = v202;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v211 = v342;
  }

  else
  {
    v211 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v207, v208, v209, v210, v21, &unk_26288CFB0, v22, v22, v211, v206, v202, v205);
  DgnString::~DgnString(&v342);
  *a4 += v206;
  *a5 += v202;
  *a6 += v205;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v212 = 12;
  }

  else
  {
    v212 = 16;
  }

  v213 = *(this + 96);
  v214 = *(this + 97);
  v163 = v214 >= v213;
  v215 = v214 - v213;
  if (v163)
  {
    if (v213 > 0)
    {
      v216 = (v213 - 1) + v212 + 1;
    }

    else
    {
      v216 = v212;
    }

    v212 = v216 + v215;
    v213 = 0;
  }

  else
  {
    v216 = v212;
  }

  v217 = v213;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v222 = v342;
  }

  else
  {
    v222 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v218, v219, v220, v221, v21, &unk_26288CFB0, v22, v22, v222, v212, v216, v217);
  DgnString::~DgnString(&v342);
  *a4 += v212;
  *a5 += v216;
  *a6 += v217;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v223 = 12;
  }

  else
  {
    v223 = 16;
  }

  v224 = *(this + 100);
  v225 = *(this + 101);
  if (v225 >= v224)
  {
    v226 = 0;
    if (v224 > 0)
    {
      v223 += 4 * (v224 - 1) + 4;
    }

    v227 = v223 + 4 * (v225 - v224);
  }

  else
  {
    v226 = 4 * v224;
    v227 = v223;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v232 = v342;
  }

  else
  {
    v232 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v228, v229, v230, v231, v21, &unk_26288CFB0, v22, v22, v232, v227, v223, v226);
  DgnString::~DgnString(&v342);
  *a4 += v227;
  *a5 += v223;
  *a6 += v226;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v233 = 12;
  }

  else
  {
    v233 = 16;
  }

  v234 = *(this + 104);
  v235 = *(this + 105);
  if (v235 >= v234)
  {
    v236 = 0;
    if (v234 > 0)
    {
      v233 += 4 * (v234 - 1) + 4;
    }

    v237 = v233 + 4 * (v235 - v234);
  }

  else
  {
    v236 = 4 * v234;
    v237 = v233;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v242 = v342;
  }

  else
  {
    v242 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v238, v239, v240, v241, v21, &unk_26288CFB0, v22, v22, v242, v237, v233, v236);
  DgnString::~DgnString(&v342);
  *a4 += v237;
  *a5 += v233;
  *a6 += v236;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v243 = 12;
  }

  else
  {
    v243 = 16;
  }

  v244 = *(this + 108);
  v245 = *(this + 109);
  if (v245 >= v244)
  {
    v246 = 0;
    if (v244 > 0)
    {
      v243 += 4 * (v244 - 1) + 4;
    }

    v247 = v243 + 4 * (v245 - v244);
  }

  else
  {
    v246 = 4 * v244;
    v247 = v243;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v252 = v342;
  }

  else
  {
    v252 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v248, v249, v250, v251, v21, &unk_26288CFB0, v22, v22, v252, v247, v243, v246);
  DgnString::~DgnString(&v342);
  *a4 += v247;
  *a5 += v243;
  *a6 += v246;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v253 = 12;
  }

  else
  {
    v253 = 16;
  }

  v254 = *(this + 112);
  v255 = *(this + 113);
  if (v255 >= v254)
  {
    v256 = 0;
    if (v254 > 0)
    {
      v253 += 2 * (v254 - 1) + 2;
    }

    v257 = v253 + 2 * (v255 - v254);
  }

  else
  {
    v256 = 2 * v254;
    v257 = v253;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v262 = v342;
  }

  else
  {
    v262 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v258, v259, v260, v261, v21, &unk_26288CFB0, v22, v22, v262, v257, v253, v256);
  DgnString::~DgnString(&v342);
  *a4 += v257;
  *a5 += v253;
  *a6 += v256;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v263 = 12;
  }

  else
  {
    v263 = 16;
  }

  v264 = *(this + 116);
  v265 = *(this + 117);
  if (v265 >= v264)
  {
    v266 = 0;
    if (v264 > 0)
    {
      v263 += 2 * (v264 - 1) + 2;
    }

    v267 = v263 + 2 * (v265 - v264);
  }

  else
  {
    v266 = 2 * v264;
    v267 = v263;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v272 = v342;
  }

  else
  {
    v272 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v268, v269, v270, v271, v21, &unk_26288CFB0, v22, v22, v272, v267, v263, v266);
  DgnString::~DgnString(&v342);
  *a4 += v267;
  *a5 += v263;
  *a6 += v266;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v273 = 12;
  }

  else
  {
    v273 = 16;
  }

  v274 = *(this + 120);
  v275 = *(this + 121);
  v163 = v275 >= v274;
  v276 = v275 - v274;
  if (v163)
  {
    if (v274 > 0)
    {
      v277 = (v274 - 1) + v273 + 1;
    }

    else
    {
      v277 = v273;
    }

    v273 = v277 + v276;
    v274 = 0;
  }

  else
  {
    v277 = v273;
  }

  v278 = v274;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v283 = v342;
  }

  else
  {
    v283 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v279, v280, v281, v282, v21, &unk_26288CFB0, v22, v22, v283, v273, v277, v278);
  DgnString::~DgnString(&v342);
  *a4 += v273;
  *a5 += v277;
  *a6 += v278;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v284 = 12;
  }

  else
  {
    v284 = 16;
  }

  v285 = *(this + 124);
  v286 = *(this + 125);
  if (v286 >= v285)
  {
    v287 = 0;
    if (v285 > 0)
    {
      v284 += 4 * (v285 - 1) + 4;
    }

    v288 = v284 + 4 * (v286 - v285);
  }

  else
  {
    v287 = 4 * v285;
    v288 = v284;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v293 = v342;
  }

  else
  {
    v293 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v289, v290, v291, v292, v21, &unk_26288CFB0, v22, v22, v293, v288, v284, v287);
  DgnString::~DgnString(&v342);
  *a4 += v288;
  *a5 += v284;
  *a6 += v287;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v294 = 12;
  }

  else
  {
    v294 = 16;
  }

  v295 = *(this + 128);
  v296 = *(this + 129);
  if (v296 >= v295)
  {
    v297 = 0;
    if (v295 > 0)
    {
      v294 += 2 * (v295 - 1) + 2;
    }

    v298 = v294 + 2 * (v296 - v295);
  }

  else
  {
    v297 = 2 * v295;
    v298 = v294;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v303 = v342;
  }

  else
  {
    v303 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v299, v300, v301, v302, v21, &unk_26288CFB0, v22, v22, v303, v298, v294, v297);
  DgnString::~DgnString(&v342);
  *a4 += v298;
  *a5 += v294;
  *a6 += v297;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v304 = 12;
  }

  else
  {
    v304 = 16;
  }

  v305 = *(this + 132);
  v306 = *(this + 133);
  if (v306 >= v305)
  {
    v307 = 0;
    if (v305 > 0)
    {
      v304 += 2 * (v305 - 1) + 2;
    }

    v308 = v304 + 2 * (v306 - v305);
  }

  else
  {
    v307 = 2 * v305;
    v308 = v304;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v313 = v342;
  }

  else
  {
    v313 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v309, v310, v311, v312, v21, &unk_26288CFB0, v22, v22, v313, v308, v304, v307);
  DgnString::~DgnString(&v342);
  *a4 += v308;
  *a5 += v304;
  *a6 += v307;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v314 = 12;
  }

  else
  {
    v314 = 16;
  }

  v315 = *(this + 136);
  v316 = *(this + 137);
  if (v316 >= v315)
  {
    v317 = 0;
    if (v315 > 0)
    {
      v314 += 2 * (v315 - 1) + 2;
    }

    v318 = v314 + 2 * (v316 - v315);
  }

  else
  {
    v317 = 2 * v315;
    v318 = v314;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v323 = v342;
  }

  else
  {
    v323 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v319, v320, v321, v322, v21, &unk_26288CFB0, v22, v22, v323, v318, v314, v317);
  DgnString::~DgnString(&v342);
  *a4 += v318;
  *a5 += v314;
  *a6 += v317;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v324 = 12;
  }

  else
  {
    v324 = 16;
  }

  v325 = *(this + 140);
  v326 = *(this + 141);
  v163 = v326 >= v325;
  v327 = v326 - v325;
  if (v163)
  {
    if (v325 > 0)
    {
      v328 = (v325 - 1) + v324 + 1;
    }

    else
    {
      v328 = v324;
    }

    v324 = v328 + v327;
    v325 = 0;
  }

  else
  {
    v328 = v324;
  }

  v329 = v325;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2775, &v342);
  if (v343)
  {
    v334 = v342;
  }

  else
  {
    v334 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v330, v331, v332, v333, v21, &unk_26288CFB0, v22, v22, v334, v324, v328, v329);
  DgnString::~DgnString(&v342);
  *a4 += v324;
  *a5 += v328;
  *a6 += v329;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 2776, &v342);
  if (v343)
  {
    v339 = v342;
  }

  else
  {
    v339 = &unk_26288CFB0;
  }

  v340 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v335, v336, v337, v338, v341, &unk_26288CFB0, (35 - v341), (35 - v341), v339, *a4, *a5, *a6);
  DgnString::~DgnString(&v342);
}

void sub_26278A9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *QuadgramData::copyQuadgramData(QuadgramData *this, const QuadgramData *a2)
{
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  DgnPrimArray<unsigned short>::copyArraySlice(this + 16, a2 + 2, 0, *(a2 + 6));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 32, a2 + 4, 0, *(a2 + 10));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 48, a2 + 6, 0, *(a2 + 14));
  DgnPrimArray<int>::copyArraySlice(this + 64, a2 + 8, 0, *(a2 + 18));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 80, a2 + 10, 0, *(a2 + 22));
  BitArray::operator=(this + 14, a2 + 112);
  BitArray::operator=(this + 16, a2 + 128);
  BitArray::operator=(this + 18, a2 + 144);
  HuffmanDecoder<unsigned short,unsigned int>::operator=(this + 160, a2 + 160);
  DgnPrimArray<int>::copyArraySlice(this + 248, a2 + 31, 0, *(a2 + 64));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 96, a2 + 12, 0, *(a2 + 26));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 264, a2 + 33, 0, *(a2 + 68));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 296, a2 + 37, 0, *(a2 + 76));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 312, a2 + 39, 0, *(a2 + 80));
  DgnPrimArray<int>::copyArraySlice(this + 328, a2 + 41, 0, *(a2 + 84));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 280, a2 + 35, 0, *(a2 + 72));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 344, a2 + 43, 0, *(a2 + 88));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 360, a2 + 45, 0, *(a2 + 92));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 376, a2 + 47, 0, *(a2 + 96));
  DgnPrimArray<int>::copyArraySlice(this + 392, a2 + 49, 0, *(a2 + 100));
  DgnPrimArray<int>::copyArraySlice(this + 408, a2 + 51, 0, *(a2 + 104));
  DgnPrimArray<int>::copyArraySlice(this + 424, a2 + 53, 0, *(a2 + 108));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 440, a2 + 55, 0, *(a2 + 112));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 456, a2 + 57, 0, *(a2 + 116));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 472, a2 + 59, 0, *(a2 + 120));
  DgnPrimArray<int>::copyArraySlice(this + 488, a2 + 61, 0, *(a2 + 124));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 504, a2 + 63, 0, *(a2 + 128));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 520, a2 + 65, 0, *(a2 + 132));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 536, a2 + 67, 0, *(a2 + 136));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 552, a2 + 69, 0, *(a2 + 140));

  return QuadgramData::compact(this);
}

uint64_t QuadgramData::saveBinary(QuadgramData *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this, a3);
  writeObject(a2, this + 1, a3);
  writeObject(a2, this + 2, a3);
  writeObject<short>(a2, this + 16, a3);
  writeObject<unsigned short>(a2, this + 32, a3);
  writeObject<unsigned short>(a2, this + 48, a3);
  writeObject<unsigned int>(a2, this + 64, a3);
  writeObject<unsigned short>(a2, this + 80, a3);
  writeObject(a2, this + 112, a3);
  writeObject(a2, this + 128, a3);
  writeObject(a2, this + 144, a3);
  HuffmanDecoder<unsigned short,unsigned int>::writeObject(this + 160, a2, a3);
  writeObject<unsigned int>(a2, this + 248, a3);
  writeObject<unsigned short>(a2, this + 96, a3);
  writeObject<unsigned short>(a2, this + 264, a3);
  writeObject<short>(a2, this + 296, a3);
  writeObject<unsigned char>(a2, this + 312, a3);
  writeObject<unsigned int>(a2, this + 328, a3);
  writeObject<unsigned short>(a2, this + 280, a3);
  writeObject<unsigned short>(a2, this + 344, a3);
  writeObject<unsigned short>(a2, this + 360, a3);
  writeObject<unsigned char>(a2, this + 376, a3);
  writeObject<unsigned int>(a2, this + 392, a3);
  writeObject<unsigned int>(a2, this + 408, a3);
  writeObject<unsigned int>(a2, this + 424, a3);
  writeObject<unsigned short>(a2, this + 440, a3);
  writeObject<short>(a2, this + 456, a3);
  writeObject<unsigned char>(a2, this + 472, a3);
  writeObject<unsigned int>(a2, this + 488, a3);
  writeObject<unsigned short>(a2, this + 504, a3);
  writeObject<unsigned short>(a2, this + 520, a3);
  writeObject<unsigned short>(a2, this + 536, a3);

  return writeObject<unsigned char>(a2, this + 552, a3);
}

void QuadgramData::loadBinary(QuadgramData *this, DgnStream *a2, unsigned int *a3)
{
  readObject(a2, this, a3);
  readObject(a2, this + 1, a3);
  readObject(a2, this + 2, a3);
  readObject<short>(a2, this + 16, a3);
  readObject<unsigned short>(a2, this + 32, a3);
  readObject<unsigned short>(a2, this + 48, a3);
  readObject<unsigned int>(a2, this + 64, a3);
  readObject<unsigned short>(a2, this + 80, a3);
  readObject(a2, (this + 112), a3);
  readObject(a2, (this + 128), a3);
  readObject(a2, (this + 144), a3);
  HuffmanDecoder<unsigned short,unsigned int>::readObject(this + 160, a2, a3);
  readObject<unsigned int>(a2, this + 248, a3);
  readObject<unsigned short>(a2, this + 96, a3);
  readObject<unsigned short>(a2, this + 264, a3);
  readObject<short>(a2, this + 296, a3);
  readObject<unsigned char>(a2, this + 312, a3);
  readObject<unsigned int>(a2, this + 328, a3);
  readObject<unsigned short>(a2, this + 280, a3);
  readObject<unsigned short>(a2, this + 344, a3);
  readObject<unsigned short>(a2, this + 360, a3);
  readObject<unsigned char>(a2, this + 376, a3);
  readObject<unsigned int>(a2, this + 392, a3);
  readObject<unsigned int>(a2, this + 408, a3);
  readObject<unsigned int>(a2, this + 424, a3);
  readObject<unsigned short>(a2, this + 440, a3);
  readObject<short>(a2, this + 456, a3);
  readObject<unsigned char>(a2, this + 472, a3);
  readObject<unsigned int>(a2, this + 488, a3);
  readObject<unsigned short>(a2, this + 504, a3);
  readObject<unsigned short>(a2, this + 520, a3);
  readObject<unsigned short>(a2, this + 536, a3);

  readObject<unsigned char>(a2, this + 552, a3);
}

char *QuadgramData::saveBinaryShared(QuadgramData *this, DgnSharedMemStream *a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    writeObject(a2, this, a4);
    writeObject(a2, this + 1, a4);
    writeObject(a2, this + 2, a4);
    writeSharedObject<short>(a2, this + 16, a4);
    writeSharedObject<short>(a2, this + 32, a4);
    writeSharedObject<short>(a2, this + 48, a4);
    writeSharedObject<unsigned int>(a2, this + 64, a4);
    writeSharedObject<short>(a2, this + 80, a4);
    writeSharedObject(a2, (this + 112), a4);
    writeSharedObject(a2, (this + 128), a4);
    writeSharedObject(a2, (this + 144), a4);
    HuffmanDecoder<unsigned short,unsigned int>::writeObject(this + 160, a2, a4);
  }

  else
  {
    writeSharedObject<short>(a2, this + 16, a4);
    writeSharedObject<short>(a2, this + 32, a4);
    writeSharedObject<short>(a2, this + 48, a4);
    writeSharedObject<unsigned int>(a2, this + 64, a4);
    writeSharedObject<short>(a2, this + 80, a4);
    writeSharedObject(a2, (this + 112), a4);
    writeSharedObject(a2, (this + 128), a4);
    writeSharedObject(a2, (this + 144), a4);
  }

  writeSharedObject<unsigned int>(a2, this + 248, a4);
  writeSharedObject<short>(a2, this + 96, a4);
  writeSharedObject<short>(a2, this + 264, a4);
  writeSharedObject<short>(a2, this + 296, a4);
  writeSharedObject<unsigned char>(a2, this + 312, a4);
  writeSharedObject<unsigned int>(a2, this + 328, a4);
  writeSharedObject<short>(a2, this + 280, a4);
  writeSharedObject<short>(a2, this + 344, a4);
  writeSharedObject<short>(a2, this + 360, a4);
  writeSharedObject<unsigned char>(a2, this + 376, a4);
  writeSharedObject<unsigned int>(a2, this + 392, a4);
  writeSharedObject<unsigned int>(a2, this + 408, a4);
  writeSharedObject<unsigned int>(a2, this + 424, a4);
  writeSharedObject<short>(a2, this + 440, a4);
  writeSharedObject<short>(a2, this + 456, a4);
  writeSharedObject<unsigned char>(a2, this + 472, a4);
  writeSharedObject<unsigned int>(a2, this + 488, a4);
  writeSharedObject<short>(a2, this + 504, a4);
  writeSharedObject<short>(a2, this + 520, a4);
  writeSharedObject<short>(a2, this + 536, a4);

  return writeSharedObject<unsigned char>(a2, this + 552, a4);
}

int *QuadgramData::loadBinaryShared(QuadgramData *this, DgnSharedMemStream *a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    readObject(a2, this, a4);
    readObject(a2, this + 1, a4);
    readObject(a2, this + 2, a4);
    readSharedObject<short>(a2, this + 16, a4);
    readSharedObject<short>(a2, this + 32, a4);
    readSharedObject<short>(a2, this + 48, a4);
    readSharedObject<unsigned int>(a2, this + 64, a4);
    readSharedObject<short>(a2, this + 80, a4);
    readSharedObject(a2, (this + 112), a4);
    readSharedObject(a2, (this + 128), a4);
    readSharedObject(a2, (this + 144), a4);
    HuffmanDecoder<unsigned short,unsigned int>::readObject(this + 160, a2, a4);
  }

  else
  {
    readSharedObject<short>(a2, this + 16, a4);
    readSharedObject<short>(a2, this + 32, a4);
    readSharedObject<short>(a2, this + 48, a4);
    readSharedObject<unsigned int>(a2, this + 64, a4);
    readSharedObject<short>(a2, this + 80, a4);
    readSharedObject(a2, (this + 112), a4);
    readSharedObject(a2, (this + 128), a4);
    readSharedObject(a2, (this + 144), a4);
  }

  readSharedObject<unsigned int>(a2, this + 248, a4);
  readSharedObject<short>(a2, this + 96, a4);
  readSharedObject<short>(a2, this + 264, a4);
  readSharedObject<short>(a2, this + 296, a4);
  readSharedObject<unsigned char>(a2, this + 312, a4);
  readSharedObject<unsigned int>(a2, this + 328, a4);
  readSharedObject<short>(a2, this + 280, a4);
  readSharedObject<short>(a2, this + 344, a4);
  readSharedObject<short>(a2, this + 360, a4);
  readSharedObject<unsigned char>(a2, this + 376, a4);
  readSharedObject<unsigned int>(a2, this + 392, a4);
  readSharedObject<unsigned int>(a2, this + 408, a4);
  readSharedObject<unsigned int>(a2, this + 424, a4);
  readSharedObject<short>(a2, this + 440, a4);
  readSharedObject<short>(a2, this + 456, a4);
  readSharedObject<unsigned char>(a2, this + 472, a4);
  readSharedObject<unsigned int>(a2, this + 488, a4);
  readSharedObject<short>(a2, this + 504, a4);
  readSharedObject<short>(a2, this + 520, a4);
  readSharedObject<short>(a2, this + 536, a4);

  return readSharedObject<unsigned char>(a2, this + 552, a4);
}

uint64_t QuadgramData::computeLocalPreloadableBytes(QuadgramData *this)
{
  v16 = *(this + 14);
  if (v16 < 2)
  {
    return 0;
  }

  result = 0;
  for (i = 1; i != v16; ++i)
  {
    if (i < *(this + 14))
    {
      v18 = *(*(this + 6) + 2 * i);
      if (*(*(this + 6) + 2 * i))
      {
        v4 = 0;
        v5 = *(this + 12);
        v17 = i;
        do
        {
          v6 = (*(*(this + 8) + 4 * i) + v4);
          if (*(v5 + 2 * v6))
          {
            v19 = v4;
            v20 = result;
            v7 = 0;
            v8 = 0;
            v9 = 0;
            do
            {
              v10 = 0;
              v11 = 9;
              if (!*(this + 6))
              {
                v11 = 10;
              }

              v8 += v11;
              while (1)
              {
                v12 = *(*(this + 31) + 4 * v6);
                if (*this && (*(*(this + 14) + 4 * (v6 >> 5)) & (1 << v6)) != 0)
                {
                  v12 = *(*(this + 53) + 4 * v12);
                  v13 = 504;
                }

                else
                {
                  v13 = 280;
                }

                if (v10 >= *(*(this + v13) + 2 * (v12 + v7)))
                {
                  break;
                }

                if (QuadgramData::getScoreForIndex(this, v6, v7, v10) != 20000)
                {
                  if (*(this + 10))
                  {
                    v14 = 3;
                  }

                  else
                  {
                    v14 = 4;
                  }

                  v8 += v14;
                  v9 = 1;
                }

                ++v10;
              }

              ++v7;
              v5 = *(this + 12);
            }

            while (v7 < *(v5 + 2 * v6));
            if (v9)
            {
              v15 = v8;
            }

            else
            {
              v15 = 0;
            }

            result = v20;
            i = v17;
            v4 = v19;
          }

          else
          {
            v15 = 0;
          }

          result += v15;
          ++v4;
        }

        while (v4 != v18);
      }
    }
  }

  return result;
}

uint64_t QuadgramData::getScoreForIndex(QuadgramData *this, unsigned int a2, int a3, int a4)
{
  v4 = *(*(this + 31) + 4 * a2);
  if (*this && ((*(*(this + 14) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v5 = (*(*(this + 61) + 4 * (*(*(this + 53) + 4 * v4) + a3)) + a4);
    if (!*(this + 10))
    {
      v7 = *(this + 67);
      return *(v7 + 2 * v5);
    }

    v6 = *(this + 69);
  }

  else
  {
    v5 = (*(*(this + 41) + 4 * (v4 + a3)) + a4);
    if (!*(this + 2))
    {
      v7 = *(this + 45);
      return *(v7 + 2 * v5);
    }

    v6 = *(this + 47);
  }

  v5 = *(v6 + v5);
  v7 = *(this + 4);
  return *(v7 + 2 * v5);
}

uint64_t QuadgramData::initNewQuadgramData(uint64_t a1, TrigramData *this, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = this;
  v8 = *(a1 + 56);
  TrigramData::configureTrigramData(this, 1, *(a1 + 24), *(a1 + 16), *(a1 + 40), *(a1 + 32));
  QuadgramData::preAllocateStaticQuadgramData(v6, v8, *(a1 + 88));
  QuadgramData::preAllocateDynamicQuadgramData(v6, *(a1 + 272), *(a1 + 352));
  v58 = 0;
  v59 = 0;
  if (v8 >= 2)
  {
    v9 = 1;
    v44 = a4;
    v45 = v6;
    v42 = v8;
    do
    {
      *v47 = v9;
      if (v9 < *(a1 + 56))
      {
        v10 = *(a1 + 48);
        v11 = *(v10 + 2 * v9);
        if (*(v10 + 2 * v9))
        {
          v12 = v9;
          QuadgramData::allocQuad1(v6, v9, *(v10 + 2 * v9));
          v13 = 0;
          v14 = 0;
          v43 = *(a4 + 8);
          v46 = v11;
          do
          {
            v15 = *(*(a1 + 64) + 4 * v12) + v14;
            v16 = *(*(a1 + 80) + 2 * v15);
            v17 = *(*(v6 + 8) + 4 * v12) + v14;
            *(*(v6 + 10) + 2 * v17) = 0;
            QuadgramData::quad2SetUnallocated(v6, v17);
            *(*(v6 + 10) + 2 * v17) = v16;
            LODWORD(v59) = 0;
            if (*(*(a1 + 96) + 2 * v15))
            {
              v51 = v17;
              v48 = v16;
              v49 = v14;
              v50 = v13;
              v18 = 0;
              v19 = 0;
              v20 = 0;
              v55 = v15 >> 5;
              v21 = 1 << v15;
              do
              {
                v22 = *(*(a1 + 248) + 4 * v15);
                if (*a1 && (*(*(a1 + 112) + 4 * v55) & v21) != 0)
                {
                  v23 = *(*(a1 + 424) + 4 * v22);
                  v24 = 440;
                }

                else
                {
                  v24 = 264;
                  v23 = *(*(a1 + 248) + 4 * v15);
                }

                v25 = 0;
                v26 = 0;
                v52 = *(*(a1 + v24) + 2 * (v23 + v18));
                v53 = v18 + 1;
                v27 = 9;
                if (!*(a1 + 24))
                {
                  v27 = 10;
                }

                v19 += v27;
                if (!*a1)
                {
LABEL_23:
                  v31 = 280;
                  goto LABEL_24;
                }

                while (1)
                {
                  if ((*(*(a1 + 112) + 4 * v55) & v21) == 0)
                  {
                    goto LABEL_23;
                  }

                  v22 = *(*(a1 + 424) + 4 * v22);
                  v31 = 504;
LABEL_24:
                  if (v26 >= *(*(a1 + v31) + 2 * (v22 + v18)))
                  {
                    break;
                  }

                  Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex(a1, v15, v18, v26);
                  if (QuadgramData::getScoreForIndex(a1, v15, v18, v26) != 20000)
                  {
                    v29 = *(a1 + 40);
                    HuffmanEncoder<unsigned short,unsigned int>::addValue(a3, Quad3SuccIdForIndex);
                    ++v20;
                    v30 = 3;
                    if (!v29)
                    {
                      v30 = 4;
                    }

                    v19 += v30;
                    ++v25;
                  }

                  ++v26;
                  v22 = *(*(a1 + 248) + 4 * v15);
                  if (!*a1)
                  {
                    goto LABEL_23;
                  }
                }

                if (v25)
                {
                  HuffmanEncoder<unsigned short,unsigned int>::addValue(a3, v25);
                  v32 = v59;
                  if (v59 == HIDWORD(v59))
                  {
                    DgnPrimArray<short>::reallocElts(&v58, 1, 1);
                    v32 = v59;
                  }

                  *(v58 + 2 * v32) = v52;
                  LODWORD(v59) = v32 + 1;
                }

                ++v18;
              }

              while (v53 < *(*(a1 + 96) + 2 * v15));
              a4 = v44;
              v12 = *v47;
              if (v59)
              {
                v6 = v45;
                *(*(v45 + 14) + 4 * (v51 >> 5)) |= 1 << v51;
                *(*(v45 + 12) + 2 * v51) = v59;
                HuffmanEncoder<unsigned short,unsigned int>::addSuccessors(a3, &v58);
                v33 = *(v44 + 8);
                if (v33 == *(v44 + 12))
                {
                  DgnArray<DiskNgramContext>::reallocElts(v44, 1, 1);
                  LODWORD(v33) = *(v44 + 8);
                }

                v34 = *v44 + 56 * v33;
                *v34 = 0;
                *(v34 + 8) = 0;
                *(v34 + 16) = 0;
                *(v34 + 24) = -1;
                strcpy((v34 + 32), " N");
                LODWORD(v34) = *(v44 + 8);
                *(v44 + 8) = v34 + 1;
                v35 = *v44 + 56 * v34;
                *(v35 + 34) = 4;
                *(v35 + 24) = v47[0];
                *(v35 + 28) = v48;
                *(v35 + 36) = v15;
                *(v35 + 40) = v51;
                *(v35 + 44) = v53;
                *(v35 + 48) = v20;
                *(v35 + 8) = v19;
                *(v35 + 16) = 0;
                v13 = v19 + v50;
              }

              else
              {
                v6 = v45;
                v13 = v50;
              }

              v11 = v46;
              v14 = v49;
            }

            ++v14;
          }

          while (v14 != v11);
          v36 = *(a4 + 8);
          v8 = v42;
          if (v43 < v36)
          {
            v37 = *(*a5 + 8 * *v47);
            v38 = (*a4 + 56 * v43 + 16);
            v39 = v36 - v43;
            do
            {
              *(v38 - 3) = v37;
              *v38 = v13;
              v38 += 14;
              --v39;
            }

            while (v39);
          }
        }
      }

      v9 = *v47 + 1;
    }

    while (*v47 + 1 != v8);
  }

  if (!*(a3 + 128))
  {
    HuffmanEncoder<unsigned short,unsigned int>::addValue(a3, 0);
  }

  v57 = 0;
  memset(v56, 0, sizeof(v56));
  HuffmanEncoder<unsigned short,unsigned int>::finalizeTables(a3, v56);
  HuffmanDecoder<unsigned short,unsigned int>::operator=(v6 + 160, v56);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(v56);
  QuadgramData::compact(v6);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v58);
}

void QuadgramData::preAllocateStaticQuadgramData(QuadgramData *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 15);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v8 != 0 && v7)
  {
    DgnPrimArray<short>::reallocElts(this + 48, v8, 0);
  }

  v9 = *(this + 19);
  if (a2 > v9)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 64, a2 - v9, 0);
  }

  v10 = *(this + 27);
  if (a3 > v10)
  {
    DgnPrimArray<short>::reallocElts(this + 96, a3 - v10, 0);
  }

  v11 = *(this + 65);
  if (a3 > v11)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 248, a3 - v11, 0);
  }

  v12 = *(this + 23);
  if (a3 > v12)
  {
    DgnPrimArray<short>::reallocElts(this + 80, a3 - v12, 0);
  }

  if (*this)
  {
    BitArray::preAllocate((this + 112), a3);
    BitArray::preAllocate((this + 128), a3);

    BitArray::preAllocate((this + 144), a3);
  }
}

uint64_t QuadgramData::preAllocateDynamicQuadgramData(uint64_t this, unsigned int a2, unsigned int a3)
{
  v5 = this;
  v6 = *(this + 292);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v8 != 0 && v7)
  {
    this = DgnPrimArray<short>::reallocElts(this + 280, v8, 0);
  }

  v9 = *(v5 + 276);
  if (a2 > v9)
  {
    this = DgnPrimArray<short>::reallocElts(v5 + 264, a2 - v9, 0);
  }

  v10 = *(v5 + 340);
  if (a2 > v10)
  {
    this = DgnPrimArray<unsigned int>::reallocElts(v5 + 328, a2 - v10, 0);
  }

  if (*(v5 + 4))
  {
    if (*(v5 + 324) < a2)
    {
      v14 = 0;
      this = realloc_array(*(v5 + 312), &v14, a2, *(v5 + 320), *(v5 + 320), 1);
      *(v5 + 324) = this;
      *(v5 + 312) = v14;
    }
  }

  else
  {
    v11 = *(v5 + 308);
    if (a2 > v11)
    {
      this = DgnPrimArray<short>::reallocElts(v5 + 296, a2 - v11, 0);
    }
  }

  v12 = *(v5 + 356);
  if (a3 > v12)
  {
    this = DgnPrimArray<short>::reallocElts(v5 + 344, a3 - v12, 0);
  }

  if (*(v5 + 8))
  {
    if (*(v5 + 388) < a3)
    {
      v14 = 0;
      this = realloc_array(*(v5 + 376), &v14, a3, *(v5 + 384), *(v5 + 384), 1);
      *(v5 + 388) = this;
      *(v5 + 376) = v14;
    }
  }

  else
  {
    v13 = *(v5 + 372);
    if (a3 > v13)
    {
      return DgnPrimArray<short>::reallocElts(v5 + 360, a3 - v13, 0);
    }
  }

  return this;
}

uint64_t QuadgramData::getQuad3SuccIdForIndex(QuadgramData *this, unsigned int a2, int a3, int a4)
{
  v4 = *(*(this + 31) + 4 * a2);
  if (*this && ((*(*(this + 14) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v4 = *(*(this + 53) + 4 * v4);
    v5 = 520;
    v6 = 488;
  }

  else
  {
    v5 = 344;
    v6 = 328;
  }

  return *(*(this + v5) + 2 * (*(*(this + v6) + 4 * (v4 + a3)) + a4));
}

uint64_t QuadgramData::savePersistentAndFillInNewQuadgramData(QuadgramData *this, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  if (*(*(this + 12) + 2 * a6))
  {
    v9 = 0;
    v10 = a6 >> 5;
    v11 = 1 << a6;
    do
    {
      v12 = *(*(this + 31) + 4 * a6);
      v13 = *this;
      if (*this && (*(*(this + 14) + 4 * v10) & v11) != 0)
      {
        v14 = *(*(this + 53) + 4 * v12);
        v15 = 440;
      }

      else
      {
        v15 = 264;
        v14 = *(*(this + 31) + 4 * a6);
      }

      v16 = 0;
      v17 = 0;
      v44 = *(*(this + v15) + 2 * (v14 + v9));
      if (!v13)
      {
LABEL_23:
        v27 = 280;
        v26 = v12;
        goto LABEL_24;
      }

      while (1)
      {
        if ((*(*(this + 14) + 4 * v10) & v11) == 0)
        {
          goto LABEL_23;
        }

        v26 = *(*(this + 53) + 4 * v12);
        v27 = 504;
LABEL_24:
        if (v16 >= *(*(this + v27) + 2 * (v26 + v9)))
        {
          break;
        }

        Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex(this, a6, v9, v16);
        ScoreForIndex = QuadgramData::getScoreForIndex(this, a6, v9, v16);
        v20 = ScoreForIndex;
        if (ScoreForIndex != 20000)
        {
          v21 = v62;
          if (v62 == HIDWORD(v62))
          {
            DgnPrimArray<short>::reallocElts(&v61, 1, 1);
            v21 = v62;
          }

          v61[v21] = Quad3SuccIdForIndex;
          LODWORD(v62) = v21 + 1;
          if (*(this + 10))
          {
            QuantizedScoreForIndex = QuadgramData::getQuantizedScoreForIndex(this, a6, v9, v16);
            v23 = v52;
            if (v52 == HIDWORD(v52))
            {
              DgnPrimArray<char>::reallocElts(&v51, 1, 1);
              v23 = v52;
            }

            v51[v23] = QuantizedScoreForIndex;
            v24 = v52;
            v25 = &v52;
          }

          else
          {
            v24 = v54;
            if (v54 == HIDWORD(v54))
            {
              DgnPrimArray<short>::reallocElts(&v53, 1, 1);
              v24 = v54;
            }

            v53[v24] = v20;
            v25 = &v54;
          }

          ++v17;
          *v25 = v24 + 1;
        }

        ++v16;
        v12 = *(*(this + 31) + 4 * a6);
        v13 = *this;
        if (!*this)
        {
          goto LABEL_23;
        }
      }

      if (v17)
      {
        if (*(this + 6))
        {
          if (v13 && (*(*(this + 14) + 4 * v10) & v11) != 0)
          {
            v12 = *(*(this + 53) + 4 * v12);
            v28 = 472;
          }

          else
          {
            v28 = 312;
          }

          v29 = *(*(this + v28) + v12 + v9);
          v30 = v56;
          if (v56 == HIDWORD(v56))
          {
            DgnPrimArray<char>::reallocElts(&v55, 1, 1);
            v30 = v56;
          }

          v55[v30] = v29;
          v31 = v56;
          v32 = &v56;
        }

        else
        {
          BackoffWeight = QuadgramData::getBackoffWeight(this, a6, v9);
          v31 = v58;
          if (v58 == HIDWORD(v58))
          {
            DgnPrimArray<short>::reallocElts(&v57, 1, 1);
            v31 = v58;
          }

          v57[v31] = BackoffWeight;
          v32 = &v58;
        }

        *v32 = v31 + 1;
        v34 = v64;
        if (v64 == HIDWORD(v64))
        {
          DgnPrimArray<short>::reallocElts(&v63, 1, 1);
          v34 = v64;
        }

        v63[v34] = v44;
        LODWORD(v64) = v34 + 1;
        v35 = v60;
        if (v60 == HIDWORD(v60))
        {
          DgnPrimArray<short>::reallocElts(&v59, 1, 1);
          v35 = v60;
        }

        v59[v35] = v17;
        LODWORD(v60) = v35 + 1;
      }

      ++v9;
    }

    while (v9 < *(*(this + 12) + 2 * a6));
  }

  *(*(a4 + 248) + 4 * a7) = (*(*a2 + 48))(a2);
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  HuffmanEncoder<unsigned short,unsigned int>::encodeSuccessors(a5, &v63, &v47);
  HuffmanEncoder<unsigned short,unsigned int>::encodeValues(a5, &v59, &v49);
  HuffmanEncoder<unsigned short,unsigned int>::encodeValues(a5, &v61, &v45);
  v37 = 4 * ((v48 + 1) + (v50 + 1) + (v46 + 1)) + 12 < 2 * ((v64 + 1) + (v60 + 1) + (v62 + 1)) + 4 && v50 < 0x10000;
  if (v37)
  {
    *(*(a4 + 144) + 4 * (a7 >> 5)) |= 1 << a7;
    LOWORD(v65[0]) = v50;
    writeObject(a2, v65, a3);
    writeObjectArray(a2, v49, v50, a3);
    LOWORD(v65[0]) = v48;
    writeObject(a2, v65, a3);
    writeObjectArray(a2, v47, v48, a3);
  }

  else
  {
    writeObjectArray(a2, v59, v60, a3);
    writeObjectArray(a2, v63, v64, a3);
  }

  if (*(this + 6))
  {
    writeObjectArray(a2, v55, v56, a3);
  }

  else
  {
    writeObjectArray(a2, v57, v58, a3);
  }

  v65[0] = v62;
  writeObject(a2, v65, a3);
  if (v37)
  {
    v65[0] = v46;
    writeObject(a2, v65, a3);
    writeObjectArray(a2, v45, v46, a3);
  }

  else
  {
    writeObjectArray(a2, v61, v62, a3);
  }

  if (*(this + 10))
  {
    writeObjectArray(a2, v51, v52, a3);
  }

  else
  {
    writeObjectArray(a2, v53, v54, a3);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v45);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v47);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v49);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v51);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v53);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v55);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v57);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v59);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v61);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v63);
}

void sub_26278C6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a29);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v29 - 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v29 - 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v29 - 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v29 - 112);
  _Unwind_Resume(a1);
}

uint64_t QuadgramData::getQuantizedScoreForIndex(QuadgramData *this, unsigned int a2, int a3, int a4)
{
  v4 = *(*(this + 31) + 4 * a2);
  if (*this && ((*(*(this + 14) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v4 = *(*(this + 53) + 4 * v4);
    v5 = 552;
    v6 = 488;
  }

  else
  {
    v5 = 376;
    v6 = 328;
  }

  return *(*(this + v5) + (*(*(this + v6) + 4 * (v4 + a3)) + a4));
}

uint64_t QuadgramData::getBackoffWeight(QuadgramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 31) + 4 * a2);
  if (!*this || ((*(*(this + 14) + 4 * (a2 >> 5)) >> a2) & 1) == 0)
  {
    if (*(this + 1))
    {
      v5 = v3 + a3;
      v6 = *(this + 39);
      goto LABEL_7;
    }

    v8 = v3 + a3;
    v9 = *(this + 37);
LABEL_10:
    v7 = (v9 + 2 * v8);
    return *v7;
  }

  v4 = *(*(this + 53) + 4 * v3);
  if (!*(this + 1))
  {
    v8 = v4 + a3;
    v9 = *(this + 57);
    goto LABEL_10;
  }

  v5 = v4 + a3;
  v6 = *(this + 59);
LABEL_7:
  v7 = (*(this + 2) + 2 * *(v6 + v5));
  return *v7;
}

void HuffmanEncoder<unsigned short,unsigned int>::encodeValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 32;
    do
    {
      v17 = *Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::findBucket(a1 + 8, (*a2 + v6));
      if (!v17)
      {
        throwEncodeUnknownSymbol(*(*a2 + v6), v10, v11, v12, v13, v14, v15, v16);
      }

      v18 = v17[2];
      v20 = *v18;
      v19 = v18[1];
      if (v19 >= v9)
      {
        v21 = v9;
      }

      else
      {
        v21 = v18[1];
      }

      v22 = v8 << v21;
      if (v19 == v9)
      {
        v23 = *(a3 + 8);
        if (v23 == *(a3 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
          v23 = *(a3 + 8);
        }

        v8 = 0;
        *(*a3 + 4 * v23) = v22 | v20;
        ++*(a3 + 8);
        v9 = 32;
      }

      else
      {
        v24 = v19 - v9;
        if (v19 <= v9)
        {
          v8 = v22 | v20;
          v9 -= v19;
        }

        else
        {
          v25 = *(a3 + 8);
          if (v25 == *(a3 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
            v25 = *(a3 + 8);
          }

          *(*a3 + 4 * v25) = v22 | (v20 >> v24);
          ++*(a3 + 8);
          v9 = 32 - v24;
          v8 = (0xFFFFFFFF >> -v24) & v20;
        }
      }

      ++v7;
      v6 += 2;
    }

    while (v7 < *(a2 + 8));
  }

  else
  {
    v8 = 0;
    LOBYTE(v9) = 32;
  }

  v26 = *(a3 + 8);
  if (v26)
  {
    v27 = v8 == 0;
  }

  else
  {
    v27 = 0;
  }

  if (!v27)
  {
    if (v26 == *(a3 + 12))
    {
      DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
      v26 = *(a3 + 8);
    }

    *(*a3 + 4 * v26) = v8 << v9;
    ++*(a3 + 8);
  }
}

uint64_t QuadgramData::fillInFullyLoadedQuadgramData(QuadgramData *this, QuadgramData *a2)
{
  v2 = a2;
  v4 = *(this + 14);
  TrigramData::configureTrigramData(a2, 0, *(this + 6), *(this + 2), *(this + 10), *(this + 4));
  QuadgramData::preAllocateStaticQuadgramData(v2, v4, *(this + 22));
  QuadgramData::preAllocateDynamicQuadgramData(v2, *(this + 68), *(this + 88));
  v71 = 0;
  v72 = 0;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v64 = 0;
  v61 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v48 = v4;
  if (v4 >= 2)
  {
    v5 = 1;
    v49 = v2;
    do
    {
      if (v5 < *(this + 14))
      {
        v50 = *(*(this + 6) + 2 * v5);
        if (*(*(this + 6) + 2 * v5))
        {
          QuadgramData::allocQuad1(v2, v5, v50);
          v6 = 0;
          v52 = v5;
          do
          {
            v7 = (*(*(this + 8) + 4 * v5) + v6);
            v51 = *(*(this + 10) + 2 * v7);
            LODWORD(v72) = 0;
            if (v70 >= 1)
            {
              v8 = 16 * v70 - 16;
              do
              {
                DgnPrimArray<unsigned int>::~DgnPrimArray(v69 + v8);
                v8 -= 16;
              }

              while (v8 != -16);
            }

            LODWORD(v70) = 0;
            LODWORD(v68) = 0;
            LODWORD(v66) = 0;
            if (v64 >= 1)
            {
              v9 = 16 * v64 - 16;
              do
              {
                DgnPrimArray<unsigned int>::~DgnPrimArray(v63 + v9);
                v9 -= 16;
              }

              while (v9 != -16);
            }

            v53 = v6;
            LODWORD(v64) = 0;
            if (v62 >= 1)
            {
              v10 = 16 * v62 - 16;
              do
              {
                DgnPrimArray<unsigned int>::~DgnPrimArray(v61 + v10);
                v10 -= 16;
              }

              while (v10 != -16);
            }

            LODWORD(v62) = 0;
            if (*(*(this + 12) + 2 * v7))
            {
              v11 = 0;
              v12 = v7 >> 5;
              v13 = 1 << v7;
              do
              {
                v14 = *(this + 31);
                v15 = *(v14 + 4 * v7);
                v16 = *this;
                if (*this && (*(*(this + 14) + 4 * v12) & v13) != 0)
                {
                  v15 = *(*(this + 53) + 4 * v15);
                  v17 = 440;
                }

                else
                {
                  v17 = 264;
                }

                v18 = 0;
                v54 = *(*(this + v17) + 2 * (v15 + v11));
                LODWORD(v60) = 0;
                LODWORD(v58) = 0;
                LODWORD(v56) = 0;
                while (1)
                {
                  v19 = *(v14 + 4 * v7);
                  if (v16 && (*(*(this + 14) + 4 * v12) & v13) != 0)
                  {
                    v20 = *(*(this + 53) + 4 * v19);
                    v21 = 504;
                  }

                  else
                  {
                    v21 = 280;
                    v20 = v19;
                  }

                  if (v18 >= *(*(this + v21) + 2 * (v20 + v11)))
                  {
                    break;
                  }

                  Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex(this, v7, v11, v18);
                  ScoreForIndex = QuadgramData::getScoreForIndex(this, v7, v11, v18);
                  v24 = ScoreForIndex;
                  if (ScoreForIndex != 20000)
                  {
                    v25 = v60;
                    if (v60 == HIDWORD(v60))
                    {
                      DgnPrimArray<short>::reallocElts(&v59, 1, 1);
                      v25 = v60;
                    }

                    *(v59 + 2 * v25) = Quad3SuccIdForIndex;
                    LODWORD(v60) = v25 + 1;
                    if (*(this + 10))
                    {
                      QuantizedScoreForIndex = QuadgramData::getQuantizedScoreForIndex(this, v7, v11, v18);
                      v27 = v56;
                      if (v56 == HIDWORD(v56))
                      {
                        DgnPrimArray<char>::reallocElts(&v55, 1, 1);
                        v27 = v56;
                      }

                      *(v55 + v27) = QuantizedScoreForIndex;
                      v28 = v56;
                      v29 = &v56;
                    }

                    else
                    {
                      v28 = v58;
                      if (v58 == HIDWORD(v58))
                      {
                        DgnPrimArray<short>::reallocElts(&v57, 1, 1);
                        v28 = v58;
                      }

                      *(v57 + 2 * v28) = v24;
                      v29 = &v58;
                    }

                    *v29 = v28 + 1;
                  }

                  ++v18;
                  v14 = *(this + 31);
                  v16 = *this;
                }

                if (v58 | v56)
                {
                  if (*(this + 6))
                  {
                    if (v16 && (*(*(this + 14) + 4 * v12) & v13) != 0)
                    {
                      v19 = *(*(this + 53) + 4 * v19);
                      v30 = 472;
                    }

                    else
                    {
                      v30 = 312;
                    }

                    v31 = *(*(this + v30) + v19 + v11);
                    v32 = v66;
                    if (v66 == HIDWORD(v66))
                    {
                      DgnPrimArray<char>::reallocElts(&v65, 1, 1);
                      v32 = v66;
                    }

                    *(v65 + v32) = v31;
                    v33 = v66;
                    v34 = &v66;
                  }

                  else
                  {
                    BackoffWeight = QuadgramData::getBackoffWeight(this, v7, v11);
                    v33 = v68;
                    if (v68 == HIDWORD(v68))
                    {
                      DgnPrimArray<short>::reallocElts(&v67, 1, 1);
                      v33 = v68;
                    }

                    *(v67 + 2 * v33) = BackoffWeight;
                    v34 = &v68;
                  }

                  *v34 = v33 + 1;
                  v36 = v72;
                  if (v72 == HIDWORD(v72))
                  {
                    DgnPrimArray<short>::reallocElts(&v71, 1, 1);
                    v36 = v72;
                  }

                  *(v71 + 2 * v36) = v54;
                  LODWORD(v72) = v36 + 1;
                  v37 = v70;
                  if (v70 == HIDWORD(v70))
                  {
                    DgnArray<DgnPrimArray<double>>::reallocElts(&v69, 1, 1);
                    v37 = v70;
                  }

                  v38 = (v69 + 16 * v37);
                  *v38 = 0;
                  v38[1] = 0;
                  DgnPrimArray<unsigned short>::copyArraySlice(v38, &v59, 0, v60);
                  LODWORD(v70) = v70 + 1;
                  v39 = v62;
                  if (v62 == HIDWORD(v62))
                  {
                    DgnArray<DgnPrimArray<double>>::reallocElts(&v61, 1, 1);
                    v39 = v62;
                  }

                  v40 = (v61 + 16 * v39);
                  *v40 = 0;
                  v40[1] = 0;
                  DgnPrimArray<unsigned char>::copyArraySlice(v40, &v55, 0, v56);
                  LODWORD(v62) = v62 + 1;
                  v41 = v64;
                  if (v64 == HIDWORD(v64))
                  {
                    DgnArray<DgnPrimArray<double>>::reallocElts(&v63, 1, 1);
                    v41 = v64;
                  }

                  v42 = (v63 + 16 * v41);
                  *v42 = 0;
                  v42[1] = 0;
                  DgnPrimArray<unsigned short>::copyArraySlice(v42, &v57, 0, v58);
                  LODWORD(v64) = v64 + 1;
                }

                ++v11;
              }

              while (v11 < *(*(this + 12) + 2 * v7));
            }

            v2 = v49;
            v43 = *(*(v49 + 8) + 4 * v52) + v53;
            *(*(v49 + 10) + 2 * v43) = 0;
            QuadgramData::quad2SetUnallocated(v49, v43);
            *(*(v49 + 10) + 2 * v43) = v51;
            if (v72)
            {
              QuadgramData::fillQuad2BackoffWeights(v49, v7, &v71, &v67, &v65);
              v44 = *(this + 12);
              if (*(v44 + 2 * v7))
              {
                v45 = 0;
                v46 = 0;
                do
                {
                  if (*(v69 + v45 + 8))
                  {
                    QuadgramData::fillQuadgramRecord(v49, v7, v46, v69 + v45, (v63 + v45), (v61 + v45));
                    v44 = *(this + 12);
                  }

                  ++v46;
                  v45 += 16;
                }

                while (v46 < *(v44 + 2 * v7));
              }
            }

            v6 = v53 + 1;
            v5 = v52;
          }

          while (v53 + 1 != v50);
        }
      }

      ++v5;
    }

    while (v5 != v48);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v55);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v57);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v59);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v61);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v63);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v65);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v67);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v69);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v71);
}

void sub_26278D0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a22);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a24);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a28);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v28 - 136);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v28 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v28 - 104);
  _Unwind_Resume(a1);
}

unint64_t QuadgramData::fillQuad2BackoffWeights(unint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  result = QuadgramData::allocQuad2(a1, a2, *(a3 + 4));
  v11 = *(a3 + 2);
  if (*(a1 + 4))
  {
    if (v11)
    {
      v12 = 0;
      do
      {
        v13 = *(*a3 + 2 * v12);
        v14 = *(*(a1 + 248) + 4 * a2);
        if (*a1 && (*(*(a1 + 112) + 4 * (a2 >> 5)) & (1 << a2)) != 0)
        {
          LODWORD(v14) = *(*(a1 + 424) + 4 * v14);
          *(*(a1 + 440) + 2 * (v12 + v14)) = v13;
          v15 = (*a5 + v12);
          v16 = 472;
        }

        else
        {
          *(*(a1 + 264) + 2 * (v12 + v14)) = v13;
          v15 = (*a5 + v12);
          v16 = 312;
        }

        *(*(a1 + v16) + (v14 + v12++)) = *v15;
        v17 = *(a3 + 2);
      }

      while (v12 < v17);
      goto LABEL_19;
    }

LABEL_18:
    LOWORD(v17) = 0;
    goto LABEL_19;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  v18 = 0;
  v19 = *(*(a1 + 248) + 4 * a2);
  v20 = *a3;
  v21 = *a1;
  v22 = *a4;
  do
  {
    v23 = *(v20 + 2 * v18);
    if (v21 && (*(*(a1 + 112) + 4 * (a2 >> 5)) & (1 << a2)) != 0)
    {
      v24 = *(*(a1 + 424) + 4 * v19);
      *(*(a1 + 440) + 2 * (v18 + v24)) = v23;
      v25 = 456;
    }

    else
    {
      *(*(a1 + 264) + 2 * (v19 + v18)) = v23;
      v25 = 296;
      v24 = v19;
    }

    result = *(v22 + 2 * v18);
    *(*(a1 + v25) + 2 * (v24 + v18++)) = result;
  }

  while (v11 != v18);
  LOWORD(v17) = v11;
LABEL_19:
  *(*(a1 + 96) + 2 * a2) = v17;
  return result;
}

unint64_t QuadgramData::fillQuadgramRecord(unint64_t a1, unsigned int a2, int a3, uint64_t a4, void *a5, void *a6)
{
  result = QuadgramData::allocScoresForIndex(a1, a2, a3, *(a4 + 8));
  LODWORD(v13) = *(a4 + 8);
  if (*(a1 + 8))
  {
    if (v13)
    {
      v14 = 0;
      do
      {
        QuadgramData::setQuad3SuccIdForIndex(a1, a2, a3, v14, *(*a4 + 2 * v14));
        result = QuadgramData::setQuantizedScoreForIndex(a1, a2, a3, v14, *(*a6 + v14));
        ++v14;
        v13 = *(a4 + 8);
      }

      while (v14 < v13);
    }
  }

  else if (v13)
  {
    v15 = 0;
    do
    {
      QuadgramData::setQuad3SuccIdForIndex(a1, a2, a3, v15, *(*a4 + 2 * v15));
      result = QuadgramData::setScoreForIndex(a1, a2, a3, v15, *(*a5 + 2 * v15));
      ++v15;
      v13 = *(a4 + 8);
    }

    while (v15 < v13);
  }

  v16 = *(*(a1 + 248) + 4 * a2);
  if (*a1 && ((*(*(a1 + 112) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v16 = *(*(a1 + 424) + 4 * v16);
    v17 = 504;
  }

  else
  {
    v17 = 280;
  }

  *(*(a1 + v17) + 2 * (v16 + a3)) = v13;
  return result;
}

unint64_t QuadgramData::allocQuad2(unint64_t this, unsigned int a2, int a3)
{
  v5 = this;
  v6 = *(this + 272);
  *(*(this + 248) + 4 * a2) = v6;
  v7 = v6 + a3;
  v8 = *(this + 276);
  if (v7 > v8)
  {
    this = DgnPrimArray<short>::reallocElts(this + 264, v7 - v8, 1);
    v7 = *(v5 + 272) + a3;
  }

  *(v5 + 272) = v7;
  if (*(v5 + 4))
  {
    v9 = *(v5 + 320) + a3;
    v10 = *(v5 + 324);
    if (v9 > v10)
    {
      this = DgnPrimArray<char>::reallocElts(v5 + 312, v9 - v10, 1);
      v9 = *(v5 + 320) + a3;
    }

    *(v5 + 320) = v9;
  }

  else
  {
    v11 = *(v5 + 304) + a3;
    v12 = *(v5 + 308);
    if (v11 > v12)
    {
      this = DgnPrimArray<short>::reallocElts(v5 + 296, v11 - v12, 1);
      v11 = *(v5 + 304) + a3;
    }

    *(v5 + 304) = v11;
  }

  *(*(v5 + 96) + 2 * a2) = a3;
  v13 = *(v5 + 288) + a3;
  v14 = *(v5 + 292);
  if (v13 > v14)
  {
    this = DgnPrimArray<short>::reallocElts(v5 + 280, v13 - v14, 1);
    v13 = *(v5 + 288) + a3;
  }

  *(v5 + 288) = v13;
  v15 = *(v5 + 336) + a3;
  v16 = *(v5 + 340);
  if (v15 > v16)
  {
    this = DgnPrimArray<unsigned int>::reallocElts(v5 + 328, v15 - v16, 1);
    v15 = *(v5 + 336) + a3;
  }

  *(v5 + 336) = v15;
  return this;
}

unint64_t QuadgramData::allocScoresForIndex(unint64_t this, unsigned int a2, int a3, int a4)
{
  v5 = this;
  v6 = *(this + 352);
  v7 = *(*(this + 248) + 4 * a2) + a3;
  *(*(this + 328) + 4 * v7) = v6;
  v8 = v6 + a4;
  v9 = *(this + 356);
  if (v8 > v9)
  {
    this = DgnPrimArray<short>::reallocElts(this + 344, v8 - v9, 1);
    v8 = *(v5 + 352) + a4;
  }

  *(v5 + 352) = v8;
  if (*(v5 + 8))
  {
    v10 = *(v5 + 384) + a4;
    v11 = *(v5 + 388);
    if (v10 > v11)
    {
      this = DgnPrimArray<char>::reallocElts(v5 + 376, v10 - v11, 1);
      v10 = *(v5 + 384) + a4;
    }

    *(v5 + 384) = v10;
  }

  else
  {
    v12 = *(v5 + 368) + a4;
    v13 = *(v5 + 372);
    if (v12 > v13)
    {
      this = DgnPrimArray<short>::reallocElts(v5 + 360, v12 - v13, 1);
      v12 = *(v5 + 368) + a4;
    }

    *(v5 + 368) = v12;
  }

  *(*(v5 + 280) + 2 * v7) = a4;
  return this;
}

uint64_t QuadgramData::setQuad3SuccIdForIndex(uint64_t this, unsigned int a2, int a3, int a4, __int16 a5)
{
  v5 = *(*(this + 248) + 4 * a2);
  if (*this && ((*(*(this + 112) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v5 = *(*(this + 424) + 4 * v5);
    v6 = 520;
    v7 = 488;
  }

  else
  {
    v6 = 344;
    v7 = 328;
  }

  *(*(this + v6) + 2 * (*(*(this + v7) + 4 * (v5 + a3)) + a4)) = a5;
  return this;
}

uint64_t QuadgramData::setQuantizedScoreForIndex(uint64_t this, unsigned int a2, int a3, int a4, char a5)
{
  v5 = *(*(this + 248) + 4 * a2);
  if (*this && ((*(*(this + 112) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v5 = *(*(this + 424) + 4 * v5);
    v6 = 552;
    v7 = 488;
  }

  else
  {
    v6 = 376;
    v7 = 328;
  }

  *(*(this + v6) + (*(*(this + v7) + 4 * (v5 + a3)) + a4)) = a5;
  return this;
}

uint64_t QuadgramData::setScoreForIndex(uint64_t this, unsigned int a2, int a3, int a4, __int16 a5)
{
  v5 = *(*(this + 248) + 4 * a2);
  if (*this && ((*(*(this + 112) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v5 = *(*(this + 424) + 4 * v5);
    v6 = 536;
    v7 = 488;
  }

  else
  {
    v6 = 360;
    v7 = 328;
  }

  *(*(this + v6) + 2 * (*(*(this + v7) + 4 * (v5 + a3)) + a4)) = a5;
  return this;
}

unint64_t QuadgramData::allocLoaded(unint64_t result, unsigned int a2, void *a3)
{
  v5 = result;
  v6 = *(result + 248);
  v7 = *(v6 + 4 * a2);
  v8 = *(result + 416);
  *(v6 + 4 * a2) = v8;
  if (v8 == *(result + 420))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(result + 408, 1, 1);
    v8 = *(v5 + 416);
  }

  *(*(v5 + 408) + 4 * v8) = v7;
  ++*(v5 + 416);
  v9 = *(v5 + 448);
  v10 = *(v5 + 432);
  if (v10 == *(v5 + 436))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v5 + 424, 1, 1);
    v10 = *(v5 + 432);
  }

  *(*(v5 + 424) + 4 * v10) = v9;
  ++*(v5 + 432);
  v11 = *(*(v5 + 96) + 2 * a2);
  v12 = *(v5 + 496) + v11;
  v13 = *(v5 + 500);
  if (v12 > v13)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v5 + 488, v12 - v13, 1);
    v12 = *(v5 + 496) + v11;
  }

  *(v5 + 496) = v12;
  v14 = *(v5 + 448) + v11;
  v15 = *(v5 + 452);
  if (v14 > v15)
  {
    result = DgnPrimArray<short>::reallocElts(v5 + 440, v14 - v15, 1);
    v14 = *(v5 + 448) + v11;
  }

  *(v5 + 448) = v14;
  v16 = *(v5 + 512) + v11;
  v17 = *(v5 + 516);
  if (v16 > v17)
  {
    result = DgnPrimArray<short>::reallocElts(v5 + 504, v16 - v17, 1);
    v16 = *(v5 + 512) + v11;
  }

  *(v5 + 512) = v16;
  if (*(v5 + 4))
  {
    v18 = *(v5 + 480) + v11;
    v19 = *(v5 + 484);
    if (v18 > v19)
    {
      result = DgnPrimArray<char>::reallocElts(v5 + 472, v18 - v19, 1);
      v18 = *(v5 + 480) + v11;
    }

    *(v5 + 480) = v18;
    if (!v11)
    {
      goto LABEL_30;
    }

LABEL_19:
    v22 = 0;
    v23 = 2 * v11;
    do
    {
      v24 = *(v5 + 528);
      *(*(v5 + 488) + 4 * v9) = v24;
      v25 = *(*a3 + v22);
      *(*(v5 + 504) + 2 * v9) = v25;
      v26 = v24 + v25;
      v27 = *(v5 + 532);
      if (v26 > v27)
      {
        result = DgnPrimArray<short>::reallocElts(v5 + 520, v26 - v27, 1);
        v26 = *(v5 + 528) + v25;
      }

      *(v5 + 528) = v26;
      v28 = *(*a3 + v22);
      if (*(v5 + 8))
      {
        v29 = *(v5 + 560) + v28;
        v30 = *(v5 + 564);
        if (v29 > v30)
        {
          result = DgnPrimArray<char>::reallocElts(v5 + 552, v29 - v30, 1);
          v29 = *(v5 + 560) + v28;
        }

        *(v5 + 560) = v29;
      }

      else
      {
        v31 = *(v5 + 544) + v28;
        v32 = *(v5 + 548);
        if (v31 > v32)
        {
          result = DgnPrimArray<short>::reallocElts(v5 + 536, v31 - v32, 1);
          v31 = *(v5 + 544) + v28;
        }

        *(v5 + 544) = v31;
      }

      v22 += 2;
      ++v9;
    }

    while (v23 != v22);
    goto LABEL_30;
  }

  v20 = *(v5 + 464) + v11;
  v21 = *(v5 + 468);
  if (v20 > v21)
  {
    result = DgnPrimArray<short>::reallocElts(v5 + 456, v20 - v21, 1);
    v20 = *(v5 + 464) + v11;
  }

  *(v5 + 464) = v20;
  if (v11)
  {
    goto LABEL_19;
  }

LABEL_30:
  *(*(v5 + 128) + 4 * (a2 >> 5)) |= 1 << a2;
  v33 = *(v5 + 400);
  if (v33 == *(v5 + 404))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v5 + 392, 1, 1);
    v33 = *(v5 + 400);
  }

  *(*(v5 + 392) + 4 * v33) = a2;
  ++*(v5 + 400);
  return result;
}

void WordLanguageModel::WordLanguageModel(WordLanguageModel *this, int a2, const WordList *a3)
{
  LanguageModel::LanguageModel(this, a2, a3);
  *v4 = &unk_287526A40;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 120) = 0u;
  *(v4 + 208) = 0;
  *(v4 + 216) = 0;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 280) = 0u;
  *(v4 + 296) = 0u;
  *(v4 + 312) = 0u;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  BigramData::BigramData((v4 + 360));
  TrigramData::TrigramData((this + 744));
  QuadgramData::QuadgramData((this + 1232));
  *(this + 16) = 0;
  *(this + 68) = 1;
  *(this + 9) = -1;
  *(this + 80) = 0;
  *(this + 29) = -1;
  *(this + 5) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = 0;
  *(this + 100) = xmmword_26288CF70;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 60) = -1;
  *(this + 122) = 0;
  *(this + 225) = 0;
  *(this + 84) = 0;
  *(this + 92) = 0;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = 0;
  *(this + 269) = 0;
}

void sub_26278DAE4(_Unwind_Exception *a1)
{
  TrigramData::~TrigramData((v1 + 93));
  BigramData::~BigramData((v1 + 45));
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 43));
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 41));
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 39));
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 37));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v5);
  DgnIArray<Utterance *>::~DgnIArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 21));
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 19));
  DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 17));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  LanguageModel::~LanguageModel(v1);
  _Unwind_Resume(a1);
}

void WordLanguageModel::~WordLanguageModel(WordLanguageModel *this)
{
  *this = &unk_287526A40;
  DgnDelete<LanguageModel>(*(this + 29));
  *(this + 29) = 0;
  DgnDelete<DgnStream>(*(this + 28));
  *(this + 28) = 0;
  DgnDelete<RealDFile>(*(this + 5));
  *(this + 5) = 0;
  DgnDelete<RecentBuffer>(*(this + 1));
  *(this + 1) = 0;
  QuadgramData::~QuadgramData((this + 1232));
  TrigramData::~TrigramData((this + 744));
  BigramData::~BigramData((this + 360));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);

  LanguageModel::~LanguageModel(this);
}

{
  WordLanguageModel::~WordLanguageModel(this);

  JUMPOUT(0x26672B1B0);
}

void WordLanguageModel::printSize(WordLanguageModel *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3657, &v315);
  if (v316)
  {
    v16 = v315;
  }

  else
  {
    v16 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288CFB0, a3, &unk_26288CFB0, v16);
  DgnString::~DgnString(&v315);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288CFB0);
  v314 = 0;
  v315 = 0;
  v21 = (a3 + 1);
  v313 = 0;
  LanguageModel::printSize(this, 0xFFFFFFFFLL, v21, &v315, &v314, &v313);
  *a4 += v315;
  *a5 += v314;
  *a6 += v313;
  v22 = *(this + 5);
  if (v22)
  {
    v314 = 0;
    v315 = 0;
    v313 = 0;
    (*(*v22 + 16))(v22, 0xFFFFFFFFLL, (a3 + 1), &v315, &v314, &v313);
    *a4 += v315;
    *a5 += v314;
    *a6 += v313;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 4;
  }

  else
  {
    v23 = 8;
  }

  v312 = a3;
  v24 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3663, &v315);
  if (v316)
  {
    v29 = v315;
  }

  else
  {
    v29 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v26, v27, v28, v21, &unk_26288CFB0, v24, v24, v29, v23, v23, 0);
  DgnString::~DgnString(&v315);
  *a4 += v23;
  *a5 += v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 12;
  }

  else
  {
    v30 = 16;
  }

  v31 = *(this + 14);
  v32 = *(this + 15);
  if (v32 >= v31)
  {
    v33 = 0;
    if (v31 > 0)
    {
      v30 += 8 * (v31 - 1) + 8;
    }

    v34 = v30 + 8 * (v32 - v31);
  }

  else
  {
    v33 = 8 * v31;
    v34 = v30;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3665, &v315);
  if (v316)
  {
    v39 = v315;
  }

  else
  {
    v39 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v36, v37, v38, v21, &unk_26288CFB0, v24, v24, v39, v34, v30, v33);
  DgnString::~DgnString(&v315);
  *a4 += v34;
  *a5 += v30;
  *a6 += v33;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3666, &v315);
  if (v316)
  {
    v44 = v315;
  }

  else
  {
    v44 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, v21, &unk_26288CFB0, v24, v24, v44, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3668, &v315);
  if (v316)
  {
    v49 = v315;
  }

  else
  {
    v49 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, v21, &unk_26288CFB0, v24, v24, v49, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3670, &v315);
  if (v316)
  {
    v54 = v315;
  }

  else
  {
    v54 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, v21, &unk_26288CFB0, v24, v24, v54, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3671, &v315);
  if (v316)
  {
    v59 = v315;
  }

  else
  {
    v59 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, v21, &unk_26288CFB0, v24, v24, v59, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3672, &v315);
  if (v316)
  {
    v64 = v315;
  }

  else
  {
    v64 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, v21, &unk_26288CFB0, v24, v24, v64, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3674, &v315);
  if (v316)
  {
    v69 = v315;
  }

  else
  {
    v69 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, v21, &unk_26288CFB0, v24, v24, v69, 1, 1, 0);
  DgnString::~DgnString(&v315);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3676, &v315);
  if (v316)
  {
    v74 = v315;
  }

  else
  {
    v74 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v71, v72, v73, v21, &unk_26288CFB0, v24, v24, v74, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3678, &v315);
  if (v316)
  {
    v79 = v315;
  }

  else
  {
    v79 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v76, v77, v78, v21, &unk_26288CFB0, v24, v24, v79, 1, 1, 0);
  DgnString::~DgnString(&v315);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v80 = 12;
  }

  else
  {
    v80 = 16;
  }

  v81 = *(this + 32);
  v82 = *(this + 33);
  if (v82 >= v81)
  {
    v83 = 0;
    if (v81 > 0)
    {
      v80 += 4 * (v81 - 1) + 4;
    }

    v84 = v80 + 4 * (v82 - v81);
  }

  else
  {
    v83 = 4 * v81;
    v84 = v80;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3681, &v315);
  if (v316)
  {
    v89 = v315;
  }

  else
  {
    v89 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v86, v87, v88, v21, &unk_26288CFB0, v24, v24, v89, v84, v80, v83);
  DgnString::~DgnString(&v315);
  *a4 += v84;
  *a5 += v80;
  *a6 += v83;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v90 = 12;
  }

  else
  {
    v90 = 16;
  }

  v91 = *(this + 36);
  v92 = *(this + 37);
  if (v92 >= v91)
  {
    v93 = 0;
    if (v91 > 0)
    {
      v90 += 2 * (v91 - 1) + 2;
    }

    v94 = v90 + 2 * (v92 - v91);
  }

  else
  {
    v93 = 2 * v91;
    v94 = v90;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3683, &v315);
  if (v316)
  {
    v99 = v315;
  }

  else
  {
    v99 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v96, v97, v98, v21, &unk_26288CFB0, v24, v24, v99, v94, v90, v93);
  DgnString::~DgnString(&v315);
  *a4 += v94;
  *a5 += v90;
  *a6 += v93;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v100 = 12;
  }

  else
  {
    v100 = 16;
  }

  v101 = *(this + 40);
  v102 = *(this + 41);
  v103 = v102 >= v101;
  v104 = v102 - v101;
  if (v103)
  {
    if (v101 > 0)
    {
      v105 = (v101 - 1) + v100 + 1;
    }

    else
    {
      v105 = v100;
    }

    v100 = v105 + v104;
    v101 = 0;
  }

  else
  {
    v105 = v100;
  }

  v106 = v101;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3685, &v315);
  if (v316)
  {
    v111 = v315;
  }

  else
  {
    v111 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v108, v109, v110, v21, &unk_26288CFB0, v24, v24, v111, v100, v105, v106);
  DgnString::~DgnString(&v315);
  *a4 += v100;
  *a5 += v105;
  *a6 += v106;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v112 = 12;
  }

  else
  {
    v112 = 16;
  }

  v113 = *(this + 44);
  v114 = *(this + 45);
  if (v114 >= v113)
  {
    v115 = 0;
    if (v113 > 0)
    {
      v112 += 2 * (v113 - 1) + 2;
    }

    v116 = v112 + 2 * (v114 - v113);
  }

  else
  {
    v115 = 2 * v113;
    v116 = v112;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3688, &v315);
  if (v316)
  {
    v121 = v315;
  }

  else
  {
    v121 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v118, v119, v120, v21, &unk_26288CFB0, v24, v24, v121, v116, v112, v115);
  DgnString::~DgnString(&v315);
  *a4 += v116;
  *a5 += v112;
  *a6 += v115;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v122 = 4;
  }

  else
  {
    v122 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3690, &v315);
  if (v316)
  {
    v127 = v315;
  }

  else
  {
    v127 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v123, v124, v125, v126, v21, &unk_26288CFB0, v24, v24, v127, v122, v122, 0);
  DgnString::~DgnString(&v315);
  *a4 += v122;
  *a5 += v122;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v128 = 4;
  }

  else
  {
    v128 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3692, &v315);
  if (v316)
  {
    v133 = v315;
  }

  else
  {
    v133 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v129, v130, v131, v132, v21, &unk_26288CFB0, v24, v24, v133, v128, v128, 0);
  DgnString::~DgnString(&v315);
  *a4 += v128;
  *a5 += v128;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v134 = 4;
  }

  else
  {
    v134 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3694, &v315);
  if (v316)
  {
    v139 = v315;
  }

  else
  {
    v139 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v136, v137, v138, v21, &unk_26288CFB0, v24, v24, v139, v134, v134, 0);
  DgnString::~DgnString(&v315);
  *a4 += v134;
  *a5 += v134;
  v140 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v140 = 12;
  }

  v141 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v141 = 3;
  }

  v142 = *(this + 54);
  v143 = (((*(this + 55) - v142) + v142) << v141) + v140;
  v144 = (v142 << v141) + v140;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3696, &v315);
  if (v316)
  {
    v149 = v315;
  }

  else
  {
    v149 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v146, v147, v148, v21, &unk_26288CFB0, v24, v24, v149, v143, v144, 0);
  DgnString::~DgnString(&v315);
  *a4 += v143;
  *a5 += v144;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3700, &v315);
  if (v316)
  {
    v154 = v315;
  }

  else
  {
    v154 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v150, v151, v152, v153, v21, &unk_26288CFB0, v24, v24, v154, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  v155 = *(this + 28);
  if (v155)
  {
    v314 = 0;
    v315 = 0;
    v313 = 0;
    (*(*v155 + 16))(v155, 0xFFFFFFFFLL, v21, &v315, &v314, &v313);
    *a4 += v315;
    *a5 += v314;
    *a6 += v313;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v156 = 4;
  }

  else
  {
    v156 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3704, &v315);
  if (v316)
  {
    v161 = v315;
  }

  else
  {
    v161 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v157, v158, v159, v160, v21, &unk_26288CFB0, v24, v24, v161, v156, v156, 0);
  DgnString::~DgnString(&v315);
  *a4 += v156;
  *a5 += v156;
  v162 = *(this + 29);
  if (v162)
  {
    v314 = 0;
    v315 = 0;
    v313 = 0;
    (*(*v162 + 16))(v162, 0xFFFFFFFFLL, v21, &v315, &v314, &v313);
    *a4 += v315;
    *a5 += v314;
    *a6 += v313;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v163 = 4;
  }

  else
  {
    v163 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3706, &v315);
  if (v316)
  {
    v168 = v315;
  }

  else
  {
    v168 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v164, v165, v166, v167, v21, &unk_26288CFB0, v24, v24, v168, v163, v163, 0);
  DgnString::~DgnString(&v315);
  *a4 += v163;
  *a5 += v163;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3708, &v315);
  if (v316)
  {
    v173 = v315;
  }

  else
  {
    v173 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v169, v170, v171, v172, v21, &unk_26288CFB0, v24, v24, v173, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3710, &v315);
  if (v316)
  {
    v178 = v315;
  }

  else
  {
    v178 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v174, v175, v176, v177, v21, &unk_26288CFB0, v24, v24, v178, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3712, &v315);
  if (v316)
  {
    v183 = v315;
  }

  else
  {
    v183 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v179, v180, v181, v182, v21, &unk_26288CFB0, v24, v24, v183, 1, 1, 0);
  DgnString::~DgnString(&v315);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3714, &v315);
  if (v316)
  {
    v188 = v315;
  }

  else
  {
    v188 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v184, v185, v186, v187, v21, &unk_26288CFB0, v24, v24, v188, 1, 1, 0);
  DgnString::~DgnString(&v315);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3717, &v315);
  if (v316)
  {
    v193 = v315;
  }

  else
  {
    v193 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v189, v190, v191, v192, v21, &unk_26288CFB0, v24, v24, v193, 8, 8, 0);
  DgnString::~DgnString(&v315);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3719, &v315);
  if (v316)
  {
    v198 = v315;
  }

  else
  {
    v198 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v194, v195, v196, v197, v21, &unk_26288CFB0, v24, v24, v198, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3721, &v315);
  if (v316)
  {
    v203 = v315;
  }

  else
  {
    v203 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v199, v200, v201, v202, v21, &unk_26288CFB0, v24, v24, v203, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3722, &v315);
  if (v316)
  {
    v208 = v315;
  }

  else
  {
    v208 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v204, v205, v206, v207, v21, &unk_26288CFB0, v24, v24, v208, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3723, &v315);
  if (v316)
  {
    v213 = v315;
  }

  else
  {
    v213 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v209, v210, v211, v212, v21, &unk_26288CFB0, v24, v24, v213, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3725, &v315);
  if (v316)
  {
    v218 = v315;
  }

  else
  {
    v218 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v214, v215, v216, v217, v21, &unk_26288CFB0, v24, v24, v218, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3727, &v315);
  if (v316)
  {
    v223 = v315;
  }

  else
  {
    v223 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v219, v220, v221, v222, v21, &unk_26288CFB0, v24, v24, v223, 1, 1, 0);
  DgnString::~DgnString(&v315);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v224 = 12;
  }

  else
  {
    v224 = 16;
  }

  v225 = *(this + 72);
  v226 = *(this + 73);
  if (v226 >= v225)
  {
    v227 = 0;
    if (v225 > 0)
    {
      v224 += 4 * (v225 - 1) + 4;
    }

    v228 = v224 + 4 * (v226 - v225);
  }

  else
  {
    v227 = 4 * v225;
    v228 = v224;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3729, &v315);
  if (v316)
  {
    v233 = v315;
  }

  else
  {
    v233 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v229, v230, v231, v232, v21, &unk_26288CFB0, v24, v24, v233, v228, v224, v227);
  DgnString::~DgnString(&v315);
  *a4 += v228;
  *a5 += v224;
  *a6 += v227;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v234 = 12;
  }

  else
  {
    v234 = 16;
  }

  v235 = *(this + 76);
  v236 = *(this + 77);
  if (v236 >= v235)
  {
    v237 = 0;
    if (v235 > 0)
    {
      v234 += 2 * (v235 - 1) + 2;
    }

    v238 = v234 + 2 * (v236 - v235);
  }

  else
  {
    v237 = 2 * v235;
    v238 = v234;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3731, &v315);
  if (v316)
  {
    v243 = v315;
  }

  else
  {
    v243 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v239, v240, v241, v242, v21, &unk_26288CFB0, v24, v24, v243, v238, v234, v237);
  DgnString::~DgnString(&v315);
  *a4 += v238;
  *a5 += v234;
  *a6 += v237;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v244 = 12;
  }

  else
  {
    v244 = 16;
  }

  v245 = *(this + 80);
  v246 = *(this + 81);
  v103 = v246 >= v245;
  v247 = v246 - v245;
  if (v103)
  {
    if (v245 > 0)
    {
      v248 = (v245 - 1) + v244 + 1;
    }

    else
    {
      v248 = v244;
    }

    v244 = v248 + v247;
    v245 = 0;
  }

  else
  {
    v248 = v244;
  }

  v249 = v245;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3733, &v315);
  if (v316)
  {
    v254 = v315;
  }

  else
  {
    v254 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v250, v251, v252, v253, v21, &unk_26288CFB0, v24, v24, v254, v244, v248, v249);
  DgnString::~DgnString(&v315);
  *a4 += v244;
  *a5 += v248;
  *a6 += v249;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v255 = 12;
  }

  else
  {
    v255 = 16;
  }

  v256 = *(this + 84);
  v257 = *(this + 85);
  if (v257 >= v256)
  {
    v258 = 0;
    if (v256 > 0)
    {
      v255 += 2 * (v256 - 1) + 2;
    }

    v259 = v255 + 2 * (v257 - v256);
  }

  else
  {
    v258 = 2 * v256;
    v259 = v255;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3735, &v315);
  if (v316)
  {
    v264 = v315;
  }

  else
  {
    v264 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v260, v261, v262, v263, v21, &unk_26288CFB0, v24, v24, v264, v259, v255, v258);
  DgnString::~DgnString(&v315);
  *a4 += v259;
  *a5 += v255;
  *a6 += v258;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v265 = 12;
  }

  else
  {
    v265 = 16;
  }

  v266 = *(this + 88);
  v267 = *(this + 89);
  if (v267 >= v266)
  {
    v268 = 0;
    if (v266 > 0)
    {
      v265 += 2 * (v266 - 1) + 2;
    }

    v269 = v265 + 2 * (v267 - v266);
  }

  else
  {
    v268 = 2 * v266;
    v269 = v265;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3737, &v315);
  if (v316)
  {
    v274 = v315;
  }

  else
  {
    v274 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v270, v271, v272, v273, v21, &unk_26288CFB0, v24, v24, v274, v269, v265, v268);
  DgnString::~DgnString(&v315);
  *a4 += v269;
  *a5 += v265;
  *a6 += v268;
  v314 = 0;
  v315 = 0;
  v313 = 0;
  BigramData::printSize((this + 360), 0xFFFFFFFFLL, v21, &v315, &v314, &v313);
  *a4 += v315;
  *a5 += v314;
  *a6 += v313;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3741, &v315);
  if (v316)
  {
    v279 = v315;
  }

  else
  {
    v279 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v275, v276, v277, v278, v21, &unk_26288CFB0, v24, v24, v279, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3743, &v315);
  if (v316)
  {
    v284 = v315;
  }

  else
  {
    v284 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v280, v281, v282, v283, v21, &unk_26288CFB0, v24, v24, v284, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  v314 = 0;
  v315 = 0;
  v313 = 0;
  TrigramData::printSize((this + 744), 0xFFFFFFFFLL, v21, &v315, &v314, &v313);
  *a4 += v315;
  *a5 += v314;
  *a6 += v313;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3748, &v315);
  if (v316)
  {
    v289 = v315;
  }

  else
  {
    v289 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v285, v286, v287, v288, v21, &unk_26288CFB0, v24, v24, v289, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3750, &v315);
  if (v316)
  {
    v294 = v315;
  }

  else
  {
    v294 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v290, v291, v292, v293, v21, &unk_26288CFB0, v24, v24, v294, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  v314 = 0;
  v315 = 0;
  v313 = 0;
  QuadgramData::printSize((this + 1232), 0xFFFFFFFFLL, v21, &v315, &v314, &v313);
  *a4 += v315;
  *a5 += v314;
  *a6 += v313;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v295 = 4;
  }

  else
  {
    v295 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3756, &v315);
  if (v316)
  {
    v300 = v315;
  }

  else
  {
    v300 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v296, v297, v298, v299, v21, &unk_26288CFB0, v24, v24, v300, v295, v295, 0);
  DgnString::~DgnString(&v315);
  *a4 += v295;
  *a5 += v295;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3760, &v315);
  if (v316)
  {
    v305 = v315;
  }

  else
  {
    v305 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v301, v302, v303, v304, v21, &unk_26288CFB0, v24, v24, v305, 4, 4, 0);
  DgnString::~DgnString(&v315);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3761, &v315);
  if (v316)
  {
    v310 = v315;
  }

  else
  {
    v310 = &unk_26288CFB0;
  }

  v311 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v306, v307, v308, v309, v312, &unk_26288CFB0, (35 - v312), (35 - v312), v310, *a4, *a5, *a6);
  DgnString::~DgnString(&v315);
}

void sub_26278F5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void WordLanguageModel::initializeScoreToProb(WordLanguageModel *this, double a2, double a3)
{
  v3 = (20 * *(this + 8)) | 1;
  if (v3 != *(this + 14))
  {
    v5 = *(this + 15);
    if (v5 <= 20 * *(this + 8))
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 48, v3 - v5, 0);
    }

    v6 = 0;
    *(this + 14) = v3;
    do
    {
      LODWORD(a3) = *(this + 8);
      *(*(this + 6) + 8 * v6) = DgnExp(-v6 / *&a3);
      ++v6;
    }

    while (v6 < *(this + 14));
  }
}

unint64_t WordLanguageModel::maybeAddAlienWordLmId(unint64_t this, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(this + 72) == -1)
  {
    v14 = this;
    v15 = *(this + 104);
    if (v15 >= 0xFFFFF1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3792, "lm/wordlm", 2, "%u", a9, a10, *(this + 104));
      v15 = *(v14 + 104);
    }

    WordLanguageModel::allocLmId(v14, v15);
    this = WordLanguageModel::computeAlienScore(v14, a4, a2, a3);
    *(*(v14 + 168) + 2 * v15) = this;
    if (*(v14 + 64) >= 2u)
    {
      if (*(v14 + 336))
      {
        this = WordLanguageModel::computeAlienScore(v14, a5, a2, a3);
        *(*(v14 + 328) + 2 * v15) = this;
      }

      *(*(v14 + 344) + 2 * v15) = 0;
    }

    *(v14 + 72) = v15;
  }

  return this;
}

unint64_t WordLanguageModel::allocLmId(unint64_t this, unsigned int a2)
{
  v3 = this;
  if (*(this + 104) < a2 + 1)
  {
    *(this + 104) = a2 + 1;
  }

  for (i = *(this + 176); i <= a2; *(v3 + 176) = i)
  {
    if (i == *(v3 + 180))
    {
      this = DgnPrimArray<short>::reallocElts(v3 + 168, 1, 1);
      i = *(v3 + 176);
    }

    *(*(v3 + 168) + 2 * i++) = 20000;
  }

  if (*(v3 + 64) >= 2u)
  {
    v5 = *(v3 + 336);
    if (v5 - 1 < a2)
    {
      do
      {
        if (v5 == *(v3 + 340))
        {
          this = DgnPrimArray<short>::reallocElts(v3 + 328, 1, 1);
          v5 = *(v3 + 336);
        }

        *(*(v3 + 328) + 2 * v5++) = 20000;
        *(v3 + 336) = v5;
      }

      while (v5 <= a2);
    }

    for (j = *(v3 + 352); j <= a2; *(v3 + 352) = j)
    {
      if (j == *(v3 + 356))
      {
        this = DgnPrimArray<short>::reallocElts(v3 + 344, 1, 1);
        j = *(v3 + 352);
      }

      *(*(v3 + 344) + 2 * j++) = 20000;
    }

    if (*(v3 + 560) > a2)
    {

      return BigramData::bi1SetEmpty(v3 + 360, a2);
    }
  }

  return this;
}

uint64_t WordLanguageModel::computeAlienScore(WordLanguageModel *this, uint64_t a2, double a3, double a4)
{
  v5 = a2;
  if (a3 == -1.0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2 * a3;
  }

  v7 = DgnExp(-20.0) * v5;
  if (v6 >= v7)
  {
    v7 = v6;
    if (v6 > v5)
    {
      v7 = v5;
    }
  }

  v8 = DgnLog(v7 / v5);
  LODWORD(v9) = *(this + 8);
  return (0.5 - v8 * v9);
}

void WordLanguageModel::loadLM(WordLanguageModel *this, DFile *a2, DFile *a3, DFileChecksums *a4, DgnSharedMemStream *a5, unsigned int a6, BOOL a7, int a8, unsigned int a9, unsigned int a10, __int16 a11, BOOL *a12, BOOL *a13, double *a14)
{
  v63 = -1.0;
  v64[0] = -1.0;
  if (DFile::subFileExists(a2, 0x73u))
  {
    WordLanguageModel::loadWns(this, a2, v64, &v63);
    if (a14)
    {
      *a14 = v63;
    }
  }

  v20 = DFile::subFileExists(a2, 0x74u);
  v21 = DFile::subFileExists(a2, 0x6Fu);
  v24 = v21;
  if (v20)
  {
    if ((v21 & 1) != 0 || DFile::subFileExists(a2, 0x70u))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3858, "lm/wordlm", 16, "%s", v22, v23, &unk_26288CFB0);
    }

    if ((a6 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3860, "lm/wordlm", 53, "%s", v22, v23, &errStr_lm_wordlm_E_CANT_LOAD_TEXT_LANGUAGE_MODEL);
    }

    WordLanguageModel::loadText(this, a2, a8, a9, a10, v64[0], v63);
  }

  else
  {
    v34 = DFile::subFileExists(a2, 0x70u);
    if (v24)
    {
      if (v34)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3871, "lm/wordlm", 17, "%s", v35, v36, &errStr_lm_wordlm_E_WNB_WITH_OTHER_LM_FILE);
      }

      if (a6)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3873, "lm/wordlm", 52, "%s", v35, v36, &errStr_lm_wordlm_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
      }

      v37 = this;
      if (!a5)
      {
        WordLanguageModel::loadBinary(this, a2, a4, a8, a9, a10);
        goto LABEL_27;
      }

      v38 = a5;
      v39 = a2;
      v40 = a4;
      v41 = 111;
    }

    else
    {
      if (!v34)
      {
        errThrowInternal(v34, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3910, "lm/wordlm", 48, "%s", v35, v36, &errStr_lm_wordlm_E_NO_LM_FILE);
        goto LABEL_27;
      }

      if (a6)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3890, "lm/wordlm", 52, "%s", v35, v36, &errStr_lm_wordlm_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
      }

      if (!a5)
      {
        WordLanguageModel::loadDynamic(this, a2, a3, a4, a11, HIBYTE(a11), a12, a13, a8, a9, a10);
        goto LABEL_27;
      }

      v37 = this;
      v38 = a5;
      v39 = a2;
      v40 = a4;
      v41 = 112;
    }

    WordLanguageModel::loadBinaryShared(v37, v38, v39, v40, v41, 1);
  }

LABEL_27:
  if (*(this + 16) >= 2u && *(this + 244) == 1)
  {
    v62 = 1;
    DFile::pushCurrentSubDirComponent(a2, &v62, v26, v27, v28, v29, v30, v31);
    if (a3)
    {
      v62 = 1;
      DFile::pushCurrentSubDirComponent(a3, &v62, v42, v43, v44, v45, v46, v47);
    }

    *(this + 29) = LanguageModel::CreateAndLoadLanguageModel(a2, a3, a4, a5, *(this + 24), a6, 0, 1u, *(this + 8), v56, *(this + 2), a8, a9, a10, a11, a12, a13, 0);
    DFile::popCurrentSubDirComponent(a2);
    if (a3)
    {
      DFile::popCurrentSubDirComponent(a3);
    }
  }

  v48 = *(this + 26);
  if (v48 >= 0xFFFF)
  {
    v48 = 0xFFFF;
  }

  *(this + 27) = v48;
  if (a6)
  {
    WordLanguageModel::checkWordListLMAgreement(this, v25, v26, v27, v28, v29, v30, v31);
  }

  WordLanguageModel::initializeScoreToProb(this, v32, v33);
  v51 = *(this + 28);
  if (v51 != -1)
  {
    v52 = *(*(this + 21) + 2 * v51);
    if (v52 != 20000 && *(this + 14) <= v52)
    {
      v57 = *(*(this + 21) + 2 * v51);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3968, "lm/wordlm", 59, "%.500s %u %u", v49, v50, "unigram");
    }
  }

  v53 = *(this + 29);
  if (v53 != -1 && *(this + 14) <= *(*(this + 21) + 2 * v53))
  {
    v58 = *(*(this + 21) + 2 * v53);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3975, "lm/wordlm", 67, "%.500s %u %u", v49, v50, "unigram");
  }

  v54 = *(this + 28);
  if (v54 != -1 && *(this + 84) && *(this + 14) <= *(*(this + 41) + 2 * v54))
  {
    v59 = *(*(this + 41) + 2 * v54);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3983, "lm/wordlm", 59, "%.500s %u %u", v49, v50, "unigram backoff");
  }

  v55 = *(this + 29);
  if (v55 != -1 && *(this + 84) && *(this + 14) <= *(*(this + 41) + 2 * v55))
  {
    v60 = *(*(this + 41) + 2 * v55);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 3991, "lm/wordlm", 67, "%.500s %u %u", v49, v50, "unigram backoff");
  }
}

void WordLanguageModel::loadWns(WordLanguageModel *this, DFile *a2, double *a3, double *a4)
{
  DgnTextFileParser::DgnTextFileParser(v67);
  DgnTextFileParser::openDgnTextFileParser(v67, a2, 0x73u, 1);
  DgnTextFileParser::verifyMatchingFileType(v67, "WordNGramSpec");
  v66[0] = 0;
  v66[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v67, sWNS_Versions, v66, v8, v9, v10, v11, v12);
  DgnTextFileParser::verifyFileVersionInRange(v67, v66, v13, v14, v15, v16, v17, v18);
  v65 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v67, "Depth", &v65, 1, 1u, 4u);
  *(this + 16) = v65;
  FileVersion = DgnTextFile::getFileVersion(v67);
  v20 = FileVersion;
  v21 = HIDWORD(FileVersion);
  if (FileVersion == 19)
  {
    if (v21 != 12)
    {
      goto LABEL_12;
    }
  }

  else if (FileVersion != 24 || (HIDWORD(FileVersion) - 13) > 1)
  {
    goto LABEL_12;
  }

  DgnTextFile::getHeaderFieldReal(v67, "AlienWordProbability", a3, 1, -1.0, 1.0);
  if (*a3 != -1.0 && *a3 < 0.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4843, "lm/wordlm", 4, "%.500s", v22, v23, "AlienWordProbability");
  }

  DgnTextFile::getHeaderFieldReal(v67, "AlienWordMinimumCount", a4, 1, -1.0, 1.0);
  if (*a4 != -1.0 && *a4 < 0.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4849, "lm/wordlm", 4, "%.500s", v24, v25, "AlienWordMinimumCount");
  }

LABEL_12:
  v63[0] = 0;
  DgnTextFile::getHeaderFieldInteger(v67, "AlienWordLmId", v63, 1, -1, 16777200);
  v28 = v63[0];
  if (!v63[0])
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4857, "lm/wordlm", 4, "%.500s", v26, v27, "AlienWordLmId");
    v28 = v63[0];
  }

  *(this + 18) = v28;
  if (v20 == 19)
  {
    if (v21 != 12)
    {
      goto LABEL_27;
    }

LABEL_19:
    v29 = *a3 != -1.0;
    if (*a4 != -1.0)
    {
      ++v29;
    }

    if (v28 == -1)
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 + 1;
    }

    if (v30 != 1)
    {
      if (v30)
      {
        v31 = &errStr_lm_wordlm_E_WNS_NEW_WORD_BEHAVIOR_SPECIFIED_TWICE;
        v32 = 13;
        v33 = 4878;
      }

      else
      {
        v31 = &errStr_lm_wordlm_E_WNS_NEW_WORD_BEHAVIOR_NOT_SPECIFIED;
        v32 = 12;
        v33 = 4876;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", v33, "lm/wordlm", v32, "%s", v26, v27, v31);
    }

    goto LABEL_31;
  }

  if (v20 == 24 && (v21 - 13) <= 1)
  {
    goto LABEL_19;
  }

LABEL_27:
  if (v28 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4883, "lm/wordlm", 97, "%s", v26, v27, &errStr_lm_wordlm_E_WNS_ALIEN_WORD_LMID_NOT_SPECIFIED);
  }

LABEL_31:
  DgnTextFile::getHeaderFieldBool(v67, "AllowNewWordCloning", this + 80, 1);
  v64 = 0;
  DgnTextFile::getHeaderFieldInteger(v67, "IgnoreInContextLmId", &v64, 1, -1, 16777200);
  v41 = v64;
  if (!v64)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4893, "lm/wordlm", 4, "%.500s", v39, v40, "IgnoreInContextLmId");
    v41 = v64;
  }

  *(this + 25) = v41;
  if (*(this + 16) >= 2u)
  {
    DgnTextFile::getHeaderFieldInteger(v67, "UnknownContextLmId", &v64, 1, -1, 16777200);
    v44 = v64;
    if (!v64)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4907, "lm/wordlm", 4, "%.500s", v42, v43, "UnknownContextLmId");
      v44 = v64;
    }

    if (v44 != -1 && *(this + 18) == -1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4915, "lm/wordlm", 14, "%s", v42, v43, &errStr_lm_wordlm_E_UNKNOWNCONTEXTLMID_WITHOUT_ALIENWORDLMID);
      v44 = v64;
    }

    *(this + 60) = v44;
    if (v20 == 19 && v21 == 12)
    {
      v45 = -1;
    }

    else
    {
      v64 = 0;
      DgnTextFile::getHeaderFieldInteger(v67, "AlienWordContextLmId", &v64, 1, -1, 16777200);
      v45 = v64;
      if (!v64)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4932, "lm/wordlm", 4, "%.500s", v46, v47, "AlienWordContextLmId");
        v45 = v64;
      }
    }

    *(this + 19) = v45;
    DgnString::DgnString(v63);
    v62 = 0;
    HeaderField = DgnTextFile::getHeaderField(v67, "BackoffSubDirectory", v63, 0);
    HeaderFieldUnsigned = DgnTextFile::getHeaderFieldUnsigned(v67, "BackoffAfterDepth", &v62, 0, 2u, 2u);
    if (HeaderField != HeaderFieldUnsigned)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4950, "lm/wordlm", 3, "%s", v49, v50, &errStr_lm_wordlm_E_WNS_ONLY_ONE_BACKOFF_FIELD);
    }

    if ((HeaderField & HeaderFieldUnsigned) == 1)
    {
      v61 = 1;
      if (!SubDirExtension::isString(&v61, v63))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4956, "lm/wordlm", 4, "%.500s", v52, v53, "BackoffSubDirectory");
      }

      v54 = 1;
      if (*(this + 16) <= 1u)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4957, "lm/wordlm", 1, "%s", v52, v53, &errStr_lm_wordlm_E_BAD_UPPER_LM);
      }
    }

    else
    {
      v54 = 0;
    }

    *(this + 244) = v54;
    DgnTextFile::getHeaderFieldBool(v67, "HasStaticComponentOnDisk", this + 245, 1);
    DgnTextFile::getHeaderFieldBool(v67, "LoadNgrams", this + 68, 1);
    if (v20 == 19)
    {
      if (v21 != 12)
      {
LABEL_61:
        DgnString::~DgnString(v63);
        goto LABEL_62;
      }
    }

    else if (v20 != 24 || v21 != 13)
    {
      goto LABEL_61;
    }

    DgnTextFile::getHeaderFieldInteger(v67, "BuildMaximumBigramCountToDiscount", this + 21, 1, -1, 0x7FFFFFFF);
    DgnTextFile::getHeaderFieldInteger(v67, "BuildMaximumNumBigramRecords", this + 22, 1, -1, 0x7FFFFFFF);
    DgnString::~DgnString(v63);
    if (*(this + 16) > 2u)
    {
      if (v20 != 19)
      {
        if (v21 != 13)
        {
          goto LABEL_62;
        }

LABEL_64:
        DgnTextFile::getHeaderFieldInteger(v67, "BuildMaximumTrigramCountToDiscount", this + 23, 1, -1, 0x7FFFFFFF);
        DgnTextFile::getHeaderFieldInteger(v67, "BuildMaximumNumTrigramRecords", this + 24, 1, -1, 0x7FFFFFFF);
        goto LABEL_62;
      }

      if (v21 == 12)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_62:
  DgnTextFileParser::verifyNoUnknownHeaderFields(v67, v34, v35, v36, v37, v38, v39, v40);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v67, 0, v55, v56, v57, v58, v59, v60);
  DgnTextFileParser::verifyNoBodyLines(v67);
  DgnIArray<Utterance *>::~DgnIArray(v66);
  DgnTextFileParser::~DgnTextFileParser(v67);
}

void sub_262790690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnTextFileParser::~DgnTextFileParser(va2);
  _Unwind_Resume(a1);
}

void WordLanguageModel::loadText(WordLanguageModel *this, DFile *a2, int a3, unsigned int a4, unsigned int a5, double a6, double a7)
{
  DgnTextFileParser::DgnTextFileParser(v1084);
  DgnTextFileParser::openDgnTextFileParser(v1084, a2, 0x74u, 1);
  DgnTextFileParser::verifyMatchingFileType(v1084, "WordNGramText");
  v1083[1] = 0;
  v1083[0] = 0;
  DgnTextFile::legalDgnTextFileVersions(v1084, sWNT_Versions, v1083, v11, v12, v13, v14, v15);
  DgnTextFileParser::verifyFileVersionInRange(v1084, v1083, v16, v17, v18, v19, v20, v21);
  FileVersion = DgnTextFile::getFileVersion(v1084);
  LODWORD(v1079) = 0;
  DgnTextFile::getHeaderFieldUnsigned(v1084, "Depth", &v1079, 1, *(this + 16), *(this + 16));
  LODWORD(v1079) = 0;
  DgnTextFile::getHeaderFieldUnsigned(v1084, "LMScale", &v1079, 1, *(this + 8), *(this + 8));
  WordLanguageModel::initializeScoreToProb(this, v23, v24);
  DgnTextFile::getHeaderFieldUnsigned(v1084, "NumLmIds", this + 26, 1, 2u, 0xFFFFF0u);
  WordLanguageModel::allocLmId(this, *(this + 26) - 1);
  v25 = HIDWORD(FileVersion);
  if (FileVersion == 19)
  {
    if (v25 != 5)
    {
      goto LABEL_7;
    }

LABEL_6:
    LODWORD(v1079) = 0;
    DgnTextFile::getHeaderFieldUnsigned(v1084, "NumPermanentLmIds", &v1079, 1, 1u, *(this + 26));
    goto LABEL_7;
  }

  if (FileVersion == 24 && (HIDWORD(FileVersion) & 0xFFFFFFFE) == 6)
  {
    goto LABEL_6;
  }

LABEL_7:
  LODWORD(v1079) = 0;
  DgnTextFile::getHeaderFieldInteger(v1084, "BegLmId", &v1079, 1, -1, *(this + 26) - 1);
  *(this + 28) = LODWORD(v1079);
  LODWORD(v1079) = 0;
  DgnTextFile::getHeaderFieldInteger(v1084, "EndLmId", &v1079, 1, -1, *(this + 26) - 1);
  *(this + 29) = LODWORD(v1079);
  v1082 = 0;
  v1018 = HIDWORD(FileVersion);
  if (FileVersion == 19)
  {
    if (v25 == 5)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (FileVersion == 24)
  {
    if ((HIDWORD(FileVersion) & 0xFFFFFFFE) == 6)
    {
LABEL_9:
      DgnTextFile::getHeaderFieldUnsigned64(v1084, "UnigramTotalCount", &v1082, 1, 1uLL, 0xFFFFFFFFuLL);
      v1081 = 0;
      if (*(this + 16) > 1u)
      {
        if (FileVersion == 19)
        {
          if (v1018 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_18;
      }

      goto LABEL_31;
    }

LABEL_15:
    v1081 = 0;
    if (*(this + 16) <= 1u)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  v1081 = 0;
  if (*(this + 16) > 1u)
  {
LABEL_18:
    if (FileVersion == 24 && (HIDWORD(FileVersion) & 0xFFFFFFFE) == 6)
    {
LABEL_20:
      DgnTextFile::getHeaderFieldUnsigned64(v1084, "UnigramBackoffTotalCount", &v1081, 1, 1uLL, 0xFFFFFFFFuLL);
    }

LABEL_21:
    DgnTextFile::getHeaderFieldUnsigned(v1084, "ContextSkipDistance", this + 68, 1, 0, 1u);
    if (*(this + 16) >= 3u && *(this + 68))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5545, "lm/wordlm", 32, "%d %d", v33, v34, *(this + 16));
    }

    if (FileVersion == 19)
    {
      if (v1018 != 5)
      {
        goto LABEL_30;
      }
    }

    else if (FileVersion != 24 || (HIDWORD(FileVersion) & 0xFFFFFFFE) != 6)
    {
      goto LABEL_30;
    }

    v1079 = 0.0;
    DgnTextFile::getHeaderFieldReal(v1084, "BigramAbsoluteDiscount", &v1079, 1, 0.0, 1.0);
LABEL_30:
    DgnTextFile::getHeaderFieldBool(v1084, "HasWordIdToContextLmId", this + 276, 1);
  }

LABEL_31:
  DgnTextFileParser::verifyNoUnknownHeaderFields(v1084, v26, v27, v28, v29, v30, v31, v32);
  v1079 = 0.0;
  v1080 = 0;
  DgnTextFile::getLineFieldNames(v1084, &v1079);
  v1078[0] = 0;
  v1078[1] = 0;
  DgnTextFile::getLineFieldFormats(v1084, v1078);
  v1013 = FileVersion;
  if (!v1080)
  {
    v1025 = -1;
    v1026 = -1;
    v1021 = -1;
    v1022 = -1;
    v1019 = -1;
    goto LABEL_91;
  }

  v37 = 0;
  v38 = 0;
  v1022 = -1;
  v1023 = -1;
  v1025 = -1;
  v1026 = -1;
  v1021 = -1;
  v1019 = -1;
  do
  {
    v39 = (*&v1079 + v37);
    v40 = *(*&v1079 + v37 + 8);
    if (v40)
    {
      v41 = *v39;
      if (!strcmp(*v39, "TableName"))
      {
        if (*(v1078[0] + 4 * v38))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5580, "lm/wordlm", 39, "%.500s %.500s", v35, v36, v41);
        }

        v1023 = v38;
        goto LABEL_77;
      }
    }

    else
    {
      v41 = &unk_26288CFB0;
    }

    if (!strcmp(v41, "Index1"))
    {
      if (*(v1078[0] + 4 * v38) != 3)
      {
        if (v40)
        {
          v44 = *v39;
        }

        else
        {
          v44 = &unk_26288CFB0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5588, "lm/wordlm", 39, "%.500s %.500s", v35, v36, v44);
      }

      v1025 = v38;
    }

    else
    {
      v42 = *(this + 16);
      if (v42 >= 2)
      {
        if (v40)
        {
          v43 = *v39;
        }

        else
        {
          v43 = &unk_26288CFB0;
        }

        if (!strcmp(v43, "Index2"))
        {
          if (*(v1078[0] + 4 * v38) != 3)
          {
            if (v40)
            {
              v46 = *v39;
            }

            else
            {
              v46 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5596, "lm/wordlm", 39, "%.500s %.500s", v35, v36, v46);
          }

          v1026 = v38;
          goto LABEL_77;
        }

        if (v42 != 2)
        {
          if (v40)
          {
            v45 = *v39;
          }

          else
          {
            v45 = &unk_26288CFB0;
          }

          if (!strcmp(v45, "Index3"))
          {
            if (*(v1078[0] + 4 * v38) != 3)
            {
              if (v40)
              {
                v48 = *v39;
              }

              else
              {
                v48 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5604, "lm/wordlm", 39, "%.500s %.500s", v35, v36, v48);
            }

            v1021 = v38;
            goto LABEL_77;
          }

          if (v42 >= 4)
          {
            v47 = v40 ? *v39 : &unk_26288CFB0;
            if (!strcmp(v47, "Index4"))
            {
              if (*(v1078[0] + 4 * v38) != 3)
              {
                if (v40)
                {
                  v50 = *v39;
                }

                else
                {
                  v50 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5612, "lm/wordlm", 39, "%.500s %.500s", v35, v36, v50);
              }

              v1019 = v38;
              goto LABEL_77;
            }
          }
        }
      }

      if (!v40)
      {
        v49 = &unk_26288CFB0;
LABEL_76:
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5624, "lm/wordlm", 37, "%.500s %u", v35, v36, v49);
        goto LABEL_77;
      }

      v49 = *v39;
      if (strcmp(*v39, "EntryValue1"))
      {
        goto LABEL_76;
      }

      if (*(v1078[0] + 4 * v38) != 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5620, "lm/wordlm", 39, "%.500s %.500s", v35, v36, v49);
      }

      v1022 = v38;
    }

LABEL_77:
    ++v38;
    v37 += 16;
  }

  while (v38 < v1080);
  if (v1023 == -1)
  {
LABEL_91:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5626, "lm/wordlm", 38, "%.500s", v35, v36, "TableName");
    v1023 = -1;
  }

  if (v1025 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5627, "lm/wordlm", 38, "%.500s", v35, v36, "Index1");
  }

  v51 = *(this + 16);
  if (v51 >= 2 && v1026 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5629, "lm/wordlm", 38, "%.500s", v35, v36, "Index2");
    v51 = *(this + 16);
  }

  if (v51 >= 3 && v1021 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5631, "lm/wordlm", 38, "%.500s", v35, v36, "Index3");
    v51 = *(this + 16);
  }

  if (v51 >= 4 && v1019 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5633, "lm/wordlm", 38, "%.500s", v35, v36, "Index4");
  }

  if (v1022 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5634, "lm/wordlm", 38, "%.500s", v35, v36, "EntryValue1");
  }

  DgnString::DgnString(&v1076);
  v1024 = 0;
  v52 = 0;
  v1012 = 0;
  v1017 = 0;
  v1020 = 0;
  v1034 = 0;
  v1027 = 0;
  v1031 = 0;
  v1074 = 0;
  v1075 = 0;
  v1072 = 0;
  v1073 = 0;
  v1070 = 0;
  v1071 = 0;
  v1068 = 0;
  *v1069 = 0;
  v1066 = 0;
  v1067 = 0;
  v1064 = 0;
  v1065 = 0;
  v1062 = 0;
  v1063 = 0;
  v1060 = 0;
  v1061 = 0;
  v1058 = 0;
  v1059 = 0;
  v1056 = 0;
  *v1057 = 0;
  v1054 = 0;
  v1055 = 0;
  v1052 = 0;
  v1053 = 0;
  v1050 = 0;
  v1051 = 0;
  v1048 = 0;
  v1049 = 0;
  v1046 = 0;
  v1047 = 0;
  v1044 = 0;
  v1045 = 0;
  v53 = -1;
  v1038 = -1;
  v1029 = -1;
  v1039 = -1;
  v54 = 0xFFFFFFFFLL;
  v55 = 0xFFFFFFFFLL;
  v56 = -1;
  v1033 = -1;
  while (2)
  {
    Line = DgnTextFileParser::parseNextLine(v1084);
    DgnString::DgnString(&v1042);
    v1036 = v56;
    v1035 = v55;
    if (!Line)
    {
      LineFieldUnsigned = 0;
      LineFieldInteger = 0;
      goto LABEL_124;
    }

    LineFieldString = DgnTextFileParser::getLineFieldString(v1084, v1023);
    DgnString::operator=(&v1042, LineFieldString);
    LineFieldUnsigned = DgnTextFileParser::getLineFieldUnsigned(v1084, v1025, v61, v62, v63, v64, v65, v66);
    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(v1084, v1022, v67, v68, v69, v70, v71, v72);
    if (v1031)
    {
      if (v1043)
      {
        v73 = v1042;
      }

      else
      {
        v73 = &unk_26288CFB0;
      }

      if (v1077)
      {
        v74 = v1076;
      }

      else
      {
        v74 = &unk_26288CFB0;
      }

      v75 = strcmp(v73, v74) != 0;
      if (v75)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v75 = 0;
    }

    if (LineFieldUnsigned < v1034)
    {
      CurrentLine = DgnTextFile::getCurrentLine(v1084);
      if (*(CurrentLine + 8))
      {
        v79 = *CurrentLine;
      }

      else
      {
        v79 = &unk_26288CFB0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5688, "lm/wordlm", 40, "%.500s", v77, v78, v79);
    }

LABEL_123:
    if (v75)
    {
LABEL_124:
      if (v1033 != -1)
      {
        v80 = 1;
        v1032 = Line;
        goto LABEL_129;
      }

      v1032 = Line;
LABEL_133:
      v1033 = -1;
      if (v56 != -1)
      {
        v81 = 1;
        goto LABEL_140;
      }

      goto LABEL_150;
    }

    v80 = 0;
    if (LineFieldUnsigned == v1034 || (v1032 = 0, v1033 == -1))
    {
      v1032 = 0;
    }

    else
    {
LABEL_129:
      if (v1033 >= *(this + 88) || *(*(this + 43) + 2 * v1033) == 20000)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5696, "lm/wordlm", 42, "%u", v58, v59, v1033);
      }

      BigramData::fillBigramRecord((this + 360), v1033, &v1074, &v1072, &v1070);
      LODWORD(v1075) = 0;
      LODWORD(v1073) = 0;
      LODWORD(v1071) = 0;
      if (v80)
      {
        goto LABEL_133;
      }

      v1033 = -1;
    }

    if (LineFieldUnsigned == v1034 || v56 == -1)
    {
      goto LABEL_153;
    }

    v81 = 0;
LABEL_140:
    TrigramData::allocTri1((this + 744), v56, v1069[0]);
    if (*v1069)
    {
      v82 = 0;
      do
      {
        v83 = v82 + *(*(this + 101) + 4 * v1036);
        v84 = v83;
        *(*(this + 103) + 2 * v83) = 0;
        if (*(this + 187))
        {
          *(*(this + 107) + v83) = 0;
        }

        else
        {
          *(*(this + 105) + 2 * v83) = 20000;
        }

        TrigramData::tri2SetUnallocated(this + 744, v83);
        *(*(this + 103) + 2 * v84) = *(v1068 + 2 * v82);
        if (*(this + 192))
        {
          *(*(this + 107) + v84) = *(v1064 + v82);
        }

        else
        {
          *(*(this + 105) + 2 * v84) = *(v1066 + 2 * v82);
        }

        ++v82;
      }

      while (v82 < *v1069);
    }

    *v1069 = 0;
    LODWORD(v1067) = 0;
    LODWORD(v1065) = 0;
    if ((v81 & 1) == 0)
    {
      v1036 = -1;
LABEL_153:
      v85 = 1;
      if (LineFieldUnsigned != v1034)
      {
        v86 = v1039;
        if (v1039 != -1)
        {
LABEL_155:
          QuadgramData::allocQuad1((this + 1232), v86, v1057[0]);
          if (*v1057)
          {
            v87 = 0;
            v88 = 0;
            do
            {
              v89 = v88 + *(*(this + 162) + 4 * v1039);
              *(*(this + 164) + 2 * v89) = 0;
              QuadgramData::quad2SetUnallocated(this + 1232, v89);
              *(*(this + 164) + 2 * v89) = *(v1056 + 2 * v88);
              QuadgramData::fillQuad2BackoffWeights(this + 1232, v89, (v1054 + v87), (v1052 + v87), (v1050 + v87));
              v52 += *(v1054 + v87 + 8);
              ++v88;
              v87 += 16;
            }

            while (v88 < *v1057);
          }

          *v1057 = 0;
          if (v1055 >= 1)
          {
            v90 = 16 * v1055 - 16;
            do
            {
              DgnPrimArray<unsigned int>::~DgnPrimArray(v1054 + v90);
              v90 -= 16;
            }

            while (v90 != -16);
          }

          LODWORD(v1055) = 0;
          if (v1053 >= 1)
          {
            v91 = 16 * v1053 - 16;
            do
            {
              DgnPrimArray<unsigned int>::~DgnPrimArray(v1052 + v91);
              v91 -= 16;
            }

            while (v91 != -16);
          }

          LODWORD(v1053) = 0;
          if (v1051 >= 1)
          {
            v92 = 16 * v1051 - 16;
            do
            {
              DgnPrimArray<unsigned int>::~DgnPrimArray(v1050 + v92);
              v92 -= 16;
            }

            while (v92 != -16);
          }

          LODWORD(v1051) = 0;
          v1039 = -1;
        }
      }

      if (!v85 || LineFieldUnsigned != v1034)
      {
        v1028 = LineFieldUnsigned == v1034;
        goto LABEL_178;
      }

      v93 = v54;
      if (*(this + 16) >= 3u && (v1043 ? (v94 = v1042) : (v94 = &unk_26288CFB0), !strcmp(v94, "TriSc")))
      {
        v101 = 1;
        if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v95, v96, v97, v98, v99, v100) == v1020)
        {
          LineFieldUnsigned = v1034;
          v1028 = 1;
          v93 = v54;
        }

        else
        {
          v1028 = 1;
          LineFieldUnsigned = v1034;
          v93 = v54;
          if (v1035 == -1)
          {
            LineFieldUnsigned = v1034;
            v1028 = 1;
          }

          else
          {
LABEL_180:
            if (*(this + 200) > v1035 && (v102 = *(this + 99), LODWORD(v103) = *(v102 + 2 * v1035), *(v102 + 2 * v1035)) || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5774, "lm/wordlm", 47, "%u %u", v58, v59, v1035), v104 = *(this + 99), LODWORD(v103) = *(v104 + 2 * v1035), LODWORD(v93) = v54, *(v104 + 2 * v1035)))
            {
              v105 = *(*(this + 101) + 4 * v1035);
              v103 = v103;
              while (v93 != *(*(this + 103) + 2 * v105))
              {
                ++v105;
                if (!--v103)
                {
                  goto LABEL_186;
                }
              }

              TrigramData::fillTrigramRecord(this + 744, v105, &v1062, &v1060, &v1058);
            }

            else
            {
LABEL_186:
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5794, "lm/wordlm", 47, "%u %u", v58, v59, v1035);
            }

            LODWORD(v1063) = 0;
            LODWORD(v1061) = 0;
            LODWORD(v1059) = 0;
            v93 = 0xFFFFFFFFLL;
            v1035 = 0xFFFFFFFFLL;
            if (!v101)
            {
              goto LABEL_202;
            }
          }
        }
      }

      else
      {
        v1028 = 1;
        LineFieldUnsigned = v1034;
      }

      if (*(this + 16) >= 4u)
      {
        v106 = v1043 ? v1042 : &unk_26288CFB0;
        if (!strcmp(v106, "QuadSc"))
        {
          v113 = v93;
          if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v107, v108, v109, v110, v111, v112) != v1020)
          {
            goto LABEL_202;
          }

          if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v114, v115, v116, v117, v58, v59) != v1017 && v1029 != -1)
          {
LABEL_204:
            if (*(this + 322) > v1029 && (v118 = *(this + 160), v119 = *(v118 + 2 * v1029), *(v118 + 2 * v1029)) || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5815, "lm/wordlm", 54, "%u %u %u", v58, v59, v1029), v120 = *(this + 160), v119 = *(v120 + 2 * v1029), *(v120 + 2 * v1029)))
            {
              v121 = 0;
              v122 = 0;
              while (2)
              {
                v123 = *(*(this + 162) + 4 * v1029);
                while (1)
                {
                  v124 = (v123 + v122);
                  if (v1038 == *(*(this + 164) + 2 * v124))
                  {
                    if (*(*(this + 166) + 2 * v124))
                    {
                      break;
                    }
                  }

LABEL_218:
                  if (++v122 == v119)
                  {
                    if (v121)
                    {
                      goto LABEL_224;
                    }

                    goto LABEL_223;
                  }
                }

                v125 = 0;
                while (1)
                {
                  if (*(this + 308) && (*(*(this + 168) + 4 * (v124 >> 5)) & (1 << (v123 + v122))) != 0)
                  {
                    v126 = *(*(this + 207) + 4 * *(*(this + 185) + 4 * v124));
                    v127 = 440;
                  }

                  else
                  {
                    v127 = 264;
                    v126 = *(*(this + 185) + 4 * v124);
                  }

                  if (v53 == *(*(this + v127 + 1232) + 2 * (v126 + v125)))
                  {
                    break;
                  }

                  if (*(*(this + 166) + 2 * v124) == ++v125)
                  {
                    goto LABEL_218;
                  }
                }

                QuadgramData::fillQuadgramRecord(this + 1232, v124, v125, &v1048, &v1046, &v1044);
                ++v122;
                v121 = 1;
                if (v122 != v119)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
LABEL_223:
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5848, "lm/wordlm", 54, "%u %u %u", v58, v59, v1029);
            }

LABEL_224:
            ++v1024;
            LODWORD(v1049) = 0;
            LODWORD(v1047) = 0;
            LODWORD(v1045) = 0;
            v53 = -1;
            v1038 = -1;
            v1029 = -1;
          }

          v93 = v113;
        }
      }

      if (!Line)
      {
        break;
      }

      goto LABEL_227;
    }

LABEL_150:
    if (v1039 != -1)
    {
      v85 = 0;
      v1036 = -1;
      v86 = v1039;
      goto LABEL_155;
    }

    v1028 = LineFieldUnsigned == v1034;
    v1039 = -1;
    v1036 = -1;
LABEL_178:
    v93 = v54;
    if (v1035 != -1)
    {
      v101 = 0;
      goto LABEL_180;
    }

    v1035 = 0xFFFFFFFFLL;
LABEL_202:
    if (v1029 != -1)
    {
      v113 = v93;
      goto LABEL_204;
    }

    v1029 = -1;
    if (Line)
    {
LABEL_227:
      if (v1043)
      {
        v128 = v1042;
      }

      else
      {
        v128 = &unk_26288CFB0;
      }

      if (!strcmp(v128, "UniSc"))
      {
        if ((v1031 & v1032) == 1)
        {
          v275 = DgnTextFile::getCurrentLine(v1084);
          if (*(v275 + 8))
          {
            v278 = *v275;
          }

          else
          {
            v278 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5867, "lm/wordlm", 40, "%.500s", v276, v277, v278);
        }

        if (*(this + 16) >= 2u)
        {
          if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v129, v130, v131, v132, v133, v134))
          {
            v285 = DgnTextFile::getCurrentLine(v1084);
            if (*(v285 + 8))
            {
              v288 = *v285;
            }

            else
            {
              v288 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5871, "lm/wordlm", 40, "%.500s", v286, v287, v288);
          }

          if (*(this + 16) >= 3u)
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v279, v280, v281, v282, v283, v284))
            {
              v295 = DgnTextFile::getCurrentLine(v1084);
              if (*(v295 + 8))
              {
                v298 = *v295;
              }

              else
              {
                v298 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5875, "lm/wordlm", 40, "%.500s", v296, v297, v298);
            }

            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v289, v290, v291, v292, v293, v294))
            {
              v299 = DgnTextFile::getCurrentLine(v1084);
              if (*(v299 + 8))
              {
                v302 = *v299;
              }

              else
              {
                v302 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5879, "lm/wordlm", 40, "%.500s", v300, v301, v302);
            }
          }
        }

        if (((v1032 ^ 1) & v1028) == 1)
        {
          v303 = DgnTextFile::getCurrentLine(v1084);
          if (*(v303 + 8))
          {
            v306 = *v303;
          }

          else
          {
            v306 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5882, "lm/wordlm", 40, "%.500s", v304, v305, v306);
        }

        if (!LineFieldUnsigned || LineFieldUnsigned >= *(this + 26))
        {
          v307 = DgnTextFile::getCurrentLine(v1084);
          if (*(v307 + 8))
          {
            v310 = *v307;
          }

          else
          {
            v310 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5886, "lm/wordlm", 40, "%.500s", v308, v309, v310);
        }

        if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
        {
          v311 = DgnTextFile::getCurrentLine(v1084);
          if (*(v311 + 8))
          {
            v314 = *v311;
          }

          else
          {
            v314 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5893, "lm/wordlm", 40, "%.500s", v312, v313, v314);
        }

        *(*(this + 21) + 2 * LineFieldUnsigned) = LineFieldInteger;
        v1027 = LineFieldUnsigned;
        goto LABEL_814;
      }

      if (!strcmp(v128, "WordIdToLmId"))
      {
        if (v1032)
        {
          v315 = v1077 ? v1076 : &unk_26288CFB0;
          if (strcmp(v315, "UniSc"))
          {
            v316 = DgnTextFile::getCurrentLine(v1084);
            if (*(v316 + 8))
            {
              v319 = *v316;
            }

            else
            {
              v319 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5901, "lm/wordlm", 40, "%.500s", v317, v318, v319);
          }
        }

        if (*(this + 16) >= 2u)
        {
          if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v135, v136, v137, v138, v139, v140))
          {
            v326 = DgnTextFile::getCurrentLine(v1084);
            if (*(v326 + 8))
            {
              v329 = *v326;
            }

            else
            {
              v329 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5905, "lm/wordlm", 40, "%.500s", v327, v328, v329);
          }

          if (*(this + 16) >= 3u)
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v320, v321, v322, v323, v324, v325))
            {
              v336 = DgnTextFile::getCurrentLine(v1084);
              if (*(v336 + 8))
              {
                v339 = *v336;
              }

              else
              {
                v339 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5909, "lm/wordlm", 40, "%.500s", v337, v338, v339);
            }

            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v330, v331, v332, v333, v334, v335))
            {
              v340 = DgnTextFile::getCurrentLine(v1084);
              if (*(v340 + 8))
              {
                v343 = *v340;
              }

              else
              {
                v343 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5913, "lm/wordlm", 40, "%.500s", v341, v342, v343);
            }
          }
        }

        if (((v1032 ^ 1) & v1028) == 1)
        {
          v344 = DgnTextFile::getCurrentLine(v1084);
          if (*(v344 + 8))
          {
            v347 = *v344;
          }

          else
          {
            v347 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5916, "lm/wordlm", 40, "%.500s", v345, v346, v347);
        }

        if (LineFieldUnsigned > 0xFFFFF3)
        {
          v348 = DgnTextFile::getCurrentLine(v1084);
          if (*(v348 + 8))
          {
            v351 = *v348;
          }

          else
          {
            v351 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5919, "lm/wordlm", 40, "%.500s", v349, v350, v351);
        }

        v352 = *(this + 2);
        if (*(v352 + 388) <= LineFieldUnsigned || !*(*(v352 + 104) + LineFieldUnsigned))
        {
          v353 = DgnTextFile::getCurrentLine(v1084);
          if (*(v353 + 8))
          {
            v356 = *v353;
          }

          else
          {
            v356 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5923, "lm/wordlm", 40, "%.500s", v354, v355, v356);
        }

        if (LineFieldInteger < 1 || LineFieldInteger > v1027 || *(*(this + 21) + 2 * LineFieldInteger) == 20000)
        {
          v357 = DgnTextFile::getCurrentLine(v1084);
          if (*(v357 + 8))
          {
            v360 = *v357;
          }

          else
          {
            v360 = &unk_26288CFB0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5928, "lm/wordlm", 40, "%.500s", v358, v359, v360);
        }

        WordLanguageModel::recordWordIdLmIdUsage(this, LineFieldUnsigned, LineFieldInteger);
        goto LABEL_814;
      }

      v141 = *(this + 16);
      if (v141 >= 2)
      {
        if (!strcmp(v128, "WordIdToContextLmId"))
        {
          if (!v1032 || (v1077 ? (v361 = v1076) : (v361 = &unk_26288CFB0), !strcmp(v361, "UniSc") || !strcmp(v361, "WordIdToLmId") || ((v362 = DgnTextFile::getCurrentLine(v1084), *(v362 + 8)) ? (v365 = *v362) : (v365 = &unk_26288CFB0), errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5938, "lm/wordlm", 40, "%.500s", v363, v364, v365), *(this + 16) >= 2u)))
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v142, v143, v144, v145, v146, v147))
            {
              v372 = DgnTextFile::getCurrentLine(v1084);
              if (*(v372 + 8))
              {
                v375 = *v372;
              }

              else
              {
                v375 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5942, "lm/wordlm", 40, "%.500s", v373, v374, v375);
            }

            if (*(this + 16) >= 3u)
            {
              if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v366, v367, v368, v369, v370, v371))
              {
                v382 = DgnTextFile::getCurrentLine(v1084);
                if (*(v382 + 8))
                {
                  v385 = *v382;
                }

                else
                {
                  v385 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5946, "lm/wordlm", 40, "%.500s", v383, v384, v385);
              }

              if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v376, v377, v378, v379, v380, v381))
              {
                v386 = DgnTextFile::getCurrentLine(v1084);
                if (*(v386 + 8))
                {
                  v389 = *v386;
                }

                else
                {
                  v389 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5950, "lm/wordlm", 40, "%.500s", v387, v388, v389);
              }
            }

            if (((v1032 ^ 1) & v1028) == 1)
            {
              v390 = DgnTextFile::getCurrentLine(v1084);
              if (*(v390 + 8))
              {
                v393 = *v390;
              }

              else
              {
                v393 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5953, "lm/wordlm", 40, "%.500s", v391, v392, v393);
            }
          }

          if (LineFieldUnsigned > 0xFFFFF3)
          {
            v394 = DgnTextFile::getCurrentLine(v1084);
            if (*(v394 + 8))
            {
              v397 = *v394;
            }

            else
            {
              v397 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5956, "lm/wordlm", 40, "%.500s", v395, v396, v397);
          }

          v398 = *(this + 2);
          if (*(v398 + 388) <= LineFieldUnsigned || !*(*(v398 + 104) + LineFieldUnsigned))
          {
            v399 = DgnTextFile::getCurrentLine(v1084);
            if (*(v399 + 8))
            {
              v402 = *v399;
            }

            else
            {
              v402 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5960, "lm/wordlm", 40, "%.500s", v400, v401, v402);
          }

          if (LineFieldInteger < 1 || LineFieldInteger >= *(this + 26))
          {
            v403 = DgnTextFile::getCurrentLine(v1084);
            if (*(v403 + 8))
            {
              v406 = *v403;
            }

            else
            {
              v406 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5964, "lm/wordlm", 40, "%.500s", v404, v405, v406);
          }

          if ((*(this + 276) & 1) == 0)
          {
            v407 = DgnTextFile::getCurrentLine(v1084);
            if (*(v407 + 8))
            {
              v410 = *v407;
            }

            else
            {
              v410 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5967, "lm/wordlm", 40, "%.500s", v408, v409, v410);
          }

          v411 = v1027;
          if (v1027 <= LineFieldInteger)
          {
            v411 = LineFieldInteger;
          }

          v1027 = v411;
          WordLanguageModel::recordWordIdContextLmIdUsage(this, LineFieldUnsigned, LineFieldInteger);
          goto LABEL_814;
        }

        if (!strcmp(v128, "UniBoSc"))
        {
          if (!v1032 || (v1077 ? (v412 = v1076) : (v412 = &unk_26288CFB0), !strcmp(v412, "UniSc") || !strcmp(v412, "WordIdToLmId") || !strcmp(v412, "WordIdToContextLmId") || ((v413 = DgnTextFile::getCurrentLine(v1084), *(v413 + 8)) ? (v416 = *v413) : (v416 = &unk_26288CFB0), errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5982, "lm/wordlm", 40, "%.500s", v414, v415, v416), *(this + 16) >= 2u)))
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v148, v149, v150, v151, v152, v153))
            {
              v423 = DgnTextFile::getCurrentLine(v1084);
              if (*(v423 + 8))
              {
                v426 = *v423;
              }

              else
              {
                v426 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5986, "lm/wordlm", 40, "%.500s", v424, v425, v426);
            }

            if (*(this + 16) >= 3u)
            {
              if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v417, v418, v419, v420, v421, v422))
              {
                v433 = DgnTextFile::getCurrentLine(v1084);
                if (*(v433 + 8))
                {
                  v436 = *v433;
                }

                else
                {
                  v436 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5990, "lm/wordlm", 40, "%.500s", v434, v435, v436);
              }

              if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v427, v428, v429, v430, v431, v432))
              {
                v437 = DgnTextFile::getCurrentLine(v1084);
                if (*(v437 + 8))
                {
                  v440 = *v437;
                }

                else
                {
                  v440 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5994, "lm/wordlm", 40, "%.500s", v438, v439, v440);
              }
            }

            if (((v1032 ^ 1) & v1028) == 1)
            {
              v441 = DgnTextFile::getCurrentLine(v1084);
              if (*(v441 + 8))
              {
                v444 = *v441;
              }

              else
              {
                v444 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5997, "lm/wordlm", 40, "%.500s", v442, v443, v444);
            }
          }

          if (LineFieldUnsigned - 1 >= v1027 || *(*(this + 21) + 2 * LineFieldUnsigned) == 20000)
          {
            v445 = DgnTextFile::getCurrentLine(v1084);
            if (*(v445 + 8))
            {
              v448 = *v445;
            }

            else
            {
              v448 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6002, "lm/wordlm", 40, "%.500s", v446, v447, v448);
          }

          if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
          {
            v449 = DgnTextFile::getCurrentLine(v1084);
            if (*(v449 + 8))
            {
              v452 = *v449;
            }

            else
            {
              v452 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6007, "lm/wordlm", 40, "%.500s", v450, v451, v452);
          }

          if (*(this + 84))
          {
            v453 = *(this + 41);
          }

          else
          {
            v540 = *(this + 26);
            v541 = *(this + 85);
            v542 = v540;
            if (v540 > v541)
            {
              DgnPrimArray<short>::reallocElts(this + 328, v540 - v541, 0);
              v542 = *(this + 26);
            }

            *(this + 84) = v540;
            v453 = *(this + 41);
            if (v542)
            {
              memset_pattern16(*(this + 41), &unk_262888330, 2 * v542);
            }
          }

          *(v453 + 2 * LineFieldUnsigned) = LineFieldInteger;
          goto LABEL_814;
        }

        if (!strcmp(v128, "BoWt"))
        {
          if (!v1032 || (v1077 ? (v454 = v1076) : (v454 = &unk_26288CFB0), !strcmp(v454, "UniSc") || !strcmp(v454, "WordIdToLmId") || !strcmp(v454, "WordIdToContextLmId") || !strcmp(v454, "UniBoSc") || ((v455 = DgnTextFile::getCurrentLine(v1084), *(v455 + 8)) ? (v458 = *v455) : (v458 = &unk_26288CFB0), errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6026, "lm/wordlm", 40, "%.500s", v456, v457, v458), *(this + 16) >= 2u)))
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v154, v155, v156, v157, v158, v159))
            {
              v465 = DgnTextFile::getCurrentLine(v1084);
              if (*(v465 + 8))
              {
                v468 = *v465;
              }

              else
              {
                v468 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6030, "lm/wordlm", 40, "%.500s", v466, v467, v468);
            }

            if (*(this + 16) >= 3u)
            {
              if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v459, v460, v461, v462, v463, v464))
              {
                v475 = DgnTextFile::getCurrentLine(v1084);
                if (*(v475 + 8))
                {
                  v478 = *v475;
                }

                else
                {
                  v478 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6034, "lm/wordlm", 40, "%.500s", v476, v477, v478);
              }

              if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v469, v470, v471, v472, v473, v474))
              {
                v479 = DgnTextFile::getCurrentLine(v1084);
                if (*(v479 + 8))
                {
                  v482 = *v479;
                }

                else
                {
                  v482 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6038, "lm/wordlm", 40, "%.500s", v480, v481, v482);
              }
            }

            if (((v1032 ^ 1) & v1028) == 1)
            {
              v483 = DgnTextFile::getCurrentLine(v1084);
              if (*(v483 + 8))
              {
                v486 = *v483;
              }

              else
              {
                v486 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6041, "lm/wordlm", 40, "%.500s", v484, v485, v486);
            }
          }

          if (!LineFieldUnsigned || LineFieldUnsigned >= *(this + 26))
          {
            v487 = DgnTextFile::getCurrentLine(v1084);
            if (*(v487 + 8))
            {
              v490 = *v487;
            }

            else
            {
              v490 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6045, "lm/wordlm", 40, "%.500s", v488, v489, v490);
          }

          v491 = v1027;
          if (v1027 <= LineFieldUnsigned)
          {
            v491 = LineFieldUnsigned;
          }

          v1027 = v491;
          v492 = *(this + 14);
          if (LineFieldInteger <= -v492 || LineFieldInteger >= v492)
          {
            v493 = DgnTextFile::getCurrentLine(v1084);
            if (*(v493 + 8))
            {
              v496 = *v493;
            }

            else
            {
              v496 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6054, "lm/wordlm", 40, "%.500s", v494, v495, v496);
          }

          *(*(this + 43) + 2 * LineFieldUnsigned) = LineFieldInteger;
          goto LABEL_814;
        }

        if (!strcmp(v128, "BiScQuant"))
        {
          if (!v1032 || (v1077 ? (v497 = v1076) : (v497 = &unk_26288CFB0), !strcmp(v497, "UniSc") || !strcmp(v497, "WordIdToLmId") || !strcmp(v497, "WordIdToContextLmId") || !strcmp(v497, "UniBoSc") || !strcmp(v497, "BoWt") || ((v498 = DgnTextFile::getCurrentLine(v1084), *(v498 + 8)) ? (v501 = *v498) : (v501 = &unk_26288CFB0), errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6066, "lm/wordlm", 40, "%.500s", v499, v500, v501), *(this + 16) >= 2u)))
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v160, v161, v162, v163, v164, v165))
            {
              v508 = DgnTextFile::getCurrentLine(v1084);
              if (*(v508 + 8))
              {
                v511 = *v508;
              }

              else
              {
                v511 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6070, "lm/wordlm", 40, "%.500s", v509, v510, v511);
            }

            if (*(this + 16) >= 3u)
            {
              if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v502, v503, v504, v505, v506, v507))
              {
                v518 = DgnTextFile::getCurrentLine(v1084);
                if (*(v518 + 8))
                {
                  v521 = *v518;
                }

                else
                {
                  v521 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6074, "lm/wordlm", 40, "%.500s", v519, v520, v521);
              }

              if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v512, v513, v514, v515, v516, v517))
              {
                v522 = DgnTextFile::getCurrentLine(v1084);
                if (*(v522 + 8))
                {
                  v525 = *v522;
                }

                else
                {
                  v525 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6078, "lm/wordlm", 40, "%.500s", v523, v524, v525);
              }
            }
          }

          v526 = v1032;
          if (LineFieldUnsigned == 1)
          {
            v526 = 0;
          }

          if (v526)
          {
            goto LABEL_616;
          }

          v527 = v1032;
          if (LineFieldUnsigned == v1034 + 1)
          {
            v527 = 1;
          }

          if ((v527 & 1) == 0)
          {
LABEL_616:
            v528 = DgnTextFile::getCurrentLine(v1084);
            if (*(v528 + 8))
            {
              v531 = *v528;
            }

            else
            {
              v531 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6082, "lm/wordlm", 40, "%.500s", v529, v530, v531);
          }

          if (LineFieldUnsigned - 256 <= 0xFFFFFF00)
          {
            v532 = DgnTextFile::getCurrentLine(v1084);
            if (*(v532 + 8))
            {
              v535 = *v532;
            }

            else
            {
              v535 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6085, "lm/wordlm", 40, "%.500s", v533, v534, v535);
          }

          if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
          {
            v536 = DgnTextFile::getCurrentLine(v1084);
            if (*(v536 + 8))
            {
              v539 = *v536;
            }

            else
            {
              v539 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6089, "lm/wordlm", 40, "%.500s", v537, v538, v539);
          }

          BigramData::addBigramScoreQuantization(this + 90, 0, LineFieldInteger);
          goto LABEL_814;
        }

        if (!strcmp(v128, "BiSc"))
        {
          if (v1032)
          {
            v543 = v1077 ? v1076 : &unk_26288CFB0;
            if (strcmp(v543, "UniSc") && strcmp(v543, "WordIdToLmId") && strcmp(v543, "WordIdToContextLmId") && strcmp(v543, "UniBoSc") && strcmp(v543, "BoWt") && strcmp(v543, "BiScQuant"))
            {
              v544 = DgnTextFile::getCurrentLine(v1084);
              if (*(v544 + 8))
              {
                v547 = *v544;
              }

              else
              {
                v547 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6103, "lm/wordlm", 40, "%.500s", v545, v546, v547);
            }
          }

          v554 = DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v166, v167, v168, v169, v170, v171);
          if (*(this + 16) >= 3u)
          {
            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v548, v549, v550, v551, v552, v553))
            {
              v561 = DgnTextFile::getCurrentLine(v1084);
              if (*(v561 + 8))
              {
                v564 = *v561;
              }

              else
              {
                v564 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6108, "lm/wordlm", 40, "%.500s", v562, v563, v564);
            }

            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v555, v556, v557, v558, v559, v560))
            {
              v565 = DgnTextFile::getCurrentLine(v1084);
              if (*(v565 + 8))
              {
                v568 = *v565;
              }

              else
              {
                v568 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6112, "lm/wordlm", 40, "%.500s", v566, v567, v568);
            }
          }

          if (!(v1032 & 1 | !v1028) && v554 <= v1020)
          {
            v569 = DgnTextFile::getCurrentLine(v1084);
            if (*(v569 + 8))
            {
              v572 = *v569;
            }

            else
            {
              v572 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6116, "lm/wordlm", 40, "%.500s", v570, v571, v572);
          }

          if (LineFieldUnsigned - 1 >= v1027 || *(*(this + 43) + 2 * LineFieldUnsigned) == 20000 || LineFieldUnsigned >= *(this + 26))
          {
            v573 = DgnTextFile::getCurrentLine(v1084);
            if (*(v573 + 8))
            {
              v576 = *v573;
            }

            else
            {
              v576 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6122, "lm/wordlm", 40, "%.500s", v574, v575, v576);
          }

          if (v554 - 1 >= v1027 || *(*(this + 21) + 2 * v554) == 20000 || v554 > 0xFFFE || v554 >= *(this + 26))
          {
            v577 = DgnTextFile::getCurrentLine(v1084);
            if (*(v577 + 8))
            {
              v580 = *v577;
            }

            else
            {
              v580 = &unk_26288CFB0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6129, "lm/wordlm", 40, "%.500s", v578, v579, v580);
          }

          v581 = v1075;
          if (v1075 == HIDWORD(v1075))
          {
            DgnPrimArray<short>::reallocElts(&v1074, 1, 1);
            v581 = v1075;
          }

          *(v1074 + 2 * v581) = v554;
          LODWORD(v1075) = v581 + 1;
          v582 = *(this + 94);
          if (v582)
          {
            if (LineFieldInteger < 1 || LineFieldInteger >= v582)
            {
              v583 = DgnTextFile::getCurrentLine(v1084);
              if (*(v583 + 8))
              {
                v586 = *v583;
              }

              else
              {
                v586 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6143, "lm/wordlm", 40, "%.500s", v584, v585, v586);
            }

            v587 = v1071;
            if (v1071 == HIDWORD(v1071))
            {
              DgnPrimArray<char>::reallocElts(&v1070, 1, 1);
              v587 = v1071;
            }

            *(v1070 + v587) = LineFieldInteger;
            LODWORD(v1071) = v1071 + 1;
          }

          else
          {
            if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
            {
              v588 = DgnTextFile::getCurrentLine(v1084);
              if (*(v588 + 8))
              {
                v591 = *v588;
              }

              else
              {
                v591 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6151, "lm/wordlm", 40, "%.500s", v589, v590, v591);
            }

            v592 = v1073;
            if (v1073 == HIDWORD(v1073))
            {
              DgnPrimArray<short>::reallocElts(&v1072, 1, 1);
              v592 = v1073;
            }

            v1072[v592] = LineFieldInteger;
            LODWORD(v1073) = v592 + 1;
          }

          v1033 = LineFieldUnsigned;
          goto LABEL_706;
        }

        if (v141 != 2)
        {
          if (!strcmp(v128, "TriBoWtQuant"))
          {
            if (v1032)
            {
              v593 = v1077 ? v1076 : &unk_26288CFB0;
              if (strcmp(v593, "UniSc") && strcmp(v593, "WordIdToLmId") && strcmp(v593, "WordIdToContextLmId") && strcmp(v593, "UniBoSc") && strcmp(v593, "BoWt") && strcmp(v593, "BiScQuant") && strcmp(v593, "BiSc"))
              {
                v594 = DgnTextFile::getCurrentLine(v1084);
                if (*(v594 + 8))
                {
                  v597 = *v594;
                }

                else
                {
                  v597 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6167, "lm/wordlm", 40, "%.500s", v595, v596, v597);
              }
            }

            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v172, v173, v174, v175, v176, v177))
            {
              v604 = DgnTextFile::getCurrentLine(v1084);
              if (*(v604 + 8))
              {
                v607 = *v604;
              }

              else
              {
                v607 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6170, "lm/wordlm", 40, "%.500s", v605, v606, v607);
            }

            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v598, v599, v600, v601, v602, v603))
            {
              v614 = DgnTextFile::getCurrentLine(v1084);
              if (*(v614 + 8))
              {
                v617 = *v614;
              }

              else
              {
                v617 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6173, "lm/wordlm", 40, "%.500s", v615, v616, v617);
            }

            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v608, v609, v610, v611, v612, v613))
            {
              v618 = DgnTextFile::getCurrentLine(v1084);
              if (*(v618 + 8))
              {
                v621 = *v618;
              }

              else
              {
                v621 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6177, "lm/wordlm", 40, "%.500s", v619, v620, v621);
            }

            v622 = v1032;
            if (LineFieldUnsigned == 1)
            {
              v622 = 0;
            }

            if (v622)
            {
              goto LABEL_744;
            }

            v623 = v1032;
            if (LineFieldUnsigned == v1034 + 1)
            {
              v623 = 1;
            }

            if ((v623 & 1) == 0)
            {
LABEL_744:
              v624 = DgnTextFile::getCurrentLine(v1084);
              if (*(v624 + 8))
              {
                v627 = *v624;
              }

              else
              {
                v627 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6181, "lm/wordlm", 40, "%.500s", v625, v626, v627);
            }

            if (LineFieldUnsigned - 256 <= 0xFFFFFF00)
            {
              v628 = DgnTextFile::getCurrentLine(v1084);
              if (*(v628 + 8))
              {
                v631 = *v628;
              }

              else
              {
                v631 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6184, "lm/wordlm", 40, "%.500s", v629, v630, v631);
            }

            v632 = *(this + 14);
            if (LineFieldInteger <= -v632 || LineFieldInteger >= v632)
            {
              v633 = DgnTextFile::getCurrentLine(v1084);
              if (*(v633 + 8))
              {
                v636 = *v633;
              }

              else
              {
                v636 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6188, "lm/wordlm", 40, "%.500s", v634, v635, v636);
            }

            TrigramData::addTrigramBackoffWeightQuantization(this + 186, 0, LineFieldInteger);
            goto LABEL_814;
          }

          if (!strcmp(v128, "TriScQuant"))
          {
            if (v1032)
            {
              v637 = v1077 ? v1076 : &unk_26288CFB0;
              if (strcmp(v637, "UniSc") && strcmp(v637, "WordIdToLmId") && strcmp(v637, "WordIdToContextLmId") && strcmp(v637, "UniBoSc") && strcmp(v637, "BoWt") && strcmp(v637, "BiScQuant") && strcmp(v637, "BiSc") && strcmp(v637, "TriBoWtQuant"))
              {
                v638 = DgnTextFile::getCurrentLine(v1084);
                if (*(v638 + 8))
                {
                  v641 = *v638;
                }

                else
                {
                  v641 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6204, "lm/wordlm", 40, "%.500s", v639, v640, v641);
              }
            }

            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v178, v179, v180, v181, v182, v183))
            {
              v648 = DgnTextFile::getCurrentLine(v1084);
              if (*(v648 + 8))
              {
                v651 = *v648;
              }

              else
              {
                v651 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6207, "lm/wordlm", 40, "%.500s", v649, v650, v651);
            }

            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v642, v643, v644, v645, v646, v647))
            {
              v658 = DgnTextFile::getCurrentLine(v1084);
              if (*(v658 + 8))
              {
                v661 = *v658;
              }

              else
              {
                v661 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6210, "lm/wordlm", 40, "%.500s", v659, v660, v661);
            }

            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v652, v653, v654, v655, v656, v657))
            {
              v662 = DgnTextFile::getCurrentLine(v1084);
              if (*(v662 + 8))
              {
                v665 = *v662;
              }

              else
              {
                v665 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6214, "lm/wordlm", 40, "%.500s", v663, v664, v665);
            }

            v666 = v1032;
            if (LineFieldUnsigned == 1)
            {
              v666 = 0;
            }

            if (v666)
            {
              goto LABEL_798;
            }

            v667 = v1032;
            if (LineFieldUnsigned == v1034 + 1)
            {
              v667 = 1;
            }

            if ((v667 & 1) == 0)
            {
LABEL_798:
              v668 = DgnTextFile::getCurrentLine(v1084);
              if (*(v668 + 8))
              {
                v671 = *v668;
              }

              else
              {
                v671 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6218, "lm/wordlm", 40, "%.500s", v669, v670, v671);
            }

            if (LineFieldUnsigned - 256 <= 0xFFFFFF00)
            {
              v672 = DgnTextFile::getCurrentLine(v1084);
              if (*(v672 + 8))
              {
                v675 = *v672;
              }

              else
              {
                v675 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6221, "lm/wordlm", 40, "%.500s", v673, v674, v675);
            }

            if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
            {
              v676 = DgnTextFile::getCurrentLine(v1084);
              if (*(v676 + 8))
              {
                v679 = *v676;
              }

              else
              {
                v679 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6225, "lm/wordlm", 40, "%.500s", v677, v678, v679);
            }

            TrigramData::addTrigramScoreQuantization(this + 186, 0, LineFieldInteger);
            goto LABEL_814;
          }

          if (!strcmp(v128, "TriBoWt"))
          {
            if (v1032)
            {
              v680 = v1077 ? v1076 : &unk_26288CFB0;
              if (strcmp(v680, "UniSc") && strcmp(v680, "WordIdToLmId") && strcmp(v680, "WordIdToContextLmId") && strcmp(v680, "UniBoSc") && strcmp(v680, "BoWt") && strcmp(v680, "BiScQuant") && strcmp(v680, "BiSc") && strcmp(v680, "TriBoWtQuant") && strcmp(v680, "TriScQuant"))
              {
                v681 = DgnTextFile::getCurrentLine(v1084);
                if (*(v681 + 8))
                {
                  v684 = *v681;
                }

                else
                {
                  v684 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6242, "lm/wordlm", 40, "%.500s", v682, v683, v684);
              }
            }

            v554 = DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v184, v185, v186, v187, v188, v189);
            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v685, v686, v687, v688, v689, v690))
            {
              v697 = DgnTextFile::getCurrentLine(v1084);
              if (*(v697 + 8))
              {
                v700 = *v697;
              }

              else
              {
                v700 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6246, "lm/wordlm", 40, "%.500s", v698, v699, v700);
            }

            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v691, v692, v693, v694, v695, v696))
            {
              v701 = DgnTextFile::getCurrentLine(v1084);
              if (*(v701 + 8))
              {
                v704 = *v701;
              }

              else
              {
                v704 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6250, "lm/wordlm", 40, "%.500s", v702, v703, v704);
            }

            if (!(v1032 & 1 | !v1028) && v554 <= v1020)
            {
              v705 = DgnTextFile::getCurrentLine(v1084);
              if (*(v705 + 8))
              {
                v708 = *v705;
              }

              else
              {
                v708 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6254, "lm/wordlm", 40, "%.500s", v706, v707, v708);
            }

            if (LineFieldUnsigned - 1 >= v1027 || *(*(this + 43) + 2 * LineFieldUnsigned) == 20000 || LineFieldUnsigned >= *(this + 26))
            {
              v709 = DgnTextFile::getCurrentLine(v1084);
              if (*(v709 + 8))
              {
                v712 = *v709;
              }

              else
              {
                v712 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6260, "lm/wordlm", 40, "%.500s", v710, v711, v712);
            }

            if (v554 - 1 >= v1027 || *(*(this + 43) + 2 * v554) == 20000 || v554 > 0xFFFE || v554 >= *(this + 26))
            {
              v713 = DgnTextFile::getCurrentLine(v1084);
              if (*(v713 + 8))
              {
                v716 = *v713;
              }

              else
              {
                v716 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6267, "lm/wordlm", 40, "%.500s", v714, v715, v716);
            }

            v717 = *v1069;
            if (*v1069 == *&v1069[2])
            {
              DgnPrimArray<short>::reallocElts(&v1068, 1, 1);
              v717 = *v1069;
            }

            *(v1068 + 2 * v717) = v554;
            *v1069 = v717 + 1;
            v718 = *(this + 192);
            if (v718)
            {
              if (LineFieldInteger < 1 || LineFieldInteger >= v718)
              {
                v719 = DgnTextFile::getCurrentLine(v1084);
                if (*(v719 + 8))
                {
                  v722 = *v719;
                }

                else
                {
                  v722 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6282, "lm/wordlm", 40, "%.500s", v720, v721, v722);
              }

              v723 = v1065;
              if (v1065 == HIDWORD(v1065))
              {
                DgnPrimArray<char>::reallocElts(&v1064, 1, 1);
                v723 = v1065;
              }

              *(v1064 + v723) = LineFieldInteger;
              LODWORD(v1065) = v1065 + 1;
            }

            else
            {
              v774 = *(this + 14);
              if (LineFieldInteger <= -v774 || LineFieldInteger >= v774)
              {
                v775 = DgnTextFile::getCurrentLine(v1084);
                if (*(v775 + 8))
                {
                  v778 = *v775;
                }

                else
                {
                  v778 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6290, "lm/wordlm", 40, "%.500s", v776, v777, v778);
              }

              v779 = v1067;
              if (v1067 == HIDWORD(v1067))
              {
                DgnPrimArray<short>::reallocElts(&v1066, 1, 1);
                v779 = v1067;
              }

              *(v1066 + 2 * v779) = LineFieldInteger;
              LODWORD(v1067) = v779 + 1;
            }

            v1036 = LineFieldUnsigned;
            goto LABEL_706;
          }

          if (!strcmp(v128, "TriSc"))
          {
            if (v1032)
            {
              v724 = v1077 ? v1076 : &unk_26288CFB0;
              if (strcmp(v724, "UniSc") && strcmp(v724, "WordIdToLmId") && strcmp(v724, "WordIdToContextLmId") && strcmp(v724, "UniBoSc") && strcmp(v724, "BoWt") && strcmp(v724, "BiScQuant") && strcmp(v724, "BiSc") && strcmp(v724, "TriBoWtQuant") && strcmp(v724, "TriScQuant") && strcmp(v724, "TriBoWt"))
              {
                v725 = DgnTextFile::getCurrentLine(v1084);
                if (*(v725 + 8))
                {
                  v728 = *v725;
                }

                else
                {
                  v728 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6309, "lm/wordlm", 40, "%.500s", v726, v727, v728);
              }
            }

            v554 = DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v190, v191, v192, v193, v194, v195);
            v741 = DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v729, v730, v731, v732, v733, v734);
            if (*(this + 16) >= 4u && DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v735, v736, v737, v738, v739, v740))
            {
              v742 = DgnTextFile::getCurrentLine(v1084);
              if (*(v742 + 8))
              {
                v745 = *v742;
              }

              else
              {
                v745 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6315, "lm/wordlm", 40, "%.500s", v743, v744, v745);
            }

            v746 = (v1032 ^ 1) & v1028;
            if (v746 == 1 && v554 < v1020)
            {
              v747 = DgnTextFile::getCurrentLine(v1084);
              if (*(v747 + 8))
              {
                v750 = *v747;
              }

              else
              {
                v750 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6319, "lm/wordlm", 40, "%.500s", v748, v749, v750);
            }

            if (v746 && v554 == v1020 && v741 <= v1017)
            {
              v751 = DgnTextFile::getCurrentLine(v1084);
              if (*(v751 + 8))
              {
                v754 = *v751;
              }

              else
              {
                v754 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6323, "lm/wordlm", 40, "%.500s", v752, v753, v754);
            }

            if (LineFieldUnsigned - 1 >= v1027 || *(*(this + 43) + 2 * LineFieldUnsigned) == 20000 || LineFieldUnsigned >= *(this + 26))
            {
              v755 = DgnTextFile::getCurrentLine(v1084);
              if (*(v755 + 8))
              {
                v758 = *v755;
              }

              else
              {
                v758 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6329, "lm/wordlm", 40, "%.500s", v756, v757, v758);
            }

            if (v554 - 1 >= v1027 || *(*(this + 43) + 2 * v554) == 20000 || v554 > 0xFFFE || v554 >= *(this + 26))
            {
              v759 = DgnTextFile::getCurrentLine(v1084);
              if (*(v759 + 8))
              {
                v762 = *v759;
              }

              else
              {
                v762 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6336, "lm/wordlm", 40, "%.500s", v760, v761, v762);
            }

            if (v741 - 1 >= v1027 || *(*(this + 21) + 2 * v741) == 20000 || v741 > 0xFFFE || v741 >= *(this + 26))
            {
              v763 = DgnTextFile::getCurrentLine(v1084);
              if (*(v763 + 8))
              {
                v766 = *v763;
              }

              else
              {
                v766 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6343, "lm/wordlm", 40, "%.500s", v764, v765, v766);
            }

            v767 = v1063;
            if (v1063 == HIDWORD(v1063))
            {
              DgnPrimArray<short>::reallocElts(&v1062, 1, 1);
              v767 = v1063;
            }

            v93 = v554;
            *(v1062 + 2 * v767) = v741;
            LODWORD(v1063) = v767 + 1;
            v768 = *(this + 196);
            if (v768)
            {
              if (LineFieldInteger < 1 || LineFieldInteger >= v768)
              {
                v769 = DgnTextFile::getCurrentLine(v1084);
                if (*(v769 + 8))
                {
                  v772 = *v769;
                }

                else
                {
                  v772 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6362, "lm/wordlm", 40, "%.500s", v770, v771, v772);
              }

              v773 = v1059;
              if (v1059 == HIDWORD(v1059))
              {
                DgnPrimArray<char>::reallocElts(&v1058, 1, 1);
                v773 = v1059;
              }

              *(v1058 + v773) = LineFieldInteger;
              LODWORD(v1059) = v1059 + 1;
            }

            else
            {
              if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
              {
                v780 = DgnTextFile::getCurrentLine(v1084);
                if (*(v780 + 8))
                {
                  v783 = *v780;
                }

                else
                {
                  v783 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6370, "lm/wordlm", 40, "%.500s", v781, v782, v783);
              }

              v784 = v1061;
              if (v1061 == HIDWORD(v1061))
              {
                DgnPrimArray<short>::reallocElts(&v1060, 1, 1);
                v784 = v1061;
              }

              v1060[v784] = LineFieldInteger;
              LODWORD(v1061) = v784 + 1;
            }

            v1035 = LineFieldUnsigned;
LABEL_968:
            v1017 = v741;
LABEL_706:
            v1020 = v554;
            goto LABEL_814;
          }

          if (v141 >= 4)
          {
            if (!strcmp(v128, "QuadBoWtQuant"))
            {
              if (v1032)
              {
                v785 = v1077 ? v1076 : &unk_26288CFB0;
                if (strcmp(v785, "UniSc") && strcmp(v785, "WordIdToLmId") && strcmp(v785, "WordIdToContextLmId") && strcmp(v785, "UniBoSc") && strcmp(v785, "BoWt") && strcmp(v785, "BiScQuant") && strcmp(v785, "BiSc") && strcmp(v785, "TriBoWtQuant") && strcmp(v785, "TriScQuant") && strcmp(v785, "TriBoWt") && strcmp(v785, "TriSc"))
                {
                  v786 = DgnTextFile::getCurrentLine(v1084);
                  if (*(v786 + 8))
                  {
                    v789 = *v786;
                  }

                  else
                  {
                    v789 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6391, "lm/wordlm", 40, "%.500s", v787, v788, v789);
                }
              }

              if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v196, v197, v198, v199, v200, v201))
              {
                v796 = DgnTextFile::getCurrentLine(v1084);
                if (*(v796 + 8))
                {
                  v799 = *v796;
                }

                else
                {
                  v799 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6394, "lm/wordlm", 40, "%.500s", v797, v798, v799);
              }

              if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v790, v791, v792, v793, v794, v795))
              {
                v806 = DgnTextFile::getCurrentLine(v1084);
                if (*(v806 + 8))
                {
                  v809 = *v806;
                }

                else
                {
                  v809 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6397, "lm/wordlm", 40, "%.500s", v807, v808, v809);
              }

              if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v800, v801, v802, v803, v804, v805))
              {
                v810 = DgnTextFile::getCurrentLine(v1084);
                if (*(v810 + 8))
                {
                  v813 = *v810;
                }

                else
                {
                  v813 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6400, "lm/wordlm", 40, "%.500s", v811, v812, v813);
              }

              v814 = v1032;
              if (LineFieldUnsigned == 1)
              {
                v814 = 0;
              }

              if (v814)
              {
                goto LABEL_1009;
              }

              v815 = v1032;
              if (LineFieldUnsigned == v1034 + 1)
              {
                v815 = 1;
              }

              if ((v815 & 1) == 0)
              {
LABEL_1009:
                v816 = DgnTextFile::getCurrentLine(v1084);
                if (*(v816 + 8))
                {
                  v819 = *v816;
                }

                else
                {
                  v819 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6404, "lm/wordlm", 40, "%.500s", v817, v818, v819);
              }

              if (LineFieldUnsigned - 256 <= 0xFFFFFF00)
              {
                v820 = DgnTextFile::getCurrentLine(v1084);
                if (*(v820 + 8))
                {
                  v823 = *v820;
                }

                else
                {
                  v823 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6407, "lm/wordlm", 40, "%.500s", v821, v822, v823);
              }

              v824 = *(this + 14);
              if (LineFieldInteger <= -v824 || LineFieldInteger >= v824)
              {
                v825 = DgnTextFile::getCurrentLine(v1084);
                if (*(v825 + 8))
                {
                  v828 = *v825;
                }

                else
                {
                  v828 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6411, "lm/wordlm", 40, "%.500s", v826, v827, v828);
              }

              TrigramData::addTrigramBackoffWeightQuantization(this + 308, 0, LineFieldInteger);
              goto LABEL_814;
            }

            if (!strcmp(v128, "QuadScQuant"))
            {
              if (v1032)
              {
                v829 = v1077 ? v1076 : &unk_26288CFB0;
                if (strcmp(v829, "UniSc") && strcmp(v829, "WordIdToLmId") && strcmp(v829, "WordIdToContextLmId") && strcmp(v829, "UniBoSc") && strcmp(v829, "BoWt") && strcmp(v829, "BiScQuant") && strcmp(v829, "BiSc") && strcmp(v829, "TriBoWtQuant") && strcmp(v829, "TriScQuant") && strcmp(v829, "TriBoWt") && strcmp(v829, "TriSc") && strcmp(v829, "QuadBoWtQuant"))
                {
                  v830 = DgnTextFile::getCurrentLine(v1084);
                  if (*(v830 + 8))
                  {
                    v833 = *v830;
                  }

                  else
                  {
                    v833 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6431, "lm/wordlm", 40, "%.500s", v831, v832, v833);
                }
              }

              if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v202, v203, v204, v205, v206, v207))
              {
                v840 = DgnTextFile::getCurrentLine(v1084);
                if (*(v840 + 8))
                {
                  v843 = *v840;
                }

                else
                {
                  v843 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6434, "lm/wordlm", 40, "%.500s", v841, v842, v843);
              }

              if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v834, v835, v836, v837, v838, v839))
              {
                v850 = DgnTextFile::getCurrentLine(v1084);
                if (*(v850 + 8))
                {
                  v853 = *v850;
                }

                else
                {
                  v853 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6437, "lm/wordlm", 40, "%.500s", v851, v852, v853);
              }

              if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v844, v845, v846, v847, v848, v849))
              {
                v854 = DgnTextFile::getCurrentLine(v1084);
                if (*(v854 + 8))
                {
                  v857 = *v854;
                }

                else
                {
                  v857 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6440, "lm/wordlm", 40, "%.500s", v855, v856, v857);
              }

              v858 = v1032;
              if (LineFieldUnsigned == 1)
              {
                v858 = 0;
              }

              if (v858)
              {
                goto LABEL_1066;
              }

              v859 = v1032;
              if (LineFieldUnsigned == v1034 + 1)
              {
                v859 = 1;
              }

              if ((v859 & 1) == 0)
              {
LABEL_1066:
                v860 = DgnTextFile::getCurrentLine(v1084);
                if (*(v860 + 8))
                {
                  v863 = *v860;
                }

                else
                {
                  v863 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6444, "lm/wordlm", 40, "%.500s", v861, v862, v863);
              }

              if (LineFieldUnsigned - 256 <= 0xFFFFFF00)
              {
                v864 = DgnTextFile::getCurrentLine(v1084);
                if (*(v864 + 8))
                {
                  v867 = *v864;
                }

                else
                {
                  v867 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6447, "lm/wordlm", 40, "%.500s", v865, v866, v867);
              }

              if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
              {
                v868 = DgnTextFile::getCurrentLine(v1084);
                if (*(v868 + 8))
                {
                  v871 = *v868;
                }

                else
                {
                  v871 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6451, "lm/wordlm", 40, "%.500s", v869, v870, v871);
              }

              TrigramData::addTrigramScoreQuantization(this + 308, 0, LineFieldInteger);
              goto LABEL_814;
            }

            if (strcmp(v128, "QuadBoWt"))
            {
              if (!strcmp(v128, "QuadSc"))
              {
                if (v1032)
                {
                  v220 = v1077 ? v1076 : &unk_26288CFB0;
                  if (strcmp(v220, "UniSc") && strcmp(v220, "WordIdToLmId") && strcmp(v220, "WordIdToContextLmId") && strcmp(v220, "UniBoSc") && strcmp(v220, "BoWt") && strcmp(v220, "BiScQuant") && strcmp(v220, "BiSc") && strcmp(v220, "TriBoWtQuant") && strcmp(v220, "TriScQuant") && strcmp(v220, "TriBoWt") && strcmp(v220, "TriSc") && strcmp(v220, "QuadBoWtQuant") && strcmp(v220, "QuadScQuant") && strcmp(v220, "QuadBoWt"))
                  {
                    v221 = DgnTextFile::getCurrentLine(v1084);
                    if (*(v221 + 8))
                    {
                      v224 = *v221;
                    }

                    else
                    {
                      v224 = &unk_26288CFB0;
                    }

                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6564, "lm/wordlm", 40, "%.500s", v222, v223, v224);
                  }
                }

                v225 = DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v214, v215, v216, v217, v218, v219);
                v232 = DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v226, v227, v228, v229, v230, v231);
                v239 = DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v233, v234, v235, v236, v237, v238);
                v240 = (v1032 ^ 1) & v1028;
                if (v240 == 1 && v225 < v1020)
                {
                  v241 = DgnTextFile::getCurrentLine(v1084);
                  if (*(v241 + 8))
                  {
                    v244 = *v241;
                  }

                  else
                  {
                    v244 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6571, "lm/wordlm", 40, "%.500s", v242, v243, v244);
                }

                if (v225 != v1020)
                {
                  v240 = 0;
                }

                if (v240 == 1 && v232 < v1017)
                {
                  v245 = DgnTextFile::getCurrentLine(v1084);
                  if (*(v245 + 8))
                  {
                    v248 = *v245;
                  }

                  else
                  {
                    v248 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6575, "lm/wordlm", 40, "%.500s", v246, v247, v248);
                }

                if (v240 && v232 == v1017 && v239 <= v1012)
                {
                  v249 = DgnTextFile::getCurrentLine(v1084);
                  if (*(v249 + 8))
                  {
                    v252 = *v249;
                  }

                  else
                  {
                    v252 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6580, "lm/wordlm", 40, "%.500s", v250, v251, v252);
                }

                if (LineFieldUnsigned - 1 >= v1027 || *(*(this + 43) + 2 * LineFieldUnsigned) == 20000 || LineFieldUnsigned >= *(this + 26))
                {
                  v253 = DgnTextFile::getCurrentLine(v1084);
                  if (*(v253 + 8))
                  {
                    v256 = *v253;
                  }

                  else
                  {
                    v256 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6586, "lm/wordlm", 40, "%.500s", v254, v255, v256);
                }

                if (v225 - 1 >= v1027 || *(*(this + 43) + 2 * v225) == 20000 || v225 > 0xFFFE || v225 >= *(this + 26))
                {
                  v257 = DgnTextFile::getCurrentLine(v1084);
                  if (*(v257 + 8))
                  {
                    v260 = *v257;
                  }

                  else
                  {
                    v260 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6593, "lm/wordlm", 40, "%.500s", v258, v259, v260);
                }

                if (v232 - 1 >= v1027 || *(*(this + 43) + 2 * v232) == 20000 || v232 > 0xFFFE || v232 >= *(this + 26))
                {
                  v261 = DgnTextFile::getCurrentLine(v1084);
                  if (*(v261 + 8))
                  {
                    v264 = *v261;
                  }

                  else
                  {
                    v264 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6600, "lm/wordlm", 40, "%.500s", v262, v263, v264);
                }

                if (v239 - 1 >= v1027 || *(*(this + 21) + 2 * v239) == 20000 || v239 > 0xFFFE || v239 >= *(this + 26))
                {
                  v265 = DgnTextFile::getCurrentLine(v1084);
                  if (*(v265 + 8))
                  {
                    v268 = *v265;
                  }

                  else
                  {
                    v268 = &unk_26288CFB0;
                  }

                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6607, "lm/wordlm", 40, "%.500s", v266, v267, v268);
                }

                v269 = v1049;
                if (v1049 == HIDWORD(v1049))
                {
                  DgnPrimArray<short>::reallocElts(&v1048, 1, 1);
                  v269 = v1049;
                }

                v1038 = v225;
                v53 = v232;
                *(v1048 + 2 * v269) = v239;
                LODWORD(v1049) = v269 + 1;
                v270 = *(this + 318);
                if (v270)
                {
                  if (LineFieldInteger < 1 || LineFieldInteger >= v270)
                  {
                    v271 = DgnTextFile::getCurrentLine(v1084);
                    if (*(v271 + 8))
                    {
                      v274 = *v271;
                    }

                    else
                    {
                      v274 = &unk_26288CFB0;
                    }

                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6629, "lm/wordlm", 40, "%.500s", v272, v273, v274);
                  }

                  DgnPrimArray<unsigned char>::add(&v1044, LineFieldInteger);
                  v1029 = LineFieldUnsigned;
                  v1012 = v239;
                  v1017 = v232;
                  v1020 = v225;
                }

                else
                {
                  if (LineFieldInteger < 0 || LineFieldInteger >= *(this + 14))
                  {
                    v953 = DgnTextFile::getCurrentLine(v1084);
                    if (*(v953 + 8))
                    {
                      v956 = *v953;
                    }

                    else
                    {
                      v956 = &unk_26288CFB0;
                    }

                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6637, "lm/wordlm", 40, "%.500s", v954, v955, v956);
                  }

                  DgnPrimArray<unsigned short>::add(&v1046, LineFieldInteger);
                  v1029 = LineFieldUnsigned;
                  v1012 = v239;
                  v1017 = v232;
                  v1020 = v225;
                }
              }

              goto LABEL_814;
            }

            if (v1032)
            {
              v872 = v1077 ? v1076 : &unk_26288CFB0;
              if (strcmp(v872, "UniSc") && strcmp(v872, "WordIdToLmId") && strcmp(v872, "WordIdToContextLmId") && strcmp(v872, "UniBoSc") && strcmp(v872, "BoWt") && strcmp(v872, "BiScQuant") && strcmp(v872, "BiSc") && strcmp(v872, "TriBoWtQuant") && strcmp(v872, "TriScQuant") && strcmp(v872, "TriBoWt") && strcmp(v872, "TriSc") && strcmp(v872, "QuadBoWtQuant") && strcmp(v872, "QuadScQuant"))
              {
                v873 = DgnTextFile::getCurrentLine(v1084);
                if (*(v873 + 8))
                {
                  v876 = *v873;
                }

                else
                {
                  v876 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6472, "lm/wordlm", 40, "%.500s", v874, v875, v876);
              }
            }

            v554 = DgnTextFileParser::getLineFieldUnsigned(v1084, v1026, v208, v209, v210, v211, v212, v213);
            v883 = LineFieldInteger;
            v741 = DgnTextFileParser::getLineFieldUnsigned(v1084, v1021, v877, v878, v879, v880, v881, v882);
            if (DgnTextFileParser::getLineFieldUnsigned(v1084, v1019, v884, v885, v886, v887, v888, v889))
            {
              v890 = DgnTextFile::getCurrentLine(v1084);
              if (*(v890 + 8))
              {
                v893 = *v890;
              }

              else
              {
                v893 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6477, "lm/wordlm", 40, "%.500s", v891, v892, v893);
            }

            v894 = (v1032 ^ 1) & v1028;
            if (v894 == 1 && v554 < v1020)
            {
              v895 = DgnTextFile::getCurrentLine(v1084);
              if (*(v895 + 8))
              {
                v898 = *v895;
              }

              else
              {
                v898 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6481, "lm/wordlm", 40, "%.500s", v896, v897, v898);
            }

            if (v894 && v554 == v1020 && v741 <= v1017)
            {
              v899 = DgnTextFile::getCurrentLine(v1084);
              if (*(v899 + 8))
              {
                v902 = *v899;
              }

              else
              {
                v902 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6485, "lm/wordlm", 40, "%.500s", v900, v901, v902);
            }

            if (LineFieldUnsigned - 1 >= v1027 || *(*(this + 43) + 2 * LineFieldUnsigned) == 20000 || LineFieldUnsigned >= *(this + 26))
            {
              v903 = DgnTextFile::getCurrentLine(v1084);
              if (*(v903 + 8))
              {
                v906 = *v903;
              }

              else
              {
                v906 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6491, "lm/wordlm", 40, "%.500s", v904, v905, v906);
            }

            if (v554 - 1 >= v1027 || *(*(this + 43) + 2 * v554) == 20000 || v554 > 0xFFFE || v554 >= *(this + 26))
            {
              v907 = DgnTextFile::getCurrentLine(v1084);
              if (*(v907 + 8))
              {
                v910 = *v907;
              }

              else
              {
                v910 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6498, "lm/wordlm", 40, "%.500s", v908, v909, v910);
            }

            if (v741 - 1 >= v1027 || *(*(this + 43) + 2 * v741) == 20000 || v741 > 0xFFFE || v741 >= *(this + 26))
            {
              v911 = DgnTextFile::getCurrentLine(v1084);
              if (*(v911 + 8))
              {
                v914 = *v911;
              }

              else
              {
                v914 = &unk_26288CFB0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6505, "lm/wordlm", 40, "%.500s", v912, v913, v914);
            }

            v915 = v1032;
            if (LineFieldUnsigned > v1034)
            {
              v915 = 1;
            }

            if ((v915 & 1) != 0 || v554 > v1020)
            {
              v916 = *v1057;
              if (*v1057 == *&v1057[2])
              {
                DgnPrimArray<short>::reallocElts(&v1056, 1, 1);
                v916 = *v1057;
              }

              *(v1056 + 2 * v916) = v554;
              *v1057 = v916 + 1;
              v917 = v1055;
              v918 = v1055 + 1;
              if ((v1055 + 1) > HIDWORD(v1055))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(&v1054, (v1055 + 1 - HIDWORD(v1055)), 1);
                v917 = v1055;
                v918 = v1055 + 1;
              }

              if (v917 <= v918)
              {
                if (v917 < v918)
                {
                  v921 = v918 - v917;
                  v922 = 16 * v917;
                  do
                  {
                    v923 = (v1054 + v922);
                    *v923 = 0;
                    v923[1] = 0;
                    v922 += 16;
                    --v921;
                  }

                  while (v921);
                }
              }

              else if (v917 > v918)
              {
                v919 = v917;
                v920 = 16 * v917 - 16;
                do
                {
                  --v919;
                  DgnPrimArray<unsigned int>::~DgnPrimArray(v1054 + v920);
                  v920 -= 16;
                }

                while (v919 > v918);
              }

              LODWORD(v1055) = v918;
              v924 = v1053;
              v925 = v1053 + 1;
              if ((v1053 + 1) > HIDWORD(v1053))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(&v1052, (v1053 + 1 - HIDWORD(v1053)), 1);
                v924 = v1053;
                v925 = v1053 + 1;
              }

              if (v924 <= v925)
              {
                if (v924 < v925)
                {
                  v928 = v925 - v924;
                  v929 = 16 * v924;
                  do
                  {
                    v930 = (v1052 + v929);
                    *v930 = 0;
                    v930[1] = 0;
                    v929 += 16;
                    --v928;
                  }

                  while (v928);
                }
              }

              else if (v924 > v925)
              {
                v926 = v924;
                v927 = 16 * v924 - 16;
                do
                {
                  --v926;
                  DgnPrimArray<unsigned int>::~DgnPrimArray(v1052 + v927);
                  v927 -= 16;
                }

                while (v926 > v925);
              }

              LODWORD(v1053) = v925;
              v931 = v1051;
              v932 = v1051 + 1;
              if ((v1051 + 1) > HIDWORD(v1051))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(&v1050, (v1051 + 1 - HIDWORD(v1051)), 1);
                v931 = v1051;
                v932 = v1051 + 1;
              }

              if (v931 <= v932)
              {
                if (v931 < v932)
                {
                  v935 = v932 - v931;
                  v936 = 16 * v931;
                  do
                  {
                    v937 = (v1050 + v936);
                    *v937 = 0;
                    v937[1] = 0;
                    v936 += 16;
                    --v935;
                  }

                  while (v935);
                }
              }

              else if (v931 > v932)
              {
                v933 = v931;
                v934 = 16 * v931 - 16;
                do
                {
                  --v933;
                  DgnPrimArray<unsigned int>::~DgnPrimArray(v1050 + v934);
                  v934 -= 16;
                }

                while (v933 > v932);
              }

              LODWORD(v1051) = v932;
              v883 = LineFieldInteger;
            }

            v938 = v1054 + 16 * (v1055 - 1);
            v939 = *(v938 + 8);
            if (v939 == *(v938 + 12))
            {
              DgnPrimArray<short>::reallocElts(v1054 + 16 * (v1055 - 1), 1, 1);
              v939 = *(v938 + 8);
            }

            *(*v938 + 2 * v939) = v741;
            *(v938 + 8) = v939 + 1;
            v940 = *(this + 318);
            if (v940)
            {
              if (v883 < 1 || v883 >= v940)
              {
                v941 = DgnTextFile::getCurrentLine(v1084);
                if (*(v941 + 8))
                {
                  v944 = *v941;
                }

                else
                {
                  v944 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6531, "lm/wordlm", 40, "%.500s", v942, v943, v944);
              }

              v945 = v1050 + 16 * (v1051 - 1);
              v946 = *(v945 + 8);
              if (v946 == *(v945 + 12))
              {
                DgnPrimArray<char>::reallocElts(v1050 + 16 * (v1051 - 1), 1, 1);
                v946 = *(v945 + 8);
              }

              *(*v945 + v946) = v883;
              v947 = *(v945 + 8);
            }

            else
            {
              v948 = *(this + 14);
              if (v883 <= -v948 || v883 >= v948)
              {
                v949 = DgnTextFile::getCurrentLine(v1084);
                if (*(v949 + 8))
                {
                  v952 = *v949;
                }

                else
                {
                  v952 = &unk_26288CFB0;
                }

                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6540, "lm/wordlm", 40, "%.500s", v950, v951, v952);
              }

              v945 = v1052 + 16 * (v1053 - 1);
              v947 = *(v945 + 8);
              if (v947 == *(v945 + 12))
              {
                DgnPrimArray<short>::reallocElts(v1052 + 16 * (v1053 - 1), 1, 1);
                v947 = *(v945 + 8);
              }

              *(*v945 + 2 * v947) = v883;
            }

            *(v945 + 8) = v947 + 1;
            v1039 = LineFieldUnsigned;
            goto LABEL_968;
          }
        }
      }

LABEL_814:
      DgnString::operator=(&v1076, &v1042);
      DgnString::~DgnString(&v1042);
      v1031 = 1;
      v56 = v1036;
      v1034 = LineFieldUnsigned;
      v54 = v93;
      v55 = v1035;
      continue;
    }

    break;
  }

  DgnString::~DgnString(&v1042);
  if (v52 != v1024)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6651, "lm/wordlm", 57, "%u %u", v962, v963, v52);
  }

  v964 = *(this + 28);
  if (v964 != -1)
  {
    if (!v964 || v964 > v1027 || (*(this + 16) < 2u ? (v965 = *(this + 21)) : (v965 = *(this + 43)), *(v965 + 2 * v964) == 20000))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6686, "lm/wordlm", 43, "%u", v962, v963, *(this + 28));
    }
  }

  v966 = *(this + 29);
  if (v966 != -1 && (!v966 || v966 > v1027 || *(*(this + 21) + 2 * v966) == 20000))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6693, "lm/wordlm", 44, "%u", v962, v963, *(this + 29));
  }

  if (*(this + 16) >= 2u && v1027)
  {
    v967 = 1;
    do
    {
      v968 = v967;
      if (*(*(this + 21) + 2 * v967) != 20000)
      {
        if (*(this + 84) && *(*(this + 41) + 2 * v967) == 20000)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6703, "lm/wordlm", 41, "%u", v962, v963, v967);
        }

        if (*(*(this + 43) + 2 * v968) == 20000)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6705, "lm/wordlm", 42, "%u", v962, v963, v968);
        }
      }

      v967 = v968 + 1;
    }

    while (v968 + 1 <= v1027);
  }

  WordLanguageModel::throwOnBadBoWt(this, v957, v958, v959, v960, v961, v962, v963);
  WordLanguageModel::throwOnBadTriBoWt(this, v969, v970, v971, v972, v973, v974, v975);
  v1042 = 0;
  v1043 = 0;
  v978 = *(this + 26);
  if (!v978)
  {
    LODWORD(v1043) = 0;
    v1040 = 0;
    v1041 = 0;
    goto LABEL_1242;
  }

  v1040 = 0;
  v979 = realloc_array(0, &v1040, v978, 0, 0, 1);
  v1041 = 0;
  v1042 = v1040;
  v980 = *(this + 26);
  v1043 = __PAIR64__(v979, v978);
  v1040 = 0;
  if (!v980)
  {
LABEL_1242:
    LODWORD(v1041) = 0;
    goto LABEL_1243;
  }

  v1085 = 0;
  v981 = realloc_array(0, &v1085, v980, 0, 0, 1);
  v982 = v1085;
  v1040 = v1085;
  v983 = *(this + 26);
  v1041 = __PAIR64__(v981, v980);
  if (v983)
  {
    v984 = v1042;
    do
    {
      *v984++ = 0;
      *v982++ = 0;
      --v983;
    }

    while (v983);
  }

LABEL_1243:
  v985 = *(*(this + 2) + 388);
  v986 = *(this + 32);
  if (!v986)
  {
    v986 = *(this + 36);
    if (!v986)
    {
      v986 = *(this + 40);
    }
  }

  if (v986 >= v985)
  {
    if (v985)
    {
      goto LABEL_1250;
    }
  }

  else
  {
    WordLanguageModel::recordWordIdInvalidLmIdUsage(this, v985 - 1);
    if (*(this + 276) == 1)
    {
      WordLanguageModel::recordWordIdInvalidContextLmIdUsage(this, v985 - 1);
    }

LABEL_1250:
    v987 = 0;
    do
    {
      v988 = *(this + 2);
      if (v987 < *(v988 + 388))
      {
        if (*(*(v988 + 104) + v987))
        {
          v989 = *(*(v988 + 256) + 4 * v987);
          if (v987 != v989)
          {
            if (*(this + 32))
            {
              v990 = *(this + 15);
              v991 = *(v990 + 4 * v987);
              v992 = *(v990 + 4 * v989);
            }

            else
            {
              if (*(this + 36))
              {
                v993 = *(this + 17);
                v991 = *(v993 + 2 * v987);
                if (v991 == 0xFFFF)
                {
                  v991 = -1;
                }

                v992 = *(v993 + 2 * v989);
                v994 = v992 == 0xFFFF;
              }

              else
              {
                v995 = *(this + 19);
                v991 = *(v995 + v987);
                if (v991 == 255)
                {
                  v991 = -1;
                }

                v992 = *(v995 + v989);
                v994 = v992 == 255;
              }

              if (v994)
              {
                v992 = -1;
              }
            }

            if (v991 != v992)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6745, "lm/wordlm", 46, "%u %u", v976, v977, v987);
            }

            if (*(this + 276) == 1)
            {
              if (*(this + 72))
              {
                v996 = *(this + 35);
                v997 = *(v996 + 4 * v987);
                v998 = *(v996 + 4 * v989);
              }

              else
              {
                if (*(this + 76))
                {
                  v999 = *(this + 37);
                  v997 = *(v999 + 2 * v987);
                  if (v997 == 0xFFFF)
                  {
                    v997 = -1;
                  }

                  v998 = *(v999 + 2 * v989);
                  v1000 = v998 == 0xFFFF;
                }

                else
                {
                  v1001 = *(this + 39);
                  v997 = *(v1001 + v987);
                  if (v997 == 255)
                  {
                    v997 = -1;
                  }

                  v998 = *(v1001 + v989);
                  v1000 = v998 == 255;
                }

                if (v1000)
                {
                  v998 = -1;
                }
              }

              if (v997 != v998)
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6754, "lm/wordlm", 61, "%u %u", v976, v977, v987);
              }
            }
          }
        }
      }

      ++v987;
    }

    while (v985 != v987);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1040);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1042);
  if (v1013 == 19)
  {
    if (v1018 != 5)
    {
      goto LABEL_1290;
    }

LABEL_1289:
    WordLanguageModel::maybeAddAlienWordLmId(this, a6, a7, v1082, v1081, v1002, v1003, v1004, v1005, v1006);
    goto LABEL_1290;
  }

  if (v1013 == 24 && (v1018 & 0xFFFFFFFE) == 6)
  {
    goto LABEL_1289;
  }

LABEL_1290:
  if (*(this + 18) == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6770, "lm/wordlm", 98, "%s", v1005, v1006, &errStr_lm_wordlm_E_WNT_ALIEN_WORD_LMID_NOT_SPECIFIED);
  }

  if (v1013 == 19)
  {
    if (v1018 != 5)
    {
      goto LABEL_1299;
    }
  }

  else if (v1013 != 24 || v1018 != 6)
  {
    goto LABEL_1299;
  }

  if (*(this + 276) == 1)
  {
    *(this + 19) = *(this + 18);
  }

LABEL_1299:
  if (*(this + 276) != 1 || *(this + 19) == -1 && (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6781, "lm/wordlm", 66, "%s", v1005, v1006, &errStr_lm_wordlm_E_BAD_HAS_WORDID_TO_CONTEXT_LMID), (*(this + 276) & 1) == 0))
  {
    if (*(this + 19) != -1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6783, "lm/wordlm", 65, "%s", v1005, v1006, &errStr_lm_wordlm_E_ALIEN_WORD_CONTEXT_LMID_WITHOUT_CONTEXT_LMIDS);
    }
  }

  BigramData::compact((this + 360));
  TrigramData::compact((this + 744));
  QuadgramData::compact((this + 1232));
  v1011 = v1013 == 19 && v1018 == 5;
  WordLanguageModel::maybeRepairOutOfRangeWordIdsOrThrow(this, v1011, a3, a4, a5, v1007, v1008, v1009);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1044);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1046);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1048);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v1050);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v1052);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v1054);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1056);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1058);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1060);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1062);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1064);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1066);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1068);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1070);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1072);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v1074);
  DgnString::~DgnString(&v1076);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1078);
  DgnArray<DgnString>::releaseAll(&v1079);
  DgnIArray<Utterance *>::~DgnIArray(v1083);
  DgnTextFileParser::~DgnTextFileParser(v1084);
}

void sub_262795D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, char a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, char a44, uint64_t a45, char a46, uint64_t a47, char a48, uint64_t a49, char a50, uint64_t a51, char a52, uint64_t a53, char a54, uint64_t a55, char a56, uint64_t a57, char a58, uint64_t a59, char a60, uint64_t a61, char a62, uint64_t a63)
{
  DgnString::~DgnString(&a34);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a36);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a38);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a40);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a42);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a44);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a46);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a50);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a52);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a54);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a56);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a58);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a60);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a62);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a66);
  DgnString::~DgnString(&a68);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a70);
  DgnArray<DgnString>::releaseAll(&a72);
  DgnIArray<Utterance *>::~DgnIArray(&STACK[0x218]);
  DgnTextFileParser::~DgnTextFileParser(&STACK[0x228]);
  _Unwind_Resume(a1);
}

void WordLanguageModel::loadBinary(WordLanguageModel *this, DFile *a2, DFileChecksums *a3, int a4, unsigned int a5, unsigned int a6)
{
  v80 = 0;
  v10 = 1;
  v13 = OpenAndReadMrecHeader(a2, 0x6Fu, 1, "LMWNGBIN", &v80 + 1, &v80);
  v14 = v80;
  v15 = HIDWORD(v80) == 19 && v80 == 13;
  v16 = v15;
  if (v15)
  {
    v17 = 0;
    v18 = 19;
    v14 = 13;
LABEL_12:
    v19 = 1;
LABEL_13:
    v20 = 1;
    goto LABEL_14;
  }

  switch(v80)
  {
    case 0x170000000ELL:
      v17 = 0;
      v18 = 23;
      goto LABEL_12;
    case 0x180000000FLL:
      v10 = 0;
      v17 = 0;
      v19 = 1;
LABEL_31:
      v18 = 24;
      goto LABEL_13;
    case 0x1800000010:
      v10 = 0;
      v17 = 1;
      v18 = 24;
      goto LABEL_12;
    case 0x1800000011:
      v10 = 0;
      v19 = 0;
      v17 = 1;
      goto LABEL_31;
  }

  if (*(a2 + 6))
  {
    v72 = *(a2 + 2);
  }

  else
  {
    v72 = &unk_26288CFB0;
  }

  MrecHeaderCheckVersions(v72, "LMWNGBIN", HIDWORD(v80), v80, 0x18u, 0x12u);
  v10 = 0;
  v19 = 0;
  v20 = 0;
  v14 = v80;
  v18 = HIDWORD(v80);
  v17 = 1;
LABEL_14:
  MrecHeaderCheckLatestVersionIfShared(a2, "LMWNGBIN", v18, v14, 24, 18, v11, v12);
  if (DFile::subFileExists(a2, 0x73u))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5207, "lm/wordlm", 84, "%s", v21, v22, &errStr_lm_wordlm_E_WNS_WNB_MISMATCH);
  }

  v79 = 0;
  v77 = -1.0;
  v78 = -1.0;
  readObject(v13, this + 16, &v79);
  readObject(v13, this + 68, &v79);
  if (v20)
  {
    readObject(v13, &v78, &v79);
    readObject(v13, &v77, &v79);
  }

  readObject(v13, this + 18, &v79);
  if (v17)
  {
    readObject(v13, this + 19, &v79);
  }

  readObject(v13, this + 80, &v79);
  if (v19)
  {
    readObject(v13, this + 21, &v79);
    readObject(v13, this + 22, &v79);
    readObject(v13, this + 23, &v79);
    readObject(v13, this + 24, &v79);
  }

  readObject(v13, this + 25, &v79);
  readObject(v13, this + 60, &v79);
  readObject(v13, this + 244, &v79);
  readObject(v13, this + 245, &v79);
  v76 = 0;
  WordLanguageModel::loadUnigramMembersBinary(this, v13, &v79, v20, &v76);
  v75 = 0;
  if (*(this + 16) >= 2u)
  {
    WordLanguageModel::loadBigramMembersBinary(this, v13, &v79, v20, &v75);
    BigramData::loadBinary((this + 360), v13, &v79);
    WordLanguageModel::verifyBoWtForBiSc(this, v23, v24, v25, v26, v27, v28, v29);
    WordLanguageModel::throwOnBadBoWt(this, v30, v31, v32, v33, v34, v35, v36);
    if (v16)
    {
      WordLanguageModel::verifyUniScForBiSc(this, v37, v38, v39, v40, v41, v42, v43);
    }

    if (*(this + 16) >= 3u)
    {
      TrigramData::loadBinary((this + 744), v13, &v79);
      WordLanguageModel::throwOnBadTriBoWt(this, v44, v45, v46, v47, v48, v49, v50);
      if (v16)
      {
        WordLanguageModel::verifyUniScForTriSc(this, v51, v52, v53, v54, v55, v56, v57);
        if (*(this + 16) > 3u)
        {
          QuadgramData::loadBinary((this + 1232), v13, &v79);
          WordLanguageModel::verifyUniScForQuadSc(this, v58, v59, v60, v61, v62, v63, v64);
        }
      }

      else if (*(this + 16) >= 4u)
      {
        QuadgramData::loadBinary((this + 1232), v13, &v79);
      }
    }
  }

  v65 = v79;
  *(this + 456) = v79;
  readObjectChecksumAndVerify(v13, v65);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x6Fu, v79);
  DgnDelete<DgnStream>(v13);
  if (v10)
  {
    WordLanguageModel::maybeRepairOutOfRangeWordIdsOrThrow(this, 1, a4, a5, a6, v69, v70, v71);
    if (!v20)
    {
      goto LABEL_38;
    }

LABEL_41:
    WordLanguageModel::maybeAddAlienWordLmId(this, v78, v77, v76, v75, v67, v68, v69, v70, v71);
    if (v17)
    {
      return;
    }

    goto LABEL_42;
  }

  if (v20)
  {
    goto LABEL_41;
  }

LABEL_38:
  if (v17)
  {
    return;
  }

LABEL_42:
  if (*(this + 276) == 1)
  {
    *(this + 19) = *(this + 18);
  }
}

void WordLanguageModel::loadBinaryShared(uint64_t a1, DgnStream *a2, DFile *a3, uint64_t a4, unsigned int a5, int a6)
{
  if (a3)
  {
    LODWORD(v16) = 0;
    LODWORD(v15) = 0;
    if (a5 == 112)
    {
      v12 = "LMWNGDYN";
    }

    else
    {
      v12 = "LMWNGBIN";
    }

    v13 = OpenAndReadMrecHeader(a3, a5, 1, v12, &v16, &v15);
    DgnDelete<DgnStream>(v13);
  }

  v17 = 0;
  v16 = 0;
  if (a6)
  {
    readObject(a2, (a1 + 64), &v17);
    readObject(a2, (a1 + 68), &v17);
    readObject(a2, (a1 + 72), &v17);
    readObject(a2, (a1 + 76), &v17);
    readObject(a2, (a1 + 80), &v17);
    readObject(a2, (a1 + 100), &v17);
    readObject(a2, (a1 + 240), &v17);
    readObject(a2, (a1 + 244), &v17);
    readObject(a2, (a1 + 245), &v17);
    WordLanguageModel::loadUnigramMembersBinary(a1, a2, &v17, 0, &v16);
    v15 = 0;
    if (*(a1 + 64) <= 1u)
    {
LABEL_14:
      readObject(a2, (a1 + 1824), &v17);
      goto LABEL_15;
    }

    WordLanguageModel::loadBigramMembersBinary(a1, a2, &v17, 0, &v15);
  }

  else
  {
    v15 = 0;
    if (*(a1 + 64) <= 1u)
    {
      goto LABEL_15;
    }
  }

  BigramData::loadBinaryShared((a1 + 360), a2, a6, &v17);
  if (*(a1 + 64) >= 3u)
  {
    TrigramData::loadBinaryShared((a1 + 744), a2, a6, &v17);
    if (*(a1 + 64) >= 4u)
    {
      QuadgramData::loadBinaryShared((a1 + 1232), a2, a6, &v17);
    }
  }

  if (a6)
  {
    goto LABEL_14;
  }

LABEL_15:
  readObjectChecksumAndVerify(a2, v17);
  if (a3)
  {
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a3);
    DFileChecksums::addChecksum(a4, CurrentSubDirComponents, a5, *(a1 + 1824));
  }
}

void WordLanguageModel::loadDynamic(WordLanguageModel *this, DFile *a2, DFile *a3, DFileChecksums *a4, int a5, int a6, BOOL *a7, BOOL *a8, BOOL a9, unsigned int a10, unsigned int a11)
{
  v65 = 0;
  v16 = 1;
  v19 = OpenAndReadMrecHeader(a2, 0x70u, 1, "LMWNGDYN", &v65 + 1, &v65);
  v20 = v65;
  v21 = HIDWORD(v65) == 19 && v65 == 12;
  v22 = v21;
  if (v21)
  {
    v23 = 0;
    v24 = 19;
    v20 = 12;
LABEL_12:
    v25 = 1;
    goto LABEL_22;
  }

  switch(v65)
  {
    case 0x180000000DLL:
      v23 = 0;
      v24 = 24;
      goto LABEL_12;
    case 0x180000000ELL:
      v24 = 24;
      v25 = 1;
      break;
    case 0x180000000FLL:
      v16 = 0;
      v25 = 1;
      v24 = 24;
      break;
    default:
      if (*(a2 + 6))
      {
        v26 = *(a2 + 2);
      }

      else
      {
        v26 = &unk_26288CFB0;
      }

      MrecHeaderCheckVersions(v26, "LMWNGDYN", HIDWORD(v65), v65, 0x18u, 0x10u);
      v16 = 0;
      v25 = 0;
      v20 = v65;
      v24 = HIDWORD(v65);
      break;
  }

  v23 = 1;
LABEL_22:
  MrecHeaderCheckLatestVersionIfShared(a2, "LMWNGDYN", v24, v20, 24, 16, v17, v18);
  if (DFile::subFileExists(a2, 0x73u))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8772, "lm/wordlm", 85, "%s", v27, v28, &errStr_lm_wordlm_E_WNS_WND_PRESENCE_MISMATCH);
  }

  v64 = 0;
  v62 = -1.0;
  v63 = -1.0;
  readObject(v19, this + 16, &v64);
  readObject(v19, this + 68, &v64);
  if (v25)
  {
    readObject(v19, &v63, &v64);
    readObject(v19, &v62, &v64);
  }

  readObject(v19, this + 18, &v64);
  if (v23)
  {
    readObject(v19, this + 19, &v64);
  }

  readObject(v19, this + 80, &v64);
  if (v16)
  {
    readObject(v19, this + 21, &v64);
    readObject(v19, this + 22, &v64);
    readObject(v19, this + 23, &v64);
    readObject(v19, this + 24, &v64);
  }

  readObject(v19, this + 25, &v64);
  readObject(v19, this + 60, &v64);
  readObject(v19, this + 244, &v64);
  readObject(v19, this + 245, &v64);
  v31 = *(this + 16);
  v32 = *(this + 245);
  if (v31 > 1 && !a3 && a6 && (*(this + 245) & 1) != 0)
  {
    v33 = 1;
    *(this + 16) = 1;
    *(this + 68) = 1;
    *(this + 60) = -1;
    *(this + 19) = -1;
    *(this + 122) = 0;
    *(this + 92) = 0;
    *(this + 84) = 0;
    *a7 = 1;
    if ((*(this + 245) & 1) == 0)
    {
      v61 = 0;
      WordLanguageModel::loadUnigramMembersBinary(this, v19, &v64, v25, &v61);
      v60 = 0;
      goto LABEL_41;
    }

LABEL_38:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8810, "lm/wordlm", 6, "%s", v29, v30, &errStr_lm_wordlm_E_NO_STATIC_VOC);
    v34 = v33;
    goto LABEL_39;
  }

  if ((*(this + 245) & 1) == 0)
  {
    v35 = *(this + 5);
    goto LABEL_44;
  }

  v33 = 0;
  v34 = 0;
  if (!a3)
  {
    goto LABEL_38;
  }

LABEL_39:
  v35 = (*(*a3 + 88))(a3);
  *(this + 5) = v35;
  if (v34)
  {
    v61 = 0;
    WordLanguageModel::loadUnigramMembersBinary(this, v19, &v64, v25, &v61);
    v60 = 0;
    if (v31 < 2)
    {
LABEL_42:
      v38 = v64;
      *(this + 456) = v64;
      readObjectChecksumAndVerify(v19, v38);
      CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
      DFileChecksums::addChecksum(a4, CurrentSubDirComponents, 0x70u, v64);
      DgnDelete<DgnStream>(v19);
      v45 = v22;
      goto LABEL_57;
    }

LABEL_41:
    v36 = MemChunkAlloc(0x728uLL, 0);
    WordLanguageModel::WordLanguageModel(v36, *(this + 8), *(this + 2));
    WordLanguageModel::loadBigramMembersBinary(v37, v19, &v64, v25, &v60);
    DgnDelete<LanguageModel>(v36);
    goto LABEL_42;
  }

LABEL_44:
  if (!v35 || (DFile::subFileExists(v35, 0x72u) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8817, "lm/wordlm", 18, "%s", v29, v30, &errStr_lm_wordlm_E_WND_WITH_NO_WNP_FILE);
  }

  v46 = *(this + 5);
  v45 = v22;
  if (!v46 || (DFile::subFileExists(v46, 0x71u) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8820, "lm/wordlm", 19, "%s", v29, v30, &errStr_lm_wordlm_E_WND_WITH_NO_WNI_FILE);
  }

  v61 = 0;
  WordLanguageModel::loadUnigramMembersBinary(this, v19, &v64, v25, &v61);
  v60 = 0;
  if (*(this + 16) >= 2u)
  {
    WordLanguageModel::loadBigramMembersBinary(this, v19, &v64, v25, &v60);
  }

  v47 = v64;
  *(this + 456) = v64;
  readObjectChecksumAndVerify(v19, v47);
  v48 = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a4, v48, 0x70u, v64);
  DgnDelete<DgnStream>(v19);
  PersistentAndIndex = WordLanguageModel::loadPersistentAndIndex(this);
  if (a5)
  {
    v50 = PersistentAndIndex;
    WordLanguageModel::reabsorbStaticLM(this);
    *a8 = 1;
    if (v50)
    {
      WordLanguageModel::verifyUniScForBiSc(this, v51, v52, v40, v41, v42, v43, v44);
      if (*(this + 16) >= 3u)
      {
        WordLanguageModel::verifyUniScForTriSc(this, v53, v54, v40, v41, v42, v43, v44);
        if (*(this + 16) >= 4u)
        {
          WordLanguageModel::verifyUniScForQuadSc(this, v55, v56, v40, v41, v42, v43, v44);
        }
      }
    }
  }

LABEL_57:
  if (v45)
  {
    WordLanguageModel::maybeRepairOutOfRangeWordIdsOrThrow(this, 1, a9, a10, a11, v42, v43, v44);
    if (!v25)
    {
      goto LABEL_59;
    }
  }

  else if (!v25)
  {
LABEL_59:
    if (v23)
    {
      return;
    }

    goto LABEL_63;
  }

  WordLanguageModel::maybeAddAlienWordLmId(this, v63, v62, v61, v60, v40, v41, v42, v43, v44);
  if (v23)
  {
    return;
  }

LABEL_63:
  if (*(this + 276) == 1)
  {
    *(this + 19) = *(this + 18);
  }
}