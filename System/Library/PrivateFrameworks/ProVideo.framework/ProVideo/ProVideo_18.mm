uint64_t TXTranscriptionGenerator::charIndexToBlockIndex(TXTranscriptionGenerator *this, unsigned int a2)
{
  v2 = *(this + 0x2000);
  v3 = *(this + 8193);
  if (v2 == v3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *(v2 + 24);
    if (v5 <= a2 && *(v2 + 32) + v5 > a2)
    {
      break;
    }

    result = (result + 1);
    v2 += 48;
  }

  while (v2 != v3);
  return result;
}

unint64_t TXTGGetRangeOfWord(const TXTranscriptionGenerator *a1, unsigned int a2)
{
  if (!a1)
  {
    return -1;
  }

  v2 = *(a1 + 8180);
  v3 = *(a1 + 8181);
  if (v2 == v3)
  {
    return -1;
  }

  v4 = a2;
  while (1)
  {
    PCString::PCString(&v11, v2);
    v5 = *(v2 + 8);
    v6 = *(v2 + 24);
    v14 = *(v2 + 40);
    v13 = v6;
    v12 = v5;
    v7 = v6;
    v8 = *(&v6 + 1) + v6;
    PCString::~PCString(&v11);
    if (v7 <= v4 && v8 > v4)
    {
      break;
    }

    v2 += 48;
    if (v2 == v3)
    {
      return -1;
    }
  }

  return v7;
}

void TXTranscriptionGenerator::didChangeString(TXTranscriptionGenerator *this)
{
  TXTextLayout::computeComposedCharacterIndices(this);
  TXTextLayout::updateStringTokenizer(this);
  if (TXTranscriptionGenerator::hasBlockSequencing(this))
  {
    (*(*this + 1104))(this);
  }

  else
  {
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 60976, *(this + 7623));
    *(this + 7622) = this + 60984;
    *(this + 60984) = 0u;
  }

  v2 = *(this + 151);
  if (v2 != (this + 1200))
  {
    v3 = MEMORY[0x277CC08F0];
    do
    {
      v4 = v2[2];
      if (v4)
      {
        if (v5)
        {
          v6 = v5;
          if (OZChannel::getValueAsInt((v5 + 29056), v3, 0.0) == 1)
          {
            if ((*(v6->var2 + 3))(&v6->var2, 1, 1))
            {
              OZChannelBase::setRangeName(v6, v7);
            }
          }
        }
      }

      v2 = v2[1];
    }

    while (v2 != (this + 1200));
  }
}

uint64_t TXTranscriptionGenerator::getNumWords(TXTranscriptionGenerator *this)
{
  StringPtr = TXChannelString::getStringPtr((this + 19048));
  v3 = PCString::size(StringPtr);
  return (*(*this + 720))(this, v3 - 1) + 1;
}

uint64_t TXTranscriptionGenerator::getWordIndex(PCString *this, signed int a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v27, v4);
  if (TXTranscriptionGenerator::hasBlockSequencing(this) && !this[7624].var0)
  {
    (this->var0[34].data)(this);
  }

  for (i = this[7623].var0; i; i = i->isa)
  {
    length_high = HIDWORD(i->length);
    if (length_high <= a2)
    {
      if (length_high >= a2)
      {
        v26 = a2;
        v28.var0 = &v26;
        v11 = *(std::__tree<std::__value_type<int,unsigned int>,std::__map_value_compare<int,std::__value_type<int,unsigned int>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&this[7622], &v26) + 8);
        goto LABEL_36;
      }

      i = (i + 8);
    }
  }

  TXChannelString::getString(this + 2381, &v28);
  v25 = PCString::createUniStr(&v28);
  PCString::~PCString(&v28);
  StringPtr = TXChannelString::getStringPtr(&this[2381]);
  v8 = PCString::size(StringPtr);
  v11 = 0;
  if (v8 && v25)
  {
    var0 = this[7624].var0;
    if (var0)
    {
      v26 = var0 - 1;
      v28.var0 = &v26;
      v10 = (*(std::__tree<std::__value_type<int,unsigned int>,std::__map_value_compare<int,std::__value_type<int,unsigned int>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&this[7622], &v26) + 8) + 1);
    }

    else
    {
      v10 = 0;
    }

    do
    {
      v11 = v10;
      if (var0 >= v8)
      {
        break;
      }

      v12 = v10 - 1;
      v13 = var0;
      while (1)
      {
        v14 = TXChannelString::getStringPtr(&this[2381]);
        CharacterAtIndex = CFStringGetCharacterAtIndex(*v14, v13);
        if (!TXCharacterSetIsWhitespaceOrNewline(CharacterAtIndex))
        {
          break;
        }

        v26 = v13;
        v28.var0 = &v26;
        *(std::__tree<std::__value_type<int,unsigned int>,std::__map_value_compare<int,std::__value_type<int,unsigned int>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&this[7622], &v26) + 8) = v12;
        v13 = (v13 + 1);
        if (v8 == v13)
        {
          goto LABEL_35;
        }
      }

      v16 = (this->var0[34].length)(this, v13, 1);
      if (v16 == -1)
      {
        break;
      }

      var0 = (v16 + v17);
      if (v16 + v17)
      {
        v18 = TXChannelString::getStringPtr(&this[2381]);
        v19 = CFStringGetCharacterAtIndex(*v18, var0 - 1);
        IsNewline = TXCharacterSetIsNewline(v19);
        v21 = v8 <= var0 || IsNewline;
        if ((v21 & 1) == 0)
        {
LABEL_28:
          while (1)
          {
            v22 = TXChannelString::getStringPtr(&this[2381]);
            v23 = CFStringGetCharacterAtIndex(*v22, var0);
            if (!TXCharacterSetIsPunctuation(v23))
            {
              break;
            }

            var0 = (var0 + 1);
            if (v8 == var0)
            {
              var0 = v8;
              break;
            }
          }
        }
      }

      else if (v8 > var0)
      {
        goto LABEL_28;
      }

      while (v13 < var0)
      {
        v26 = v13;
        v28.var0 = &v26;
        *(std::__tree<std::__value_type<int,unsigned int>,std::__map_value_compare<int,std::__value_type<int,unsigned int>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&this[7622], &v26) + 8) = v11;
        LODWORD(v13) = v13 + 1;
      }

      v10 = (v11 + 1);
    }

    while (var0 <= a2);
LABEL_35:
    MEMORY[0x2666E9ED0](v25, 0x1000C80BDFB0063);
  }

LABEL_36:
  OZLockingGroup::WriteSentry::~WriteSentry(v27);
  return v11;
}

void TXTranscriptionGenerator::computeWordIndices(TXTranscriptionGenerator *this)
{
  v1 = this + 65440;
  v2 = this + 60976;
  v3 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v28, v3);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v2, *(v2 + 1));
  *v2 = v2 + 8;
  *(v2 + 2) = 0;
  *(v2 + 1) = 0;
  v4 = &v19;
  v19 = 0;
  v20 = &v19;
  v21 = 0x4812000000;
  v22 = __Block_byref_object_copy__14;
  v23 = __Block_byref_object_dispose__14;
  v24 = &unk_260C3B1FE;
  v26 = 0;
  v27 = 0;
  __p = 0;
  v5 = *v1;
  v6 = *(v1 + 1);
  if (*v1 == v6)
  {
    v12 = 0;
  }

  else
  {
    do
    {
      var0 = v5[3].var0;
      v8 = v5[4].var0;
      PCString::PCString(&v29, v5);
      v10 = PCString::ns_str(v9);
      PCString::~PCString(&v29);
      v11 = [(__CFString *)v10 length];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = *"";
      v18[2] = ___ZN24TXTranscriptionGenerator18computeWordIndicesEv_block_invoke;
      v18[3] = &unk_279AA8290;
      v18[5] = var0;
      v18[6] = v8;
      v18[4] = &v19;
      [(__CFString *)v10 enumerateSubstringsInRange:0 options:v11 usingBlock:3, v18];
      v5 += 6;
    }

    while (v5 != v6);
    v4 = v20;
    v12 = v20[6];
  }

  v13 = v4[7];
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *v12;
      v16 = v12[1];
      if (*v12 < (v16 + *v12))
      {
        do
        {
          v17 = v15;
          v29.var0 = &v17;
          *(std::__tree<std::__value_type<int,unsigned int>,std::__map_value_compare<int,std::__value_type<int,unsigned int>,std::less<int>,true>,std::allocator<std::__value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v2, &v17) + 8) = v14;
          LODWORD(v15) = v15 + 1;
          --v16;
        }

        while (v16);
      }

      ++v14;
      v12 += 2;
    }

    while (v12 != v13);
  }

  *(v2 + 709) = v14;
  _Block_object_dispose(&v19, 8);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v28);
}

void sub_25FB46EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  OZLockingGroup::WriteSentry::~WriteSentry((v25 - 128));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__14(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__14(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN24TXTranscriptionGenerator18computeWordIndicesEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 40) + a5;
  v7 = *(*(a1 + 32) + 8);
  v9 = v7[7];
  v8 = v7[8];
  if (v9 >= v8)
  {
    v11 = v7[6];
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 4;
    v14 = v13 + 1;
    if ((v13 + 1) >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 3 > v14)
    {
      v14 = v15 >> 3;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
    v17 = 0xFFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector2<double>>>((v7 + 6), v17);
    }

    v18 = (16 * v13);
    *v18 = v6;
    v18[1] = a6;
    v10 = 16 * v13 + 16;
    memcpy(0, v11, v12);
    v19 = v7[6];
    v7[6] = 0;
    v7[7] = v10;
    v7[8] = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v9 = v6;
    *(v9 + 1) = a6;
    v10 = (v9 + 16);
  }

  v7[7] = v10;
}

unint64_t TXTranscriptionGenerator::getWordRange(TXTranscriptionGenerator *this, unsigned int a2, int a3)
{
  v6 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v12, v6);
  v7 = TXTGGetRangeOfWord(this, a2);
  v9 = v7;
  if ((a3 & 1) != 0 || v7 != a2)
  {
    if (a3)
    {
      v10 = v7 + v8;
      if (v7 + v8 == a2 && (*(*this + 216))(this) > a2)
      {
        goto LABEL_8;
      }
    }
  }

  else if (a2)
  {
    v10 = v7 + v8;
LABEL_8:
    v9 = TXTGGetRangeOfWord(this, v10);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v12);
  return v9;
}

void sub_25FB47138(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

CFIndex TXTranscriptionGenerator::suggestLineBreak(PCString *this, CTTypesetterRef typesetter, CFIndex startIndex, uint64_t a4, double a5)
{
  v8 = CTTypesetterSuggestLineBreak(typesetter, startIndex, a5);
  if (!TXTranscriptionGenerator::hasBlockSequencing(this))
  {
    v9 = a4 + startIndex;
    v10 = (v8 + a4 + startIndex);
    v11 = (this->var0[34].length)(this, v10, 1);
    v13 = v11;
    if (v11 != -1 && v10 > v11 && v10 < v11 + v12)
    {
      v16 = v11 - v9;
      if (v16 >= 1)
      {
        TXChannelString::getString(this + 2381, &v21);
        v17 = (this->var0[6].length)(this);
        PCString::substr(&v21, v13, v17 - v13, &v22.var0);
        v18 = PCString::ns_str(&v22);
        PCString::~PCString(&v22);
        PCString::~PCString(&v21);
        v19 = -[__CFString rangeOfString:](v18, "rangeOfString:", -[__CFString stringByTrimmingCharactersInSet:](v18, "stringByTrimmingCharactersInSet:", [MEMORY[0x277CCA900] whitespaceCharacterSet]));
        if (v19 != 0x7FFFFFFFFFFFFFFFLL)
        {
          return v19 + v16;
        }
      }
    }
  }

  return v8;
}

void sub_25FB472B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a9);
  _Unwind_Resume(a1);
}

void TXTranscriptionGenerator::deactivateWordSegment(TXTranscriptionGenerator *this, int a2, const CMTime *a3)
{
  v4 = this + 65416;
  v5 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v11, v5);
  v6 = *(v4 + 3);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 4) - v6) >> 4) > a2)
  {
    v7 = *(v6 + 48 * a2 + 44);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 1) - *v4) >> 4) > v7)
    {
      v8 = *v4 + 48 * v7;
      v10 = *(v8 + 40);
      v9 = (v8 + 40);
      if (v10 == 1)
      {
        *v9 = 0;
        v4[257] = 1;
      }
    }
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v11);
}

void TXTranscriptionGenerator::deactivateLineSegment(TXTranscriptionGenerator *this, int a2, CMTime *a3)
{
  v6 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v11, v6);
  TXTranscriptionGenerator::getActiveTranscriptionByLine(this, a3);
  v7 = *(this + 8186);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 8187) - v7) >> 4) > a2)
  {
    v8 = v7 + 48 * a2;
    v10 = *(v8 + 40);
    v9 = (v8 + 40);
    if (v10 == 1)
    {
      *v9 = 0;
      ++*(this + 15952);
      *(this + 65673) = 1;
    }
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v11);
}

void sub_25FB4743C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTranscriptionGenerator::deactivateBlock(TXTranscriptionGenerator *this, unsigned int a2)
{
  v4 = this + 63808;
  v5 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v12, v5);
  v6 = *(v4 + 216);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 217) - v6) >> 4) > a2)
  {
    v7 = *(v6 + 48 * a2 + 44);
    v8 = *(v4 + 213);
    if (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 214) - v8) >> 4) > v7)
    {
      v9 = v8 + 48 * v7;
      v11 = *(v9 + 40);
      v10 = (v9 + 40);
      if (v11 == 1)
      {
        *v10 = 0;
        *v4 += TXTextLayout::getNumLinesInParagraphBounds(this);
        v4[1865] = 1;
      }
    }
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v12);
}

void sub_25FB47528(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTranscriptionGenerator::scaleToBothMargins(TXTranscriptionGenerator *this, CMTime *a2)
{
  TXTextLayout::getVisibleCharacterRange(this, a2, &v19);
  v4 = v20;
  if (v20 && (v19 != *(this + 16428) || v20 != *(this + 16429)))
  {
    if ((this + 65712) != &v19)
    {
      *(this + 16428) = v19;
      *(this + 16429) = v4;
    }

    isVerticalLayout = TXTextLayout::isVerticalLayout(this);
    v6 = 24424;
    if (isVerticalLayout)
    {
      v6 = 24576;
      v7 = 24728;
    }

    else
    {
      v7 = 24272;
    }

    v8 = MEMORY[0x277CC08F0];
    v9 = 0.0;
    OZChannel::getValueAsDouble((this + v6), MEMORY[0x277CC08F0], 0.0);
    v11 = v10;
    OZChannel::getValueAsDouble((this + v7), v8, 0.0);
    v13 = v11 - v12;
    v14 = *(this + 8210);
    *(this + 8210) = 0x3FF0000000000000;
    v15 = 100;
    v16 = 1.0;
    do
    {
      v17 = TXTranscriptionGenerator::stringInRangeFitsInParagraphWidth(this, &v19, a2, v13);
      v18 = *(this + 8210);
      if (v17)
      {
        if (v18 == 1.0)
        {
          if (v14 != 1.0)
          {
            TXTextLayout::setAllParagraphsDirty(this);
            TXTextLayout::doLayoutForParagraphs(this, v13, a2);
          }

          return;
        }

        if (v16 - v9 < 0.001)
        {
          return;
        }
      }

      else
      {
        v16 = *(this + 8210);
        v18 = v9;
      }

      *(this + 8210) = (v16 + v18) * 0.5;
      TXTextLayout::setAllParagraphsDirty(this);
      TXTextLayout::doLayoutForParagraphs(this, v13, a2);
      v9 = v18;
      --v15;
    }

    while (v15);
  }
}

BOOL TXTranscriptionGenerator::stringInRangeFitsInParagraphWidth(PCString *a1, int *a2, CMTime *a3, double a4)
{
  v8 = a1 + 7168;
  v9 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v36, v9);
  if (v8[185].var0 == v8[186].var0)
  {
    v18 = 1;
    goto LABEL_24;
  }

  v10 = *a2;
  v11 = a2[1];
  TXChannelString::getString(a1 + 2381, &v34);
  PCString::substr(&v34, v10, v11, &v35.var0);
  PCString::~PCString(&v34);
  var0 = v8[185].var0;
  isa = var0->isa;
  info = var0->info;
  if (info)
  {
    atomic_fetch_add_explicit(&info->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = isa[33];
  if (v15)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  var8 = v17[3].var8;
  var9 = v17[3].var9;
  if (var9)
  {
    atomic_fetch_add_explicit(&var9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (var8)
  {
    if (v21)
    {
      v22 = v21;
      if (!var9)
      {
        v24 = 0;
        goto LABEL_17;
      }

      atomic_fetch_add_explicit(&var9->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = var9;
      goto LABEL_16;
    }
  }

  v23 = 0;
  v22 = 0;
  v24 = 0;
  if (var9)
  {
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](var9);
    v24 = v23;
  }

LABEL_17:
  v34 = *a3;
  Size = TXTextStyle::getSize(v17, &v34, 0.0);
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFAttributedStringBeginEditing(Mutable);
  v27 = PCString::cf_str(&v35);
  v37.location = 0;
  v37.length = 0;
  CFAttributedStringReplaceString(Mutable, v37, v27);
  v28 = PCString::cf_str(v22 + 2);
  v29 = CTFontCreateWithName(v28, Size, 0);
  v38.location = 0;
  v38.length = v11;
  CFAttributedStringSetAttribute(Mutable, v38, *MEMORY[0x277CC4838], v29);
  LODWORD(v34.value) = 0;
  v30 = CFNumberCreate(0, kCFNumberIntType, &v34);
  v39.length = CFAttributedStringGetLength(Mutable);
  v39.location = 0;
  CFAttributedStringSetAttribute(Mutable, v39, *MEMORY[0x277CC49F0], v30);
  CFRelease(v30);
  CFAttributedStringEndEditing(Mutable);
  v31 = CTTypesetterCreateWithAttributedString(Mutable);
  v32 = CTTypesetterSuggestLineBreak(v31, 0, a4);
  CFRelease(v29);
  CFRelease(v31);
  CFRelease(Mutable);
  v18 = v32 == v11;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (info)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](info);
  }

  PCString::~PCString(&v35);
LABEL_24:
  OZLockingGroup::WriteSentry::~WriteSentry(v36);
  return v18;
}

void sub_25FB479E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCString a13, char a14)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    if (!v15)
    {
LABEL_3:
      if (!v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  if (!v14)
  {
LABEL_5:
    PCString::~PCString(&a13);
    OZLockingGroup::WriteSentry::~WriteSentry(&a14);
    _Unwind_Resume(a1);
  }

LABEL_4:
  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  goto LABEL_5;
}

uint64_t TXTranscriptionGenerator::getAlignmentOffset(TXTranscriptionGenerator *this, double *a2, double *a3, const OZRenderState *a4)
{
  v7 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 24728), MEMORY[0x277CC08F0], 0.0);
  v9 = v8;
  OZChannel::getValueAsDouble((this + 24576), v7, 0.0);
  v11 = v10;
  OZChannel::getValueAsDouble((this + 24272), v7, 0.0);
  *a2 = v12;
  if (OZChannel::getValueAsInt((this + 21368), v7, 0.0) != 2)
  {
    if (OZChannel::getValueAsInt((this + 21368), MEMORY[0x277CC08F0], 0.0))
    {
      return 0;
    }

    v9 = *(this + 8220);
    if (fabs(v9) < 0.0000001)
    {
      v9 = v11 - **(**(this + 2378) + 888);
      *(this + 8220) = v9;
    }
  }

  *a3 = v9;
  return 0;
}

BOOL TXTranscriptionGenerator::isUsingSubstituteFont(PCString *this)
{
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFAttributedStringBeginEditing(Mutable);
  v3 = PCString::cf_str(this + 8208);
  v27.location = 0;
  v27.length = 0;
  CFAttributedStringReplaceString(Mutable, v27, v3);
  TXTextLayout::getStyleAtCharOffset(this, 0, &v25);
  v24.location = 0;
  v24.length = PCString::size(this + 8208);
  ValueAsInt = OZChannel::getValueAsInt((v25 + 5504), MEMORY[0x277CC08F0], 0.0);
  v22 = v25;
  v23 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TXTextLayout::applyFontToAttributedString(this, Mutable, &v22, &v24, MEMORY[0x277CC08F0], ValueAsInt != 0);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  CFAttributedStringEndEditing(Mutable);
  v5 = CTLineCreateWithAttributedString(Mutable);
  GlyphRuns = CTLineGetGlyphRuns(v5);
  Count = CFArrayGetCount(GlyphRuns);
  cf = v5;
  if (Count < 1)
  {
    v10 = 0;
  }

  else
  {
    v8 = 0;
    v9 = *MEMORY[0x277CC4838];
    v10 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v8);
      Attributes = CTRunGetAttributes(ValueAtIndex);
      location = CTRunGetStringRange(ValueAtIndex).location;
      Attribute = CFAttributedStringGetAttribute(Mutable, location, v9, 0);
      Value = CFDictionaryGetValue(Attributes, v9);
      v16 = CTFontCopyPostScriptName(Attribute);
      v17 = CTFontCopyPostScriptName(Value);
      v18 = v17;
      v19 = 0;
      if (v16 && v17)
      {
        if (CFStringCompare(v16, v17, 0))
        {
          v19 = !OZIsFontAppleColorEmoji(Value);
        }

        else
        {
          v19 = 0;
        }
      }

      CFRelease(v16);
      CFRelease(v18);
      if (v19)
      {
        break;
      }

      v10 = ++v8 < Count;
    }

    while (Count != v8);
  }

  CFRelease(cf);
  CFRelease(Mutable);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  return v10;
}

void sub_25FB47D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void TXTranscriptionGenerator::setLocaleIdentifier(TXTranscriptionGenerator *this, const __CFString *a2)
{
  *(this + 8221) = a2;
  v3 = CFLocaleCreate(0, a2);
  TXTextLayout::setLocale(this, v3);

  CFRelease(v3);
}

uint64_t TXTranscriptionGenerator::setDynamicLineSpacingForDiacritics(uint64_t this, double a2)
{
  if (*(this + 65784) < a2)
  {
    *(this + 65784) = a2;
    *(this + 64400) = a2;
  }

  return this;
}

CGColorSpace **TXTranscriptionGenerator::getSequencedColor@<X0>(TXTranscriptionGenerator *this@<X0>, const CMTime *a2@<X1>, PCColor *a3@<X2>, double a4@<D0>, uint64_t a5@<X8>)
{
  v10 = *&a3->var0.var1[1];
  *a5 = *&a3->var0.var0;
  *(a5 + 16) = v10;
  *(a5 + 32) = *&a3->var0.var1[3];
  obj = a3->var1._obj;
  *(a5 + 48) = obj;
  v12 = (a5 + 48);
  if (obj)
  {
    PCCFRefTraits<CGColorSpace *>::retain(obj);
  }

  result = OZChannelBase::isEnabled((this + 28720), 0, 1);
  if (result)
  {
    v14 = (*(*this + 720))(this, a4);
    v19 = *&a2->value;
    epoch = a2->epoch;
    time1 = *a2;
    time2 = *(this + 65800);
    if (CMTimeCompare(&time1, &time2) || v14 != *(this + 16456))
    {
      if ((*(this + 65888) & 1) == 0)
      {
        time1 = *a2;
        OZChannelColorNoAlpha::setColor((this + 28720), &time1, a3, 1);
        *(this + 65888) = 1;
      }

      time1 = *a2;
      OZChannelColorNoAlpha::getColor((this + 28720), &time1, a5, a4);
      *(this + 65800) = v19;
      *(this + 8227) = epoch;
      *(this + 16456) = v14;
      v18 = *(a5 + 16);
      *(this + 65832) = *a5;
      *(this + 65848) = v18;
      v17 = (this + 65880);
      v16 = v12;
      *(this + 65864) = *(a5 + 32);
    }

    else
    {
      v15 = *(this + 65848);
      *a5 = *(this + 65832);
      *(a5 + 16) = v15;
      *(a5 + 32) = *(this + 65864);
      v16 = (this + 65880);
      v17 = v12;
    }

    return PCCFRef<CGColorSpace *>::operator=(v17, v16);
  }

  return result;
}

double TXTranscriptionGenerator::getSequencedOpacity(TXTranscriptionGenerator *this, OZChannel *a2, OZChannel *a3, const CMTime *a4, double a5, double a6)
{
  v12 = (*(*this + 720))(this, a6);
  v19 = *a4;
  var3 = a3->var3;
  if (var3 == 1009)
  {
    v14 = (this + 65896);
  }

  else
  {
    if (var3 != 1022)
    {
      return a5;
    }

    v14 = (this + 65944);
  }

  time1 = *a4;
  time2 = *v14;
  if (!CMTimeCompare(&time1, &time2) && v12 == *(v14 + 6))
  {
    return v14[4];
  }

  if ((v14[5] & 1) == 0)
  {
    (*(a3->var0 + 89))(a3, a4, 1, a5);
    *(v14 + 40) = 1;
  }

  OZChannel::getValueAsDouble(a3, a4, a6);
  v16 = v15;
  OZChannel::getValueAsDouble(a2, a4, a6);
  a5 = v16 * v17;
  *v14 = v19;
  *(v14 + 6) = v12;
  v14[4] = a5;
  return a5;
}

void OZChannelUint32::OZChannelUint32(OZChannelUint32 *this, int a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannelUint32_FactoryBase = getOZChannelUint32_FactoryBase();
  OZChannel::OZChannel(this, OZChannelUint32_FactoryBase, a3, a4, a5, a6, a7, a8);
  this->var0 = &unk_287246400;
  this->var2 = &unk_287246760;
  OZChannelUint32Info = OZChannelUint32::createOZChannelUint32Info(v17);
  if (a8)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelUint32::_OZChannelUint32Info;
    this->var17 = OZChannelUint32::_OZChannelUint32Info;
  }

  this->var16 = var17;
  OZChannelUint32::createOZChannelUint32Impl(OZChannelUint32Info);
  if (a7)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelUint32::_OZChannelUint32Impl;
    this->var15 = OZChannelUint32::_OZChannelUint32Impl;
  }

  this->var14 = var15;
  OZChannel::setDefaultValue(this, a2);
  OZChannel::setInitialValue(this, a2, 0);
}

void std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        PCString::~PCString(v4 - 6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<TXTranscriptionSegment>::__init_with_size[abi:ne200100]<TXTranscriptionSegment*,TXTranscriptionSegment*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TXTranscriptionSegment>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FB484D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<TXTranscriptionSegment>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TXTranscriptionSegment>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TXTranscriptionSegment>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

PCString *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<TXTranscriptionSegment>,TXTranscriptionSegment*,TXTranscriptionSegment*,TXTranscriptionSegment*>(int a1, PCString *a2, PCString *a3, PCString *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      PCString::PCString(this, v6);
      v8 = *&v6[1].var0;
      v9 = *&v6[3].var0;
      this[5].var0 = v6[5].var0;
      *&this[3].var0 = v9;
      *&this[1].var0 = v8;
      v6 += 6;
      this += 6;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_25FB48610(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 48);
    do
    {
      PCString::~PCString(v4);
      v4 = (v5 - 48);
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<TXTranscriptionSegment>::__emplace_back_slow_path<TXTranscriptionSegment const&>(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TXTranscriptionSegment>>(a1, v6);
  }

  v16 = 0;
  v17 = 48 * v2;
  v18 = 48 * v2;
  PCString::PCString((48 * v2), a2);
  v7 = *(a2 + 8);
  v8 = *(a2 + 24);
  *(v9 + 40) = *(a2 + 40);
  *(v9 + 24) = v8;
  *(v9 + 8) = v7;
  *&v18 = v18 + 48;
  v10 = *(a1 + 8);
  v11 = (v17 + *a1 - v10);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TXTranscriptionSegment>,TXTranscriptionSegment*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<TXTranscriptionSegment>::~__split_buffer(&v16);
  return v15;
}

void sub_25FB48768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TXTranscriptionSegment>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TXTranscriptionSegment>,TXTranscriptionSegment*>(int a1, PCString *a2, PCString *a3, PCString *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      PCString::PCString(this, v8);
      v9 = *&v8[1].var0;
      v10 = *&v8[3].var0;
      this[5].var0 = v8[5].var0;
      *&this[3].var0 = v10;
      *&this[1].var0 = v9;
      v8 += 6;
      this += 6;
      v7 -= 48;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      PCString::~PCString(v6);
      v6 += 6;
    }
  }
}

void sub_25FB48814(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 48);
    do
    {
      PCString::~PCString(v4);
      v4 = (v5 - 48);
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<TXTranscriptionSegment>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    PCString::~PCString((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<TXTranscriptionSegment>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        PCString::~PCString(v3 - 6);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void TXCoreTextGlyph::TXCoreTextGlyph(TXCoreTextGlyph *this, __int16 a2, __int16 a3, TXFont *a4)
{
  TXTextureGlyph::TXTextureGlyph(this, a2, a3, a4);
  *v4 = &unk_2871F8948;
  *(v4 + 156) = 1;
}

void TXCoreTextGlyph::~TXCoreTextGlyph(TXCoreTextGlyph *this)
{
  TXTextureGlyph::~TXTextureGlyph(this);

  JUMPOUT(0x2666E9F00);
}

__n128 TXCoreTextGlyph::getBounds(TXTextureGlyph *a1, uint64_t a2, uint64_t a3)
{
  GlyphRep = TXCoreTextGlyph::getGlyphRep(a1, a3);
  result = *(GlyphRep + 16);
  *a2 = *GlyphRep;
  *(a2 + 16) = result;
  return result;
}

uint64_t TXCoreTextGlyph::getGlyphRep(TXTextureGlyph *a1, uint64_t a2)
{
  TXCoreTextGlyph::getCacheHashKey(a1);
  CachedMetrics = TXTextureGlyph::getCachedMetrics(a1, &v8);
  if (!CachedMetrics)
  {
    TXCoreTextGlyph::makeTextureGlyphRep(a1, a2);
  }

  v5 = CachedMetrics;
  v6 = *(a2 + 24);
  if (v6 && *(a2 + 38) == 1)
  {
    PCMatrix33Tmpl<double>::operator=(v6, v5 + 88);
  }

  return v5;
}

double TXCoreTextGlyph::getPivot(TXTextureGlyph *a1, void *a2, double *a3, uint64_t a4)
{
  GlyphRep = TXCoreTextGlyph::getGlyphRep(a1, a4);
  *a2 = *(GlyphRep + 32);
  result = *(GlyphRep + 40);
  *a3 = result;
  return result;
}

void TXCoreTextGlyph::getCacheHashKey(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v10[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v10);
  PCHashWriteStream::reset(v10);
  PCHashWriteStream::writeValue(v10, *(v4 + 8));
  v7 = (*(**(v4 + 16) + 16))(*(v4 + 16));
  PCHashWriteStream::writeValue(v10, v7);
  PCHashWriteStream::writeValue(v10, *(v3 + 32));
  PCHashWriteStream::writeValue(v10, *v3);
  PCHashWriteStream::writeValue(v10, *(v3 + 8));
  PCHashWriteStream::writeValue(v10, *(v3 + 16));
  PCHashWriteStream::writeValue(v10, *(v3 + 36));
  v8 = *(v3 + 24);
  if (v8)
  {
    v9 = v8[4];
    PCHashWriteStream::writeValue(v10, floor(*v8 * 64.0 + 0.0000001) * 0.015625);
    PCHashWriteStream::writeValue(v10, floor(v9 * 64.0 + 0.0000001) * 0.015625);
  }

  PCHashWriteStream::close(v10);
  *v6 = *PCHashWriteStream::getHash(v10)->i8;
  PCHashWriteStream::~PCHashWriteStream(v10);
}

void TXCoreTextGlyph::getBitmapRenderParams(uint64_t a1@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v7 = *(a1 + 16);
  v8 = (v7->var0->data)(v7);
  v28 = 0;
  v29[0] = 0.0;
  v26[0] = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v26[1] = _Q0;
  v27 = 0;
  v25 = 0.0;
  v24 = 0;
  TXGetGlyphBitmapInfo(v6, v7, *(a2 + 8), a3, v29, *(a2 + 24), v26, &v25, *a2, *(a2 + 16), &v24, *(a2 + 36));
  v14 = *a2;
  LOBYTE(v6) = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = v29[0];
  v17 = v25;
  v18 = v24;
  v19 = *(a2 + 24);
  v20 = *(a2 + 37);
  v21 = CGColorSpaceUsesExtendedRange(*(a2 + 40));
  PCString::PCString(&v23, v7 + 14);
  TXCGRenderParams::TXCGRenderParams(a4, a2, v8, v6, a3, v18, v19, v26, v14, v15, v16, v17, v20, v21, 0, &v23, v7[15].var0);
  PCString::~PCString(&v23);
}

void TXCoreTextGlyph::getBitmap(OZCacheManager *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, void *a6@<X8>)
{
  OZCacheManager::Instance(a1);
  TXCoreTextGlyph::getCacheHashKey(a1);
  OZCacheManager::getImageForKey(v19, a6);
  v12 = *(a3 + 24);
  if (v12)
  {
    v13 = floor(v12[4] * 64.0 + 0.0000001) * 0.015625;
    *v12 = floor(*v12 * 64.0 + 0.0000001) * 0.015625;
    v12[4] = v13;
  }

  if (*a6 && (a5 & 1) != 0)
  {
    if (a2)
    {
      if (a4)
      {
        (*(*a1 + 16))(a1, a2, a3);
      }

      else
      {
        (*(*a1 + 40))(v14, a1, a3, a2);
        TXCGRenderParams::~TXCGRenderParams(v14);
      }
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    (*(*a1 + 40))(v14, a1, a3, a2);
    TXDrawGlyphToBitmap(v14, *(a3 + 40), &v18);
    if (v18)
    {
      if (v15 == 1)
      {
        if (v16)
        {
          operator new();
        }

        operator new();
      }

      if (v16)
      {
        operator new();
      }

      operator new();
    }

    TXCGRenderParams::~TXCGRenderParams(v14);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v17);
  }
}

void sub_25FB493E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x2666E9F00](v8, 0x10A1C405CA75B9BLL);
  TXCGRenderParams::~TXCGRenderParams(va);
  PCCFRef<CGColorSpace *>::~PCCFRef((v9 - 112));
  v11 = *(v7 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void TXCoreTextGlyph::getHGBitmap(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  (*(*a1 + 40))(v23);
  v8 = *(a3 + 16);
  if (v8 >= 0.0)
  {
    v9 = *(a3 + 24);
    if (v9 >= 0.0)
    {
      v10 = v8;
      v11 = v9;
      v12 = HGRectMake4f(v7, 0.0, 0.0, v10, v11);
      v14 = v13;
      v15 = v24;
      v16 = v25;
      v17 = HGObject::operator new(0x80uLL);
      v18 = v17;
      if (v16)
      {
        v19 = 27;
      }

      else
      {
        v19 = 24;
      }

      if (v16)
      {
        v20 = 6;
      }

      else
      {
        v20 = 2;
      }

      if (v15)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

      HGBitmap::HGBitmap(v17, v12, v14, v21);
      if (v18)
      {
        *a4 = v18;
      }

      v26 = *(v18 + 8);
      v22 = 0;
      TXDrawGlyphToBitmap(v23, *(a2 + 40), v18 + 10);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v22);
    }
  }

  TXCGRenderParams::~TXCGRenderParams(v23);
}

void sub_25FB495A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, CGColorSpace *);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  v4 = *v2;
  TXCGRenderParams::~TXCGRenderParams(va1);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  _Unwind_Resume(a1);
}

double TXCoreTextGlyph::getTexture@<D0>(OZCacheManager *a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, HGGPUComputeDevice **a5@<X5>, char a6@<W6>, EAGLContext *EAGLContext@<X7>, uint64_t *a8@<X8>)
{
  *a4 = 0;
  v15 = OZCacheManager::Instance(a1);
  TXCoreTextGlyph::getCacheHashKey(a1);
  OZCacheManager::getTextureForKey(v15, a5, v31, 0, a8);
  v16 = *a8;
  if (*a8)
  {
    if (a2)
    {
      (*(*a1 + 16))(a1, a2, a3);
    }

    HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
    v25 = OZHostApplicationDelegateHandler::wantsToUseCachedTextureForText(HostApplicationDelegate) ^ 1;
    if (!v16)
    {
      LOBYTE(v25) = 1;
    }

    if ((v25 & 1) == 0)
    {
      CachedMetrics = TXTextureGlyph::getCachedMetrics(a1, v31);
      if (CachedMetrics)
      {
        if (*(a3 + 24))
        {
          return PCMatrix33Tmpl<double>::operator=(*(a3 + 24), CachedMetrics + 88);
        }
      }
    }
  }

  else
  {
    v17 = *(a1 + 2);
    v18 = (v17->var0->data)(v17);
    v30 = 0;
    v29 = 0;
    v19 = CGColorSpaceUsesExtendedRange(*(a3 + 40));
    TXDrawGlyphToBitmap(a1, v17, v18, *(a3 + 8), *(a3 + 40), v19, &v30, a2, *a3, *(a3 + 16), &v29, *(a3 + 24), a6, 1);
    if (v30)
    {
      PCColorSpaceHandle::PCColorSpaceHandle(v28, *(a3 + 40));
      if (!EAGLContext)
      {
        v21 = PGGetPerThreadContext();
        ProGL::Private::ProgramHelper::getProgramContext(v21, v27);
        EAGLContext = ProGL::ContextHandle::getEAGLContext(v27);
        ProGL::ContextHandle::~ContextHandle(v27);
      }

      ProGL::CurrentContextSentry::CurrentContextSentry(v27, EAGLContext);
      if (a6)
      {
        if (v19)
        {
          v22 = 36193;
        }

        else
        {
          v22 = 5121;
        }

        PGMake2DTexture(a2[1].f64[0], a2[1].f64[1], v28, 0, 6408, v22, v30);
      }

      glPixelStorei(0xCF5u, 1);
      if (v19)
      {
        v23 = 36193;
      }

      else
      {
        v23 = 5121;
      }

      PGMake2DTexture(a2[1].f64[0], a2[1].f64[1], v28, 0, 6406, v23, v30);
    }
  }

  return result;
}

void sub_25FB499B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  ProGL::ContextHandle::~ContextHandle(va);
  PCCFRef<CGColorSpace *>::~PCCFRef(va1);
  v13 = *(a9 + 8);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(a1);
}

void TXCoreTextGlyph::makeTextureGlyphRep(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = *(a1 + 16);
  v5 = (v4->var0->data)(v4);
  v11[0] = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v11[1] = _Q0;
  TXDrawGlyphToBitmap(a1, v4, v5, *(a2 + 8), 0, 0, 0, v11, *a2, *(a2 + 16), &v12, *(a2 + 24), 0, 1);
  operator new();
}

void sub_25FB49C18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<PCBitmap>::shared_ptr[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>> *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>> *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_25FB49D20(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<PCBitmap>::shared_ptr[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>> *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>> *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_25FB49E28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<PCBitmap>::shared_ptr[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>> *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>> *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_25FB49F30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<PCBitmap>::shared_ptr[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>> *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>> *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void TXChannelAlignment::TXChannelAlignment(TXChannelAlignment *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = TXChannelAlignment_Factory::getInstance(this);
  OZCompoundChannel::OZCompoundChannel(this, Instance, a2, a3, a4, a5, 0, 0);
  *this = &unk_2871F8D78;
  *(this + 2) = &unk_2871F90C0;
  PCURL::PCURL(&v12, @"Text Layout Alignment Enum");
  PCURL::PCURL(&v11, @"Text Layout Alignment");
  OZChannelEnum::OZChannelEnum((this + 136), 0, &v12, &v11, this, 1u, 0, 0, 0);
  PCString::~PCString(&v11);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Text Layout Vertical Alignment Enum");
  PCURL::PCURL(&v11, @"Text Layout Vertical Alignment");
  OZChannelEnum::OZChannelEnum((this + 392), 0, &v12, &v11, this, 2u, 0, 0, 0);
  PCString::~PCString(&v11);
  PCString::~PCString(&v12);
}

void sub_25FB4A174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  OZChannelEnum::~OZChannelEnum((v12 + 136));
  OZCompoundChannel::~OZCompoundChannel(v12);
  _Unwind_Resume(a1);
}

void TXChannelAlignment::TXChannelAlignment(TXChannelAlignment *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3, a4, 0);
  *v5 = &unk_2871F8D78;
  v5[2] = &unk_2871F90C0;
  PCURL::PCURL(&v7, @"Text Layout Alignment Enum");
  PCURL::PCURL(&v6, @"Text Layout Alignment");
  OZChannelEnum::OZChannelEnum((this + 136), 0, &v7, &v6, this, 1u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Text Layout Vertical Alignment Enum");
  PCURL::PCURL(&v6, @"Text Layout Vertical Alignment");
  OZChannelEnum::OZChannelEnum((this + 392), 0, &v7, &v6, this, 2u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
}

void sub_25FB4A334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a11);
  PCString::~PCString(&a12);
  OZChannelEnum::~OZChannelEnum((v12 + 136));
  OZCompoundChannel::~OZCompoundChannel(v12);
  _Unwind_Resume(a1);
}

void TXChannelAlignment::TXChannelAlignment(TXChannelAlignment *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZCompoundChannel::OZCompoundChannel(this, a2, a3);
  *v5 = &unk_2871F8D78;
  v5[2] = &unk_2871F90C0;
  OZChannelEnum::OZChannelEnum((v5 + 17), &a2[1].var3, this);
  OZChannelEnum::OZChannelEnum((this + 392), &a2[3].var7, this);
}

void sub_25FB4A424(_Unwind_Exception *a1)
{
  OZChannelEnum::~OZChannelEnum((v1 + 136));
  OZCompoundChannel::~OZCompoundChannel(v1);
  _Unwind_Resume(a1);
}

void TXChannelAlignment::copy(TXChannelAlignment *this, const OZChannelBase *a2, char a3)
{
  v4 = a2;
  OZCompoundChannel::copy(this, a2);
  if (v4)
  {
  }

  OZChannelEnum::copy(this + 17, (v4 + 136), a3);

  OZChannelEnum::copy(this + 49, (v4 + 392), a3);
}

void non-virtual thunk toTXChannelAlignment::~TXChannelAlignment(TXChannelAlignment *this)
{
  TXChannelAlignment::~TXChannelAlignment((this - 16));
}

{
  TXChannelAlignment::~TXChannelAlignment((this - 16));

  JUMPOUT(0x2666E9F00);
}

void TXChannelString::TXChannelString(TXChannelString *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = TXChannelString_Factory::getInstance(this);
  OZChannelText::OZChannelText(this, Instance, a2, a3, a4, a5);
  *this = &unk_2871F9130;
  *(this + 2) = &unk_2871F94B8;
}

void TXChannelString::TXChannelString(TXChannelString *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelText::OZChannelText(this, a2, a3, a4);
  *v4 = &unk_2871F9130;
  v4[2] = &unk_2871F94B8;
}

void TXChannelString::TXChannelString(TXChannelString *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelText::OZChannelText(this, a2, a3);
  *v3 = &unk_2871F9130;
  v3[2] = &unk_2871F94B8;
}

void TXChannelString::setString(OZChannelBase *this, PCString a2, char a3, int a4)
{
  if (a4)
  {
    ObjectManipulator = OZChannelBase::getObjectManipulator(this);
    if (ObjectManipulator)
    {
    }

    v10 = *MEMORY[0x277CC08F0];
    v11 = *(MEMORY[0x277CC08F0] + 16);
    (*(*ObjectManipulator + 144))(ObjectManipulator, &v10, a2.var0);
  }

  else
  {
    PCString::PCString(&v9, a2.var0);
    v8.var0 = &v9;
    OZChannelText::setString(this, v8, a3);
    PCString::~PCString(&v9);
  }
}

void *TXChannelString::getString@<X0>(PCString *this@<X0>, PCString *a2@<X8>)
{
  v23 = &v23;
  v24 = &v23;
  v25 = 0;
  OZBehavior::GetBehaviorsAffectingChannel(this, &v23, 1);
  for (i = v24; i != &v23; i = i[1])
  {
    v4 = i[2];
    if (v4)
    {
      if (v5)
      {
        v6 = v5;
        if (OZBehavior::isEnabledAndUseBehaviors(v5))
        {
          ChanBase = OZSingleChannelBehavior::getChanBase(v6);
          SourceChannel = OZLinkBehavior::getSourceChannel(v6);
          if (SourceChannel)
          {
            if (v8)
            {
              v11 = v10;
              if (v10)
              {
                ObjectManipulator = OZChannelBase::getObjectManipulator(v8);
                v14 = OZChannelBase::getObjectManipulator(v11);
                if (v14)
                {
                  if (v13)
                  {
                    v16 = v15;
                    if (v15)
                    {
                      v17 = (*(v13[25] + 640))(v13 + 25);
                      OZChannelRef::OZChannelRef(v22, v8, v17);
                      v18 = (*(v16[25] + 640))(v16 + 25);
                      OZChannelRef::OZChannelRef(v21, v11, v18);
                      if (OZChannelRef::operator==(v22, v21))
                      {
                        (*(v11->var0 + 106))(v11);
                        OZChannelRef::~OZChannelRef(v21);
                        OZChannelRef::~OZChannelRef(v22);
                        return std::__list_imp<unsigned int>::clear(&v23);
                      }

                      OZChannelRef::~OZChannelRef(v21);
                      OZChannelRef::~OZChannelRef(v22);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  PCString::PCString(a2, this + 19);
  return std::__list_imp<unsigned int>::clear(&v23);
}

void sub_25FB4AB80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void *);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  OZChannelRef::~OZChannelRef(va);
  OZChannelRef::~OZChannelRef(va1);
  std::__list_imp<unsigned int>::clear(va2);
  _Unwind_Resume(a1);
}

char *TXChannelString::getStringPtr(TXChannelString *this)
{
  v24 = &v24;
  v25 = &v24;
  v26 = 0;
  OZBehavior::GetBehaviorsAffectingChannel(this, &v24, 1);
  v2 = v25;
  if (v25 == &v24)
  {
LABEL_21:
    v21 = this + 152;
  }

  else
  {
    while (1)
    {
      v3 = v2[2];
      if (v3)
      {
        if (v4)
        {
          v5 = v4;
          if (OZBehavior::isEnabledAndUseBehaviors(v4))
          {
            ChanBase = OZSingleChannelBehavior::getChanBase(v5);
            SourceChannel = OZLinkBehavior::getSourceChannel(v5);
            if (SourceChannel)
            {
              if (v7)
              {
                v10 = v9;
                if (v9)
                {
                  ObjectManipulator = OZChannelBase::getObjectManipulator(v7);
                  v13 = OZChannelBase::getObjectManipulator(v10);
                  if (v13)
                  {
                    if (v12)
                    {
                      v15 = v14;
                      if (v14)
                      {
                        v16 = (*(v12[25] + 640))(v12 + 25);
                        OZChannelRef::OZChannelRef(v23, v7, v16);
                        v17 = (*(v15[25] + 640))(v15 + 25);
                        OZChannelRef::OZChannelRef(v22, v10, v17);
                        v18 = OZChannelRef::operator==(v23, v22);
                        v19 = v18;
                        if (v18)
                        {
                          v21 = (*(v10->var0 + 107))(v10);
                        }

                        OZChannelRef::~OZChannelRef(v22);
                        OZChannelRef::~OZChannelRef(v23);
                        if (v19)
                        {
                          break;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v2 = v2[1];
      if (v2 == &v24)
      {
        goto LABEL_21;
      }
    }
  }

  std::__list_imp<unsigned int>::clear(&v24);
  return v21;
}

void sub_25FB4AF00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void *);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  OZChannelRef::~OZChannelRef(va);
  OZChannelRef::~OZChannelRef(va1);
  std::__list_imp<unsigned int>::clear(va2);
  _Unwind_Resume(a1);
}

void TXChannelString::~TXChannelString(OZChannelText *this)
{
  OZChannelText::~OZChannelText(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXChannelString::~TXChannelString(TXChannelString *this)
{
  OZChannelText::~OZChannelText((this - 16));
}

{
  OZChannelText::~OZChannelText((this - 16));

  JUMPOUT(0x2666E9F00);
}

void TXBackgroundRectImageSource::TXBackgroundRectImageSource(TXBackgroundRectImageSource *this)
{
  *(this + 13) = &unk_2872DEA38;
  *(this + 14) = 0;
  *(this + 120) = 1;
  LiImageSource::LiImageSource(this, &off_2871F9618);
  *this = &unk_2871F9530;
  *(this + 13) = &unk_2871F95F8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 2) = _Q0;
  PCColor::PCColor((this + 48));
}

void sub_25FB4B0B8(_Unwind_Exception *a1)
{
  OZChannelBase::setRangeName(v1, &off_2871F9618);
  *(v1 + 104) = v2;
  *(v1 + 120) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void TXBackgroundRectImageSource::getHelium(TXBackgroundRectImageSource *this, LiAgent *a2)
{
  HGRectMake4i(*(this + 2), *(this + 3), *(this + 4) + *(this + 2), *(this + 5) + *(this + 3));
  v2 = HGObject::operator new(0x1B0uLL);
  HgcTXPremulColor::HgcTXPremulColor(v2);
}

void TXBackgroundRectImageSource::~TXBackgroundRectImageSource(TXBackgroundRectImageSource *this)
{
  *this = &unk_2871F9530;
  *(this + 13) = &unk_2871F95F8;
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 12);
  OZChannelBase::setRangeName(this, &off_2871F9618);
  *(this + 13) = &unk_2872DEA38;
  *(this + 120) = 0;
  PCWeakCount::~PCWeakCount(this + 14);
}

{
  *this = &unk_2871F9530;
  *(this + 13) = &unk_2871F95F8;
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 12);
  OZChannelBase::setRangeName(this, &off_2871F9618);
  *(this + 13) = &unk_2872DEA38;
  *(this + 120) = 0;
  PCWeakCount::~PCWeakCount(this + 14);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toTXBackgroundRectImageSource::~TXBackgroundRectImageSource(TXBackgroundRectImageSource *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_2871F9530;
  *(v1 + 13) = &unk_2871F95F8;
  PCCFRef<CGColorSpace *>::~PCCFRef(v1 + 12);
  OZChannelBase::setRangeName(v1, &off_2871F9618);
  *(v1 + 13) = &unk_2872DEA38;
  v1[120] = 0;

  PCWeakCount::~PCWeakCount(v1 + 14);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_2871F9530;
  *(v1 + 13) = &unk_2871F95F8;
  PCCFRef<CGColorSpace *>::~PCCFRef(v1 + 12);
  OZChannelBase::setRangeName(v1, &off_2871F9618);
  *(v1 + 13) = &unk_2872DEA38;
  v1[120] = 0;
  PCWeakCount::~PCWeakCount(v1 + 14);

  JUMPOUT(0x2666E9F00);
}

void HBackgroundColor::~HBackgroundColor(HGNode *this)
{
  HgcTXPremulColor::~HgcTXPremulColor(this);

  HGObject::operator delete(v1);
}

uint64_t TXGlyphGroup::TXGlyphGroup(uint64_t a1, _OWORD *a2, int a3, __int128 *a4)
{
  *a1 = *a2;
  *(a1 + 16) = a2[1];
  *(a1 + 32) = a2[2];
  v6 = a4[4];
  v7 = a4[5];
  v8 = a4[6];
  v9 = a4[7];
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[2];
  v13 = a4[3];
  *(a1 + 176) = 0;
  v14 = (a1 + 176);
  *(a1 + 80) = v12;
  *(a1 + 96) = v13;
  *(a1 + 48) = v10;
  *(a1 + 64) = v11;
  *(a1 + 144) = v8;
  *(a1 + 160) = v9;
  *(a1 + 112) = v6;
  *(a1 + 128) = v7;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  std::vector<unsigned int>::resize((a1 + 176), 0);
  v16 = *(a1 + 184);
  v15 = *(a1 + 192);
  if (v16 >= v15)
  {
    v18 = *v14;
    v19 = v16 - *v14;
    v20 = (v19 >> 2) + 1;
    if (v20 >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v21 = v15 - v18;
    if (v21 >> 1 > v20)
    {
      v20 = v21 >> 1;
    }

    v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
    v23 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v23 = v20;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v14, v23);
    }

    v24 = (4 * (v19 >> 2));
    *v24 = a3;
    v17 = v24 + 1;
    memcpy(0, v18, v19);
    v25 = *(a1 + 176);
    *(a1 + 176) = 0;
    *(a1 + 184) = v17;
    *(a1 + 192) = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v16 = a3;
    v17 = v16 + 1;
  }

  *(a1 + 184) = v17;
  return a1;
}

void sub_25FB4B73C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 184) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void TXGlyphGroup::~TXGlyphGroup(TXGlyphGroup *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    *(this + 23) = v2;
    operator delete(v2);
  }
}

void *std::vector<TXGlyphRender>::reserve(void *result, unint64_t a2)
{
  if (0x86BCA1AF286BCA1BLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x1AF286BCA1AF287)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TXGlyphRender>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25FB4B864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<TXGlyphRender>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void TXGlyphGroupRender::TXGlyphGroupRender(TXGlyphGroupRender *this, TXTextLayout *a2, const OZRenderParams *a3, unint64_t a4)
{
  *(this + 200) = &unk_2872DEA38;
  *(this + 201) = 0;
  *(this + 1616) = 1;
  LiImageSource::LiImageSource(this, &off_2871F9B18);
  *this = &unk_2871F9A30;
  *(this + 200) = &unk_2871F9AF8;
  *(this + 2) = a2;
  OZRenderParams::OZRenderParams((this + 24), a3);
  *(this + 183) = 0;
  *(this + 1448) = 0u;
  *(this + 199) = 0x3FF0000000000000;
  *(this + 194) = 0x3FF0000000000000;
  *(this + 189) = 0x3FF0000000000000;
  *(this + 184) = 0x3FF0000000000000;
  *(this + 1480) = 0u;
  *(this + 1496) = 0u;
  *(this + 95) = 0u;
  *(this + 96) = 0u;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  std::vector<TXGlyphRender>::reserve(this + 181, a4);
}

void sub_25FB4B98C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<TXGlyphRender>::__destroy_vector::operator()[abi:ne200100](va);
  OZRenderParams::~OZRenderParams((v2 + 24));
  OZChannelBase::setRangeName(v2, &off_2871F9B18);
  *(v2 + 1600) = v3;
  *(v2 + 1616) = 0;
  PCWeakCount::~PCWeakCount((v2 + 1608));
  _Unwind_Resume(a1);
}

uint64_t TXGlyphGroupRender::getHelium@<X0>(TXGlyphGroupRender *this@<X0>, LiAgent *a2@<X1>, void ***a3@<X8>)
{
  v6 = HGObject::operator new(0x280uLL);
  HGHWMultiBlend::HGHWMultiBlend(v6);
  (*(*v6 + 96))(v6, 5, 1.0, 0.0, 0.0, 0.0);
  v7 = *(a2 + 20);
  v8 = v7[3];
  v10 = *v7;
  v9 = v7[1];
  v80[2] = v7[2];
  v80[3] = v8;
  v80[0] = v10;
  v80[1] = v9;
  v11 = v7[7];
  v13 = v7[4];
  v12 = v7[5];
  v80[6] = v7[6];
  v80[7] = v11;
  v80[4] = v13;
  v80[5] = v12;
  v14 = *(this + 97);
  v79[4] = *(this + 96);
  v79[5] = v14;
  v15 = *(this + 99);
  v79[6] = *(this + 98);
  v79[7] = v15;
  v16 = *(this + 93);
  v79[0] = *(this + 92);
  v79[1] = v16;
  v17 = *(this + 95);
  v79[2] = *(this + 94);
  v79[3] = v17;
  PCMatrix44Tmpl<double>::invert(v79, v79, 0.0);
  PCMatrix44Tmpl<double>::rightMult(v80, v79);
  LiAgent::LiAgent(v78, a2);
  RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
  CGColorSpace = FxColorDescription::getCGColorSpace((*(a2 + 6) + 160));
  FxColorDescription::FxColorDescription(&v77, RequestedColorDescription, CGColorSpace);
  LiAgent::setRequestedColorDescription(v78, &v77);
  if (*(this + 129))
  {
    LiAgent::setFilterSize(v78, 1.0, 1.4142);
  }

  OZEaseInInterpolator::~OZEaseInInterpolator(&v77);
  v21 = v20;
  DynamicRange = FxColorDescription::getDynamicRange(&v77);
  ToneMapMethod = FxColorDescription::getToneMapMethod(&v77);
  PCWorkingColor::PCWorkingColor(&v75, v21, DynamicRange, ToneMapMethod);
  v55 = a2;
  v56 = a3;
  v59 = v6;
  v24 = Li3DEngineScene::sceneManager(*(this + 2));
  OZLockingGroup::WriteSentry::WriteSentry(v74, v24);
  v25 = *(this + 181);
  v26 = *(this + 182);
  v73 = 0;
  if (v25 != v26)
  {
    v60 = off_2871F4D68;
    __asm { FMOV            V0.4S, #1.0 }

    v57 = _Q0;
    v32 = 1;
    v58 = v26;
    while (1)
    {
      v33 = (v25 + 8);
      TXCachedGlyphRender::TXCachedGlyphRender(&v69, *(this + 2), (v25 + 8), (this + 24), *v25);
      v70[1].var0 = &v73;
      PCMatrix44Tmpl<double>::operator*(v80, (v25 + 24), &v65);
      LiAgent::setPixelTransform(v78, &v65);
      v64 = 1.0;
      TXCachedGlyphRender::getHelium(&v69, v78, &v64, 0, &v63);
      if (v63)
      {
        break;
      }

LABEL_32:
      v69.var0 = v61;
      *(&v69.var0 + *(v61 - 3)) = v60;
      PCSharedCount::~PCSharedCount(v70);
      OZRenderParams::~OZRenderParams(&v69.var5);
      if (v69.var4.var0)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v69.var4.var0);
      }

      OZChannelBase::setRangeName(&v69, &off_2871F4D48);
      v70[2].var0 = &unk_2872DEA38;
      v72 = 0;
      PCWeakCount::~PCWeakCount(&v71);
      v25 += 152;
      if (v25 == v26)
      {
        goto LABEL_35;
      }
    }

    v34 = *v25;
    if (*v25 == 1)
    {
      v38 = *v33;
      v65 = *(this + 1);
      if (TXTextObject::isOutlineVisible(v38, &v65, &v75, 0))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!v34)
      {
        v35 = *(*v33 + 33);
        if (v35)
        {
          v36 = *(v35 + 8);
          v37 = *(v35 + 16);
          if (v37)
          {
            atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v36 = 0;
          v37 = 0;
        }

        PCColor::PCColor(&v65.timescale);
        v40 = *(this + 2);
        ValueAsInt = OZChannel::getValueAsInt((v36 + 6088), MEMORY[0x277CC08F0], 0.0);
        LOBYTE(v65.value) = TXTextLayout::isColorAnimated(v40, (v36 + 6344), (v36 + 10152), ValueAsInt, 1008, 1009);
        v62 = *(this + 1);
        (*(*(v36 + 6344) + 832))(v36 + 6344, &v62, &v65.timescale);
        ColorSpaceID = OZChannelColorNoAlpha::getColorSpaceID((v36 + 6344));
        WorkingColorSpace = OZRenderParams::getWorkingColorSpace((this + 24));
        v68 = PCColorSpaceCache::identifyColorSpace(WorkingColorSpace, v43);
        v44 = *v33;
        v62 = *(this + 1);
        isFaceVisible = TXTextObject::isFaceVisible(v44, &v62, &v75, &v65.timescale, v68, ColorSpaceID);
        PCCFRef<CGColorSpace *>::~PCCFRef(&v66);
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        v26 = v58;
        v6 = v59;
        if ((isFaceVisible & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_20:
        v65.value = 0;
        *&v65.timescale = 0;
        isEmoji = TXTextObject::isEmoji(*v33);
        if (isEmoji)
        {
          v47 = v57;
        }

        else
        {
          *&v47 = v75.n128_u64[0];
          DWORD2(v47) = v75.n128_u32[2];
        }

        HIDWORD(v47) = v75.n128_u32[3];
        *&v65.value = v47;
        if (*v25 == 2)
        {
          v48 = v63;
          v49 = *v6;
          v50 = 37;
        }

        else
        {
          v48 = v63;
          v49 = *v6;
          if (((v34 == 3) & isEmoji) == 1)
          {
            (*(v49 + 624))(v6, v32, v63, 9, 1.0);
LABEL_29:
            v32 = (v32 + 1);
            goto LABEL_30;
          }

          v50 = 36;
        }

        (*(v49 + 648))(v6, v32, v48, v50, &v65);
        goto LABEL_29;
      }

      if (v34 != 3)
      {
        goto LABEL_20;
      }

      v39 = *v33;
      v65 = *(this + 1);
      if (TXTextObject::isDropShadowVisible(v39, &v65, &v75))
      {
        goto LABEL_20;
      }
    }

LABEL_30:
    if (v63)
    {
      (*(*v63 + 24))(v63);
    }

    goto LABEL_32;
  }

LABEL_35:
  *v56 = v6;
  (*(*v6 + 16))(v6);
  if ((LiAgent::isDynamicRangeTrackingRender(v55) & 1) == 0 && OZRenderParams::isRenderForHDR_Deprecated((this + 24)))
  {
    v51 = OZRenderParams::getWorkingColorSpace((this + 24));
    FxApplySDRToHDR(v56, v51, 1, &v69);
    v52 = *v56;
    var0 = v69.var0;
    if (*v56 == v69.var0)
    {
      if (v52)
      {
        (*(*v69.var0 + 3))(v69.var0);
      }
    }

    else
    {
      if (v52)
      {
        (*(*v52 + 3))(v52);
        var0 = v69.var0;
      }

      *v56 = var0;
    }
  }

  LiAgent::setActualColorDescription(v55, &v77);
  OZLockingGroup::WriteSentry::~WriteSentry(v74);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v76);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v77._pcColorDesc._colorSpaceRef._obj);
  LiAgent::~LiAgent(v78);
  return (*(*v6 + 24))(v6);
}

void sub_25FB4C14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  if (a41)
  {
    (*(*a41 + 24))(a41);
  }

  if (*a10)
  {
    (*(**a10 + 24))(*a10);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(&STACK[0x6F8]);
  PCCFRef<CGColorSpace *>::~PCCFRef(&STACK[0x710]);
  PCCFRef<CGColorSpace *>::~PCCFRef(&STACK[0x730]);
  LiAgent::~LiAgent(&STACK[0x750]);
  (*(*a14 + 24))(a14);
  _Unwind_Resume(a1);
}

uint64_t TXGlyphGroupRender::buildLighting(TXGlyphGroupRender *this, LiGeode *a2, const LiLightSet *a3, CMTime *a4)
{
  result = *(this + 2);
  if (result)
  {
    (*(*result + 976))(result);
    result = LiGeode::needsLights(a2);
    if ((result & 1) != 0 || *(a3 + 3) && (result = (*(*(*(this + 2) + 200) + 1840))(), result))
    {
      v9 = *(this + 181);
      v10 = *(this + 182);
      if (v9 == v10)
      {
        __asm { FMOV            V1.2D, #-1.0 }

        v39 = _Q1;
        v40 = 0u;
      }

      else
      {
        __asm { FMOV            V1.2D, #-1.0 }

        v39 = _Q1;
        v40 = 0u;
        v36 = _Q1;
        do
        {
          v41 = 0uLL;
          v42 = v36;
          v16 = *(v9 + 8);
          v17 = *(v9 + 16);
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          TXTextObject::getImageBoundsOfAttribute(v16, v41.f64, a4, *v9, 0, 0, 1u, 0, 0.0, 0.0, 0.0, 0.0);
          v19 = v41;
          v18 = v42;
          if (v17)
          {
            v37 = v41;
            v38 = v42;
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            v19 = v37;
            v18 = v38;
          }

          v39 = vaddq_f64(v39, v18);
          v40 = vaddq_f64(v40, v19);
          v9 += 152;
        }

        while (v9 != v10);
      }

      LightFilter = LiGeode::getLightFilter(a2);
      PCMatrix44Tmpl<double>::operator*(LightFilter + 472, (a2 + 8), &v41);
      v22 = LiGeode::getLightFilter(a2);
      v23 = v22;
      v24 = (v22 + 472);
      if ((v22 + 472) != &v41)
      {
        for (i = 0; i != 16; i += 4)
        {
          v26 = &v24[i];
          v27 = *(&v41 + i * 8 + 16);
          *v26 = *(&v41 + i * 8);
          *(v26 + 1) = v27;
        }
      }

      if (fabs(PCMatrix44Tmpl<double>::determinant(v22 + 472)) < 0.0000001)
      {
        v43 = 0;
        v44 = 0;
        v45 = xmmword_2603426F0;
        liFindMatrixPlane(v24, &v43);
        v28 = v44;
        v23[61] = v43;
        v23[65] = v28;
        v29 = *(&v45 + 1);
        v23[69] = v45;
        v23[73] = v29;
      }

      LiGeode::setLit(a2, 1);
      v30 = *(LiGeode::getLightFilter(a2) + 174);
      result = LiGeode::getLightFilter(a2);
      if (v30 == 1)
      {
        *(result + 200) = v40;
        *(result + 216) = v39;
        result = LiGeode::getLightFilter(a2);
        if ((result + 344) != &v41)
        {
          for (j = 0; j != 128; j += 32)
          {
            v32 = (result + 344 + j);
            v33 = *(&v41 + j + 16);
            *v32 = *(&v41 + j);
            v32[1] = v33;
          }
        }
      }

      else if (*(result + 173) == 1)
      {
        v34 = LiGeode::getLightFilter(a2);
        *(v34 + 200) = v40;
        *(v34 + 216) = v39;
        v35 = LiGeode::getLightFilter(a2);
        result = OZRenderParams::getTextRenderQuality(a4);
        *(v35 + 176) = result == 6;
      }
    }
  }

  return result;
}

void sub_25FB4C5D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TXGlyphGroupRender::~TXGlyphGroupRender(TXGlyphGroupRender *this)
{
  *this = &unk_2871F9A30;
  *(this + 200) = &unk_2871F9AF8;
  v2 = (this + 1448);
  std::vector<TXGlyphRender>::__destroy_vector::operator()[abi:ne200100](&v2);
  OZRenderParams::~OZRenderParams((this + 24));
  OZChannelBase::setRangeName(this, &off_2871F9B18);
  *(this + 200) = &unk_2872DEA38;
  *(this + 1616) = 0;
  PCWeakCount::~PCWeakCount(this + 201);
}

{
  *this = &unk_2871F9A30;
  *(this + 200) = &unk_2871F9AF8;
  v2 = (this + 1448);
  std::vector<TXGlyphRender>::__destroy_vector::operator()[abi:ne200100](&v2);
  OZRenderParams::~OZRenderParams((this + 24));
  OZChannelBase::setRangeName(this, &off_2871F9B18);
  *(this + 200) = &unk_2872DEA38;
  *(this + 1616) = 0;
  PCWeakCount::~PCWeakCount(this + 201);
  MEMORY[0x2666E9F00](this, 0x10E1C40C05CAB54);
}

uint64_t TXGlyphGroupRender::pixelTransformSupport(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 144))
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

void virtual thunk toTXGlyphGroupRender::~TXGlyphGroupRender(TXGlyphGroupRender *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_2871F9A30;
  *(v1 + 200) = &unk_2871F9AF8;
  v2 = (v1 + 1448);
  std::vector<TXGlyphRender>::__destroy_vector::operator()[abi:ne200100](&v2);
  OZRenderParams::~OZRenderParams((v1 + 24));
  OZChannelBase::setRangeName(v1, &off_2871F9B18);
  *(v1 + 200) = &unk_2872DEA38;
  v1[1616] = 0;
  PCWeakCount::~PCWeakCount(v1 + 201);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_2871F9A30;
  *(v1 + 200) = &unk_2871F9AF8;
  v2 = (v1 + 1448);
  std::vector<TXGlyphRender>::__destroy_vector::operator()[abi:ne200100](&v2);
  OZRenderParams::~OZRenderParams((v1 + 24));
  OZChannelBase::setRangeName(v1, &off_2871F9B18);
  *(v1 + 200) = &unk_2872DEA38;
  v1[1616] = 0;
  PCWeakCount::~PCWeakCount(v1 + 201);
  MEMORY[0x2666E9F00](v1, 0x10E1C40C05CAB54);
}

void std::vector<TXGlyphRender>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<TXGlyphRender>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<TXGlyphRender>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 152)
  {
    v4 = *(i - 136);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void sub_25FB4CB00(_Unwind_Exception *a1)
{
  PCURL::~PCURL(&v1[8054]);
  TXTextGenerator::~TXTextGenerator(v1);
  _Unwind_Resume(a1);
}

void TXFileLoadingGenerator::TXFileLoadingGenerator(TXFileLoadingGenerator *this, const __CFURL **a2, uint64_t a3)
{
  TXTextGenerator::TXTextGenerator(this, a2, a3);
  *v5 = &unk_2871F9CC0;
  v5[25] = &unk_2871FA1B0;
  v5[27] = &unk_2871FAA88;
  v5[31] = &unk_2871FACE0;
  v5[841] = &unk_2871FAD38;
  v5[2372] = &unk_2871FAE10;
  PCURL::PCURL((v5 + 8054), "", 0);
  PCURL::PCURL((this + 64440), "", 0);
  *(this + 8056) = a2[8056];
  *(this + 64456) = 0;
  PCURL::getFilename(a2 + 8054, &v8);
  v6 = PCString::empty(&v8);
  PCString::~PCString(&v8);
  if (!v6)
  {
    PCURL::operator=(this + 8054, a2 + 8054);
  }

  v7 = *(this + 8056);
}

void sub_25FB4CCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  PCURL::~PCURL((v10 + v12));
  PCURL::~PCURL((v10 + v11));
  TXTextGenerator::~TXTextGenerator(v10);
  _Unwind_Resume(a1);
}

void TXFileLoadingGenerator::~TXFileLoadingGenerator(PCString *this)
{
  this->var0 = &unk_2871F9CC0;
  this[25].var0 = &unk_2871FA1B0;
  this[27].var0 = &unk_2871FAA88;
  this[31].var0 = &unk_2871FACE0;
  this[841].var0 = &unk_2871FAD38;
  this[2372].var0 = &unk_2871FAE10;
  var0 = this[8056].var0;
  if (var0)
  {

    this[8056].var0 = 0;
  }

  PCURL::~PCURL(&this[8055]);
  PCURL::~PCURL(&this[8054]);

  TXTextGenerator::~TXTextGenerator(this);
}

BOOL TXFileLoadingGenerator::setURL(const void **this, const __CFURL **a2)
{
  PCURL::getFilename(a2, &v6);
  v4 = PCString::empty(&v6);
  PCString::~PCString(&v6);
  if (!v4)
  {
    PCURL::operator=(this + 8054, a2);
    (*(*this + 155))(this);
  }

  return !v4;
}

uint64_t TXFileLoadingGenerator::writeBody(const __CFURL **this, PCSerializerWriteStream *a2, uint64_t a3, int a4, unsigned int a5)
{
  PCSerializerWriteStream::pushScope(a2, &TXFileLoadingGeneratorScope);
  if (!v8)
  {
    goto LABEL_24;
  }

  URL = PCXMLWriteStream::getURL(v8);
  PCURL::getAsFileSystemString(URL, &v34);
  PCURL::getAsFileSystemString(this + 8054, &v33);
  v10 = PCString::cf_str(&v34);
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v10, @"/");
  v12 = PCString::cf_str(&v33);
  v13 = CFStringCreateArrayBySeparatingStrings(0, v12, @"/");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  v15 = CFArrayGetCount(v13);
  v16 = v15;
  v17 = Count >= v15 ? v15 : Count;
  if (v17 < 1)
  {
    goto LABEL_22;
  }

  v18 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v18);
    v20 = CFArrayGetValueAtIndex(v13, v18);
    if (CFStringCompare(ValueAtIndex, v20, 1uLL))
    {
      break;
    }

    if (v17 == ++v18)
    {
      goto LABEL_11;
    }
  }

  LODWORD(v17) = v18;
  if (!v18)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (v17 == 1 && (v21 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0), !CFStringGetLength(v21)))
  {
LABEL_22:
    v25 = 0;
  }

  else
  {
    PCSharedCount::PCSharedCount(&v32);
    if (~v17 + Count >= 1)
    {
      v22 = Count - v17;
      do
      {
        PCString::append(&v32, "../");
        --v22;
      }

      while (v22 > 1);
    }

    if (v17 < v16)
    {
      v23 = v17;
      do
      {
        v24 = CFArrayGetValueAtIndex(v13, v23);
        PCURL::PCURL(&v31, v24);
        PCString::append(&v32, &v31);
        PCString::~PCString(&v31);
        if (v16 - 1 > v23)
        {
          PCString::append(&v32, "/");
        }

        ++v23;
      }

      while (v23 < v16);
    }

    PCURL::PCURL(&v31, &v32, 0);
    PCURL::getAsURLString(&v31, &v30);
    (*(*a2 + 16))(a2, 2);
    (*(*a2 + 104))(a2, &v30);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v30);
    PCURL::~PCURL(&v31);
    PCString::~PCString(&v32);
    v25 = 1;
  }

  CFRelease(ArrayBySeparatingStrings);
  CFRelease(v13);
  PCString::~PCString(&v33);
  PCString::~PCString(&v34);
  if ((v25 & 1) == 0)
  {
LABEL_24:
    PCURL::getAsURLString(this + 8054, &v29);
    (*(*a2 + 16))(a2, 1);
    (*(*a2 + 104))(a2, &v29);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v29);
  }

  PCSerializerWriteStream::popScope(a2);
  return TXTextLayout::writeBody(this, a2, a3, a4, a5);
}

void sub_25FB4D2F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, PCString a12, PCString a13, PCString a14, PCString a15, PCString a16)
{
  PCURL::~PCURL(&a13);
  PCString::~PCString(&a14);
  PCString::~PCString(&a15);
  PCString::~PCString(&a16);
  _Unwind_Resume(a1);
}

uint64_t non-virtual thunk toTXFileLoadingGenerator::writeBody(const __CFURL **this, PCSerializerWriteStream *a2, uint64_t a3, int a4, unsigned int a5)
{
  return TXFileLoadingGenerator::writeBody(this - 25, a2, a3, a4, a5);
}

{
  return TXFileLoadingGenerator::writeBody(this - 31, a2, a3, a4, a5);
}

uint64_t TXFileLoadingGenerator::parseBegin(TXFileLoadingGenerator *this, PCSerializerReadStream *a2)
{
  TXTextLayout::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &TXFileLoadingGeneratorScope);
  return 1;
}

uint64_t non-virtual thunk toTXFileLoadingGenerator::parseBegin(TXFileLoadingGenerator *this, PCSerializerReadStream *a2)
{
  TXTextLayout::parseBegin((this - 200), a2);
  PCSerializerReadStream::pushScope(a2, &TXFileLoadingGeneratorScope);
  return 1;
}

{
  TXTextLayout::parseBegin((this - 248), a2);
  PCSerializerReadStream::pushScope(a2, &TXFileLoadingGeneratorScope);
  return 1;
}

uint64_t TXFileLoadingGenerator::parseEnd(TXFileLoadingGenerator *this, PCSerializerReadStream *a2)
{
  (*(*this + 1240))(this);

  return TXTextLayout::parseEnd(this, a2);
}

uint64_t non-virtual thunk toTXFileLoadingGenerator::parseEnd(TXFileLoadingGenerator *this, PCSerializerReadStream *a2)
{
  v3 = (this - 200);
  (*(*(this - 25) + 1240))(this - 200);

  return TXTextLayout::parseEnd(v3, a2);
}

{
  v3 = (this - 248);
  (*(*(this - 31) + 1240))(this - 248);

  return TXTextLayout::parseEnd(v3, a2);
}

uint64_t TXFileLoadingGenerator::parseElement(TXFileLoadingGenerator *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  PCSharedCount::PCSharedCount(&v19);
  TXTextLayout::parseElement(this, a2, a3);
  v6 = *(a3 + 2);
  if (v6 == 1)
  {
    if (PCSerializerReadStream::getAsString(a2, a3, &v19))
    {
      PCURL::PCURL(&v18, &v19, 0);
      if ((*(*this + 1224))(this, &v18) && (*(this + 64456) & 1) == 0)
      {
        PCURL::PCURL(&v17, "", 0);
        PCURL::operator=(this + 8054, &v17);
        PCURL::~PCURL(&v17);
      }

      PCURL::getFilename(this + 8055, &v17);
      v15 = PCString::empty(&v17);
      PCString::~PCString(&v17);
      if (v15)
      {
        PCURL::operator=(this + 8055, &v18);
      }

      goto LABEL_14;
    }
  }

  else if (v6 == 2 && (*(this + 64456) & 1) == 0)
  {
    if (v7)
    {
      v8 = v7;
      if (PCSerializerReadStream::getAsString(a2, a3, &v19))
      {
        v9 = PCString::cf_str(&v19);
        v10 = CFURLCreateStringByReplacingPercentEscapes(0, v9, &stru_2872E16E0);
        URL = PCXMLReadStream::getURL(v8);
        PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, *URL);
        v13 = MEMORY[0x2666E8750](0, v10, 0, 0, PathComponent);
        v14 = CFURLCopyAbsoluteURL(v13);
        PCURL::PCURL(&v18, v14);
        (*(*this + 1224))(this, &v18);
        CFRelease(v14);
        CFRelease(PathComponent);
        CFRelease(v13);
        CFRelease(v10);
        if (*(this + 64456) == 1)
        {
          PCURL::operator=(this + 8054, &v18);
        }

LABEL_14:
        PCURL::~PCURL(&v18);
      }
    }
  }

  PCString::~PCString(&v19);
  return 1;
}

void sub_25FB4D814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, char a11, PCString a12)
{
  PCURL::~PCURL(&a10);
  PCURL::~PCURL(&a11);
  PCString::~PCString(&a12);
  _Unwind_Resume(a1);
}

uint64_t non-virtual thunk toTXFileLoadingGenerator::parseElement(TXFileLoadingGenerator *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  TXFileLoadingGenerator::parseElement((this - 200), a2, a3);
  return 1;
}

{
  TXFileLoadingGenerator::parseElement((this - 248), a2, a3);
  return 1;
}

void sub_25FB4D9EC(_Unwind_Exception *a1)
{
  PCString::~PCString(v1 + 8052);
  TXTextLayout::~TXTextLayout(v1);
  _Unwind_Resume(a1);
}

void TXTextGenerator::TXTextGenerator(TXTextGenerator *this, const TXTextGenerator *a2, uint64_t a3)
{
  TXTextLayout::TXTextLayout(this, a2, a3);
  v4->var0 = &unk_2871FAE50;
  v4[25].var0 = &unk_2871FB328;
  v4[27].var0 = &unk_2871FBC00;
  v4[31].var0 = &unk_2871FBE58;
  v4[841].var0 = &unk_2871FBEB0;
  v4[2372].var0 = &unk_2871FBF88;
  PCSharedCount::PCSharedCount(v4 + 8052);
  *(this + 64424) = 0;
  OZChannelBase::setFlag((this + 19048), 8, 0);
}

void sub_25FB4DB38(_Unwind_Exception *a1)
{
  PCString::~PCString(v1 + 8052);
  TXTextLayout::~TXTextLayout(v1);
  _Unwind_Resume(a1);
}

void TXTextGenerator::~TXTextGenerator(PCString *this)
{
  this->var0 = &unk_2871FAE50;
  this[25].var0 = &unk_2871FB328;
  this[27].var0 = &unk_2871FBC00;
  this[31].var0 = &unk_2871FBE58;
  this[841].var0 = &unk_2871FBEB0;
  this[2372].var0 = &unk_2871FBF88;
  PCString::~PCString(this + 8052);

  TXTextLayout::~TXTextLayout(this);
}

{
  TXTextGenerator::~TXTextGenerator(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXTextGenerator::~TXTextGenerator(PCString *this)
{
  TXTextGenerator::~TXTextGenerator(this - 25);
}

{
  TXTextGenerator::~TXTextGenerator(this - 27);
}

{
  TXTextGenerator::~TXTextGenerator(this - 31);
}

{
  TXTextGenerator::~TXTextGenerator(this - 841);
}

{
  TXTextGenerator::~TXTextGenerator(this - 2372);
}

{
  TXTextGenerator::~TXTextGenerator(this - 25);

  JUMPOUT(0x2666E9F00);
}

{
  TXTextGenerator::~TXTextGenerator(this - 27);

  JUMPOUT(0x2666E9F00);
}

{
  TXTextGenerator::~TXTextGenerator(this - 31);

  JUMPOUT(0x2666E9F00);
}

{
  TXTextGenerator::~TXTextGenerator(this - 841);

  JUMPOUT(0x2666E9F00);
}

{
  TXTextGenerator::~TXTextGenerator(this - 2372);

  JUMPOUT(0x2666E9F00);
}

__n128 TXTextGenerator::getNaturalDuration@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[27];
  *a2 = result;
  a2[1].n128_u64[0] = this[28].n128_u64[0];
  return result;
}

__n128 non-virtual thunk toTXTextGenerator::getNaturalDuration@<Q0>(TXTextGenerator *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 216);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 29);
  return result;
}

void TXTextGenerator::getOriginalBounds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 1216))(a1, a3);

  TXTextLayout::getOriginalBounds(a1);
}

{
  (*(*a1 + 576))(a1, a3);

  TXTextLayout::getOriginalBounds(a1);
}

void non-virtual thunk toTXTextGenerator::getOriginalBounds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 - 200;
  (*(*(a1 - 200) + 1216))(a1 - 200, a3);

  TXTextLayout::getOriginalBounds(v3);
}

void TXTextGenerator::prepareForRender(TXTextGenerator *this, const OZRenderState *a2)
{
  (*(*this + 1216))(this);

  TXTextLayout::prepareForRender(this, a2);
}

void non-virtual thunk toTXTextGenerator::prepareForRender(TXTextGenerator *this, const OZRenderState *a2)
{
  v3 = (this - 200);
  (*(*(this - 25) + 1216))(this - 200);

  TXTextLayout::prepareForRender(v3, a2);
}

void TXTextGenerator::prepareForRender(PCString *this, const OZRenderState *a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v12, v4);
  var0 = a2->var0;
  OZRenderParams::OZRenderParams(v10);
  OZRenderParams::setState(v10, a2);
  PCSharedCount::PCSharedCount(&v9);
  (this->var0[37].length)(this, &v9, v10);
  if (LOBYTE(this[8053].var0) != 1 || PCString::compare(&v9, this + 8052))
  {
    PCString::set(this + 8052, &v9);
    LOBYTE(this[8053].var0) = 1;
    TXTextLayout::resetState(this);
    TXTextLayout::setString(this, &v9, 1);
    v5 = PCString::size(&v9);
    TXTextLayout::updateStyleRunsAfterTextInsert(this, 0, v5);
    TXTextLayout::updateDisplayString(this, &var0);
    data = this[2422].var0->data;
    TXTextLayout::getDisplayString(this, &v8);
    v7 = PCString::size(&v8);
    *(data + 6) = 0;
    *(data + 7) = v7;
    PCString::~PCString(&v8);
    TXTextLayout::rebuildParagraphStyles(this);
    TXTextLayout::setAllParagraphsDirty(this);
    TXTextLayout::doLayout(this, a2, 0);
  }

  PCString::~PCString(&v9);
  OZRenderParams::~OZRenderParams(v10);
  OZLockingGroup::WriteSentry::~WriteSentry(v12);
}

void sub_25FB4E234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, char a11)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  OZRenderParams::~OZRenderParams(&a11);
  OZLockingGroup::WriteSentry::~WriteSentry((v11 - 40));
  _Unwind_Resume(a1);
}

void TXTextGenerator::didAddToScene(TXTextGenerator *this, OZScene *a2)
{
  TXTextLayout::didAddToScene(this, a2);
  v10 = *MEMORY[0x277CC08F0];
  v11 = *(MEMORY[0x277CC08F0] + 16);
  if (a2)
  {
    OZSceneSettings::OZSceneSettings(&v4, (a2 + 336));
    v10 = *(a2 + 86);
    v11 = *(a2 + 174);
    *&v4 = &unk_287283398;
    PCString::~PCString(&v9);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v8);
  }

  v5 = *(this + 53);
  v4 = *(this + 408);
  v6 = v10;
  v7 = v11;
  OZChannelObjectRootBase::setTimeExtent((this + 256), &v4, 0);
  TXTextLayout::didFinishInitializing(this, 0);
}

double TXTextGenerator::calcHashForState(Li3DEngineScene *a1, const void *a2, uint64_t a3)
{
  (*(*(a1 + 25) + 536))();
  v6 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(&v14, v6);
  PCSharedCount::PCSharedCount(v13);
  (*(*a1 + 1208))(a1, v13, a3);
  (*(*a2 + 104))(a2, v13);
  PCString::~PCString(v13);
  OZLockingGroup::WriteSentry::~WriteSentry(&v14);
  if (!v7)
  {
    __cxa_bad_cast();
  }

  v8 = v7;
  v14 = *PCHashWriteStream::getHash(v7)->i8;
  (*(*a2 + 40))(a2);
  v9 = *(a1 + 2419);
  if (v9 != (a1 + 19344))
  {
    v10 = v9[3];
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    OZObjectManipulator::getHashForState();
  }

  Hash = PCHashWriteStream::getHash(v8);
  PCHash128::operator+=(&v14, Hash);
  *&result = PCHashWriteStream::setHash(v8, &v14).n128_u64[0];
  return result;
}

void sub_25FB4E584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

double non-virtual thunk toTXTextGenerator::calcHashForState(uint64_t a1, const void *a2, uint64_t a3)
{
  return TXTextGenerator::calcHashForState((a1 - 200), a2, a3);
}

{
  return TXTextGenerator::calcHashForState((a1 - 216), a2, a3);
}

void TXTextGenerator::updateDisplayStringAndAffectedState(PCString *this, const CMTime *a2)
{
  TXTextLayout::updateDisplayStringAndAffectedState(this, a2);
  data = this[2422].var0->data;
  TXTextLayout::getDisplayString(this, &v5);
  v4 = PCString::size(&v5);
  *(data + 6) = 0;
  *(data + 7) = v4;
  PCString::~PCString(&v5);
}

void sub_25FB4ECE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannel::~OZChannel((v10 + v13));
  OZChannel::~OZChannel((v10 + v11));
  OZChannelBool::~OZChannelBool((v10 + v15));
  OZChannelBool::~OZChannelBool((v10 + 65880));
  OZChannelBool::~OZChannelBool((v10 + 65728));
  OZChannel::~OZChannel((v10 + v17));
  OZChannel::~OZChannel((v10 + v16));
  OZChannelEnum::~OZChannelEnum((v10 + 65168));
  OZChannel::~OZChannel((v10 + 65016));
  OZChannel::~OZChannel((v10 + v14));
  OZChannel::~OZChannel((v10 + 64712));
  OZChannelBool::~OZChannelBool((v10 + 64560));
  OZChannelFolder::~OZChannelFolder((v10 + v12));
  TXTextGenerator::~TXTextGenerator(v10);
  _Unwind_Resume(a1);
}

void TXNumberGenerator::TXNumberGenerator(TXNumberGenerator *this, const TXNumberGenerator *a2, uint64_t a3)
{
  TXTextGenerator::TXTextGenerator(this, a2, a3);
  *v5 = &unk_2871FBFC8;
  *(v5 + 200) = &unk_2871FC4A8;
  *(v5 + 216) = &unk_2871FCD80;
  *(v5 + 248) = &unk_2871FCFD8;
  *(v5 + 6728) = &unk_2871FD030;
  *(v5 + 18976) = &unk_2871FD108;
  OZChannelFolder::OZChannelFolder((v5 + 64432), (a2 + 64432), (this + 648));
  OZChannelBool::OZChannelBool((this + 64560), (a2 + 64560), (this + 64432));
  OZChannel::OZChannel((this + 64712), (a2 + 64712), (this + 64432));
  *(this + 8089) = &unk_287245C60;
  *(this + 8091) = &unk_287245FC0;
  OZChannel::OZChannel((this + 64864), (a2 + 64864), (this + 64432));
  *(this + 8108) = &unk_287245C60;
  *(this + 8110) = &unk_287245FC0;
  OZChannel::OZChannel((this + 65016), (a2 + 65016), (this + 64432));
  *(this + 8127) = &unk_287245C60;
  *(this + 8129) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 65168), (a2 + 65168), (this + 64432));
  OZChannel::OZChannel((this + 65424), (a2 + 65424), (this + 64432));
  *(this + 8178) = &unk_287246400;
  *(this + 8180) = &unk_287246760;
  OZChannel::OZChannel((this + 65576), (a2 + 65576), (this + 64432));
  *(this + 8197) = &unk_287246400;
  *(this + 8199) = &unk_287246760;
  OZChannelBool::OZChannelBool((this + 65728), (a2 + 65728), (this + 64432));
  OZChannelBool::OZChannelBool((this + 65880), (a2 + 65880), (this + 64432));
  OZChannelBool::OZChannelBool((this + 66032), (a2 + 66032), (this + 64432));
  OZChannel::OZChannel((this + 66184), (a2 + 66184), (this + 64432));
  *(this + 8273) = &unk_287247AE0;
  *(this + 8275) = &unk_287247E40;
  OZChannel::OZChannel((this + 66336), (a2 + 66336), (this + 64432));
  *(this + 8292) = &unk_287246400;
  *(this + 8294) = &unk_287246760;
  *(this + 8311) = 0;
  *(this + 66496) = *(a2 + 66496);
  TXTextLayout::setLocale(this, *(a2 + 8051));
  v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
  *(this + 8311) = v6;
  [v6 setFormatterBehavior:1040];
}

void sub_25FB4F338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OZChannel *a10)
{
  OZChannel::~OZChannel(v16);
  OZChannelBool::~OZChannelBool((v10 + v12));
  OZChannelBool::~OZChannelBool((v10 + 65880));
  OZChannelBool::~OZChannelBool((v10 + 65728));
  OZChannel::~OZChannel(v15);
  OZChannel::~OZChannel(v14);
  OZChannelEnum::~OZChannelEnum((v10 + 65168));
  OZChannel::~OZChannel(v13);
  OZChannel::~OZChannel(a10);
  OZChannel::~OZChannel(v11);
  OZChannelBool::~OZChannelBool((v10 + 64560));
  OZChannelFolder::~OZChannelFolder((v10 + v17));
  TXTextGenerator::~TXTextGenerator(v10);
  _Unwind_Resume(a1);
}

void TXNumberGenerator::~TXNumberGenerator(TXNumberGenerator *this)
{
  *this = &unk_2871FBFC8;
  *(this + 25) = &unk_2871FC4A8;
  *(this + 27) = &unk_2871FCD80;
  *(this + 31) = &unk_2871FCFD8;
  *(this + 841) = &unk_2871FD030;
  *(this + 2372) = &unk_2871FD108;

  OZChannel::~OZChannel((this + 66336));
  OZChannel::~OZChannel((this + 66184));
  OZChannelBool::~OZChannelBool((this + 66032));
  OZChannelBool::~OZChannelBool((this + 65880));
  OZChannelBool::~OZChannelBool((this + 65728));
  OZChannel::~OZChannel((this + 65576));
  OZChannel::~OZChannel((this + 65424));
  OZChannelEnum::~OZChannelEnum((this + 65168));
  OZChannel::~OZChannel((this + 65016));
  OZChannel::~OZChannel((this + 64864));
  OZChannel::~OZChannel((this + 64712));
  OZChannelBool::~OZChannelBool((this + 64560));
  OZChannelFolder::~OZChannelFolder((this + 64432));

  TXTextGenerator::~TXTextGenerator(this);
}

{
  TXNumberGenerator::~TXNumberGenerator(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXNumberGenerator::~TXNumberGenerator(TXNumberGenerator *this)
{
  TXNumberGenerator::~TXNumberGenerator((this - 200));
}

{
  TXNumberGenerator::~TXNumberGenerator((this - 216));
}

{
  TXNumberGenerator::~TXNumberGenerator((this - 248));
}

{
  TXNumberGenerator::~TXNumberGenerator((this - 6728));
}

{
  TXNumberGenerator::~TXNumberGenerator((this - 18976));
}

{
  TXNumberGenerator::~TXNumberGenerator((this - 200));

  JUMPOUT(0x2666E9F00);
}

{
  TXNumberGenerator::~TXNumberGenerator((this - 216));

  JUMPOUT(0x2666E9F00);
}

{
  TXNumberGenerator::~TXNumberGenerator((this - 248));

  JUMPOUT(0x2666E9F00);
}

{
  TXNumberGenerator::~TXNumberGenerator((this - 6728));

  JUMPOUT(0x2666E9F00);
}

{
  TXNumberGenerator::~TXNumberGenerator((this - 18976));

  JUMPOUT(0x2666E9F00);
}

void *TXNumberGenerator::operator=(TXTextLayout *a1, const void *a2)
{
  TXTextGenerator::operator=(a1);
  if (result)
  {
    v5 = result[8051];

    return TXTextLayout::setLocale(a1, v5);
  }

  return result;
}

uint64_t TXNumberGenerator::generateString(TXNumberGenerator *this, PCString *a2, CMTime *a3)
{
  v6 = this + 200;
  v5 = *(this + 25);
  v76 = *a3;
  v7 = *(*(v5 + 640))(this + 200);
  (*(v7 + 712))(&time);
  v8 = (*(*v6 + 272))(v6);
  OZSceneSettings::getFrameDuration((v8 + 336), &v71);
  time1 = v76;
  *&time2.value = v71;
  time2.epoch = v72;
  v9 = PC_CMTimeFloorToSampleDuration(&time1, &time2, &v73);
  v10 = (*(*v6 + 272))(v6, v9);
  OZSceneSettings::getFrameDuration((v10 + 336), &v69);
  time1 = time;
  time2 = v73;
  result = CMTimeCompare(&time1, &time2);
  if (result <= 0)
  {
    time1 = time;
    time2 = v75;
    PC_CMTimeSaferAdd(&time1, &time2, &v78);
    time1 = v78;
    *&time2.value = v69;
    time2.epoch = v70;
    PC_CMTimeSaferSubtract(&time1, &time2, &v77);
    time1 = v73;
    time2 = v77;
    result = CMTimeCompare(&time1, &time2);
    if (result <= 0 || (v75.flags & 1) != 0 && (v75.flags & 0x10) != 0)
    {
      v12 = v6 + 64208;
      TXNumberGenerator::updateFormatter(this);
      v13 = MEMORY[0x277CC08F0];
      ValueAsInt = OZChannel::getValueAsInt((this + 65424), MEMORY[0x277CC08F0], 0.0);
      v15 = OZChannel::getValueAsInt((this + 65576), v13, 0.0);
      if (OZChannel::getValueAsInt((this + 64560), v13, 0.0))
      {
        if (OZChannel::getValueAsInt((this + 66032), MEMORY[0x277CC08F0], 0.0))
        {
          v16 = MEMORY[0x277CC08F0];
          v17 = OZChannel::getValueAsInt((this + 66184), MEMORY[0x277CC08F0], 0.0);
          v18 = OZChannel::getValueAsInt((this + 66336), v16, 0.0);
          if (v18)
          {
            v19 = v18;
            v20 = (*(*v6 + 272))(v6);
            OZSceneSettings::getFrameDuration((v20 + 336), &time1);
            operator/(&v76.value, &time1, &time);
            Seconds = CMTimeGetSeconds(&time) / v19;
          }

          else
          {
            v32 = (*(*v6 + 272))(v6);
            OZSceneSettings::getFrameDuration((v32 + 336), &time1);
            operator/(&v76.value, &time1, &time);
            Seconds = CMTimeGetSeconds(&time);
          }

          v33 = -32;
          v34 = -1640531527;
          v35 = v17;
          do
          {
            v17 += (Seconds + 16 * v35) ^ (v35 + v34) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1 + (v35 >> 5));
            v35 += (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2 + 16 * v17) ^ (v34 + v17) ^ (PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3 + (v17 >> 5));
            v34 -= 1640531527;
            v36 = __CFADD__(v33++, 1);
          }

          while (!v36);
          v37 = (v35 ^ v17) / 2147483650.0;
          v38 = MEMORY[0x277CC08F0];
          OZChannel::getValueAsDouble((this + 64864), MEMORY[0x277CC08F0], 0.0);
          v30 = v39;
          OZChannel::getValueAsDouble((this + 65016), v38, 0.0);
          v41 = (v37 + 1.0) * 0.5 * (v40 - v30);
        }

        else
        {
          (*(*(this + 25) + 1128))(&time, v6);
          time2 = time;
          time1 = v76;
          PC_CMTimeSaferSubtract(&time1, &time2, &v78);
          v73 = v75;
          v24 = (*(*(this + 25) + 272))(v6);
          OZSceneSettings::getFrameDuration((v24 + 336), &v71);
          time1 = v73;
          *&time2.value = v71;
          time2.epoch = v72;
          PC_CMTimeSaferSubtract(&time1, &time2, &v77);
          operator/(&v78.value, &v77, &time1);
          v25 = CMTimeGetSeconds(&time1);
          v26 = 1.0;
          if (v25 <= 1.0)
          {
            v26 = v25;
          }

          if (v25 >= 0.0)
          {
            v27 = v26;
          }

          else
          {
            v27 = 0.0;
          }

          v28 = MEMORY[0x277CC08F0];
          OZChannel::getValueAsDouble((this + 64864), MEMORY[0x277CC08F0], 0.0);
          v30 = v29;
          OZChannel::getValueAsDouble((this + 65016), v28, 0.0);
          if (!ValueAsInt)
          {
            if (v31 <= v30)
            {
              v30 = v30 + 0.9999;
            }

            else
            {
              v31 = v31 + 0.9999;
            }
          }

          v41 = v27 * (v31 - v30);
        }

        v23 = v30 + v41;
      }

      else
      {
        OZChannel::getValueAsDouble((this + 64712), &v76, 0.0);
        v23 = v22;
      }

      v42 = MEMORY[0x277CC08F0];
      if (OZChannel::getValueAsInt((this + 65168), MEMORY[0x277CC08F0], 0.0) == 2)
      {
        v23 = v23 / 100.0;
      }

      if (ValueAsInt)
      {
        v43 = 6;
      }

      else
      {
        v43 = 1;
      }

      if (ValueAsInt)
      {
        v44 = ValueAsInt + 1;
      }

      else
      {
        v44 = 0;
      }

      [*(v12 + 260) setGeneratesDecimalNumbers:ValueAsInt != 0];
      [*(v12 + 260) setMaximumFractionDigits:ValueAsInt];
      [*(v12 + 260) setMinimumFractionDigits:ValueAsInt];
      [*(v12 + 260) setRoundingMode:v43];
      [*(v12 + 260) setUsesGroupingSeparator:{OZChannel::getValueAsInt((this + 65728), v42, 0.0) != 0}];
      [*(v12 + 260) setGroupingSize:3];
      [*(v12 + 260) setPaddingCharacter:@"0"];
      [*(v12 + 260) setFormatWidth:v44 + v15];
      if (OZChannel::getValueAsInt((this + 65168), v42, 0.0) == 6)
      {
        v45 = v23;
        PCString::PCString(&time, "0x");
        BYTE1(time1.value) = 0;
        v46 = -8;
        do
        {
          v47 = (v45 >> 28) | 0x30;
          if (v45 >> 29 > 4)
          {
            LOBYTE(v47) = (v45 >> 28) + 55;
          }

          LOBYTE(time1.value) = v47;
          PCString::append(&time, &time1);
          LODWORD(v45) = 16 * v45;
          v36 = __CFADD__(v46++, 1);
        }

        while (!v36);
        goto LABEL_49;
      }

      if (OZChannel::getValueAsInt((this + 65168), MEMORY[0x277CC08F0], 0.0) == 5)
      {
        v48 = v23;
        PCSharedCount::PCSharedCount(&time);
        BYTE1(time1.value) = 0;
        v49 = -32;
        do
        {
          if (v48 >= 0)
          {
            v50 = 48;
          }

          else
          {
            v50 = 49;
          }

          LOBYTE(time1.value) = v50;
          PCString::append(&time, &time1);
          LODWORD(v48) = 2 * v48;
          v36 = __CFADD__(v49++, 1);
        }

        while (!v36);
LABEL_49:
        UniStr = PCString::createUniStr(&time);
        PCString::~PCString(&time);
        result = PCString::set(a2, UniStr);
        if (UniStr)
        {
          return MEMORY[0x2666E9ED0](UniStr, 0x1000C80BDFB0063);
        }

        return result;
      }

      v52 = [*(v12 + 260) stringFromNumber:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", v23)}];
      if (OZChannel::getValueAsInt((this + 65880), MEMORY[0x277CC08F0], 0.0))
      {
        v52 = [v52 capitalizedString];
      }

      if (OZChannel::getValueAsInt((this + 65168), MEMORY[0x277CC08F0], 0.0) == 4)
      {
        v53 = MEMORY[0x2666E8390](*v12);
        if ([v53 hasPrefix:@"en_"])
        {
LABEL_55:
          v54 = @"point";
          goto LABEL_62;
        }

        if ([v53 hasPrefix:@"es_"])
        {
          v54 = @"punto";
          goto LABEL_62;
        }

        if ([v53 hasPrefix:@"de_"])
        {
          v54 = @"komma";
          goto LABEL_62;
        }

        if ([v53 hasPrefix:@"fr_"])
        {
          v54 = @"virgule";
LABEL_62:
          v55 = [v52 rangeOfString:v54];
          if (v55 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_76;
          }

          v57 = v55;
          v58 = v56;
          v59 = [v52 substringToIndex:v55 - 1];
          if (ValueAsInt)
          {
            v60 = v57 + v58;
            v61 = v60 + 1;
            v62 = [v52 length] + ~v60;
            goto LABEL_65;
          }

          goto LABEL_75;
        }

        if (![v53 hasPrefix:@"ja_"])
        {
          goto LABEL_55;
        }

        v54 = TXNumberGenerator::generateString(PCString &,OZRenderParams const&)::middleDot;
        if (!TXNumberGenerator::generateString(PCString &,OZRenderParams const&)::middleDot)
        {
          v54 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:&TXNumberGenerator::generateString(PCString & length:{OZRenderParams const&)::uMiddleDot, 1}];
          TXNumberGenerator::generateString(PCString &,OZRenderParams const&)::middleDot = v54;
        }

        v65 = [v52 rangeOfString:v54];
        if (v65 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v67 = v65;
          v68 = v66;
          v59 = [v52 substringToIndex:v65];
          if (ValueAsInt)
          {
            v61 = v67 + v68;
            v62 = [v52 length] - v61;
LABEL_65:
            v63 = [objc_msgSend(v52 substringWithRange:{v61, v62), "componentsSeparatedByString:", @" "}];
            v52 = [objc_msgSend(v59 stringByAppendingString:{@" ", "stringByAppendingString:", v54}];
            for (i = 0; i != ValueAsInt; ++i)
            {
              if (i >= [v63 count])
              {
                break;
              }

              v52 = [v52 stringByAppendingFormat:@" %@", objc_msgSend(v63, "objectAtIndex:", i)];
            }

            goto LABEL_76;
          }

LABEL_75:
          v52 = v59;
        }
      }

LABEL_76:
      [v52 length];
      operator new[]();
    }
  }

  return result;
}

uint64_t TXNumberGenerator::updateFormatter(TXNumberGenerator *this)
{
  v1 = (this + 64408);
  v2 = OZChannel::getValueAsInt((this + 65168), MEMORY[0x277CC08F0], 0.0) - 1;
  if (v2 >= 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 + 2;
  }

  [v1[260] setNumberStyle:v3];
  v4 = v1[260];
  v5 = *v1;

  return [v4 setLocale:v5];
}

uint64_t TXNumberGenerator::getPreviewSceneNode(TXNumberGenerator *this)
{
  v1 = theApp;
  *&v5.value = xmmword_260348440;
  PCSharedCount::PCSharedCount(&v6);
  SceneNode = OZApplication::createSceneNode(v1, &v5);
  if (SceneNode)
  {
  }

  else
  {
    v3 = 0;
  }

  PCString::~PCString(&v6);
  TXTextLayout::didFinishInitializing(v3, 1);
  TXTextLayout::getCurrentStyleForInsertion(v3, &v6);
  if (v6.var0)
  {
    v5 = **&MEMORY[0x277CC08F0];
    OZChannel::setValue(v6.var0 + 13, &v5, 24.0, 0);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v3)
  {
    return v3 + 200;
  }

  else
  {
    return 0;
  }
}

void sub_25FB50498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCString a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void TXNumberGenerator::didAddToScene(TXNumberGenerator *this, OZScene *a2)
{
  TXTextGenerator::didAddToScene(this, a2);
  if ((*(this + 66496) & 1) == 0)
  {
    v4 = OZPreferenceManager::Instance(v3);
    FirstFrameNumber = OZPreferenceManager::getFirstFrameNumber(v4);
    (*(*(this + 25) + 1128))(v9, this + 200);
    v12 = v10;
    v13 = v11;
    v6 = (*(*(this + 25) + 272))(this + 200);
    OZSceneSettings::getFrameDuration((v6 + 336), &v8);
    operator/(&v12, &v8, &time);
    Seconds = CMTimeGetSeconds(&time);
    if (FirstFrameNumber == 0.0)
    {
      Seconds = Seconds + -1.0;
    }

    OZChannel::setDefaultValue((this + 65016), Seconds);
    OZChannelBase::reset((this + 65016), 0);
    *(this + 66496) = 1;
  }
}

uint64_t TXNumberGenerator::writeBody(TXNumberGenerator *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  TXTextLayout::writeBody(this, a2, a3, a4, a5);
  PCSerializerWriteStream::pushScope(a2, &TXNumberGeneratorScope);
  (*(*a2 + 16))(a2, 1);
  v7 = MEMORY[0x2666E8390](*(this + 8051));
  PCURL::PCURL(&v9, v7);
  (*(*a2 + 200))(a2, 2, &v9);
  PCString::~PCString(&v9);
  (*(*a2 + 24))(a2);
  return PCSerializerWriteStream::popScope(a2);
}

uint64_t non-virtual thunk toTXNumberGenerator::writeBody(TXNumberGenerator *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  return TXNumberGenerator::writeBody((this - 200), a2, a3, a4, a5);
}

{
  return TXNumberGenerator::writeBody((this - 248), a2, a3, a4, a5);
}

uint64_t TXNumberGenerator::parseBegin(TXNumberGenerator *this, PCSerializerReadStream *a2)
{
  TXTextLayout::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &TXNumberGeneratorScope);
  return 1;
}

uint64_t non-virtual thunk toTXNumberGenerator::parseBegin(TXNumberGenerator *this, PCSerializerReadStream *a2)
{
  TXTextLayout::parseBegin((this - 200), a2);
  PCSerializerReadStream::pushScope(a2, &TXNumberGeneratorScope);
  return 1;
}

{
  TXTextLayout::parseBegin((this - 248), a2);
  PCSerializerReadStream::pushScope(a2, &TXNumberGeneratorScope);
  return 1;
}

uint64_t TXNumberGenerator::parseElement(TXNumberGenerator *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  if (*(a3 + 2) == 1)
  {
    PCSharedCount::PCSharedCount(&v8);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 2, &v8);
    v6 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:PCString::ns_str(&v8)];
    TXTextLayout::setLocale(this, v6);

    PCString::~PCString(&v8);
  }

  TXTextLayout::parseElement(this, a2, a3);
  return 1;
}

uint64_t non-virtual thunk toTXNumberGenerator::parseElement(TXNumberGenerator *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  TXNumberGenerator::parseElement((this - 200), a2, a3);
  return 1;
}

{
  TXNumberGenerator::parseElement((this - 248), a2, a3);
  return 1;
}

void OZChannelSeed::OZChannelSeed(OZChannelSeed *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannelSeed_FactoryBase = getOZChannelSeed_FactoryBase();
  OZChannel::OZChannel(this, OZChannelSeed_FactoryBase, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_287247AE0;
  this->var2 = &unk_287247E40;
  OZChannelSeedInfo = OZChannelSeed::createOZChannelSeedInfo(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelSeed::_OZChannelSeedInfo;
    this->var17 = OZChannelSeed::_OZChannelSeedInfo;
  }

  this->var16 = var17;
  OZChannelSeed::createOZChannelSeedImpl(OZChannelSeedInfo);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelSeed::_OZChannelSeedImpl;
    this->var15 = OZChannelSeed::_OZChannelSeedImpl;
  }

  this->var14 = var15;
}

uint64_t OZChannelSeed::createOZChannelSeedInfo(OZChannelSeed *this)
{
  if (atomic_load_explicit(&OZChannelSeed::createOZChannelSeedInfo(void)::_OZChannelSeedInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelSeed::createOZChannelSeedInfo(void)::_OZChannelSeedInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelSeed::createOZChannelSeedInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelSeed::_OZChannelSeedInfo;
}

uint64_t OZChannelSeed::createOZChannelSeedImpl(OZChannelSeed *this)
{
  if (atomic_load_explicit(&OZChannelSeed::createOZChannelSeedImpl(void)::_OZChannelSeedImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelSeed::createOZChannelSeedImpl(void)::_OZChannelSeedImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelSeed::createOZChannelSeedImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelSeed::_OZChannelSeedImpl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelSeed::createOZChannelSeedInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelSeed::_OZChannelSeedInfo)
  {
    operator new();
  }
}

void OZChannelSeedInfo::OZChannelSeedInfo(OZChannelSeedInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 4294967300.0, 1.0, 1.0, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_2871FD148;
  *(this + 10) = &unk_2871FD168;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelSeed::createOZChannelSeedImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelSeed::_OZChannelSeedImpl)
  {
    operator new();
  }
}

void sub_25FB50CB4(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t OZCurveEnumSplineState::getInstance(OZCurveEnumSplineState *this)
{
  if (atomic_load_explicit(&OZCurveEnumSplineState::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCurveEnumSplineState::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCurveEnumSplineState::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCurveEnumSplineState::_instance;
}

void getCharacterSets(void)
{
  v1 = *MEMORY[0x277D85DE8];
  {
    {
      memcpy(v0, "a", sizeof(v0));
      qword_27FE4A8B0 = 0;
      unk_27FE4A8B8 = 0;
      getCharacterSets(void)::sCharacterSets = 0;
      std::vector<TXUnicodeBlock>::__init_with_size[abi:ne200100]<TXUnicodeBlock const*,TXUnicodeBlock const*>(&getCharacterSets(void)::sCharacterSets, v0, &v1, 0x10FuLL);
      __cxa_atexit(std::vector<TXUnicodeBlock>::~vector[abi:ne200100], &getCharacterSets(void)::sCharacterSets, &dword_25F8F0000);
    }
  }
}

uint64_t TXOffsetUnicodeChar(uint64_t a1, int a2)
{
  getCharacterSets();
  v4 = getCharacterSets(void)::sCharacterSets;
  getCharacterSets();
  if (v4 != qword_27FE4A8B0)
  {
    while (*v4 > a1 || v4[1] < a1)
    {
      v4 += 2;
      if (v4 == qword_27FE4A8B0)
      {
        v4 = qword_27FE4A8B0;
        break;
      }
    }
  }

  getCharacterSets();
  if (v4 != qword_27FE4A8B0)
  {
    v6 = v4[1];
    a1 = (a2 + a1);
    if (a1 > v6)
    {
      return (a1 + ~v6) % (v6 - *v4 + 1) + *v4;
    }
  }

  return a1;
}

BOOL TXCharacterSetIsLowercase(UniChar a1)
{
  if (TXCharacterSetIsLowercase::onceToken != -1)
  {
    TXCharacterSetIsLowercase();
  }

  return CFCharacterSetIsCharacterMember(TXCharacterSetIsLowercase::kLowercaseLetterCharacterSet, a1) != 0;
}

CFCharacterSetRef ___Z25TXCharacterSetIsLowercasej_block_invoke()
{
  result = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
  TXCharacterSetIsLowercase::kLowercaseLetterCharacterSet = result;
  return result;
}

BOOL TXCharacterSetIsPunctuation(UniChar a1)
{
  if (TXCharacterSetIsPunctuation::onceToken != -1)
  {
    TXCharacterSetIsPunctuation();
  }

  return CFCharacterSetIsCharacterMember(TXCharacterSetIsPunctuation::kPunctuationCharacterSet, a1) != 0;
}

CFCharacterSetRef ___Z27TXCharacterSetIsPunctuationj_block_invoke()
{
  result = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  TXCharacterSetIsPunctuation::kPunctuationCharacterSet = result;
  return result;
}

BOOL TXCharacterSetIsWhitespace(UniChar a1)
{
  if (TXCharacterSetIsWhitespace::onceToken != -1)
  {
    TXCharacterSetIsWhitespace();
  }

  return CFCharacterSetIsCharacterMember(TXCharacterSetIsWhitespace::kWhitespaceCharacterSet, a1) != 0;
}

CFCharacterSetRef ___Z26TXCharacterSetIsWhitespacej_block_invoke()
{
  result = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  TXCharacterSetIsWhitespace::kWhitespaceCharacterSet = result;
  return result;
}

BOOL TXCharacterSetIsWhitespaceOrNewline(UniChar a1)
{
  if (TXCharacterSetIsWhitespaceOrNewline::onceToken != -1)
  {
    TXCharacterSetIsWhitespaceOrNewline();
  }

  return CFCharacterSetIsCharacterMember(TXCharacterSetIsWhitespaceOrNewline::kWhitespaceAndNewlineCharacterSet, a1) != 0;
}

CFCharacterSetRef ___Z35TXCharacterSetIsWhitespaceOrNewlinej_block_invoke()
{
  result = CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  TXCharacterSetIsWhitespaceOrNewline::kWhitespaceAndNewlineCharacterSet = result;
  return result;
}

BOOL TXCharacterSetIsNewline(UniChar a1)
{
  if (TXCharacterSetIsNewline::onceToken != -1)
  {
    TXCharacterSetIsNewline();
  }

  return CFCharacterSetIsCharacterMember(TXCharacterSetIsNewline::kNewlineCharacterSet, a1) != 0;
}

CFCharacterSetRef ___Z23TXCharacterSetIsNewlinej_block_invoke()
{
  result = CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  TXCharacterSetIsNewline::kNewlineCharacterSet = result;
  return result;
}

uint64_t std::vector<TXUnicodeBlock>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<TXUnicodeBlock>::__init_with_size[abi:ne200100]<TXUnicodeBlock const*,TXUnicodeBlock const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FB51454(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FB51840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelBool::~OZChannelBool((v10 + v17));
  OZChannel::~OZChannel((v10 + v16));
  OZChannelBool::~OZChannelBool((v10 + v15));
  OZChannelPercent::~OZChannelPercent((v10 + v14));
  OZChannelEnum::~OZChannelEnum((v10 + v13));
  OZChannelFolder::~OZChannelFolder((v10 + v12));
  v19 = *(v11 + 3024);
  if (v19)
  {
    *(v11 + 3032) = v19;
    operator delete(v19);
  }

  TXFileLoadingGenerator::~TXFileLoadingGenerator(v10);
  _Unwind_Resume(a1);
}

void sub_25FB51908(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  JUMPOUT(0x25FB518ACLL);
}

void TXTextFromFileGenerator::TXTextFromFileGenerator(TXTextFromFileGenerator *this, const TXTextFromFileGenerator *a2, uint64_t a3)
{
  v5 = this + 61440;
  v6 = a2 + 61440;
  TXFileLoadingGenerator::TXFileLoadingGenerator(this, a2, a3);
  *v7 = &unk_2871FD848;
  *(v7 + 200) = &unk_2871FDD48;
  *(v7 + 216) = &unk_2871FE620;
  *(v7 + 248) = &unk_2871FE878;
  *(v7 + 6728) = &unk_2871FE8D0;
  *(v7 + 18976) = &unk_2871FE9A8;
  *(v5 + 378) = 0;
  *(v5 + 380) = 0;
  *(v5 + 379) = 0;
  v5[3048] = v6[3048];
  OZChannelFolder::OZChannelFolder((v7 + 64496), (a2 + 64496), (this + 648));
  OZChannelEnum::OZChannelEnum((this + 64624), (a2 + 64624), (this + 64496));
  OZChannelPercent::OZChannelPercent((this + 64880), (a2 + 64880), (this + 64496));
  OZChannelBool::OZChannelBool((this + 65032), (a2 + 65032), (this + 64496));
  OZChannel::OZChannel((v5 + 3744), a2 + 582, (this + 64496));
  *(v5 + 468) = &unk_287247AE0;
  *(v5 + 470) = &unk_287247E40;
  OZChannelBool::OZChannelBool((this + 65336), (a2 + 65336), (this + 64496));
  PCURL::getFilename(a2 + 8054, &v9);
  v8 = PCString::empty(&v9);
  PCString::~PCString(&v9);
  if (!v8)
  {
    PCURL::operator=(this + 8054, a2 + 8054);
  }

  if (*(v6 + 378) != *(v6 + 379))
  {
    operator new();
  }
}

void sub_25FB51BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannelBool::~OZChannelBool((v10 + 65336));
  OZChannel::~OZChannel(v12);
  OZChannelBool::~OZChannelBool((v10 + 65032));
  OZChannelPercent::~OZChannelPercent((v10 + 64880));
  OZChannelEnum::~OZChannelEnum((v10 + 64624));
  OZChannelFolder::~OZChannelFolder((v10 + v14));
  v16 = *v11;
  if (*v11)
  {
    *(v13 + 3032) = v16;
    operator delete(v16);
  }

  TXFileLoadingGenerator::~TXFileLoadingGenerator(v10);
  _Unwind_Resume(a1);
}

void TXTextFromFileGenerator::~TXTextFromFileGenerator(TXTextFromFileGenerator *this)
{
  v2 = this + 61440;
  *this = &unk_2871FD848;
  *(this + 25) = &unk_2871FDD48;
  *(this + 27) = &unk_2871FE620;
  *(this + 31) = &unk_2871FE878;
  *(this + 841) = &unk_2871FE8D0;
  *(this + 2372) = &unk_2871FE9A8;
  TXTextFromFileGenerator::clearText(this);
  OZChannelBool::~OZChannelBool((this + 65336));
  OZChannel::~OZChannel((this + 65184));
  OZChannelBool::~OZChannelBool((this + 65032));
  OZChannelPercent::~OZChannelPercent((this + 64880));
  OZChannelEnum::~OZChannelEnum((this + 64624));
  OZChannelFolder::~OZChannelFolder((this + 64496));
  v3 = *(v2 + 378);
  if (v3)
  {
    *(v2 + 379) = v3;
    operator delete(v3);
  }

  TXFileLoadingGenerator::~TXFileLoadingGenerator(this);
}

{
  TXTextFromFileGenerator::~TXTextFromFileGenerator(this);

  JUMPOUT(0x2666E9F00);
}

PCString *TXTextFromFileGenerator::clearText(PCString *this)
{
  v1 = this + 7680;
  var0 = this[8058].var0;
  v3 = this[8059].var0;
  if (var0 != v3)
  {
    do
    {
      this = *var0;
      if (*var0)
      {
        PCString::~PCString(this);
        this = MEMORY[0x2666E9F00]();
      }

      *var0++ = 0;
    }

    while (var0 != v3);
    var0 = v1[378].var0;
  }

  v1[379].var0 = var0;
  return this;
}

void non-virtual thunk toTXTextFromFileGenerator::~TXTextFromFileGenerator(TXTextFromFileGenerator *this)
{
  TXTextFromFileGenerator::~TXTextFromFileGenerator((this - 200));
}

{
  TXTextFromFileGenerator::~TXTextFromFileGenerator((this - 216));
}

{
  TXTextFromFileGenerator::~TXTextFromFileGenerator((this - 248));
}

{
  TXTextFromFileGenerator::~TXTextFromFileGenerator((this - 6728));
}

{
  TXTextFromFileGenerator::~TXTextFromFileGenerator((this - 18976));
}

{
  TXTextFromFileGenerator::~TXTextFromFileGenerator((this - 200));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextFromFileGenerator::~TXTextFromFileGenerator((this - 216));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextFromFileGenerator::~TXTextFromFileGenerator((this - 248));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextFromFileGenerator::~TXTextFromFileGenerator((this - 6728));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextFromFileGenerator::~TXTextFromFileGenerator((this - 18976));

  JUMPOUT(0x2666E9F00);
}

void TXTextFromFileGenerator::generateString(TXTextFromFileGenerator *this, PCString *a2, CMTime *a3)
{
  v6 = this + 200;
  v5 = *(this + 25);
  v54 = *a3;
  v7 = *(*(v5 + 640))(this + 200);
  (*(v7 + 712))(v51);
  v8 = (*(*v6 + 272))(v6);
  OZSceneSettings::getFrameDuration((v8 + 336), &v47);
  time1 = v54;
  *&time2.value = v47;
  time2.epoch = v48;
  v9 = PC_CMTimeFloorToSampleDuration(&time1, &time2, &v49);
  v10 = (*(*v6 + 272))(v6, v9);
  OZSceneSettings::getFrameDuration((v10 + 336), &v45);
  *&time1.value = *&v51[0].var0;
  time1.epoch = v52;
  *&time2.value = v49;
  time2.epoch = v50;
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    return;
  }

  *&time1.value = *&v51[0].var0;
  time1.epoch = v52;
  time2 = v53;
  PC_CMTimeSaferAdd(&time1, &time2, &v56);
  time1 = v56;
  *&time2.value = v45;
  time2.epoch = v46;
  PC_CMTimeSaferSubtract(&time1, &time2, &v55);
  *&time1.value = v49;
  time1.epoch = v50;
  time2 = v55;
  if (CMTimeCompare(&time1, &time2) > 0 && ((v53.flags & 1) == 0 || (v53.flags & 0x10) == 0))
  {
    return;
  }

  if (*(v6 + 8033) == *(v6 + 8034))
  {
    return;
  }

  if ((v6[64288] & 1) == 0)
  {
    PCURL::getAsFileSystemString(this + 8054, v51);
    v19 = PCString::ns_str(v51);
    PCString::~PCString(v51);
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      PCURL::PCURL(v51, @"Text From File Generator Missing File");
      PCString::set(a2, v51);
      PCString::~PCString(v51);
      return;
    }

    if (([objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      (*(*this + 1240))(this);
    }
  }

  (*(*(this + 25) + 1128))(v51, v6);
  *&time2.value = *&v51[0].var0;
  time2.epoch = v52;
  time1 = v54;
  v11.n128_f64[0] = PC_CMTimeSaferSubtract(&time1, &time2, &v56);
  v12 = (*(*(this + 25) + 272))(v6, v11);
  OZSceneSettings::getFrameDuration((v12 + 336), &time2);
  operator/(&v56.value, &time2, &time1);
  Seconds = CMTimeGetSeconds(&time1);
  v55 = v53;
  v14 = (*(*(this + 25) + 272))(v6);
  OZSceneSettings::getFrameDuration((v14 + 336), &v49);
  operator/(&v55.value, &v49, &time1);
  v15 = Seconds / CMTimeGetSeconds(&time1);
  ValueAsInt = OZChannel::getValueAsInt((this + 64624), MEMORY[0x277CC08F0], 0.0);
  v17 = 0;
  if (ValueAsInt <= 2)
  {
    switch(ValueAsInt)
    {
      case 0:
        v26 = v15 * ((*(v6 + 8034) - *(v6 + 8033)) >> 3);
LABEL_32:
        v31 = 0.5;
        goto LABEL_33;
      case 1:
        if (OZChannel::getValueAsInt((this + 65336), MEMORY[0x277CC08F0], 0.0))
        {
          time1.value = 0;
          v30 = (*(v6 + 8034) - *(v6 + 8033)) >> 3;
          v22 = v15 * v30;
          v23 = (v30 - 1);
          v24 = 1.0;
          v25 = 0.0;
          goto LABEL_31;
        }

        v43 = (*(v6 + 8034) - *(v6 + 8033)) >> 3;
        v44 = v15 * v43;
        v40 = (v43 - 1);
        v41 = 0.5;
        v42 = 1.0 - cos(v44 * 3.14159265 / v40 * 0.5);
        break;
      case 2:
        if (OZChannel::getValueAsInt((this + 65336), MEMORY[0x277CC08F0], 0.0))
        {
          time1.value = 0;
          v21 = (*(v6 + 8034) - *(v6 + 8033)) >> 3;
          v22 = v15 * v21;
          v23 = (v21 - 1);
          v24 = 0.0;
          v25 = 1.0;
LABEL_31:
          PCMath::easeInOut(&time1.value, v22, v24, v25, 0.0, v23, 0, v20);
          v26 = *&time1.value;
          goto LABEL_32;
        }

        v38 = (*(v6 + 8034) - *(v6 + 8033)) >> 3;
        v39 = v15 * v38;
        v40 = (v38 - 1);
        v41 = 0.5;
        v42 = sin(v39 * 3.14159265 / v40 * 0.5);
        break;
      default:
        goto LABEL_35;
    }

    v29 = v42 * v40 + 0.0 + v41;
    goto LABEL_34;
  }

  if (ValueAsInt <= 4)
  {
    if (ValueAsInt == 3)
    {
      if (OZChannel::getValueAsInt((this + 65336), MEMORY[0x277CC08F0], 0.0))
      {
        time1.value = 0;
        v28 = (*(v6 + 8034) - *(v6 + 8033)) >> 3;
        PCMath::easeInOut(&time1.value, v15 * v28, 0.5, 0.5, 0.0, (v28 - 1), 0, v27);
        v29 = *&time1.value + 0.5;
LABEL_34:
        v17 = vcvtmd_s64_f64(v29 + 0.0000001);
        goto LABEL_35;
      }

      v34 = (*(v6 + 8034) - *(v6 + 8033)) >> 3;
      v35 = v15 * v34;
      v36 = (v34 - 1);
      v37 = sin(v35 * 3.14159265 / v36 + -1.57079633);
      v31 = 0.5;
      v26 = (v37 * 0.5 + 0.5) * v36 + 0.0;
LABEL_33:
      v29 = v26 + v31;
      goto LABEL_34;
    }

    v18 = v15 * v15;
    goto LABEL_28;
  }

  if (ValueAsInt == 5)
  {
    v18 = 1.0 - (v15 + -1.0) * (v15 + -1.0);
    goto LABEL_28;
  }

  if (ValueAsInt == 6)
  {
    OZChannel::getValueAsDouble((this + 64880), &v54, 0.0);
LABEL_28:
    v26 = v18 * ((*(v6 + 8034) - *(v6 + 8033)) >> 3);
    goto LABEL_32;
  }

LABEL_35:
  v32 = ((*(v6 + 8034) - *(v6 + 8033)) >> 3) - 1;
  if (v17 < v32)
  {
    v32 = v17;
  }

  if (v17 >= 0)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (OZChannel::getValueAsInt((this + 65032), MEMORY[0x277CC08F0], 0.0))
  {
    OZChannel::getValueAsInt((this + 65184), MEMORY[0x277CC08F0], 0.0);
    operator new[]();
  }

  PCString::set(a2, *(*(v6 + 8033) + 8 * v33));
}

void TXTextFromFileGenerator::loadFile(TXTextFromFileGenerator *this)
{
  v17 = *MEMORY[0x277D85DE8];
  TXTextFromFileGenerator::clearText(this);
  v14 = 0;
  v15 = 0;
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  PCURL::getAsFileSystemString(this + 8054, &v13);
  v3 = [v2 initWithContentsOfFile:PCString::ns_str(&v13) usedEncoding:&v15 error:&v14];
  v11 = this + 61440;
  PCString::~PCString(&v13);
  if (v3)
  {
    v4 = [v3 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "newlineCharacterSet")}];
    memset(v12, 0, sizeof(v12));
    if ([v4 countByEnumeratingWithState:v12 objects:v16 count:16])
    {
      operator new();
    }

    PCURL::getAsFileSystemString(this + 8054, &v13);
    v5 = PCString::ns_str(&v13);
    PCString::~PCString(&v13);
    v6 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v7 = *(v11 + 376);
    if (v7)
    {
    }

    v8 = [v6 fileModificationDate];
    v9 = v11;
    *(v11 + 376) = v8;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = this + 61440;
  }

  v9[3016] = v10;
}

void TXTextFromFileGenerator::getPreviewSceneNode(TXTextFromFileGenerator *this)
{
  v1 = theApp;
  *&v4.value = xmmword_260348470;
  PCSharedCount::PCSharedCount(&v5);
  SceneNode = OZApplication::createSceneNode(v1, &v4);
  if (SceneNode)
  {
  }

  else
  {
    v3 = 0;
  }

  PCString::~PCString(&v5);
  TXTextLayout::didFinishInitializing(v3, 1);
  TXTextLayout::getCurrentStyleForInsertion(v3, &v5);
  if (v5.var0)
  {
    v4 = **&MEMORY[0x277CC08F0];
    OZChannel::setValue(v5.var0 + 13, &v4, 24.0, 0);
  }

  *(v3 + 64488) = 1;
  operator new();
}

void sub_25FB52DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCString a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextFromFileGenerator::isMissingFile(const __CFURL **this, PCString *a2)
{
  PCURL::getFilename(this + 8054, &v8);
  v4 = PCString::empty(&v8);
  PCString::~PCString(&v8);
  if (!v4)
  {
    PCURL::getAsFileSystemString(this + 8054, &v8);
    PCString::set(a2, &v8);
    PCString::~PCString(&v8);
    PCURL::getAsFileSystemString(this + 8054, &v8);
    v5 = PCString::createCStr(&v8);
    PCString::~PCString(&v8);
    v6 = fopen(v5, "r");
    if (!v6)
    {
      return 1;
    }

    fclose(v6);
  }

  return 0;
}

uint64_t non-virtual thunk toTXTextFromFileGenerator::writeBody(const __CFURL **this, PCSerializerWriteStream *a2, uint64_t a3, int a4, unsigned int a5)
{
  return TXFileLoadingGenerator::writeBody(this - 25, a2, a3, a4, a5);
}

{
  return TXFileLoadingGenerator::writeBody(this - 31, a2, a3, a4, a5);
}

uint64_t TXTextFromFileGenerator::parseBegin(TXTextFromFileGenerator *this, PCSerializerReadStream *a2)
{
  if (*(a2 + 26) <= 4u)
  {
    OZChannel::setValue((this + 65336), MEMORY[0x277CC08F0], 0.0, 0);
  }

  return TXFileLoadingGenerator::parseBegin(this, a2);
}

uint64_t non-virtual thunk toTXTextFromFileGenerator::parseBegin(TXTextFromFileGenerator *this, PCSerializerReadStream *a2)
{
  return TXTextFromFileGenerator::parseBegin((this - 200), a2);
}

{
  return TXTextFromFileGenerator::parseBegin((this - 248), a2);
}

uint64_t non-virtual thunk toTXTextFromFileGenerator::parseEnd(TXTextFromFileGenerator *this, PCSerializerReadStream *a2)
{
  return TXFileLoadingGenerator::parseEnd((this - 200), a2);
}

{
  return TXFileLoadingGenerator::parseEnd((this - 248), a2);
}

uint64_t non-virtual thunk toTXTextFromFileGenerator::parseElement(TXTextFromFileGenerator *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  return TXFileLoadingGenerator::parseElement((this - 200), a2, a3);
}

{
  return TXFileLoadingGenerator::parseElement((this - 248), a2, a3);
}

uint64_t TXTextFromFileGenerator::didAddToScene(TXTextFromFileGenerator *this, OZScene *a2)
{
  v10 = 0uLL;
  v11 = 0;
  OZSceneSettings::getFrameDuration((a2 + 336), &v10);
  TXTextGenerator::didAddToScene(this, a2);
  v4 = *(this + 25);
  this = (this + 200);
  (*(v4 + 1128))(&v8, this);
  v13 = v8;
  OZChannel::addKeypointAt((this + 64680), &v13);
  v13 = v8;
  v12 = v9;
  PC_CMTimeSaferAdd(&v13, &v12, &v6);
  v13 = v6;
  *&v12.value = v10;
  v12.epoch = v11;
  PC_CMTimeSaferSubtract(&v13, &v12, &v7);
  OZChannel::addKeypointAt((this + 64680), &v7);
  v13 = v8;
  OZChannel::setValue((this + 64680), &v13, 0.0, 1);
  v13 = v8;
  v12 = v9;
  PC_CMTimeSaferAdd(&v13, &v12, &v6);
  v13 = v6;
  *&v12.value = v10;
  v12.epoch = v11;
  PC_CMTimeSaferSubtract(&v13, &v12, &v7);
  return OZChannel::setValue((this + 64680), &v7, 100.0, 1);
}

void sub_25FB53630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelBool::~OZChannelBool((v10 + v14));
  OZChannelText::~OZChannelText((v10 + v17));
  PCTimecodeMode::~PCTimecodeMode((v10 + v16));
  OZChannelEnum::~OZChannelEnum((v10 + v15));
  OZChannelEnum::~OZChannelEnum((v10 + v12));
  OZChannel::~OZChannel((v10 + v13));
  OZChannel::~OZChannel((v10 + 64712));
  OZChannelBool::~OZChannelBool((v10 + 64560));
  OZChannelFolder::~OZChannelFolder((v10 + v11));
  TXTextGenerator::~TXTextGenerator(v10);
  _Unwind_Resume(a1);
}

void TXTimecodeGenerator::setTimecodeBaseForMotionOrFCP(const PCString *this, int a2, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *v6 = xmmword_26034A378;
    v7 = unk_26034A388;
    v8 = xmmword_26034A398;
    v9 = unk_26034A3A8;
    OZChannelEnum::setTags(&this[8159], v6, 16);
    PCURL::PCURL(&v5, @"Text Timecode Generator Timecode Base Enum Motion");
  }

  else
  {
    v10 = 17;
    *v6 = xmmword_26034A3B8;
    v7 = unk_26034A3C8;
    v8 = xmmword_26034A3D8;
    v9 = unk_26034A3E8;
    OZChannelEnum::setTags(&this[8159], v6, 17);
    PCURL::PCURL(&v5, @"Text Timecode Generator Timecode Base Enum FCP");
  }

  OZChannelEnum::setStrings(this + 8159, &v5, a3);
  PCString::~PCString(&v5);
}

void TXTimecodeGenerator::TXTimecodeGenerator(TXTimecodeGenerator *this, const TXTimecodeGenerator *a2, uint64_t a3)
{
  TXTextGenerator::TXTextGenerator(this, a2, a3);
  *v5 = &unk_2871FE9E8;
  *(v5 + 200) = &unk_2871FEEC8;
  *(v5 + 216) = &unk_2871FF7A0;
  *(v5 + 248) = &unk_2871FF9F8;
  *(v5 + 6728) = &unk_2871FFA50;
  *(v5 + 18976) = &unk_2871FFB28;
  OZChannelFolder::OZChannelFolder((v5 + 64432), (a2 + 64432), (this + 648));
  OZChannelBool::OZChannelBool((this + 64560), (a2 + 64560), (this + 64432));
  OZChannel::OZChannel((this + 64712), (a2 + 64712), (this + 64432));
  *(this + 8089) = &unk_287248650;
  *(this + 8091) = &unk_2872489B0;
  OZChannel::OZChannel((this + 64864), (a2 + 64864), (this + 64432));
  *(this + 8108) = &unk_287248650;
  *(this + 8110) = &unk_2872489B0;
  OZChannelEnum::OZChannelEnum((this + 65016), (a2 + 65016), (this + 64432));
  OZChannelEnum::OZChannelEnum((this + 65272), (a2 + 65272), (this + 64432));
  PCSharedCount::PCSharedCount(this + 0x1FFF);
  *(this + 4096) = xmmword_26034A350;
  OZChannelText::OZChannelText((this + 65552), (a2 + 65552), (this + 64432));
  OZChannelBool::OZChannelBool((this + 65720), (a2 + 65720), (this + 64432));
  *(this + 65712) = 1;
  if (OZChannel::getValueAsInt((this + 65272), MEMORY[0x277CC08F0], 0.0) == 13 && *(theApp + 80) == 1)
  {
    TXTimecodeGenerator::setTimecodeBaseForMotionOrFCP(this, 0, 1);
  }
}

void sub_25FB53BA4(_Unwind_Exception *a1)
{
  OZChannelText::~OZChannelText((v1 + v8));
  PCTimecodeMode::~PCTimecodeMode((v1 + v7));
  OZChannelEnum::~OZChannelEnum((v1 + v6));
  OZChannelEnum::~OZChannelEnum((v1 + v5));
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZChannelBool::~OZChannelBool((v1 + 64560));
  OZChannelFolder::~OZChannelFolder((v1 + v4));
  TXTextGenerator::~TXTextGenerator(v1);
  _Unwind_Resume(a1);
}

void TXTimecodeGenerator::~TXTimecodeGenerator(TXTimecodeGenerator *this)
{
  *this = &unk_2871FE9E8;
  *(this + 25) = &unk_2871FEEC8;
  *(this + 27) = &unk_2871FF7A0;
  *(this + 31) = &unk_2871FF9F8;
  *(this + 841) = &unk_2871FFA50;
  *(this + 2372) = &unk_2871FFB28;
  OZChannelBool::~OZChannelBool((this + 65720));
  OZChannelText::~OZChannelText((this + 65552));
  PCTimecodeMode::~PCTimecodeMode((this + 65528));
  OZChannelEnum::~OZChannelEnum((this + 65272));
  OZChannelEnum::~OZChannelEnum((this + 65016));
  OZChannel::~OZChannel((this + 64864));
  OZChannel::~OZChannel((this + 64712));
  OZChannelBool::~OZChannelBool((this + 64560));
  OZChannelFolder::~OZChannelFolder((this + 64432));

  TXTextGenerator::~TXTextGenerator(this);
}

{
  TXTimecodeGenerator::~TXTimecodeGenerator(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXTimecodeGenerator::~TXTimecodeGenerator(TXTimecodeGenerator *this)
{
  TXTimecodeGenerator::~TXTimecodeGenerator((this - 200));
}

{
  TXTimecodeGenerator::~TXTimecodeGenerator((this - 216));
}

{
  TXTimecodeGenerator::~TXTimecodeGenerator((this - 248));
}

{
  TXTimecodeGenerator::~TXTimecodeGenerator((this - 6728));
}

{
  TXTimecodeGenerator::~TXTimecodeGenerator((this - 18976));
}

{
  TXTimecodeGenerator::~TXTimecodeGenerator((this - 200));

  JUMPOUT(0x2666E9F00);
}

{
  TXTimecodeGenerator::~TXTimecodeGenerator((this - 216));

  JUMPOUT(0x2666E9F00);
}

{
  TXTimecodeGenerator::~TXTimecodeGenerator((this - 248));

  JUMPOUT(0x2666E9F00);
}

{
  TXTimecodeGenerator::~TXTimecodeGenerator((this - 6728));

  JUMPOUT(0x2666E9F00);
}

{
  TXTimecodeGenerator::~TXTimecodeGenerator((this - 18976));

  JUMPOUT(0x2666E9F00);
}

uint64_t TXTimecodeGenerator::parseEnd(TXTimecodeGenerator *this, PCSerializerReadStream *a2)
{
  v3 = TXTextLayout::parseEnd(this, a2);
  if (OZChannel::getValueAsInt((this + 65272), MEMORY[0x277CC08F0], 0.0) == 13)
  {
    TXTimecodeGenerator::setTimecodeBaseForMotionOrFCP(this, 0, 1);
  }

  return v3;
}

uint64_t non-virtual thunk toTXTimecodeGenerator::parseEnd(TXTimecodeGenerator *this, PCSerializerReadStream *a2)
{
  return TXTimecodeGenerator::parseEnd((this - 200), a2);
}

{
  return TXTimecodeGenerator::parseEnd((this - 248), a2);
}

void TXTimecodeGenerator::prepareForRender(TXTimecodeGenerator *this, CMTime *a2)
{
  v21 = *a2;
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v20, v4);
  v5 = (*(*(this + 25) + 640))(this + 200);
  (*(*v5 + 712))(v17);
  v15 = *a2;
  v6 = (*(*(this + 25) + 272))(this + 200);
  OZSceneSettings::getFrameDuration((v6 + 336), &v13);
  time1 = v15;
  *&time2.value = v13;
  time2.epoch = v14;
  v7 = PC_CMTimeFloorToSampleDuration(&time1, &time2, &v16);
  v8 = (*(*(this + 25) + 272))(this + 200, v7);
  OZSceneSettings::getFrameDuration((v8 + 336), &v11);
  *&time1.value = *&v17[0].var0;
  time1.epoch = v18;
  time2 = v16;
  if (CMTimeCompare(&time1, &time2) <= 0 && ((*&time1.value = *&v17[0].var0, time1.epoch = v18, time2 = v19, PC_CMTimeSaferAdd(&time1, &time2, &v23), time1 = v23, *&time2.value = v11, time2.epoch = v12, PC_CMTimeSaferSubtract(&time1, &time2, &v22), time1 = v16, time2 = v22, CMTimeCompare(&time1, &time2) <= 0) || (v19.flags & 1) != 0 && (v19.flags & 0x10) != 0))
  {
    PCSharedCount::PCSharedCount(v17);
    TXTextLayout::setString(this, v17, 1);
    TXTextLayout::updateDisplayString(this, &v21);
    v9 = *(*(this + 2422) + 16);
    TXTextLayout::getDisplayString(this, &time1);
    v10 = PCString::size(&time1);
    *(v9 + 24) = 0;
    *(v9 + 28) = v10;
    PCString::~PCString(&time1);
    TXTextLayout::rebuildParagraphStyles(this);
    TXTextLayout::setAllParagraphsDirty(this);
    TXTextLayout::doLayout(this, a2, 0);
    PCString::~PCString(v17);
    OZLockingGroup::WriteSentry::~WriteSentry(v20);
    TXTextLayout::prepareForRender(this, a2);
  }

  else
  {
    OZLockingGroup::WriteSentry::~WriteSentry(v20);
  }
}

void sub_25FB542E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, PCString a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  PCString::~PCString((v28 - 64));
  PCString::~PCString(&a22);
  OZLockingGroup::WriteSentry::~WriteSentry(&a28);
  _Unwind_Resume(a1);
}

void TXTimecodeGenerator::prepareForRender(TXTimecodeGenerator *this, const OZRenderState *a2)
{
  OZRenderParams::OZRenderParams(v5);
  v4 = OZRenderParams::setState(v5, a2);
  (*(*this + 576))(this, v5, v4);
  OZRenderParams::~OZRenderParams(v5);
}

uint64_t TXTimecodeGenerator::getPreviewSceneNode(TXTimecodeGenerator *this)
{
  v1 = theApp;
  *&v5.value = xmmword_260348450;
  PCSharedCount::PCSharedCount(&v6);
  SceneNode = OZApplication::createSceneNode(v1, &v5);
  if (SceneNode)
  {
  }

  else
  {
    v3 = 0;
  }

  PCString::~PCString(&v6);
  TXTextLayout::didFinishInitializing(v3, 1);
  TXTextLayout::getCurrentStyleForInsertion(v3, &v6);
  if (v6.var0)
  {
    v5 = **&MEMORY[0x277CC08F0];
    OZChannel::setValue(v6.var0 + 13, &v5, 16.0, 0);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v3)
  {
    return v3 + 200;
  }

  else
  {
    return 0;
  }
}

void sub_25FB544E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCString a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void OZChannelTimecode::OZChannelTimecode(OZChannelTimecode *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannelTimecode_FactoryBase = getOZChannelTimecode_FactoryBase();
  OZChannel::OZChannel(this, OZChannelTimecode_FactoryBase, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_287248650;
  this->var2 = &unk_2872489B0;
  OZChannelTimecodeInfo = OZChannelTimecode::createOZChannelTimecodeInfo(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelTimecode::_OZChannelTimecodeInfo;
    this->var17 = OZChannelTimecode::_OZChannelTimecodeInfo;
  }

  this->var16 = var17;
  OZChannelTimecode::createOZChannelTimecodeImpl(OZChannelTimecodeInfo);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelTimecode::_OZChannelTimecodeImpl;
    this->var15 = OZChannelTimecode::_OZChannelTimecodeImpl;
  }

  this->var14 = var15;
}

uint64_t OZChannelTimecode::createOZChannelTimecodeInfo(OZChannelTimecode *this)
{
  if (atomic_load_explicit(&OZChannelTimecode::createOZChannelTimecodeInfo(void)::_OZChannelTimecodeInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelTimecode::createOZChannelTimecodeInfo(void)::_OZChannelTimecodeInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelTimecode::createOZChannelTimecodeInfo(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelTimecode::_OZChannelTimecodeInfo;
}

uint64_t OZChannelTimecode::createOZChannelTimecodeImpl(OZChannelTimecode *this)
{
  if (atomic_load_explicit(&OZChannelTimecode::createOZChannelTimecodeImpl(void)::_OZChannelTimecodeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZChannelTimecode::createOZChannelTimecodeImpl(void)::_OZChannelTimecodeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelTimecode::createOZChannelTimecodeImpl(void)::{lambda(void)#1} &&>>);
  }

  return OZChannelTimecode::_OZChannelTimecodeImpl;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelTimecode::createOZChannelTimecodeInfo(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelTimecode::_OZChannelTimecodeInfo)
  {
    operator new();
  }
}

void OZChannelTimecodeInfo::OZChannelTimecodeInfo(OZChannelTimecodeInfo *this)
{
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 1.0, "");
  PCSingleton::PCSingleton((v2 + 80), 100);
  *this = &unk_2871FFB68;
  *(this + 10) = &unk_2871FFB88;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZChannelTimecode::createOZChannelTimecodeImpl(void)::{lambda(void)#1} &&>>()
{
  if (!OZChannelTimecode::_OZChannelTimecodeImpl)
  {
    operator new();
  }
}

void sub_25FB548F8(_Unwind_Exception *a1)
{
  OZChannelImpl::~OZChannelImpl(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void sub_25FB54F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannelEnum::~OZChannelEnum((v12 + v18));
  OZChannelEnum::~OZChannelEnum((v12 + v14));
  OZChannelEnum::~OZChannelEnum((v12 + v19));
  OZChannelEnum::~OZChannelEnum((v12 + v17));
  OZChannelBool::~OZChannelBool((v12 + 65168));
  OZChannel::~OZChannel((v12 + 65016));
  OZChannel::~OZChannel((v12 + v16));
  OZChannel::~OZChannel((v12 + v15));
  OZChannelBool::~OZChannelBool((v12 + 64560));
  OZChannelFolder::~OZChannelFolder((v12 + v13));
  TXTextGenerator::~TXTextGenerator(v12);
  _Unwind_Resume(a1);
}

void TXTimeDateGenerator::TXTimeDateGenerator(TXTimeDateGenerator *this, const TXTimeDateGenerator *a2, uint64_t a3)
{
  TXTextGenerator::TXTextGenerator(this, a2, a3);
  *v5 = &unk_2871FFC58;
  *(v5 + 200) = &unk_287200138;
  *(v5 + 216) = &unk_287200A10;
  *(v5 + 248) = &unk_287200C68;
  *(v5 + 6728) = &unk_287200CC0;
  *(v5 + 18976) = &unk_287200D98;
  OZChannelFolder::OZChannelFolder((v5 + 64432), (a2 + 64432), (this + 648));
  OZChannelBool::OZChannelBool((this + 64560), (a2 + 64560), (this + 64432));
  OZChannel::OZChannel((this + 64712), (a2 + 64712), (this + 64432));
  *(this + 8089) = &unk_287245C60;
  *(this + 8091) = &unk_287245FC0;
  OZChannel::OZChannel((this + 64864), (a2 + 64864), (this + 64432));
  *(this + 8108) = &unk_287245C60;
  *(this + 8110) = &unk_287245FC0;
  OZChannel::OZChannel((this + 65016), (a2 + 65016), (this + 64432));
  *(this + 8127) = &unk_287245C60;
  *(this + 8129) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 65168), (a2 + 65168), (this + 64432));
  OZChannelEnum::OZChannelEnum((this + 65320), (a2 + 65320), (this + 64432));
  OZChannelEnum::OZChannelEnum((this + 65576), (a2 + 65576), (this + 64432));
  OZChannelEnum::OZChannelEnum((this + 65832), (a2 + 65832), (this + 64432));
  OZChannelEnum::OZChannelEnum((this + 66088), (a2 + 66088), (this + 64432));
  *(this + 8293) = 0;
  *(this + 66352) = *(a2 + 66352);
  TXTextLayout::setLocale(this, *(a2 + 8051));
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  *(this + 8293) = v6;
  [v6 setFormatterBehavior:1040];
}

void sub_25FB55438(_Unwind_Exception *a1)
{
  OZChannelEnum::~OZChannelEnum((v1 + v6));
  OZChannelEnum::~OZChannelEnum((v1 + v8));
  OZChannelEnum::~OZChannelEnum((v1 + v7));
  OZChannelBool::~OZChannelBool((v1 + 65168));
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZChannelBool::~OZChannelBool((v1 + 64560));
  OZChannelFolder::~OZChannelFolder((v1 + v5));
  TXTextGenerator::~TXTextGenerator(v1);
  _Unwind_Resume(a1);
}

void TXTimeDateGenerator::~TXTimeDateGenerator(TXTimeDateGenerator *this)
{
  *this = &unk_2871FFC58;
  *(this + 25) = &unk_287200138;
  *(this + 27) = &unk_287200A10;
  *(this + 31) = &unk_287200C68;
  *(this + 841) = &unk_287200CC0;
  *(this + 2372) = &unk_287200D98;

  OZChannelEnum::~OZChannelEnum((this + 66088));
  OZChannelEnum::~OZChannelEnum((this + 65832));
  OZChannelEnum::~OZChannelEnum((this + 65576));
  OZChannelEnum::~OZChannelEnum((this + 65320));
  OZChannelBool::~OZChannelBool((this + 65168));
  OZChannel::~OZChannel((this + 65016));
  OZChannel::~OZChannel((this + 64864));
  OZChannel::~OZChannel((this + 64712));
  OZChannelBool::~OZChannelBool((this + 64560));
  OZChannelFolder::~OZChannelFolder((this + 64432));

  TXTextGenerator::~TXTextGenerator(this);
}

{
  TXTimeDateGenerator::~TXTimeDateGenerator(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXTimeDateGenerator::~TXTimeDateGenerator(TXTimeDateGenerator *this)
{
  TXTimeDateGenerator::~TXTimeDateGenerator((this - 200));
}

{
  TXTimeDateGenerator::~TXTimeDateGenerator((this - 216));
}

{
  TXTimeDateGenerator::~TXTimeDateGenerator((this - 248));
}

{
  TXTimeDateGenerator::~TXTimeDateGenerator((this - 6728));
}

{
  TXTimeDateGenerator::~TXTimeDateGenerator((this - 18976));
}

{
  TXTimeDateGenerator::~TXTimeDateGenerator((this - 200));

  JUMPOUT(0x2666E9F00);
}

{
  TXTimeDateGenerator::~TXTimeDateGenerator((this - 216));

  JUMPOUT(0x2666E9F00);
}

{
  TXTimeDateGenerator::~TXTimeDateGenerator((this - 248));

  JUMPOUT(0x2666E9F00);
}

{
  TXTimeDateGenerator::~TXTimeDateGenerator((this - 6728));

  JUMPOUT(0x2666E9F00);
}

{
  TXTimeDateGenerator::~TXTimeDateGenerator((this - 18976));

  JUMPOUT(0x2666E9F00);
}

void *TXTimeDateGenerator::operator=(TXTextLayout *a1, const void *a2)
{
  TXTextGenerator::operator=(a1);
  if (result)
  {
    v5 = result[8051];

    return TXTextLayout::setLocale(a1, v5);
  }

  return result;
}

uint64_t TXTimeDateGenerator::generateString(TXTimeDateGenerator *this, PCString *a2, CMTime *a3)
{
  v56 = *a3;
  v4 = this + 200;
  v5 = (*(*(this + 25) + 640))(this + 200);
  v6 = (*(*v4 + 272))(v4);
  if (!v6 || (v7 = v6, (*(*v5 + 712))(&v54, v5), OZSceneSettings::getFrameDuration((v7 + 336), &v50), time1 = v56, *&time2.value = v50, time2.epoch = v51, PC_CMTimeFloorToSampleDuration(&time1, &time2, &v52), OZSceneSettings::getFrameDuration((v7 + 336), &v48), time1 = v54, *&time2.value = v52, time2.epoch = v53, result = CMTimeCompare(&time1, &time2), result <= 0) && ((time1 = v54, time2 = v55, PC_CMTimeSaferAdd(&time1, &time2, &time), time1 = time, *&time2.value = v48, time2.epoch = v49, PC_CMTimeSaferSubtract(&time1, &time2, &v57), *&time1.value = v52, time1.epoch = v53, time2 = v57, result = CMTimeCompare(&time1, &time2), result <= 0) || (v55.flags & 1) != 0 && (v55.flags & 0x10) != 0))
  {
    TXTimeDateGenerator::updateFormatter(this);
    if (OZChannel::getValueAsInt((this + 64560), MEMORY[0x277CC08F0], 0.0))
    {
      (*(*(this + 25) + 1128))(&v54, v4);
      time2 = v54;
      time1 = v56;
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      Seconds = CMTimeGetSeconds(&time);
      v10 = (*(*(this + 25) + 272))(v4);
      OZSceneSettings::getFrameDuration((v10 + 336), &v52);
      time1 = v54;
      time2 = v55;
      PC_CMTimeSaferAdd(&time1, &time2, &time);
      time1 = time;
      *&time2.value = v52;
      time2.epoch = v53;
      PC_CMTimeSaferSubtract(&time1, &time2, &v57);
      v11 = Seconds / CMTimeGetSeconds(&v57);
      v12 = MEMORY[0x277CC08F0];
      OZChannel::getValueAsDouble((this + 64864), MEMORY[0x277CC08F0], 0.0);
      v14 = v13;
      OZChannel::getValueAsDouble((this + 65016), v12, 0.0);
      v16 = v14 + v11 * (v15 - v14);
    }

    else
    {
      OZChannel::getValueAsDouble((this + 64712), &v56, 0.0);
      v16 = v17;
    }

    ValueAsInt = OZChannel::getValueAsInt((this + 65320), MEMORY[0x277CC08F0], 0.0);
    if (ValueAsInt <= 2)
    {
      switch(ValueAsInt)
      {
        case 0:
          v33 = MEMORY[0x277CBEAA8];
          v34 = v16;
LABEL_23:
          v37 = [v33 dateWithTimeIntervalSinceReferenceDate:v34];
          goto LABEL_27;
        case 1:
          v26 = v16;
          v27 = v16 / 60;
          v28 = 60;
          goto LABEL_22;
        case 2:
          v26 = v16;
          v27 = v16 / 3600;
          v28 = 3600;
LABEL_22:
          v34 = v16 - (v26 - v27 * v28);
          v33 = MEMORY[0x277CBEAA8];
          goto LABEL_23;
      }

LABEL_20:
      PCPrint("File %s, line %d should not have been reached:\n\t", v19, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Text/TXTimeDateGenerator.mm");
      pcAbortImpl();
    }

    if (ValueAsInt == 3)
    {
      v29 = [MEMORY[0x277CBEA80] currentCalendar];
      v35 = [MEMORY[0x277CBEBB0] localTimeZone];
      v36 = [v29 componentsInTimeZone:v35 fromDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", v16)}];
      v31 = v36;
    }

    else
    {
      if (ValueAsInt == 4)
      {
        v29 = [MEMORY[0x277CBEA80] currentCalendar];
        v38 = [MEMORY[0x277CBEBB0] localTimeZone];
        v32 = [v29 componentsInTimeZone:v38 fromDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", v16)}];
        v31 = v32;
      }

      else
      {
        if (ValueAsInt != 5)
        {
          goto LABEL_20;
        }

        v29 = [MEMORY[0x277CBEA80] currentCalendar];
        v30 = [MEMORY[0x277CBEBB0] localTimeZone];
        v31 = [v29 componentsInTimeZone:v30 fromDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", v16)}];
        [v31 setMonth:1];
        v32 = v31;
      }

      [v32 setDay:1];
      v36 = v31;
    }

    [v36 setHour:0];
    [v31 setMinute:0];
    [v31 setSecond:0];
    v37 = [v29 dateFromComponents:v31];
LABEL_27:
    v39 = v37;
    TXTimeDateGenerator::check24HourFormat(this);
    v40 = [*(this + 8293) stringFromDate:v39];
    v41 = [v40 length];
    if (OZChannel::getValueAsInt((this + 65168), MEMORY[0x277CC08F0], 0.0))
    {
      v42 = [MEMORY[0x277CCAB68] stringWithString:v40];
      if ([v42 length])
      {
        v43 = 0;
        v44 = MEMORY[0x277D85DE0];
        do
        {
          if (v43)
          {
            v45 = [v42 characterAtIndex:v43 - 1];
          }

          else
          {
            v45 = 0;
          }

          v46 = [v42 characterAtIndex:v43];
          if (v43 >= v41 - 1)
          {
            v47 = 0;
          }

          else
          {
            v47 = [v42 characterAtIndex:v43 + 1];
          }

          if ((v45 > 0xFF || (*(v44 + 4 * v45 + 60) & 0x400) == 0) && v46 <= 0xFF && (*(v44 + 4 * v46 + 60) & 0x400) != 0 && (v47 > 0xFF || (*(v44 + 4 * v47 + 60) & 0x400) == 0))
          {
            [v42 insertString:@"0" atIndex:v43++];
          }

          ++v43;
        }

        while (v43 < [v42 length]);
      }

      [v42 length];
    }

    operator new[]();
  }

  return result;
}

uint64_t TXTimeDateGenerator::updateFormatter(TXTimeDateGenerator *this)
{
  v2 = (this + 64408);
  v3 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 65832), MEMORY[0x277CC08F0], 0.0);
  v5 = OZChannel::getValueAsInt((this + 65576), v3, 0.0);
  [v2[242] setDateStyle:ValueAsInt];
  [v2[242] setTimeStyle:v5];
  v6 = v2[242];
  v7 = *v2;

  return [v6 setLocale:v7];
}

uint64_t TXTimeDateGenerator::check24HourFormat(id *this)
{
  v2 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"j" options:0 locale:{objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale")}];
  v3 = [this[8293] dateFormat];
  v4 = [v3 rangeOfString:@"h"];
  v6 = v5;
  result = [v2 rangeOfString:@"H"];
  if (v8)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = [objc_msgSend(v3 stringByReplacingCharactersInRange:v4 withString:{v6, @"H", "stringByReplacingOccurrencesOfString:withString:", @"a", &stru_2872E16E0}];
    v11 = this[8293];

    return [v11 setDateFormat:v10];
  }

  return result;
}

uint64_t TXTimeDateGenerator::getPreviewSceneNode(TXTimeDateGenerator *this)
{
  v1 = theApp;
  *&v5.value = xmmword_260348460;
  PCSharedCount::PCSharedCount(&v6);
  SceneNode = OZApplication::createSceneNode(v1, &v5);
  if (SceneNode)
  {
  }

  else
  {
    v3 = 0;
  }

  PCString::~PCString(&v6);
  TXTextLayout::didFinishInitializing(v3, 1);
  TXTextLayout::getCurrentStyleForInsertion(v3, &v6);
  if (v6.var0)
  {
    v5 = **&MEMORY[0x277CC08F0];
    OZChannel::setValue(v6.var0 + 13, &v5, 12.0, 0);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v3)
  {
    return v3 + 200;
  }

  else
  {
    return 0;
  }
}

void sub_25FB56308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCString a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTimeDateGenerator::writeBody(TXTimeDateGenerator *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  TXTextLayout::writeBody(this, a2, a3, a4, a5);
  PCSerializerWriteStream::pushScope(a2, &TXTimeDateGeneratorScope);
  (*(*a2 + 16))(a2, 1);
  v7 = MEMORY[0x2666E8390](*(this + 8051));
  PCURL::PCURL(&v9, v7);
  (*(*a2 + 200))(a2, 2, &v9);
  PCString::~PCString(&v9);
  (*(*a2 + 24))(a2);
  return PCSerializerWriteStream::popScope(a2);
}

uint64_t non-virtual thunk toTXTimeDateGenerator::writeBody(TXTimeDateGenerator *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  return TXTimeDateGenerator::writeBody((this - 200), a2, a3, a4, a5);
}

{
  return TXTimeDateGenerator::writeBody((this - 248), a2, a3, a4, a5);
}

uint64_t TXTimeDateGenerator::parseBegin(TXTimeDateGenerator *this, PCSerializerReadStream *a2)
{
  TXTextLayout::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &TXTimeDateGeneratorScope);
  return 1;
}

uint64_t non-virtual thunk toTXTimeDateGenerator::parseBegin(TXTimeDateGenerator *this, PCSerializerReadStream *a2)
{
  TXTextLayout::parseBegin((this - 200), a2);
  PCSerializerReadStream::pushScope(a2, &TXTimeDateGeneratorScope);
  return 1;
}

{
  TXTextLayout::parseBegin((this - 248), a2);
  PCSerializerReadStream::pushScope(a2, &TXTimeDateGeneratorScope);
  return 1;
}

uint64_t TXTimeDateGenerator::parseElement(TXTimeDateGenerator *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v6 = (*(*(this + 25) + 272))();
  if ((TXParagraphStyleFolder_Factory::version(v6) & 1) == 0 && *(a3 + 2) == 1)
  {
    PCSharedCount::PCSharedCount(&v9);
    PCSerializerReadStream::getAttributeAsString(a2, a3, 2, &v9);
    v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:PCString::ns_str(&v9)];
    TXTextLayout::setLocale(this, v7);

    PCString::~PCString(&v9);
  }

  TXTextLayout::parseElement(this, a2, a3);
  return 1;
}

uint64_t non-virtual thunk toTXTimeDateGenerator::parseElement(TXTimeDateGenerator *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  TXTimeDateGenerator::parseElement((this - 200), a2, a3);
  return 1;
}

{
  TXTimeDateGenerator::parseElement((this - 248), a2, a3);
  return 1;
}

uint64_t TXTimeDateGenerator::TXTimeDateGenerator_valueInfo::getInstance(TXTimeDateGenerator::TXTimeDateGenerator_valueInfo *this)
{
  if (atomic_load_explicit(&TXTimeDateGenerator::TXTimeDateGenerator_valueInfo::getInstance(void)::TXTimeDateGenerator_valueInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTimeDateGenerator::TXTimeDateGenerator_valueInfo::getInstance(void)::TXTimeDateGenerator_valueInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTimeDateGenerator::TXTimeDateGenerator_valueInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTimeDateGenerator::TXTimeDateGenerator_valueInfo::_TXTimeDateGenerator_valueInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTimeDateGenerator::TXTimeDateGenerator_valueInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTimeDateGenerator::TXTimeDateGenerator_valueInfo::_TXTimeDateGenerator_valueInfo)
  {
    operator new();
  }
}

TXTimeDateGenerator::TXTimeDateGenerator_valueInfo *TXTimeDateGenerator::TXTimeDateGenerator_valueInfo::TXTimeDateGenerator_valueInfo(TXTimeDateGenerator::TXTimeDateGenerator_valueInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 60.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287200DD8;
  *(this + 10) = &unk_287200DF8;
  return this;
}

uint64_t TXTimeDateGenerator::TXTimeDateGenerator_startImpl::getInstance(TXTimeDateGenerator::TXTimeDateGenerator_startImpl *this)
{
  if (atomic_load_explicit(&TXTimeDateGenerator::TXTimeDateGenerator_startImpl::getInstance(void)::TXTimeDateGenerator_startImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTimeDateGenerator::TXTimeDateGenerator_startImpl::getInstance(void)::TXTimeDateGenerator_startImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTimeDateGenerator::TXTimeDateGenerator_startImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTimeDateGenerator::TXTimeDateGenerator_startImpl::_TXTimeDateGenerator_start;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTimeDateGenerator::TXTimeDateGenerator_startImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTimeDateGenerator::TXTimeDateGenerator_startImpl::_TXTimeDateGenerator_start)
  {
    operator new();
  }
}

uint64_t TXTimeDateGenerator::TXTimeDateGenerator_endImpl::getInstance(TXTimeDateGenerator::TXTimeDateGenerator_endImpl *this)
{
  if (atomic_load_explicit(&TXTimeDateGenerator::TXTimeDateGenerator_endImpl::getInstance(void)::TXTimeDateGenerator_endImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTimeDateGenerator::TXTimeDateGenerator_endImpl::getInstance(void)::TXTimeDateGenerator_endImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTimeDateGenerator::TXTimeDateGenerator_endImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTimeDateGenerator::TXTimeDateGenerator_endImpl::_TXTimeDateGenerator_end;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTimeDateGenerator::TXTimeDateGenerator_endImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTimeDateGenerator::TXTimeDateGenerator_endImpl::_TXTimeDateGenerator_end)
  {
    operator new();
  }
}

uint64_t TXTimeDateGenerator::TXTimeDateGenerator_timeStyleImpl::getInstance(TXTimeDateGenerator::TXTimeDateGenerator_timeStyleImpl *this)
{
  if (atomic_load_explicit(&TXTimeDateGenerator::TXTimeDateGenerator_timeStyleImpl::getInstance(void)::TXTimeDateGenerator_timeStyleImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTimeDateGenerator::TXTimeDateGenerator_timeStyleImpl::getInstance(void)::TXTimeDateGenerator_timeStyleImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTimeDateGenerator::TXTimeDateGenerator_timeStyleImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTimeDateGenerator::TXTimeDateGenerator_timeStyleImpl::_TXTimeDateGenerator_timeStyle;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTimeDateGenerator::TXTimeDateGenerator_timeStyleImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTimeDateGenerator::TXTimeDateGenerator_timeStyleImpl::_TXTimeDateGenerator_timeStyle)
  {
    operator new();
  }
}

uint64_t TXTimeDateGenerator::TXTimeDateGenerator_dateStyleImpl::getInstance(TXTimeDateGenerator::TXTimeDateGenerator_dateStyleImpl *this)
{
  if (atomic_load_explicit(&TXTimeDateGenerator::TXTimeDateGenerator_dateStyleImpl::getInstance(void)::TXTimeDateGenerator_dateStyleImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTimeDateGenerator::TXTimeDateGenerator_dateStyleImpl::getInstance(void)::TXTimeDateGenerator_dateStyleImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTimeDateGenerator::TXTimeDateGenerator_dateStyleImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTimeDateGenerator::TXTimeDateGenerator_dateStyleImpl::_TXTimeDateGenerator_dateStyle;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTimeDateGenerator::TXTimeDateGenerator_dateStyleImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTimeDateGenerator::TXTimeDateGenerator_dateStyleImpl::_TXTimeDateGenerator_dateStyle)
  {
    operator new();
  }
}

void TXSequenceBehavior::TXSequenceBehavior(TXSequenceBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  TXTextBehavior::TXTextBehavior(this, a2, a3, a4);
  *(v5 + 536) = &unk_287201850;
  OZLocking::OZLocking((v5 + 544));
  *this = &unk_287201030;
  *(this + 2) = &unk_287201370;
  *(this + 6) = &unk_2872015C8;
  *(this + 42) = &unk_287201620;
  *(this + 67) = &unk_287201648;
  *(this + 68) = &unk_2872016A8;
  *(this + 93) = 0;
  *(this + 95) = 0;
  *(this + 94) = 0;
  *(this + 796) = 0;
  *(this + 101) = 0;
  TXSequenceChannels::TXSequenceChannels((this + 816), (this + 56), 0xC8u);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Controls");
  OZChannelFolder::OZChannelFolder((this + 27984), &v8, (this + 56), 0xC9u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Sequencing Enum");
  PCURL::PCURL(&v7, @"Text Sequence Behavior Sequencing");
  OZChannelEnum::OZChannelEnum((this + 28112), 1u, &v8, &v7, (this + 27984), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Units Enum");
  PCURL::PCURL(&v7, @"Text Sequence Behavior Units");
  OZChannelEnum::OZChannelEnum((this + 28368), &v8, &v7, (this + 27984), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Start");
  OZChannelPercent::OZChannelPercent((this + 28624), 0.0, &v8, (this + 27984), 0xDAu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior End");
  OZChannelPercent::OZChannelPercent((this + 28776), 0.0, &v8, (this + 27984), 0xDBu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Transcription");
  OZChannelFolder::OZChannelFolder((this + 28928), &v8, (this + 27984), 0xF4u, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Transcription");
  OZChannelBool::OZChannelBool((this + 29056), &v8, (this + 28928), 0xF0u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Duration");
  OZChannelUint32::OZChannelUint32((this + 29208), 10, &v8, (this + 28928), 0xEEu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Word;Line;Block");
  PCString::PCString(&v7, "Trigger When");
  OZChannelEnum::OZChannelEnum((this + 29360), &v8, &v7, (this + 28928), 0xEDu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Trigger Offset");
  OZChannelUint32::OZChannelUint32((this + 29616), &v8, (this + 28928), 0xF2u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Speech Begins;Speech Ends");
  PCString::PCString(&v7, "Trigger Time");
  OZChannelEnum::OZChannelEnum((this + 29768), &v8, &v7, (this + 28928), 0xF1u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "None;Word;Line");
  PCString::PCString(&v7, "Complete");
  OZChannelEnum::OZChannelEnum((this + 30024), &v8, &v7, (this + 28928), 0xF5u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Completion Duration");
  OZChannelUint32::OZChannelUint32((this + 30280), &v8, (this + 28928), 0xF8u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Add to input;Multiply by input;Replace input");
  PCString::PCString(&v7, "Apply Mode");
  OZChannelEnum::OZChannelEnum((this + 30432), 2u, &v8, &v7, (this + 27984), 0xF3u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Subselection");
  OZChannelFolder::OZChannelFolder((this + 30688), &v8, (this + 27984), 0xE5u, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "All;Character;Character in Word;Character in Line;Word;Word in Line;Line;Word in Phrase;Emoji");
  PCURL::PCURL(&v7, @"Text Sequence Behavior Subselection Units");
  OZChannelEnum::OZChannelEnum((this + 30816), &v8, &v7, (this + 30688), 0xE6u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Subselection Start");
  OZChannelUint32::OZChannelUint32((this + 31072), 0.0, &v8, (this + 30688), 0xE7u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Subselection End");
  OZChannelUint32::OZChannelUint32((this + 31224), 1.0, &v8, (this + 30688), 0xE8u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Subselection Invert");
  OZChannelBool::OZChannelBool((this + 31376), &v8, (this + 30688), 0xE9u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Subselection Reverse");
  OZChannelBool::OZChannelBool((this + 31528), &v8, (this + 30688), 0xEAu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Spread");
  OZChannelDouble::OZChannelDouble((this + 31680), 1.0, &v8, (this + 27984), 0xCCu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Direction Enum");
  PCURL::PCURL(&v7, @"Text Sequence Behavior Direction");
  OZChannelEnum::OZChannelEnum((this + 31832), &v8, &v7, (this + 27984), 0xCDu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Random Seed");
  OZChannelSeed::OZChannelSeed((this + 32088), &v8, (this + 27984), 0xCFu, 4194306, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Speed Enum");
  PCURL::PCURL(&v7, @"Text Sequence Behavior Speed");
  OZChannelEnum::OZChannelEnum((this + 32240), &v8, &v7, (this + 27984), 0xD0u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Custom Speed");
  OZChannelPercent::OZChannelPercent((this + 32496), 0.0, &v8, (this + 27984), 0xD1u, 0x400002u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Loops");
  OZChannelDouble::OZChannelDouble((this + 32648), 1, &v8, (this + 27984), 0xD2u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Apply Speed Enum");
  PCURL::PCURL(&v7, @"Text Sequence Behavior Apply Speed");
  OZChannelEnum::OZChannelEnum((this + 32800), &v8, &v7, (this + 27984), 0xD3u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Start Offset");
  OZChannelUint32::OZChannelUint32((this + 33056), &v8, (this + 27984), 0xEBu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior End Condition Enum");
  PCURL::PCURL(&v7, @"Text Sequence Behavior End Condition");
  OZChannelEnum::OZChannelEnum((this + 33208), &v8, &v7, (this + 27984), 0xD4u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior End Offset");
  OZChannelUint32::OZChannelUint32((this + 33464), &v8, (this + 27984), 0xD5u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Variance");
  OZChannelFolder::OZChannelFolder((this + 33616), &v8, (this + 27984), 0xDCu, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Variance");
  OZChannelPercent::OZChannelPercent(this + 222, 0.0, &v8, (this + 33616), 0xD6u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Variance Min");
  OZChannelPercent::OZChannelPercent(this + 223, -1.0, &v8, (this + 33616), 0xD7u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Variance Max");
  OZChannelPercent::OZChannelPercent(this + 224, 1.0, &v8, (this + 33616), 0xD8u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Variance Amount");
  OZChannelDouble::OZChannelDouble((this + 34200), 100.0, &v8, (this + 33616), 0xDDu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Variance Noisiness");
  OZChannelDouble::OZChannelDouble((this + 34352), 0.5, &v8, (this + 33616), 0xDEu, 0, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Fix End Points Enum");
  PCURL::PCURL(&v7, @"Text Sequence Behavior Fix End Points");
  OZChannelEnum::OZChannelEnum((this + 34504), &v8, &v7, (this + 33616), 0xDFu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior Variance Seed");
  OZChannelSeed::OZChannelSeed((this + 34760), &v8, (this + 33616), 0xD9u, 0, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Draw Selection");
  OZChannelBool::OZChannelBool((this + 34912), &v8, (this + 27984), 0xE0u, 0x400002u, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "Selection Color");
  OZChannelPercent::OZChannelPercent((this + 35064), 0.35, &v8, (this + 27984), 0xE1u, 0x400002u, 0, 0);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Behavior OSC Mode Enum");
  PCURL::PCURL(&v7, @"Text Sequence Behavior OSC Mode");
  OZChannelEnum::OZChannelEnum((this + 35216), &v8, &v7, (this + 27984), 0xE2u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCURL::PCURL(&v8, @"Text Sequence Position Options Enum");
  PCURL::PCURL(&v7, @"Text Sequence Position Options");
  OZChannelEnum::OZChannelEnum((this + 35472), &v8, &v7, (this + 27984), 0xE3u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "");
  OZChannelBool::OZChannelBool((this + 35728), 1, &v8, (this + 27984), 0xE4u, 2u, 0, 0);
  PCString::~PCString(&v8);
  PCString::PCString(&v8, "");
  OZChannelBool::OZChannelBool((this + 35880), 1, &v8, (this + 27984), 0xECu, 2u, 0, 0);
  PCString::~PCString(&v8);
  *(this + 36049) = 0;
  *(this + 2254) = 0u;
  *(this + 2252) = 0u;
  *(this + 4507) = this + 36064;
  v6 = MEMORY[0x277CC0898];
  *(this + 2255) = *MEMORY[0x277CC0898];
  *(this + 4512) = *(v6 + 16);
  *(this + 9026) = 0;
  *(this + 4514) = 0;
  OZChannelBase::resetFlag((this + 28624), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 28624));
  OZChannelBase::resetFlag((this + 28776), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 28776));
  OZChannelFolder::setFoldFlag((this + 30688), 4);
  OZChannelBase::resetFlag((this + 32496), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 32496));
  OZChannelBase::resetFlag((this + 33616), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 33616));
  OZChannelFolder::setFoldFlag((this + 33616), 4);
  OZChannel::setMin((this + 31680), 0.0);
  OZChannel::setMin((this + 32648), 1.0);
  OZChannel::setKeyframable((this + 32648), 0);
  OZChannel::setKeyframable((this + 33464), 0);
  OZChannel::setMin((this + 33464), 0.0);
  OZChannel::setSliderMax((this + 33464), 100.0);
  OZChannel::setKeyframable((this + 33056), 0);
  OZChannel::setMin((this + 33056), 0.0);
  OZChannel::setSliderMax((this + 33056), 100.0);
  OZChannel::setMin(this + 223, -1.0);
  OZChannel::setMin(this + 224, -1.0);
  OZChannel::setMin(this + 226, 0.0);
  OZChannel::setMax(this + 226, 1.0);
  OZChannel::setSliderMin(this + 226, 0.0);
  OZChannel::setSliderMax(this + 226, 1.0);
  OZChannel::setSliderMin((this + 31072), 0.0);
  OZChannel::setSliderMax((this + 31072), 20.0);
  OZChannel::setSliderMin((this + 31224), 0.0);
  OZChannel::setSliderMax((this + 31224), 20.0);
  OZChannel::setKeyframable((this + 29208), 0);
  OZChannel::setMin((this + 29208), 0.0);
  OZChannel::setSliderMax((this + 29208), 100.0);
  OZChannel::setMin((this + 29616), 0.0);
  OZChannel::setSliderMax((this + 29616), 10.0);
  *(this + 36048) = OZChannel::getValueAsInt((this + 35472), MEMORY[0x277CC08F0], 0.0) == 1;
  *(this + 768) = 0;
}

void sub_25FB58124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, OZLocking *a12, PCString a13, PCString a14)
{
  PCString::~PCString(&a14);
  OZChannelBool::~OZChannelBool((v14 + v20));
  OZChannelEnum::~OZChannelEnum((v14 + v17));
  OZChannelEnum::~OZChannelEnum((v14 + v16));
  OZChannelPercent::~OZChannelPercent((v14 + 35064));
  OZChannelBool::~OZChannelBool((v14 + 34912));
  OZChannel::~OZChannel((v14 + 34760));
  OZChannelEnum::~OZChannelEnum((v14 + 34504));
  OZChannel::~OZChannel((v14 + v19));
  OZChannel::~OZChannel((v14 + 34200));
  OZChannelPercent::~OZChannelPercent((v14 + 34048));
  OZChannelPercent::~OZChannelPercent((v14 + 33896));
  OZChannelPercent::~OZChannelPercent((v14 + 33744));
  OZChannelFolder::~OZChannelFolder((v14 + v18));
  OZChannel::~OZChannel((v14 + 33464));
  OZChannelEnum::~OZChannelEnum((v14 + 33208));
  OZChannel::~OZChannel((v14 + 33056));
  OZChannelEnum::~OZChannelEnum((v14 + 32800));
  OZChannel::~OZChannel((v14 + 32648));
  OZChannelPercent::~OZChannelPercent((v14 + 32496));
  OZChannelEnum::~OZChannelEnum((v14 + 32240));
  OZChannel::~OZChannel((v14 + 32088));
  OZChannelEnum::~OZChannelEnum((v14 + 31832));
  OZChannel::~OZChannel((v14 + 31680));
  OZChannelBool::~OZChannelBool((v14 + 31528));
  OZChannelBool::~OZChannelBool((v14 + 31376));
  OZChannel::~OZChannel((v14 + 31224));
  OZChannel::~OZChannel((v14 + 31072));
  OZChannelEnum::~OZChannelEnum((v14 + 30816));
  OZChannelFolder::~OZChannelFolder((v14 + 30688));
  OZChannelEnum::~OZChannelEnum((v14 + 30432));
  OZChannel::~OZChannel((v14 + 30280));
  OZChannelEnum::~OZChannelEnum((v14 + 30024));
  OZChannelEnum::~OZChannelEnum((v14 + 29768));
  OZChannel::~OZChannel((v14 + 29616));
  OZChannelEnum::~OZChannelEnum((v14 + 29360));
  OZChannel::~OZChannel((v14 + 29208));
  OZChannelBool::~OZChannelBool((v14 + 29056));
  OZChannelFolder::~OZChannelFolder((v14 + 28928));
  OZChannelPercent::~OZChannelPercent((v14 + 28776));
  OZChannelPercent::~OZChannelPercent((v14 + 28624));
  OZChannelEnum::~OZChannelEnum((v14 + 28368));
  OZChannelEnum::~OZChannelEnum((v14 + 28112));
  OZChannelFolder::~OZChannelFolder((v14 + v15));
  TXSequenceChannels::~TXSequenceChannels((v14 + 816));
  v21 = *(v14 + 744);
  if (v21)
  {
    *(v14 + 752) = v21;
    operator delete(v21);
  }

  OZLocking::~OZLocking(a12);
  TXTextBehavior::~TXTextBehavior(v14);
  _Unwind_Resume(a1);
}

void OZLocking::~OZLocking(OZLocking *this)
{
  *this = &unk_2872018B0;
  v1 = (this + 8);
  PCMutex::~PCMutex((this + 128));
  PCSharedMutex::~PCSharedMutex(v1);
}

void TXSequenceBehavior::TXSequenceBehavior(TXSequenceBehavior *this, const TXSequenceBehavior *a2, char a3)
{
  TXTextBehavior::TXTextBehavior(this, a2, a3);
  *(v5 + 536) = &unk_287201850;
  OZLocking::OZLocking((v5 + 544));
  *this = &unk_287201030;
  *(this + 2) = &unk_287201370;
  *(this + 6) = &unk_2872015C8;
  *(this + 42) = &unk_287201620;
  *(this + 67) = &unk_287201648;
  *(this + 68) = &unk_2872016A8;
  *(this + 93) = 0;
  *(this + 95) = 0;
  *(this + 94) = 0;
  *(this + 796) = 0;
  *(this + 101) = *(a2 + 101);
  TXSequenceChannels::TXSequenceChannels((this + 816), (a2 + 816), (this + 56));
  OZChannelFolder::OZChannelFolder((this + 27984), (a2 + 27984), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 28112), (a2 + 28112), (this + 27984));
  OZChannelEnum::OZChannelEnum((this + 28368), (a2 + 28368), (this + 27984));
  OZChannelPercent::OZChannelPercent((this + 28624), (a2 + 28624), (this + 27984));
  OZChannelPercent::OZChannelPercent((this + 28776), (a2 + 28776), (this + 27984));
  OZChannelFolder::OZChannelFolder((this + 28928), (a2 + 28928), (this + 27984));
  OZChannelBool::OZChannelBool((this + 29056), (a2 + 29056), (this + 28928));
  OZChannel::OZChannel((this + 29208), (a2 + 29208), (this + 28928));
  *(this + 3651) = &unk_287246400;
  *(this + 3653) = &unk_287246760;
  OZChannelEnum::OZChannelEnum((this + 29360), (a2 + 29360), (this + 28928));
  OZChannel::OZChannel((this + 29616), (a2 + 29616), (this + 28928));
  *(this + 3702) = &unk_287246400;
  *(this + 3704) = &unk_287246760;
  OZChannelEnum::OZChannelEnum((this + 29768), (a2 + 29768), (this + 28928));
  OZChannelEnum::OZChannelEnum((this + 30024), (a2 + 30024), (this + 28928));
  OZChannel::OZChannel((this + 30280), (a2 + 30280), (this + 28928));
  *(this + 3785) = &unk_287246400;
  *(this + 3787) = &unk_287246760;
  OZChannelEnum::OZChannelEnum((this + 30432), (a2 + 30432), (this + 27984));
  OZChannelFolder::OZChannelFolder((this + 30688), (a2 + 30688), (this + 27984));
  OZChannelEnum::OZChannelEnum((this + 30816), (a2 + 30816), (this + 30688));
  OZChannel::OZChannel((this + 31072), (a2 + 31072), (this + 30688));
  *(this + 3884) = &unk_287246400;
  *(this + 3886) = &unk_287246760;
  OZChannel::OZChannel((this + 31224), (a2 + 31224), (this + 30688));
  *(this + 3903) = &unk_287246400;
  *(this + 3905) = &unk_287246760;
  OZChannelBool::OZChannelBool((this + 31376), (a2 + 31376), (this + 30688));
  OZChannelBool::OZChannelBool((this + 31528), (a2 + 31528), (this + 30688));
  OZChannel::OZChannel((this + 31680), (a2 + 31680), (this + 27984));
  *(this + 3960) = &unk_287245C60;
  *(this + 3962) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 31832), (a2 + 31832), (this + 27984));
  OZChannel::OZChannel((this + 32088), (a2 + 32088), (this + 27984));
  *(this + 4011) = &unk_287247AE0;
  *(this + 4013) = &unk_287247E40;
  OZChannelEnum::OZChannelEnum((this + 32240), (a2 + 32240), (this + 27984));
  OZChannelPercent::OZChannelPercent((this + 32496), (a2 + 32496), (this + 27984));
  OZChannel::OZChannel((this + 32648), (a2 + 32648), (this + 27984));
  *(this + 4081) = &unk_287245C60;
  *(this + 4083) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 32800), (a2 + 32800), (this + 27984));
  OZChannel::OZChannel((this + 33056), (a2 + 33056), (this + 27984));
  *(this + 4132) = &unk_287246400;
  *(this + 4134) = &unk_287246760;
  OZChannelEnum::OZChannelEnum((this + 33208), (a2 + 33208), (this + 27984));
  OZChannel::OZChannel((this + 33464), (a2 + 33464), (this + 27984));
  *(this + 4183) = &unk_287246400;
  *(this + 4185) = &unk_287246760;
  OZChannelFolder::OZChannelFolder((this + 33616), (a2 + 33616), (this + 27984));
  OZChannelPercent::OZChannelPercent(this + 222, (a2 + 33744), (this + 33616));
  OZChannelPercent::OZChannelPercent(this + 223, (a2 + 33896), (this + 33616));
  OZChannelPercent::OZChannelPercent(this + 224, a2 + 304, (this + 33616));
  OZChannel::OZChannel(this + 225, (a2 + 34200), (this + 33616));
  *(this + 4275) = &unk_287245C60;
  *(this + 4277) = &unk_287245FC0;
  OZChannel::OZChannel(this + 226, (a2 + 34352), (this + 33616));
  *(this + 4294) = &unk_287245C60;
  *(this + 4296) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 34504), (a2 + 34504), (this + 33616));
  OZChannel::OZChannel((this + 34760), (a2 + 34760), (this + 33616));
  *(this + 4345) = &unk_287247AE0;
  *(this + 4347) = &unk_287247E40;
  OZChannelBool::OZChannelBool((this + 34912), (a2 + 34912), (this + 27984));
  OZChannelPercent::OZChannelPercent((this + 35064), (a2 + 35064), (this + 27984));
  OZChannelEnum::OZChannelEnum((this + 35216), (a2 + 35216), (this + 27984));
  OZChannelEnum::OZChannelEnum((this + 35472), (a2 + 35472), (this + 27984));
  OZChannelBool::OZChannelBool((this + 35728), a2 + 319, (this + 27984));
  OZChannelBool::OZChannelBool((this + 35880), (a2 + 35880), (this + 27984));
  *(this + 4504) = 0;
  *(this + 9010) = 0;
  *(this + 9011) = *(a2 + 9011);
  *(this + 36049) = *(a2 + 36049);
  *(this + 2254) = 0u;
  *(this + 4507) = this + 36064;
  v6 = MEMORY[0x277CC0898];
  *(this + 2255) = *MEMORY[0x277CC0898];
  *(this + 4512) = *(v6 + 16);
  *(this + 9026) = 0;
  *(this + 4514) = 0;
  *(this + 36048) = OZChannel::getValueAsInt((this + 35472), MEMORY[0x277CC08F0], 0.0) == 1;
  TXSequenceBehavior::fixControlsFolderLocation(this);
  *(this + 768) = 0;
}

void sub_25FB591B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, OZChannel *a11, OZChannel *a12, OZChannel *a13, OZChannel *a14, OZChannel *a15, OZChannel *a16, OZChannel *a17, OZChannel *a18, OZChannel *a19, OZChannel *a20, OZChannel *a21)
{
  OZChannelBool::~OZChannelBool((v21 + v23));
  OZChannelEnum::~OZChannelEnum((v21 + v22));
  OZChannelEnum::~OZChannelEnum((v21 + 35216));
  OZChannelPercent::~OZChannelPercent((v21 + 35064));
  OZChannelBool::~OZChannelBool((v21 + 34912));
  OZChannel::~OZChannel(v25);
  OZChannelEnum::~OZChannelEnum((v21 + 34504));
  OZChannel::~OZChannel(v24);
  OZChannel::~OZChannel(a11);
  OZChannelPercent::~OZChannelPercent((v21 + 34048));
  OZChannelPercent::~OZChannelPercent((v21 + 33896));
  OZChannelPercent::~OZChannelPercent((v21 + 33744));
  OZChannelFolder::~OZChannelFolder((v21 + v27));
  OZChannel::~OZChannel(a12);
  OZChannelEnum::~OZChannelEnum((v21 + 33208));
  OZChannel::~OZChannel(a13);
  OZChannelEnum::~OZChannelEnum((v21 + 32800));
  OZChannel::~OZChannel(a14);
  OZChannelPercent::~OZChannelPercent((v21 + 32496));
  OZChannelEnum::~OZChannelEnum((v21 + 32240));
  OZChannel::~OZChannel(a15);
  OZChannelEnum::~OZChannelEnum((v21 + 31832));
  OZChannel::~OZChannel(a16);
  OZChannelBool::~OZChannelBool((v21 + 31528));
  OZChannelBool::~OZChannelBool((v21 + 31376));
  OZChannel::~OZChannel(a17);
  OZChannel::~OZChannel(a18);
  OZChannelEnum::~OZChannelEnum((v21 + 30816));
  OZChannelFolder::~OZChannelFolder((v21 + 30688));
  OZChannelEnum::~OZChannelEnum((v21 + 30432));
  OZChannel::~OZChannel(a19);
  OZChannelEnum::~OZChannelEnum((v21 + 30024));
  OZChannelEnum::~OZChannelEnum((v21 + 29768));
  OZChannel::~OZChannel(a20);
  OZChannelEnum::~OZChannelEnum((v21 + 29360));
  OZChannel::~OZChannel(a21);
  OZChannelBool::~OZChannelBool((v21 + 29056));
  OZChannelFolder::~OZChannelFolder((v21 + 28928));
  OZChannelPercent::~OZChannelPercent((v21 + 28776));
  OZChannelPercent::~OZChannelPercent((v21 + 28624));
  OZChannelEnum::~OZChannelEnum((v21 + 28368));
  OZChannelEnum::~OZChannelEnum((v21 + 28112));
  OZChannelFolder::~OZChannelFolder((v21 + v26));
  TXSequenceChannels::~TXSequenceChannels((v21 + 816));
  v29 = *(v21 + 744);
  if (v29)
  {
    *(v21 + 752) = v29;
    operator delete(v29);
  }

  OZLocking::~OZLocking(*(v28 - 88));
  TXTextBehavior::~TXTextBehavior(v21);
  _Unwind_Resume(a1);
}

char *TXSequenceBehavior::fixControlsFolderLocation(TXSequenceBehavior *this)
{
  result = (*(*this + 312))(this);
  if (result)
  {
    v2 = result;
    Descendant = OZChannelFolder::getDescendant(result, 201);
    result = OZChannelFolder::getDescendant(v2, 1046);
    if (Descendant)
    {
      v4 = result == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      v5 = result;
      OZChannelFolder::removeDescendant(v2, Descendant);

      return OZChannelFolder::insertDescendantAfter(v2, v5, Descendant);
    }
  }

  return result;
}

void TXSequenceBehavior::~TXSequenceBehavior(TXSequenceBehavior *this)
{
  *this = &unk_287201030;
  *(this + 2) = &unk_287201370;
  *(this + 6) = &unk_2872015C8;
  *(this + 42) = &unk_287201620;
  *(this + 67) = &unk_287201648;
  *(this + 68) = &unk_2872016A8;
  if (*(this + 368) == 1)
  {
    Scene = OZBehavior::getScene(this);
    if (Scene)
    {
      OZDocument::removeCPPObserver(*(Scene + 1584));
      *(this + 368) = 0;
    }
  }

  v3 = *(this + 4504);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8052888210);
    *(this + 4504) = 0;
  }

  v4 = *(this + 93);
  v5 = *(this + 94);
  if (v4 != v5)
  {
    do
    {
      v6 = *v4;
      if (*v4)
      {
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v6 + 32, *(v6 + 40));
        MEMORY[0x2666E9F00](v6, 0x1020C40A41566E0);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = *(this + 93);
  }

  *(this + 94) = v4;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 36056, *(this + 4508));
  OZChannelBool::~OZChannelBool((this + 35880));
  OZChannelBool::~OZChannelBool((this + 35728));
  OZChannelEnum::~OZChannelEnum((this + 35472));
  OZChannelEnum::~OZChannelEnum((this + 35216));
  OZChannelPercent::~OZChannelPercent((this + 35064));
  OZChannelBool::~OZChannelBool((this + 34912));
  OZChannel::~OZChannel((this + 34760));
  OZChannelEnum::~OZChannelEnum((this + 34504));
  OZChannel::~OZChannel(this + 226);
  OZChannel::~OZChannel(this + 225);
  OZChannelPercent::~OZChannelPercent(this + 224);
  OZChannelPercent::~OZChannelPercent(this + 223);
  OZChannelPercent::~OZChannelPercent(this + 222);
  OZChannelFolder::~OZChannelFolder((this + 33616));
  OZChannel::~OZChannel((this + 33464));
  OZChannelEnum::~OZChannelEnum((this + 33208));
  OZChannel::~OZChannel((this + 33056));
  OZChannelEnum::~OZChannelEnum((this + 32800));
  OZChannel::~OZChannel((this + 32648));
  OZChannelPercent::~OZChannelPercent((this + 32496));
  OZChannelEnum::~OZChannelEnum((this + 32240));
  OZChannel::~OZChannel((this + 32088));
  OZChannelEnum::~OZChannelEnum((this + 31832));
  OZChannel::~OZChannel((this + 31680));
  OZChannelBool::~OZChannelBool((this + 31528));
  OZChannelBool::~OZChannelBool((this + 31376));
  OZChannel::~OZChannel((this + 31224));
  OZChannel::~OZChannel((this + 31072));
  OZChannelEnum::~OZChannelEnum((this + 30816));
  OZChannelFolder::~OZChannelFolder((this + 30688));
  OZChannelEnum::~OZChannelEnum((this + 30432));
  OZChannel::~OZChannel((this + 30280));
  OZChannelEnum::~OZChannelEnum((this + 30024));
  OZChannelEnum::~OZChannelEnum((this + 29768));
  OZChannel::~OZChannel((this + 29616));
  OZChannelEnum::~OZChannelEnum((this + 29360));
  OZChannel::~OZChannel((this + 29208));
  OZChannelBool::~OZChannelBool((this + 29056));
  OZChannelFolder::~OZChannelFolder((this + 28928));
  OZChannelPercent::~OZChannelPercent((this + 28776));
  OZChannelPercent::~OZChannelPercent((this + 28624));
  OZChannelEnum::~OZChannelEnum((this + 28368));
  OZChannelEnum::~OZChannelEnum((this + 28112));
  OZChannelFolder::~OZChannelFolder((this + 27984));
  TXSequenceChannels::~TXSequenceChannels((this + 816));
  v7 = *(this + 93);
  if (v7)
  {
    *(this + 94) = v7;
    operator delete(v7);
  }

  *(this + 68) = &unk_2872018B0;
  PCMutex::~PCMutex((this + 672));
  PCSharedMutex::~PCSharedMutex((this + 552));

  TXTextBehavior::~TXTextBehavior(this);
}

{
  TXSequenceBehavior::~TXSequenceBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXSequenceBehavior::~TXSequenceBehavior(TXSequenceBehavior *this)
{
  TXSequenceBehavior::~TXSequenceBehavior((this - 16));
}

{
  TXSequenceBehavior::~TXSequenceBehavior((this - 48));
}

{
  TXSequenceBehavior::~TXSequenceBehavior((this - 336));
}

{
  TXSequenceBehavior::~TXSequenceBehavior((this - 536));
}

{
  TXSequenceBehavior::~TXSequenceBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  TXSequenceBehavior::~TXSequenceBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  TXSequenceBehavior::~TXSequenceBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  TXSequenceBehavior::~TXSequenceBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t TXSequenceBehavior::operator=(uint64_t *a1, const void *a2)
{
  TXTextBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  a1[101] = v4[101];
  TXSequenceChannels::operator=((a1 + 102), (v4 + 102));
  OZChannelBase::operator=((a1 + 3514), (v5 + 3514));
  OZChannelBase::operator=((a1 + 3546), (v5 + 3546));
  OZChannelBase::operator=((a1 + 3578), (v5 + 3578));
  OZChannelBase::operator=((a1 + 3597), (v5 + 3597));
  OZChannelBase::operator=((a1 + 3632), (v5 + 3632));
  OZChannelBase::operator=((a1 + 3651), (v5 + 3651));
  OZChannelBase::operator=((a1 + 3670), (v5 + 3670));
  OZChannelBase::operator=((a1 + 3721), (v5 + 3721));
  OZChannelBase::operator=((a1 + 3702), (v5 + 3702));
  OZChannelBase::operator=((a1 + 3753), (v5 + 3753));
  OZChannelBase::operator=((a1 + 3785), (v5 + 3785));
  OZChannelBase::operator=((a1 + 3804), (v5 + 3804));
  OZChannelBase::operator=((a1 + 3960), (v5 + 3960));
  OZChannelBase::operator=((a1 + 3979), (v5 + 3979));
  OZChannelBase::operator=((a1 + 4011), (v5 + 4011));
  OZChannelBase::operator=((a1 + 4030), (v5 + 4030));
  OZChannelBase::operator=((a1 + 4062), (v5 + 4062));
  OZChannelBase::operator=((a1 + 4081), (v5 + 4081));
  OZChannelBase::operator=((a1 + 4100), (v5 + 4100));
  OZChannelBase::operator=((a1 + 4132), (v5 + 4132));
  OZChannelBase::operator=((a1 + 4151), (v5 + 4151));
  OZChannelBase::operator=((a1 + 4183), (v5 + 4183));
  OZChannelFolder::operator=((a1 + 4202));
  OZChannelBase::operator=((a1 + 4218), (v5 + 4218));
  OZChannelBase::operator=((a1 + 4237), (v5 + 4237));
  OZChannelBase::operator=((a1 + 4256), (v5 + 4256));
  OZChannelBase::operator=((a1 + 4275), (v5 + 4275));
  OZChannelBase::operator=((a1 + 4294), (v5 + 4294));
  OZChannelBase::operator=((a1 + 4313), (v5 + 4313));
  result = OZChannelBase::operator=((a1 + 4345), (v5 + 4345));
  v7 = a1[103];
  for (i = a1[104]; v7 != i; ++v7)
  {
    v9 = *v7;
    if (((*v7)->var7 & 0x1000) != 0)
    {
      v12 = *(result + 112);
      v13 = *v12;
      v14 = v12[1];
      while (v13 != v14)
      {
        v15 = *v13;
        v16 = OZChannelBase::testFlag(*v13, 2);
        v17 = *a1;
        if (v16)
        {
          result = (*(v17 + 688))(a1, v15);
        }

        else
        {
          result = (*(v17 + 680))(a1, v15);
        }

        ++v13;
      }
    }

    else
    {
      v10 = OZChannelBase::testFlag(*v7, 2);
      v11 = *a1;
      if (v10)
      {
        result = (*(v11 + 688))(a1, v9);
      }

      else
      {
        result = (*(v11 + 680))(a1, v9);
      }
    }
  }

  return result;
}

BOOL TXSequenceBehavior::sequenceChannelsMatchTextSequenceChannels(TXSequenceBehavior *this)
{
  v1 = *(this + 101);
  v2 = *(v1 + 25040);
  v3 = *(v1 + 25048) - v2;
  v4 = *(this + 103);
  if (v3 != *(this + 104) - v4)
  {
    return 0;
  }

  v5 = v3 >> 3;
  v6 = 6;
  do
  {
    v7 = v5 == v6;
    if (v5 == v6)
    {
      break;
    }

    v8 = v6;
    if (v5 <= v6)
    {
      goto LABEL_33;
    }

    v9 = *(v2 + 8 * v6);
    v11 = *(v4 + 8 * v8);
    if (!v11)
    {
      break;
    }

    if (!v12 || v10[6] != v12[6])
    {
      break;
    }

    v13 = *(v10 + 14);
    v14 = v13 ? ((v13[1] - *v13) >> 3) : 0;
    v15 = *(v12 + 14);
    v16 = v15 ? ((v15[1] - *v15) >> 3) : 0;
    if (v14 != v16)
    {
      break;
    }

    if (v14)
    {
      v17 = 0;
      v18 = *v13;
      while ((*(*(v10 + 14) + 8) - v18) >> 3 != v17 && v17 < (v15[1] - *v15) >> 3)
      {
        v19 = *(*(v18 + 8 * v17) + 24) == *(*(*v15 + 8 * v17) + 24);
        v20 = v19;
        ++v17;
        if (!v19 || v17 >= v14)
        {
          goto LABEL_29;
        }
      }

LABEL_33:
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    v20 = 1;
LABEL_29:
    v6 = v8 + 1;
  }

  while ((v20 & 1) != 0);
  return v7;
}

void TXSequenceBehavior::didAddToNode(TXSequenceBehavior *this, OZSceneNode *lpsrc)
{
  if (lpsrc)
  {
    *(this + 101) = v4;
    if (v4)
    {
      TXSequenceChannels::removeTrackingChannel((this + 816), 1004);
      if (*(this + 36049) == 1)
      {
        TXSequenceBehavior::sequenceChannelsMatchTextSequenceChannels(this);
      }

      else
      {
        v5 = *(*(this + 101) + 19352);
        v6 = *(v5 + 16);
        v7 = *(v5 + 24);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = *(v6 + 480);
        v9 = *(v6 + 488);
        while (v8 != v9)
        {
          TXSequenceChannels::addMaterialChannels((this + 816), *v8++, ((*(this + 104) - *(this + 103)) >> 3) - 6);
        }

        *(this + 36049) = 1;
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }
      }

      OZChannelBehavior::didAddToNode(this, lpsrc);
      TXSequenceBehavior::sequenceBehaviorDidLoad(this);
      if ((*(this + 368) & 1) == 0)
      {
        v10 = (*(*lpsrc + 272))(lpsrc);
        if (v10)
        {
          OZDocument::addCPPObserver(*(v10 + 1584), this + 336, 1001);
          *(this + 368) = 1;
        }
      }

      TXSequenceBehavior::updateUnitsChannel(this);
      v11 = (*(*lpsrc + 272))(lpsrc);

      TXSequenceBehavior::setUpDefaultCustomSpeed(this, v11);
    }
  }

  else
  {
    *(this + 101) = 0;
  }
}

void sub_25FB5A2F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXSequenceBehavior::sequenceBehaviorDidLoad(uint64_t this)
{
  v1 = *(this + 824);
  v2 = *(this + 832);
  if (v1 != v2)
  {
    v3 = this;
    do
    {
      v4 = *v1;
      if (((*v1)->var7 & 0x1000) != 0)
      {
        this = TXSequenceBehavior::attachDescendantSequencedChannels(v3, v5);
      }

      else
      {
        this = OZChannelBase::testFlag(*v1, 2);
        if ((this & 1) == 0)
        {
          this = (*(*v3 + 680))(v3, v4);
        }
      }

      ++v1;
    }

    while (v1 != v2);
  }

  return this;
}

void *TXSequenceBehavior::updateUnitsChannel(TXSequenceBehavior *this)
{
  v5 = *MEMORY[0x277D85DE8];
  if (OZChannel::getValueAsInt((this + 29056), MEMORY[0x277CC08F0], 0.0) == 1)
  {
    PCString::PCString(&v3, "Word;Line;Block;All");
    OZChannelEnum::setStrings(this + 3546, &v3, 1);
    PCString::~PCString(&v3);
    v3 = xmmword_26034A5B0;
    return OZChannelEnum::setTags((this + 28368), &v3, 4);
  }

  else
  {
    if (theApp && *(theApp + 72))
    {
      PCURL::PCURL(&v3, @"Text Sequence Behavior Units Enum");
      OZChannelEnum::setStrings(this + 3546, &v3, 1);
    }

    else
    {
      PCString::PCString(&v3, "Character;Character (without spaces);Word;Line;All;Custom");
      OZChannelEnum::setStrings(this + 3546, &v3, 1);
    }

    PCString::~PCString(&v3);
    v4 = 0x500000004;
    v3 = xmmword_26034A5EC;
    return OZChannelEnum::setTags((this + 28368), &v3, 6);
  }
}

void TXSequenceBehavior::setUpDefaultCustomSpeed(TXSequenceBehavior *this, OZScene *a2)
{
  (*(*this + 608))(&v9);
  if (a2)
  {
    time1 = v10;
    time2 = **&MEMORY[0x277CC08F0];
    if (CMTimeCompare(&time1, &time2))
    {
      if (!OZChannel::getNumberOfKeyframes((this + 32496)))
      {
        OZChannel::getValueAsDouble((this + 32496), MEMORY[0x277CC08F0], 0.0);
        if (fabs(v4) < 0.0000001)
        {
          time1 = v9;
          OZChannel::setKeyframe((this + 32496), &time1, 0.0, 1);
          time1 = v9;
          time2 = v10;
          PC_CMTimeSaferAdd(&time1, &time2, &v7);
          OZSceneSettings::getFrameDuration((a2 + 336), &v5);
          time1 = v7;
          *&time2.value = v5;
          time2.epoch = v6;
          PC_CMTimeSaferSubtract(&time1, &time2, &v8);
          OZChannel::setKeyframe((this + 32496), &v8, 100.0, 1);
        }
      }
    }
  }
}

void TXSequenceBehavior::willRemove(TXSequenceBehavior *this)
{
  if (*(this + 368) == 1)
  {
    v2 = (*(*this + 336))(this);
    if (v2)
    {
      OZDocument::removeCPPObserver(*(v2 + 1584));
      *(this + 368) = 0;
    }
  }

  v3 = *(this + 101);
  v4 = *(v3 + 25040);
  for (i = *(v3 + 25048); v4 != i; ++v4)
  {
    if ((*(*v4 + 57) & 0x10) != 0)
    {
      if (v6)
      {
        v7 = *v6;
        v8 = v6[1];
        while (v7 != v8)
        {
          v9 = *v7++;
          (*(*this + 688))(this, v9);
        }
      }
    }

    else
    {
      (*(*this + 688))(this);
    }
  }

  OZChannelBehavior::clearChannels(this);
  OZChannelBehavior::willRemove(this);
  v10 = *(this + 101);

  TXTextLayout::setAllParagraphsDirty(v10);
}

uint64_t TXSequenceBehavior::willRemoveSceneNodeFromScene(TXSequenceBehavior *this, OZScene *a2)
{
  result = OZChannelBehavior::willRemoveSceneNodeFromScene(this, a2);
  if (*(this + 368) == 1)
  {
    result = (*(*this + 336))(this);
    if (result)
    {
      result = OZDocument::removeCPPObserver(*(result + 1584));
      *(this + 368) = 0;
    }
  }

  return result;
}

void TXSequenceBehavior::dirty(TXSequenceBehavior *this)
{
  v2 = this + 0x8000;
  OZBehavior::dirty(this);
  v3 = Li3DEngineScene::sceneManager((this + 544));
  OZLockingGroup::WriteSentry::WriteSentry(v5, v3);
  *(this + 796) = 0;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v2 + 3288), *(v2 + 412));
  *(v2 + 411) = v2 + 3296;
  *(v2 + 206) = 0u;
  v4 = MEMORY[0x277CC0898];
  *(this + 2255) = *MEMORY[0x277CC0898];
  *(this + 4512) = *(v4 + 16);
  *(v2 + 834) = 0;
  *(v2 + 418) = 0;
  OZLockingGroup::WriteSentry::~WriteSentry(v5);
}

uint64_t TXSequenceBehavior::attachDescendantSequencedChannels(uint64_t this, OZChannelFolder *a2)
{
  v2 = *(a2 + 14);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    if (*v2 != v4)
    {
      v5 = this;
      do
      {
        v6 = *v3;
        this = OZChannelBase::testFlag(*v3, 2);
        if ((this & 1) == 0)
        {
          if (v6)
          {
            if (v7)
            {
              v8 = v7;
              v9 = *(v7 + 14);
              if (v9)
              {
                v10 = *v9;
                v11 = v9[1];
                while (v10 != v11)
                {
                  {
                    this = TXSequenceBehavior::attachDescendantSequencedChannels(v5, v8);
                    goto LABEL_14;
                  }

                  ++v10;
                }
              }
            }
          }

          this = (*(*v5 + 680))(v5, v6);
        }

LABEL_14:
        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

uint64_t TXSequenceBehavior::isRebuildUIChannel(TXSequenceBehavior *this, OZChannelBase *a2)
{
  v2 = (this + 30816) == a2 || (this + 29056) == a2;
  v3 = (this + 32240) == a2 || v2;
  if ((this + 28112) == a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if ((this + 28368) == a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if ((this + 31832) == a2)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t TXSequenceBehavior::updateMaterialSequenceChannelFlags(TXSequenceBehavior *this)
{
  result = *(this + 101);
  if (result)
  {
    v3 = (*(*result + 296))(result);
    v4 = *(*(this + 547) + 104);
    if (v3)
    {
      v4(this + 4376, 0, 1);
      (*(*(this + 547) + 96))(this + 4376, 1, 1);
      (*(*(this + 1151) + 104))(this + 9208, 0, 1);
      result = (*(*(this + 1151) + 96))(this + 9208, 1, 1);
      if (((*(this + 104) - *(this + 103)) & 0x7FFFFFFF8) != 0x30)
      {
        v5 = 0;
        do
        {
          v6 = TXSequenceChannels::materialSequenceFolder((this + 816), v5);
          (*(*v6 + 104))(v6, 1, 1);
          v7 = TXSequenceChannels::materialSequenceFolder((this + 816), v5);
          result = (*(*v7 + 96))(v7, 0, 1);
          ++v5;
        }

        while (v5 < ((*(this + 104) - *(this + 103)) >> 3) - 6);
      }
    }

    else
    {
      v4(this + 4376, 1, 1);
      (*(*(this + 547) + 96))(this + 4376, 0, 1);
      (*(*(this + 1151) + 104))(this + 9208, 1, 1);
      result = (*(*(this + 1151) + 96))(this + 9208, 0, 1);
      if (((*(this + 104) - *(this + 103)) & 0x7FFFFFFF8) != 0x30)
      {
        v8 = 0;
        do
        {
          v9 = TXSequenceChannels::materialSequenceFolder((this + 816), v8);
          (*(*v9 + 104))(v9, 0, 1);
          v10 = TXSequenceChannels::materialSequenceFolder((this + 816), v8);
          result = (*(*v10 + 96))(v10, 1, 1);
          ++v8;
        }

        while (v8 < ((*(this + 104) - *(this + 103)) >> 3) - 6);
      }
    }
  }

  return result;
}

OZChannelBase *TXSequenceBehavior::updateHiddenFlags(uint64_t a1)
{
  TXSequenceBehavior::updateMaterialSequenceChannelFlags(a1);
  if (OZChannel::getValueAsInt((a1 + 28368), MEMORY[0x277CC08F0], 0.0) == 5)
  {
    OZChannelBase::resetFlag((a1 + 28624), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 28776), 4194306, 1);
  }

  else
  {
    OZChannelBase::setFlag((a1 + 28624), 4194306, 1);
    OZChannelBase::setFlag((a1 + 28776), 4194306, 1);
  }

  if (OZChannel::getValueAsInt((a1 + 28368), MEMORY[0x277CC08F0], 0.0) == 5)
  {
    OZChannelBase::setFlag((a1 + 30688), 4194306, 1);
  }

  else
  {
    OZChannelBase::resetFlag((a1 + 30688), 4194306, 1);
  }

  v2 = MEMORY[0x277CC08F0];
  v3 = OZChannel::getValueAsInt((a1 + 30816), MEMORY[0x277CC08F0], 0.0) != 0;
  OZChannelBase::enable((a1 + 31072), v3, 0);
  OZChannelBase::enable((a1 + 31224), v3, 0);
  OZChannelBase::enable((a1 + 31376), v3, 0);
  OZChannelBase::enable((a1 + 31528), v3, 0);
  if (OZChannel::getValueAsInt((a1 + 31832), v2, 0.0) == 4)
  {
    OZChannelBase::resetFlag((a1 + 32088), 4194306, 1);
  }

  else
  {
    OZChannelBase::setFlag((a1 + 32088), 4194306, 1);
  }

  if (OZChannel::getValueAsInt((a1 + 32240), MEMORY[0x277CC08F0], 0.0) == 6)
  {
    OZChannelBase::resetFlag((a1 + 32496), 4194306, 1);
  }

  else
  {
    OZChannelBase::setFlag((a1 + 32496), 4194306, 1);
  }

  if (OZChannel::getValueAsInt((a1 + 28112), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    OZChannelBase::setFlag((a1 + 33896), 4194306, 1);
    OZChannelBase::setFlag((a1 + 34048), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 34200), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 34504), 4194306, 1);
  }

  else
  {
    OZChannelBase::resetFlag((a1 + 33896), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 34048), 4194306, 1);
    OZChannelBase::setFlag((a1 + 34200), 4194306, 1);
    OZChannelBase::setFlag((a1 + 34504), 4194306, 1);
  }

  if (OZChannel::getValueAsInt((a1 + 29056), MEMORY[0x277CC08F0], 0.0) == 1)
  {
    OZChannelBase::setFlag((a1 + 31680), 4194306, 1);
    OZChannelBase::setFlag((a1 + 31832), 4194306, 1);
    OZChannelBase::setFlag((a1 + 32648), 4194306, 1);
    OZChannelBase::setFlag((a1 + 32800), 4194306, 1);
    OZChannelBase::setFlag((a1 + 33208), 4194306, 1);
    OZChannelBase::setFlag((a1 + 33464), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 29208), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 29360), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 29616), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 30024), 4194306, 1);
    if (OZChannel::getValueAsInt((a1 + 28368), MEMORY[0x277CC08F0], 0.0) == 6)
    {
      OZChannelBase::enable((a1 + 29360), 0, 0);
      v4 = (a1 + 29616);
      v5 = 0;
    }

    else
    {
      OZChannelBase::enable((a1 + 29360), 1, 0);
      v4 = (a1 + 29616);
      v5 = 1;
    }

    return OZChannelBase::enable(v4, v5, 0);
  }

  else
  {
    OZChannelBase::resetFlag((a1 + 31680), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 31832), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 32648), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 32800), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 33208), 4194306, 1);
    OZChannelBase::resetFlag((a1 + 33464), 4194306, 1);
    OZChannelBase::setFlag((a1 + 29208), 4194306, 1);
    OZChannelBase::setFlag((a1 + 29360), 4194306, 1);
    OZChannelBase::setFlag((a1 + 29616), 4194306, 1);

    return OZChannelBase::resetFlag((a1 + 30024), 4194306, 1);
  }
}

uint64_t TXSequenceBehavior::addCurveNodes(TXSequenceBehavior *this, OZChannelBase *a2, OZChannelBase *a3)
{
  if ((a2->var7 & 0x1000) == 0)
  {
    if (a3)
    {
    }

    operator new();
  }

  v8 = v6[14];
  v9 = v7[14];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *v8;
    if (*v8 != v8[1])
    {
      v12 = *v9;
      do
      {
        if (v12 == v9[1])
        {
          break;
        }

        v14 = *v11++;
        v13 = v14;
        v15 = *v12++;
        TXSequenceBehavior::addCurveNodes(this, v13, v15);
      }

      while (v11 != v8[1]);
    }
  }

  (*(a2->var0 + 13))(a2, 1, 0);
  var6 = a2->var6;
  if (var6)
  {
    (*(*var6 + 104))(var6, 1, 0);
    v17 = *(var6 + 6);
    if (v17 && (v18 = *(v17 + 24), (v18 - 2000) >> 6 <= 0x7C) && (v19 = v18, v20 = MaterialSequenceIDIncrement(), fmod(v19, v20) == 0.0))
    {
      v21 = *(var6 + 6);
      LODWORD(var6) = 1;
      (*(*v21 + 104))(v21, 1, 0);
    }

    else
    {
      LODWORD(var6) = 0;
    }
  }

  result = (*(a3->var0 + 13))(a3, 1, 0);
  v23 = a3->var6;
  if (v23)
  {
    result = (*(*v23 + 104))(v23, 1, 0);
    if (var6)
    {
      result = *(v23 + 6);
      if (result)
      {
        v24 = *(*result + 104);

        return v24();
      }
    }
  }

  return result;
}

uint64_t TXSequenceBehavior::channelChildrenHaveProcessingNodes(TXSequenceBehavior *this, OZChannelFolder *a2)
{
  v2 = *(a2 + 14);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 == v4)
  {
    return 0;
  }

  while (1)
  {
    v6 = *v3;
    if (*v3)
    {
      if (!v7)
      {
        goto LABEL_7;
      }

      if (OZChannel::getNumberOfCurveProcessingNodes(v7))
      {
        return 1;
      }

      v6 = *v3;
      if (*v3)
      {
LABEL_7:
        if (v8)
        {
          if (TXSequenceBehavior::channelChildrenHaveProcessingNodes(this, v8))
          {
            return 1;
          }
        }
      }
    }

    if (++v3 == v4)
    {
      return 0;
    }
  }
}

BOOL compareChannelsForRemoveCurveNodes(OZChannelBase *a1, OZChannelBase *a2, int a3)
{
  var3 = a1->var3;
  v5 = a2->var3;
  result = var3 == v5;
  var6 = a1->var6;
  v8 = a2->var6;
  if (var6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(var6 + 6) == *(v8 + 6) && var3 == v5;
    result = v10;
    if (a3)
    {
      v11 = *(var6 + 6);
      v12 = *(v8 + 6);
      if (v11)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        return *(v11 + 24) == *(v12 + 24) && result;
      }
    }
  }

  return result;
}

uint64_t TXSequenceBehavior::removeCurveNodes(uint64_t this, OZChannelBase *a2)
{
  v3 = this;
  var6 = a2->var6;
  v6 = var6 && (v5 = *(var6 + 6)) != 0 && (*(v5 + 24) - 1035) < 4;
  v7 = this + 344;
  v8 = *(this + 352);
  if (v8 != this + 344)
  {
    do
    {
      v9 = v8 + 8;
      v8 = *(v8 + 8);
      this = *(v9 + 8);
      if (this)
      {
        if (this)
        {
          v10 = this;
          v11 = *(this + 16);
          this = compareChannelsForRemoveCurveNodes(a2, v11, v6);
          if (this)
          {
            OZChannel::deleteCurveProcessingNode(v11, v10);
            *&v16 = v10;
            std::list<OZBehaviorCurveNode *>::remove(v3 + 344, &v16);
            NumberOfCurveProcessingNodes = OZChannel::getNumberOfCurveProcessingNodes(v11);
            if (!NumberOfCurveProcessingNodes)
            {
              (*(v11->var0 + 13))(v11, 0, 0);
            }

            v13 = v11->var6;
            this = (*(*v13 + 120))(v13);
            if (!this)
            {
              goto LABEL_15;
            }

            if (!NumberOfCurveProcessingNodes)
            {
              this = (*(*v13 + 104))(v13, 0, 0);
            }

            v13 = *(v13 + 6);
            if (v13)
            {
LABEL_15:
              if ((TXSequenceBehavior::channelChildrenHaveProcessingNodes(v3, v13) & 1) == 0)
              {
                (*(*v13 + 104))(v13, 0, 0);
              }

              v14 = *(v13 + 1);
              v16 = xmmword_260347AC0;
              this = OZFactory::isKindOfClass(v14, &v16);
              if (this)
              {
                v15 = *(v13 + 6);
                if (v15)
                {
                  this = TXSequenceBehavior::channelChildrenHaveProcessingNodes(v3, v15);
                  if ((this & 1) == 0)
                  {
                    this = (*(*v15 + 104))(v15, 0, 0);
                  }
                }
              }
            }
          }
        }
      }
    }

    while (v8 != v7);
  }

  if (a2->var3 == 1031)
  {
    this = *(v3 + 101);
    if (this)
    {
      *(this + 19321) = 1;
      return (*(*this + 544))(this);
    }
  }

  return this;
}

void *std::list<OZBehaviorCurveNode *>::remove(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<std::shared_ptr<TXTextStyle>>::splice(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return std::__list_imp<unsigned int>::clear(v10);
}

void sub_25FB5BD2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

OZChannelBase *TXSequenceBehavior::isTextSequenceChannelEnabled(TXSequenceBehavior *this, int a2, int a3, int a4)
{
  result = TXSequenceChannels::findChannel((this + 816), a2, a3, a4);
  if (result)
  {
    return !OZChannelBase::testFlag(result, 2);
  }

  return result;
}

uint64_t TXSequenceBehavior::isActiveAtTime(TXSequenceBehavior *this, CMTime *a2, BOOL a3, BOOL a4, int a5)
{
  time1 = *a2;
  isActiveAtTime = OZBehavior::isActiveAtTime(this, &time1, a3, a4, a5);
  TXSequenceBehavior::getAnimationDuration(this, &v10);
  OZBehavior::getFrameDuration(this, &v8);
  time1 = v10;
  *&time2.value = v8;
  time2.epoch = v9;
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    return isActiveAtTime;
  }

  else
  {
    return 0;
  }
}

void TXSequenceBehavior::getAnimationDuration(TXSequenceBehavior *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 768) == 1)
  {
    *a2 = *(this + 772);
    *(a2 + 16) = *(this + 788);
  }

  else
  {
    (*(*this + 608))(v11, this);
    v13 = v12;
    v4 = (*(*this + 336))(this);
    OZSceneSettings::getFrameDuration((v4 + 336), &v9);
    v5 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((this + 33056), MEMORY[0x277CC08F0], 0.0);
    v7 = v6;
    OZChannel::getValueAsDouble((this + 33464), v5, 0.0);
    operator*(&v9, &v10, v7 + v8);
    v15 = v13;
    v14 = v10;
    PC_CMTimeSaferSubtract(&v15, &v14, a2);
  }
}

uint64_t TXSequenceBehavior::isActiveInTimeRange(TXSequenceBehavior *this, const PCTimeRange *a2, BOOL a3, BOOL a4, int a5)
{
  isActiveInTimeRange = OZBehavior::isActiveInTimeRange(this, a2, a3, a4, a5);
  TXSequenceBehavior::getAnimationDuration(this, &v10);
  OZBehavior::getFrameDuration(this, &v8);
  time1 = v10;
  *&time2.value = v8;
  time2.epoch = v9;
  if (CMTimeCompare(&time1, &time2) > 0)
  {
    return isActiveInTimeRange;
  }

  else
  {
    return 0;
  }
}

const void *TXSequenceBehavior::markFactoriesForSerialization(const void ***this, PCSerializerWriteStream *a2, uint64_t a3)
{
  result = OZBehavior::markFactoriesForSerialization(this, a2);
  v7 = this[103];
  for (i = this[104]; v7 != i; ++v7)
  {
    result = *v7;
    if (*v7)
    {
      if (result)
      {
        result = (*(*result + 416))(result, a2, a3);
      }
    }
  }

  return result;
}

uint64_t TXSequenceBehavior::parseBegin(TXSequenceBehavior *this, PCSerializerReadStream *a2)
{
  if (*(a2 + 26) <= 4u)
  {
    OZChannel::setValue((this + 35728), MEMORY[0x277CC08F0], 0.0, 0);
  }

  if (PCSerializerReadStream::isLessThanVersion(a2, 5u, 7u))
  {
    OZChannel::setValue((this + 35880), MEMORY[0x277CC08F0], 0.0, 0);
  }

  return OZBehavior::parseBegin(this, a2);
}

uint64_t TXSequenceBehavior::parseEnd(TXSequenceBehavior *this, PCSerializerReadStream *a2)
{
  OZBehavior::parseEnd(this, a2);
  OZChannelBase::setFlag((this + 34912), 4194306, 1);
  OZChannelBase::setFlag((this + 35064), 4194306, 1);
  if ((*(this + 36049) & 1) == 0)
  {
    v4 = *(this + 21);
    v5 = *v4;
    v6 = v4[1];
    if (*v4 != v6)
    {
      v7 = (this + 824);
      do
      {
        v8 = *v5;
        v9 = *(*v5 + 8);
        v24 = xmmword_26034A5A0;
        if (OZFactory::isKindOfClass(v9, &v24))
        {
          v10 = *(this + 104);
          v11 = *(this + 105);
          if (v10 >= v11)
          {
            v13 = (v10 - *v7) >> 3;
            if ((v13 + 1) >> 61)
            {
              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            v14 = v11 - *v7;
            v15 = v14 >> 2;
            if (v14 >> 2 <= (v13 + 1))
            {
              v15 = v13 + 1;
            }

            if (v14 >= 0x7FFFFFFFFFFFFFF8)
            {
              v16 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v16 = v15;
            }

            if (v16)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(this + 824, v16);
            }

            v17 = (8 * v13);
            *v17 = v8;
            v12 = 8 * v13 + 8;
            v18 = *(this + 103);
            v19 = *(this + 104) - v18;
            v20 = v17 - v19;
            memcpy(v17 - v19, v18, v19);
            v21 = *(this + 103);
            *(this + 103) = v20;
            *(this + 104) = v12;
            *(this + 105) = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v10 = v8;
            v12 = (v10 + 1);
          }

          *(this + 104) = v12;
        }

        ++v5;
      }

      while (v5 != v6);
    }

    *(this + 36049) = 1;
  }

  v22 = (*(*this + 336))(this);
  TXSequenceBehavior::setUpDefaultCustomSpeed(this, v22);
  if (OZChannel::getValueAsInt((this + 29056), MEMORY[0x277CC08F0], 0.0) == 1 && PCSerializerReadStream::isLessThanVersion(a2, 5u, 9u))
  {
    TXSequenceBehavior::updateTranscriptionUnitsFromVersion5_8(this);
  }

  return 1;
}

uint64_t TXSequenceBehavior::updateTranscriptionUnitsFromVersion5_8(TXSequenceBehavior *this)
{
  v2 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 28368), MEMORY[0x277CC08F0], 0.0);
  v4 = ValueAsInt + 2;
  if (ValueAsInt >= 3)
  {
    v4 = ValueAsInt;
  }

  return OZChannel::setValue((this + 28368), v2, v4, 0);
}

void TXSequenceBehavior::addChannel(TXSequenceBehavior *this, OZChannelBase *a2)
{
  OZChannelBase::resetFlag(a2, 2, 0);
  for (i = a2->var6; i; i = *(i + 6))
  {
    OZChannelBase::resetFlag(i, 2, 0);
  }

  v5 = (*(*this + 312))(this);
  OZChannelRef::OZChannelRef(v7, a2, v5);
  Channel = OZChannelRef::getChannel(v7, (*(this + 101) + 648));
  TXSequenceBehavior::addCurveNodes(this, a2, Channel);
  OZChannelRef::~OZChannelRef(v7);
}

void sub_25FB5C4D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZChannelRef::~OZChannelRef(va);
  _Unwind_Resume(a1);
}

uint64_t TXSequenceBehavior::hideParentAndRemoveChannel(TXSequenceBehavior *this, OZChannelBase *a2)
{
  OZChannelBase::setFlag(a2, 2, 0);
  var6 = a2->var6;
  if (var6)
  {
    v5 = *(var6 + 14);
    v6 = *v5;
    v7 = v5[1];
    while (v6 != v7)
    {
      if (!OZChannelBase::testFlag(*v6, 2))
      {
        goto LABEL_10;
      }

      ++v6;
    }

    OZChannelBase::setFlag(var6, 2, 0);
    v8 = *(var6 + 6);
    if (v8)
    {
      v9 = *(v8 + 24);
      if ((v9 - 2000) >> 6 <= 0x7C)
      {
        v10 = v9;
        v11 = MaterialSequenceIDIncrement();
        if (fmod(v10, v11) == 0.0)
        {
          (*(*this + 696))(this, var6);
        }
      }
    }
  }

LABEL_10:
  v12 = *(*this + 688);

  return v12(this, a2);
}

uint64_t TXSequenceBehavior::removeMaterial(TXSequenceBehavior *this, unsigned int a2)
{
  v2 = a2 + 6;
  v3 = *(this + 103);
  if (v2 >= (*(this + 104) - v3) >> 3)
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  (*(*this + 688))(this, *(v3 + 8 * v2));

  return RemoveMaterialFromSequenceChannels((this + 816), a2);
}

uint64_t TXSequenceBehavior::removeMaterialLayer(TXSequenceBehavior *this, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  v4 = *(this + 103);
  if (v3 >= (*(this + 104) - v4) >> 3 || (v7 = *(*(v4 + 8 * v3) + 112), v6 = *v7, a2 >= ((v7[1] - *v7) >> 3)))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  (*(*this + 688))(this, *(v6 + 8 * a2));

  return RemoveMaterialLayerFromSequenceChannels((this + 816), a2, a3);
}

void *TXSequenceBehavior::removeChannel(TXSequenceBehavior *this, OZChannelBase *lpsrc)
{
  if ((lpsrc->var7 & 0x1000) != 0)
  {
    v4 = result[14];
    if (v4)
    {
      v5 = *v4;
      v6 = v4[1];
      while (v5 != v6)
      {
        v7 = *v5++;
        result = (*(*this + 688))(this, v7);
      }
    }
  }

  else
  {

    return TXSequenceBehavior::removeCurveNodes(this, lpsrc);
  }

  return result;
}

double TXSequenceBehavior::trapezoid(TXSequenceBehavior *this, double a2, double a3, double a4, double a5, double a6, int a7, double a8, double a9, double *a10)
{
  v10 = a7;
  v15 = a2;
  v17 = 0.0;
  if (a2 <= a8 || (a7 & 1) == 0)
  {
    v18 = a3 - a5;
    if (a3 - a5 <= a2)
    {
LABEL_8:
      if (v15 >= a3)
      {
        if (v15 <= a4)
        {
          if (a6 == 0.0)
          {
            v29 = v10;
          }

          else
          {
            v29 = 0;
          }

          v17 = 1.0;
          if (v29)
          {
            TXSequenceBehavior::trapezoid(this, v15 + -1.0, a3, a4, a5, a6, 0, 1.0, 1.0, 0);
            if (v30 <= 0.0)
            {
              return 1.0;
            }

            else
            {
              return v30;
            }
          }
        }

        else
        {
          v20 = a4 + a6;
          if (a4 + a6 >= v15)
          {
            if (a10 == 6)
            {
              if (OZChannel::getValueAsInt((this + 32800), MEMORY[0x277CC08F0], 0.0) == 1)
              {
                (*(*this + 608))(&v55, this);
                time = v56;
                Seconds = CMTimeGetSeconds(&time);
                v22 = Seconds / *((*(*this + 336))(this) + 368);
                v23 = MEMORY[0x277CC08F0];
                OZChannel::getValueAsDouble((this + 33464), MEMORY[0x277CC08F0], 0.0);
                v25 = v22 - v24;
                OZChannel::getValueAsDouble((this + 33056), v23, 0.0);
                CustomSpeedDuration = v25 - v26;
              }

              else
              {
                CustomSpeedDuration = TXSequenceBehavior::getCustomSpeedDuration(this);
              }

              v48 = (v20 - v15) / (v20 - a4) * CustomSpeedDuration;
              memset(&v54, 0, sizeof(v54));
              v49 = (*(*this + 336))(this);
              OZSceneSettings::getFrameDuration((v49 + 336), &v52);
              operator*(&v52, &v53, v48);
              (*(*this + 608))(&v55, this);
              v57 = v55;
              time = v53;
              PC_CMTimeSaferAdd(&time, &v57, &v54);
              OZChannel::getValueAsDouble((this + 32496), &v54, 0.0);
            }

            else
            {
              v47 = TXSequenceBehavior::computePosition(this, a10, (v20 - v15) / (v20 - a4), a10);
            }

            v50 = v47;
            v17 = v47 + 0.0;
            if (v10)
            {
              TXSequenceBehavior::trapezoid(this, v15 + -1.0, a3, a4, a5, a6, 0, 1.0, 1.0, 0);
              if (v50 < v51)
              {
                return v51;
              }
            }
          }
        }
      }

      else
      {
        if (a10 == 6)
        {
          if (OZChannel::getValueAsInt((this + 32800), MEMORY[0x277CC08F0], 0.0) == 2)
          {
            v19 = TXSequenceBehavior::getCustomSpeedDuration(this);
          }

          else
          {
            (*(*this + 608))(&v55, this);
            time = v56;
            v31 = CMTimeGetSeconds(&time);
            v32 = v31 / *((*(*this + 336))(this) + 368);
            v33 = MEMORY[0x277CC08F0];
            OZChannel::getValueAsDouble((this + 33464), MEMORY[0x277CC08F0], 0.0);
            v35 = v32 - v34;
            OZChannel::getValueAsDouble((this + 33056), v33, 0.0);
            v19 = v35 - v36;
          }

          v37 = (v15 - v18) / (a3 - v18);
          v38 = MEMORY[0x277CC08F0];
          ValueAsInt = OZChannel::getValueAsInt((this + 28112), MEMORY[0x277CC08F0], 0.0);
          v40 = 1.0 - v37;
          if (ValueAsInt != 1)
          {
            v40 = v37;
          }

          v41 = v19 * v40;
          memset(&v54, 0, sizeof(v54));
          v42 = (*(*this + 336))(this);
          OZSceneSettings::getFrameDuration((v42 + 336), &v52);
          operator*(&v52, &v53, v41);
          (*(*this + 608))(&v55, this);
          v57 = v55;
          time = v53;
          PC_CMTimeSaferAdd(&time, &v57, &v54);
          OZChannel::getValueAsDouble((this + 32496), &v54, 0.0);
          v44 = v43;
          v45 = OZChannel::getValueAsInt((this + 28112), v38, 0.0);
          v28 = 1.0 - v44;
          if (v45 != 1)
          {
            v28 = v44;
          }
        }

        else
        {
          v28 = TXSequenceBehavior::computePosition(this, a10, (v15 - v18) / (a3 - v18), a10);
        }

        return v28 + 0.0;
      }
    }

    else
    {
      while (1)
      {
        v15 = v15 + a9;
        if (v15 > a8 || (v10 & 1) == 0)
        {
          break;
        }

        v10 = 1;
        if (v18 <= v15)
        {
          a10 = 0;
          goto LABEL_8;
        }
      }
    }
  }

  return v17;
}

Float64 TXSequenceBehavior::getCustomSpeedDuration(TXSequenceBehavior *this)
{
  if (!OZChannel::getNumberOfCurveProcessingNodes((this + 32496)))
  {
    goto LABEL_21;
  }

  OZChannel::enumerateCurveProcessingNodes((this + 32496), &time);
  value = time.value;
  v2 = *&time.timescale;
  if (*&time.timescale == time.value)
  {
    if (time.value)
    {
      operator delete(time.value);
    }

    goto LABEL_21;
  }

  v4 = 0;
  v5 = time.value;
  do
  {
    if (*v5)
    {
      if (v6)
      {
        v7 = *(v6 + 1);
        (*(*v7 + 608))(&time, v7);
        v20 = time;
        memset(&v19, 0, sizeof(v19));
        OZBehavior::getFrameDuration(v7, &v17);
        time1 = time;
        time2 = v22;
        PC_CMTimeSaferAdd(&time1, &time2, &v25);
        time1 = v25;
        *&time2.value = v17;
        time2.epoch = v18;
        PC_CMTimeSaferSubtract(&time1, &time2, &v19);
        if (v4)
        {
          time1 = v20;
          time2 = v24;
          v8 = CMTimeCompare(&time1, &time2);
          v9 = &v20;
          if (v8 > 0)
          {
            v9 = &v24;
          }

          v10 = *&v9->value;
          v24.epoch = v9->epoch;
          *&v24.value = v10;
          time1 = v19;
          time2 = v23;
          v11 = CMTimeCompare(&time1, &time2);
          v12 = &v19;
          if (v11 > 0)
          {
            v12 = &v23;
          }

          v13 = *&v12->value;
          v23.epoch = v12->epoch;
          *&v23.value = v13;
        }

        else
        {
          v24 = v20;
          v23 = v19;
        }

        v4 = 1;
      }
    }

    ++v5;
  }

  while (v5 != v2);
  if (value)
  {
    operator delete(value);
  }

  if ((v4 & 1) == 0)
  {
LABEL_21:
    OZChannel::getKeyframeMinTime((this + 32496), &v24);
    OZChannel::getKeyframeMaxTime((this + 32496), &v23);
  }

  time = v23;
  time1 = v24;
  v14.n128_f64[0] = PC_CMTimeSaferSubtract(&time, &time1, &time2);
  v15 = (*(*this + 336))(this, v14);
  OZSceneSettings::getFrameDuration((v15 + 336), &time1);
  operator/(&time2.value, &time1, &time);
  return CMTimeGetSeconds(&time);
}

void sub_25FB5D148(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

long double TXSequenceBehavior::computePosition(TXSequenceBehavior *this, int a2, double a3, double *a4)
{
  v10 = 0.0;
  if (a2 > 2)
  {
    if (a2 <= 4)
    {
      if (a2 != 3)
      {
        goto LABEL_4;
      }

      if (OZChannel::getValueAsInt((this + 35728), MEMORY[0x277CC08F0], 0.0))
      {
        v6 = 0.5;
        goto LABEL_18;
      }

      return sin(a3 * 3.14159265 + -1.57079633) * 0.5 + 0.5;
    }

    if (a2 != 5)
    {
      if (a2 == 6)
      {
        TXSequenceBehavior::getCustomSpeed(this, a3);
        return v7;
      }

      return v10;
    }

LABEL_14:
    v6 = 0.0;
    v8 = 1.0;
LABEL_23:
    PCMath::easeInOut(&v10, a3, v6, v8, 0.0, 1.0, 0, a4);
    return v10;
  }

  switch(a2)
  {
    case 0:
      return a3;
    case 1:
      if (OZChannel::getValueAsInt((this + 35728), MEMORY[0x277CC08F0], 0.0))
      {
        if (OZChannel::getValueAsInt((this + 35880), MEMORY[0x277CC08F0], 0.0))
        {
          v6 = 0.5;
          goto LABEL_22;
        }

LABEL_4:
        v6 = 1.0;
LABEL_22:
        v8 = 0.0;
        goto LABEL_23;
      }

      return 1.0 - cos(a3 * 3.14159265 * 0.5);
    case 2:
      if (!OZChannel::getValueAsInt((this + 35728), MEMORY[0x277CC08F0], 0.0))
      {
        return sin(a3 * 3.14159265 * 0.5) + 0.0;
      }

      if (OZChannel::getValueAsInt((this + 35880), MEMORY[0x277CC08F0], 0.0))
      {
        v6 = 0.0;
LABEL_18:
        v8 = 0.5;
        goto LABEL_23;
      }

      goto LABEL_14;
  }

  return v10;
}

double TXSequenceBehavior::getValue(TXSequenceBehavior *this, const CMTime *a2, double a3, OZChannel *a4, double a5)
{
  v12 = *a2;
  if ((*(*this + 296))(this, &v12, 0, 1, 1))
  {
    if (OZChannel::getValueAsInt((this + 28112), MEMORY[0x277CC08F0], 0.0) == 4)
    {
      return TXSequenceBehavior::getCustomAnimationValue(this, a2, a3, a4, a5);
    }

    else
    {
      return TXSequenceBehavior::getSelectionValue(this, a2, a3, a4, a5);
    }
  }

  return a5;
}

double TXSequenceBehavior::getCustomAnimationValue(TXSequenceBehavior *this, const CMTime *a2, double a3, OZChannel *a4, double a5)
{
  memset(&v46, 0, sizeof(v46));
  TXSequenceBehavior::getCustomAnimationTime(this, a2, a3, &v46);
  ChanValue = TXSequenceBehavior::getChanValue(this, &v46, a3, a4);
  if (OZChannel::getValueAsInt((this + 30816), MEMORY[0x277CC08F0], 0.0))
  {
    LODWORD(time.value) = 0;
    if (TXSequenceBehavior::charIndexToSelectionIndex(this, a3, &time))
    {
      ValueAsUint = OZChannel::getValueAsUint((this + 31072), a2, 0.0);
      v12 = OZChannel::getValueAsUint((this + 31224), a2, 0.0);
      if (OZChannel::getValueAsInt((this + 28368), MEMORY[0x277CC08F0], 0.0) == 2 || OZChannel::getValueAsInt((this + 28368), MEMORY[0x277CC08F0], 0.0) == 3)
      {
        ValueAsInt = OZChannel::getValueAsInt((this + 31376), MEMORY[0x277CC08F0], 0.0);
        v15 = LODWORD(time.value) >= ValueAsUint && LODWORD(time.value) < v12;
        if (v15)
        {
          v16 = ChanValue;
        }

        else
        {
          v16 = a5;
        }

        if (v15)
        {
          v17 = a5;
        }

        else
        {
          v17 = ChanValue;
        }

        if (ValueAsInt)
        {
          ChanValue = v17;
        }

        else
        {
          ChanValue = v16;
        }
      }
    }
  }

  v45 = *a2;
  OZChannel::getValueAsDouble(this + 222, &v45, 0.0);
  if (v18 > 0.0)
  {
    v19 = v18;
    if (a4->var3 - 1009 > 0x23 || ((1 << (LOBYTE(a4->var3) + 15)) & 0x800002211) == 0)
    {
      v21 = TXSequenceBehavior::charIndexToChannelUnitIndex(this, a3, 1);
      if ((v21 & 0x80000000) == 0)
      {
        v22 = MEMORY[0x277CC08F0];
        v23 = 0.0;
        v24 = OZChannel::getValueAsInt((this + 34760), MEMORY[0x277CC08F0], 0.0) + 39 * v21;
        var3 = a4->var3;
        v26 = OZChannel::getValueAsInt(this + 227, v22, 0.0);
        OZChannel::getValueAsDouble(this + 226, &v46, 0.0);
        v28 = v27;
        SceneFrameRate = OZBehavior::getSceneFrameRate(this);
        TXSequenceBehavior::getKeyframeExtent(this, &v44, &v43);
        PCMath::clamp(&v46, &v44, &v43, &time);
        v46 = time;
        v30 = (*(*this + 336))(this);
        OZSceneSettings::getFrameDuration((v30 + 336), &v47);
        operator/(&v46.value, &v47, &time);
        Seconds = CMTimeGetSeconds(&time);
        time = v43;
        v47 = v44;
        v32 = Seconds / SceneFrameRate;
        v33.n128_f64[0] = PC_CMTimeSaferSubtract(&time, &v47, &v42);
        v34 = (*(*this + 336))(this, v33);
        OZSceneSettings::getFrameDuration((v34 + 336), &v47);
        operator/(&v42, &v47, &time);
        v35 = CMTimeGetSeconds(&time);
        v36 = 0;
        v37 = fabs(v35);
        v38 = v35 / SceneFrameRate;
        v39 = 1.0;
        if (v37 >= 0.0000001)
        {
          v40 = v38;
        }

        else
        {
          v40 = 1.0;
        }

        do
        {
          v23 = v23 + v39 * PCRandom::noise(v36, v19, v32, v24 + var3, v26, 0.0, v40);
          v19 = v19 + v19;
          v39 = v28 * v39;
          v36 = (v36 + 1);
        }

        while (v36 != 10);
        OZChannel::getValueAsDouble(this + 225, &v46, 0.0);
        return ChanValue + v23 * v41;
      }
    }
  }

  return ChanValue;
}

double TXSequenceBehavior::getSelectionValue(TXSequenceBehavior *this, const CMTime *a2, double a3, OZChannel *a4, double a5)
{
  memset(&v54, 0, sizeof(v54));
  OZChannel::getValueAsDouble((this + 33056), MEMORY[0x277CC08F0], 0.0);
  v11 = v10;
  v12 = (*(*this + 336))(this);
  OZSceneSettings::getFrameDuration((v12 + 336), &v52);
  operator*(&v52, &v53, v11);
  v56 = *a2;
  v55 = v53;
  PC_CMTimeSaferSubtract(&v56, &v55, &v54);
  ChanValue = TXSequenceBehavior::getChanValue(this, &v54, a3, a4);
  OZChannel::getValueAsDouble(this + 222, &v54, 0.0);
  if (v14 > 0.0)
  {
    v15 = v14;
    OZChannel::getValueAsDouble(this + 223, &v54, 0.0);
    v17 = ChanValue * v16;
    OZChannel::getValueAsDouble(this + 224, &v54, 0.0);
    v19 = ChanValue * v18;
    if (vabdd_f64(ChanValue * v18, v17) >= 0.0000001)
    {
      v20 = TXSequenceBehavior::charIndexToChannelUnitIndex(this, a3, 1);
      if (v20 < 0)
      {
        return ChanValue;
      }

      v21 = v20;
      v49 = a3;
      v22 = 0.0;
      v23 = a4->var3 + OZChannel::getValueAsInt((this + 34760), MEMORY[0x277CC08F0], 0.0);
      OZChannel::getValueAsDouble(this + 226, &v54, 0.0);
      v51 = v24;
      v25 = 0;
      v50 = (2 * v21);
      v26 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1;
      v27 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2;
      v28 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3;
      v29 = 1.0;
      do
      {
        v30 = (v15 * v50);
        v31 = -32;
        v32 = -1640531527;
        v33 = v25;
        v34 = v23;
        do
        {
          v33 += (v30 + 16 * v34) ^ (v32 + v34) ^ (v26 + (v34 >> 5));
          v34 += (v27 + 16 * v33) ^ (v32 + v33) ^ (v28 + (v33 >> 5));
          v32 -= 1640531527;
          v35 = __CFADD__(v31++, 1);
        }

        while (!v35);
        v36 = -32;
        v37 = -1640531527;
        v38 = v25;
        v39 = v23;
        do
        {
          v38 += (v30 + 1 + 16 * v39) ^ (v37 + v39) ^ (v26 + (v39 >> 5));
          v39 += (v27 + 16 * v38) ^ (v37 + v38) ^ (v28 + (v38 >> 5));
          v37 -= 1640531527;
          v35 = __CFADD__(v36++, 1);
        }

        while (!v35);
        v40 = (v34 ^ v33) / 2147483650.0;
        v41 = (v39 ^ v38) / 2147483650.0;
        v42 = cos((v15 * v50 - v30) * 3.14159265);
        v22 = v22 + v29 * ((1.0 - (1.0 - v42) * 0.5) * v40 + (1.0 - v42) * 0.5 * v41);
        v15 = v15 + v15;
        v29 = v51 * v29;
        ++v25;
      }

      while (v25 != 10);
      ChanValue = v17 + (v19 - v17) * ((v22 + 1.0) * 0.5);
      a3 = v49;
    }

    else
    {
      ChanValue = v17;
    }
  }

  if (a4->var3 - 1033 >= 2)
  {
    v43 = Li3DEngineScene::sceneManager((this + 544));
    OZLockingGroup::ReadSentry::ReadSentry(&v56, v43);
    ValueAsInt = OZChannel::getValueAsInt((this + 30432), MEMORY[0x277CC08F0], 0.0);
    if (ValueAsInt == 2)
    {
      v45 = a5;
    }

    else
    {
      v45 = 0.0;
    }

    if (vabdd_f64(v45, ChanValue) < 0.0000001)
    {
      goto LABEL_26;
    }

    (*(*this + 704))(this, a2, a4, 0, a3);
    if (ValueAsInt)
    {
      if (ValueAsInt == 1)
      {
        ChanValue = (ChanValue * v46 + 0.0) * a5;
      }

      else if (ValueAsInt == 2)
      {
        v47 = (ChanValue - a5) * v46;
LABEL_25:
        ChanValue = v47 + a5;
      }

LABEL_26:
      OZLockingGroup::ReadSentry::~ReadSentry(&v56);
      return ChanValue;
    }

    v47 = ChanValue * v46 + 0.0;
    goto LABEL_25;
  }

  return ChanValue;
}

double TXSequenceBehavior::getChanValue(TXSequenceBehavior *this, const CMTime *a2, double a3, OZChannel *a4)
{
  OZChannel::getValueAsDouble(a4, a2, 0.0);
  v9 = v8;
  var6 = a4->var6;
  if (var6)
  {
    v11 = *(var6 + 6);
    if ((v11 == 1027 || v11 == 1001) && OZChannel::getValueAsInt((this + 35472), MEMORY[0x277CC08F0], 0.0) == 1)
    {
      v12 = *(this + 101);
      v14 = *a2;
      return v9 * TXTextLayout::getSeqPosScaleForChar(v12, a3, &v14);
    }
  }

  return v9;
}

void TXSequenceBehavior::getCustomAnimationTime(TXSequenceBehavior *this@<X0>, const CMTime *a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  v7 = TXSequenceBehavior::charIndexToChannelUnitIndex(this, a3, 1);
  if (v7 < 0)
  {
    v17 = MEMORY[0x277CC08F0];
    *a4 = *MEMORY[0x277CC08F0];
    *(a4 + 16) = *(v17 + 16);
    return;
  }

  v8 = v7;
  (*(*this + 608))(v67, this);
  memset(&v66, 0, sizeof(v66));
  v65 = v67[1];
  v9 = (*(*this + 336))(this);
  OZSceneSettings::getFrameDuration((v9 + 336), &v63);
  v10 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 33056), MEMORY[0x277CC08F0], 0.0);
  v12 = v11;
  OZChannel::getValueAsDouble((this + 33464), v10, 0.0);
  operator*(&v63, &v64, v12 + v13 + 1.0);
  time1 = v65;
  time2 = v64;
  PC_CMTimeSaferSubtract(&time1, &time2, &v66);
  NumObjects = TXSequenceBehavior::getNumObjects(this);
  ValueAsInt = OZChannel::getValueAsInt((this + 31832), v10, 0.0);
  if (OZChannel::getValueAsInt((this + 32800), v10, 0.0) == 2)
  {
    v16 = 0;
  }

  else
  {
    v16 = OZChannel::getValueAsInt((this + 32240), MEMORY[0x277CC08F0], 0.0);
  }

  v18 = MEMORY[0x277CC08F0];
  if (OZChannel::getValueAsInt((this + 31832), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    v8 = TXSequenceBehavior::shuffle(this, v8, v19);
  }

  v20 = NumObjects;
  TXSequenceBehavior::getKeyframeExtent(this, &time2, &time1);
  memset(&v65, 0, sizeof(v65));
  PC_CMTimeSaferSubtract(&time1, &time2, &v65);
  time1 = v65;
  time2 = *v18;
  if (!CMTimeCompare(&time1, &time2))
  {
    v65 = v66;
  }

  v21 = MEMORY[0x277CC08F0];
  v22 = 0.0;
  OZChannel::getValueAsDouble((this + 31680), MEMORY[0x277CC08F0], 0.0);
  v24 = -1.0 / (v23 + 1.0) + 1.0;
  v25 = v20 * 0.5;
  v26 = ceil(v20 * 0.5);
  if ((ValueAsInt & 0xFFFFFFFE) == 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = v20;
  }

  v28 = (*(*this + 336))(this);
  OZSceneSettings::getFrameDuration((v28 + 336), &time2);
  operator/(&v66.value, &time2, &time1);
  Seconds = CMTimeGetSeconds(&time1);
  memset(&v64, 0, sizeof(v64));
  time2 = v67[0];
  time1 = *a2;
  v30.n128_f64[0] = PC_CMTimeSaferSubtract(&time1, &time2, &v63);
  v31 = (*(*this + 336))(this, v30);
  OZSceneSettings::getFrameDuration((v31 + 336), &v61);
  OZChannel::getValueAsDouble((this + 33056), v21, 0.0);
  operator*(&v61, &v62, v32);
  time1 = v63;
  time2 = v62;
  PC_CMTimeSaferSubtract(&time1, &time2, &v64);
  operator/(&v64.value, &v66, &time1);
  v33 = CMTimeGetSeconds(&time1);
  v34 = 0.999999;
  if (v33 <= 0.999999)
  {
    v34 = v33;
  }

  if (v33 >= 0.0)
  {
    v22 = v34;
  }

  if (OZChannel::getValueAsInt((this + 32800), v21, 0.0) == 1)
  {
    if (v16 == 6)
    {
      OZChannel::getValueAsDouble((this + 32496), a2, 0.0);
    }

    else
    {
      v36 = TXSequenceBehavior::computePosition(this, v16, v22, v35);
    }

    v42 = v36;
    OZChannel::getValueAsDouble((this + 32648), MEMORY[0x277CC08F0], 0.0);
    v44 = v42 * v43;
    v40 = vcvtmd_s64_f64(v44 + 0.0000001);
    v45 = v44 - v40;
  }

  else
  {
    OZChannel::getValueAsDouble((this + 32648), MEMORY[0x277CC08F0], 0.0);
    v39 = v22 * v38;
    v40 = vcvtmd_s64_f64(v39 + 0.0000001);
    if (v16 == 6)
    {
      OZChannel::getValueAsDouble((this + 32496), a2, 0.0);
    }

    else
    {
      v41 = TXSequenceBehavior::computePosition(this, v16, v39 - v40, v37);
    }

    v45 = v41;
  }

  v46 = Seconds / (v27 - (v27 + -1.0) * v24);
  v47 = MEMORY[0x277CC08F0];
  v48 = 0.0;
  v49 = OZChannel::getValueAsInt((this + 33208), MEMORY[0x277CC08F0], 0.0);
  v50 = (v40 & 0x80000001) == 1 && v49 == 2;
  v51 = 1.0 - v45;
  if (!v50)
  {
    v51 = v45;
  }

  operator*(&v66, &v62, v51);
  v52 = (*(*this + 336))(this);
  OZSceneSettings::getFrameDuration((v52 + 336), &v60);
  OZChannel::getValueAsDouble((this + 33056), v47, 0.0);
  operator*(&v60, &v61, v53);
  time1 = v62;
  time2 = v61;
  PC_CMTimeSaferAdd(&time1, &time2, &v63);
  v64 = v63;
  if (ValueAsInt <= 1)
  {
    if (ValueAsInt)
    {
      if (ValueAsInt == 1)
      {
        v48 = v20 - v8 + -1.0;
      }

      goto LABEL_47;
    }

LABEL_40:
    v48 = v8;
    goto LABEL_47;
  }

  switch(ValueAsInt)
  {
    case 2:
      if (v25 > v8)
      {
        v48 = v25 - v8 + -1.0;
      }

      else
      {
        v48 = v8 - v25;
      }

      break;
    case 3:
      if (v25 <= v8)
      {
        v48 = v20 - v8 + -1.0;
      }

      else
      {
        v48 = v8;
      }

      break;
    case 4:
      goto LABEL_40;
  }

LABEL_47:
  OZChannel::getValueAsDouble((this + 33056), MEMORY[0x277CC08F0], 0.0);
  v55 = (1.0 - v24) * v46 * v48 + v54;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v56 = (*(*this + 336))(this);
  OZFigTimeForChannelSeconds(&v60, v55 / *(v56 + 368), 0x40000);
  time1 = v64;
  time2 = v60;
  v57.n128_f64[0] = PC_CMTimeSaferSubtract(&time1, &time2, &v61);
  v58 = (*(*this + 336))(this, v57);
  OZFigTimeForChannelSeconds(&v59, v46 / *(v58 + 368), 0x40000);
  operator/(&v61.value, &v59, &v62);
  operator*(&v62.value, &v65, &v63);
  time2 = v67[0];
  time1 = v63;
  PC_CMTimeSaferAdd(&time1, &time2, a4);
}

uint64_t TXSequenceBehavior::charIndexToSelectionIndex(TXSequenceBehavior *this, int a2, unsigned int *a3)
{
  if (a3)
  {
    LODWORD(i) = a2;
    v59 = 0;
    TXChannelString::getString((*(this + 101) + 19048), &theString);
    v6 = PCString::size(&theString);
    ValueAsInt = OZChannel::getValueAsInt((this + 30816), MEMORY[0x277CC08F0], 0.0);
    v8 = 0;
    WordIndexInPhrase = 1;
    if (ValueAsInt <= 3)
    {
      switch(ValueAsInt)
      {
        case 1:
          if (OZChannel::getValueAsInt((this + 31528), MEMORY[0x277CC08F0], 0.0))
          {
            v8 = v6 + ~i;
            v59 = v8;
          }

          else
          {
            v59 = i;
            v8 = i;
          }

          break;
        case 2:
          if (OZChannel::getValueAsInt((this + 31528), MEMORY[0x277CC08F0], 0.0))
          {
            v38 = i;
            if (v6 > i)
            {
              v38 = i;
              while (1)
              {
                CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v38);
                if (TXCharacterSetIsWhitespaceOrNewline(CharacterAtIndex))
                {
                  break;
                }

                if (v6 == ++v38)
                {
                  v38 = v6;
                  break;
                }
              }
            }

            v8 = v38 + ~i;
          }

          else
          {
            if (i)
            {
              v43 = i + 1;
              while (1)
              {
                v44 = v43 - 1;
                v45 = CFStringGetCharacterAtIndex(theString, v43 - 1);
                if (TXCharacterSetIsWhitespaceOrNewline(v45))
                {
                  break;
                }

                --v43;
                if (v44 == 1)
                {
                  goto LABEL_85;
                }
              }

              v46 = -v43;
            }

            else
            {
LABEL_85:
              v46 = 0;
            }

            v8 = v46 + i;
          }

          goto LABEL_119;
        case 3:
          v57 = 0;
          LineBreaks = TXTextLayout::getLineBreaks(*(this + 101), &v57);
          if (OZChannel::getValueAsInt((this + 31528), MEMORY[0x277CC08F0], 0.0))
          {
            v20 = 0;
            v21 = v6 - i;
            if (v6 <= i)
            {
              v6 = i;
            }

            else
            {
              v22 = i;
              while (1)
              {
                v23 = CFStringGetCharacterAtIndex(theString, v22);
                if (TXCharacterSetIsNewline(v23) || TXTextLayout::isLineBreak(*(this + 101), v22, v57, LineBreaks))
                {
                  break;
                }

                v24 = CFStringGetCharacterAtIndex(theString, v22);
                if (TXCharacterSetIsWhitespaceOrNewline(v24))
                {
                  ++v20;
                }

                else
                {
                  v20 = 0;
                }

                ++v22;
                if (!--v21)
                {
                  goto LABEL_116;
                }
              }

              v6 = v22;
            }

LABEL_116:
            v8 = ~i - v20 + v6;
          }

          else
          {
            v53 = 0;
            v54 = 0;
            for (i = i; ; --i)
            {
              v55 = CFStringGetCharacterAtIndex(theString, i);
              if (TXCharacterSetIsWhitespaceOrNewline(v55))
              {
                ++v54;
              }

              else
              {
                v54 = 0;
              }

              if (!i || TXTextLayout::isLineBreak(*(this + 101), i, v57, LineBreaks))
              {
                break;
              }

              ++v53;
            }

            v8 = v53 - v54;
          }

          goto LABEL_119;
      }
    }

    else
    {
      if (ValueAsInt <= 5)
      {
        if (ValueAsInt != 4)
        {
          v57 = 0;
          v10 = TXTextLayout::getLineBreaks(*(this + 101), &v57);
          if (OZChannel::getValueAsInt((this + 31528), MEMORY[0x277CC08F0], 0.0))
          {
            if (v6 > i)
            {
              v8 = 0;
              v11 = 0;
              v12 = i;
              do
              {
                v13 = CFStringGetCharacterAtIndex(theString, v12);
                if (TXCharacterSetIsNewline(v13) || v12 > i && TXTextLayout::isLineBreak(*(this + 101), v12, v57, v10))
                {
                  break;
                }

                v14 = CFStringGetCharacterAtIndex(theString, v12);
                IsWhitespace = TXCharacterSetIsWhitespace(v14);
                v11 = IsWhitespace;
                if (IsWhitespace)
                {
                  v59 = ++v8;
                  v16 = v12 + 1;
                  do
                  {
                    v12 = v16;
                    if (v16 >= v6)
                    {
                      break;
                    }

                    v17 = CFStringGetCharacterAtIndex(theString, v16);
                    v18 = TXCharacterSetIsWhitespace(v17);
                    v16 = v12 + 1;
                  }

                  while (v18);
                }

                else
                {
                  ++v12;
                }
              }

              while (v12 < v6);
              goto LABEL_18;
            }
          }

          else if (i)
          {
            v8 = 0;
            v11 = 0;
            do
            {
              v48 = CFStringGetCharacterAtIndex(theString, i);
              if (TXCharacterSetIsNewline(v48) || TXTextLayout::isLineBreak(*(this + 101), i, v57, v10))
              {
                break;
              }

              v49 = CFStringGetCharacterAtIndex(theString, i);
              v50 = TXCharacterSetIsWhitespace(v49);
              v11 = v50;
              if (v50)
              {
                v59 = ++v8;
                v51 = i - 1;
                while (v51)
                {
                  v52 = CFStringGetCharacterAtIndex(theString, v51--);
                  if (!TXCharacterSetIsWhitespace(v52))
                  {
                    LODWORD(i) = v51 + 1;
                    goto LABEL_101;
                  }
                }

                break;
              }

              LODWORD(i) = i - 1;
LABEL_101:
              ;
            }

            while (i);
LABEL_18:
            if (!v11)
            {
              goto LABEL_120;
            }

            goto LABEL_114;
          }

          v8 = 0;
LABEL_120:
          WordIndexInPhrase = 1;
          goto LABEL_121;
        }

        if (OZChannel::getValueAsInt((this + 31528), MEMORY[0x277CC08F0], 0.0))
        {
          if (v6 > i)
          {
            v8 = 0;
            do
            {
              v29 = CFStringGetCharacterAtIndex(theString, i);
              IsWhitespaceOrNewline = TXCharacterSetIsWhitespaceOrNewline(v29);
              if (IsWhitespaceOrNewline)
              {
                v59 = ++v8;
                v31 = i + 1;
                do
                {
                  LODWORD(i) = v31;
                  if (v31 >= v6)
                  {
                    break;
                  }

                  v32 = CFStringGetCharacterAtIndex(theString, v31);
                  v33 = TXCharacterSetIsWhitespaceOrNewline(v32);
                  v31 = i + 1;
                }

                while (v33);
              }

              else
              {
                LODWORD(i) = i + 1;
              }
            }

            while (i < v6);
LABEL_51:
            if (!IsWhitespaceOrNewline)
            {
              goto LABEL_120;
            }

            goto LABEL_114;
          }
        }

        else if (i)
        {
          v8 = 0;
          while (1)
          {
            v40 = CFStringGetCharacterAtIndex(theString, i);
            IsWhitespaceOrNewline = TXCharacterSetIsWhitespaceOrNewline(v40);
            if (IsWhitespaceOrNewline)
            {
              break;
            }

            LODWORD(i) = i - 1;
LABEL_78:
            if (!i)
            {
              goto LABEL_51;
            }
          }

          v59 = ++v8;
          v41 = i - 1;
          while (v41)
          {
            v42 = CFStringGetCharacterAtIndex(theString, v41--);
            if (!TXCharacterSetIsWhitespaceOrNewline(v42))
            {
              LODWORD(i) = v41 + 1;
              goto LABEL_78;
            }
          }

          if (!IsWhitespaceOrNewline)
          {
            goto LABEL_120;
          }

LABEL_114:
          --v8;
LABEL_119:
          v59 = v8;
          goto LABEL_120;
        }

        goto LABEL_80;
      }

      if (ValueAsInt == 6)
      {
        v57 = 0;
        v34 = TXTextLayout::getLineBreaks(*(this + 101), &v57);
        v8 = 0;
        if (OZChannel::getValueAsInt((this + 31528), MEMORY[0x277CC08F0], 0.0))
        {
          v35 = v6 >= i;
          v36 = v6 - i;
          if (v36 != 0 && v35)
          {
            v37 = i;
            i = i;
            do
            {
              if (i > v37 && TXTextLayout::isLineBreak(*(this + 101), i, v57, v34))
              {
                v59 = ++v8;
              }

              ++i;
              --v36;
            }

            while (v36);
          }
        }

        else
        {
          v47 = 0;
          do
          {
            if (TXTextLayout::isLineBreak(*(this + 101), v47, v57, v34))
            {
              v59 = ++v8;
            }

            ++v47;
          }

          while (v47 <= i);
        }

        goto LABEL_120;
      }

      if (ValueAsInt == 7)
      {
        v25 = *(this + 101);
        {
LABEL_80:
          v8 = 0;
          goto LABEL_121;
        }

        v27 = v26;
        v28 = OZChannel::getValueAsInt((this + 31528), MEMORY[0x277CC08F0], 0.0) != 0;
        WordIndexInPhrase = TXTranscriptionGenerator::getWordIndexInPhrase(v27, i, v28, &v59);
        v8 = v59;
      }
    }

LABEL_121:
    *a3 = v8;
    PCString::~PCString(&theString);
    return WordIndexInPhrase;
  }

  return 0;
}

uint64_t TXSequenceBehavior::charIndexToChannelUnitIndex(TXSequenceBehavior *this, unsigned int a2, int a3)
{
  v19 = a2;
  if (a3 && Li3DEngineScene::sceneManager((this + 544)))
  {
    v6 = Li3DEngineScene::sceneManager((this + 544));
    OZLockingGroup::acquireReadLocks(v6);
  }

  v7 = *(this + 4508);
  if (v7)
  {
    v8 = (this + 36064);
    do
    {
      v9 = v7[7];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v7;
      }

      v7 = *&v7[2 * v11];
    }

    while (v7);
    if (v8 != (this + 36064) && v8[7] <= a2)
    {
      v14 = v8[8];
      if (!a3)
      {
        return v14;
      }

      goto LABEL_29;
    }
  }

  v12 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 28368), MEMORY[0x277CC08F0], 0.0);
  v14 = TXSequenceBehavior::charIndexToUnitIndex(this, a2, ValueAsInt);
  v15 = OZChannel::getValueAsInt((this + 31832), v12, 0.0);
  if ((v15 - 2) >= 2)
  {
    if (v15 == 1)
    {
      v14 = TXSequenceBehavior::getNumObjects(this) + ~v14;
    }
  }

  else
  {
    v16 = TXSequenceBehavior::getNumObjects(this) >> 1;
    if (TXSequenceBehavior::getNumObjects(this))
    {
      if (v14 - v16 >= 0)
      {
        LODWORD(v14) = v14 - v16;
      }

      else
      {
        LODWORD(v14) = v16 - v14;
      }

      if (OZChannel::getValueAsInt((this + 31832), MEMORY[0x277CC08F0], 0.0) == 3)
      {
        v14 = (v16 - v14);
      }

      else
      {
        v14 = v14;
      }
    }

    else
    {
      if (v14 >= v16)
      {
        LODWORD(v14) = v14 - v16;
      }

      else
      {
        LODWORD(v14) = v16 + ~v14;
      }

      if (OZChannel::getValueAsInt((this + 31832), MEMORY[0x277CC08F0], 0.0) == 3)
      {
        v14 = (v16 + ~v14);
      }

      else
      {
        v14 = v14;
      }
    }
  }

  v20 = &v19;
  *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(this + 36056, &v19) + 8) = v14;
  if (a3)
  {
LABEL_29:
    if (Li3DEngineScene::sceneManager((this + 544)))
    {
      v17 = Li3DEngineScene::sceneManager((this + 544));
      OZLockingGroup::releaseReadLocks(v17);
    }
  }

  return v14;
}

__n128 TXSequenceBehavior::getKeyframeExtent(TXSequenceBehavior *this, CMTime *a2, CMTime *a3)
{
  v3 = *(this + 104);
  v4 = *(this + 103);
  v5 = MEMORY[0x277CC08F0];
  if (v3 == v4)
  {
    v24 = *MEMORY[0x277CC08F0];
    a2->epoch = *(MEMORY[0x277CC08F0] + 16);
    *&a2->value = v24;
    result = *v5;
    a3->epoch = v5[1].n128_i64[0];
    *&a3->value = result;
  }

  else
  {
    v6 = 0;
    v33 = **&MEMORY[0x277CC08F0];
    v32 = v33;
    do
    {
      v7 = *v4;
      if ((*(*v4 + 56) & 0x1000) != 0)
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
        OZChannelFolder::getAllDescendantsFlattened(v15, &v27, 0, 0);
        v17 = v27;
        v16 = v28;
        if (v27 != v28)
        {
          do
          {
            if (*v17)
            {
            }

            else
            {
              v18 = 0;
            }

            if ((*(v18->var0 + 69))(v18, 0))
            {
              OZChannel::getKeyframeMinTime(v18, &time1);
              v31 = time1;
              OZChannel::getKeyframeMaxTime(v18, &time1);
              v30 = time1;
              if (v6)
              {
                time1 = v33;
                time2 = v31;
                v19 = CMTimeCompare(&time1, &time2);
                v20 = &v31;
                if (v19 <= 0)
                {
                  v20 = &v33;
                }

                v21 = *&v20->value;
                v33.epoch = v20->epoch;
                *&v33.value = v21;
                time1 = v32;
                time2 = v30;
                v22 = CMTimeCompare(&time1, &time2);
                v23 = &v30;
                if (v22 >= 0)
                {
                  v23 = &v32;
                }

                result = *&v23->value;
                v32.epoch = v23->epoch;
                *&v32.value = result;
              }

              else
              {
                v33 = v31;
                result.n128_u64[1] = *&v30.timescale;
                v32 = v30;
              }

              v6 = 1;
            }

            ++v17;
          }

          while (v17 != v16);
          v17 = v27;
        }

        if (v17)
        {
          v28 = v17;
          operator delete(v17);
        }
      }

      else
      {
        if ((*(v8->var0 + 69))())
        {
          OZChannel::getKeyframeMinTime(v8, &v31);
          OZChannel::getKeyframeMaxTime(v8, &v30);
          if (v6)
          {
            time1 = v33;
            time2 = v31;
            v10 = CMTimeCompare(&time1, &time2);
            v11 = &v31;
            if (v10 <= 0)
            {
              v11 = &v33;
            }

            v12 = *&v11->value;
            v33.epoch = v11->epoch;
            *&v33.value = v12;
            time1 = v32;
            time2 = v30;
            v13 = CMTimeCompare(&time1, &time2);
            v14 = &v30;
            if (v13 >= 0)
            {
              v14 = &v32;
            }

            result = *&v14->value;
            v32.epoch = v14->epoch;
            *&v32.value = result;
          }

          else
          {
            v33 = v31;
            v32 = v30;
          }

          v6 = 1;
        }
      }

      v4 += 8;
    }

    while (v4 != v3);
    *a2 = v33;
    result.n128_u64[0] = v32.value;
    *a3 = v32;
  }

  return result;
}

void sub_25FB5F280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 PCMath::clamp@<Q0>(CMTime *this@<X0>, CMTime *a2@<X1>, CMTime *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2;
  time1 = *this;
  v10 = *a2;
  if ((CMTimeCompare(&time1, &v10) & 0x80000000) == 0)
  {
    time1 = *this;
    v10 = *a3;
    if (CMTimeCompare(&time1, &v10) <= 0)
    {
      v6 = this;
    }

    else
    {
      v6 = a3;
    }
  }

  result = *&v6->value;
  *a4 = *&v6->value;
  *(a4 + 16) = v6->epoch;
  return result;
}