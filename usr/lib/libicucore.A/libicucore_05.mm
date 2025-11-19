uint64_t icu::RuleBasedBreakIterator57::preceding(icu::RuleBasedBreakIterator57 *this, int a2)
{
  v3 = *(this + 61);
  if (!v3 || utext_nativeLength(v3) < a2)
  {
    v5 = *(*this + 88);
    v6 = this;

    return v5(v6);
  }

  if (a2 < 0)
  {
    v5 = *(*this + 80);
    v6 = this;

    return v5(v6);
  }

  utext_setNativeIndex(*(this + 61), a2);
  NativeIndex = utext_getNativeIndex(*(this + 61));
  LODWORD(v8) = NativeIndex;
  v9 = *(this + 68);
  if (!v9)
  {
    goto LABEL_11;
  }

  if (*v9 < NativeIndex)
  {
    v10 = *(this + 138);
    if (v9[v10 - 1] >= NativeIndex)
    {
      *(this + 139) = 0;
      if (v10 <= 0)
      {
        v21 = -1;
        *(this + 139) = -1;
      }

      else
      {
        v20 = 0;
        while (v9[v20] < NativeIndex)
        {
          *(this + 139) = ++v20;
          if (v10 == v20)
          {
            LODWORD(v20) = v10;
            break;
          }
        }

        v21 = v20 - 1;
        *(this + 139) = v20 - 1;
        if (v20 > 1)
        {
          goto LABEL_58;
        }
      }

      *(this + 532) = 0;
LABEL_58:
      utext_setNativeIndex(*(this + 61), v9[v21]);
      return *(*(this + 68) + 4 * *(this + 139));
    }
  }

  (*(*this + 200))(this);
LABEL_11:
  v11 = *(this + 65);
  if (*(v11 + 24))
  {
    utext_setNativeIndex(*(this + 61), v8);
    v12 = *(this + 61);
    chunkOffset = v12->chunkOffset;
    if (chunkOffset <= v12->nativeIndexingLimit)
    {
      v14 = v12->chunkNativeStart + chunkOffset;
    }

    else
    {
      LODWORD(v14) = (v12->pFuncs->mapOffsetToNative)();
      v12 = *(this + 61);
    }

    if (v14 != v8)
    {
      v18 = v12->chunkOffset;
      if (v18 >= v12->chunkLength || v12->chunkContents[v18] >> 11 > 0x1Au)
      {
        utext_next32(v12);
        v12 = *(this + 61);
        v19 = v12->chunkOffset;
      }

      else
      {
        v19 = v18 + 1;
        v12->chunkOffset = v19;
      }

      if (v19 <= v12->nativeIndexingLimit)
      {
        v8 = v12->chunkNativeStart + v19;
      }

      else
      {
        LODWORD(v8) = (v12->pFuncs->mapOffsetToNative)();
        v12 = *(this + 61);
      }
    }

    v25 = v12->chunkOffset;
    if (v25 < 1 || v12->chunkContents[v25 - 1] >> 11 > 0x1Au)
    {
      utext_previous32(v12);
    }

    else
    {
      v12->chunkOffset = v25 - 1;
    }

    icu::RuleBasedBreakIterator57::handleNext(this, *(*(this + 65) + 24));
    v26 = *(this + 61);
    v27 = *(v26 + 40);
    if (v27 <= *(v26 + 28))
    {
      v24 = *(v26 + 32) + v27;
    }

    else
    {
      v24 = (*(*(v26 + 56) + 64))();
    }

    if (v8 > v24)
    {
      return v24;
    }

    do
    {
      v28 = (*(*this + 96))(this);
    }

    while (v28 >= v8);
  }

  else
  {
    v15 = *(v11 + 32);
    utext_setNativeIndex(*(this + 61), v8);
    if (!v15)
    {
      goto LABEL_53;
    }

    v16 = *(this + 61);
    v17 = v16->chunkOffset;
    if (v17 >= v16->chunkLength || v16->chunkContents[v17] >> 11 > 0x1Au)
    {
      utext_next32(v16);
    }

    else
    {
      v16->chunkOffset = v17 + 1;
    }

    icu::RuleBasedBreakIterator57::handlePrevious(this, *(*(this + 65) + 32));
    v22 = (*(*this + 104))(this);
    while (1)
    {
      v23 = *this;
      if (v22 >= v8)
      {
        break;
      }

      v24 = v22;
      v22 = (*(v23 + 104))(this);
      if (v22 >= v8)
      {
        return v24;
      }
    }

    v28 = (*(v23 + 96))(this);
    if (v28 >= v8)
    {
LABEL_53:
      v5 = *(*this + 96);
      v6 = this;

      return v5(v6);
    }
  }

  return v28;
}

BOOL icu::RuleBasedBreakIterator57::isBoundary(UText **this, unsigned int a2)
{
  if (!a2)
  {
    ((*this)->p)(this);
    return 1;
  }

  if (utext_nativeLength(this[61]) == a2)
  {
    ((*this)->q)(this);
    return 1;
  }

  if ((a2 & 0x80000000) != 0)
  {
    ((*this)->p)(this);
    return 0;
  }

  if (utext_nativeLength(this[61]) < a2)
  {
    ((*this)->q)(this);
    return 0;
  }

  utext_previous32From(this[61], a2);
  v5 = this[61];
  chunkOffset = v5->chunkOffset;
  if (chunkOffset <= v5->nativeIndexingLimit)
  {
    v7 = v5->chunkNativeStart + chunkOffset;
  }

  else
  {
    v7 = (v5->pFuncs->mapOffsetToNative)();
  }

  return (*&(*this)->b)(this, v7) == a2;
}

uint64_t icu::RuleBasedBreakIterator57::current(icu::RuleBasedBreakIterator57 *this, uint64_t a2)
{
  v2 = *(this + 61);
  v3 = *(v2 + 40);
  if (v3 <= *(v2 + 28))
  {
    return *(v2 + 32) + v3;
  }

  else
  {
    return (*(*(v2 + 56) + 64))(v2, a2);
  }
}

void icu::RuleBasedBreakIterator57::reset(icu::RuleBasedBreakIterator57 *this)
{
  v2 = (this + 544);
  v3 = *(this + 68);
  if (v3)
  {
    free(v3);
  }

  *(this + 134) = 0;
  *v2 = 0;
  v2[1] = 0;
}

uint64_t icu::RuleBasedBreakIterator57::makeRuleStatusValid(uint64_t this)
{
  if (!*(this + 532))
  {
    v1 = this;
    if (*(this + 488) && (this = (*(*this + 112))(this), this))
    {
      (*(*v1 + 112))(v1);
      (*(*v1 + 96))(v1);
      if (*(v1 + 552) >= 1)
      {
        (*(*v1 + 200))(v1);
      }

      v2 = *(*v1 + 104);

      return v2(v1);
    }

    else
    {
      *(v1 + 528) = 0;
      *(v1 + 532) = 1;
    }
  }

  return this;
}

uint64_t icu::RuleBasedBreakIterator57::getRuleStatusVec(icu::RuleBasedBreakIterator57 *this, int *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  icu::RuleBasedBreakIterator57::makeRuleStatusValid(this);
  v9 = *(*(this + 65) + 48);
  result = *(v9 + 4 * *(this + 132));
  v10 = result;
  if (result > a3)
  {
    *a4 = U_BUFFER_OVERFLOW_ERROR;
    v10 = a3;
  }

  if (v10 >= 1)
  {
    v11 = 0;
    v12 = v9 + 4;
    do
    {
      a2[v11] = *(v12 + 4 * (v11 + *(this + 132)));
      ++v11;
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t icu::RuleBasedBreakIterator57::getBinaryRules(icu::RuleBasedBreakIterator57 *this, unsigned int *a2)
{
  *a2 = 0;
  v2 = *(this + 65);
  if (!v2)
  {
    return 0;
  }

  result = *v2;
  *a2 = *(*v2 + 8);
  return result;
}

uint64_t icu::RuleBasedBreakIterator57::createBufferClone(icu::RuleBasedBreakIterator57 *this, void *a2, int *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (*a3)
  {
    result = (*(*this + 32))(this, a2);
    if (result)
    {
      v6 = U_SAFECLONE_ALLOCATED_WARNING;
    }

    else
    {
      v6 = U_MEMORY_ALLOCATION_ERROR;
    }

    *a4 = v6;
  }

  else
  {
    result = 0;
    *a3 = 1;
  }

  return result;
}

void *icu::RuleBasedBreakIterator57::getLanguageBreakEngine(icu::RuleBasedBreakIterator57 *this, uint64_t a2)
{
  v14 = U_ZERO_ERROR;
  v4 = *(this + 70);
  if (!v4)
  {
    operator new();
  }

  v5 = *(v4 + 8);
  while (1)
  {
    v6 = __OFSUB__(v5--, 1);
    if (v5 < 0 != v6)
    {
      break;
    }

    v7 = icu::UVector::elementAt(*(this + 70), v5);
    if ((*(*v7 + 24))(v7, a2, 0))
    {
      return v7;
    }
  }

  if (atomic_load_explicit(dword_1EAEC9808, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1EAEC9808))
  {
    sub_19520F060();
  }

  if (qword_1EAEC9800)
  {
    v8 = *(qword_1EAEC9800 + 8);
    while (1)
    {
      v6 = __OFSUB__(v8--, 1);
      if (v8 < 0 != v6)
      {
        break;
      }

      v9 = icu::UVector::elementAt(qword_1EAEC9800, v8);
      v10 = (*(*v9 + 16))(v9, a2, 0);
      if (v10)
      {
        v7 = v10;
        v11 = *(this + 70);
        if (*(v11 + 24))
        {
          icu::UVector::adoptElement(v11, v7, &v14);
        }

        else
        {
          icu::UVector::addElement(v11, v7, &v14);
        }

        return v7;
      }
    }
  }

  v12 = *(this + 71);
  if (!v12)
  {
    operator new();
  }

  (*(*v12 + 40))(v12, a2);
  return *(this + 71);
}

uint64_t sub_19520F170(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_19520F19C()
{
  if (qword_1EAEC9800)
  {
    (*(*qword_1EAEC9800 + 8))(qword_1EAEC9800);
    qword_1EAEC9800 = 0;
  }

  atomic_store(0, &unk_1EAEC9808);
  return 1;
}

icu::RuleBasedBreakIterator::DictionaryCache *icu::RuleBasedBreakIterator::DictionaryCache::DictionaryCache(icu::RuleBasedBreakIterator::DictionaryCache *this, icu::RuleBasedBreakIterator *a2, UErrorCode *a3)
{
  *this = a2;
  icu::UVector32::UVector32((this + 8), a3);
  *(this + 10) = -1;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return this;
}

{
  *this = a2;
  icu::UVector32::UVector32((this + 8), a3);
  *(this + 10) = -1;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return this;
}

void icu::RuleBasedBreakIterator::DictionaryCache::~DictionaryCache(void **this)
{
  icu::UVector32::~UVector32(this + 1);
}

{
  icu::UVector32::~UVector32(this + 1);
}

uint64_t icu::RuleBasedBreakIterator::DictionaryCache::reset(icu::RuleBasedBreakIterator::DictionaryCache *this)
{
  *(this + 10) = -1;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return icu::UVector32::removeAllElements(this + 8);
}

uint64_t icu::RuleBasedBreakIterator::DictionaryCache::following(icu::RuleBasedBreakIterator::DictionaryCache *this, int a2, int *a3, int *a4)
{
  if (*(this + 12) <= a2 || *(this + 11) > a2)
  {
    goto LABEL_3;
  }

  v5 = *(this + 10);
  v6 = *(this + 4);
  if ((v5 & 0x80000000) != 0 || v5 >= v6)
  {
    *(this + 10) = 0;
    if (v6 < 1)
    {
LABEL_15:
      abort();
    }

    goto LABEL_12;
  }

  v7 = *(this + 4);
  if (*(v7 + 4 * v5) != a2)
  {
    *(this + 10) = 0;
LABEL_12:
    v9 = *(this + 4);
    v10 = 1;
    while (1)
    {
      v12 = *v9++;
      v11 = v12;
      if (v12 > a2)
      {
        break;
      }

      *(this + 10) = v10++;
      if (!--v6)
      {
        goto LABEL_15;
      }
    }

    *a3 = v11;
    goto LABEL_17;
  }

  v8 = v5 + 1;
  *(this + 10) = v8;
  if (v8 < v6)
  {
    *a3 = *(v7 + 4 * v8);
LABEL_17:
    *a4 = *(this + 14);
    return 1;
  }

LABEL_3:
  v4 = 0;
  *(this + 10) = -1;
  return v4;
}

uint64_t icu::RuleBasedBreakIterator::DictionaryCache::preceding(icu::RuleBasedBreakIterator::DictionaryCache *this, int a2, int *a3, int *a4)
{
  if (*(this + 11) >= a2)
  {
    goto LABEL_3;
  }

  v4 = *(this + 12);
  if (v4 < a2)
  {
    goto LABEL_3;
  }

  if (v4 == a2)
  {
    v6 = *(this + 4) - 1;
    *(this + 10) = v6;
  }

  else
  {
    v6 = *(this + 10);
  }

  v7 = v6 - 1;
  if (v6 < 1)
  {
    if (!v6)
    {
LABEL_3:
      v5 = 0;
      *(this + 10) = -1;
      return v5;
    }

    v8 = *(this + 4);
    goto LABEL_13;
  }

  v8 = *(this + 4);
  if (v6 >= v8 || (v9 = *(this + 4), *(v9 + 4 * v6) != a2))
  {
LABEL_13:
    v12 = v8 - 1;
    v13 = v8;
    do
    {
      *(this + 10) = v13 - 1;
      if (v13 < 1)
      {
        abort();
      }

      if (v8 >= v13)
      {
        v14 = *(*(this + 4) + 4 * v12);
      }

      else
      {
        v14 = 0;
      }

      --v12;
      --v13;
    }

    while (v14 >= a2);
    *a3 = v14;
    v11 = v14 == *(this + 11);
    goto LABEL_20;
  }

  *(this + 10) = v7;
  v10 = *(v9 + 4 * v7);
  *a3 = v10;
  v11 = v10 == *(this + 11);
LABEL_20:
  v15 = 56;
  if (v11)
  {
    v15 = 52;
  }

  *a4 = *(this + v15);
  return 1;
}

uint64_t icu::RuleBasedBreakIterator::DictionaryCache::populateDictionary(uint64_t this, int a2, uint64_t a3, int a4, int a5)
{
  if (a3 - a2 >= 2)
  {
    v30 = v5;
    v31 = v6;
    v11 = this;
    *(this + 40) = -1;
    *(this + 44) = 0;
    v12 = (this + 44);
    *(this + 52) = 0;
    icu::UVector32::removeAllElements(this + 8);
    *(v11 + 13) = a4;
    *(v11 + 14) = a5;
    v29 = U_ZERO_ERROR;
    v13 = *v11;
    utext_setNativeIndex((*v11 + 122), a2);
    v14 = utext_current32((v13 + 122));
    this = ucptrie_get(*(*(*v11 + 79) + 48), v14);
    v15 = this;
    v16 = 0;
    v17 = *(*(*(*v11 + 79) + 8) + 8);
    do
    {
      while (1)
      {
        v18 = v13[132];
        if (v18 <= v13[129])
        {
          v19 = *(v13 + 65) + v18;
        }

        else
        {
          this = (*(*(v13 + 68) + 64))(v13 + 122);
          v19 = this;
        }

        if (v19 >= a3 || v15 >= v17)
        {
          break;
        }

        utext_next32((v13 + 122));
        v14 = utext_current32((v13 + 122));
        this = ucptrie_get(*(*(*v11 + 79) + 48), v14);
        v15 = this;
      }

      if (v19 >= a3)
      {
        break;
      }

      v21 = *v11;
      LocaleID = icu::BreakIterator::getLocaleID(*v11, 2, &v29);
      LanguageBreakEngine = icu::RuleBasedBreakIterator::getLanguageBreakEngine(v21, v14, LocaleID);
      if (LanguageBreakEngine)
      {
        v16 += (*(*LanguageBreakEngine + 32))(LanguageBreakEngine, v13 + 122, v19, a3, v11 + 2, *(*v11 + 776), &v29);
      }

      v14 = utext_current32((v13 + 122));
      this = ucptrie_get(*(*(*v11 + 79) + 48), v14);
      v15 = this;
    }

    while (v29 < U_ILLEGAL_ARGUMENT_ERROR);
    if (v16 >= 1)
    {
      v24 = *(v11 + 4);
      if (v24 < 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v11[4];
      }

      if (v25 > a2)
      {
        this = icu::UVector32::insertElementAt(v11 + 2, a2, 0, &v29);
        v24 = *(v11 + 4);
      }

      if (v24 < 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = v11[4][v24 - 1];
      }

      if (v26 < a3)
      {
        if (v24 >= -1 && *(v11 + 5) > v24 || (this = icu::UVector32::expandCapacity((v11 + 1), v24 + 1, &v29), v24 = *(v11 + 4), this))
        {
          v11[4][v24] = a3;
          v24 = *(v11 + 4) + 1;
          *(v11 + 4) = v24;
        }
      }

      *(v11 + 10) = 0;
      if (v24 <= 0)
      {
        v28 = 0;
        *v12 = 0;
      }

      else
      {
        v27 = v11[4];
        *(v11 + 11) = *v27;
        v28 = v27[v24 - 1];
      }

      *(v11 + 12) = v28;
    }
  }

  return this;
}

icu::RuleBasedBreakIterator::BreakCache *icu::RuleBasedBreakIterator::BreakCache::BreakCache(icu::RuleBasedBreakIterator::BreakCache *this, icu::RuleBasedBreakIterator *a2, UErrorCode *a3)
{
  *this = &unk_1F0932EB0;
  *(this + 1) = a2;
  icu::UVector32::UVector32((this + 800), a3);
  *(this + 272) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = &unk_1F0932EB0;
  *(this + 1) = a2;
  icu::UVector32::UVector32((this + 800), a3);
  *(this + 272) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t icu::RuleBasedBreakIterator::BreakCache::reset(uint64_t this, int a2, __int16 a3)
{
  *(this + 16) = 0;
  *(this + 24) = a2;
  *(this + 28) = 0;
  *(this + 32) = a2;
  *(this + 544) = a3;
  return this;
}

void icu::RuleBasedBreakIterator::BreakCache::~BreakCache(void **this)
{
  *this = &unk_1F0932EB0;
  icu::UVector32::~UVector32(this + 100);
}

{
  *this = &unk_1F0932EB0;
  icu::UVector32::~UVector32(this + 100);
}

{
  *this = &unk_1F0932EB0;
  icu::UVector32::~UVector32(this + 100);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::RuleBasedBreakIterator::BreakCache::current(icu::RuleBasedBreakIterator::BreakCache *this)
{
  v1 = *(this + 1);
  v2 = *(this + 6);
  v3 = *(this + 7);
  *(v1 + 668) = v2;
  *(v1 + 672) = *(this + v3 + 272);
  *(v1 + 760) = 0;
  return v2;
}

icu::RuleBasedBreakIterator::BreakCache *icu::RuleBasedBreakIterator::BreakCache::following(icu::RuleBasedBreakIterator::BreakCache *this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    if (*(this + 6) == a2 || icu::RuleBasedBreakIterator::BreakCache::seek(this, a2) || (this = icu::RuleBasedBreakIterator::BreakCache::populateNear(v4, a2, a3), this))
    {
      *(*(v4 + 8) + 760) = 0;

      return sub_1952094C0(v4);
    }
  }

  return this;
}

uint64_t icu::RuleBasedBreakIterator::BreakCache::seek(icu::RuleBasedBreakIterator::BreakCache *this, int a2)
{
  v2 = this + 32;
  v3 = *(this + 4);
  v4 = this + 4 * v3 + 32;
  if (*v4 > a2)
  {
    return 0;
  }

  v5 = *(this + 5);
  v6 = *&v2[4 * v5];
  if (v6 < a2)
  {
    return 0;
  }

  if (*v4 == a2)
  {
    *(this + 7) = v3;
  }

  else if (v6 == a2)
  {
    *(this + 7) = v5;
    v4 = &v2[4 * v5];
  }

  else
  {
    while (v3 != v5)
    {
      v8 = v5 + v3 + ((v3 > v5) << 7);
      if (*&v2[4 * ((v8 / 2) & 0x7F)] > a2)
      {
        LODWORD(v5) = (v8 / 2) & 0x7F;
      }

      else
      {
        LODWORD(v3) = ((v8 / 2) + 1) & 0x7F;
      }
    }

    v9 = (v3 - 1) & 0x7F;
    *(this + 7) = v9;
    v4 = &v2[4 * v9];
  }

  *(this + 6) = *v4;
  return 1;
}

uint64_t icu::RuleBasedBreakIterator::BreakCache::populateNear(icu::RuleBasedBreakIterator **this, int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v7 = (this + 4);
  if (*(this + *(this + 4) + 8) - 15 >= a2 || (v8 = *&v7[4 * *(this + 5)], v8 + 15 <= a2))
  {
    if (a2 >= 16)
    {
      v10 = icu::RuleBasedBreakIterator::handleSafePrevious(this[1], a2);
      v8 = *&v7[4 * *(this + 5)];
      if (v8 < a2 && v8 >= v10 - 15)
      {
        goto LABEL_15;
      }

      v12 = v10;
      if (v10 >= 15)
      {
        v17 = this[1];
        *(v17 + 167) = v12;
        v18 = icu::RuleBasedBreakIterator::handleNext(v17);
        if (v18 == -1 || (v8 = v18, v18 <= v12 + 4) && (utext_setNativeIndex((this[1] + 488), v18), utext_getPreviousNativeIndex((this[1] + 488)) == v12) && (v8 = icu::RuleBasedBreakIterator::handleNext(this[1]), v8 == -1))
        {
          v8 = utext_nativeLength((this[1] + 488));
        }

        v9 = *(this[1] + 168);
        goto LABEL_7;
      }

      if (*&v7[4 * *(this + 4)] <= a2 + 15)
      {
        goto LABEL_15;
      }
    }

    LOWORD(v9) = 0;
    v8 = 0;
LABEL_7:
    this[2] = 0;
    *(this + 6) = v8;
    *(this + 7) = 0;
    *(this + 8) = v8;
    *(this + 272) = v9;
  }

LABEL_15:
  if (v8 >= a2)
  {
    if (*&v7[4 * *(this + 4)] > a2)
    {
      do
      {
        icu::RuleBasedBreakIterator::BreakCache::populatePreceding(this, a3);
        v14 = *(this + 4);
      }

      while (*&v7[4 * v14] > a2);
      *(this + 7) = v14;
      v15 = *&v7[4 * v14];
      *(this + 6) = v15;
      while (v15 < a2)
      {
        sub_1952094C0(this);
        v15 = *(this + 6);
      }

      if (v15 > a2)
      {
        icu::RuleBasedBreakIterator::BreakCache::previous(this, a3);
      }
    }
  }

  else
  {
    while (1)
    {
      v13 = *(this + 5);
      if (*&v7[4 * v13] >= a2)
      {
        break;
      }

      if (!icu::RuleBasedBreakIterator::BreakCache::populateFollowing(this))
      {
        abort();
      }
    }

    *(this + 7) = v13;
    v16 = *&v7[4 * v13];
    *(this + 6) = v16;
    while (v16 > a2)
    {
      icu::RuleBasedBreakIterator::BreakCache::previous(this, a3);
      v16 = *(this + 6);
    }
  }

  return 1;
}

icu::RuleBasedBreakIterator::BreakCache *icu::RuleBasedBreakIterator::BreakCache::preceding(icu::RuleBasedBreakIterator::BreakCache *this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    if (*(this + 6) == a2 || (this = icu::RuleBasedBreakIterator::BreakCache::seek(this, a2), this) || (this = icu::RuleBasedBreakIterator::BreakCache::populateNear(v5, a2, a3), this))
    {
      v6 = *(v5 + 24);
      if (v6 == a2)
      {

        return icu::RuleBasedBreakIterator::BreakCache::previous(v5, a3);
      }

      else
      {
        v7 = *(v5 + 8);
        *(v7 + 668) = v6;
        *(v7 + 672) = *(v5 + 2 * *(v5 + 28) + 544);
        *(v7 + 760) = 0;
      }
    }
  }

  return this;
}

_DWORD *icu::RuleBasedBreakIterator::BreakCache::previous(_DWORD *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v2 = this;
    v3 = this[7];
    if (v3 == this[4])
    {
      this = icu::RuleBasedBreakIterator::BreakCache::populatePreceding(this, a2);
      v5 = v2[6];
      v4 = v2[7];
    }

    else
    {
      v4 = (v3 - 1) & 0x7F;
      v5 = this[((v3 - 1) & 0x7F) + 8];
      this[6] = v5;
      this[7] = v4;
    }

    v6 = *(v2 + 1);
    *(v6 + 760) = v4 == v3;
    *(v6 + 668) = v5;
    *(v6 + 672) = *(v2 + v4 + 272);
  }

  return this;
}

uint64_t icu::RuleBasedBreakIterator::BreakCache::nextOL(icu::RuleBasedBreakIterator::BreakCache *this)
{
  result = icu::RuleBasedBreakIterator::BreakCache::populateFollowing(this);
  v3 = *(this + 1);
  *(v3 + 760) = result ^ 1;
  v4 = *(this + 7);
  *(v3 + 668) = *(this + 6);
  *(v3 + 672) = *(this + v4 + 272);
  return result;
}

uint64_t icu::RuleBasedBreakIterator::BreakCache::populateFollowing(icu::RuleBasedBreakIterator::BreakCache *this)
{
  v2 = this + 32;
  v3 = *(this + 5);
  v4 = *(this + v3 + 8);
  v5 = this + 544;
  v6 = *(this + v3 + 272);
  *v25 = 0;
  if (icu::RuleBasedBreakIterator::DictionaryCache::following(*(*(this + 1) + 688), v4, &v25[1], v25))
  {
    LOWORD(v8) = v25[0];
    v7 = v25[1];
LABEL_3:
    v9 = *(this + 5);
    v10 = (v9 + 1) & 0x7F;
    if (v10 == *(this + 4))
    {
      *(this + 4) = (v9 + 7) & 0x7F;
    }

    *&v2[4 * ((v9 + 1) & 0x7F)] = v7;
    *&v5[2 * ((v9 + 1) & 0x7F)] = v8;
    *(this + 6) = v7;
    *(this + 7) = v10;
    result = 1;
    *(this + 5) = v10;
    return result;
  }

  v12 = *(this + 1);
  *(v12 + 167) = v4;
  v13 = icu::RuleBasedBreakIterator::handleNext(v12);
  v25[1] = v13;
  if (v13 == -1)
  {
    return 0;
  }

  v7 = v13;
  v14 = *(this + 1);
  v8 = *(v14 + 672);
  v25[0] = v8;
  if (*(v14 + 712))
  {
    icu::RuleBasedBreakIterator::DictionaryCache::populateDictionary(*(v14 + 688), v4, v13, v6, v8);
    v15 = icu::RuleBasedBreakIterator::DictionaryCache::following(*(*(this + 1) + 688), v4, &v25[1], v25);
    LOWORD(v8) = v25[0];
    v7 = v25[1];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v16 = *(this + 5);
  v17 = (v16 + 1) & 0x7F;
  if (v17 == *(this + 4))
  {
    *(this + 4) = (v16 + 7) & 0x7F;
  }

  *&v2[4 * ((v16 + 1) & 0x7F)] = v7;
  *&v5[2 * ((v16 + 1) & 0x7F)] = v8;
  *(this + 6) = v7;
  *(this + 7) = v17;
  *(this + 5) = v17;
  v18 = 6;
  v19 = *(this + 1);
  do
  {
    v20 = icu::RuleBasedBreakIterator::handleNext(v19);
    if (v20 == -1)
    {
      break;
    }

    v21 = v20;
    v19 = *(this + 1);
    if (*(v19 + 178))
    {
      break;
    }

    v22 = *(v19 + 168);
    v23 = *(this + 5);
    v24 = (v23 + 1) & 0x7F;
    if (v24 == *(this + 4))
    {
      *(this + 4) = (v23 + 7) & 0x7F;
    }

    *&v2[4 * ((v23 + 1) & 0x7F)] = v21;
    *&v5[2 * ((v23 + 1) & 0x7F)] = v22;
    *(this + 5) = v24;
    --v18;
  }

  while (v18);
  return 1;
}

uint64_t icu::RuleBasedBreakIterator::BreakCache::populatePreceding(icu::RuleBasedBreakIterator::BreakCache *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v45 = v2;
  v46 = v3;
  v6 = this + 32;
  v7 = *(this + *(this + 4) + 8);
  if (!v7)
  {
    return 0;
  }

  *v44 = 0;
  if (icu::RuleBasedBreakIterator::DictionaryCache::preceding(*(*(this + 1) + 688), v7, &v44[1], v44))
  {
    v10 = v44[0];
    v9 = v44[1];
    v11 = *(this + 4);
    v12 = (v11 - 1) & 0x7F;
    if (v12 == *(this + 5))
    {
      *(this + 5) = (v11 + 126) & 0x7F;
    }

    *&v6[4 * ((v11 - 1) & 0x7F)] = v9;
    *(this + ((v11 - 1) & 0x7F) + 272) = v10;
    *(this + 4) = v12;
    *(this + 6) = v9;
    *(this + 7) = v12;
    return 1;
  }

  v13 = v7;
  do
  {
    if (v13 < 31)
    {
      v14 = 0;
      v13 = 0;
LABEL_14:
      v15 = 0;
      continue;
    }

    v13 = icu::RuleBasedBreakIterator::handleSafePrevious(*(this + 1), v13 - 30);
    if ((v13 + 1) < 2)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v16 = *(this + 1);
    *(v16 + 167) = v13;
    v17 = icu::RuleBasedBreakIterator::handleNext(v16);
    v14 = v17;
    if (v17 <= v13 + 4)
    {
      utext_setNativeIndex((*(this + 1) + 488), v17);
      if (utext_getPreviousNativeIndex((*(this + 1) + 488)) == v13)
      {
        v14 = icu::RuleBasedBreakIterator::handleNext(*(this + 1));
      }
    }

    v15 = *(*(this + 1) + 672);
  }

  while (v14 >= v7);
  v44[0] = v15;
  icu::UVector32::removeAllElements(this + 800);
  v18 = *(this + 202);
  if (v18 >= -1 && *(this + 203) > v18 || (v19 = icu::UVector32::expandCapacity((this + 800), v18 + 1, a2), v18 = *(this + 202), v19))
  {
    *(*(this + 103) + 4 * v18) = v14;
    v18 = *(this + 202) + 1;
    *(this + 202) = v18;
  }

  if (v18 < -1 || *(this + 203) <= v18)
  {
    if (!icu::UVector32::expandCapacity((this + 800), v18 + 1, a2))
    {
      goto LABEL_29;
    }

    v18 = *(this + 202);
  }

  *(*(this + 103) + 4 * v18) = v15;
  ++*(this + 202);
LABEL_29:
  while (2)
  {
    v20 = *(this + 1);
    *(v20 + 167) = v14;
    v21 = v44[0];
    v22 = icu::RuleBasedBreakIterator::handleNext(v20);
    v23 = *(this + 1);
    v24 = *(v23 + 672);
    v44[0] = v24;
    v44[1] = v22;
    if (v22 != -1)
    {
      v25 = v22;
      if (*(v23 + 712))
      {
        icu::RuleBasedBreakIterator::DictionaryCache::populateDictionary(*(v23 + 688), v14, v22, v21, v24);
        if (icu::RuleBasedBreakIterator::DictionaryCache::following(*(*(this + 1) + 688), v14, &v44[1], v44))
        {
          while (1)
          {
            v25 = v44[1];
            if (v44[1] >= v7)
            {
              goto LABEL_55;
            }

            v26 = *(this + 202);
            if (v26 >= -1 && *(this + 203) > v26 || (v27 = icu::UVector32::expandCapacity((this + 800), v26 + 1, a2), v26 = *(this + 202), v27))
            {
              *(*(this + 103) + 4 * v26) = v25;
              v26 = *(this + 202) + 1;
              *(this + 202) = v26;
            }

            v28 = v44[0];
            if (v26 >= -1 && *(this + 203) > v26)
            {
              goto LABEL_41;
            }

            if (icu::UVector32::expandCapacity((this + 800), v26 + 1, a2))
            {
              break;
            }

LABEL_42:
            if (!icu::RuleBasedBreakIterator::DictionaryCache::following(*(*(this + 1) + 688), v25, &v44[1], v44))
            {
              v25 = v44[1];
              goto LABEL_55;
            }
          }

          v26 = *(this + 202);
LABEL_41:
          *(*(this + 103) + 4 * v26) = v28;
          ++*(this + 202);
          goto LABEL_42;
        }

        v25 = v44[1];
      }

      if (v25 < v7)
      {
        v29 = *(this + 202);
        if (v29 >= -1 && *(this + 203) > v29 || (v30 = icu::UVector32::expandCapacity((this + 800), v29 + 1, a2), v29 = *(this + 202), v30))
        {
          *(*(this + 103) + 4 * v29) = v25;
          v29 = *(this + 202) + 1;
          *(this + 202) = v29;
        }

        v31 = v44[0];
        if (v29 >= -1 && *(this + 203) > v29)
        {
LABEL_54:
          *(*(this + 103) + 4 * v29) = v31;
          ++*(this + 202);
        }

        else if (icu::UVector32::expandCapacity((this + 800), v29 + 1, a2))
        {
          v29 = *(this + 202);
          goto LABEL_54;
        }
      }

LABEL_55:
      v14 = v25;
      if (v25 < v7)
      {
        continue;
      }
    }

    break;
  }

  v32 = *(this + 202);
  if (v32)
  {
    v33 = v32 - 1;
    if (v32 < 1)
    {
      LOWORD(v34) = 0;
    }

    else
    {
      *(this + 202) = v33;
      v34 = *(*(this + 103) + 4 * v33);
      if (v32 != 1)
      {
        v32 -= 2;
        *(this + 202) = v32;
        v35 = *(*(this + 103) + 4 * v32);
        goto LABEL_64;
      }

      v32 = 0;
    }

    v35 = 0;
LABEL_64:
    v36 = *(this + 4);
    v37 = (v36 - 1) & 0x7F;
    if (v37 == *(this + 5))
    {
      *(this + 5) = (v36 + 126) & 0x7F;
    }

    *&v6[4 * ((v36 - 1) & 0x7F)] = v35;
    *(this + ((v36 - 1) & 0x7F) + 272) = v34;
    *(this + 4) = v37;
    *(this + 6) = v35;
    *(this + 7) = v37;
    if (!v32)
    {
      return 1;
    }

    v39 = *(this + 4);
    v38 = *(this + 5);
    while (2)
    {
      v40 = v32 - 1;
      if (v32 < 1)
      {
        LOWORD(v41) = 0;
        goto LABEL_70;
      }

      *(this + 202) = v40;
      v41 = *(*(this + 103) + 4 * v40);
      if (v32 == 1)
      {
        v32 = 0;
LABEL_70:
        v42 = 0;
      }

      else
      {
        v32 -= 2;
        *(this + 202) = v32;
        v42 = *(*(this + 103) + 4 * v32);
      }

      v43 = (v39 - 1) & 0x7F;
      if (v43 == v38)
      {
        if (*(this + 7) == v38)
        {
          return 1;
        }

        v38 = (v39 + 126) & 0x7F;
        *(this + 5) = v38;
      }

      *&v6[4 * ((v39 - 1) & 0x7F)] = v42;
      *(this + ((v39 - 1) & 0x7F) + 272) = v41;
      LOBYTE(v39) = (v39 - 1) & 0x7F;
      *(this + 4) = v43;
      if (!v32)
      {
        return 1;
      }

      continue;
    }
  }

  return 0;
}

_DWORD *icu::RuleBasedBreakIterator::BreakCache::addFollowing(_DWORD *result, int a2, __int16 a3, int a4)
{
  v4 = result[5];
  v5 = (v4 + 1) & 0x7F;
  if (v5 == result[4])
  {
    result[4] = (v4 + 7) & 0x7F;
  }

  result[((v4 + 1) & 0x7F) + 8] = a2;
  *(result + ((v4 + 1) & 0x7F) + 272) = a3;
  result[5] = v5;
  if (a4 == 1)
  {
    result[6] = a2;
    result[7] = v5;
  }

  return result;
}

uint64_t icu::RuleBasedBreakIterator::BreakCache::addPreceding(_DWORD *a1, int a2, __int16 a3, int a4)
{
  v4 = a1[4];
  v5 = (v4 - 1) & 0x7F;
  if (v5 == a1[5])
  {
    if (!a4 && a1[7] == v5)
    {
      return 0;
    }

    a1[5] = (v4 + 126) & 0x7F;
  }

  a1[((v4 - 1) & 0x7F) + 8] = a2;
  *(a1 + ((v4 - 1) & 0x7F) + 272) = a3;
  a1[4] = v5;
  if (a4 == 1)
  {
    a1[6] = a2;
    a1[7] = v5;
  }

  return 1;
}

uint64_t sub_195210548(uint64_t result, uint64_t a2, int *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v5 = result;
    *result = a2;
    if (*a2 != 45472 || *(a2 + 4) != 6)
    {
LABEL_10:
      *a3 = 3;
      goto LABEL_11;
    }

    *(result + 136) = 0;
    if (*(a2 + 20))
    {
      *(result + 8) = a2 + *(a2 + 16);
    }

    if (*(a2 + 28))
    {
      *(result + 16) = a2 + *(a2 + 24);
    }

    result = ucptrie_openFromBinary(0, -1, a2 + *(a2 + 32), *(a2 + 36), 0, a3);
    v5[6] = result;
    if (*a3 <= 0)
    {
      result = ucptrie_getValueWidth(result);
      if ((result & 0xFFFFFFFD) == 0)
      {
        v7 = *(*v5 + 44);
        v8 = (a2 + *(*v5 + 40));
        v5[3] = v8;
        icu::UnicodeString::fromUTF8(v8, v7, v10);
        icu::UnicodeString::operator=((v5 + 9), v10);
        result = icu::UnicodeString::~UnicodeString(v9, v10);
        v5[4] = a2 + *(*v5 + 48);
        *(v5 + 10) = *(a2 + 52) >> 2;
        atomic_store(1u, v5 + 14);
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19521069C(uint64_t a1, uint64_t a2, int *a3)
{
  *(a1 + 80) = 2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_1F0935D00;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  atomic_store(0, (a1 + 56));
  *(a1 + 136) = 1;
  sub_195210548(a1, a2, a3);
  return a1;
}

uint64_t sub_19521070C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(a1 + 80) = 2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_1F0935D00;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  atomic_store(0, (a1 + 56));
  *(a1 + 136) = 1;
  sub_195210548(a1, a2, a4);
  *(a1 + 136) = 1;
  return a1;
}

uint64_t sub_195210784(uint64_t a1, uint64_t a2, int *a3)
{
  *(a1 + 80) = 2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_1F0935D00;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  atomic_store(0, (a1 + 56));
  *(a1 + 136) = 1;
  if (*a3 <= 0)
  {
    v5 = *(a2 + 8);
    v6 = *v5;
    if (v6 >= 0x14 && !v5[8] && !v5[9] && v5[12] == 66 && v5[13] == 114 && v5[14] == 107 && v5[15] == 32 && v5[16] == 6)
    {
      sub_195210548(a1, &v5[v6], a3);
      *(a1 + 64) = a2;
    }

    else
    {
      *a3 = 3;
    }
  }

  return a1;
}

uint64_t sub_19521087C(uint64_t a1)
{
  ucptrie_close(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 64);
  if (v2)
  {
    udata_close(v2);
  }

  else
  {
    v3 = *(a1 + 136);
    if (!*(a1 + 136))
    {
      free(*a1);
    }
  }

  icu::UnicodeString::~UnicodeString(v3, (a1 + 72));
  return a1;
}

BOOL sub_1952108D4(unsigned int **a1, unsigned int **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == v3)
  {
    return 1;
  }

  v4 = v2[2];
  return v4 == v3[2] && memcmp(v2, v3, v4) == 0;
}

uint64_t sub_195210934(uint64_t result)
{
  add = atomic_fetch_add((result + 56), 0xFFFFFFFF);
  if (result && add == 1)
  {
    sub_19521087C(result);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t ubrk_swap(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5)
  {
    return 0;
  }

  if (*a5 > 0)
  {
    return 0;
  }

  if (!a1 || !a2 || (v12 = a3, a3 < -1) || a3 >= 1 && !a4)
  {
    result = 0;
    v14 = 1;
LABEL_21:
    *a5 = v14;
    return result;
  }

  if (__PAIR64__(*(a2 + 13), *(a2 + 12)) != 0x7200000042 || *(a2 + 14) != 107 || *(a2 + 15) != 32 || *(a2 + 16) != 6)
  {
    v50 = *(a2 + 15);
    v51 = *(a2 + 16);
    v49 = *(a2 + 14);
    v48 = *(a2 + 12);
    v17 = "ubrk_swap(): data format %02x.%02x.%02x.%02x (format version %02x) is not recognized\n";
    goto LABEL_20;
  }

  v15 = udata_swapDataHeader(a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = (a2 + v15);
  if ((*(a1 + 16))(*v16) != 45472 || *(v16 + 4) != 6 || (*(a1 + 16))(v16[2]) <= 0x4F)
  {
    v17 = "ubrk_swap(): RBBI Data header is invalid.\n";
LABEL_20:
    udata_printError(a1, v17, a3, a4, a5, a6, a7, a8, v48);
    result = 0;
    v14 = 16;
    goto LABEL_21;
  }

  v24 = (*(a1 + 16))(v16[2]);
  result = (v24 + v15);
  if ((v12 & 0x80000000) == 0)
  {
    if (result > v12)
    {
      udata_printError(a1, "ubrk_swap(): too few bytes (%d after ICU Data header) for break data.\n", v18, v19, v20, v21, v22, v23, v24);
      result = 0;
      v14 = 8;
      goto LABEL_21;
    }

    v52 = v24 + v15;
    v25 = a4 + v15;
    if (a2 != a4)
    {
      bzero(a4 + v15, v24);
    }

    v26 = (*(a1 + 16))(v16[4]);
    v27 = (*(a1 + 16))(v16[5]);
    if (v27 >= 1)
    {
      v28 = v27;
      v29 = v16 + v26;
      v30 = (*(a1 + 16))(*(v29 + 4));
      v31 = &v25[v26];
      (*(a1 + 56))(a1, v29, 20, v31, a5);
      if ((v30 & 4) != 0)
      {
        if (a2 != a4)
        {
          memmove(v31 + 20, v29 + 20, v28 - 20);
        }
      }

      else
      {
        (*(a1 + 48))(a1, v29 + 20, (v28 - 20), v31 + 20, a5);
      }
    }

    v32 = (*(a1 + 16))(v16[6]);
    v33 = (*(a1 + 16))(v16[7]);
    if (v33 >= 1)
    {
      v34 = v33;
      v35 = v16 + v32;
      v36 = (*(a1 + 16))(*(v35 + 4));
      v37 = &v25[v32];
      (*(a1 + 56))(a1, v35, 20, v37, a5);
      if ((v36 & 4) != 0)
      {
        if (a2 != a4)
        {
          memmove(v37 + 20, v35 + 20, v34 - 20);
        }
      }

      else
      {
        (*(a1 + 48))(a1, v35 + 20, (v34 - 20), v37 + 20, a5);
      }
    }

    v38 = (v16 + (*(a1 + 16))(v16[8]));
    v39 = (*(a1 + 16))(v16[9]);
    v40 = (*(a1 + 16))(v16[8]);
    ucptrie_swap(a1, v38, v39, &v25[v40], a5);
    if (a2 != a4)
    {
      v41 = &v25[(*(a1 + 16))(v16[10])];
      v42 = v16 + (*(a1 + 16))(v16[10]);
      v43 = (*(a1 + 16))(v16[11]);
      memmove(v41, v42, v43);
    }

    v44 = *(a1 + 56);
    v45 = v16 + (*(a1 + 16))(v16[12]);
    v46 = (*(a1 + 16))(v16[13]);
    v47 = (*(a1 + 16))(v16[12]);
    v44(a1, v45, v46, &v25[v47], a5);
    (*(a1 + 56))(a1, v16, 80, v25, a5);
    (*(a1 + 56))(a1, v25 + 4, 4, v25 + 4, a5);
    return v52;
  }

  return result;
}

uint64_t sub_195210DC8(uint64_t result, uint64_t a2, int *a3)
{
  *(result + 184) = 0;
  if (*a3 <= 0)
  {
    v9[5] = v3;
    v9[6] = v4;
    v7 = result;
    *result = a2;
    if (*a2 == 45472 && *(a2 + 4) == 3)
    {
      if (*(a2 + 20))
      {
        *(result + 8) = a2 + *(a2 + 16);
      }

      if (*(a2 + 28))
      {
        *(result + 16) = a2 + *(a2 + 24);
      }

      if (*(a2 + 36))
      {
        *(result + 24) = a2 + *(a2 + 32);
      }

      if (*(a2 + 44))
      {
        *(result + 32) = a2 + *(a2 + 40);
      }

      result = utrie_unserialize(result + 64, (a2 + *(a2 + 48)), *(a2 + 52), a3);
      if (*a3 <= 0)
      {
        *(v7 + 80) = sub_195211008;
        v8 = (a2 + *(*v7 + 56));
        *(v7 + 40) = v8;
        v9[0] = v8;
        result = icu::UnicodeString::setTo((v7 + 120), 1, v9, -1);
        *(v7 + 48) = a2 + *(*v7 + 64);
        *(v7 + 56) = *(a2 + 68) >> 2;
        atomic_store(1u, (v7 + 104));
      }
    }

    else
    {
      *a3 = 3;
    }
  }

  return result;
}

uint64_t sub_195210F20(uint64_t a1, uint64_t a2, int *a3)
{
  *(a1 + 128) = 2;
  *(a1 + 112) = 0;
  *(a1 + 120) = &unk_1F0935D00;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  atomic_store(0, (a1 + 104));
  *(a1 + 184) = 1;
  sub_195210DC8(a1, a2, a3);
  return a1;
}

uint64_t sub_195210F90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(a1 + 128) = 2;
  *(a1 + 112) = 0;
  *(a1 + 120) = &unk_1F0935D00;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  atomic_store(0, (a1 + 104));
  *(a1 + 184) = 1;
  sub_195210DC8(a1, a2, a4);
  *(a1 + 184) = 1;
  return a1;
}

uint64_t sub_195211018(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    udata_close(v2);
  }

  else
  {
    v3 = *(a1 + 184);
    if (!*(a1 + 184))
    {
      free(*a1);
    }
  }

  icu::UnicodeString::~UnicodeString(v3, (a1 + 120));
  return a1;
}

uint64_t sub_195211068(uint64_t result)
{
  add = atomic_fetch_add((result + 104), 0xFFFFFFFF);
  if (result && add == 1)
  {
    sub_195211018(result);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

void sub_1952110CC(uint64_t a1, int a2)
{
  *(a1 + 48) = &unk_1F0935D00;
  *(a1 + 56) = 2;
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 127) = 0;
  v2 = U_ZERO_ERROR;
  operator new();
}

void sub_1952111D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = &unk_1F0935D00;
  *(a1 + 56) = 2;
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  icu::UnicodeString::operator=((a1 + 48), (a2 + 48));
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 129) = 0;
  *(a1 + 130) = *(a2 + 130);
  v4 = U_ZERO_ERROR;
  operator new();
}

uint64_t sub_1952112D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    icu::UnicodeSet::~UnicodeSet(v2);
    MEMORY[0x19A8B2600]();
  }

  *(a1 + 32) = 0;
  v3 = (*a1 | 2u);
  if (v3 != 2)
  {
    sub_1952113D4(*(a1 + 16));
    *(a1 + 16) = 0;
    sub_1952113D4(*(a1 + 24));
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 136);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 152);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  icu::UnicodeString::~UnicodeString(v3, (a1 + 48));
  return a1;
}

uint64_t sub_1952113D4(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (v1 != result)
    {
      do
      {
        v2 = *(result + 16);
        if ((v2 || *(result + 24)) && (*result | 2) != 2)
        {
          if (v2 || (v2 = *(result + 24)) != 0)
          {
            if (!v2[1])
            {
              v2[1] = result;
            }
          }

          else
          {
            v2 = result;
          }
        }

        else
        {
          v2 = *(result + 8);
          if (v2)
          {
            v3 = v2 + 2;
            if (v2[2] == result || (v3 = v2 + 3, v2[3] == result))
            {
              *v3 = 0;
            }
          }

          v4 = sub_1952112D8();
          result = MEMORY[0x19A8B2600](v4, 0x10B2C405CFBA51ELL);
        }

        if (v2 == v1)
        {
          break;
        }

        result = v2;
      }

      while (v2);
    }
  }

  return result;
}

uint64_t sub_1952114B0(uint64_t a1)
{
  while (*a1 == 2)
  {
    a1 = *(a1 + 16);
  }

  if (*a1 != 1)
  {
    operator new();
  }

  return a1;
}

uint64_t sub_195211540(uint64_t a1, int *a2, int a3)
{
  if (*a2 > 0)
  {
    return a1;
  }

  if (a3 >= 3501)
  {
    *a2 = 31;
    return a1;
  }

  v6 = *a1;
  v7 = *(a1 + 16);
  if (v6 != 2)
  {
    if (v7)
    {
      v11 = sub_195211540(v7, a2, (a3 + 1));
      *(a1 + 16) = v11;
      *(v11 + 8) = a1;
    }

    v12 = *(a1 + 24);
    if (v12)
    {
      v13 = sub_195211540(v12, a2, (a3 + 1));
      *(a1 + 24) = v13;
      *(v13 + 8) = a1;
    }

    return a1;
  }

  v8 = sub_1952114B0(v7);
  v9 = v8;
  if (v8)
  {
    *(v8 + 129) = *(a1 + 129);
  }

  v10 = sub_1952112D8(a1);
  MEMORY[0x19A8B2600](v10, 0x10B2C405CFBA51ELL);
  return v9;
}

uint64_t sub_195211610(uint64_t result)
{
  v1 = result;
  while (1)
  {
    v2 = v1;
    v3 = *(v1 + 16);
    if (v3)
    {
      if (*v3)
      {
        result = sub_195211610(v3);
      }

      else
      {
        v4 = sub_1952114B0(*(*(v3 + 16) + 16));
        *(v2 + 16) = v4;
        *(v4 + 8) = v2;
        v5 = sub_1952112D8(v3);
        result = MEMORY[0x19A8B2600](v5, 0x10B2C405CFBA51ELL);
      }
    }

    v1 = *(v2 + 24);
    if (!v1)
    {
      break;
    }

    if (!*v1)
    {
      v6 = sub_1952114B0(*(*(v1 + 16) + 16));
      *(v2 + 24) = v6;
      *(v6 + 8) = v2;
      sub_1952112D8(v1);

      JUMPOUT(0x19A8B2600);
    }
  }

  return result;
}

uint64_t sub_1952116DC(uint64_t result, icu::UVector *a2, uint64_t a3, UErrorCode *a4)
{
  v7 = result;
  do
  {
    if (*a4 > 0)
    {
      break;
    }

    if (*v7 == a3)
    {
      icu::UVector::addElement(a2, v7, a4);
    }

    result = v7[2];
    if (result)
    {
      result = sub_1952116DC(result, a2, a3, a4);
    }

    v7 = v7[3];
  }

  while (v7);
  return result;
}

uint64_t sub_195211758(uint64_t a1, UChar **a2, uint64_t a3, int *a4)
{
  *a1 = &unk_1F0932EE8;
  *(a1 + 32) = a2;
  icu::UnicodeString::UnicodeString((a1 + 40), a2);
  *(a1 + 112) = 0u;
  *(a1 + 16) = a4;
  *(a1 + 24) = a3;
  *(a1 + 8) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = a1 + 112;
  *(a1 + 152) = 0;
  *(a1 + 104) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  if (a3)
  {
    *(a3 + 64) = 0;
    *(a3 + 32) = 0uLL;
    *(a3 + 48) = 0uLL;
    *a3 = 0uLL;
    *(a3 + 16) = 0uLL;
  }

  if (*a4 <= 0)
  {
    operator new();
  }

  return a1;
}

uint64_t sub_1952118AC(uint64_t a1)
{
  *a1 = &unk_1F0932EE8;
  v2 = icu::UVector::elementAt(*(a1 + 168), 0);
  if (v2)
  {
    v4 = 1;
    do
    {
      v5 = sub_1952114AC(v2);
      MEMORY[0x19A8B2600](v5, 0x10B2C405CFBA51ELL);
      v2 = icu::UVector::elementAt(*(a1 + 168), v4++);
    }

    while (v2);
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(a1 + 160))
  {
    v7 = sub_195216478();
    MEMORY[0x19A8B2600](v7, 0x1030C4045F4D1ECLL);
  }

  if (*(a1 + 176))
  {
    v8 = sub_195218268();
    MEMORY[0x19A8B2600](v8, 0x10B0C407CB0C757);
  }

  v9 = *(a1 + 112);
  if (v9)
  {
    v10 = sub_1952114AC(v9);
    MEMORY[0x19A8B2600](v10, 0x10B2C405CFBA51ELL);
  }

  v11 = *(a1 + 120);
  if (v11)
  {
    v12 = sub_1952114AC(v11);
    MEMORY[0x19A8B2600](v12, 0x10B2C405CFBA51ELL);
  }

  v13 = *(a1 + 128);
  if (v13)
  {
    v14 = sub_1952114AC(v13);
    MEMORY[0x19A8B2600](v14, 0x10B2C405CFBA51ELL);
  }

  v15 = *(a1 + 136);
  if (v15)
  {
    v16 = sub_1952114AC(v15);
    MEMORY[0x19A8B2600](v16, 0x10B2C405CFBA51ELL);
  }

  v17 = *(a1 + 104);
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a1 + 184);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  icu::UnicodeString::~UnicodeString(v3, (a1 + 40));
  return a1;
}

void sub_195211A58(uint64_t a1)
{
  sub_1952118AC(a1);

  JUMPOUT(0x19A8B2600);
}

_DWORD *sub_195211A90(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (**(a1 + 16) <= 0)
  {
    sub_1952140AC(a1 + 40, pDestLength);
    icu::UnicodeString::operator=((a1 + 40), pDestLength);
    icu::UnicodeString::~UnicodeString(v3, pDestLength);
    v4 = sub_19521A168(*(a1 + 176)) + 7;
    v5 = sub_19521A7E8(*(a1 + 176)) + 7;
    v6 = sub_195216B98(*(a1 + 160)) + 7;
    v7 = 4 * *(*(a1 + 184) + 8) + 7;
    pDestLength[0] = 0;
    v8 = *(a1 + 48);
    if ((v8 & 0x11) != 0)
    {
      v9 = 0;
    }

    else if ((v8 & 2) != 0)
    {
      v9 = (a1 + 50);
    }

    else
    {
      v9 = *(a1 + 64);
    }

    v10 = v4 & 0xFFFFFFF8;
    v11 = v5 & 0xFFFFFFF8;
    v12 = v6 & 0xFFFFFFF8;
    v13 = v7 & 0xFFFFFFF8;
    if ((v8 & 0x8000) != 0)
    {
      v14 = *(a1 + 52);
    }

    else
    {
      v14 = v8 >> 5;
    }

    u_strToUTF8WithSub(0, 0, pDestLength, v9, v14, 65533, 0, *(a1 + 16));
    **(a1 + 16) = 0;
    v15 = v11 + v10 + 80;
    v16 = v12 + v15 + v13;
    *destCapacity = (pDestLength[0] & 0xFFFFFFFFFFFFFFF8) + 8;
    v28 = v13;
    v17 = *destCapacity + v16;
    v18 = malloc_type_malloc(v17, 0x10000404247E4FDuLL);
    v1 = v18;
    if (!v18)
    {
      **(a1 + 16) = 7;
LABEL_29:
      free(v18);
      goto LABEL_30;
    }

    bzero(v18, v17);
    *v1 = 45472;
    v1[1] = 6;
    v1[2] = v17;
    v1[3] = sub_195216C28(*(a1 + 160));
    v1[4] = 80;
    v1[5] = v10;
    v1[6] = v10 + 80;
    v1[7] = v11;
    v1[8] = v15;
    v1[12] = v12 + v15;
    v1[13] = v28;
    v1[9] = v12;
    v1[10] = v16;
    v1[11] = pDestLength[0];
    *(v1 + 8) = 0;
    *(v1 + 9) = 0;
    *(v1 + 7) = 0;
    sub_19521A1D8(*(a1 + 176), v1 + 20);
    sub_19521A850(*(a1 + 176), (v1 + v1[6]));
    sub_195216C34(*(a1 + 160), v1 + v1[8]);
    v19 = *(a1 + 184);
    if (v19[2] >= 1)
    {
      v20 = 0;
      v21 = v1 + v1[12];
      do
      {
        *&v21[4 * v20] = icu::UVector::elementAti(v19, v20);
        ++v20;
        v19 = *(a1 + 184);
      }

      while (v20 < v19[2]);
    }

    v22 = *(a1 + 48);
    if ((v22 & 0x11) != 0)
    {
      v23 = 0;
      if ((v22 & 0x8000) != 0)
      {
        goto LABEL_23;
      }

LABEL_21:
      v24 = v22 >> 5;
LABEL_24:
      u_strToUTF8WithSub(v1 + v1[10], destCapacity[0], pDestLength, v23, v24, 65533, 0, *(a1 + 16));
      v25 = **(a1 + 16);
      if (v25 >= 1)
      {
        v18 = v1;
      }

      else
      {
        v18 = 0;
      }

      if (v25 >= 1)
      {
        v1 = 0;
      }

      goto LABEL_29;
    }

    if ((v22 & 2) != 0)
    {
      v23 = (a1 + 50);
      if ((v22 & 0x8000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v23 = *(a1 + 64);
      if ((v22 & 0x8000) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    v24 = *(a1 + 52);
    goto LABEL_24;
  }

  v1 = 0;
LABEL_30:
  v26 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_195211D6C(UChar **a1, uint64_t a2, int *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  sub_195211758(v6, a1, a2, a3);
  if (*a3 <= 0)
  {
    sub_195211E8C(v6, a3);
    if (*a3 <= 0)
    {
      operator new();
    }
  }

  sub_1952118AC(v6);
  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_195211E8C(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  sub_195214494(*(a1 + 104));
  if (*a2 <= 0)
  {
    v5 = *(a1 + 160);
    sub_19521647C();
  }

  return 0;
}

uint64_t sub_195211F4C(uint64_t a1)
{
  do
  {
    v5 = 3;
    v2 = sub_195219A28(*(a1 + 176), &v5);
    if (v2)
    {
      do
      {
        sub_195216B48(*(a1 + 160), v5);
        sub_195219B70(*(a1 + 176), SHIDWORD(v5));
      }

      while ((sub_195219A28(*(a1 + 176), &v5) & 1) != 0);
    }

    do
    {
      v3 = v2;
      result = sub_19521A104(*(a1 + 176));
      LOBYTE(v2) = 1;
    }

    while (result > 0);
  }

  while ((v3 & 1) != 0);
  return result;
}

uint64_t sub_195211FDC(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  *(result + 16) = a4;
  *(result + 24) = a3;
  *result = &unk_1F0932F20;
  *(result + 8) = 0;
  *(result + 64) = 0u;
  *(result + 48) = 0u;
  *(result + 80) = result + 48;
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0;
  if (a3)
  {
    *(a3 + 64) = 0;
    *(a3 + 32) = 0uLL;
    *(a3 + 48) = 0uLL;
    *a3 = 0uLL;
    *(a3 + 16) = 0uLL;
  }

  if (*a4 <= 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_195212124(uint64_t a1)
{
  *a1 = &unk_1F0932F20;
  v2 = icu::UVector::elementAt(*(a1 + 104), 0);
  if (v2)
  {
    v3 = 1;
    do
    {
      v4 = sub_1952114AC(v2);
      MEMORY[0x19A8B2600](v4, 0x10B2C405CFBA51ELL);
      v2 = icu::UVector::elementAt(*(a1 + 104), v3++);
    }

    while (v2);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(a1 + 96))
  {
    v6 = sub_195216E54();
    MEMORY[0x19A8B2600](v6, 0x1030C40D21FFAB8);
  }

  if (*(a1 + 112))
  {
    v7 = sub_19521AC88();
    MEMORY[0x19A8B2600](v7, 0xB0C40D5CDFBD1);
  }

  if (*(a1 + 120))
  {
    v8 = sub_19521AC88();
    MEMORY[0x19A8B2600](v8, 0xB0C40D5CDFBD1);
  }

  if (*(a1 + 128))
  {
    v9 = sub_19521AC88();
    MEMORY[0x19A8B2600](v9, 0xB0C40D5CDFBD1);
  }

  if (*(a1 + 136))
  {
    v10 = sub_19521AC88();
    MEMORY[0x19A8B2600](v10, 0xB0C40D5CDFBD1);
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = sub_1952114AC(v11);
    MEMORY[0x19A8B2600](v12, 0x10B2C405CFBA51ELL);
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = sub_1952114AC(v13);
    MEMORY[0x19A8B2600](v14, 0x10B2C405CFBA51ELL);
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    v16 = sub_1952114AC(v15);
    MEMORY[0x19A8B2600](v16, 0x10B2C405CFBA51ELL);
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = sub_1952114AC(v17);
    MEMORY[0x19A8B2600](v18, 0x10B2C405CFBA51ELL);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(a1 + 144);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  return a1;
}

void sub_195212308(uint64_t a1)
{
  sub_195212124(a1);

  JUMPOUT(0x19A8B2600);
}

_DWORD *sub_195212340(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (**(a1 + 16) <= 0)
  {
    memset(v33, 0, sizeof(v33));
    sub_195215CAC(*(a1 + 32), v32);
    icu::UnicodeString::UnicodeString(v33, v32);
    icu::UnicodeString::~UnicodeString(v3, v32);
    v4 = (sub_19521BF5C(*(a1 + 112)) + 7) & 0xFFFFFFF8;
    v5 = (sub_19521BF5C(*(a1 + 120)) + 7) & 0xFFFFFFF8;
    v6 = (sub_19521BF5C(*(a1 + 128)) + 7) & 0xFFFFFFF8;
    v7 = (sub_19521BF5C(*(a1 + 136)) + 7) & 0xFFFFFFF8;
    v8 = (sub_195217478(*(a1 + 96)) + 7) & 0xFFFFFFF8;
    v9 = (4 * *(*(a1 + 144) + 8) + 7) & 0xFFFFFFF8;
    v10 = WORD4(v33[0]) >> 5;
    if (SWORD4(v33[0]) < 0)
    {
      v10 = HIDWORD(v33[0]);
    }

    v28 = v4;
    v11 = v4 + 96;
    v12 = v5 + v4 + 96;
    v26 = v8;
    v27 = v6;
    v13 = v6 + v12;
    v14 = v7 + v6 + v12;
    v29 = (2 * v10 + 9) & 0xFFFFFFF8;
    v15 = v8 + v14 + v9 + v29;
    v16 = malloc_type_malloc(v15, 0x1000040565EDBD2uLL);
    v1 = v16;
    if (v16)
    {
      bzero(v16, v15);
      *v1 = 45472;
      v1[1] = 259;
      v1[2] = v15;
      v1[3] = sub_19521756C(*(a1 + 96));
      v1[4] = 96;
      v1[5] = v28;
      v1[6] = v11;
      v1[7] = v5;
      v1[8] = v12;
      v1[9] = v27;
      v1[10] = v13;
      v1[11] = v7;
      v1[12] = v14;
      v17 = sub_195217478(*(a1 + 96));
      v18 = v1[12] + v26;
      v1[16] = v18;
      v1[17] = v9;
      v1[13] = v17;
      v1[14] = v18 + v9;
      v19 = WORD4(v33[0]) >> 5;
      if (SWORD4(v33[0]) < 0)
      {
        v19 = HIDWORD(v33[0]);
      }

      v1[15] = 2 * v19;
      *(v1 + 10) = 0;
      *(v1 + 11) = 0;
      *(v1 + 9) = 0;
      sub_19521BFB4(*(a1 + 112), (v1 + v1[4]));
      sub_19521BFB4(*(a1 + 120), (v1 + v1[6]));
      sub_19521BFB4(*(a1 + 128), (v1 + v1[8]));
      sub_19521BFB4(*(a1 + 136), (v1 + v1[10]));
      sub_195217544(*(a1 + 96), (v1 + v1[12]));
      v20 = *(a1 + 144);
      if (v20[2] >= 1)
      {
        v21 = 0;
        v22 = v1 + v1[16];
        do
        {
          *&v22[4 * v21] = icu::UVector::elementAti(v20, v21);
          ++v21;
          v20 = *(a1 + 144);
        }

        while (v21 < v20[2]);
      }

      v31 = (v1 + v1[14]);
      icu::UnicodeString::extract(v33, &v31, (v29 >> 1) | 1, *(a1 + 16));
      v30 = v31;
      v23 = &v30;
    }

    else
    {
      v23 = *(a1 + 16);
      *v23 = 7;
    }

    icu::UnicodeString::~UnicodeString(v23, v33);
  }

  else
  {
    v1 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_19521263C(uint64_t a1, uint64_t a2, int *a3)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  sub_195211FDC(v5, a1, a2, a3);
  if (*a3 <= 0)
  {
    sub_1952160B0(*(&v6 + 1));
    sub_195216E58();
  }

  sub_195212124(v5);
  return 0;
}

uint64_t sub_19521286C(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0932F58;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = &unk_1F0935D00;
  *(a1 + 56) = 2;
  for (i = 1152; i != 3152; i += 200)
  {
    icu::UnicodeSet::UnicodeSet((a1 + i));
  }

  *(a1 + 24) = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 28) = 1;
  *(a1 + 36) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 3152) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1131) = 0;
  *(a1 + 1136) = 0u;
  if (**(a2 + 16) <= 0)
  {
    sub_1951D6EE0(v19, L"[^[\\p{Z}\\u0020-\\u007f]-[\\p{L}]-[\\p{N}]]");
    icu::UnicodeSet::UnicodeSet(v18, v19, *(a2 + 16));
    icu::UnicodeSet::operator=((a1 + 1752), v18);
    icu::UnicodeSet::~UnicodeSet(v18);
    icu::UnicodeString::~UnicodeString(v5, v19);
    v6 = icu::UnicodeSet::add((a1 + 1952), 9u, 0xDu);
    v7 = icu::UnicodeSet::add(v6, 0x20u);
    v8 = icu::UnicodeSet::add(v7, 0x85u);
    v9 = icu::UnicodeSet::add(v8, 0x200Eu, 0x200Fu);
    icu::UnicodeSet::add(v9, 0x2028u, 0x2029u);
    sub_1951D6EE0(v19, L"[_\\p{L}\\p{N}]");
    icu::UnicodeSet::UnicodeSet(v18, v19, *(a2 + 16));
    icu::UnicodeSet::operator=((a1 + 1352), v18);
    icu::UnicodeSet::~UnicodeSet(v18);
    v11 = icu::UnicodeString::~UnicodeString(v10, v19);
    sub_1951D6EE0(v11, L"[_\\p{L}]");
    icu::UnicodeSet::UnicodeSet(v18, v19, *(a2 + 16));
    icu::UnicodeSet::operator=((a1 + 1552), v18);
    icu::UnicodeSet::~UnicodeSet(v18);
    v13 = icu::UnicodeString::~UnicodeString(v12, v19);
    sub_1951D6EE0(v13, "[");
    icu::UnicodeSet::UnicodeSet(v18, v19, *(a2 + 16));
    icu::UnicodeSet::operator=((a1 + 1152), v18);
    icu::UnicodeSet::~UnicodeSet(v18);
    icu::UnicodeString::~UnicodeString(v14, v19);
    v15 = *(a2 + 16);
    if (*v15 == 1)
    {
      *v15 = 66058;
    }

    else if (*v15 <= 0)
    {
      operator new();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_195212B4C(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  free(a1);
}

uint64_t sub_195212BB0(uint64_t a1)
{
  *a1 = &unk_1F0932F58;
  v2 = *(a1 + 1136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 1144);
  if (v3)
  {
    uhash_close(v3);
    *(a1 + 1144) = 0;
  }

  v4 = *(a1 + 1128);
  if (v4 >= 1)
  {
    do
    {
      v5 = *(a1 + 328 + 8 * v4);
      if (v5)
      {
        v6 = sub_1952114AC(v5);
        MEMORY[0x19A8B2600](v6, 0x10B2C405CFBA51ELL);
        v4 = *(a1 + 1128);
      }

      v7 = __OFSUB__(v4--, 1);
      *(a1 + 1128) = v4;
    }

    while (!((v4 < 0) ^ v7 | (v4 == 0)));
  }

  for (i = 2952; i != 952; i -= 200)
  {
    icu::UnicodeSet::~UnicodeSet((a1 + i));
  }

  icu::UnicodeString::~UnicodeString(v9, (a1 + 48));
  return a1;
}

void sub_195212C9C(uint64_t a1)
{
  sub_195212BB0(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_195212CD4(uint64_t a1, int a2)
{
  v92 = *MEMORY[0x1E69E9840];
  result = 0;
  switch(a2)
  {
    case 0:
      if (*(*(a1 + 8 * *(a1 + 1128) + 328) + 16))
      {
        goto LABEL_101;
      }

      v4 = *(a1 + 8);
      v5 = *(v4 + 16);
      if (*v5 > 0)
      {
        goto LABEL_67;
      }

      v6 = 66057;
      goto LABEL_65;
    case 1:
      sub_195213980(a1);
      if (**(*(a1 + 8) + 16) > 0)
      {
        goto LABEL_101;
      }

      v13 = v12;
      v86 = "a";
      icu::UnicodeString::UnicodeString(v91, 1, &v86);
      sub_195213B78(a1, v91, v13, 0);
      icu::UnicodeString::~UnicodeString(v14, v91);
      goto LABEL_35;
    case 2:
      v24 = sub_195213A2C(a1, 1);
      v25 = *(a1 + 8);
      if (**(v25 + 16) <= 0)
      {
        v26 = (a1 + 8 * *(a1 + 1128));
        v27 = v26[39];
        v28 = v26[40];
        v29 = v26[41];
        *(v29 + 112) = *(v27 + 112);
        *(v29 + 116) = *(a1 + 16);
        (*(**(v25 + 32) + 24))(*(v25 + 32), v24);
        *(v28 + 16) = v29;
        *(v29 + 8) = v28;
        (*(**(a1 + 1136) + 48))(*(a1 + 1136), v28 + 48, v28, *(*(a1 + 8) + 16));
        v30 = *(a1 + 8);
        if (**(v30 + 16) >= 1)
        {
          v31 = *(v30 + 24);
          if (v31)
          {
            *v31 = *(a1 + 28);
            *(v31 + 8) = 0;
            *(v31 + 40) = 0;
          }

          v32 = sub_1952114AC(v29);
          MEMORY[0x19A8B2600](v32, 0x10B2C405CFBA51ELL);
          v33 = sub_1952114AC(v28);
          MEMORY[0x19A8B2600](v33, 0x10B2C405CFBA51ELL);
        }

        v34 = sub_1952114AC(v27);
        MEMORY[0x19A8B2600](v34, 0x10B2C405CFBA51ELL);
        *(a1 + 1128) -= 3;
      }

      goto LABEL_101;
    case 3:
      sub_195213A2C(a1, 1);
      v38 = *(a1 + 8);
      if (**(v38 + 16) > 0)
      {
        goto LABEL_101;
      }

      v39 = *(a1 + 328 + 8 * *(a1 + 1128));
      if (!*(a1 + 1133))
      {
        goto LABEL_50;
      }

      sub_195213980(a1);
      v41 = v40;
      sub_195213980(a1);
      if (**(*(a1 + 8) + 16) > 0)
      {
        goto LABEL_101;
      }

      v43 = *(a1 + 1128) - 2;
      *(a1 + 1128) = v43;
      *(v42 + 16) = v39;
      *(v42 + 24) = v41;
      *(a1 + 328 + 8 * v43) = v42;
      *(v41 + 124) = *(a1 + 3152);
      *(v41 + 128) = 1;
      v38 = *(a1 + 8);
      v39 = v42;
LABEL_50:
      *(v39 + 129) = 1;
      if (*(v38 + 152) && !*(a1 + 1134))
      {
        *(v39 + 130) = 1;
      }

      if (*(a1 + 1132))
      {
        v44 = (v38 + 136);
      }

      else
      {
        v44 = *(v38 + 144);
      }

      v65 = *v44;
      if (!*v44)
      {
        goto LABEL_96;
      }

      sub_195213980(a1);
      if (**(*(a1 + 8) + 16) <= 0)
      {
        *(v66 + 16) = v65;
        *(v65 + 8) = v66;
        *(v66 + 24) = v39;
        *(v39 + 8) = v66;
        v39 = v66;
LABEL_96:
        *v44 = v39;
        *(a1 + 1131) = 0;
        *(a1 + 1128) = 0;
      }

      goto LABEL_101;
    case 4:
      v20 = *(a1 + 8 * *(a1 + 1128) + 328);
      if (v20 && *v20 == 2)
      {
        *(v20 + 116) = *(a1 + 16);
        (*(**(*(a1 + 8) + 32) + 24))(*(*(a1 + 8) + 32), (*(v20 + 112) + 1));
        *(v20 + 16) = (*(**(a1 + 1136) + 40))(*(a1 + 1136), v20 + 48);
      }

      else
      {
        v53 = *(a1 + 8);
        v54 = *(v53 + 16);
        if (*v54 <= 0)
        {
          v55 = 66048;
LABEL_79:
          *v54 = v55;
          v56 = *(v53 + 24);
          if (v56)
          {
            *v56 = *(a1 + 28);
            *(v56 + 8) = 0;
            *(v56 + 40) = 0;
          }
        }
      }

      goto LABEL_101;
    case 5:
      goto LABEL_102;
    case 6:
    case 8:
      sub_195213A2C(a1, 4);
      v16 = *(a1 + 1128);
      *(a1 + 1128) = v16 - 1;
      v17 = *(a1 + 8 * v16 + 328);
      v18 = a1;
      goto LABEL_72;
    case 7:
    case 12:
      goto LABEL_101;
    case 9:
      sub_195213A2C(a1, 2);
      goto LABEL_101;
    case 10:
      sub_195213980(a1);
      ++*(a1 + 3152);
      goto LABEL_101;
    case 11:
      v15 = a1;
      goto LABEL_62;
    case 13:
      *(a1 + 1134) = 1;
      goto LABEL_101;
    case 14:
      memset(v91, 0, 64);
      icu::UnicodeString::UnicodeString(v91, *(*(a1 + 8) + 32), *(a1 + 3156), (*(a1 + 16) - *(a1 + 3156)));
      v85 = "c";
      icu::UnicodeString::UnicodeString(v87, 1, &v85);
      if (v91[2])
      {
        v10 = v88;
        v11 = v88 & 1;
      }

      else
      {
        if (SLOWORD(v91[2]) >= 0)
        {
          v7 = LOWORD(v91[2]) >> 5;
        }

        else
        {
          v7 = v91[3];
        }

        if ((v88 & 0x8000u) == 0)
        {
          v8 = v88 >> 5;
        }

        else
        {
          v8 = *&v89[2];
        }

        if ((v88 & 1) != 0 || v7 != v8)
        {
          icu::UnicodeString::~UnicodeString(v88, v87);
          goto LABEL_86;
        }

        if ((v88 & 2) != 0)
        {
          v9 = v89;
        }

        else
        {
          v9 = v90;
        }

        v11 = icu::UnicodeString::doEquals(v91, v9, v7);
      }

      icu::UnicodeString::~UnicodeString(v10, v87);
      if (v11)
      {
        v57 = *(a1 + 8);
        v57[152] = 1;
        goto LABEL_100;
      }

LABEL_86:
      v84 = "f";
      icu::UnicodeString::UnicodeString(v87, 1, &v84);
      v58 = sub_195213DE4(v91, v87);
      icu::UnicodeString::~UnicodeString(v59, v87);
      if (v58)
      {
        v57 = *(a1 + 8);
        v60 = v57 + 112;
LABEL_99:
        *(v57 + 18) = v60;
        goto LABEL_100;
      }

      v83 = "r";
      icu::UnicodeString::UnicodeString(v87, 1, &v83);
      v61 = sub_195213DE4(v91, v87);
      icu::UnicodeString::~UnicodeString(v62, v87);
      if (v61)
      {
        v57 = *(a1 + 8);
        v60 = v57 + 120;
        goto LABEL_99;
      }

      v82 = "s";
      icu::UnicodeString::UnicodeString(v87, 1, &v82);
      v63 = sub_195213DE4(v91, v87);
      icu::UnicodeString::~UnicodeString(v64, v87);
      if (v63)
      {
        v57 = *(a1 + 8);
        v60 = v57 + 128;
        goto LABEL_99;
      }

      v81 = L"safe_reverse";
      icu::UnicodeString::UnicodeString(v87, 1, &v81);
      v67 = sub_195213DE4(v91, v87);
      icu::UnicodeString::~UnicodeString(v68, v87);
      if (v67)
      {
        v57 = *(a1 + 8);
        v60 = v57 + 136;
        goto LABEL_99;
      }

      v80 = "l";
      icu::UnicodeString::UnicodeString(v87, 1, &v80);
      v70 = sub_195213DE4(v91, v87);
      icu::UnicodeString::~UnicodeString(v71, v87);
      if (v70)
      {
        v57 = *(a1 + 8);
        v57[153] = 1;
      }

      else
      {
        v79 = L"quoted_literals_only";
        icu::UnicodeString::UnicodeString(v87, 1, &v79);
        v72 = sub_195213DE4(v91, v87);
        icu::UnicodeString::~UnicodeString(v73, v87);
        if (v72)
        {
          icu::UnicodeSet::clear((a1 + 1752));
        }

        else
        {
          v78 = "u";
          icu::UnicodeString::UnicodeString(v87, 1, &v78);
          v74 = sub_195213DE4(v91, v87);
          icu::UnicodeString::~UnicodeString(v75, v87);
          if (v74)
          {
            sub_1951D6EE0(v87, L"[^[\\p{Z}\\u0020-\\u007f]-[\\p{L}]-[\\p{N}]]");
            icu::UnicodeSet::applyPattern((a1 + 1752), v87, *(*(a1 + 8) + 16));
            icu::UnicodeString::~UnicodeString(v76, v87);
          }

          else
          {
            v57 = *(a1 + 8);
            v77 = *(v57 + 2);
            if (*v77 <= 0)
            {
              *v77 = 66060;
              v57 = *(v57 + 3);
              if (v57)
              {
                *v57 = *(a1 + 28);
                *(v57 + 4) = 0;
                *(v57 + 20) = 0;
              }
            }
          }
        }
      }

LABEL_100:
      icu::UnicodeString::~UnicodeString(v57, v91);
LABEL_101:
      result = **(*(a1 + 8) + 16) < 1;
LABEL_102:
      v69 = *MEMORY[0x1E69E9840];
      return result;
    case 15:
      *(a1 + 3156) = *(a1 + 16);
      goto LABEL_101;
    case 16:
      *(a1 + 1132) = 1;
      goto LABEL_101;
    case 17:
      sub_195213980(a1);
      if (**(*(a1 + 8) + 16) > 0)
      {
        goto LABEL_101;
      }

      v13 = v22;
      icu::UnicodeString::UnicodeString(v91, *(a1 + 40));
      sub_195213B78(a1, v91, v13, 0);
      icu::UnicodeString::~UnicodeString(v23, v91);
LABEL_35:
      *(v13 + 112) = *(a1 + 16);
      *(v13 + 116) = *(a1 + 20);
      (*(**(*(a1 + 8) + 32) + 24))(*(*(a1 + 8) + 32));
      goto LABEL_101;
    case 18:
      v4 = *(a1 + 8);
      v5 = *(v4 + 16);
      if (*v5 > 0)
      {
        goto LABEL_67;
      }

      v6 = 66051;
      goto LABEL_65;
    case 19:
      v4 = *(a1 + 8);
      v5 = *(v4 + 16);
      if (*v5 > 0)
      {
        goto LABEL_67;
      }

      v6 = 66053;
      goto LABEL_65;
    case 20:
      sub_195213E68(a1);
      goto LABEL_101;
    case 21:
      v36 = sub_195213980(a1);
      v37 = *(a1 + 8);
      if (**(v37 + 16) <= 0)
      {
        v35[31] = *(a1 + 3152);
        v35[28] = *(a1 + 16);
        v35[29] = *(a1 + 20);
        (*(**(v37 + 32) + 24))(*(v37 + 32), v36);
        *(a1 + 1133) = 1;
      }

      goto LABEL_101;
    case 22:
      *(*(a1 + 8 * *(a1 + 1128) + 320) + 112) = *(a1 + 20);
      v15 = a1;
LABEL_62:
      sub_195213980(v15);
      goto LABEL_101;
    case 23:
      sub_195213980(a1);
      if (**(*(a1 + 8) + 16) <= 0)
      {
        *(v47 + 124) = 0;
        *(v47 + 112) = *(a1 + 16);
      }

      goto LABEL_101;
    case 24:
      sub_195213980(a1);
      if (**(*(a1 + 8) + 16) <= 0)
      {
        *(v19 + 112) = *(a1 + 16);
      }

      goto LABEL_101;
    case 25:
      v51 = *(a1 + 8 * *(a1 + 1128) + 328);
      v52 = 10 * *(v51 + 124) + u_charDigitValue(*(a1 + 40));
      if (v52 >= 0x100000000)
      {
        goto LABEL_75;
      }

      *(v51 + 124) = v52;
      goto LABEL_101;
    case 26:
      v4 = *(a1 + 8);
      v5 = *(v4 + 16);
      if (*v5 > 0)
      {
        goto LABEL_67;
      }

      v6 = 66061;
      goto LABEL_65;
    case 27:
      v48 = *(a1 + 8 * *(a1 + 1128) + 328);
      *(v48 + 116) = *(a1 + 20);
      (*(**(*(a1 + 8) + 32) + 24))(*(*(a1 + 8) + 32), *(v48 + 112));
      goto LABEL_101;
    case 28:
      v49 = *(a1 + 1128);
      *(a1 + 1128) = v49 - 1;
      v17 = *(a1 + 8 * v49 + 328);
      v18 = a1;
      goto LABEL_72;
    case 29:
      v45 = *(a1 + 1128);
      *(a1 + 1128) = v45 - 1;
      v17 = *(a1 + 8 * v45 + 328);
      v18 = a1;
      goto LABEL_72;
    case 30:
      v21 = *(a1 + 1128);
      *(a1 + 1128) = v21 - 1;
      v17 = *(a1 + 8 * v21 + 328);
      v18 = a1;
LABEL_72:
      sub_195213980(v18);
      if (**(*(a1 + 8) + 16) <= 0)
      {
        *(v50 + 16) = v17;
        *(v17 + 8) = v50;
      }

      goto LABEL_101;
    case 31:
LABEL_75:
      v53 = *(a1 + 8);
      v54 = *(v53 + 16);
      if (*v54 > 0)
      {
        goto LABEL_101;
      }

      v55 = 66051;
      goto LABEL_79;
    default:
      v4 = *(a1 + 8);
      v5 = *(v4 + 16);
      if (*v5 > 0)
      {
        goto LABEL_67;
      }

      v6 = 66048;
LABEL_65:
      *v5 = v6;
      v46 = *(v4 + 24);
      if (v46)
      {
        result = 0;
        *v46 = *(a1 + 28);
        *(v46 + 8) = 0;
        *(v46 + 40) = 0;
      }

      else
      {
LABEL_67:
        result = 0;
      }

      goto LABEL_102;
  }
}

double sub_195213980(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  if (*v2 <= 0)
  {
    v3 = *(a1 + 1128);
    if (v3 < 99)
    {
      *(a1 + 1128) = v3 + 1;
      operator new();
    }

    *v2 = 66051;
    v4 = *(v1 + 24);
    if (v4)
    {
      result = *(a1 + 28);
      *v4 = result;
      *(v4 + 8) = 0;
      *(v4 + 40) = 0;
    }
  }

  return result;
}

double sub_195213A2C(uint64_t a1, int a2)
{
  v2 = a1 + 328;
  if (a2 <= 3)
  {
    v3 = 3;
  }

  else
  {
    v3 = a2;
  }

  v4 = *(a1 + 1128);
  v5 = v4 - 1;
  v6 = *(v2 + 8 * (v4 - 1));
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = v4 << 32;
    v9 = (a1 + 8 * v4 + 328);
    while (v7 >= v3)
    {
      v10 = *v9;
      *(v6 + 24) = *v9;
      *(v10 + 8) = v6;
      *(a1 + 1128) = v5;
      v6 = *(v9 - 2);
      v7 = *(v6 + 40);
      v8 -= 0x100000000;
      --v9;
      --v5;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    if (a2 <= 2)
    {
      if (v7 != a2)
      {
        v15 = *(a1 + 8);
        v16 = *(v15 + 16);
        if (*v16 <= 0)
        {
          *v16 = 66055;
          v17 = *(v15 + 24);
          if (v17)
          {
            *v17 = *(a1 + 28);
            *(v17 + 8) = 0;
            *(v17 + 40) = 0;
          }
        }
      }

      *(v9 - 1) = *(v2 + (v8 >> 29));
      *(a1 + 1128) = v5;
      sub_1952114AC(v6);

      JUMPOUT(0x19A8B2600);
    }
  }

  else
  {
LABEL_8:
    v11 = *(a1 + 8);
    v12 = *(v11 + 16);
    if (*v12 <= 0)
    {
      *v12 = 66048;
      v13 = *(v11 + 24);
      if (v13)
      {
        result = *(a1 + 28);
        *v13 = result;
        *(v13 + 8) = 0;
        *(v13 + 40) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_195213B78(uint64_t a1, uint64_t a2, uint64_t a3, icu::UnicodeSet *a4)
{
  result = uhash_get(*(a1 + 1144), a2);
  if (!result)
  {
    if (!a4)
    {
      v9 = *(a2 + 8);
      v10 = v9;
      v11 = v9 >> 5;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = *(a2 + 12);
      }

      v13 = "a";
      if (icu::UnicodeString::doCompare(a2, 0, v12, "a", 0, -1))
      {
        icu::UnicodeString::char32At(&v13, a2, 0);
        operator new();
      }

      operator new();
    }

    operator new();
  }

  v8 = result;
  if (a4)
  {
    icu::UnicodeSet::~UnicodeSet(a4);
    result = MEMORY[0x19A8B2600]();
  }

  *(a3 + 16) = *(v8 + 8);
  return result;
}

BOOL sub_195213DE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return *(a2 + 8) & 1;
  }

  if ((v2 & 0x8000) != 0)
  {
    v3 = *(a1 + 12);
  }

  else
  {
    v3 = v2 >> 5;
  }

  v4 = 0;
  v5 = *(a2 + 8);
  if ((v5 & 0x8000u) == 0)
  {
    v6 = v5 >> 5;
  }

  else
  {
    v6 = *(a2 + 12);
  }

  if ((v5 & 1) == 0 && v3 == v6)
  {
    if ((v5 & 2) != 0)
    {
      v7 = (a2 + 10);
    }

    else
    {
      v7 = *(a2 + 24);
    }

    return icu::UnicodeString::doEquals(a1, v7, v3);
  }

  return v4;
}

void sub_195213E68(uint64_t a1)
{
  v2 = &unk_1F0932C70;
  v3 = 0xFFFFFFFF00000000;
  if (**(*(a1 + 8) + 16) <= 0)
  {
    LODWORD(v3) = *(a1 + 16);
    v1 = U_ZERO_ERROR;
    operator new();
  }

  icu::ParsePosition::~ParsePosition(&v2);
}

uint64_t sub_1952140AC@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  v3 = *(this + 8);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(this + 12);
  }

  if (v6 >= 1)
  {
    v7 = this;
    v8 = 0;
    do
    {
      v9 = icu::UnicodeString::char32At(v7, v8);
      if (!u_hasBinaryProperty(v9, UCHAR_PATTERN_WHITE_SPACE))
      {
        icu::UnicodeString::append(a2, v9);
      }

      this = icu::UnicodeString::moveIndex32(v7, v8, 1);
      v8 = this;
    }

    while (this < v6);
  }

  return this;
}

uint64_t sub_195214180(uint64_t a1)
{
  v2 = *(a1 + 20);
  v3 = *(*(a1 + 8) + 32);
  if (*(v3 + 8) < 0)
  {
    v4 = *(v3 + 12);
  }

  else
  {
    v4 = (*(v3 + 8) >> 5);
  }

  if (v2 < v4)
  {
    v5 = icu::UnicodeString::char32At(v4, v3, v2);
    v6 = *(a1 + 8);
    if (v5 >> 11 == 27)
    {
      v7 = *(v6 + 16);
      if (*v7 <= 0)
      {
        *v7 = 12;
        v8 = *(v6 + 24);
        if (v8)
        {
          *v8 = *(a1 + 28);
          *(v8 + 8) = 0;
          *(v8 + 40) = 0;
        }
      }

      return 0xFFFFFFFFLL;
    }

    v9 = v5;
    *(a1 + 20) = icu::UnicodeString::moveIndex32(*(v6 + 32), *(a1 + 20), 1);
    if (v9 > 132)
    {
      if (v9 != 133 && v9 != 8232)
      {
        goto LABEL_24;
      }
    }

    else if (v9 == 10)
    {
      if (*(a1 + 36) == 13)
      {
        goto LABEL_26;
      }
    }

    else if (v9 != 13)
    {
LABEL_24:
      ++*(a1 + 32);
LABEL_26:
      *(a1 + 36) = v9;
      return v9;
    }

    v11 = *(a1 + 28) + 1;
    *(a1 + 28) = v11;
    if (*(a1 + 24))
    {
      v12 = *(a1 + 8);
      v13 = *(v12 + 16);
      if (*v13 <= 0)
      {
        *v13 = 66056;
        v14 = *(v12 + 24);
        if (v14)
        {
          *v14 = v11;
          *(v14 + 4) = 0;
          *(v14 + 8) = 0;
          *(v14 + 40) = 0;
        }
      }

      *(a1 + 24) = 0;
    }

    goto LABEL_26;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1952142D0(uint64_t a1, int *a2)
{
  v4 = (a1 + 20);
  *(a1 + 16) = *(a1 + 20);
  result = sub_195214180(a1);
  *a2 = result;
  *(a2 + 4) = 0;
  if (result == 39)
  {
    result = icu::UnicodeString::char32At(*(a1 + 8), *(*(a1 + 8) + 32), *(a1 + 20));
    if (result != 39)
    {
      v8 = *(a1 + 24) == 0;
      *(a1 + 24) = *(a1 + 24) == 0;
      if (v8)
      {
        v6 = 40;
      }

      else
      {
        v6 = 41;
      }

      *a2 = v6;
      *(a2 + 4) = 0;
      return result;
    }

    result = sub_195214180(a1);
    *a2 = result;
    *(a2 + 4) = 1;
  }

  if (result != -1)
  {
    if (*(a1 + 24))
    {
      *(a2 + 4) = 1;
    }

    else
    {
      if (result == 35)
      {
        v7 = *(a1 + 16);
        do
        {
          result = sub_195214180(a1);
          *a2 = result;
          v8 = (result + 1) > 0xE || ((1 << (result + 1)) & 0x4801) == 0;
          v9 = !v8 || result == 8232;
        }

        while (!v9 && result != 133);
        if (v7 < *v4 - 1)
        {
          do
          {
            icu::UnicodeString::setCharAt((*(a1 + 8) + 40), v7++, 32);
          }

          while (v7 < *(a1 + 20) - 1);
          result = *a2;
        }
      }

      if (result == 92)
      {
        *(a2 + 4) = 1;
        v10 = *(a1 + 20);
        result = icu::UnicodeString::unescapeAt(*(*(a1 + 8) + 32), v4);
        *a2 = result;
        v11 = *(a1 + 20) - v10;
        if (!v11)
        {
          v12 = *(a1 + 8);
          v13 = *(v12 + 16);
          if (*v13 <= 0)
          {
            *v13 = 66049;
            v14 = *(v12 + 24);
            if (v14)
            {
              *v14 = *(a1 + 28);
              *(v14 + 8) = 0;
              *(v14 + 40) = 0;
            }
          }
        }

        *(a1 + 32) += v11;
      }
    }
  }

  return result;
}

double sub_195214494(uint64_t a1)
{
  if (**(*(a1 + 8) + 16) <= 0)
  {
    sub_1952142D0(a1, (a1 + 40));
    if (**(*(a1 + 8) + 16) <= 0)
    {
      v3 = a1 + 120;
      LOWORD(v4) = 1;
      while (1)
      {
        for (i = &unk_195445764 + 8 * v4 + 7; ; i += 8)
        {
          v6 = *(i - 3);
          if (v6 <= 0x7E && !*(a1 + 44) && *(a1 + 40) == v6)
          {
            break;
          }

          if (*(i - 3) > 0xFDu)
          {
            if (v6 != 254 || *(a1 + 44))
            {
              break;
            }
          }

          else if (v6 == 252)
          {
            if (*(a1 + 40) == -1)
            {
              break;
            }
          }

          else if (v6 == 253)
          {
            if (*(a1 + 44) && (*(a1 + 40) | 0x20) == 0x70)
            {
              break;
            }
          }

          else if (v6 <= -17 && !*(a1 + 44))
          {
            v7 = *(a1 + 40);
            if (v7 != -1)
            {
              if (icu::UnicodeSet::contains((a1 + 1152 + 200 * (v6 & 0x7F)), v7))
              {
                break;
              }
            }
          }
        }

        if (!sub_195212CD4(a1, *(i - 7)))
        {
          break;
        }

        v8 = *(i - 1);
        if (*(i - 1))
        {
          v9 = *(a1 + 320);
          v10 = v9 + 1;
          *(a1 + 320) = v9 + 1;
          if (v9 >= 99)
          {
            v11 = *(a1 + 8);
            v12 = *(v11 + 16);
            if (*v12 <= 0)
            {
              *v12 = 66048;
              v13 = *(v11 + 24);
              if (v13)
              {
                result = *(a1 + 28);
                *v13 = result;
                *(v13 + 8) = 0;
                *(v13 + 40) = 0;
              }
            }

            *(a1 + 320) = v9;
            v10 = v9;
          }

          *(v3 + 2 * v10) = v8;
        }

        if (*i)
        {
          sub_1952142D0(a1, (a1 + 40));
        }

        v4 = *(i - 2);
        if (v4 == 255)
        {
          v15 = *(a1 + 320);
          v4 = *(v3 + 2 * v15);
          *(a1 + 320) = v15 - 1;
          v14 = *(a1 + 8);
          if (v15 <= 0)
          {
            v16 = v14[2];
            if (*v16 <= 0)
            {
              *v16 = 66048;
              v17 = v14[3];
              if (v17)
              {
                result = *(a1 + 28);
                *v17 = result;
                *(v17 + 8) = 0;
                *(v17 + 40) = 0;
              }
            }

            *(a1 + 320) = v15;
          }
        }

        else
        {
          v14 = *(a1 + 8);
        }

        v18 = v14[2];
        v19 = *v18;
        if (*v18 > 0 || v4 == 0)
        {
          goto LABEL_49;
        }
      }

      v14 = *(a1 + 8);
      v18 = v14[2];
      v19 = *v18;
LABEL_49:
      if (v19 <= 0 && !v14[14])
      {
        *v18 = 66051;
        v21 = v14[3];
        if (v21)
        {
          result = *(a1 + 28);
          *v21 = result;
          *(v21 + 8) = 0;
          *(v21 + 40) = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_195214714(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F0932F90;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = &unk_1F0935D00;
  *(a1 + 56) = 2;
  for (i = 1152; i != 3152; i += 200)
  {
    icu::UnicodeSet::UnicodeSet((a1 + i));
  }

  *(a1 + 24) = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 28) = 1;
  *(a1 + 36) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 3152) = 0;
  *(a1 + 1128) = 0;
  *(a1 + 1131) = 0;
  *(a1 + 1136) = 0u;
  if (**(a2 + 16) <= 0)
  {
    sub_1951D6EE0(v19, L"[^[\\p{Z}\\u0020-\\u007f]-[\\p{L}]-[\\p{N}]]");
    icu::UnicodeSet::UnicodeSet(v18, v19, *(a2 + 16));
    icu::UnicodeSet::operator=((a1 + 1752), v18);
    icu::UnicodeSet::~UnicodeSet(v18);
    icu::UnicodeString::~UnicodeString(v5, v19);
    v6 = icu::UnicodeSet::add((a1 + 1952), 9u, 0xDu);
    v7 = icu::UnicodeSet::add(v6, 0x20u);
    v8 = icu::UnicodeSet::add(v7, 0x85u);
    v9 = icu::UnicodeSet::add(v8, 0x200Eu, 0x200Fu);
    icu::UnicodeSet::add(v9, 0x2028u, 0x2029u);
    sub_1951D6EE0(v19, L"[_\\p{L}\\p{N}]");
    icu::UnicodeSet::UnicodeSet(v18, v19, *(a2 + 16));
    icu::UnicodeSet::operator=((a1 + 1352), v18);
    icu::UnicodeSet::~UnicodeSet(v18);
    v11 = icu::UnicodeString::~UnicodeString(v10, v19);
    sub_1951D6EE0(v11, L"[_\\p{L}]");
    icu::UnicodeSet::UnicodeSet(v18, v19, *(a2 + 16));
    icu::UnicodeSet::operator=((a1 + 1552), v18);
    icu::UnicodeSet::~UnicodeSet(v18);
    v13 = icu::UnicodeString::~UnicodeString(v12, v19);
    sub_1951D6EE0(v13, "[");
    icu::UnicodeSet::UnicodeSet(v18, v19, *(a2 + 16));
    icu::UnicodeSet::operator=((a1 + 1152), v18);
    icu::UnicodeSet::~UnicodeSet(v18);
    icu::UnicodeString::~UnicodeString(v14, v19);
    v15 = *(a2 + 16);
    if (*v15 == 1)
    {
      *v15 = 66058;
    }

    else if (*v15 <= 0)
    {
      operator new();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1952149F4(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  free(a1);
}

uint64_t sub_195214A58(uint64_t a1)
{
  *a1 = &unk_1F0932F90;
  v2 = *(a1 + 1136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 1144);
  if (v3)
  {
    uhash_close(v3);
    *(a1 + 1144) = 0;
  }

  v4 = *(a1 + 1128);
  if (v4 >= 1)
  {
    do
    {
      v5 = *(a1 + 328 + 8 * v4);
      if (v5)
      {
        v6 = sub_1952114AC(v5);
        MEMORY[0x19A8B2600](v6, 0x10B2C405CFBA51ELL);
        v4 = *(a1 + 1128);
      }

      v7 = __OFSUB__(v4--, 1);
      *(a1 + 1128) = v4;
    }

    while (!((v4 < 0) ^ v7 | (v4 == 0)));
  }

  for (i = 2952; i != 952; i -= 200)
  {
    icu::UnicodeSet::~UnicodeSet((a1 + i));
  }

  icu::UnicodeString::~UnicodeString(v9, (a1 + 48));
  return a1;
}

void sub_195214B44(uint64_t a1)
{
  sub_195214A58(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_195214B7C(uint64_t a1, int a2)
{
  v86 = *MEMORY[0x1E69E9840];
  result = 0;
  switch(a2)
  {
    case 0:
      if (*(*(a1 + 8 * *(a1 + 1128) + 328) + 16))
      {
        goto LABEL_103;
      }

      v4 = *(a1 + 8);
      v5 = *(v4 + 16);
      if (*v5 > 0)
      {
        goto LABEL_75;
      }

      v6 = 9;
      goto LABEL_72;
    case 1:
      v13 = sub_1952157B0(a1);
      if (**(*(a1 + 8) + 16) > 0)
      {
        goto LABEL_103;
      }

      v14 = v13;
      v80 = "a";
      icu::UnicodeString::UnicodeString(v85, 1, &v80);
      sub_19521585C(a1, v85, v14, 0);
      icu::UnicodeString::~UnicodeString(v15, v85);
      goto LABEL_36;
    case 2:
      v28 = sub_195213A2C(a1, 1);
      v29 = (a1 + 8 * *(a1 + 1128));
      v30 = v29[39];
      v31 = v29[40];
      v32 = v29[41];
      *(v32 + 112) = *(v30 + 112);
      *(v32 + 116) = *(a1 + 16);
      (*(**(*(a1 + 8) + 32) + 24))(*(*(a1 + 8) + 32), v28);
      *(v31 + 16) = v32;
      *(v32 + 8) = v31;
      (*(**(a1 + 1136) + 48))(*(a1 + 1136), v31 + 48, v31, *(*(a1 + 8) + 16));
      v33 = *(a1 + 8);
      if (**(v33 + 16) >= 1)
      {
        v34 = *(v33 + 24);
        if (v34)
        {
          *v34 = *(a1 + 28);
          *(v34 + 8) = 0;
          *(v34 + 40) = 0;
        }
      }

      v35 = sub_1952114AC(v30);
      MEMORY[0x19A8B2600](v35, 0x10B2C405CFBA51ELL);
      *(a1 + 1128) -= 3;
      goto LABEL_103;
    case 3:
      sub_195213A2C(a1, 1);
      v38 = *(a1 + 8);
      if (**(v38 + 16) > 0)
      {
        goto LABEL_103;
      }

      v39 = *(a1 + 328 + 8 * *(a1 + 1128));
      if (!*(a1 + 1133))
      {
        goto LABEL_49;
      }

      v40 = sub_1952157B0(a1);
      v41 = sub_1952157B0(a1);
      if (**(*(a1 + 8) + 16) > 0)
      {
        goto LABEL_103;
      }

      v42 = *(a1 + 1128) - 2;
      *(a1 + 1128) = v42;
      *(v41 + 16) = v39;
      *(v41 + 24) = v40;
      *(a1 + 328 + 8 * v42) = v41;
      *(v40 + 124) = *(a1 + 3152);
      *(v40 + 128) = 1;
      v38 = *(a1 + 8);
      v39 = v41;
LABEL_49:
      *(v39 + 129) = 1;
      if (*(v38 + 88) && !*(a1 + 1134))
      {
        *(v39 + 130) = 1;
      }

      if (*(a1 + 1132))
      {
        v43 = (v38 + 56);
      }

      else
      {
        v43 = *(v38 + 80);
      }

      v60 = *v43;
      if (!*v43)
      {
        goto LABEL_94;
      }

      v61 = sub_1952157B0(a1);
      if (**(*(a1 + 8) + 16) <= 0)
      {
        *(v61 + 16) = v60;
        *(v60 + 8) = v61;
        *(v61 + 24) = v39;
        *(v39 + 8) = v61;
        v39 = v61;
LABEL_94:
        *v43 = v39;
        *(a1 + 1131) = 0;
        *(a1 + 1128) = 0;
      }

      goto LABEL_103;
    case 4:
      v22 = *(a1 + 8 * *(a1 + 1128) + 328);
      if (v22 && *v22 == 2)
      {
        *(v22 + 116) = *(a1 + 16);
        (*(**(*(a1 + 8) + 32) + 24))(*(*(a1 + 8) + 32), (*(v22 + 112) + 1));
        *(v22 + 16) = (*(**(a1 + 1136) + 40))(*(a1 + 1136), v22 + 48);
      }

      else
      {
        v23 = *(a1 + 8);
        v24 = *(v23 + 16);
        if (*v24 <= 0)
        {
          v25 = 66048;
LABEL_78:
          *v24 = v25;
          v51 = *(v23 + 24);
          if (v51)
          {
            *v51 = *(a1 + 28);
            *(v51 + 8) = 0;
            *(v51 + 40) = 0;
          }
        }
      }

      goto LABEL_103;
    case 5:
      goto LABEL_104;
    case 6:
    case 8:
      sub_195213A2C(a1, 4);
      v17 = *(a1 + 1128);
      *(a1 + 1128) = v17 - 1;
      v18 = *(a1 + 8 * v17 + 328);
      v19 = a1;
      goto LABEL_68;
    case 7:
    case 12:
      goto LABEL_103;
    case 9:
      sub_195213A2C(a1, 2);
      goto LABEL_103;
    case 10:
      sub_1952157B0(a1);
      ++*(a1 + 3152);
      goto LABEL_103;
    case 11:
      v16 = a1;
      goto LABEL_61;
    case 13:
      *(a1 + 1134) = 1;
      goto LABEL_103;
    case 14:
      memset(v85, 0, 64);
      icu::UnicodeString::UnicodeString(v85, *(*(a1 + 8) + 32), *(a1 + 3156), (*(a1 + 16) - *(a1 + 3156)));
      v79 = "c";
      icu::UnicodeString::UnicodeString(v81, 1, &v79);
      if (v85[2])
      {
        v11 = v82;
        v12 = v82 & 1;
      }

      else
      {
        if (SLOWORD(v85[2]) >= 0)
        {
          v8 = LOWORD(v85[2]) >> 5;
        }

        else
        {
          v8 = v85[3];
        }

        if ((v82 & 0x8000u) == 0)
        {
          v9 = v82 >> 5;
        }

        else
        {
          v9 = *&v83[2];
        }

        if ((v82 & 1) != 0 || v8 != v9)
        {
          icu::UnicodeString::~UnicodeString(v82, v81);
          goto LABEL_84;
        }

        if ((v82 & 2) != 0)
        {
          v10 = v83;
        }

        else
        {
          v10 = v84;
        }

        v12 = icu::UnicodeString::doEquals(v85, v10, v8);
      }

      icu::UnicodeString::~UnicodeString(v11, v81);
      if (v12)
      {
        v52 = *(a1 + 8);
        v52[88] = 1;
        goto LABEL_102;
      }

LABEL_84:
      v78 = "L";
      icu::UnicodeString::UnicodeString(v81, 1, &v78);
      v53 = sub_195213DE4(v85, v81);
      icu::UnicodeString::~UnicodeString(v54, v81);
      if (v53)
      {
        v52 = *(a1 + 8);
        v52[89] = 1;
        goto LABEL_102;
      }

      v77 = "R";
      icu::UnicodeString::UnicodeString(v81, 1, &v77);
      v55 = sub_195213DE4(v85, v81);
      icu::UnicodeString::~UnicodeString(v56, v81);
      if (v55)
      {
        v52 = *(a1 + 8);
        v52[91] = 1;
        goto LABEL_102;
      }

      v76 = "f";
      icu::UnicodeString::UnicodeString(v81, 1, &v76);
      v57 = sub_195213DE4(v85, v81);
      icu::UnicodeString::~UnicodeString(v58, v81);
      if (v57)
      {
        v52 = *(a1 + 8);
        v59 = v52 + 48;
LABEL_101:
        *(v52 + 10) = v59;
        goto LABEL_102;
      }

      v75 = "r";
      icu::UnicodeString::UnicodeString(v81, 1, &v75);
      v62 = sub_195213DE4(v85, v81);
      icu::UnicodeString::~UnicodeString(v63, v81);
      if (v62)
      {
        v52 = *(a1 + 8);
        v59 = v52 + 56;
        goto LABEL_101;
      }

      v74 = "s";
      icu::UnicodeString::UnicodeString(v81, 1, &v74);
      v64 = sub_195213DE4(v85, v81);
      icu::UnicodeString::~UnicodeString(v65, v81);
      if (v64)
      {
        v52 = *(a1 + 8);
        v59 = v52 + 64;
        goto LABEL_101;
      }

      v73 = L"safe_reverse";
      icu::UnicodeString::UnicodeString(v81, 1, &v73);
      v66 = sub_195213DE4(v85, v81);
      icu::UnicodeString::~UnicodeString(v67, v81);
      if (v66)
      {
        v52 = *(a1 + 8);
        v59 = v52 + 72;
        goto LABEL_101;
      }

      v72 = "l";
      icu::UnicodeString::UnicodeString(v81, 1, &v72);
      v69 = sub_195213DE4(v85, v81);
      icu::UnicodeString::~UnicodeString(v70, v81);
      v52 = *(a1 + 8);
      if (v69)
      {
        v52[90] = 1;
      }

      else
      {
        v71 = *(v52 + 2);
        if (*v71 <= 0)
        {
          *v71 = 66060;
          v52 = *(v52 + 3);
          if (v52)
          {
            *v52 = *(a1 + 28);
            *(v52 + 4) = 0;
            *(v52 + 20) = 0;
          }
        }
      }

LABEL_102:
      icu::UnicodeString::~UnicodeString(v52, v85);
LABEL_103:
      result = **(*(a1 + 8) + 16) < 1;
LABEL_104:
      v68 = *MEMORY[0x1E69E9840];
      return result;
    case 15:
      *(a1 + 3156) = *(a1 + 16);
      goto LABEL_103;
    case 16:
      *(a1 + 1132) = 1;
      goto LABEL_103;
    case 17:
      v26 = sub_1952157B0(a1);
      if (**(*(a1 + 8) + 16) > 0)
      {
        goto LABEL_103;
      }

      v14 = v26;
      icu::UnicodeString::UnicodeString(v85, *(a1 + 40));
      sub_19521585C(a1, v85, v14, 0);
      icu::UnicodeString::~UnicodeString(v27, v85);
LABEL_36:
      *(v14 + 112) = *(a1 + 16);
      *(v14 + 116) = *(a1 + 20);
      (*(**(*(a1 + 8) + 32) + 24))(*(*(a1 + 8) + 32));
      goto LABEL_103;
    case 18:
      v4 = *(a1 + 8);
      v5 = *(v4 + 16);
      if (*v5 > 0)
      {
        goto LABEL_75;
      }

      v44 = 66051;
      goto LABEL_73;
    case 19:
      v4 = *(a1 + 8);
      v5 = *(v4 + 16);
      if (*v5 > 0)
      {
        goto LABEL_75;
      }

      v6 = 5;
      goto LABEL_72;
    case 20:
      sub_195215AC8(a1);
      goto LABEL_103;
    case 21:
      v36 = sub_1952157B0(a1);
      v37 = *(a1 + 8);
      if (**(v37 + 16) <= 0)
      {
        v36[31] = *(a1 + 3152);
        v36[28] = *(a1 + 16);
        v36[29] = *(a1 + 20);
        (*(**(v37 + 32) + 24))(*(v37 + 32));
        *(a1 + 1133) = 1;
      }

      goto LABEL_103;
    case 22:
      *(*(a1 + 8 * *(a1 + 1128) + 320) + 112) = *(a1 + 20);
      v16 = a1;
LABEL_61:
      sub_1952157B0(v16);
      goto LABEL_103;
    case 23:
      v46 = sub_1952157B0(a1);
      if (**(*(a1 + 8) + 16) <= 0)
      {
        *(v46 + 124) = 0;
        *(v46 + 112) = *(a1 + 16);
      }

      goto LABEL_103;
    case 24:
      v21 = sub_1952157B0(a1);
      if (**(*(a1 + 8) + 16) <= 0)
      {
        *(v21 + 112) = *(a1 + 16);
      }

      goto LABEL_103;
    case 25:
      v20 = *(a1 + 8 * *(a1 + 1128) + 328);
      *(v20 + 124) = u_charDigitValue(*(a1 + 40)) + 10 * *(v20 + 124);
      goto LABEL_103;
    case 26:
      v4 = *(a1 + 8);
      v5 = *(v4 + 16);
      if (*v5 > 0)
      {
        goto LABEL_75;
      }

      v6 = 13;
LABEL_72:
      v44 = v6 | 0x10200;
      goto LABEL_73;
    case 27:
      v7 = *(a1 + 8 * *(a1 + 1128) + 328);
      *(v7 + 116) = *(a1 + 20);
      (*(**(*(a1 + 8) + 32) + 24))(*(*(a1 + 8) + 32), *(v7 + 112));
      goto LABEL_103;
    case 28:
      v47 = *(a1 + 1128);
      *(a1 + 1128) = v47 - 1;
      v18 = *(a1 + 8 * v47 + 328);
      v19 = a1;
      goto LABEL_68;
    case 29:
      v48 = *(a1 + 1128);
      *(a1 + 1128) = v48 - 1;
      v18 = *(a1 + 8 * v48 + 328);
      v19 = a1;
      goto LABEL_68;
    case 30:
      v45 = *(a1 + 1128);
      *(a1 + 1128) = v45 - 1;
      v18 = *(a1 + 8 * v45 + 328);
      v19 = a1;
LABEL_68:
      v49 = sub_1952157B0(v19);
      if (**(*(a1 + 8) + 16) <= 0)
      {
        *(v49 + 16) = v18;
        *(v18 + 8) = v49;
      }

      goto LABEL_103;
    case 31:
      v23 = *(a1 + 8);
      v24 = *(v23 + 16);
      if (*v24 > 0)
      {
        goto LABEL_103;
      }

      v25 = 66051;
      goto LABEL_78;
    default:
      v4 = *(a1 + 8);
      v5 = *(v4 + 16);
      if (*v5 > 0)
      {
        goto LABEL_75;
      }

      v44 = 66048;
LABEL_73:
      *v5 = v44;
      v50 = *(v4 + 24);
      if (v50)
      {
        result = 0;
        *v50 = *(a1 + 28);
        *(v50 + 8) = 0;
        *(v50 + 40) = 0;
      }

      else
      {
LABEL_75:
        result = 0;
      }

      goto LABEL_104;
  }
}

uint64_t sub_1952157B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  if (*v2 > 0)
  {
    return 0;
  }

  v4 = *(a1 + 1128);
  *(a1 + 1128) = v4 + 1;
  if (v4 < 99)
  {
    operator new();
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    *v5 = *(a1 + 28);
    *(v5 + 8) = 0;
    *(v5 + 40) = 0;
  }

  result = 0;
  *v2 = 66048;
  return result;
}

uint64_t sub_19521585C(uint64_t a1, uint64_t a2, uint64_t a3, icu::UnicodeSet *a4)
{
  result = uhash_get(*(a1 + 1144), a2);
  if (!result)
  {
    if (!a4)
    {
      v9 = *(a2 + 8);
      v10 = v9;
      v11 = v9 >> 5;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = *(a2 + 12);
      }

      v13 = "a";
      if (icu::UnicodeString::doCompare(a2, 0, v12, "a", 0, -1))
      {
        icu::UnicodeString::char32At(&v13, a2, 0);
        operator new();
      }

      operator new();
    }

    operator new();
  }

  v8 = result;
  if (a4)
  {
    icu::UnicodeSet::~UnicodeSet(a4);
    result = MEMORY[0x19A8B2600]();
  }

  *(a3 + 16) = *(v8 + 8);
  return result;
}

void sub_195215AC8(uint64_t a1)
{
  v2 = &unk_1F0932C70;
  v3 = 0xFFFFFFFF00000000;
  if (**(*(a1 + 8) + 16) <= 0)
  {
    LODWORD(v3) = *(a1 + 16);
    v1 = U_ZERO_ERROR;
    operator new();
  }

  icu::ParsePosition::~ParsePosition(&v2);
}

uint64_t sub_195215CAC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  v3 = *(result + 8);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 >= 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(result + 12);
  }

  if (v6 >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = result + 10;
    do
    {
      v10 = v8 + 1;
      v11 = *(v7 + 8);
      if ((v11 & 0x8000u) == 0)
      {
        v12 = v11 >> 5;
      }

      else
      {
        v12 = *(v7 + 12);
      }

      if (v12 <= v8)
      {
        v14 = 0xFFFF;
      }

      else
      {
        if ((v11 & 2) != 0)
        {
          v13 = v9;
        }

        else
        {
          v13 = *(v7 + 24);
        }

        v14 = *(v13 + 2 * v8);
        if (v14 == 35)
        {
          if (v10 < v6)
          {
            v15 = (v13 + 2 * v10);
            v16 = v10 + 1;
            v14 = 35;
            ++v8;
            do
            {
              if (v14 == 10 || v14 == 13 || v14 == 133)
              {
                break;
              }

              v14 = v12 <= v8++ ? 0xFFFF : *v15++;
            }

            while (v16++ < v6);
            goto LABEL_26;
          }

          v14 = 35;
        }
      }

      ++v8;
LABEL_26:
      result = u_isISOControl(v14);
      if (!result)
      {
        v18 = v14;
        result = icu::UnicodeString::doAppend(a2, &v18, 0, 1);
      }
    }

    while (v8 < v6);
  }

  return result;
}

uint64_t sub_195215E28(uint64_t a1)
{
  v2 = *(a1 + 20);
  v3 = *(*(a1 + 8) + 32);
  if (*(v3 + 8) < 0)
  {
    v4 = *(v3 + 12);
  }

  else
  {
    v4 = (*(v3 + 8) >> 5);
  }

  if (v2 < v4)
  {
    v5 = icu::UnicodeString::char32At(v4, v3, v2);
    *(a1 + 20) = icu::UnicodeString::moveIndex32(*(*(a1 + 8) + 32), *(a1 + 20), 1);
    if (v5 > 132)
    {
      if (v5 != 133 && v5 != 8232)
      {
        goto LABEL_20;
      }
    }

    else if (v5 == 10)
    {
      if (*(a1 + 36) == 13)
      {
        goto LABEL_22;
      }
    }

    else if (v5 != 13)
    {
LABEL_20:
      ++*(a1 + 32);
LABEL_22:
      *(a1 + 36) = v5;
      return v5;
    }

    v7 = *(a1 + 28) + 1;
    *(a1 + 28) = v7;
    if (*(a1 + 24))
    {
      v8 = *(a1 + 8);
      v9 = *(v8 + 16);
      if (*v9 <= 0)
      {
        *v9 = 66056;
        v10 = *(v8 + 24);
        if (v10)
        {
          *v10 = v7;
          *(v10 + 4) = 0;
          *(v10 + 8) = 0;
          *(v10 + 40) = 0;
        }
      }

      *(a1 + 24) = 0;
    }

    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t *sub_195215F3C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 20);
  *(a1 + 16) = *(a1 + 20);
  result = sub_195215E28(a1);
  *a2 = result;
  *(a2 + 4) = 0;
  if (result == 39)
  {
    result = icu::UnicodeString::char32At(*(a1 + 8), *(*(a1 + 8) + 32), *(a1 + 20));
    if (result != 39)
    {
      v6 = *(a1 + 24) == 0;
      *(a1 + 24) = *(a1 + 24) == 0;
      if (v6)
      {
        v13 = 40;
      }

      else
      {
        v13 = 41;
      }

      *a2 = v13;
      *(a2 + 4) = 0;
      return result;
    }

    result = sub_195215E28(a1);
    *a2 = result;
    *(a2 + 4) = 1;
  }

  if (*(a1 + 24))
  {
    *(a2 + 4) = 1;
  }

  else
  {
    if (result == 35)
    {
      do
      {
        result = sub_195215E28(a1);
        *a2 = result;
        v6 = (result + 1) > 0xE || ((1 << (result + 1)) & 0x4801) == 0;
        v7 = !v6 || result == 8232;
      }

      while (!v7 && result != 133);
    }

    if (result == 92)
    {
      *(a2 + 4) = 1;
      v8 = *(a1 + 20);
      result = icu::UnicodeString::unescapeAt(*(*(a1 + 8) + 32), v4);
      *a2 = result;
      v9 = *(a1 + 20) - v8;
      if (!v9)
      {
        v10 = *(a1 + 8);
        v11 = *(v10 + 16);
        if (*v11 <= 0)
        {
          *v11 = 66049;
          v12 = *(v10 + 24);
          if (v12)
          {
            *v12 = *(a1 + 28);
            *(v12 + 8) = 0;
            *(v12 + 40) = 0;
          }
        }
      }

      *(a1 + 32) += v9;
    }
  }

  return result;
}

uint64_t sub_1952160B0(uint64_t result)
{
  v24 = *MEMORY[0x1E69E9840];
  if (**(*(result + 8) + 16) <= 0)
  {
    v1 = result;
    result = sub_195215F3C(result, result + 40);
    v2 = *(v1 + 8);
    if (*v2[2] <= 0)
    {
      v3 = v1 + 120;
      LOWORD(v4) = 1;
      while (1)
      {
        for (i = &unk_195445B60 + 8 * v4 + 7; ; i += 8)
        {
          v6 = *(i - 3);
          if (v6 <= 0x7E && !*(v1 + 44) && *(v1 + 40) == v6)
          {
            break;
          }

          if (*(i - 3) > 0xFDu)
          {
            if (v6 != 254 || *(v1 + 44))
            {
              break;
            }
          }

          else if (v6 == 252)
          {
            if (*(v1 + 40) == -1)
            {
              break;
            }
          }

          else if (v6 == 253)
          {
            if (*(v1 + 44) && (*(v1 + 40) | 0x20) == 0x70)
            {
              break;
            }
          }

          else if (v6 <= -17 && !*(v1 + 44))
          {
            v7 = *(v1 + 40);
            if (v7 != -1)
            {
              if (icu::UnicodeSet::contains((v1 + 1152 + 200 * (v6 & 0x7F)), v7))
              {
                break;
              }
            }
          }
        }

        result = sub_195214B7C(v1, *(i - 7));
        if (!result)
        {
          break;
        }

        v8 = *(i - 1);
        if (*(i - 1))
        {
          v9 = *(v1 + 320);
          v10 = v9 + 1;
          *(v1 + 320) = v9 + 1;
          if (v9 >= 99)
          {
            v11 = *(v1 + 8);
            v12 = *(v11 + 16);
            if (*v12 <= 0)
            {
              *v12 = 66048;
              v13 = *(v11 + 24);
              if (v13)
              {
                *v13 = *(v1 + 28);
                *(v13 + 8) = 0;
                *(v13 + 40) = 0;
              }
            }

            *(v1 + 320) = v9;
            v10 = v9;
          }

          *(v3 + 2 * v10) = v8;
        }

        if (*i)
        {
          result = sub_195215F3C(v1, v1 + 40);
        }

        v4 = *(i - 2);
        if (v4 == 255)
        {
          v14 = *(v1 + 320);
          v4 = *(v3 + 2 * v14);
          *(v1 + 320) = v14 - 1;
          v2 = *(v1 + 8);
          if (v14 <= 0)
          {
            v15 = v2[2];
            if (*v15 <= 0)
            {
              *v15 = 66048;
              v16 = v2[3];
              if (v16)
              {
                *v16 = *(v1 + 28);
                *(v16 + 8) = 0;
                *(v16 + 40) = 0;
              }
            }

            *(v1 + 320) = v14;
          }
        }

        else
        {
          v2 = *(v1 + 8);
        }

        if (*v2[2] > 0 || v4 == 0)
        {
          goto LABEL_49;
        }
      }

      v2 = *(v1 + 8);
    }

LABEL_49:
    if (!v2[7])
    {
      *(*(v1 + 8) + 56) = sub_1952157B0(v1);
      result = sub_1952157B0(v1);
      if (**(*(v1 + 8) + 16) <= 0)
      {
        v18 = result;
        v22 = "a";
        icu::UnicodeString::UnicodeString(v23, 1, &v22);
        sub_19521585C(v1, v23, v18, 0);
        result = icu::UnicodeString::~UnicodeString(v19, v23);
        v20 = *(*(v1 + 8) + 56);
        *(v20 + 16) = v18;
        *(v18 + 8) = v20;
        *(v1 + 1128) -= 2;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

double sub_1952163C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 52) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_1952163E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 16);
      v4 = *(v2 + 24);
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      *(v2 + 16) = 0;
      MEMORY[0x19A8B2600](v2, 0x1020C40F492414DLL);
      v2 = v4;
    }

    while (v4);
  }

  ucptrie_close(*(a1 + 32));
  umutablecptrie_close(*(a1 + 24));
  return a1;
}

uint64_t sub_195216918(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2[2] < 1)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = *(icu::UVector::elementAt(v2, v3) + 8);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        if (*v5 == 2)
        {
          v6 = *(v5 + 56) < 0 ? *(v5 + 60) : *(v5 + 56) >> 5;
          if (!icu::UnicodeString::doCompare(v5 + 48, 0, v6, "d", 0, -1))
          {
            break;
          }
        }
      }
    }

    ++v3;
    v2 = *(a1 + 16);
    if (v3 >= v2[2])
    {
      return 0;
    }
  }

  return 1;
}

void sub_1952169E4(int a1, icu::UVector *this)
{
  if (*(this + 2) >= 1)
  {
    icu::UVector::elementAt(this, 0);
    sub_195216A4C();
  }
}

void sub_195216AE4(uint64_t a1)
{
  *(a1 + 24) = umutablecptrie_open(0, 0, *(a1 + 8));
  for (i = *(a1 + 16); i; i = *(i + 24))
  {
    v3 = *(a1 + 8);
    if (*v3 >= 1)
    {
      break;
    }

    umutablecptrie_setRange(*(a1 + 24), *i, *(i + 4), *(i + 8), v3);
  }
}

uint64_t sub_195216B48(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    while (1)
    {
      v3 = *(v2 + 8);
      v4 = a2;
      if (v3 == HIDWORD(a2))
      {
        goto LABEL_5;
      }

      if (v3 > SHIDWORD(a2))
      {
        break;
      }

LABEL_6:
      v2 = *(v2 + 24);
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    v4 = v3 - 1;
LABEL_5:
    *(v2 + 8) = v4;
    goto LABEL_6;
  }

LABEL_7:
  v5 = *(result + 48);
  --*(result + 44);
  if (v5 >= SHIDWORD(a2))
  {
    *(result + 48) = v5 - 1;
  }

  return result;
}

uint64_t sub_195216B98(uint64_t a1)
{
  if (**(a1 + 8) > 0)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    return *(a1 + 40);
  }

  v3 = *(a1 + 44);
  v4 = *(a1 + 24);
  v5 = umutablecptrie_buildImmutable();
  *(a1 + 32) = v5;
  result = ucptrie_toBinary(v5, 0, 0, *(a1 + 8));
  *(a1 + 40) = result;
  v6 = *(a1 + 8);
  if (*v6 == 15)
  {
    *v6 = 0;
  }

  return result;
}

uint64_t sub_195216C58(uint64_t result, uint64_t a2, int *a3)
{
  *result = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  *(result + 16) = 0;
  *(result + 8) = v3;
  *(result + 12) = v4;
  *(result + 24) = 0;
  if (*a3 <= 0)
  {
    operator new();
  }

  return result;
}

void *sub_195216D38(void *result, int *a2)
{
  result[2] = 0;
  *(result + 6) = 0;
  *result = 0;
  result[3] = 0;
  if (*a2 <= 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_195216DAC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  *result = a2;
  *(result + 8) = v2;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_195216DC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 16);
      v4 = *(v2 + 24);
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      *(v2 + 16) = 0;
      MEMORY[0x19A8B2600](v2, 0x1020C40CD6B3969);
      v2 = v4;
    }

    while (v4);
  }

  utrie_close(*(a1 + 24));
  return a1;
}

icu::UVector *sub_1952172AC(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  result = *(a1 + 16);
  if (*(result + 2) >= 1)
  {
    v3 = 0;
    while (1)
    {
      v4 = icu::UVector::elementAt(result, v3);
      v23 = 0;
      v22 = 0u;
      v21 = 0u;
      v20 = 0u;
      v19 = &unk_1F0935D00;
      LOWORD(v20) = 2;
      v5 = *(v4 + 8);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          if (*v6 == 2)
          {
            icu::UnicodeString::operator=(&v19, (v6 + 48));
          }
        }
      }

      v14 = "d";
      icu::UnicodeString::UnicodeString(v15, 1, &v14);
      v7 = v16;
      if (v16)
      {
        v11 = (v20 & 1) == 0;
      }

      else
      {
        v8 = (v20 & 0x8000u) == 0 ? v20 >> 5 : DWORD1(v20);
        v9 = (v16 & 0x8000u) == 0 ? v16 >> 5 : *&v17[2];
        v10 = (v16 & 2) != 0 ? v17 : v18;
        v11 = icu::UnicodeString::doCompare(&v19, 0, v8, v10, v9 & (v9 >> 31), v9 & ~(v9 >> 31));
      }

      icu::UnicodeString::~UnicodeString(v7, v15);
      if (!v11)
      {
        break;
      }

      icu::UnicodeString::~UnicodeString(v14, &v19);
      ++v3;
      result = *(a1 + 16);
      if (v3 >= *(result + 2))
      {
        goto LABEL_23;
      }
    }

    v12 = (*(a1 + 8) | 0x4000u);
    *(a1 + 8) = v12;
    result = icu::UnicodeString::~UnicodeString(v12, &v19);
  }

LABEL_23:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195217478(uint64_t a1)
{
  result = utrie_serialize(*(a1 + 24), 0, 0, sub_1952174C4, 1, *(a1 + 8));
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1952174C4(uint64_t a1, signed int a2, int a3)
{
  v4 = a2;
  v10 = 0;
  v6 = a2 + 1024;
  while (1)
  {
    v7 = utrie_get32(a1, v4, &v10);
    if (!v10)
    {
      break;
    }

    v8 = 32;
LABEL_6:
    v4 += v8;
    if (v4 >= v6)
    {
      return 0;
    }
  }

  if (!v7)
  {
    v8 = 1;
    goto LABEL_6;
  }

  return a3 | 0x8000u;
}

uint64_t sub_195217580(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  while (v2[2] != a2)
  {
    v2 = *(v2 + 3);
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *v2;
}

void sub_1952175AC(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 0;
  v3 = *a3;
  operator new();
}

void sub_195217684(uint64_t a1, unsigned int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  v2 = *a2;
  operator new();
}

void *sub_1952176F4(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  *a1 = &unk_1F0932FC8;
  a1[1] = a3;
  a1[3] = a2;
  icu::UnicodeString::UnicodeString((a1 + 4), 0xFFFF);
  a1[2] = 0;
  a1[12] = 0;
  v6 = uhash_open(uhash_hashUnicodeString, uhash_compareUnicodeString, 0, a4);
  a1[2] = v6;
  if (*a4 <= 0)
  {
    uhash_setValueDeleter(v6, sub_1952177A0);
  }

  return a1;
}

uint64_t sub_1952177A0(uint64_t result)
{
  if (result)
  {
    sub_195217BE0(result);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

void sub_1952177E4(void ***a1)
{
  *a1 = &unk_1F0932FC8;
  uhash_close(a1[2]);
  icu::UnicodeString::~UnicodeString(v2, (a1 + 4));

  icu::SymbolTable::~SymbolTable(a1);
}

void sub_195217848(void ***a1)
{
  sub_1952177E4(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195217880(uint64_t a1, uint64_t a2)
{
  result = uhash_get(*(a1 + 16), a2);
  if (result)
  {
    v4 = *(*(result + 72) + 16);
    if (*v4)
    {
      result = v4 + 48;
      *(a1 + 96) = 0;
    }

    else
    {
      *(a1 + 96) = *(*(v4 + 16) + 32);
      return a1 + 32;
    }
  }

  return result;
}

uint64_t sub_1952178D8(uint64_t a1, int a2)
{
  if (a2 != 0xFFFF)
  {
    return 0;
  }

  result = *(a1 + 96);
  *(a1 + 96) = 0;
  return result;
}

void sub_1952178FC(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v6 = 0;
  v7 = *(a2 + 8);
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0;
  *a4 = &unk_1F0935D00;
  *(a4 + 8) = 2;
  v8 = a1 + 10;
  if (v7 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  v21 = v9;
  v10 = v9 - v7;
  v11 = v7;
  while (1)
  {
    if (v10 == v6)
    {
      v19 = v21;
      goto LABEL_21;
    }

    v12 = v6;
    v13 = v7 + v6;
    v14 = *(a1 + 8);
    v15 = (v14 & 0x8000u) == 0 ? v14 >> 5 : *(a1 + 12);
    if (v15 > v13)
    {
      break;
    }

    v17 = 0xFFFF;
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_17:
    isIDPart = u_isIDPart(v17);
    ++v11;
    v6 = v12 + 1;
    if (!isIDPart)
    {
      v19 = v7 + v12;
      goto LABEL_21;
    }
  }

  if ((v14 & 2) != 0)
  {
    v16 = v8;
  }

  else
  {
    v16 = *(a1 + 24);
  }

  v17 = *(v16 + 2 * v7 + 2 * v12);
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_16:
  if (u_isIDStart(v17))
  {
    goto LABEL_17;
  }

  v19 = v11;
LABEL_21:
  if (v19 != v7)
  {
    *(a2 + 8) = v19;
    v20 = *(*a1 + 24);

    v20(a1, v7);
  }
}

uint64_t sub_195217AA0(uint64_t a1, uint64_t a2)
{
  result = uhash_get(*(a1 + 16), a2);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t sub_195217AC4(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    result = uhash_get(*(result + 16), a2);
    if (!result)
    {
      operator new();
    }

    *a4 = 66054;
  }

  return result;
}

uint64_t sub_195217BB0(uint64_t result)
{
  *(result + 8) = &unk_1F0935D00;
  *(result + 16) = 2;
  *(result + 72) = 0;
  return result;
}

uint64_t sub_195217BE0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (*(v2 + 16))
  {
    v3 = sub_1952114AC(*(v2 + 16));
    MEMORY[0x19A8B2600](v3, 0x10B2C405CFBA51ELL);
    v2 = *(a1 + 72);
  }

  *(v2 + 16) = 0;
  v4 = sub_1952114AC(v2);
  MEMORY[0x19A8B2600](v4, 0x10B2C405CFBA51ELL);
  icu::UnicodeString::~UnicodeString((a1 + 8));
  return a1;
}

void *sub_195217C58(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  *a1 = &unk_1F0933048;
  a1[1] = a3;
  a1[3] = a2;
  icu::UnicodeString::UnicodeString((a1 + 4), 0xFFFF);
  a1[2] = 0;
  a1[12] = 0;
  v6 = uhash_open(uhash_hashUnicodeString, uhash_compareUnicodeString, 0, a4);
  a1[2] = v6;
  if (*a4 <= 0)
  {
    uhash_setValueDeleter(v6, sub_195217D04);
  }

  return a1;
}

uint64_t sub_195217D04(uint64_t result)
{
  if (result)
  {
    sub_195217C54(result);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

void sub_195217D48(void ***a1)
{
  *a1 = &unk_1F0933048;
  uhash_close(a1[2]);
  icu::UnicodeString::~UnicodeString(v2, (a1 + 4));

  icu::SymbolTable::~SymbolTable(a1);
}

void sub_195217DAC(void ***a1)
{
  sub_195217D48(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195217DE4(uint64_t a1, uint64_t a2)
{
  result = uhash_get(*(a1 + 16), a2);
  if (result)
  {
    v4 = *(*(result + 72) + 16);
    if (*v4)
    {
      result = v4 + 48;
      *(a1 + 96) = 0;
    }

    else
    {
      *(a1 + 96) = *(*(v4 + 16) + 32);
      return a1 + 32;
    }
  }

  return result;
}

uint64_t sub_195217E3C(uint64_t a1, int a2)
{
  if (a2 != 0xFFFF)
  {
    return 0;
  }

  result = *(a1 + 96);
  *(a1 + 96) = 0;
  return result;
}

void sub_195217E60(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v6 = 0;
  v7 = *(a2 + 8);
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0;
  *a4 = &unk_1F0935D00;
  *(a4 + 8) = 2;
  v8 = a1 + 10;
  if (v7 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7;
  }

  v21 = v9;
  v10 = v9 - v7;
  v11 = v7;
  while (1)
  {
    if (v10 == v6)
    {
      v19 = v21;
      goto LABEL_21;
    }

    v12 = v6;
    v13 = v7 + v6;
    v14 = *(a1 + 8);
    v15 = (v14 & 0x8000u) == 0 ? v14 >> 5 : *(a1 + 12);
    if (v15 > v13)
    {
      break;
    }

    v17 = 0xFFFF;
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_17:
    isIDPart = u_isIDPart(v17);
    ++v11;
    v6 = v12 + 1;
    if (!isIDPart)
    {
      v19 = v7 + v12;
      goto LABEL_21;
    }
  }

  if ((v14 & 2) != 0)
  {
    v16 = v8;
  }

  else
  {
    v16 = *(a1 + 24);
  }

  v17 = *(v16 + 2 * v7 + 2 * v12);
  if (v12)
  {
    goto LABEL_17;
  }

LABEL_16:
  if (u_isIDStart(v17))
  {
    goto LABEL_17;
  }

  v19 = v11;
LABEL_21:
  if (v19 != v7)
  {
    *(a2 + 8) = v19;
    v20 = *(*a1 + 24);

    v20(a1, v7);
  }
}

uint64_t sub_195218004(uint64_t a1, uint64_t a2)
{
  result = uhash_get(*(a1 + 16), a2);
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t sub_195218028(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    result = uhash_get(*(result + 16), a2);
    if (!result)
    {
      operator new();
    }

    *a4 = 66054;
  }

  return result;
}

uint64_t sub_1952180EC(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 1;
  if (*a4 <= 0)
  {
    operator new();
  }

  return result;
}

void *sub_19521816C(void *a1)
{
  v2 = a1[3];
  if (*(v2 + 2) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = icu::UVector::elementAt(v2, v3);
      if (v4)
      {
        v5 = sub_19521AAB0(v4);
        MEMORY[0x19A8B2600](v5, 0x1020C40B8E285AFLL);
      }

      ++v3;
      v2 = a1[3];
    }

    while (v3 < *(v2 + 2));
  }

  (*(*v2 + 8))(v2);
  v6 = a1[4];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

uint64_t sub_19521826C(uint64_t result)
{
  v1 = *(result + 16);
  if (*v1 <= 0)
  {
    v2 = result;
    result = **(result + 8);
    if (result)
    {
      result = sub_195211540(result, v1, 0);
      **(v2 + 8) = result;
      if (**(v2 + 16) <= 0)
      {
        if (sub_195216C50(*(*v2 + 160)))
        {
          operator new();
        }

        operator new();
      }
    }
  }

  return result;
}

uint64_t sub_19521845C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = *a2;
    if (*a2 < 7u && ((0x71u >> v4) & 1) != 0)
    {
      v5 = 0x30u >> v4;
LABEL_15:
      *(a2 + 120) = v5 & 1;
      return result;
    }

    sub_19521845C(result, *(a2 + 16));
    result = sub_19521845C(v3, *(a2 + 24));
    v6 = *a2;
    if (*a2 > 9)
    {
      LOBYTE(v5) = 1;
      if (v6 == 10 || v6 == 12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v6 == 8)
      {
        LOBYTE(v5) = *(*(a2 + 16) + 120);
        if (!v5)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      if (v6 == 9)
      {
        if (*(*(a2 + 16) + 120))
        {
          LOBYTE(v5) = 1;
          goto LABEL_15;
        }

LABEL_14:
        LOBYTE(v5) = *(*(a2 + 24) + 120) != 0;
        goto LABEL_15;
      }
    }

    LOBYTE(v5) = 0;
    goto LABEL_15;
  }

  return result;
}

void sub_195218534(uint64_t a1, int *a2)
{
  if (a2)
  {
    if ((*a2 - 3) > 3)
    {
      sub_195218534(a1, *(a2 + 2));
      sub_195218534(a1, *(a2 + 3));
      v6 = *a2;
      if ((*a2 - 10) >= 3)
      {
        if (v6 == 8)
        {
          sub_1952195CC(a1, *(a2 + 17), *(*(a2 + 2) + 136));
          if (!*(*(a2 + 2) + 120))
          {
            return;
          }
        }

        else
        {
          if (v6 != 9)
          {
            return;
          }

          sub_1952195CC(a1, *(a2 + 17), *(*(a2 + 2) + 136));
        }

        v7 = *(a2 + 17);
        v8 = *(a2 + 3);
      }

      else
      {
        v7 = *(a2 + 17);
        v8 = *(a2 + 2);
      }

      v9 = *(v8 + 136);

      sub_1952195CC(a1, v7, v9);
    }

    else
    {
      v4 = *(a2 + 17);
      v5 = *(a1 + 16);

      icu::UVector::addElement(v4, a2, v5);
    }
  }
}

void sub_19521863C(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return;
  }

  if ((*a2 - 3) <= 3)
  {
    v4 = *(a2 + 18);
    v5 = *(a1 + 16);

    icu::UVector::addElement(v4, a2, v5);
    return;
  }

  sub_19521863C(a1, *(a2 + 2));
  sub_19521863C(a1, *(a2 + 3));
  v6 = *a2;
  if ((*a2 - 10) >= 3)
  {
    if (v6 != 8)
    {
      if (v6 != 9)
      {
        return;
      }

      sub_1952195CC(a1, *(a2 + 18), *(*(a2 + 2) + 144));
      v7 = *(a2 + 18);
      v8 = *(a2 + 3);
      goto LABEL_11;
    }

    sub_1952195CC(a1, *(a2 + 18), *(*(a2 + 3) + 144));
    if (!*(*(a2 + 3) + 120))
    {
      return;
    }
  }

  v7 = *(a2 + 18);
  v8 = *(a2 + 2);
LABEL_11:
  v9 = *(v8 + 144);

  sub_1952195CC(a1, v7, v9);
}

void sub_195218740(uint64_t a1, int *a2)
{
  if (a2)
  {
    if (*a2 != 3 && *a2 != 6)
    {
      sub_195218740(a1, *(a2 + 2));
      sub_195218740(a1, *(a2 + 3));
      v5 = *a2;
      if (*a2 == 8)
      {
        v6 = *(*(a2 + 2) + 144);
        if (!*(v6 + 2))
        {
          return;
        }

        v7 = 0;
        do
        {
          v8 = icu::UVector::elementAt(v6, v7);
          sub_1952195CC(a1, *(v8 + 152), *(*(a2 + 3) + 136));
          ++v7;
        }

        while (v7 < *(v6 + 2));
        v5 = *a2;
      }

      if ((v5 & 0xFFFFFFFE) == 0xA)
      {
        v9 = *(a2 + 18);
        if (*(v9 + 2))
        {
          v10 = 0;
          do
          {
            v11 = icu::UVector::elementAt(v9, v10);
            sub_1952195CC(a1, *(v11 + 152), *(a2 + 17));
            ++v10;
            v9 = *(a2 + 18);
          }

          while (v10 < *(v9 + 2));
        }
      }
    }
  }
}

void sub_195218838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  icu::UVector::UVector(v18, *(a1 + 16));
  v6 = *(a1 + 16);
  if (*v6 <= 0)
  {
    sub_1952116DC(a2, v18, 3, v6);
    v7 = *(a1 + 16);
    if (*v7 <= 0)
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      icu::UVector::UVector(v16, v7);
      sub_195219898(a1, v16, a2);
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      icu::UVector::UVector(v14, *(a1 + 16));
      if (SDWORD2(v16[0]) >= 1)
      {
        v8 = 0;
        do
        {
          v9 = icu::UVector::elementAt(v16, v8);
          if (*(v9 + 130))
          {
            sub_1952195CC(a1, v14, *(v9 + 136));
          }

          ++v8;
        }

        while (v8 < SDWORD2(v16[0]));
      }

      if (**(a1 + 16) <= 0 && SDWORD2(v18[0]) >= 1)
      {
        v10 = 0;
        do
        {
          v11 = icu::UVector::elementAt(v18, v10);
          if ((icu::UVector::indexOf(*(v11 + 152), a3, 0) & 0x80000000) == 0 && SDWORD2(v14[0]) >= 1)
          {
            v12 = 0;
            do
            {
              v13 = icu::UVector::elementAt(v14, v12);
              if (*v13 == 3 && *(v11 + 124) == *(v13 + 124))
              {
                sub_1952195CC(a1, *(v11 + 152), *(v13 + 152));
              }

              ++v12;
            }

            while (v12 < SDWORD2(v14[0]));
          }

          ++v10;
        }

        while (v10 < SDWORD2(v18[0]));
      }

      icu::UVector::~UVector(v14);
      icu::UVector::~UVector(v16);
    }
  }

  icu::UVector::~UVector(v18);
}

void sub_195218A04(uint64_t a1)
{
  if (**(a1 + 16) <= 0)
  {
    v2 = *(**(a1 + 8) + 16);
    v3 = *(*(v2 + 24) + 136);
    if (*(v3 + 2) >= 1)
    {
      v4 = 0;
      v5 = *(v2 + 16);
      do
      {
        v6 = icu::UVector::elementAt(v3, v4);
        if (*v6 == 3 && *(v6 + 124) == *(v5 + 124))
        {
          sub_1952195CC(a1, *(v5 + 152), *(v6 + 152));
        }

        ++v4;
      }

      while (v4 < *(v3 + 2));
    }
  }
}

int **sub_195218AAC(int **result)
{
  if (*result[2] <= 0)
  {
    sub_195216C28(*(*result + 20));
    operator new();
  }

  return result;
}

void sub_195219008(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (*v3 <= 0)
  {
    v19 = v1;
    v20 = v2;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    icu::UVector::UVector(v17, v3);
    v5 = *(a1 + 16);
    if (*v5 <= 0)
    {
      sub_1952116DC(**(a1 + 8), v17, 6, v5);
      if (**(a1 + 16) <= 0 && SDWORD2(v17[0]) >= 1)
      {
        v6 = 0;
        do
        {
          v7 = icu::UVector::elementAt(v17, v6);
          v8 = *(a1 + 24);
          if (*(v8 + 2) >= 1)
          {
            v9 = 0;
            do
            {
              v10 = icu::UVector::elementAt(v8, v9);
              if ((icu::UVector::indexOf(*(v10 + 32), v7, 0) & 0x80000000) == 0)
              {
                v11 = *(v10 + 4);
                if (!v11)
                {
                  v12 = *(v7 + 124);
                  if ((v12 & 0x80000000) != 0 || (v13 = *(a1 + 40), *(v13 + 8) <= v12) || (v11 = *(*(v13 + 24) + 4 * v12)) == 0)
                  {
                    v11 = 1;
                  }

                  *(v10 + 4) = v11;
                }

                if (v11 == 1)
                {
                  v14 = *(v7 + 124);
                  if (v14)
                  {
                    if ((v14 & 0x80000000) != 0 || (v15 = *(a1 + 40), *(v15 + 8) <= v14))
                    {
                      v16 = 0;
                    }

                    else
                    {
                      v16 = *(*(v15 + 24) + 4 * v14);
                    }

                    *(v10 + 4) = v16;
                  }
                }
              }

              ++v9;
              v8 = *(a1 + 24);
            }

            while (v9 < *(v8 + 2));
          }

          ++v6;
        }

        while (v6 < SDWORD2(v17[0]));
      }
    }

    icu::UVector::~UVector(v17);
  }
}

void sub_19521918C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (*v3 <= 0)
  {
    v15 = v1;
    v16 = v2;
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    icu::UVector::UVector(v13, v3);
    sub_1952116DC(**(a1 + 8), v13, 4, *(a1 + 16));
    if (**(a1 + 16) <= 0 && SDWORD2(v13[0]) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = icu::UVector::elementAt(v13, v5);
        v7 = *(a1 + 24);
        if (*(v7 + 2) >= 1)
        {
          v8 = 0;
          do
          {
            v9 = icu::UVector::elementAt(v7, v8);
            if ((icu::UVector::indexOf(*(v9 + 32), v6, 0) & 0x80000000) == 0)
            {
              v10 = *(v6 + 124);
              if ((v10 & 0x80000000) != 0 || (v11 = *(a1 + 40), *(v11 + 8) <= v10))
              {
                v12 = 0;
              }

              else
              {
                v12 = *(*(v11 + 24) + 4 * v10);
              }

              *(v9 + 8) = v12;
            }

            ++v8;
            v7 = *(a1 + 24);
          }

          while (v8 < *(v7 + 2));
        }

        ++v5;
      }

      while (v5 < SDWORD2(v13[0]));
    }

    icu::UVector::~UVector(v13);
  }
}

void sub_1952192C0(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (*v3 <= 0)
  {
    v13 = v1;
    v14 = v2;
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    icu::UVector::UVector(v11, v3);
    v5 = *(a1 + 16);
    if (*v5 <= 0)
    {
      sub_1952116DC(**(a1 + 8), v11, 5, v5);
      if (**(a1 + 16) <= 0 && SDWORD2(v11[0]) >= 1)
      {
        v6 = 0;
        do
        {
          v7 = icu::UVector::elementAt(v11, v6);
          v8 = *(a1 + 24);
          if (*(v8 + 2) >= 1)
          {
            v9 = 0;
            do
            {
              v10 = icu::UVector::elementAt(v8, v9);
              if ((icu::UVector::indexOf(*(v10 + 32), v7, 0) & 0x80000000) == 0)
              {
                sub_195219928(a1, (v10 + 16), *(v7 + 124));
              }

              ++v9;
              v8 = *(a1 + 24);
            }

            while (v9 < *(v8 + 2));
          }

          ++v6;
        }

        while (v6 < SDWORD2(v11[0]));
      }
    }

    icu::UVector::~UVector(v11);
  }
}

icu::UVector *sub_1952193E8(UErrorCode **a1)
{
  v2 = *(*a1 + 23);
  if (!*(v2 + 2))
  {
    icu::UVector::addElement(v2, 1, a1[2]);
    icu::UVector::addElement(*(*a1 + 23), 0, a1[2]);
  }

  result = a1[3];
  if (*(result + 2) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = icu::UVector::elementAt(result, v4);
      v6 = v5;
      v7 = *(v5 + 16);
      if (v7)
      {
        *(v5 + 24) = -1;
        v8 = *(*a1 + 23);
        if (v8[2] < 1)
        {
          goto LABEL_21;
        }

        v9 = 0;
        while (1)
        {
          v10 = icu::UVector::elementAti(v8, v9);
          v11 = v9 + 1;
          v12 = v7[2];
          if (v12 == icu::UVector::elementAti(*(*a1 + 23), v9))
          {
            v13 = v7[2];
            if (v13 < 1)
            {
              i = 0;
            }

            else
            {
              for (i = 0; i < v13; ++i)
              {
                v15 = icu::UVector::elementAti(v7, i);
                v16 = icu::UVector::elementAti(*(*a1 + 23), v11 + i);
                v13 = v7[2];
                if (v15 != v16)
                {
                  break;
                }
              }
            }

            if (i == v13)
            {
              break;
            }
          }

          v9 = v11 + v10;
          v8 = *(*a1 + 23);
          if ((v11 + v10) >= v8[2])
          {
            v9 = *(v6 + 24);
            goto LABEL_20;
          }
        }

        *(v6 + 24) = v9;
LABEL_20:
        if (v9 == -1)
        {
LABEL_21:
          v17 = *(*a1 + 23);
          *(v6 + 24) = *(v17 + 2);
          icu::UVector::addElement(v17, v7[2], a1[2]);
          if (v7[2] >= 1)
          {
            v18 = 0;
            do
            {
              v19 = *(*a1 + 23);
              v20 = icu::UVector::elementAti(v7, v18);
              icu::UVector::addElement(v19, v20, a1[2]);
              ++v18;
            }

            while (v18 < v7[2]);
          }
        }
      }

      else
      {
        *(v5 + 24) = 0;
      }

      ++v4;
      result = a1[3];
    }

    while (v4 < *(result + 2));
  }

  return result;
}

void sub_1952195CC(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = a2[2];
  v7 = a3[2];
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v8 = &v26[2];
  v24 = 0;
  v25 = &v26[2];
  v26[0] = 16;
  memset(v23, 0, sizeof(v23));
  v22 = v23 + 1;
  if (v6 >= 17)
  {
    v9 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
    if (!v9)
    {
      goto LABEL_33;
    }

    v8 = v9;
    if (LOBYTE(v26[1]))
    {
      free(v25);
    }

    v25 = v8;
    v26[0] = v6;
    LOBYTE(v26[1]) = 1;
  }

  if (v7 <= 16)
  {
    v11 = v23 + 1;
  }

  else
  {
    v10 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = v10;
    if (BYTE4(v23[0]))
    {
      free(v23 + 8);
    }

    v22 = v11;
    BYTE4(v23[0]) = 1;
  }

  icu::UVector::toArray(a2, v8);
  icu::UVector::toArray(a3, v11);
  icu::UVector::setSize(a2, v7 + v6, *(a1 + 16));
  if (**(a1 + 16) <= 0)
  {
    v12 = 0;
    v13 = &v8[v6];
    v14 = &v11[v7];
    if (v7 >= 1 && v6 >= 1)
    {
      v12 = 0;
      do
      {
        v15 = *v8;
        v16 = *v11;
        if (*v8 == *v11)
        {
          ++v11;
          icu::UVector::setElementAt(a2, v16, v12);
          ++v8;
        }

        else
        {
          if (bswap64(*v8) >= bswap64(*v11))
          {
            ++v11;
            v17 = a2;
          }

          else
          {
            ++v8;
            v17 = a2;
            v16 = v15;
          }

          icu::UVector::setElementAt(v17, v16, v12);
        }

        ++v12;
      }

      while (v11 < v14 && v8 < v13);
    }

    if (v8 >= v13)
    {
      v19 = v12;
    }

    else
    {
      do
      {
        v18 = *v8++;
        v19 = v12 + 1;
        icu::UVector::setElementAt(a2, v18, v12++);
      }

      while (v8 < v13);
    }

    if (v11 >= v14)
    {
      v21 = v19;
    }

    else
    {
      do
      {
        v20 = *v11++;
        v21 = v19 + 1;
        icu::UVector::setElementAt(a2, v20, v19++);
      }

      while (v11 < v14);
    }

    icu::UVector::setSize(a2, v21, *(a1 + 16));
  }

LABEL_33:
  if (BYTE4(v23[0]))
  {
    free(v22);
  }

  if (LOBYTE(v26[1]))
  {
    free(v25);
  }
}

uint64_t sub_195219898(uint64_t result, icu::UVector *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = result;
    do
    {
      v6 = *(v5 + 16);
      if (*v6 > 0)
      {
        break;
      }

      if (*(v3 + 129))
      {

        return icu::UVector::addElement(a2, v3, v6);
      }

      result = sub_195219898(v5, a2, *(v3 + 16));
      v3 = *(v3 + 24);
    }

    while (v3);
  }

  return result;
}

uint64_t sub_195219928(uint64_t result, icu::UVector **a2, int a3)
{
  v4 = result;
  v5 = *a2;
  if (!*a2)
  {
    operator new();
  }

  v6 = *(result + 16);
  if (*v6 <= 0)
  {
    v7 = *(v5 + 2);
    if (v7 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      while (1)
      {
        result = icu::UVector::elementAti(v5, v8);
        v9 = 2 * (result > a3);
        if (result == a3)
        {
          v9 = 1;
        }

        if (v9)
        {
          break;
        }

        if (v7 == ++v8)
        {
          v8 = v7;
          goto LABEL_13;
        }
      }

      if (v9 != 2)
      {
        return result;
      }

LABEL_13:
      v6 = *(v4 + 16);
    }

    return icu::UVector::insertElementAt(v5, a3, v8, v6);
  }

  return result;
}

uint64_t sub_195219A28(icu::UVector **a1, int *a2)
{
  v4 = *(a1[3] + 2);
  v5 = sub_195216C28(*(*a1 + 20));
  v6 = v5 - 1;
  v7 = *a2;
  if (*a2 < v5 - 1)
  {
    v8 = v5;
    do
    {
      v9 = v8;
      if (v7 < sub_195216C48(*(*a1 + 20)))
      {
        v9 = sub_195216C48(*(*a1 + 20));
      }

      v10 = *a2;
      v11 = *a2;
      while (++v11 < v9)
      {
        if (v4 >= 1)
        {
          a2[1] = v11;
          v12 = 1;
          do
          {
            v13 = *(icu::UVector::elementAt(a1[3], v12 - 1) + 40);
            v10 = *a2;
            if (*a2 < 0 || *(v13 + 8) <= v10)
            {
              LOWORD(v14) = 0;
            }

            else
            {
              v14 = *(*(v13 + 24) + 4 * v10);
            }

            v11 = a2[1];
            if (v11 < 0 || *(v13 + 8) <= v11)
            {
              LOWORD(v15) = 0;
            }

            else
            {
              v15 = *(*(v13 + 24) + 4 * v11);
            }

            v16 = (v15 ^ v14);
            if (v16)
            {
              break;
            }
          }

          while (v12++ < v4);
          if (!v16)
          {
            return 1;
          }
        }
      }

      v7 = v10 + 1;
      *a2 = v10 + 1;
      a2[1] = v11;
    }

    while (v10 + 1 < v6);
  }

  return 0;
}

uint64_t sub_195219B70(uint64_t result, int a2)
{
  v2 = *(*(result + 24) + 8);
  if (v2 >= 1)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      v6 = icu::UVector::elementAt(*(v4 + 24), i);
      result = icu::UVector32::removeElementAt(*(v6 + 40), a2);
    }
  }

  return result;
}

uint64_t sub_195219BD4(icu::UVector **a1, signed int *a2)
{
  v4 = *(a1[3] + 2);
  v5 = sub_195216C28(*(*a1 + 20));
  v6 = *a2;
  if (*a2 >= v4 - 1)
  {
    return 0;
  }

  v7 = v5;
  v8 = v5;
  while (1)
  {
    v9 = icu::UVector::elementAt(a1[3], v6);
    v6 = *a2 + 1;
    a2[1] = v6;
    if (v6 < v4)
    {
      break;
    }

LABEL_25:
    *a2 = v6;
    if (v6 >= v4 - 1)
    {
      return 0;
    }
  }

  v10 = v9;
  while (1)
  {
    v11 = icu::UVector::elementAt(a1[3], v6);
    if (*(v10 + 4) == *(v11 + 4) && *(v10 + 8) == *(v11 + 8) && *(v10 + 24) == *(v11 + 24))
    {
      break;
    }

LABEL_23:
    v6 = a2[1] + 1;
    a2[1] = v6;
    if (v6 >= v4)
    {
      v6 = *a2 + 1;
      goto LABEL_25;
    }
  }

  if (v7 >= 1)
  {
    v12 = 0;
    v13 = *(v10 + 40);
    v14 = *(v11 + 40);
    while (1)
    {
      v15 = v12 >= *(v13 + 8) ? 0 : *(*(v13 + 24) + 4 * v12);
      v16 = v12 >= *(v14 + 8) ? 0 : *(*(v14 + 24) + 4 * v12);
      if (v15 != v16 && (v15 != *a2 && v15 != a2[1] || v16 != *a2 && v16 != a2[1]))
      {
        break;
      }

      if (v8 == ++v12)
      {
        return 1;
      }
    }

    goto LABEL_23;
  }

  return 1;
}

uint64_t sub_195219D58(uint64_t a1, signed int *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *a2;
  if (v4 >= v3 - 1)
  {
    return 0;
  }

  while (1)
  {
    v6 = icu::UVector::elementAt(*(a1 + 32), v4);
    v4 = *a2 + 1;
    a2[1] = v4;
    if (v4 < v3)
    {
      break;
    }

LABEL_32:
    result = 0;
    *a2 = v4;
    if (v4 >= v3 - 1)
    {
      return result;
    }
  }

  v7 = v6;
  v8 = v6 + 10;
  while (1)
  {
    v9 = icu::UVector::elementAt(*(a1 + 32), v4);
    v10 = *(v7 + 8);
    v11 = (v10 & 0x8000) != 0 ? *(v7 + 12) : v10 >> 5;
    if (v11 < 1)
    {
      return 1;
    }

    v12 = 0;
    v13 = *(v9 + 8);
    while (1)
    {
      v14 = v10 >> 5;
      if ((v10 & 0x8000) != 0)
      {
        v14 = *(v7 + 12);
      }

      if (v12 >= v14)
      {
        v16 = 0xFFFF;
      }

      else
      {
        v15 = v8;
        if ((v10 & 2) == 0)
        {
          v15 = *(v7 + 24);
        }

        v16 = *(v15 + 2 * v12);
      }

      v17 = v13 >> 5;
      if ((v13 & 0x8000) != 0)
      {
        v17 = *(v9 + 12);
      }

      if (v12 >= v17)
      {
        v19 = 0xFFFF;
      }

      else
      {
        v18 = v9 + 10;
        if ((v13 & 2) == 0)
        {
          v18 = *(v9 + 24);
        }

        v19 = *(v18 + 2 * v12);
      }

      if (v16 != v19)
      {
        v20 = *a2;
        if (*a2 != v16)
        {
          v21 = a2[1];
          if (v21 != v16)
          {
            break;
          }
        }

        if (v20 != v19)
        {
          v21 = a2[1];
          if (v21 != v19)
          {
            break;
          }
        }
      }

      if (v11 == ++v12)
      {
        return 1;
      }
    }

    v4 = v21 + 1;
    a2[1] = v4;
    if (v4 >= v3)
    {
      v4 = v20 + 1;
      goto LABEL_32;
    }
  }
}

uint64_t sub_195219ED4(icu::UVector **a1, unint64_t a2)
{
  v2 = a2;
  v4 = HIDWORD(a2);
  v5 = icu::UVector::elementAt(a1[3], HIDWORD(a2));
  icu::UVector::removeElementAt(a1[3], v4);
  if (v5)
  {
    v6 = sub_19521AAB0(v5);
    MEMORY[0x19A8B2600](v6, 0x1020C40B8E285AFLL);
  }

  v7 = *(a1[3] + 2);
  result = sub_195216C28(*(*a1 + 20));
  if (v7 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = result;
    do
    {
      result = icu::UVector::elementAt(a1[3], v10);
      if (v9 >= 1)
      {
        v12 = result;
        v13 = 0;
        do
        {
          v14 = *(v12 + 40);
          if (v13 >= *(v14 + 8))
          {
            v15 = 0;
          }

          else
          {
            v15 = *(*(v14 + 24) + 4 * v13);
          }

          if (v15 == v4)
          {
            v16 = v2;
          }

          else
          {
            v16 = v15 - (v15 > v4);
          }

          result = icu::UVector32::setElementAt(v14, v16, v13++);
        }

        while (v11 != v13);
      }

      ++v10;
    }

    while (v10 != v7);
  }

  return result;
}

uint64_t sub_195219FF0(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = HIDWORD(a2);
  result = icu::UVector::removeElementAt(*(a1 + 32), HIDWORD(a2));
  v6 = *(*(a1 + 32) + 8);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      result = icu::UVector::elementAt(*(a1 + 32), i);
      v8 = result;
      v9 = *(result + 8);
      if ((v9 & 0x8000) != 0)
      {
        v10 = *(result + 12);
      }

      else
      {
        v10 = v9 >> 5;
      }

      if (v10 >= 1)
      {
        v11 = 0;
        v12 = v10;
        do
        {
          v13 = *(v8 + 8);
          if (*(v8 + 8) < 0)
          {
            v14 = *(v8 + 12);
          }

          else
          {
            v14 = v13 >> 5;
          }

          if (v11 >= v14)
          {
            v16 = 0xFFFF;
          }

          else
          {
            v15 = v8 + 10;
            if ((v13 & 2) == 0)
            {
              v15 = *(v8 + 24);
            }

            v16 = *(v15 + 2 * v11);
          }

          if (v16 == v4)
          {
            v17 = v2;
          }

          else
          {
            v17 = v16 - (v16 > v4);
          }

          result = icu::UnicodeString::setCharAt(v8, v11++, v17);
        }

        while (v12 != v11);
      }
    }
  }

  return result;
}

uint64_t sub_19521A104(icu::UVector **a1)
{
  v4 = 3;
  v2 = 0;
  if (sub_195219BD4(a1, &v4))
  {
    do
    {
      sub_195219ED4(a1, v4);
      v2 = (v2 + 1);
    }

    while ((sub_195219BD4(a1, &v4) & 1) != 0);
  }

  return v2;
}

uint64_t sub_19521A168(uint64_t a1)
{
  if (!**(a1 + 8))
  {
    return 0;
  }

  v2 = *(*(a1 + 24) + 8);
  v3 = sub_195216C28(*(*a1 + 160));
  if (*(*(a1 + 24) + 8) >= 256)
  {
    v4 = 2 * v3 + 6;
  }

  else
  {
    v4 = v3 + 3;
  }

  return (v4 * v2 + 20);
}

uint64_t sub_19521A1D8(uint64_t result, int *a2)
{
  if (**(result + 16) <= 0)
  {
    v2 = result;
    if (**(result + 8))
    {
      result = sub_195216C28(*(*result + 160));
      if (result < 0x8000 && (v4 = *(*(v2 + 24) + 8), v4 < 0x8000))
      {
        v5 = result;
        *a2 = v4;
        v6 = sub_195216C48(*(*v2 + 160));
        v7 = *(v2 + 48);
        if (v7 == 1)
        {
          v8 = 0;
        }

        else
        {
          v8 = v7 + 1;
        }

        a2[2] = v6;
        a2[3] = v8;
        a2[4] = 0;
        if (*(*(v2 + 24) + 8) > 255)
        {
          v9 = 2 * v5 + 6;
          v10 = 1;
        }

        else
        {
          v9 = v5 + 3;
          a2[4] = 4;
          v10 = 5;
        }

        a2[1] = v9;
        v11 = *v2;
        if (*(*v2 + 153))
        {
          a2[4] = v10;
        }

        result = sub_195216C50(*(v11 + 160));
        if (result)
        {
          a2[4] |= 2u;
        }

        if (*a2)
        {
          v12 = 0;
          do
          {
            result = icu::UVector::elementAt(*(v2 + 24), v12);
            v13 = a2[1] * v12;
            v14 = a2 + v13 + 20;
            v15 = *(result + 4);
            if (*(*(v2 + 24) + 8) > 255)
            {
              *v14 = v15;
              *(v14 + 1) = *(result + 8);
              *(v14 + 2) = *(result + 24);
              if (v5 >= 1)
              {
                v20 = 0;
                v21 = a2 + v13 + 26;
                do
                {
                  v22 = *(result + 40);
                  if (v20 >= *(v22 + 8))
                  {
                    LOWORD(v23) = 0;
                  }

                  else
                  {
                    v23 = *(*(v22 + 24) + 4 * v20);
                  }

                  *&v21[2 * v20++] = v23;
                }

                while (v5 != v20);
              }
            }

            else
            {
              *v14 = v15;
              v14[1] = *(result + 8);
              v14[2] = *(result + 24);
              if (v5 >= 1)
              {
                v16 = 0;
                v17 = a2 + v13 + 23;
                do
                {
                  v18 = *(result + 40);
                  if (v16 >= *(v18 + 8))
                  {
                    LOBYTE(v19) = 0;
                  }

                  else
                  {
                    v19 = *(*(v18 + 24) + 4 * v16);
                  }

                  v17[v16++] = v19;
                }

                while (v5 != v16);
              }
            }

            ++v12;
          }

          while (v12 < *a2);
        }
      }

      else
      {
        **(v2 + 16) = 66048;
      }
    }
  }

  return result;
}

void sub_19521A3F0(icu::UVector **a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v18 = 0;
  v17 = 0u;
  v14 = &unk_1F0935D00;
  LOWORD(v15) = 2;
  v2 = sub_195216C28(*(*a1 + 20));
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a1[3] + 2);
    do
    {
      v5 = 0;
      do
      {
        if (v4 >= 2)
        {
          v6 = 1;
          v7 = 0xFFFFFFFFLL;
          do
          {
            v8 = *(icu::UVector::elementAt(a1[3], v6) + 40);
            if (v3 >= *(v8 + 8))
            {
              v9 = 0;
            }

            else
            {
              v9 = *(*(v8 + 24) + 4 * v3);
            }

            v10 = *(icu::UVector::elementAt(a1[3], v9) + 40);
            if (v5 >= *(v10 + 8))
            {
              v11 = 0;
            }

            else
            {
              v11 = *(*(v10 + 24) + 4 * v5);
            }

            v12 = v11;
            if ((v7 & 0x80000000) == 0)
            {
              v12 = v7;
              if (v7 != v11)
              {
                break;
              }
            }

            ++v6;
            v7 = v12;
          }

          while (v4 != v6);
          if (v7 == v11)
          {
            LOWORD(v13) = v3;
            icu::UnicodeString::doAppend(&v14, &v13, 0, 1);
            LOWORD(v13) = v5;
            icu::UnicodeString::doAppend(&v14, &v13, 0, 1);
          }
        }

        ++v5;
      }

      while (v5 != v2);
      ++v3;
    }

    while (v3 != v2);
  }

  operator new();
}

uint64_t sub_19521A7E8(void *a1)
{
  v1 = a1[4];
  if (!v1)
  {
    return 0;
  }

  v3 = *(v1 + 8);
  v4 = sub_195216C28(*(*a1 + 160));
  if (*(a1[4] + 8) >= 256)
  {
    v5 = 2 * v4 + 6;
  }

  else
  {
    v5 = v4 + 3;
  }

  return (v5 * v3 + 20);
}

uint64_t sub_19521A850(uint64_t result, int *a2)
{
  if (**(result + 16) <= 0)
  {
    v2 = result;
    if (*(result + 32))
    {
      result = sub_195216C28(*(*result + 160));
      if (result >= 0x8000 || (v4 = *(*(v2 + 32) + 8), v4 >= 0x8000))
      {
        **(v2 + 16) = 66048;
        return result;
      }

      v5 = result;
      *a2 = v4;
      a2[4] = 0;
      if (v4 >= 256)
      {
        a2[1] = 2 * result + 6;
      }

      else
      {
        a2[4] = 4;
        a2[1] = result + 3;
        if (!v4)
        {
          return result;
        }
      }

      v6 = 0;
      do
      {
        result = icu::UVector::elementAt(*(v2 + 32), v6);
        v7 = a2[1] * v6;
        v8 = a2 + v7 + 20;
        if (*(*(v2 + 32) + 8) > 255)
        {
          *v8 = 0;
          *(v8 + 2) = 0;
          if (v5 >= 1)
          {
            v15 = 0;
            v16 = a2 + v7 + 26;
            do
            {
              v17 = *(result + 8);
              if (*(result + 8) < 0)
              {
                v18 = *(result + 12);
              }

              else
              {
                v18 = v17 >> 5;
              }

              if (v15 >= v18)
              {
                v20 = -1;
              }

              else
              {
                v19 = result + 10;
                if ((v17 & 2) == 0)
                {
                  v19 = *(result + 24);
                }

                v20 = *(v19 + 2 * v15);
              }

              *&v16[2 * v15++] = v20;
            }

            while (v5 != v15);
          }
        }

        else
        {
          *v8 = 0;
          v8[2] = 0;
          if (v5 >= 1)
          {
            v9 = 0;
            v10 = a2 + v7 + 23;
            do
            {
              v11 = *(result + 8);
              if (*(result + 8) < 0)
              {
                v12 = *(result + 12);
              }

              else
              {
                v12 = v11 >> 5;
              }

              if (v9 >= v12)
              {
                LOBYTE(v14) = -1;
              }

              else
              {
                v13 = result + 10;
                if ((v11 & 2) == 0)
                {
                  v13 = *(result + 24);
                }

                v14 = *(v13 + 2 * v9);
              }

              v10[v9++] = v14;
            }

            while (v5 != v9);
          }
        }

        ++v6;
      }

      while (v6 < *a2);
    }
  }

  return result;
}

void sub_19521AA2C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  operator new();
}

void *sub_19521AAB0(void *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = a1[5];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  a1[2] = 0;
  *v3 = 0;
  v3[1] = 0;
  return a1;
}

void sub_19521AB64(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = *(a2 + 16);
  v3 = U_ZERO_ERROR;
  operator new();
}

uint64_t sub_19521ABE8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(v2 + 2) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = icu::UVector::elementAt(v2, v3);
      if (v4)
      {
        v5 = sub_195218264(v4);
        MEMORY[0x19A8B2600](v5, 0x1020C40B8E285AFLL);
      }

      ++v3;
      v2 = *(a1 + 24);
    }

    while (v3 < *(v2 + 2));
  }

  (*(*v2 + 8))(v2);
  return a1;
}

uint64_t sub_19521AC8C(uint64_t result)
{
  v1 = *(result + 16);
  if (*v1 <= 0)
  {
    v2 = result;
    result = **(result + 8);
    if (result)
    {
      *v2[1] = sub_195211540(result, v1, 0);
      if (sub_195217578((*v2)[12]))
      {
        operator new();
      }

      operator new();
    }
  }

  return result;
}

void sub_19521AE5C(uint64_t a1, int *a2)
{
  if (a2)
  {
    if ((*a2 - 3) > 3)
    {
      sub_19521AE5C(a1, *(a2 + 2));
      sub_19521AE5C(a1, *(a2 + 3));
      v6 = *a2;
      if ((*a2 - 10) >= 3)
      {
        if (v6 == 8)
        {
          sub_19521BCA0(a1, *(a2 + 17), *(*(a2 + 2) + 136));
          if (!*(*(a2 + 2) + 120))
          {
            return;
          }
        }

        else
        {
          if (v6 != 9)
          {
            return;
          }

          sub_19521BCA0(a1, *(a2 + 17), *(*(a2 + 2) + 136));
        }

        v7 = *(a2 + 17);
        v8 = *(a2 + 3);
      }

      else
      {
        v7 = *(a2 + 17);
        v8 = *(a2 + 2);
      }

      v9 = *(v8 + 136);

      sub_19521BCA0(a1, v7, v9);
    }

    else
    {
      v4 = *(a2 + 17);
      v5 = *(a1 + 16);

      icu::UVector::addElement(v4, a2, v5);
    }
  }
}

void sub_19521AF64(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return;
  }

  if ((*a2 - 3) <= 3)
  {
    v4 = *(a2 + 18);
    v5 = *(a1 + 16);

    icu::UVector::addElement(v4, a2, v5);
    return;
  }

  sub_19521AF64(a1, *(a2 + 2));
  sub_19521AF64(a1, *(a2 + 3));
  v6 = *a2;
  if ((*a2 - 10) >= 3)
  {
    if (v6 != 8)
    {
      if (v6 != 9)
      {
        return;
      }

      sub_19521BCA0(a1, *(a2 + 18), *(*(a2 + 2) + 144));
      v7 = *(a2 + 18);
      v8 = *(a2 + 3);
      goto LABEL_11;
    }

    sub_19521BCA0(a1, *(a2 + 18), *(*(a2 + 3) + 144));
    if (!*(*(a2 + 3) + 120))
    {
      return;
    }
  }

  v7 = *(a2 + 18);
  v8 = *(a2 + 2);
LABEL_11:
  v9 = *(v8 + 144);

  sub_19521BCA0(a1, v7, v9);
}

void sub_19521B068(uint64_t a1, int *a2)
{
  if (a2)
  {
    if (*a2 != 3 && *a2 != 6)
    {
      sub_19521B068(a1, *(a2 + 2));
      sub_19521B068(a1, *(a2 + 3));
      v5 = *a2;
      if (*a2 == 8)
      {
        v6 = *(*(a2 + 2) + 144);
        if (!*(v6 + 2))
        {
          return;
        }

        v7 = 0;
        do
        {
          v8 = icu::UVector::elementAt(v6, v7);
          sub_19521BCA0(a1, *(v8 + 152), *(*(a2 + 3) + 136));
          ++v7;
        }

        while (v7 < *(v6 + 2));
        v5 = *a2;
      }

      if ((v5 & 0xFFFFFFFE) == 0xA)
      {
        v9 = *(a2 + 18);
        if (*(v9 + 2))
        {
          v10 = 0;
          do
          {
            v11 = icu::UVector::elementAt(v9, v10);
            sub_19521BCA0(a1, *(v11 + 152), *(a2 + 17));
            ++v10;
            v9 = *(a2 + 18);
          }

          while (v10 < *(v9 + 2));
        }
      }
    }
  }
}

void sub_19521B160(UErrorCode **a1, uint64_t a2)
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  icu::UVector::UVector(v27, a1[2]);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  icu::UVector::UVector(v25, a1[2]);
  v4 = a1[2];
  if (*v4 <= 0)
  {
    sub_1952116DC(a2, v27, 6, v4);
    sub_1952116DC(a2, v25, 3, a1[2]);
    v5 = a1[2];
    if (*v5 <= 0)
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      icu::UVector::UVector(v23, v5);
      sub_195219898(a1, v23, a2);
      v22 = 0;
      memset(v21, 0, sizeof(v21));
      icu::UVector::UVector(v21, a1[2]);
      if (SDWORD2(v23[0]) >= 1)
      {
        v6 = 0;
        do
        {
          v7 = icu::UVector::elementAt(v23, v6);
          if (*(v7 + 130))
          {
            sub_19521BCA0(a1, v21, *(v7 + 136));
          }

          ++v6;
        }

        while (v6 < SDWORD2(v23[0]));
      }

      if (*a1[2] <= 0 && SDWORD2(v25[0]) >= 1)
      {
        for (i = 0; i < SDWORD2(v25[0]); ++i)
        {
          v9 = icu::UVector::elementAt(v25, i);
          if (SDWORD2(v27[0]) >= 1)
          {
            v10 = v9;
            v11 = 0;
            while (1)
            {
              v12 = *(v10 + 152);
              v13 = icu::UVector::elementAt(v27, v11);
              if ((icu::UVector::indexOf(v12, v13, 0) & 0x80000000) == 0)
              {
                break;
              }

              if (++v11 >= SDWORD2(v27[0]))
              {
                goto LABEL_35;
              }
            }

            v14 = *a1;
            if (!*(*a1 + 89) && !*(v14 + 91))
            {
              goto LABEL_29;
            }

            v15 = sub_195217580(*(v14 + 12), *(v10 + 124));
            if (v15 == -1)
            {
              goto LABEL_29;
            }

            v16 = v15;
            v17 = *a1;
            if (*(*a1 + 89))
            {
              if (u_getIntPropertyValue(v15, UCHAR_LINE_BREAK) == 9)
              {
                continue;
              }

              v17 = *a1;
            }

            if (*(v17 + 91))
            {
              if (u_getIntPropertyValue(v16, UCHAR_GRAPHEME_CLUSTER_BREAK) != 12 && SDWORD2(v21[0]) > 0)
              {
LABEL_30:
                v19 = 0;
                do
                {
                  v20 = icu::UVector::elementAt(v21, v19);
                  if (*v20 == 3 && *(v10 + 124) == *(v20 + 124))
                  {
                    sub_19521BCA0(a1, *(v10 + 152), *(v20 + 152));
                  }

                  ++v19;
                }

                while (v19 < SDWORD2(v21[0]));
              }
            }

            else
            {
LABEL_29:
              if (SDWORD2(v21[0]) >= 1)
              {
                goto LABEL_30;
              }
            }
          }

LABEL_35:
          ;
        }
      }

      icu::UVector::~UVector(v21);
      icu::UVector::~UVector(v23);
    }
  }

  icu::UVector::~UVector(v25);
  icu::UVector::~UVector(v27);
}

void sub_19521B408(uint64_t a1)
{
  if (**(a1 + 16) <= 0)
  {
    v2 = *(**(a1 + 8) + 16);
    v3 = *(*(v2 + 24) + 136);
    if (*(v3 + 2) >= 1)
    {
      v4 = 0;
      v5 = *(v2 + 16);
      do
      {
        v6 = icu::UVector::elementAt(v3, v4);
        if (*v6 == 3 && *(v6 + 124) == *(v5 + 124))
        {
          sub_19521BCA0(a1, *(v5 + 152), *(v6 + 152));
        }

        ++v4;
      }

      while (v4 < *(v3 + 2));
    }
  }
}

int **sub_19521B4B0(int **result)
{
  if (*result[2] <= 0)
  {
    sub_19521756C(*(*result + 12));
    operator new();
  }

  return result;
}

void sub_19521B854(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (*v3 <= 0)
  {
    v14 = v1;
    v15 = v2;
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    icu::UVector::UVector(v12, v3);
    v5 = *(a1 + 16);
    if (*v5 <= 0)
    {
      sub_1952116DC(**(a1 + 8), v12, 6, v5);
      if (**(a1 + 16) <= 0 && SDWORD2(v12[0]) >= 1)
      {
        v6 = 0;
        do
        {
          v7 = icu::UVector::elementAt(v12, v6);
          v8 = *(a1 + 24);
          if (*(v8 + 2) >= 1)
          {
            v9 = 0;
            do
            {
              v10 = icu::UVector::elementAt(v8, v9);
              if ((icu::UVector::indexOf(*(v10 + 32), v7, 0) & 0x80000000) == 0)
              {
                v11 = *(v10 + 4);
                if (!v11)
                {
                  v11 = *(v7 + 124);
                  if (!v11)
                  {
                    v11 = -1;
                  }

                  *(v10 + 4) = v11;
                }

                if (v11 == -1)
                {
                  v11 = *(v7 + 124);
                  if (v11)
                  {
                    *(v10 + 4) = v11;
                  }

                  else
                  {
                    v11 = -1;
                  }
                }

                if (*(v7 + 128))
                {
                  *(v10 + 8) = v11;
                }
              }

              ++v9;
              v8 = *(a1 + 24);
            }

            while (v9 < *(v8 + 2));
          }

          ++v6;
        }

        while (v6 < SDWORD2(v12[0]));
      }
    }

    icu::UVector::~UVector(v12);
  }
}

void sub_19521B9AC(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (*v3 <= 0)
  {
    v12 = v1;
    v13 = v2;
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    icu::UVector::UVector(v10, v3);
    sub_1952116DC(**(a1 + 8), v10, 4, *(a1 + 16));
    if (**(a1 + 16) <= 0 && SDWORD2(v10[0]) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = icu::UVector::elementAt(v10, v5);
        v7 = *(a1 + 24);
        if (*(v7 + 2) >= 1)
        {
          v8 = 0;
          do
          {
            v9 = icu::UVector::elementAt(v7, v8);
            if ((icu::UVector::indexOf(*(v9 + 32), v6, 0) & 0x80000000) == 0)
            {
              *(v9 + 8) = *(v6 + 124);
            }

            ++v8;
            v7 = *(a1 + 24);
          }

          while (v8 < *(v7 + 2));
        }

        ++v5;
      }

      while (v5 < SDWORD2(v10[0]));
    }

    icu::UVector::~UVector(v10);
  }
}

icu::UVector *sub_19521BABC(UErrorCode **a1)
{
  v2 = *(*a1 + 18);
  if (!*(v2 + 2))
  {
    icu::UVector::addElement(v2, 1, a1[2]);
    icu::UVector::addElement(*(*a1 + 18), 0, a1[2]);
  }

  result = a1[3];
  if (*(result + 2) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = icu::UVector::elementAt(result, v4);
      v6 = v5;
      v7 = *(v5 + 16);
      if (v7)
      {
        *(v5 + 24) = -1;
        v8 = *(*a1 + 18);
        if (v8[2] < 1)
        {
          goto LABEL_21;
        }

        v9 = 0;
        while (1)
        {
          v10 = icu::UVector::elementAti(v8, v9);
          v11 = v9 + 1;
          v12 = v7[2];
          if (v12 == icu::UVector::elementAti(*(*a1 + 18), v9))
          {
            v13 = v7[2];
            if (v13 < 1)
            {
              i = 0;
            }

            else
            {
              for (i = 0; i < v13; ++i)
              {
                v15 = icu::UVector::elementAti(v7, i);
                v16 = icu::UVector::elementAti(*(*a1 + 18), v11 + i);
                v13 = v7[2];
                if (v15 != v16)
                {
                  break;
                }
              }
            }

            if (i == v13)
            {
              break;
            }
          }

          v9 = v11 + v10;
          v8 = *(*a1 + 18);
          if ((v11 + v10) >= v8[2])
          {
            v9 = *(v6 + 24);
            goto LABEL_20;
          }
        }

        *(v6 + 24) = v9;
LABEL_20:
        if (v9 == -1)
        {
LABEL_21:
          v17 = *(*a1 + 18);
          *(v6 + 24) = *(v17 + 2);
          icu::UVector::addElement(v17, v7[2], a1[2]);
          if (v7[2] >= 1)
          {
            v18 = 0;
            do
            {
              v19 = *(*a1 + 18);
              v20 = icu::UVector::elementAti(v7, v18);
              icu::UVector::addElement(v19, v20, a1[2]);
              ++v18;
            }

            while (v18 < v7[2]);
          }
        }
      }

      else
      {
        *(v5 + 24) = 0;
      }

      ++v4;
      result = a1[3];
    }

    while (v4 < *(result + 2));
  }

  return result;
}

void sub_19521BCA0(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = a2[2];
  v7 = a3[2];
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v8 = &v26[2];
  v24 = 0;
  v25 = &v26[2];
  v26[0] = 16;
  memset(v23, 0, sizeof(v23));
  v22 = v23 + 1;
  if (v6 >= 17)
  {
    v9 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
    if (!v9)
    {
      goto LABEL_32;
    }

    v8 = v9;
    if (LOBYTE(v26[1]))
    {
      free(v25);
    }

    v25 = v8;
    v26[0] = v6;
    LOBYTE(v26[1]) = 1;
  }

  if (v7 <= 16)
  {
    v11 = v23 + 1;
  }

  else
  {
    v10 = malloc_type_malloc(8 * v7, 0x80040B8603338uLL);
    if (!v10)
    {
      goto LABEL_32;
    }

    v11 = v10;
    if (BYTE4(v23[0]))
    {
      free(v23 + 8);
    }

    v22 = v11;
    BYTE4(v23[0]) = 1;
  }

  v12 = &v8[v6];
  v13 = &v11[v7];
  icu::UVector::toArray(a2, v8);
  icu::UVector::toArray(a3, v11);
  icu::UVector::setSize(a2, v7 + v6, *(a1 + 16));
  v14 = 0;
  if (v7 >= 1 && v6 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *v8;
      v16 = *v11;
      if (*v8 == *v11)
      {
        ++v11;
        icu::UVector::setElementAt(a2, v16, v14);
        ++v8;
      }

      else
      {
        if (bswap64(*v8) >= bswap64(*v11))
        {
          ++v11;
          v17 = a2;
        }

        else
        {
          ++v8;
          v17 = a2;
          v16 = v15;
        }

        icu::UVector::setElementAt(v17, v16, v14);
      }

      ++v14;
    }

    while (v11 < v13 && v8 < v12);
  }

  if (v8 >= v12)
  {
    v19 = v14;
  }

  else
  {
    do
    {
      v18 = *v8++;
      v19 = v14 + 1;
      icu::UVector::setElementAt(a2, v18, v14++);
    }

    while (v8 < v12);
  }

  if (v11 >= v13)
  {
    v21 = v19;
  }

  else
  {
    do
    {
      v20 = *v11++;
      v21 = v19 + 1;
      icu::UVector::setElementAt(a2, v20, v19++);
    }

    while (v11 < v13);
  }

  icu::UVector::setSize(a2, v21, *(a1 + 16));
LABEL_32:
  if (BYTE4(v23[0]))
  {
    free(v22);
  }

  if (LOBYTE(v26[1]))
  {
    free(v25);
  }
}

uint64_t sub_19521BF5C(uint64_t a1)
{
  if (!**(a1 + 8))
  {
    return 0;
  }

  v1 = *(*(a1 + 24) + 8);
  return (2 * sub_19521756C(*(*a1 + 96)) + 8) * v1 + 16;
}

uint64_t sub_19521BFB4(uint64_t result, unsigned int *a2)
{
  if (**(result + 16) <= 0)
  {
    v2 = result;
    if (**(result + 8))
    {
      result = sub_19521756C(*(*result + 96));
      if (result < 0x8000 && *(v2[3] + 8) < 0x8000)
      {
        v4 = sub_19521756C(*(*v2 + 96));
        *a2 = *(v2[3] + 8);
        a2[1] = 2 * v4 + 8;
        a2[2] = *(*v2 + 90) != 0;
        result = sub_195217578(*(*v2 + 96));
        if (result)
        {
          a2[2] |= 2u;
        }

        a2[3] = 0;
        if (*a2)
        {
          v5 = 0;
          do
          {
            v6 = icu::UVector::elementAt(v2[3], v5);
            v7 = a2[1] * v5;
            v8 = (a2 + v7 + 16);
            v9 = *(v6 + 8);
            *v8 = *(v6 + 4);
            v8[1] = v9;
            v8[2] = *(v6 + 24);
            result = sub_19521756C(*(*v2 + 96));
            if (result >= 1)
            {
              v10 = 0;
              v11 = a2 + v7 + 24;
              do
              {
                v12 = *(v6 + 40);
                if (v10 >= *(v12 + 8))
                {
                  LOWORD(v13) = 0;
                }

                else
                {
                  v13 = *(*(v12 + 24) + 4 * v10);
                }

                *&v11[2 * v10++] = v13;
                result = sub_19521756C(*(*v2 + 96));
              }

              while (v10 < result);
            }

            ++v5;
          }

          while (v5 < *a2);
        }
      }

      else
      {
        *v2[2] = 66048;
      }
    }
  }

  return result;
}

unint64_t icu::RuleBasedTokenizer::tokenize(uint64_t a1, int a2, uint64_t *a3, void *a4)
{
  v38 = *(a1 + 584);
  v7 = *(a1 + 520);
  v8 = *(v7 + 8);
  v9 = *(v8 + 4);
  v10 = *(a1 + 488);
  *(a1 + 532) = 0;
  chunkOffset = v10->chunkOffset;
  if (chunkOffset <= v10->nativeIndexingLimit)
  {
    v12 = v10->chunkNativeStart + chunkOffset;
  }

  else
  {
    v12 = (v10->pFuncs->mapOffsetToNative)(v10);
    v7 = *(a1 + 520);
  }

  v37 = a3;
  if (a2 < 1)
  {
    return (a3 - v37) >> 4;
  }

  v41 = 0;
  v13 = v8 + 16;
  v39 = &a3[2 * a2];
  while (2)
  {
    v14 = v10->chunkOffset;
    if (v14 >= v10->chunkLength || (v15 = v10->chunkContents[v14], v15 >> 11 > 0x1A))
    {
      v15 = utext_next32(v10);
      if (v15 == -1)
      {
        return (a3 - v37) >> 4;
      }
    }

    else
    {
      v10->chunkOffset = v14 + 1;
    }

    v16 = *(a1 + 544);
    if (v16)
    {
      v17 = *(a1 + 556);
      if (v17 < *(a1 + 552) - 1)
      {
        v18 = v17 + 1;
        *(a1 + 556) = v18;
        v19 = *(v16 + 4 * v18);
        goto LABEL_44;
      }

      (*(*a1 + 200))(a1);
    }

    v20 = v38;
    v19 = v12;
    do
    {
      if (v15 <= 255)
      {
        v21 = *(*(a1 + 600) + 2 * v15);
        if ((v21 & 0x4000) != 0)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (!HIWORD(v15))
      {
        v22 = *(v7 + 64);
        if ((v15 & 0xFC00) == 0xD800)
        {
          v23 = 320;
        }

        else
        {
          v23 = 0;
        }

        v24 = v23 + (v15 >> 5);
LABEL_26:
        v21 = *(v22 + 2 * ((v15 & 0x1F) + 4 * *(v22 + 2 * v24)));
        if ((v21 & 0x4000) == 0)
        {
          goto LABEL_28;
        }

LABEL_27:
        ++*(a1 + 536);
        v21 &= ~0x4000u;
        goto LABEL_28;
      }

      if (HIWORD(v15) <= 0x10u)
      {
        v25 = (*(v7 + 80))(*(*(v7 + 64) + 2 * (((v15 >> 10) & 0x1F) + 4 * *(*(v7 + 64) + 2 * (((v15 >> 10) + 55232) >> 5)))));
        if (v25 >= 1)
        {
          v22 = *(v7 + 64);
          v24 = v25 + ((v15 >> 5) & 0x1F);
          goto LABEL_26;
        }
      }

      v21 = *(v7 + 96);
      if ((v21 & 0x4000) != 0)
      {
        goto LABEL_27;
      }

LABEL_28:
      v26 = v20[v21 + 4];
      v20 = (v13 + v9 * v26);
      if (*v20 == -1)
      {
        v27 = v10->chunkOffset;
        if (v27 <= v10->nativeIndexingLimit)
        {
          v19 = v10->chunkNativeStart + v27;
        }

        else
        {
          v19 = (v10->pFuncs->mapOffsetToNative)(v10);
        }

        v41 = v26;
      }

      if (!v26)
      {
        break;
      }

      v28 = v10->chunkOffset;
      if (v28 >= v10->chunkLength || (v15 = v10->chunkContents[v28], v15 >> 11 > 0x1A))
      {
        v15 = utext_next32(v10);
      }

      else
      {
        v10->chunkOffset = v28 + 1;
      }
    }

    while (v15 != -1);
    if (*(a1 + 536))
    {
      v19 = icu::RuleBasedBreakIterator57::checkDictionary(a1, v12, v19, 0);
    }

LABEL_44:
    chunkNativeStart = v10->chunkNativeStart;
    v30 = v19;
    if (v19 == v12)
    {
      v31 = v12 - chunkNativeStart;
      if (v31 < 0 || v31 >= v10->nativeIndexingLimit || v10->chunkContents[v31] >> 10 > 0x36u)
      {
        utext_setNativeIndex(v10, v12);
        LODWORD(v31) = v10->chunkOffset;
      }

      else
      {
        v10->chunkOffset = v31;
      }

      if (v31 >= v10->chunkLength || v10->chunkContents[v31] >> 11 > 0x1Au)
      {
        utext_next32(v10);
        v32 = v10->chunkOffset;
      }

      else
      {
        v32 = v31 + 1;
        v10->chunkOffset = v31 + 1;
      }

      if (v32 <= v10->nativeIndexingLimit)
      {
        chunkNativeStart = v10->chunkNativeStart;
        v33 = chunkNativeStart + v32;
      }

      else
      {
        v33 = (v10->pFuncs->mapOffsetToNative)(v10);
        chunkNativeStart = v10->chunkNativeStart;
      }

      v30 = v33;
    }

    v34 = v30 - chunkNativeStart;
    if (v34 < 0 || v34 >= v10->nativeIndexingLimit || v10->chunkContents[v34] >> 10 > 0x36u)
    {
      utext_setNativeIndex(v10, v30);
    }

    else
    {
      v10->chunkOffset = v34;
    }

    if (v19 == v12)
    {
      v35 = 0;
      break;
    }

    v35 = *(*(a1 + 592) + 4 * v41);
    if (v35 == -1)
    {
LABEL_70:
      v12 = v30;
      if (a3 >= v39)
      {
        return (a3 - v37) >> 4;
      }

      continue;
    }

    break;
  }

  *a3 = v12;
  a3[1] = v30 - v12;
  if (a4)
  {
    *a4++ = v35;
  }

  else
  {
    a4 = 0;
  }

  a3 += 2;
  if ((v35 & 0x40000000) == 0)
  {
    goto LABEL_70;
  }

  return (a3 - v37) >> 4;
}

void icu::RuleBasedTokenizer::init(icu::RuleBasedTokenizer *this)
{
  v2 = *(*(this + 65) + 8);
  (*(*this + 208))(this, 1);
  *(this + 73) = v2 + 16 + *(v2 + 4);
  v3 = *(this + 65);
  operator new[]();
}

icu::RuleBasedTokenizer *icu::RuleBasedTokenizer::RuleBasedTokenizer(icu::RuleBasedTokenizer *this, const icu::UnicodeString *a2, UParseError *a3, UErrorCode *a4)
{
  v6 = icu::RuleBasedBreakIterator57::RuleBasedBreakIterator57(this, a2, a3, a4);
  *v6 = &unk_1F09330C8;
  *(v6 + 37) = 0u;
  if (*a4 <= 0)
  {
    icu::RuleBasedTokenizer::init(this);
  }

  return this;
}

void icu::RuleBasedTokenizer::~RuleBasedTokenizer(icu::RuleBasedTokenizer *this)
{
  *this = &unk_1F09330C8;
  v2 = *(this + 74);
  if (v2)
  {
    MEMORY[0x19A8B25E0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 75);
  if (v3)
  {
    MEMORY[0x19A8B25E0](v3, 0x1000C80BDFB0063);
  }

  icu::RuleBasedBreakIterator57::~RuleBasedBreakIterator57(this);
}

{
  icu::RuleBasedTokenizer::~RuleBasedTokenizer(this);

  JUMPOUT(0x19A8B2600);
}

icu::ResourceBundle *icu::ResourceBundle::ResourceBundle(icu::ResourceBundle *this, UErrorCode *a2)
{
  *this = &unk_1F09331C8;
  *(this + 2) = 0;
  Default = icu::Locale::getDefault(this);
  *(this + 1) = ures_open(0, *(Default + 40), a2);
  return this;
}

{
  *this = &unk_1F09331C8;
  *(this + 2) = 0;
  Default = icu::Locale::getDefault(this);
  *(this + 1) = ures_open(0, *(Default + 40), a2);
  return this;
}

icu::ResourceBundle *icu::ResourceBundle::ResourceBundle(icu::ResourceBundle *this, const icu::ResourceBundle *a2)
{
  *this = &unk_1F09331C8;
  *(this + 2) = 0;
  v6 = 0;
  v3 = *(a2 + 1);
  if (v3)
  {
    v4 = sub_19528A7FC(0, v3, &v6);
  }

  else
  {
    v4 = 0;
  }

  *(this + 1) = v4;
  return this;
}

void *icu::ResourceBundle::ResourceBundle(void *a1, _DWORD *a2, int *a3)
{
  *a1 = &unk_1F09331C8;
  a1[2] = 0;
  v4 = 0;
  if (a2)
  {
    v4 = sub_19528A7FC(0, a2, a3);
  }

  a1[1] = v4;
  return a1;
}

{
  *a1 = &unk_1F09331C8;
  a1[2] = 0;
  v4 = 0;
  if (a2)
  {
    v4 = sub_19528A7FC(0, a2, a3);
  }

  a1[1] = v4;
  return a1;
}

icu::ResourceBundle *icu::ResourceBundle::ResourceBundle(icu::ResourceBundle *this, const char *a2, char **a3, UErrorCode *a4)
{
  *this = &unk_1F09331C8;
  *(this + 2) = 0;
  *(this + 1) = ures_open(a2, a3[5], a4);
  return this;
}

{
  *this = &unk_1F09331C8;
  *(this + 2) = 0;
  *(this + 1) = ures_open(a2, a3[5], a4);
  return this;
}

uint64_t icu::ResourceBundle::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      ures_close(v4);
      *(a1 + 8) = 0;
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      (*(*v5 + 8))(v5);
      *(a1 + 16) = 0;
    }

    v9 = 0;
    v6 = *(a2 + 8);
    if (v6)
    {
      v7 = sub_19528A7FC(0, v6, &v9);
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 8) = v7;
  }

  return a1;
}

void icu::ResourceBundle::~ResourceBundle(icu::ResourceBundle *this)
{
  *this = &unk_1F09331C8;
  v2 = *(this + 1);
  if (v2)
  {
    ures_close(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UObject::~UObject(this);
}

{
  icu::ResourceBundle::~ResourceBundle(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::ResourceBundle::getString@<X0>(icu::ResourceBundle *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  String = ures_getString(*(this + 1), &v6, a2);
  return icu::UnicodeString::UnicodeString(a3, 1, &String);
}

void icu::ResourceBundle::getNext(icu::ResourceBundle *this@<X0>, UErrorCode *a2@<X1>, void *a3@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  ures_initStackObject(v7);
  ures_getNextResource(*(this + 1), v7, a2);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = &unk_1F09331C8;
  a3[1] = sub_19528A7FC(0, v7, a2);
  if (*a2 <= 0)
  {
    ures_close(v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t icu::ResourceBundle::getNextString@<X0>(icu::ResourceBundle *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  NextString = ures_getNextString(*(this + 1), &v6, 0, a2);
  return icu::UnicodeString::UnicodeString(a3, 1, &NextString);
}

uint64_t icu::ResourceBundle::getNextString@<X0>(icu::ResourceBundle *this@<X0>, const char **a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  NextString = ures_getNextString(*(this + 1), &v7, a2, a3);
  return icu::UnicodeString::UnicodeString(a4, 1, &NextString);
}

void icu::ResourceBundle::get(icu::ResourceBundle *this@<X0>, UErrorCode *a2@<X2>, signed int a3@<W1>, void *a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  ures_initStackObject(v9);
  ures_getByIndex(*(this + 1), a3, v9, a2);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = &unk_1F09331C8;
  a4[1] = sub_19528A7FC(0, v9, a2);
  if (*a2 <= 0)
  {
    ures_close(v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t icu::ResourceBundle::getStringEx@<X0>(icu::ResourceBundle *this@<X0>, UErrorCode *a2@<X2>, signed int a3@<W1>, uint64_t a4@<X8>)
{
  v7 = 0;
  StringByIndex = ures_getStringByIndex(*(this + 1), a3, &v7, a2);
  return icu::UnicodeString::UnicodeString(a4, 1, &StringByIndex);
}

void icu::ResourceBundle::get(icu::ResourceBundle *this@<X0>, const char *a2@<X1>, UErrorCode *a3@<X2>, void *a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  ures_initStackObject(v9);
  ures_getByKey(*(this + 1), a2, v9, a3);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = &unk_1F09331C8;
  a4[1] = sub_19528A7FC(0, v9, a3);
  if (*a3 <= 0)
  {
    ures_close(v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void icu::ResourceBundle::getWithFallback(icu::ResourceBundle *this@<X0>, char *a2@<X1>, UErrorCode *a3@<X2>, void *a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  ures_initStackObject(v9);
  ures_getByKeyWithFallback(*(this + 1), a2, v9, a3);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = &unk_1F09331C8;
  a4[1] = sub_19528A7FC(0, v9, a3);
  if (*a3 <= 0)
  {
    ures_close(v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t icu::ResourceBundle::getStringEx@<X0>(icu::ResourceBundle *this@<X0>, const char *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = 0;
  StringByKey = ures_getStringByKey(*(this + 1), a2, &v7, a3);
  return icu::UnicodeString::UnicodeString(a4, 1, &StringByKey);
}

uint64_t icu::ResourceBundle::getLocale(icu::ResourceBundle *this)
{
  umtx_lock(&unk_1EAEC9818);
  v2 = *(this + 2);
  if (!v2)
  {
    v4 = 0;
    ures_getLocaleInternal(*(this + 1), &v4);
    operator new();
  }

  umtx_unlock(&unk_1EAEC9818);
  return v2;
}

uint64_t icu::ResourceBundle::getLocale@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, icu::Locale *a4@<X8>)
{
  LocaleByType = ures_getLocaleByType(*(a1 + 8), a2, a3);

  return icu::Locale::Locale(a4, LocaleByType, 0, 0, 0);
}

icu::ResourceBundle *icu::ResourceBundle::ResourceBundle(icu::ResourceBundle *this, UChar **a2, char **a3, UErrorCode *a4)
{
  *this = &unk_1F09331C8;
  *(this + 2) = 0;
  icu::ResourceBundle::constructForLocale(this, a2, a3, a4);
  return this;
}

{
  *this = &unk_1F09331C8;
  *(this + 2) = 0;
  icu::ResourceBundle::constructForLocale(this, a2, a3, a4);
  return this;
}

void *icu::ResourceBundle::constructForLocale(icu::ResourceBundle *this, UChar **a2, char **a3, UErrorCode *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4) <= 0x1Fu)
  {
    result = ures_open(0, a3[5], a4);
    *(this + 1) = result;
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    icu::UnicodeString::UnicodeString(&v12, a2);
    v11 = 0;
    icu::UnicodeString::doAppend(&v12, &v11, 0, 1);
    if ((BYTE8(v12) & 0x11) != 0)
    {
      v7 = 0;
    }

    else if ((BYTE8(v12) & 2) != 0)
    {
      v7 = (&v12 | 0xA);
    }

    else
    {
      v7 = *(&v13 + 1);
    }

    *(this + 1) = ures_openU(v7, a3[5], a4);
    result = icu::UnicodeString::~UnicodeString(v9, &v12);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

icu::ResourceBundle *icu::ResourceBundle::ResourceBundle(icu::ResourceBundle *this, UChar **a2, UErrorCode *a3)
{
  *this = &unk_1F09331C8;
  *(this + 2) = 0;
  Default = icu::Locale::getDefault(this);
  icu::ResourceBundle::constructForLocale(this, a2, Default, a3);
  return this;
}

{
  *this = &unk_1F09331C8;
  *(this + 2) = 0;
  Default = icu::Locale::getDefault(this);
  icu::ResourceBundle::constructForLocale(this, a2, Default, a3);
  return this;
}

uint64_t sub_19521D664(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a4;
  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

BOOL sub_19521D674(void *a1)
{
  if (a1[3])
  {
    return 0;
  }

  if (*(*a1 + 8) < 0)
  {
    v2 = *(*a1 + 12);
  }

  else
  {
    v2 = *(*a1 + 8) >> 5;
  }

  return *(a1[1] + 8) == v2;
}

uint64_t sub_19521D6B0(uint64_t a1, char a2, _BYTE *a3, int *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    goto LABEL_2;
  }

  *a3 = 0;
  do
  {
    while (1)
    {
      v4 = sub_19521D930(a1);
      v11 = v4 < 0x10000 ? 1 : 2;
      sub_19521D978(a1, v11);
      if (v4 != 36)
      {
        break;
      }

      if ((a2 & 1) == 0)
      {
        break;
      }

      if (*(a1 + 24))
      {
        break;
      }

      v12 = *(a1 + 16);
      if (!v12)
      {
        break;
      }

      memset(v19, 0, sizeof(v19));
      if (*(*a1 + 8) < 0)
      {
        v13 = *(*a1 + 12);
      }

      v14 = *(a1 + 8);
      (*(*v12 + 32))(v19);
      v15 = WORD4(v19[0]) >> 5;
      if (SWORD4(v19[0]) < 0)
      {
        v15 = HIDWORD(v19[0]);
      }

      if (!v15)
      {
        icu::UnicodeString::~UnicodeString(v19);
        v4 = 36;
        goto LABEL_3;
      }

      *(a1 + 32) = 0;
      v16 = (*(**(a1 + 16) + 16))(*(a1 + 16), v19);
      *(a1 + 24) = v16;
      if (!v16)
      {
        v17 = 65554;
        goto LABEL_36;
      }

      if ((*(v16 + 8) & 0x80000000) == 0)
      {
        if (*(v16 + 8) >> 5)
        {
          goto LABEL_25;
        }

LABEL_24:
        *(a1 + 24) = 0;
        goto LABEL_25;
      }

      if (!*(v16 + 12))
      {
        goto LABEL_24;
      }

LABEL_25:
      icu::UnicodeString::~UnicodeString(v19);
    }
  }

  while ((a2 & 4) != 0 && icu::PatternProps::isWhiteSpace(v4));
  if (v4 != 92)
  {
    goto LABEL_3;
  }

  if ((a2 & 2) == 0)
  {
    v4 = 92;
    goto LABEL_3;
  }

  memset(v19 + 8, 0, 56);
  *&v19[0] = &unk_1F0935D00;
  WORD4(v19[0]) = 2;
  v18 = 0;
  sub_19521D9F0(a1, v19, 0xCu);
  v4 = icu::UnicodeString::unescapeAt(v19, &v18);
  sub_19521D978(a1, v18);
  *a3 = 1;
  if ((v4 & 0x80000000) == 0)
  {
    icu::UnicodeString::~UnicodeString(v19);
    goto LABEL_3;
  }

  v17 = 65540;
LABEL_36:
  *a4 = v17;
  icu::UnicodeString::~UnicodeString(v19);
LABEL_2:
  v4 = 0xFFFFFFFFLL;
LABEL_3:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_19521D930(uint64_t *a1)
{
  if (a1[3])
  {
    v1 = *(a1 + 8);
    v2 = a1[3];
    return icu::UnicodeString::char32At(v2, v1);
  }

  v2 = *a1;
  v1 = *(a1[1] + 8);
  if (*(v2 + 8) < 0)
  {
    v4 = *(v2 + 12);
  }

  else
  {
    v4 = *(v2 + 8) >> 5;
  }

  if (v1 < v4)
  {
    return icu::UnicodeString::char32At(v2, v1);
  }

  return 0xFFFFFFFFLL;
}

uint64_t *sub_19521D978(uint64_t *result, int a2)
{
  v2 = result[3];
  if (v2)
  {
    v3 = *(result + 8) + a2;
    *(result + 8) = v3;
    if (*(v2 + 8) < 0)
    {
      v4 = *(v2 + 12);
    }

    else
    {
      v4 = *(v2 + 8) >> 5;
    }

    if (v3 == v4)
    {
      result[3] = 0;
    }
  }

  else
  {
    v6 = *result;
    v5 = result[1];
    v7 = *(v5 + 8) + a2;
    *(v5 + 8) = v7;
    v8 = *(v6 + 8);
    if ((v8 & 0x8000) != 0)
    {
      v9 = *(v6 + 12);
      if (v7 <= v9)
      {
        return result;
      }
    }

    else
    {
      if (v7 <= (v8 >> 5))
      {
        return result;
      }

      v9 = v8 >> 5;
    }

    *(v5 + 8) = v9;
  }

  return result;
}

icu::UnicodeString *sub_19521D9F0(uint64_t a1, icu::UnicodeString *this, unsigned int a3)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = (a1 + 32);
  }

  else
  {
    v4 = *a1;
    v5 = (*(a1 + 8) + 8);
  }

  if (a3 >= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFFLL;
  }

  else
  {
    v6 = a3;
  }

  v7 = *v5;
  v8 = *(this + 4);
  v9 = v8;
  v10 = v8 >> 5;
  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(this + 3);
  }

  icu::UnicodeString::doReplace(this, 0, v11, v4, v7, v6);
  return this;
}

uint64_t sub_19521DA64(uint64_t result, uint64_t a2)
{
  *a2 = *(result + 24);
  v2 = *(result + 32);
  *(a2 + 8) = *(*(result + 8) + 8);
  *(a2 + 12) = v2;
  return result;
}

uint64_t sub_19521DA80(uint64_t result, uint64_t a2)
{
  *(result + 24) = *a2;
  v2 = *(a2 + 12);
  *(*(result + 8) + 8) = *(a2 + 8);
  *(result + 32) = v2;
  return result;
}

BOOL sub_19521DA9C(_BOOL8 result, char a2)
{
  if ((a2 & 4) != 0)
  {
    v2 = result;
    v3 = sub_19521D930(result);
    v4 = v3;
    for (result = icu::PatternProps::isWhiteSpace(v3); result; result = icu::PatternProps::isWhiteSpace(v6))
    {
      if (v4 < 0x10000)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }

      sub_19521D978(v2, v5);
      v6 = sub_19521D930(v2);
      v4 = v6;
    }
  }

  return result;
}

void *icu::StringCharacterIterator::StringCharacterIterator(icu::StringCharacterIterator *this)
{
  result = icu::UCharCharacterIterator::UCharCharacterIterator(this);
  *result = &unk_1F09332F8;
  result[4] = &unk_1F0935D00;
  *(result + 20) = 2;
  return result;
}

{
  result = icu::UCharCharacterIterator::UCharCharacterIterator(this);
  *result = &unk_1F09332F8;
  result[4] = &unk_1F0935D00;
  *(result + 20) = 2;
  return result;
}

icu::StringCharacterIterator *icu::StringCharacterIterator::StringCharacterIterator(icu::StringCharacterIterator *this, const icu::UnicodeString *a2)
{
  v4 = *(a2 + 4);
  if ((v4 & 0x11) != 0)
  {
    v5 = 0;
  }

  else if ((v4 & 2) != 0)
  {
    v5 = (a2 + 10);
  }

  else
  {
    v5 = *(a2 + 3);
  }

  v6 = v4;
  v12 = v5;
  v7 = v4 >> 5;
  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(a2 + 3);
  }

  icu::UCharCharacterIterator::UCharCharacterIterator(this, &v12, v8);
  *this = &unk_1F09332F8;
  icu::UnicodeString::UnicodeString((this + 32), a2);
  v9 = *(this + 20);
  if ((v9 & 0x11) != 0)
  {
    v10 = 0;
  }

  else if ((v9 & 2) != 0)
  {
    v10 = this + 42;
  }

  else
  {
    v10 = *(this + 7);
  }

  *(this + 3) = v10;
  return this;
}