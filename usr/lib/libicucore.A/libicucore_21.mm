uint64_t icu::Collator::compare(icu::Collator *this, UCharIterator *a2, UCharIterator *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    *a4 = U_UNSUPPORTED_ERROR;
  }

  return 0;
}

uint64_t icu::Collator::compareUTF8(icu::Collator *this, const icu::StringPiece *a2, const icu::StringPiece *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v12 = v4;
  v13 = v5;
  memset(&iter, 0, sizeof(iter));
  memset(&v10, 0, sizeof(v10));
  uiter_setUTF8(&iter, *a2, *(a2 + 2));
  uiter_setUTF8(&v10, *a3, *(a3 + 2));
  return (*(*this + 96))(this, &iter, &v10, a4);
}

uint64_t icu::Collator::getAvailableLocales(icu::Collator *this, int *a2)
{
  v5 = 0;
  *this = 0;
  if (atomic_load_explicit(&dword_1EAEC9C20, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9C20))
  {
    if (dword_1EAEC9C24 > 0 || v5 > 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1952C81C8(&v5);
    dword_1EAEC9C24 = v5;
    icu::umtx_initImplPostInit(&dword_1EAEC9C20);
    if (v5 > 0)
    {
      return 0;
    }
  }

  result = qword_1EAEC9C10;
  *this = dword_1EAEC9C18;
  return result;
}

icu::UnicodeString *icu::Collator::getDisplayName(icu::Collator *this, const icu::Locale *a2, icu::UnicodeString *a3)
{
  Default = icu::Locale::getDefault(this);

  return icu::Locale::getDisplayName(this, Default, a2);
}

BOOL icu::Collator::operator==(void *a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v3 = *(*a1 - 8);
  v4 = *(*a2 - 8);

  return sub_19520B9EC(v3, v4);
}

uint64_t icu::Collator::getTailoredSet(icu::Collator *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

void sub_1952C7AF4(icu::StringEnumeration *a1)
{
  icu::StringEnumeration::~StringEnumeration(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::Collator::getAvailableLocales(icu::Collator *this)
{
  v3 = 0;
  if (atomic_load_explicit(&dword_1EAEC9C20, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9C20))
  {
    sub_1952C81C8(&v3);
    dword_1EAEC9C24 = v3;
    icu::umtx_initImplPostInit(&dword_1EAEC9C20);
    if (v3 > 0)
    {
      return 0;
    }

LABEL_10:
    operator new();
  }

  if (dword_1EAEC9C24 <= 0 && v3 <= 0)
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t icu::Collator::getKeywords(icu::Collator *this, UErrorCode *a2)
{
  Keywords = ucol_getKeywords(this);

  return icu::UStringEnumeration::fromUEnumeration(Keywords, this);
}

uint64_t icu::Collator::getKeywordValues(icu::Collator *this, char *a2, UErrorCode *a3)
{
  KeywordValues = ucol_getKeywordValues(this, a2);

  return icu::UStringEnumeration::fromUEnumeration(KeywordValues, a2);
}

uint64_t icu::Collator::getKeywordValuesForLocale(icu::Collator *this, char **a2, const icu::Locale *a3, UErrorCode *a4, UErrorCode *a5)
{
  KeywordValuesForLocale = ucol_getKeywordValuesForLocale(this, a2[5], a3, a4);

  return icu::UStringEnumeration::fromUEnumeration(KeywordValuesForLocale, a4);
}

icu::Locale *icu::Collator::getFunctionalEquivalent@<X0>(icu::Collator *this@<X0>, char **a2@<X1>, const icu::Locale *a3@<X2>, signed __int8 *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, 157);
  ucol_getFunctionalEquivalent(v10, 157, this, a2[5], a3, a4);
  if (*a4 >= 1)
  {
    LOBYTE(v10[0]) = 0;
  }

  result = icu::Locale::createFromName(v10, a5);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void icu::Collator::setMaxVariable(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    *a3 = 16;
  }
}

uint64_t icu::Collator::getReorderCodes(icu::Collator *this, int *a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    *a4 = U_UNSUPPORTED_ERROR;
  }

  return 0;
}

void icu::Collator::setReorderCodes(icu::Collator *this, const int *a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    *a4 = U_UNSUPPORTED_ERROR;
  }
}

uint64_t icu::Collator::getEquivalentReorderCodes(icu::Collator *this, UErrorCode *a2, int *a3, icu::CollationRoot *a4, UErrorCode *a5)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v6 = a3;
  if ((a3 & 0x80000000) != 0 || (v8 = this, !a2) && a3)
  {
    *a4 = 1;
    return 0;
  }

  Data = icu::CollationRoot::getData(a4, a2);
  if (*a4 > 0)
  {
    return 0;
  }

  return icu::CollationData::getEquivalentScripts(Data, v8, a2, v6, a4);
}

uint64_t icu::Collator::internalGetShortDefinitionString(icu::Collator *this, const char *a2, char *a3, int a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    *a5 = U_UNSUPPORTED_ERROR;
  }

  return 0;
}

uint64_t icu::Collator::internalCompareUTF8(icu::Collator *this, const char *__s, int a3, const char *a4, int a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v18 = v6;
  v19 = v7;
  v10 = a5;
  if ((__s || !a3) && (a4 || !a5))
  {
    if (a3 < 0)
    {
      a3 = strlen(__s);
    }

    v16 = __s;
    v17 = a3;
    if (v10 < 0)
    {
      v10 = strlen(a4);
    }

    v14 = a4;
    v15 = v10;
    return (*(*this + 104))(this, &v16, &v14, a6);
  }

  else
  {
    result = 0;
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return result;
}

uint64_t icu::Collator::internalNextSortKeyPart(icu::Collator *this, UCharIterator *a2, unsigned int *a3, unsigned __int8 *a4, int a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    *a6 = U_UNSUPPORTED_ERROR;
  }

  return 0;
}

uint64_t sub_1952C8080(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 116);
  if (v3 >= dword_1EAEC9C18)
  {
    v6 = 0;
    if (a2)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = qword_1EAEC9C10;
    *(a1 + 116) = v3 + 1;
    v5 = v4 + 224 * v3;
    v6 = *(v5 + 40);
    if (a2)
    {
      v7 = strlen(*(v5 + 40));
LABEL_6:
      *a2 = v7;
    }
  }

  return v6;
}

char *sub_1952C80F4(icu::StringEnumeration *a1, UErrorCode *a2)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  return icu::StringEnumeration::setChars(a1, v4, v6, a2);
}

uint64_t sub_1952C816C(_BYTE *a1)
{
  v2 = 0;
  while (uprv_stricmp(a1, off_1E740C180[v2]))
  {
    if (++v2 == 5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return (v2 + 4096);
}

void sub_1952C81C8(UErrorCode *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  icu::StackUResourceBundle::StackUResourceBundle(v4);
  v2 = ures_openDirect("icudt76l-coll", "res_index", a1);
  ures_getByKey(v2, "InstalledLocales", v4, a1);
  if (*a1 <= 0)
  {
    dword_1EAEC9C18 = ures_getSize(v4);
    is_mul_ok(dword_1EAEC9C18, 0xE0uLL);
    operator new[]();
  }

  ures_close(v2);
  sub_195400588(0x1Du, sub_1952C839C);
  icu::StackUResourceBundle::~StackUResourceBundle(v4);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1952C839C()
{
  if (qword_1EAEC9C10)
  {
    v0 = qword_1EAEC9C10 - 16;
    v1 = *(qword_1EAEC9C10 - 8);
    if (v1)
    {
      v2 = (qword_1EAEC9C10 + 224 * v1 - 224);
      v3 = -224 * v1;
      do
      {
        icu::Locale::~Locale(v2);
        v2 = (v4 - 224);
        v3 += 224;
      }

      while (v3);
    }

    MEMORY[0x19A8B25E0](v0, 0x1091C80EF191B47);
    qword_1EAEC9C10 = 0;
  }

  dword_1EAEC9C18 = 0;
  atomic_store(0, &dword_1EAEC9C20);
  return 1;
}

uint64_t icu::Collation::incTwoBytePrimaryByOffset(icu::Collation *this, int a2, int a3)
{
  if (a2)
  {
    v3 = -4;
  }

  else
  {
    v3 = -2;
  }

  if (a2)
  {
    v4 = 251;
  }

  else
  {
    v4 = 254;
  }

  if (a2)
  {
    v5 = 0x40000;
  }

  else
  {
    v5 = 0x20000;
  }

  return ((this & 0xFF000000) + (((v3 + BYTE2(this) + a3) / v4) << 24)) | (v5 + (((v3 + BYTE2(this) + a3) % v4) << 16));
}

uint64_t icu::Collation::incThreeBytePrimaryByOffset(icu::Collation *this, int a2, int a3)
{
  if (a2)
  {
    v3 = -4;
  }

  else
  {
    v3 = -2;
  }

  if (a2)
  {
    v4 = 251;
  }

  else
  {
    v4 = 254;
  }

  if (a2)
  {
    v5 = 0x40000;
  }

  else
  {
    v5 = 0x20000;
  }

  return (v5 + (((v3 + BYTE2(this) + (a3 + BYTE1(this) - 2) / 254) % v4) << 16)) | ((((a3 + BYTE1(this) - 2) % 254) << 8) + 512) | ((this & 0xFF000000) + (((v3 + BYTE2(this) + (a3 + BYTE1(this) - 2) / 254) / v4) << 24));
}

uint64_t icu::Collation::decTwoBytePrimaryByOneStep(icu::Collation *this, int a2, int a3)
{
  v3 = BYTE2(this) - a3;
  v4 = v3 + 254;
  v5 = this - 0x1000000;
  if (v3 <= 1)
  {
    v6 = this - 0x1000000;
  }

  else
  {
    v6 = this;
  }

  if (v3 > 1)
  {
    v4 = BYTE2(this) - a3;
  }

  if (v3 <= 3)
  {
    v3 += 251;
  }

  else
  {
    v5 = this;
  }

  if (!a2)
  {
    v5 = v6;
    v3 = v4;
  }

  return v5 & 0xFF000000 | (v3 << 16);
}

uint64_t icu::Collation::decThreeBytePrimaryByOneStep(icu::Collation *this, int a2, int a3)
{
  v3 = BYTE1(this) - a3;
  v4 = BYTE2(this) - 1;
  if (a2)
  {
    v5 = 5;
  }

  else
  {
    v5 = 3;
  }

  if (a2)
  {
    v6 = 254;
  }

  else
  {
    v6 = 255;
  }

  if (BYTE2(this) >= v5)
  {
    v7 = this;
  }

  else
  {
    v7 = this - 0x1000000;
  }

  if (BYTE2(this) < v5)
  {
    v4 = v6;
  }

  v8 = v7 & 0xFF000000 | ((v3 << 8) + 65024) | (v4 << 16);
  if (v3 >= 2)
  {
    return this & 0xFFFF0000 | (v3 << 8);
  }

  else
  {
    return v8;
  }
}

icu::RuleBasedCollator *icu::RuleBasedCollator::RuleBasedCollator(icu::RuleBasedCollator *this)
{
  v2 = icu::Collator::Collator(this);
  *v2 = &unk_1F0942170;
  *(v2 + 1) = 0u;
  *(v2 + 3) = 0u;
  icu::Locale::Locale((v2 + 5), "", 0, 0, 0);
  *(this + 66) = 0;
  *(this + 268) = 0;
  return this;
}

icu::RuleBasedCollator *icu::RuleBasedCollator::RuleBasedCollator(icu::RuleBasedCollator *this, UErrorCode *a2, UErrorCode *a3)
{
  v6 = icu::Collator::Collator(this);
  *v6 = &unk_1F0942170;
  *(v6 + 1) = 0u;
  *(v6 + 3) = 0u;
  icu::Locale::Locale((v6 + 5), "", 0, 0, 0);
  *(this + 66) = 0;
  *(this + 268) = 0;
  icu::RuleBasedCollator::internalBuildTailoring(this, a2, -1, -1, 0, 0, a3);
  return this;
}

UErrorCode *icu::RuleBasedCollator::internalBuildTailoring(int a1, UErrorCode *a2, int a3, int a4, int a5, uint64_t a6, icu::CollationRoot *this)
{
  v14 = *MEMORY[0x1E69E9840];
  result = icu::CollationRoot::getRoot(this, a2);
  if (*this <= 0)
  {
    v10 = result;
    if (a6)
    {
      if (*(a6 + 8))
      {
        v11 = 2;
      }

      else
      {
        v11 = *(a6 + 8) & 0x1E;
      }

      *(a6 + 8) = v11;
    }

    bzero(v13, 0x268uLL);
    icu::CollationBuilder::CollationBuilder(v13, v10, 0, this);
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::RuleBasedCollator::RuleBasedCollator(uint64_t a1, UErrorCode *a2, int a3, icu::CollationRoot *a4)
{
  v8 = icu::Collator::Collator(a1);
  *v8 = &unk_1F0942170;
  *(v8 + 1) = 0u;
  *(v8 + 3) = 0u;
  icu::Locale::Locale((v8 + 5), "", 0, 0, 0);
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  icu::RuleBasedCollator::internalBuildTailoring(a1, a2, a3, -1, 0, 0, a4);
  return a1;
}

{
  v8 = icu::Collator::Collator(a1);
  *v8 = &unk_1F0942170;
  *(v8 + 1) = 0u;
  *(v8 + 3) = 0u;
  icu::Locale::Locale((v8 + 5), "", 0, 0, 0);
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  icu::RuleBasedCollator::internalBuildTailoring(a1, a2, -1, a3, 0, 0, a4);
  return a1;
}

uint64_t icu::RuleBasedCollator::RuleBasedCollator(uint64_t a1, UErrorCode *a2, int a3, int a4, icu::CollationRoot *a5)
{
  v10 = icu::Collator::Collator(a1);
  *v10 = &unk_1F0942170;
  *(v10 + 1) = 0u;
  *(v10 + 3) = 0u;
  icu::Locale::Locale((v10 + 5), "", 0, 0, 0);
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  icu::RuleBasedCollator::internalBuildTailoring(a1, a2, a3, a4, 0, 0, a5);
  return a1;
}

icu::RuleBasedCollator *icu::RuleBasedCollator::RuleBasedCollator(icu::RuleBasedCollator *this, UErrorCode *a2, UParseError *a3, icu::UnicodeString *a4, UErrorCode *a5)
{
  v7 = a3;
  v10 = icu::Collator::Collator(this);
  *v10 = &unk_1F0942170;
  *(v10 + 1) = 0u;
  *(v10 + 3) = 0u;
  icu::Locale::Locale((v10 + 5), "", 0, 0, 0);
  *(this + 66) = 0;
  *(this + 268) = 0;
  icu::RuleBasedCollator::internalBuildTailoring(this, a2, -1, -1, v7, a4, a5);
  return this;
}

void icu::CollationBuilder::CollationBuilder(icu::CollationBuilder *this, UErrorCode *a2, UErrorCode *a3)
{
  icu::CollationBuilder::CollationBuilder(this, a2, 0, a3);
}

{
  icu::CollationBuilder::CollationBuilder(this, a2, 0, a3);
}

uint64_t icu::CollationBuilder::parseAndBuild(icu::CollationBuilder *this, const icu::UnicodeString *a2, const unsigned __int8 *a3, icu::CollationRuleParser::Importer *a4, UParseError *a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    if (*(*(this + 5) + 128))
    {
      operator new();
    }

    *a6 = U_MISSING_RESOURCE_ERROR;
    *(this + 36) = "missing root elements data, tailoring not supported";
  }

  return 0;
}

void icu::CollationBuilder::CollationBuilder(icu::CollationBuilder *this, UErrorCode *a2, signed __int8 a3, UErrorCode *a4)
{
  *this = &unk_1F0938178;
  *(this + 1) = icu::Normalizer2::getNFDInstance(a4, a2);
  *(this + 2) = icu::Normalizer2Factory::getFCDInstance(a4, v7);
  *(this + 3) = icu::Normalizer2Factory::getNFCImpl(a4, v8);
  *(this + 4) = a2;
  v9 = *(a2 + 3);
  v10 = *(v9 + 128);
  v11 = *(v9 + 136);
  *(this + 5) = v9;
  *(this + 6) = v10;
  *(this + 14) = v11;
  *(this + 16) = 0;
  operator new();
}

void icu::CollationBuilder::~CollationBuilder(icu::CollationBuilder *this)
{
  *this = &unk_1F0938178;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::UVector64::~UVector64(this + 73);
  icu::UVector32::~UVector32(this + 69);
  icu::UnicodeSet::~UnicodeSet(v3, (this + 88));

  icu::CollationRuleParser::Sink::~Sink(this);
}

{
  icu::CollationBuilder::~CollationBuilder(this);

  JUMPOUT(0x19A8B2600);
}

atomic_uint *sub_1952C9150(atomic_uint **a1)
{
  v1 = *a1;
  if (icu::SharedObject::getRefCount(*a1) >= 2)
  {
    operator new();
  }

  return v1;
}

void icu::CollationBuilder::makeTailoredCEs(icu::CollationBuilder *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return;
  }

  v50 = v2;
  v51 = v3;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  icu::CollationWeights::CollationWeights(v48);
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  icu::CollationWeights::CollationWeights(v46);
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  icu::CollationWeights::CollationWeights(v44);
  if (*(this + 140) < 1)
  {
    return;
  }

  v5 = 0;
  v6 = *(this + 76);
  v40 = this;
  while (1)
  {
    Primary = 0;
    v42 = v5;
    v7 = *(v6 + 8 * *(*(this + 72) + 4 * v5));
    Weight = HIDWORD(v7);
    if (HIDWORD(v7))
    {
      LODWORD(v9) = 1280;
    }

    else
    {
      LODWORD(v9) = 0;
    }

    if (HIDWORD(v7))
    {
      Primary = icu::CollationRootElements::findPrimary((this + 48), HIDWORD(v7));
    }

    v10 = (v7 >> 8) & 0xFFFFF;
    if (v10)
    {
      break;
    }

LABEL_81:
    v5 = v42 + 1;
    if (v42 + 1 >= *(this + 140))
    {
      return;
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  LODWORD(v15) = v9;
  while (1)
  {
    v16 = *(v6 + 8 * v10);
    v17 = (v16 >> 8) & 0xFFFFF;
    if ((v16 & 3) <= 1)
    {
      break;
    }

    if ((v16 & 3) == 2)
    {
      if ((v16 & 8) != 0)
      {
        if (!v11)
        {
          if (v17)
          {
            v22 = 0;
            v23 = (v16 >> 8) & 0xFFFFF;
            do
            {
              v24 = *(v6 + 8 * v23);
              if ((v24 & 3u) < 2uLL)
              {
                break;
              }

              if ((v24 & 3) == 2)
              {
                if ((v24 & 8) == 0)
                {
                  break;
                }

                ++v22;
              }

              v23 = (v24 >> 8) & 0xFFFFF;
            }

            while (v23);
            v25 = v22 + 1;
          }

          else
          {
            v25 = 1;
          }

          v41 = v25;
          if (v15)
          {
            if (v13 | v12)
            {
              if (v15 == 256)
              {
                TertiaryAfter = 1280;
                LODWORD(v15) = 256;
              }

              else
              {
                v36 = *(*(this + 6) + 16);
                TertiaryAfter = *(*(this + 6) + 16) << 8;
              }
            }

            else
            {
              TertiaryAfter = icu::CollationRootElements::getTertiaryAfter(this + 6, Primary, v9, v15);
            }
          }

          else
          {
            v35 = *(this + 6);
            LODWORD(v15) = (v35[4] << 8) - 256;
            TertiaryAfter = v35[*v35] & 0x3F3F;
          }

          icu::CollationWeights::initForTertiary(v44);
          v37 = icu::CollationWeights::allocWeights(v44, v15, TertiaryAfter, v41);
          this = v40;
          if (!v37)
          {
            v38 = "tertiary tailoring gap too small";
            goto LABEL_87;
          }
        }

        LODWORD(v15) = icu::CollationWeights::nextWeight(v44);
        v14 = 0;
        v11 = 1;
        if ((v16 & 8) != 0)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v14 = 0;
        v11 = 0;
        v15 = HIWORD(v16);
      }
    }

    else
    {
      if (v14 == 3)
      {
        v38 = "quaternary tailoring gap too small";
        goto LABEL_87;
      }

      ++v14;
      if ((v16 & 8) != 0)
      {
        goto LABEL_74;
      }
    }

LABEL_75:
    v10 = (v16 >> 8) & 0xFFFFF;
    if (!v17)
    {
      goto LABEL_81;
    }
  }

  if ((v16 & 3) == 0)
  {
    if (!v13)
    {
      if (v17)
      {
        v18 = 0;
        v19 = (v16 >> 8) & 0xFFFFF;
        do
        {
          v20 = *(v6 + 8 * v19);
          if ((v20 & 3) == 0)
          {
            if ((v20 & 8) == 0)
            {
              break;
            }

            ++v18;
          }

          v19 = (v20 >> 8) & 0xFFFFF;
        }

        while (v19);
        v21 = v18 + 1;
      }

      else
      {
        v21 = 1;
      }

      v31 = *(*(*(this + 5) + 72) + (Weight >> 24));
      PrimaryAfter = icu::CollationRootElements::getPrimaryAfter((this + 48), Weight, Primary, v31);
      icu::CollationWeights::initForPrimary(v48, v31);
      if (!icu::CollationWeights::allocWeights(v48, Weight, PrimaryAfter, v21))
      {
        v38 = "primary tailoring gap too small";
        goto LABEL_87;
      }
    }

    Weight = icu::CollationWeights::nextWeight(v48);
    v14 = 0;
    v12 = 0;
    v11 = 0;
    LODWORD(v15) = 1280;
    v13 = 1;
    LODWORD(v9) = 1280;
    if ((v16 & 8) != 0)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  if ((v16 & 8) == 0)
  {
    v12 = 0;
    v9 = HIWORD(v16);
    goto LABEL_70;
  }

  if (v12)
  {
    goto LABEL_69;
  }

  if (!v17)
  {
    v29 = 1;
    if (v9)
    {
      goto LABEL_48;
    }

    goto LABEL_61;
  }

  v26 = 0;
  v27 = (v16 >> 8) & 0xFFFFF;
  do
  {
    v28 = *(v6 + 8 * v27);
    if ((v28 & 3) == 1)
    {
      if ((v28 & 8) == 0)
      {
        break;
      }

      ++v26;
    }

    else if ((v28 & 3) == 0)
    {
      break;
    }

    v27 = (v28 >> 8) & 0xFFFFF;
  }

  while (v27);
  v29 = v26 + 1;
  if (!v9)
  {
LABEL_61:
    v34 = *(this + 6);
    LODWORD(v9) = (*(v34 + 18) << 8) - 256;
    SecondaryAfter = *(v34 + 4 * *(v34 + 4) + 2);
    goto LABEL_66;
  }

LABEL_48:
  if (v13)
  {
    if (v9 == 256)
    {
      LODWORD(v9) = 256;
      SecondaryAfter = 1280;
      goto LABEL_68;
    }

    SecondaryAfter = *(*(this + 6) + 18) << 8;
  }

  else
  {
    SecondaryAfter = icu::CollationRootElements::getSecondaryAfter((this + 48), Primary, v9);
  }

LABEL_66:
  if (v9 == 1280)
  {
    LODWORD(v9) = *(*(this + 6) + 19) << 8;
  }

LABEL_68:
  icu::CollationWeights::initForSecondary(v46);
  if (icu::CollationWeights::allocWeights(v46, v9, SecondaryAfter, v29))
  {
LABEL_69:
    LODWORD(v9) = icu::CollationWeights::nextWeight(v46);
    v12 = 1;
LABEL_70:
    v14 = 0;
    v11 = 0;
    if (v9)
    {
      LODWORD(v15) = 1280;
    }

    else
    {
      LODWORD(v15) = 0;
    }

    if ((v16 & 8) == 0)
    {
      goto LABEL_75;
    }

LABEL_74:
    *(v6 + 8 * v10) = (v9 << 16) | (Weight << 32) | v15 | (v14 << 6);
    goto LABEL_75;
  }

  v38 = "secondary tailoring gap too small";
LABEL_87:
  *a2 = U_BUFFER_OVERFLOW_ERROR;
  *(this + 36) = v38;
}

void icu::CollationBuilder::closeOverComposites(icu::CollationBuilder *this, UErrorCode *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = "[";
  icu::UnicodeString::UnicodeString(&v19, 1, &v11);
  icu::UnicodeSet::UnicodeSet(v12, &v19, a2);
  icu::UnicodeString::~UnicodeString(v4, &v19);
  if (*a2 <= 0)
  {
    icu::UnicodeSet::remove(v12, 0xAC00u, 0xD7A3u);
    v20 = 0u;
    v23 = 0;
    v22 = 0u;
    v21 = 0u;
    v18 = 0;
    v19 = &unk_1F0935D00;
    LOWORD(v20) = 2;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = &unk_1F0935D00;
    LOWORD(v15) = 2;
    memset(v10, 0, sizeof(v10));
    icu::UnicodeSetIterator::UnicodeSetIterator(v10, v12);
    while (icu::UnicodeSetIterator::next(v10))
    {
      (*(**(this + 1) + 56))(*(this + 1), DWORD2(v10[0]), &v14);
      CEs = icu::CollationDataBuilder::getCEs(*(this + 9), &v14, this + 37, 0);
      *(this + 136) = CEs;
      if (CEs <= 31)
      {
        String = icu::UnicodeSetIterator::getString(v10);
        icu::CollationBuilder::addIfDifferent(this, &v19, String, this + 37, *(this + 136), 0xFFFFFFFFLL, a2);
      }
    }

    icu::UnicodeSetIterator::~UnicodeSetIterator(v10);
    icu::UnicodeString::~UnicodeString(v7, &v14);
    icu::UnicodeString::~UnicodeString(v8, &v19);
  }

  icu::UnicodeSet::~UnicodeSet(v12);
  v9 = *MEMORY[0x1E69E9840];
}

void icu::CollationBuilder::finalizeCEs(icu::CollationBuilder *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v8 = v5;
    v9 = v4;
    v10 = v3;
    v11 = v2;
    v12 = v6;
    v13 = v7;
    operator new();
  }
}

uint64_t icu::CollationBuilder::addReset(uint64_t this, signed int a2, const icu::UnicodeString *a3, const char **a4, UErrorCode *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v8 = this;
    v9 = *(a3 + 4);
    if ((v9 & 0x8000u) == 0)
    {
      v10 = v9 >> 5;
    }

    else
    {
      v10 = *(a3 + 3);
    }

    if (v10)
    {
      v11 = (v9 & 2) != 0 ? (a3 + 10) : *(a3 + 3);
      if (*v11 == -2)
      {
        this = icu::CollationBuilder::getSpecialResetPosition(this, a3, a4, a5);
        *(v8 + 296) = this;
        *(v8 + 544) = 1;
        if (a2 == 15 || *a5 > 0)
        {
          goto LABEL_18;
        }

LABEL_20:
        this = icu::CollationBuilder::findOrInsertNodeForCEs(v8, a2, a4, a5);
        if (*a5 > 0)
        {
          goto LABEL_18;
        }

        v17 = this;
        if ((this & 0x80000000) != 0 || *(v8 + 592) <= this)
        {
          v18 = 0;
        }

        else
        {
          v18 = *(*(v8 + 608) + 8 * this);
        }

        for (i = v18 & 3; i > a2; i = v18 & 3)
        {
          v17 = (v18 >> 28) & 0xFFFFF;
          if (*(v8 + 592) <= v17)
          {
            v18 = 0;
          }

          else
          {
            v18 = *(*(v8 + 608) + 8 * v17);
          }
        }

        if ((v18 & 8) != 0 && i == a2)
        {
          v20 = v18 >> 28;
LABEL_33:
          if (*a5 < 1)
          {
            *(v8 + 8 * *(v8 + 544) + 288) = (((v20 & 0x1FC0) << 42) & 0x80FFFFFFFFFFFFFFLL | ((((v20 & 0xFE000) >> 13) & 0x7F) << 56) | ((v20 & 0x3F) << 24)) + (a2 << 8) + 0x4040000006002000;
            goto LABEL_18;
          }

          v21 = "inserting reset position for &[before n]";
          goto LABEL_35;
        }

        if (!a2)
        {
          v25 = HIDWORD(v18);
          if (HIDWORD(v18))
          {
            this = v8 + 48;
            if (*(*(v8 + 48) + 4 * *(*(v8 + 48) + 8)) >= HIDWORD(v18))
            {
              *a5 = U_UNSUPPORTED_ERROR;
              v21 = "reset primary-before first non-ignorable not supported";
            }

            else
            {
              if (v25 != 4278321664)
              {
                PrimaryBefore = icu::CollationRootElements::getPrimaryBefore(this, v25, *(*(*(v8 + 40) + 72) + HIBYTE(v18)));
                this = icu::CollationBuilder::findOrInsertNodeForPrimary(v8, PrimaryBefore, a5);
                while (1)
                {
                  LODWORD(v20) = this;
                  if ((this & 0x80000000) != 0 || *(v8 + 592) <= this)
                  {
                    goto LABEL_83;
                  }

                  a2 = 0;
                  this = (*(*(v8 + 608) + 8 * this) >> 8) & 0xFFFFF;
                  if (!this)
                  {
                    goto LABEL_33;
                  }
                }
              }

              *a5 = U_UNSUPPORTED_ERROR;
              v21 = "reset primary-before [first trailing] not supported";
            }
          }

          else
          {
            *a5 = U_UNSUPPORTED_ERROR;
            v21 = "reset primary-before ignorable not possible";
          }

LABEL_35:
          *a4 = v21;
          goto LABEL_18;
        }

        this = icu::CollationBuilder::findCommonNode(v8, v17, 1);
        v23 = this;
        if (a2 != 1)
        {
          this = icu::CollationBuilder::findCommonNode(v8, this, 2);
          v23 = this;
        }

        if ((v23 & 0x80000000) != 0 || *(v8 + 592) <= v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = *(*(v8 + 608) + 8 * v23);
        }

        if ((v24 & 3) == a2)
        {
          if (!HIWORD(v24))
          {
            *a5 = U_UNSUPPORTED_ERROR;
            v21 = "reset secondary-before secondary ignorable not possible";
            if (a2 != 1)
            {
              v21 = "reset tertiary-before completely ignorable not possible";
            }

            goto LABEL_35;
          }

          this = icu::CollationBuilder::getWeight16Before(v8, v22, v24, a2);
          v20 = (v24 >> 28) & 0xFFFFF;
          LODWORD(v29) = v20;
          while (1)
          {
            if (*(v8 + 592) <= v29)
            {
              v30 = 0;
            }

            else
            {
              v30 = *(*(v8 + 608) + 8 * v29);
            }

            if ((v30 & 3) < a2)
            {
              LODWORD(v31) = 1280;
              goto LABEL_76;
            }

            if ((v30 & 8) == 0 && (v30 & 3) == a2)
            {
              break;
            }

            v29 = (v30 >> 28) & 0xFFFFF;
          }

          v31 = HIWORD(v30);
LABEL_76:
          if (v31 == this)
          {
            goto LABEL_53;
          }

          this = icu::CollationBuilder::insertNodeBetween(v8, v20, v23, a2 | (this << 48), a5);
        }

        else
        {
          Weight16Before = icu::CollationBuilder::getWeight16Before(v8, v22, v24, a2);
          this = icu::CollationBuilder::findOrInsertWeakNode(v8, v23, Weight16Before, a2, a5);
        }

        LODWORD(v20) = this;
LABEL_53:
        v27 = *(v8 + 8 * *(v8 + 544) + 288);
        if ((v27 - 1174405120) >> 30 == 3)
        {
          a2 = (v27 >> 8) & 3;
          goto LABEL_33;
        }

        if (!HIBYTE(v27))
        {
          if (v27)
          {
            v28 = 2;
          }

          else
          {
            v28 = 15;
          }

          if ((v27 & 0xFF000000) != 0)
          {
            a2 = 1;
          }

          else
          {
            a2 = v28;
          }

          goto LABEL_33;
        }

LABEL_83:
        a2 = 0;
        goto LABEL_33;
      }
    }

    v12 = *(this + 8);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    v33 = &unk_1F0935D00;
    LOWORD(v34) = 2;
    (*(*v12 + 24))(v12, a3, &v33, a5);
    if (*a5 <= 0)
    {
      CEs = icu::CollationDataBuilder::getCEs(*(v8 + 72), &v33, (v8 + 296), 0);
      *(v8 + 544) = CEs;
      if (CEs < 32)
      {
        this = icu::UnicodeString::~UnicodeString(v15, &v33);
        if (a2 == 15)
        {
          goto LABEL_18;
        }

        goto LABEL_20;
      }

      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
      v13 = "reset position maps to too many collation elements (more than 31)";
    }

    else
    {
      v13 = "normalizing the reset position";
    }

    *a4 = v13;
    this = icu::UnicodeString::~UnicodeString(v13, &v33);
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
  return this;
}

unint64_t icu::CollationBuilder::getSpecialResetPosition(icu::CollationData **this, const icu::UnicodeString *a2, const char **a3, UErrorCode *a4)
{
  v4 = *(a2 + 4);
  if ((v4 & 0x8000u) == 0)
  {
    v5 = v4 >> 5;
  }

  else
  {
    v5 = *(a2 + 3);
  }

  if (v5 < 2)
  {
LABEL_90:
    abort();
  }

  if ((v4 & 2) != 0)
  {
    v6 = a2 + 10;
  }

  else
  {
    v6 = *(a2 + 3);
  }

  v7 = *(v6 + 1);
  v10 = 0;
  v11 = 0;
  CEWithPrimaryAtLeast = 0xFF02020005000500;
  v13 = 1;
  switch(v7)
  {
    case 10240:
    case 10241:
      return v11;
    case 10242:
      inserted = icu::CollationBuilder::findOrInsertNodeForRootCE(this, 0, 2, a4);
      if (*a4 > 0)
      {
        return 0;
      }

      if ((inserted & 0x80000000) == 0 && (v15 = *(this + 148), v15 > inserted) && ((v16 = this[76], v17 = *(v16 + inserted), (v18 = (v17 >> 8) & 0xFFFFF) != 0) ? (v19 = v15 > v18) : (v19 = 0), v19 && (*(v16 + v18) & 0xBLL) == 0xA))
      {
        return (((((v17 >> 8) & 0x1FC0) << 42) & 0x80FFFFFFFFFFFFFFLL | (((((v17 >> 8) & 0xFE000) >> 13) & 0x7F) << 56) | (((v17 >> 8) & 0x3F) << 24)) + 0x4040000006002000) | 0x200;
      }

      else
      {
        return *(this[6] + *this[6]) & 0xFFFFFF7F;
      }

    case 10243:
      v13 = 0;
      CEWithPrimaryAtLeast = *(this[6] + (*(this[6] + 1) - 1)) & 0xFFFFFF7F;
      v10 = 2;
      goto LABEL_44;
    case 10244:
      v22 = icu::CollationBuilder::findOrInsertNodeForRootCE(this, 0, 1, a4);
      if (*a4 > 0)
      {
        return 0;
      }

      if ((v22 & 0x80000000) != 0 || *(this + 148) <= v22)
      {
        LODWORD(v23) = 0;
      }

      else
      {
        v23 = *(this[76] + v22);
      }

      break;
    case 10245:
      v13 = 0;
      v24 = *(this[6] + (*(this[6] + 2) - 1));
      goto LABEL_43;
    case 10246:
      v10 = 0;
      CEWithPrimaryAtLeast = (*(this[6] + *(this[6] + 2)) << 32) | 0x5000500;
      goto LABEL_44;
    case 10247:
      CEWithPrimaryBefore = icu::CollationRootElements::lastCEWithPrimaryBefore((this + 6), *(this + 16) + 1);
      goto LABEL_33;
    case 10248:
      CEWithPrimaryAtLeast = icu::CollationRootElements::firstCEWithPrimaryAtLeast((this + 6), (*(this + 16) + 1));
      goto LABEL_34;
    case 10249:
      FirstPrimaryForGroup = icu::CollationData::getFirstPrimaryForGroup(this[5], 0x11u);
      CEWithPrimaryBefore = icu::CollationRootElements::firstCEWithPrimaryAtLeast((this + 6), FirstPrimaryForGroup);
      goto LABEL_33;
    case 10250:
      CEWithPrimaryBefore = icu::CollationData::getSingleCE(this[5], 0x4E00, a4);
LABEL_33:
      CEWithPrimaryAtLeast = CEWithPrimaryBefore;
      v13 = 0;
LABEL_34:
      v10 = 0;
      goto LABEL_44;
    case 10251:
      v11 = 0;
      *a4 = U_UNSUPPORTED_ERROR;
      v21 = "reset to [last implicit] not supported";
      goto LABEL_29;
    case 10252:
      goto LABEL_44;
    case 10253:
      v11 = 0;
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
      v21 = "LDML forbids tailoring to U+FFFF";
LABEL_29:
      *a3 = v21;
      return v11;
    default:
      goto LABEL_90;
  }

  do
  {
    v26 = (v23 >> 8) & 0xFFFFF;
    if (v26)
    {
      v27 = *(this + 148);
      if (v27 > v26)
      {
        v28 = this[76];
        v23 = *(v28 + v26);
        if ((*(v28 + 2 * v26) & 3) != 0)
        {
          continue;
        }
      }
    }

    goto LABEL_42;
  }

  while ((v23 & 3) != 1);
  if ((v23 & 8) != 0)
  {
    if ((v23 & 0x20) != 0)
    {
      v43 = (v23 >> 8) & 0xFFFFF;
      if (v27 <= v43)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v28 + v43) >> 8;
      }
    }

    return ((((v26 & 0x1FC0) << 42) & 0x80FFFFFFFFFFFFFFLL | ((((v26 & 0xFE000) >> 13) & 0x7F) << 56) | ((v26 & 0x3F) << 24)) + 0x4040000006002000) | 0x100;
  }

LABEL_42:
  v13 = 0;
  v24 = *(this[6] + *(this[6] + 1));
LABEL_43:
  CEWithPrimaryAtLeast = v24 & 0xFFFFFFFFFFFFFF7FLL;
  v10 = 1;
LABEL_44:
  v29 = icu::CollationBuilder::findOrInsertNodeForRootCE(this, CEWithPrimaryAtLeast, v10, a4);
  if (*a4 > 0)
  {
    return 0;
  }

  if (v29 < 0 || *(this + 148) <= v29)
  {
    LODWORD(v31) = 0;
    if (v7)
    {
LABEL_50:
      for (i = (v31 >> 8) & 0xFFFFF; i; v29 = v33)
      {
        v33 = i;
        if (*(this + 148) <= i)
        {
          LODWORD(v34) = 0;
        }

        else
        {
          v34 = *(this[76] + i);
        }

        if ((v34 & 3u) < v10)
        {
          break;
        }

        i = (v34 >> 8) & 0xFFFFF;
        LOBYTE(v31) = v34;
      }

      v11 = CEWithPrimaryAtLeast;
      if ((v31 & 8) != 0)
      {
        return ((v10 << 8) | 0x4040000006002000) + ((v29 & 0xFE000) << 43) + ((v29 & 0x1FC0) << 42) + ((v29 & 0x3F) << 24);
      }

      return v11;
    }
  }

  else
  {
    v31 = *(this[76] + v29);
    if (v7)
    {
      goto LABEL_50;
    }
  }

  v35 = v13 ^ 1;
  if ((v31 & 0x60) != 0)
  {
    v35 = 1;
  }

  if ((v35 & 1) == 0)
  {
    v29 = (v31 >> 8) & 0xFFFFF;
    if (v29)
    {
      v36 = v31 >> 8;
      if (*(this + 148) <= v29)
      {
        LODWORD(v31) = 0;
      }

      else
      {
        v31 = *(this[76] + v29);
      }

      CEWithPrimaryAtLeast = ((v10 << 8) | 0x4040000006002000) + ((v36 & 0xFE000) << 43) + ((v36 & 0x1FC0) << 42) + ((v36 & 0x3F) << 24);
    }

    else
    {
      Primary = icu::CollationRootElements::findPrimary((this + 6), HIDWORD(CEWithPrimaryAtLeast));
      PrimaryAfter = icu::CollationRootElements::getPrimaryAfter((this + 6), HIDWORD(CEWithPrimaryAtLeast), Primary, *(*(this[5] + 9) + HIBYTE(CEWithPrimaryAtLeast)));
      if (*a4 > 0)
      {
        return 0;
      }

      v39 = PrimaryAfter;
      v29 = icu::CollationBuilder::findOrInsertNodeForPrimary(this, PrimaryAfter, a4);
      if (*a4 > 0)
      {
        return 0;
      }

      CEWithPrimaryAtLeast = (v39 << 32) | 0x5000500;
      if (v29 < 0 || *(this + 148) <= v29)
      {
        return CEWithPrimaryAtLeast;
      }

      v31 = *(this[76] + v29);
    }
  }

  v11 = CEWithPrimaryAtLeast;
  if ((v31 & 0x60) != 0)
  {
    if ((v31 & 0x40) != 0)
    {
      v40 = (v31 >> 8) & 0xFFFFF;
      v41 = *(this + 148);
      if (v41 <= v40)
      {
        v29 = 0;
      }

      else
      {
        v29 = (*(this[76] + v40) >> 8) & 0xFFFFF;
      }

      if (v41 <= v29)
      {
        return ((v10 << 8) | 0x4040000006002000) + ((v29 & 0xFE000) << 43) + ((v29 & 0x1FC0) << 42) + ((v29 & 0x3F) << 24);
      }

      v31 = *(this[76] + v29);
    }

    if ((v31 & 0x20) != 0)
    {
      v42 = (v31 >> 8) & 0xFFFFF;
      if (*(this + 148) <= v42)
      {
        v29 = 0;
      }

      else
      {
        v29 = *(this[76] + v42) >> 8;
      }
    }

    return ((v10 << 8) | 0x4040000006002000) + ((v29 & 0xFE000) << 43) + ((v29 & 0x1FC0) << 42) + ((v29 & 0x3F) << 24);
  }

  return v11;
}

unint64_t icu::CollationBuilder::findOrInsertNodeForCEs(icu::CollationBuilder *this, int a2, const char **a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v6 = *(this + 136);
  if (!v6)
  {
LABEL_18:
    v8 = 0;
    *(this + 37) = 0;
    *(this + 136) = 1;
    return icu::CollationBuilder::findOrInsertNodeForRootCE(this, v8, a2, a4);
  }

  v7 = v6 - 1;
  while (1)
  {
    v8 = *(this + v6 + 36);
    if ((v8 - 1174405120) >> 30 != 3)
    {
      break;
    }

    if (((v8 >> 8) & 3) <= a2)
    {
      return ((v8 - 0x4040000006002000) >> 43) & 0xFE000 | ((v8 - 0x4040000006002000) >> 42) & 0x1FC0 | ((v8 - 100671488) >> 24) & 0x3F;
    }

LABEL_17:
    *(this + 136) = v7--;
    if (!--v6)
    {
      goto LABEL_18;
    }
  }

  if (HIBYTE(v8))
  {
    v9 = 0;
  }

  else
  {
    if (v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 15;
    }

    if ((v8 & 0xFF000000) != 0)
    {
      v9 = 1;
    }
  }

  if (v9 > a2)
  {
    goto LABEL_17;
  }

  if (HIBYTE(v8) != 254)
  {
    return icu::CollationBuilder::findOrInsertNodeForRootCE(this, v8, a2, a4);
  }

  result = 0;
  *a4 = U_UNSUPPORTED_ERROR;
  *a3 = "tailoring relative to an unassigned code point not supported";
  return result;
}

uint64_t icu::CollationBuilder::findOrInsertNodeForPrimary(icu::CollationBuilder *this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v7 = *(this + 140);
  v8 = *(this + 76);
  if (!v7)
  {
    v10 = -1;
    goto LABEL_19;
  }

  v9 = *(this + 72);
  v10 = v7 / 2;
  v11 = *(v8 + 8 * *(v9 + 4 * (v7 / 2)) + 4);
  if (v11 == a2)
  {
LABEL_15:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v3 = *(this + 148);
    v14 = v3 + 1;
    if (v3 < -1 || *(this + 149) <= v3)
    {
      if (!icu::UVector64::expandCapacity((this + 584), v14, a3))
      {
LABEL_25:
        icu::UVector32::insertElementAt(this + 138, v3, ~v10, a3);
        return v3;
      }

      v15 = *(this + 148);
      v14 = v15 + 1;
      v8 = *(this + 76);
    }

    else
    {
      v15 = *(this + 148);
    }

    *(v8 + 8 * v15) = a2 << 32;
    *(this + 148) = v14;
    goto LABEL_25;
  }

  v12 = 0;
  v13 = *(this + 140);
  while (v11 <= a2)
  {
    if (v10 == v12)
    {
      v10 = -2 - v10;
      goto LABEL_15;
    }

    v12 = v10;
LABEL_11:
    v10 = (v12 + v13) / 2;
    v11 = *(v8 + 8 * *(v9 + 4 * v10) + 4);
    if (v11 == a2)
    {
      goto LABEL_15;
    }
  }

  if (v10 != v12)
  {
    v13 = v10;
    goto LABEL_11;
  }

  v10 = ~v10;
  if (v10 < 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v7 > v10)
  {
    return *(v9 + 4 * v10);
  }

  return 0;
}

uint64_t icu::CollationBuilder::findCommonNode(icu::CollationBuilder *this, uint64_t a2, int a3)
{
  if ((a2 & 0x80000000) != 0 || *(this + 148) <= a2)
  {
    LODWORD(v3) = 0;
  }

  else
  {
    v3 = *(*(this + 76) + 8 * a2);
  }

  if ((v3 & 3) < a3)
  {
    if (a3 == 1)
    {
      if ((v3 & 0x40) == 0)
      {
        return a2;
      }
    }

    else if ((v3 & 0x20) == 0)
    {
      return a2;
    }

    v4 = (v3 >> 8) & 0xFFFFF;
    v5 = *(this + 148);
    if (v5 <= v4)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      v6 = *(*(this + 76) + 8 * v4);
    }

    do
    {
      do
      {
        a2 = (v6 >> 8) & 0xFFFFF;
        LODWORD(v6) = 0;
      }

      while (v5 <= a2);
      v6 = *(*(this + 76) + 8 * a2);
    }

    while ((v6 & 8) != 0 || (v6 & 3) > a3 || HIBYTE(v6) < 5u);
  }

  return a2;
}

uint64_t icu::CollationBuilder::getWeight16Before(icu::CollationBuilder *this, int a2, unint64_t a3, int a4)
{
  if ((a3 & 3) == 2)
  {
    v4 = HIWORD(a3);
  }

  else
  {
    v4 = 1280;
  }

  v5 = a3 & 3;
  if (v5 < 2)
  {
LABEL_7:
    if ((a3 & 8) != 0)
    {
      return 256;
    }

    if (v5)
    {
      v7 = HIWORD(a3);
      goto LABEL_12;
    }
  }

  else
  {
    while (1)
    {
      v6 = (a3 >> 28) & 0xFFFFF;
      if (*(this + 148) <= v6)
      {
        break;
      }

      a3 = *(*(this + 76) + 8 * v6);
      v5 = a3 & 3;
      if (v5 <= 1)
      {
        goto LABEL_7;
      }
    }

    a3 = 0;
  }

  LODWORD(v7) = 1280;
LABEL_12:
  if ((a3 & 3) != 0)
  {
    while (1)
    {
      v8 = (a3 >> 28) & 0xFFFFF;
      if (*(this + 148) <= v8)
      {
        break;
      }

      a3 = *(*(this + 76) + 8 * v8);
      if ((a3 & 3) == 0)
      {
        goto LABEL_15;
      }
    }

    HIDWORD(a3) = 0;
    goto LABEL_18;
  }

LABEL_15:
  if ((a3 & 8) != 0)
  {
    return 256;
  }

LABEL_18:
  v10 = (this + 48);
  if (a4 == 1)
  {
    return icu::CollationRootElements::getSecondaryBefore(v10, HIDWORD(a3), v7);
  }

  else
  {
    return icu::CollationRootElements::getTertiaryBefore(v10, HIDWORD(a3), v7, v4);
  }
}

uint64_t icu::CollationBuilder::insertNodeBetween(icu::CollationBuilder *this, signed int a2, unsigned int a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v10 = *(this + 148);
  v11 = v10 + 1;
  if (v10 < -1 || *(this + 149) <= v10)
  {
    if (!icu::UVector64::expandCapacity((this + 584), v11, a5))
    {
      goto LABEL_8;
    }

    v12 = *(this + 148);
    v11 = v12 + 1;
  }

  else
  {
    v12 = *(this + 148);
  }

  *(*(this + 76) + 8 * v12) = a4 | (a2 << 28) | (a3 << 8);
  *(this + 148) = v11;
LABEL_8:
  if (*a5 > 0)
  {
    return 0;
  }

  if (a2 < 0 || *(this + 148) <= a2)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(*(this + 76) + 8 * a2) & 0xFFFFFFFFF00000FFLL;
  }

  icu::UVector64::setElementAt(this + 584, v14 | (v10 << 8), a2);
  if (a3)
  {
    if ((a3 & 0x80000000) != 0 || *(this + 148) <= a3)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(*(this + 76) + 8 * a3) & 0xFFFF00000FFFFFFFLL;
    }

    icu::UVector64::setElementAt(this + 584, v15 | (v10 << 28), a3);
  }

  return v10;
}

uint64_t icu::CollationBuilder::findOrInsertWeakNode(icu::CollationBuilder *this, uint64_t a2, uint64_t a3, int a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v8 = a2;
  if (a3 == 1280)
  {

    return icu::CollationBuilder::findCommonNode(this, a2, a4);
  }

  else
  {
    if ((a2 & 0x80000000) != 0 || *(this + 148) <= a2)
    {
      v11 = 0;
    }

    else
    {
      v11 = *(*(this + 76) + 8 * a2);
    }

    if ((a3 - 1) <= 0x4FE)
    {
      v12 = 32;
      if (a4 == 1)
      {
        v12 = 64;
      }

      if ((v11 & v12) == 0)
      {
        v14 = a4;
        if (a4 == 1)
        {
          v15 = v11 & 0x20;
        }

        else
        {
          v15 = 0;
        }

        v16 = a4 | 0x500000000000000;
        if (a4 == 1)
        {
          v17 = v11 & 0xFFFFFFFFFFFFFFDFLL;
        }

        else
        {
          v17 = v11;
        }

        icu::UVector64::setElementAt(this + 584, v17 | v12, a2);
        v18 = (v17 >> 8) & 0xFFFFF;
        inserted = icu::CollationBuilder::insertNodeBetween(this, v8, v18, v14 | (a3 << 48), a5);
        icu::CollationBuilder::insertNodeBetween(this, inserted, v18, v15 | v16, a5);
        return inserted;
      }
    }

    while (1)
    {
      inserted = (v11 >> 8) & 0xFFFFF;
      if (!inserted)
      {
        break;
      }

      v11 = *(this + 148) <= inserted ? 0 : *(*(this + 76) + 8 * inserted);
      if ((v11 & 3) <= a4)
      {
        if ((v11 & 3) < a4)
        {
          break;
        }

        if ((v11 & 8) == 0)
        {
          if (HIWORD(v11) == a3)
          {
            return inserted;
          }

          if (HIWORD(v11) > a3)
          {
            break;
          }
        }
      }

      v8 = inserted;
    }

    v13 = a4 | (a3 << 48);

    return icu::CollationBuilder::insertNodeBetween(this, v8, inserted, v13, a5);
  }
}

uint64_t icu::CollationBuilder::ceStrength(unint64_t this)
{
  if (this)
  {
    v1 = 2;
  }

  else
  {
    v1 = 15;
  }

  if ((this & 0xFF000000) != 0)
  {
    v1 = 1;
  }

  if (HIBYTE(this))
  {
    v2 = 0;
  }

  else
  {
    v2 = v1;
  }

  if ((this - 1174405120) >> 30 == 3)
  {
    return (this >> 8) & 3;
  }

  else
  {
    return v2;
  }
}

uint64_t icu::CollationBuilder::findOrInsertNodeForRootCE(icu::CollationBuilder *this, unint64_t a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v8 = a2;
  inserted = icu::CollationBuilder::findOrInsertNodeForPrimary(this, HIDWORD(a2), a4);
  if (a3 < 1)
  {
    return inserted;
  }

  inserted = icu::CollationBuilder::findOrInsertWeakNode(this, inserted, HIWORD(v8), 1, a4);
  if (a3 == 1)
  {
    return inserted;
  }

  return icu::CollationBuilder::findOrInsertWeakNode(this, inserted, v8 & 0x3F3F, 2, a4);
}

void **icu::CollationBuilder::addRelation(void **this, int a2, const icu::UnicodeString *a3, const icu::UnicodeString *a4, const icu::UnicodeString *a5, char **a6, UErrorCode *a7)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    v13 = this;
    v14 = 0uLL;
    v54 = 0u;
    v57 = 0;
    v56 = 0u;
    v55 = 0u;
    v53 = &unk_1F0935D00;
    LOWORD(v54) = 2;
    if (*(a3 + 4) >= 0x20u)
    {
      (*(*this[1] + 24))(this[1], a3, &v53, a7);
      v14 = 0uLL;
      if (*a7 >= 1)
      {
        v15 = "normalizing the relation prefix";
        *a6 = "normalizing the relation prefix";
LABEL_9:
        this = icu::UnicodeString::~UnicodeString(v15, &v53);
        goto LABEL_10;
      }
    }

    v16 = *(v13 + 8);
    v49 = v14;
    v50 = v14;
    v51 = v14;
    v52 = 0;
    v48 = &unk_1F0935D00;
    LOWORD(v49) = 2;
    (*(*v16 + 24))(v16, a4, &v48, a7);
    if (*a7 >= 1)
    {
      v17 = "normalizing the relation string";
LABEL_7:
      *a6 = v17;
LABEL_8:
      icu::UnicodeString::~UnicodeString(v17, &v48);
      goto LABEL_9;
    }

    if (v49 < 0)
    {
      v19 = DWORD1(v49);
      if (SDWORD1(v49) <= 1)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v49 < 0x40u)
      {
        goto LABEL_30;
      }

      v19 = v49 >> 5;
    }

    v20 = &v49 + 1;
    if ((v49 & 2) == 0)
    {
      v20 = v50;
    }

    v21 = *v20;
    v22 = v21 - 4371;
    v23 = v21 - 4470;
    if (v22 > 0xFFFFFFEC || v23 >= 0xFFFFFFEB)
    {
      *a7 = U_UNSUPPORTED_ERROR;
      v17 = "contractions starting with conjoining Jamo L or V not supported";
      goto LABEL_7;
    }

    v25 = v19 - 1;
    v26 = v49 >> 5;
    if ((v49 & 0x8000u) != 0)
    {
      v26 = DWORD1(v49);
    }

    if (v26 > v25)
    {
      v27 = v20[v25];
      if ((v27 - 4371) > 0xFFFFFFEC || (v27 - 4470) >= 0xFFFFFFEB && (v28 = v19 - 2, v26 > v28) && v20[v28] - 4371 >= 0xFFFFFFED)
      {
        *a7 = U_UNSUPPORTED_ERROR;
        v17 = "contractions ending with conjoining Jamo L or L+V not supported";
        goto LABEL_7;
      }
    }

LABEL_30:
    if (a2 != 15)
    {
      inserted = icu::CollationBuilder::findOrInsertNodeForCEs(v13, a2, a6, a7);
      v33 = *(v13 + 296 + 8 * *(v13 + 544) - 8);
      if (a2)
      {
        v34 = v33 == 0;
        if (a2 == 3 && !v33)
        {
          *a7 = U_UNSUPPORTED_ERROR;
          v17 = "tailoring quaternary after tertiary ignorables not supported";
          goto LABEL_7;
        }
      }

      else
      {
        if ((v33 - 1174405120) >> 30 != 3 && HIDWORD(v33) == 0)
        {
          *a7 = U_UNSUPPORTED_ERROR;
          v17 = "tailoring primary after ignorables not supported";
          goto LABEL_7;
        }

        v34 = v33 == 0;
      }

      v36 = icu::CollationBuilder::insertTailoredNodeAfter(v13, inserted, a2, a7);
      if (*a7 >= 1)
      {
        v17 = "modifying collation elements";
        goto LABEL_7;
      }

      if ((v33 - 1174405120) >> 30 == 3)
      {
        v37 = (v33 >> 8) & 3;
      }

      else if (HIBYTE(v33))
      {
        v37 = 0;
      }

      else
      {
        if (v34)
        {
          v37 = 15;
        }

        else
        {
          v37 = 2;
        }

        if ((v33 & 0xFF000000) != 0)
        {
          v37 = 1;
        }
      }

      if (v37 >= a2)
      {
        v37 = a2;
      }

      *(v13 + 296 + 8 * *(v13 + 544) - 8) = (((v36 & 0x1FC0) << 42) & 0x80FFFFFFFFFFFFFFLL | ((((v36 & 0xFE000) >> 13) & 0x7F) << 56) | ((v36 & 0x3F) << 24)) + (v37 << 8) + 0x4040000006002000;
    }

    icu::CollationBuilder::setCaseBits(v13, &v48, a6, a7);
    v17 = *a7;
    if (v17 > 0)
    {
      goto LABEL_8;
    }

    v29 = *(v13 + 544);
    if (*(a5 + 4) >= 0x20u)
    {
      v30 = *(v13 + 8);
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0;
      v43 = &unk_1F0935D00;
      LOWORD(v44) = 2;
      (*(*v30 + 24))(v30, a5, &v43, a7);
      if (*a7 > 0)
      {
        v31 = "normalizing the relation extension";
LABEL_58:
        *a6 = v31;
        icu::UnicodeString::~UnicodeString(v31, &v43);
        goto LABEL_8;
      }

      CEs = icu::CollationDataBuilder::getCEs(*(v13 + 72), &v43, (v13 + 296), *(v13 + 544));
      *(v13 + 544) = CEs;
      if (CEs >= 32)
      {
        *a7 = U_ILLEGAL_ARGUMENT_ERROR;
        v31 = "extension string adds too many collation elements (more than 31 total)";
        goto LABEL_58;
      }

      icu::UnicodeString::~UnicodeString(v39, &v43);
    }

    if (*(v13 + 81))
    {
      v40 = *(v13 + 544);
      v41 = 0xFFFFFFFFLL;
      goto LABEL_75;
    }

    if (sub_1952CB634(a3, &v53))
    {
      if (*a7 > 0)
      {
LABEL_73:
        v41 = 0xFFFFFFFFLL;
        goto LABEL_74;
      }
    }

    else
    {
      v42 = sub_1952CB634(a4, &v48);
      v41 = 0xFFFFFFFFLL;
      if (!v42 || *a7 >= 1)
      {
        goto LABEL_74;
      }
    }

    if (!(*(**(v13 + 16) + 88))(*(v13 + 16), a3, a7) || icu::CollationBuilder::ignoreString(v13, a4, a7))
    {
      goto LABEL_73;
    }

    v41 = icu::CollationBuilder::addIfDifferent(v13, a3, a4, (v13 + 296), *(v13 + 544), 0xFFFFFFFFLL, a7);
LABEL_74:
    v40 = *(v13 + 544);
    if (!*(v13 + 81))
    {
      icu::CollationBuilder::addWithClosure(v13, &v53, &v48, (v13 + 296), v40, v41, a7);
      goto LABEL_76;
    }

LABEL_75:
    icu::CollationBuilder::addIfDifferent(v13, &v53, &v48, (v13 + 296), v40, v41, a7);
LABEL_76:
    v17 = *a7;
    if (v17 < 1)
    {
      *(v13 + 544) = v29;
      goto LABEL_8;
    }

    v17 = "writing collation elements";
    goto LABEL_7;
  }

LABEL_10:
  v18 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::CollationBuilder::insertTailoredNodeAfter(icu::CollationBuilder *this, uint64_t CommonNode, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a3 >= 1)
  {
    CommonNode = icu::CollationBuilder::findCommonNode(this, CommonNode, 1);
    if (a3 != 1)
    {
      LODWORD(CommonNode) = icu::CollationBuilder::findCommonNode(this, CommonNode, 2);
    }
  }

  if ((CommonNode & 0x80000000) != 0 || (v9 = *(this + 148), v9 <= CommonNode) || (v10 = (*(*(this + 76) + 8 * CommonNode) >> 8) & 0xFFFFF) == 0)
  {
LABEL_15:
    v11 = 0;
  }

  else
  {
    while (1)
    {
      v11 = v10;
      if (v9 <= v10)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        v12 = *(*(this + 76) + 8 * v10);
      }

      if ((v12 & 3) <= a3)
      {
        break;
      }

      v10 = (v12 >> 8) & 0xFFFFF;
      LODWORD(CommonNode) = v11;
      if (!v10)
      {
        LODWORD(CommonNode) = v11;
        goto LABEL_15;
      }
    }
  }

  return icu::CollationBuilder::insertNodeBetween(this, CommonNode, v11, a3 | 8, a4);
}

void icu::CollationBuilder::setCaseBits(icu::CollationBuilder *this, const icu::UnicodeString *a2, const char **a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return;
  }

  v45 = v4;
  v46 = v5;
  v7 = *(this + 136);
  if (v7 < 1)
  {
    return;
  }

  v10 = 0;
  v11 = (this + 296);
  v12 = *(this + 136);
  v13 = (this + 296);
  do
  {
    v15 = *v13++;
    v14 = v15;
    if ((v15 - 1174405120) >> 30 != 3)
    {
      if (!HIBYTE(v14))
      {
        goto LABEL_7;
      }

LABEL_6:
      v10 = (v10 + 1);
      goto LABEL_7;
    }

    if ((v14 & 0x300) == 0)
    {
      goto LABEL_6;
    }

LABEL_7:
    --v12;
  }

  while (v12);
  if (v10 <= 0)
  {
    v18 = 0;
    goto LABEL_37;
  }

  v16 = *(a2 + 4);
  if ((v16 & 0x11) != 0)
  {
    v17 = 0;
  }

  else if ((v16 & 2) != 0)
  {
    v17 = a2 + 10;
  }

  else
  {
    v17 = *(a2 + 3);
  }

  v40 = 0u;
  v41 = 0u;
  v19 = v16;
  memset(v39, 0, sizeof(v39));
  v38 = 0u;
  v20 = *(this + 5);
  v21 = v16 >> 5;
  if (v19 < 0)
  {
    v21 = *(a2 + 3);
  }

  v37[1] = *v20;
  v37[2] = v20;
  *(&v38 + 1) = v39 + 8;
  LODWORD(v39[0]) = 40;
  DWORD2(v40) = 0;
  DWORD2(v41) = -1;
  v37[0] = &unk_1F09444F0;
  v42 = v17;
  v43 = v17;
  v44 = &v17[2 * v21];
  CEs = icu::CollationIterator::fetchCEs(v37, a4);
  if (*a4 > 0)
  {
    *a3 = "fetching root CEs for tailored string";
    icu::UTF16CollationIterator::~UTF16CollationIterator(v37);
    return;
  }

  if (CEs < 2)
  {
    v23 = 0;
    v25 = 0;
    LODWORD(v30) = 0;
    goto LABEL_34;
  }

  v23 = 0;
  v24 = 0;
  LODWORD(v25) = 0;
  v26 = (CEs - 1);
  v27 = *(&v38 + 1);
  while (2)
  {
    v29 = *v27++;
    v28 = v29;
    if (!HIDWORD(v29))
    {
      v30 = v24;
      goto LABEL_31;
    }

    v30 = (v24 + 1);
    v31 = v28 >> 14;
    if (v30 < v10)
    {
      v23 |= v31 << (2 * v24);
      goto LABEL_31;
    }

    if (v30 == v10)
    {
      LODWORD(v25) = v31;
      v30 = v10;
      goto LABEL_31;
    }

    if (v31 == v25)
    {
LABEL_31:
      v24 = v30;
      if (!--v26)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  LODWORD(v25) = 1;
LABEL_32:
  v25 = v25;
LABEL_34:
  v32 = v25 << (2 * v10 - 2);
  if (v30 < v10)
  {
    v32 = 0;
  }

  v18 = v32 | v23;
  icu::UTF16CollationIterator::~UTF16CollationIterator(v37);
  v7 = *(this + 136);
LABEL_37:
  if (v7 >= 1)
  {
    v33 = v7;
    while (1)
    {
      v34 = *v11;
      v35 = *v11 & 0xFFFFFFFFFFFF3FFFLL;
      if ((v35 - 1174405120) >> 30 != 3)
      {
        break;
      }

      v36 = (v35 >> 8) & 3;
      if (v36 == 2)
      {
        goto LABEL_47;
      }

      if (!v36)
      {
        goto LABEL_46;
      }

LABEL_48:
      *v11++ = v35;
      if (!--v33)
      {
        return;
      }
    }

    if (!HIBYTE(v34))
    {
      if ((v34 & 0xFF000000) != 0 || !v35)
      {
        goto LABEL_48;
      }

LABEL_47:
      v35 |= 0x8000uLL;
      goto LABEL_48;
    }

LABEL_46:
    v35 |= (v18 & 3) << 14;
    v18 >>= 2;
    goto LABEL_48;
  }
}

uint64_t sub_1952CB634(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = *(a2 + 8) & 1;
  }

  else
  {
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

      v4 = icu::UnicodeString::doEquals(a1, v7, v3);
    }
  }

  return v4 ^ 1u;
}

BOOL icu::CollationBuilder::ignoreString(icu::CollationBuilder *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 1;
  }

  if (!(*(**(this + 2) + 88))(*(this + 2)))
  {
    return 1;
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x8000u) == 0)
  {
    v6 = v5 >> 5;
  }

  else
  {
    v6 = *(a2 + 3);
  }

  if (!v6)
  {
    return 0;
  }

  if ((v5 & 2) != 0)
  {
    v7 = (a2 + 10);
  }

  else
  {
    v7 = *(a2 + 3);
  }

  return (*v7 - 44032) >> 2 < 0xAE9;
}

uint64_t icu::CollationBuilder::addIfDifferent(icu::CollationDataBuilder **this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, const uint64_t *a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    if (icu::CollationDataBuilder::getCEs(this[9], a2, a3, v20, 0) != a5)
    {
      goto LABEL_9;
    }

    if (a5 >= 1)
    {
      if (*a4 != *&v20[0])
      {
        goto LABEL_9;
      }

      v14 = 1;
      do
      {
        v15 = v14;
        if (a5 == v14)
        {
          break;
        }

        v16 = a4[v14];
        v17 = *(v20 + v14++);
      }

      while (v16 == v17);
      if (v15 < a5)
      {
LABEL_9:
        if (a6 == -1)
        {
          a6 = (*(*this[9] + 32))(this[9], a4, a5, a7);
        }

        icu::CollationDataBuilder::addCE32(this[9], a2, a3, a6, a7);
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return a6;
}

uint64_t icu::CollationBuilder::addWithClosure(icu::CollationDataBuilder **this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, const uint64_t *a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  v13 = icu::CollationBuilder::addIfDifferent(this, a2, a3, a4, a5, a6, a7);
  v14 = icu::CollationBuilder::addOnlyClosure(this, a2, a3, a4, a5, v13, a7);
  icu::CollationBuilder::addTailComposites(this, a2, a3, a7);
  return v14;
}

void icu::CollationBuilder::suppressContractions(uint64_t ***this, const icu::UnicodeSet *a2, const char **a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    icu::CollationDataBuilder::suppressContractions(this[9], a2, a4);
    if (*a4 >= 1)
    {
      *a3 = "application of [suppressContractions [set]] failed";
    }
  }
}

icu::UnicodeSet *icu::CollationBuilder::optimize(icu::UnicodeSet *this, const icu::UnicodeSet *a2, const char **a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    return icu::UnicodeSet::addAll(this + 11, a2);
  }

  return this;
}

uint64_t icu::CollationBuilder::addOnlyClosure(icu::CollationDataBuilder **this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, const uint64_t *a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  v62 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    goto LABEL_79;
  }

  if (*(a2 + 4) <= 0x1Fu)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    icu::CanonicalIterator::CanonicalIterator(&v49, a3, a7);
    if (*a7 >= 1)
    {
      goto LABEL_78;
    }

    memset(v43 + 8, 0, 56);
    *&v43[0] = &unk_1F0935D00;
    WORD4(v43[0]) = 2;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    icu::CanonicalIterator::next(&v49, &v45);
    v14 = WORD4(v45);
    if (BYTE8(v45))
    {
      goto LABEL_77;
    }

    v15 = 3002;
    while (1)
    {
      if (!--v15)
      {
        v14 = 31;
        *a7 = U_INPUT_TOO_LONG_ERROR;
LABEL_77:
        icu::UnicodeString::~UnicodeString(v14, &v45);
        icu::UnicodeString::~UnicodeString(v36, v43);
        goto LABEL_78;
      }

      if (!icu::CollationBuilder::ignoreString(this, &v45, a7))
      {
        if (BYTE8(v45))
        {
          v14 = *(a3 + 4);
          if ((v14 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if ((SWORD4(v45) & 0x8000u) == 0)
          {
            v16 = WORD4(v45) >> 5;
          }

          else
          {
            v16 = HIDWORD(v45);
          }

          v17 = *(a3 + 4);
          if ((v17 & 0x8000u) == 0)
          {
            v18 = v17 >> 5;
          }

          else
          {
            v18 = *(a3 + 3);
          }

          if ((v17 & 1) != 0 || v16 != v18 || ((v17 & 2) != 0 ? (v19 = a3 + 10) : (v19 = *(a3 + 3)), !icu::UnicodeString::doEquals(&v45, v19, v16)))
          {
LABEL_25:
            a6 = icu::CollationBuilder::addIfDifferent(this, v43, &v45, a4, a5, a6, a7);
            v14 = *a7;
            if (v14 >= 1)
            {
              goto LABEL_77;
            }
          }
        }
      }

      icu::UnicodeString::~UnicodeString(v14, &v45);
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      icu::CanonicalIterator::next(&v49, &v45);
      v14 = WORD4(v45);
      if (BYTE8(v45))
      {
        goto LABEL_77;
      }
    }
  }

  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  icu::CanonicalIterator::CanonicalIterator(&v49, a2, a7);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  icu::CanonicalIterator::CanonicalIterator(v43, a3, a7);
  if (*a7 > 0)
  {
    goto LABEL_73;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  icu::CanonicalIterator::next(&v49, &v45);
  v20 = WORD4(v45);
  if (BYTE8(v45))
  {
LABEL_72:
    icu::UnicodeString::~UnicodeString(v20, &v45);
    goto LABEL_73;
  }

  v21 = 0;
  while (1)
  {
    v22 = *a7;
    if (v22 > 0 || !(*(*this[2] + 88))(this[2], &v45, a7))
    {
      goto LABEL_71;
    }

    if (BYTE8(v45))
    {
      v23 = *(a2 + 4) & 1;
    }

    else
    {
      v23 = 0;
      if ((SWORD4(v45) & 0x8000u) == 0)
      {
        v24 = WORD4(v45) >> 5;
      }

      else
      {
        v24 = HIDWORD(v45);
      }

      v25 = *(a2 + 4);
      if ((v25 & 0x8000u) == 0)
      {
        v26 = v25 >> 5;
      }

      else
      {
        v26 = *(a2 + 3);
      }

      if ((v25 & 1) == 0 && v24 == v26)
      {
        if ((v25 & 2) != 0)
        {
          v27 = a2 + 10;
        }

        else
        {
          v27 = *(a2 + 3);
        }

        v23 = icu::UnicodeString::doEquals(&v45, v27, v24);
      }
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    icu::CanonicalIterator::next(v43, &v39);
    v28 = WORD4(v39);
    if ((BYTE8(v39) & 1) == 0)
    {
      break;
    }

LABEL_70:
    icu::UnicodeString::~UnicodeString(v28, &v39);
    icu::CanonicalIterator::reset(v43);
LABEL_71:
    icu::UnicodeString::~UnicodeString(v22, &v45);
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    icu::CanonicalIterator::next(&v49, &v45);
    v20 = WORD4(v45);
    if (BYTE8(v45))
    {
      goto LABEL_72;
    }
  }

  if (v21 <= 3001)
  {
    v29 = 3001;
  }

  else
  {
    v29 = v21;
  }

  while (v29 != v21)
  {
    if (!icu::CollationBuilder::ignoreString(this, &v39, a7))
    {
      if (v23)
      {
        if (BYTE8(v39))
        {
          v30 = *(a3 + 4);
          if (v30)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if ((SWORD4(v39) & 0x8000u) == 0)
          {
            v31 = WORD4(v39) >> 5;
          }

          else
          {
            v31 = HIDWORD(v39);
          }

          v32 = *(a3 + 4);
          if ((v32 & 0x8000u) == 0)
          {
            v33 = v32 >> 5;
          }

          else
          {
            v33 = *(a3 + 3);
          }

          if ((v32 & 1) == 0 && v31 == v33)
          {
            v34 = (v32 & 2) != 0 ? (a3 + 10) : *(a3 + 3);
            if (icu::UnicodeString::doEquals(&v39, v34, v31))
            {
              goto LABEL_69;
            }
          }
        }
      }

      a6 = icu::CollationBuilder::addIfDifferent(this, &v45, &v39, a4, a5, a6, a7);
      v30 = *a7;
      if (v30 >= 1)
      {
        goto LABEL_75;
      }
    }

LABEL_69:
    icu::UnicodeString::~UnicodeString(v30, &v39);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    icu::CanonicalIterator::next(v43, &v39);
    v28 = WORD4(v39);
    ++v21;
    if (BYTE8(v39))
    {
      goto LABEL_70;
    }
  }

  v30 = 31;
  *a7 = U_INPUT_TOO_LONG_ERROR;
LABEL_75:
  icu::UnicodeString::~UnicodeString(v30, &v39);
  icu::UnicodeString::~UnicodeString(v35, &v45);
LABEL_73:
  icu::CanonicalIterator::~CanonicalIterator(v43);
LABEL_78:
  icu::CanonicalIterator::~CanonicalIterator(&v49);
LABEL_79:
  v37 = *MEMORY[0x1E69E9840];
  return a6;
}

void *icu::CollationBuilder::addTailComposites(void *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, UErrorCode *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v6 = *(a3 + 4);
    v7 = v6;
    v8 = v6 >> 5;
    v9 = v7 >= 0 ? v8 : *(a3 + 3);
    if (v9)
    {
      v12 = this;
      while (1)
      {
        v13 = icu::UnicodeString::char32At(v8, a3, v9 - 1);
        this = (*(**(v12 + 8) + 80))(*(v12 + 8), v13);
        if (!this)
        {
          break;
        }

        if (v13 >= 0x10000)
        {
          v8 = 4294967294;
        }

        else
        {
          v8 = 0xFFFFFFFFLL;
        }

        v9 = (v8 + v9);
        if (!v9)
        {
          goto LABEL_2;
        }
      }

      if ((v13 - 4371) <= 0xFFFFFFEC)
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        icu::UnicodeSet::UnicodeSet(v23);
        if (icu::Normalizer2Impl::getCanonStartSet(*(v12 + 24), v13, v23))
        {
          v52 = 0u;
          v55 = 0;
          v54 = 0u;
          v53 = 0u;
          v50 = 0;
          v51 = &unk_1F0935D00;
          LOWORD(v52) = 2;
          v47 = 0u;
          v49 = 0u;
          v48 = 0u;
          v46 = &unk_1F0935D00;
          LOWORD(v47) = 2;
          v42 = 0u;
          v45 = 0;
          v44 = 0u;
          v43 = 0u;
          v41 = &unk_1F0935D00;
          LOWORD(v42) = 2;
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          *v25 = 0u;
          memset(v22, 0, sizeof(v22));
          icu::UnicodeSetIterator::UnicodeSetIterator(v22, v23);
          while (icu::UnicodeSetIterator::next(v22))
          {
            v15 = DWORD2(v22[0]);
            (*(**(v12 + 8) + 56))(*(v12 + 8), DWORD2(v22[0]), &v51);
            if (icu::CollationBuilder::mergeCompositeIntoString(v12, a3, v9, v15, &v51, &v46, &v41, a4))
            {
              CEs = icu::CollationDataBuilder::getCEs(*(v12 + 72), a2, &v46, v25, 0);
              if (CEs <= 31)
              {
                v17 = CEs;
                v18 = icu::CollationBuilder::addIfDifferent(v12, a2, &v41, v25, CEs, 0xFFFFFFFFLL, a4);
                if (v18 != -1)
                {
                  icu::CollationBuilder::addOnlyClosure(v12, a2, &v46, v25, v17, v18, a4);
                }
              }
            }
          }

          icu::UnicodeSetIterator::~UnicodeSetIterator(v22);
          icu::UnicodeString::~UnicodeString(v19, &v41);
          icu::UnicodeString::~UnicodeString(v20, &v46);
          icu::UnicodeString::~UnicodeString(v21, &v51);
        }

        this = icu::UnicodeSet::~UnicodeSet(v14, v23);
      }
    }
  }

LABEL_2:
  v4 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::CollationBuilder::mergeCompositeIntoString(icu::CollationBuilder *this, const icu::UnicodeString *a2, uint64_t a3, unsigned int a4, const icu::UnicodeString *a5, icu::UnicodeString *a6, icu::UnicodeString *a7, UErrorCode *a8)
{
  if (*a8 > 0)
  {
    return 0;
  }

  v16 = icu::UnicodeString::moveIndex32(a5, 0, 1);
  v17 = *(a5 + 4);
  if ((v17 & 0x8000u) == 0)
  {
    v18 = v17 >> 5;
  }

  else
  {
    v18 = *(a5 + 3);
  }

  if (v16 == v18)
  {
    return 0;
  }

  v19 = v16;
  if ((v17 & 1) == 0)
  {
    if (v16 < 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
      v21 = v19;
      if (v18 >= v19)
      {
LABEL_16:
        if ((v17 & 2) != 0)
        {
          v22 = a5 + 10;
        }

        else
        {
          v22 = *(a5 + 3);
        }

        result = icu::UnicodeString::doCompare(a2, a3, 0x7FFFFFFF, v22, v21, v18 - v21);
        if (result)
        {
          goto LABEL_20;
        }

        return result;
      }
    }

    v21 = v20;
    goto LABEL_16;
  }

  result = (*(a2 + 8) & 1) == 0;
  if ((*(a2 + 8) & 1) == 0)
  {
LABEL_20:
    icu::UnicodeString::unBogus(a6);
    v23 = *(a6 + 4);
    v24 = v23;
    v25 = v23 >> 5;
    if (v24 >= 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = *(a6 + 3);
    }

    icu::UnicodeString::doReplace(a6, 0, v26, a2, 0, a3);
    icu::UnicodeString::unBogus(a7);
    v27 = *(a7 + 4);
    v28 = v27;
    v29 = v27 >> 5;
    if (v28 >= 0)
    {
      v30 = v29;
    }

    else
    {
      v30 = *(a7 + 3);
    }

    v50 = a7;
    v31 = icu::UnicodeString::doReplace(a7, 0, v30, a2, 0, (a3 - v19));
    icu::UnicodeString::append(v31, a4);
    v32 = 0;
LABEL_27:
    v33 = *(a2 + 4);
    v34 = v33;
    LODWORD(v35) = v33 >> 5;
    if (v34 >= 0)
    {
      v35 = v35;
    }

    else
    {
      v35 = *(a2 + 3);
    }

    if (a3 >= v35)
    {
      LODWORD(v39) = *(a5 + 4);
      v41 = *(a5 + 3);
      v40 = v39 >> 5;
    }

    else
    {
      v36 = icu::UnicodeString::char32At(v35, a2, a3);
      v37 = (*(**(this + 1) + 80))(*(this + 1), v36);
      while (1)
      {
        v38 = *(a5 + 4);
        v39 = v38;
        v40 = v38 >> 5;
        v41 = *(a5 + 3);
        v42 = v39 >= 0 ? v40 : *(a5 + 3);
        if (v19 >= v42)
        {
          break;
        }

        v43 = icu::UnicodeString::char32At(v39, a5, v19);
        v44 = (*(**(this + 1) + 80))(*(this + 1), v43);
        if ((v44 - 1) >= v37)
        {
          return 0;
        }

        v32 = v44;
        if (v44 >= v37)
        {
          if (v43 != v36)
          {
            return 0;
          }

          icu::UnicodeString::append(a6, v36);
          if (v36 < 0x10000)
          {
            v45 = 1;
          }

          else
          {
            v45 = 2;
          }

          LODWORD(a3) = v45 + a3;
          LODWORD(v36) = -1;
        }

        else
        {
          icu::UnicodeString::append(a6, v43);
          if (v43 < 0x10000)
          {
            v45 = 1;
          }

          else
          {
            v45 = 2;
          }
        }

        v19 += v45;
        if ((v36 & 0x80000000) != 0)
        {
          goto LABEL_27;
        }
      }

      if ((v36 & 0x80000000) == 0)
      {
        if (v37 < v32)
        {
          return 0;
        }

        icu::UnicodeString::doAppend(a6, a2, a3, 0x7FFFFFFFLL);
        v46 = v50;
        v47 = a2;
        v48 = a3;
        goto LABEL_57;
      }
    }

    if (v39 >= 0)
    {
      v49 = v40;
    }

    else
    {
      v49 = v41;
    }

    if (v19 >= v49)
    {
      return 1;
    }

    v46 = a6;
    v47 = a5;
    v48 = v19;
LABEL_57:
    icu::UnicodeString::doAppend(v46, v47, v48, 0x7FFFFFFFLL);
    return 1;
  }

  return result;
}

BOOL icu::CollationBuilder::sameCEs(icu::CollationBuilder *this, const uint64_t *a2, void *a3, const uint64_t *a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (a2 < 1)
  {
    return 1;
  }

  if (*this != *a3)
  {
    return 0;
  }

  v4 = 1;
  do
  {
    v5 = v4;
    if (a2 == v4)
    {
      break;
    }

    v6 = *(this + v4);
    v7 = a3[v4++];
  }

  while (v6 == v7);
  return v5 >= a2;
}

uint64_t icu::CollationBuilder::countTailoredNodes(icu::CollationBuilder *this, const uint64_t *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = *(this + a2);
    if ((v5 & 3) < a3)
    {
      break;
    }

    if ((v5 & 3) == a3)
    {
      if ((v5 & 8) == 0)
      {
        return result;
      }

      result = (result + 1);
    }

    LODWORD(a2) = (v5 >> 8) & 0xFFFFF;
  }

  while (a2);
  return result;
}

void sub_1952CC6C0(icu::CollationDataBuilder::CEModifier *a1)
{
  icu::CollationDataBuilder::CEModifier::~CEModifier(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t ucol_openRules(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    if (a1 || !a2)
    {
      operator new();
    }

    *a6 = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

void ucol_getUnsafeSet(uint64_t a1, icu::UnicodeSet *a2, UErrorCode *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(v5, 0x400uLL);
  uset_clear(a2);
  uset_applyPattern(a2, "[", 24, 1u, a3);
  uset_addRange(a2, 55296, 57343);
  uset_open();
}

uint64_t sub_1952CC9FC(uint64_t a1, unsigned int a2)
{
  result = 0x101000100;
  if ((a2 & 0xFE) != 0 && ((a2 >> 8) & 0xFE) - 70 >= 0xFFFFFFC0)
  {
    return *(*(a1 + 8) + 8 * (((a2 - 1077937696) >> 11) & 0xFE000 | ((a2 - 1077937696) >> 10) & 0x1FC0 | ((a2 - 1077937696) >> 8) & 0x3F)) | (a2 << 8) & 0xC000;
  }

  return result;
}

uint64_t sub_1952CCA5C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1174405120) >> 30 == 3)
  {
    return *(*(a1 + 8) + 8 * (((a2 - 0x4040000006002000) >> 43) & 0xFE000 | ((a2 - 0x4040000006002000) >> 42) & 0x1FC0 | ((a2 - 0x4040000006002000) >> 24) & 0x3F)) | a2 & 0xC000;
  }

  else
  {
    return 0x101000100;
  }
}

void sub_1952CCAB4(icu::CollationRuleParser::Importer *a1)
{
  icu::CollationRuleParser::Importer::~Importer(a1);

  JUMPOUT(0x19A8B2600);
}

unint64_t icu::CollationCompare::compareUpToQuaternary(icu::CollationCompare *this, icu::CollationIterator *a2, icu::CollationIterator *a3, UErrorCode *a4, UErrorCode *a5)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = 0;
  v11 = *(a3 + 6);
  if ((v11 & 0xC) != 0)
  {
    v12 = *(a3 + 7) + 1;
  }

  else
  {
    v12 = 0;
  }

  do
  {
    while (1)
    {
      v13 = sub_1952C5F10(this, a4);
      v14 = HIDWORD(v13);
      if (v13 > 0x2000000FFFFFFFFLL && v12 > HIDWORD(v13))
      {
        break;
      }

      if (v14)
      {
        goto LABEL_15;
      }
    }

    do
    {
      for (*(*(this + 4) + 8 * *(this + 92) - 8) = v13 & 0xFFFFFFFF00000000; ; *(*(this + 4) + 8 * *(this + 92) - 8) = 0)
      {
        v13 = sub_1952C5F10(this, a4);
        if (HIDWORD(v13))
        {
          break;
        }
      }

      v14 = HIDWORD(v13);
      v10 = 1;
    }

    while (v13 > 0x2000000FFFFFFFFLL && v12 > HIDWORD(v13));
LABEL_15:
    while (1)
    {
      result = sub_1952C5F10(a2, a4);
      v15 = HIDWORD(result);
      if (result > 0x2000000FFFFFFFFLL && v12 > HIDWORD(result))
      {
        break;
      }

      if (v15)
      {
        goto LABEL_24;
      }
    }

    do
    {
      for (*(*(a2 + 4) + 8 * *(a2 + 92) - 8) = result & 0xFFFFFFFF00000000; ; *(*(a2 + 4) + 8 * *(a2 + 92) - 8) = 0)
      {
        result = sub_1952C5F10(a2, a4);
        if (HIDWORD(result))
        {
          break;
        }
      }

      v15 = HIDWORD(result);
      v10 = 1;
    }

    while (result > 0x2000000FFFFFFFFLL && v12 > HIDWORD(result));
LABEL_24:
    if (v14 != v15)
    {
      v16 = *(a3 + 4);
      if (v16)
      {
        if (v14 == 1 || *(v16 + (v14 >> 24)))
        {
          LODWORD(v14) = v14 & 0xFFFFFF | (*(v16 + (v14 >> 24)) << 24);
        }

        else
        {
          LODWORD(v14) = icu::CollationSettings::reorderEx(a3, v14);
          v16 = *(a3 + 4);
        }

        v28 = *(v16 + (v15 >> 24));
        if (v15 < 2 || v28)
        {
          LODWORD(v15) = v15 & 0xFFFFFF | (v28 << 24);
        }

        else
        {
          LODWORD(v15) = icu::CollationSettings::reorderEx(a3, v15);
        }
      }

      v29 = v14 >= v15;
      goto LABEL_54;
    }
  }

  while (v14 != 1);
  if (*a4 > 0)
  {
    return 0;
  }

  v17 = v11 >> 12;
  if (v11 >> 12 < 1)
  {
LABEL_100:
    if ((v11 & 0x400) != 0)
    {
      LODWORD(v54) = 0;
      LODWORD(v55) = 0;
      v56 = *(this + 4);
      v57 = *(a2 + 4);
      while (1)
      {
        v54 = v54;
        if (v11 >= 0x1000)
        {
          do
          {
            v58 = *(v56 + 8 * v54++);
          }

          while (v58 < 0x10000);
          v55 = v55;
          do
          {
            v60 = *(v57 + 8 * v55++);
          }

          while (v60 < 0x10000);
        }

        else
        {
          do
          {
            v58 = *(v56 + 8 * v54++);
            if (HIDWORD(v58))
            {
              v59 = v58 == 0;
            }

            else
            {
              v59 = 1;
            }
          }

          while (v59);
          v55 = v55;
          do
          {
            v60 = *(v57 + 8 * v55++);
            if (HIDWORD(v60))
            {
              v61 = v60 == 0;
            }

            else
            {
              v61 = 1;
            }
          }

          while (v61);
        }

        v62 = v60 & 0xC000;
        if ((v58 & 0xC000) != v62)
        {
          break;
        }

        if (WORD1(v58) == 256)
        {
          goto LABEL_118;
        }
      }

      v29 = (v58 & 0xC000) >= v62;
      if ((v11 & 0x100) != 0)
      {
        v30 = 1;
LABEL_55:
        if (v29)
        {
          return -v30;
        }

        else
        {
          return v30;
        }
      }
    }

    else
    {
LABEL_118:
      if (v17 < 2)
      {
        return 0;
      }

      LODWORD(v63) = 0;
      LODWORD(v64) = 0;
      v65 = 0;
      if ((v11 & 0x600) == 0x200)
      {
        v66 = 65343;
      }

      else
      {
        v66 = 16191;
      }

      v67 = *(this + 4);
      v68 = *(a2 + 4);
      do
      {
        v63 = v63;
        do
        {
          v69 = *(v67 + 8 * v63++);
          v65 |= v69;
          v70 = v66 & v69;
        }

        while ((v66 & v69) == 0);
        v64 = v64;
        do
        {
          v71 = *(v68 + 8 * v64++);
          v65 |= v71;
          v72 = v66 & v71;
        }

        while ((v66 & v71) == 0);
        if (v70 != v72)
        {
          v87 = v11 & 0x700;
          v88 = v70 + 0x4000;
          if (v69 >= 0x10000)
          {
            v88 = v70 ^ 0xC000;
          }

          if (v70 < 0x101)
          {
            v88 = v66 & v69;
          }

          v89 = v72 + 0x4000;
          if (v71 >= 0x10000)
          {
            v89 = v72 ^ 0xC000;
          }

          if (v72 < 0x101)
          {
            v89 = v66 & v71;
          }

          v90 = v87 == 768;
          if (v87 == 768)
          {
            v91 = v88;
          }

          else
          {
            v91 = v66 & v69;
          }

          if (v90)
          {
            v92 = v89;
          }

          else
          {
            v92 = v66 & v71;
          }

          v29 = v91 >= v92;
          goto LABEL_54;
        }
      }

      while (v70 != 256);
      if (v17 == 2 || !(v10 | v65 & 0xC0))
      {
        return 0;
      }

      LODWORD(v73) = 0;
      LODWORD(v74) = 0;
      while (1)
      {
        v73 = v73;
        do
        {
          v75 = (v67 + 8 * v73++);
          v77 = v75;
          LODWORD(v75) = *v75;
          v76 = v77[1];
          v78 = v75;
          v79 = v75 | 0xFFFFFF3F;
          if (v78 >= 0x101)
          {
            v80 = v79;
          }

          else
          {
            v80 = v76;
          }
        }

        while (!v80);
        v74 = v74;
        do
        {
          v81 = (v68 + 8 * v74++);
          v83 = v81;
          LODWORD(v81) = *v81;
          v82 = v83[1];
          v84 = v81;
          v85 = v81 | 0xFFFFFF3F;
          if (v84 >= 0x101)
          {
            v86 = v85;
          }

          else
          {
            v86 = v82;
          }
        }

        while (!v86);
        if (v80 != v86)
        {
          break;
        }

        result = 0;
        if (v80 == 1)
        {
          return result;
        }
      }

      if (*(a3 + 4))
      {
        LODWORD(v80) = sub_1952CD0C0(a3, v80);
        LODWORD(v86) = sub_1952CD0C0(a3, v86);
      }

      v29 = v80 >= v86;
    }

LABEL_54:
    v30 = -1;
    goto LABEL_55;
  }

  v18 = *(this + 4);
  v19 = *(a2 + 4);
  if ((v11 & 0x800) != 0)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v33 = v31;
      v34 = (v18 + 8 * v31);
      do
      {
        v35 = *v34++;
        ++v33;
      }

      while ((v35 - 0x200000100000000) >> 57 != 127);
      v36 = v32;
      v37 = (v19 + 8 * v32);
      do
      {
        v39 = *v37++;
        v38 = v39;
        ++v36;
      }

      while ((v39 - 0x200000100000000) >> 57 != 127);
      v40 = v33 - 1;
      v41 = v36 - 1;
      do
      {
        if (v40 <= v31)
        {
          v45 = 0;
          v46 = 28;
        }

        else
        {
          v42 = v40 - 1;
          do
          {
            v43 = *(v18 + 8 * v42);
            --v40;
            if (WORD1(v43))
            {
              v44 = 1;
            }

            else
            {
              v44 = v42 <= v31;
            }

            --v42;
          }

          while (!v44);
          v45 = WORD1(v43);
          if (v43 >= 0x10000)
          {
            v46 = 0;
          }

          else
          {
            v46 = 28;
          }
        }

        if (v41 <= v32)
        {
          v50 = 0;
        }

        else
        {
          v47 = v41 - 1;
          do
          {
            v48 = *(v19 + 8 * v47);
            --v41;
            if (WORD1(v48))
            {
              v49 = 1;
            }

            else
            {
              v49 = v47 <= v32;
            }

            --v47;
          }

          while (!v49);
          v50 = WORD1(v48);
        }

        v51 = v45 == v50;
        if (v45 < v50)
        {
          v52 = -1;
        }

        else
        {
          v52 = 1;
        }

        if (v51)
        {
          v53 = v46;
        }

        else
        {
          v53 = 1;
        }

        if (v51)
        {
          result = result;
        }

        else
        {
          result = v52;
        }
      }

      while (!v53);
      if (v53 == 28)
      {
        if ((v38 & 0x3FFFFFF00000000) == 0x100000000)
        {
          goto LABEL_100;
        }

        v53 = 0;
        v31 = v33;
        v32 = v36;
      }
    }

    while (!v53);
  }

  else
  {
    LODWORD(v20) = 0;
    LODWORD(v21) = 0;
    do
    {
      v20 = v20;
      do
      {
        v22 = *(v18 + 8 * v20++);
      }

      while (v22 < 0x10000);
      v21 = v21;
      do
      {
        v23 = *(v19 + 8 * v21++);
      }

      while (v23 < 0x10000);
      v24 = WORD1(v22);
      v25 = v24 == WORD1(v23);
      if (v24 < WORD1(v23))
      {
        v26 = -1;
      }

      else
      {
        v26 = 1;
      }

      v27 = 16 * (v24 == 256);
      if (v25)
      {
        result = result;
      }

      else
      {
        v27 = 1;
        result = v26;
      }
    }

    while (!v27);
    if (v27 == 16)
    {
      goto LABEL_100;
    }
  }

  return result;
}

uint64_t sub_1952CD0C0(icu::CollationSettings *a1, uint64_t a2)
{
  if (a2 < 2 || *(*(a1 + 4) + (a2 >> 24)))
  {
    return a2 & 0xFFFFFF | (*(*(a1 + 4) + (a2 >> 24)) << 24);
  }

  else
  {
    return icu::CollationSettings::reorderEx(a1, a2);
  }
}

uint64_t icu::CollationData::getIndirectCE32(icu::CollationData *this, uint64_t a2)
{
  v2 = a2 & 0xF;
  switch(v2)
  {
    case 13:
      return 0xFFFFFFFFLL;
    case 11:
      return **(this + 1);
    case 10:
      return *(*(this + 1) + 4 * (a2 >> 13));
  }

  return a2;
}

uint64_t icu::CollationData::getFinalCE32(icu::CollationData *this, uint64_t a2)
{
  if ((~a2 & 0xC0) == 0)
  {
    v2 = a2 & 0xF;
    switch(v2)
    {
      case 13:
        return 0xFFFFFFFFLL;
      case 11:
        return **(this + 1);
      case 10:
        return *(*(this + 1) + 4 * (a2 >> 13));
    }
  }

  return a2;
}

uint64_t icu::CollationData::getSingleCE(icu::CollationData *this, icu::Collation *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v6 = this;
  v7 = sub_1952C6CA0(this, a2);
  if (v7 == 192)
  {
    v6 = v6[4];
    v7 = sub_1952C6CA0(v6, a2);
  }

  while (2)
  {
    if ((~v7 & 0xC0) != 0)
    {
      return (v7 << 16) & 0xFF000000 | (((v7 & 0xFFFF0000) >> 16) << 48) | (v7 << 8);
    }

    switch(v7 & 0xF)
    {
      case 1u:
        return (((v7 & 0xFFFFFF00) >> 8) << 40) | 0x5000500;
      case 2u:
        return v7 & 0xFFFFFF00;
      case 4u:
      case 7u:
      case 8u:
      case 9u:
      case 0xCu:
      case 0xDu:
        goto LABEL_15;
      case 5u:
        if ((v7 & 0x1F00) == 0x100)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      case 6u:
        if ((v7 & 0x1F00) == 0x100)
        {
          result = *(v6[2] + 8 * (v7 >> 13));
        }

        else
        {
LABEL_15:
          result = 0;
          v9 = U_UNSUPPORTED_ERROR;
LABEL_16:
          *a3 = v9;
        }

        break;
      case 0xAu:
LABEL_8:
        v8 = (v6[1] + 4 * (v7 >> 13));
        goto LABEL_10;
      case 0xBu:
        v8 = v6[1];
LABEL_10:
        v7 = *v8;
        continue;
      case 0xEu:
        ThreeBytePrimaryForOffsetData = icu::Collation::getThreeBytePrimaryForOffsetData(a2, *(v6[2] + 8 * (v7 >> 13)));
        return (ThreeBytePrimaryForOffsetData << 32) | 0x5000500;
      case 0xFu:
        ThreeBytePrimaryForOffsetData = icu::Collation::unassignedPrimaryFromCodePoint(a2);
        return (ThreeBytePrimaryForOffsetData << 32) | 0x5000500;
      default:
        result = 0;
        v9 = U_INTERNAL_PROGRAM_ERROR;
        goto LABEL_16;
    }

    return result;
  }
}

uint64_t icu::CollationData::getFirstPrimaryForGroup(icu::CollationData *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = *(this + 25);
  if (v2 <= a2)
  {
    if ((a2 & 0x7FFFFFF8) != 0x1000)
    {
      return 0;
    }

    v3 = (*(this + 13) + 2 * (a2 + v2 - 4096));
  }

  else
  {
    v3 = (*(this + 13) + 2 * a2);
  }

  v4 = *v3;
  if (v4)
  {
    return *(*(this + 14) + 2 * v4) << 16;
  }

  return 0;
}

uint64_t icu::CollationData::getScriptIndex(icu::CollationData *this, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = *(this + 25);
    if (v2 > a2)
    {
      v3 = (*(this + 13) + 2 * a2);
      return *v3;
    }

    if ((a2 & 0x7FFFFFF8) == 0x1000)
    {
      v3 = (*(this + 13) + 2 * (a2 + v2 - 4096));
      return *v3;
    }
  }

  return 0;
}

uint64_t icu::CollationData::getLastPrimaryForGroup(icu::CollationData *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = *(this + 25);
  if (v2 <= a2)
  {
    if ((a2 & 0x7FFFFFF8) != 0x1000)
    {
      return 0;
    }

    v3 = (*(this + 13) + 2 * (a2 + v2 - 4096));
  }

  else
  {
    v3 = (*(this + 13) + 2 * a2);
  }

  v4 = *v3;
  if (v4)
  {
    return (*(*(this + 14) + 2 * v4 + 2) << 16) - 1;
  }

  return 0;
}

uint64_t icu::CollationData::getGroupForPrimary(icu::CollationData *this, unsigned int a2)
{
  v2 = HIWORD(a2);
  v3 = *(this + 14);
  if (HIWORD(a2) < *(v3 + 2) || v2 >= *(v3 + 2 * *(this + 30) - 2))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = v3 + 4;
  do
  {
    v6 = *(v5 + 2 * v4++);
  }

  while (v6 <= v2);
  v7 = *(this + 25);
  v8 = *(this + 13);
  if (v7 < 1)
  {
LABEL_9:
    v10 = 0;
    v11 = v8 + 2 * v7;
    while (*(v11 + 2 * v10) != v4)
    {
      if (++v10 == 8)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return (v10 + 4096);
  }

  else
  {
    result = 0;
    while (*(v8 + 2 * result) != v4)
    {
      if (v7 == ++result)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t icu::CollationData::getEquivalentScripts(icu::CollationData *this, unsigned int a2, unsigned int *a3, int a4, UErrorCode *a5)
{
  v5 = 0;
  if ((a2 & 0x80000000) != 0 || *a5 > 0)
  {
    return v5;
  }

  v6 = *(this + 25);
  if (v6 <= a2)
  {
    if ((a2 & 0x7FFFFFF8) != 0x1000)
    {
      return 0;
    }

    v7 = *(this + 13);
    v8 = (v7 + 2 * (a2 + v6 - 4096));
  }

  else
  {
    v7 = *(this + 13);
    v8 = (v7 + 2 * a2);
  }

  v9 = *v8;
  if (!*v8)
  {
    return 0;
  }

  if (a2 <= 0xFFF)
  {
    if (v6 < 1)
    {
      v5 = 0;
    }

    else
    {
      v10 = 0;
      v5 = 0;
      do
      {
        if (v9 == *(v7 + 2 * v10))
        {
          if (v5 < a4)
          {
            a3[v5] = v10;
            v6 = *(this + 25);
          }

          v5 = (v5 + 1);
        }

        ++v10;
      }

      while (v10 < v6);
    }

    if (v5 > a4)
    {
      *a5 = U_BUFFER_OVERFLOW_ERROR;
    }
  }

  else
  {
    if (a4 < 1)
    {
      *a5 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      *a3 = a2;
    }

    return 1;
  }

  return v5;
}

unint64_t icu::CollationData::makeReorderRanges(unint64_t this, const int *a2, int a3, int a4, icu::UVector32 *a5, UErrorCode *a6)
{
  v62 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    goto LABEL_2;
  }

  v12 = this;
  this = icu::UVector32::removeAllElements(a5);
  if (!a3 || a3 == 1 && *a2 == 103)
  {
    goto LABEL_2;
  }

  memset(v61, 0, sizeof(v61));
  v13 = *(v12 + 104);
  v14 = *(v12 + 100);
  v15 = v13 + 2 * v14;
  if (*(v15 + 28))
  {
    *(v61 + *(v15 + 28)) = -1;
  }

  if (*(v15 + 30))
  {
    *(v61 + *(v15 + 30)) = -1;
  }

  v16 = *(v12 + 112);
  v17 = *(v16 + 2);
  v18 = *(v12 + 120);
  v19 = *(v16 + 2 * v18 - 2);
  v20 = a3;
  if (a3 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    v22 = a3;
    v23 = a2;
    do
    {
      v24 = *v23++;
      v25 = 1 << v24;
      if ((v24 & 0xFFFFFFF8) != 0x1000)
      {
        v25 = 0;
      }

      v21 |= v25;
      --v22;
    }

    while (v22);
  }

  v26 = 0;
  this = v61;
  do
  {
    v27 = *(v15 + 2 * v26);
    if (*(v15 + 2 * v26) && ((v21 >> v26) & 1) == 0)
    {
      v28 = (v16 + 2 * v27);
      v29 = *v28;
      if (*v28 < v17)
      {
        LOWORD(v17) = v17 + 256;
      }

      *(v61 + v27) = BYTE1(v17);
      v17 = (((v28[1] & 0xFF00) - (v29 & 0xFF00)) & 0xFFFFFF00 | v28[1]) + (v17 & 0xFF00);
    }

    ++v26;
  }

  while (v26 != 8);
  v30 = 0;
  if (!v21 && !a4 && *a2 == 25)
  {
    v30 = (*(v16 + 2 * *(v13 + 50)) - v17) & 0xFF00;
    v17 = *(v16 + 2 * *(v13 + 50));
  }

  if (a3 < 1)
  {
LABEL_42:
    v33 = 0;
    goto LABEL_43;
  }

  v31 = v14 - 4096;
  this = 1;
  v32 = a2;
  v33 = 1;
  while (1)
  {
    v35 = *v32++;
    v34 = v35;
    if (v35 == -1)
    {
LABEL_96:
      v44 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_97:
      *a6 = v44;
      goto LABEL_2;
    }

    if (v34 == 103)
    {
      break;
    }

    if ((v34 & 0x80000000) == 0)
    {
      if (v14 > v34)
      {
        goto LABEL_36;
      }

      if ((v34 & 0x7FFFFFF8) == 0x1000)
      {
        v34 = v31 + v34;
LABEL_36:
        v36 = *(v13 + 2 * v34);
        if (*(v13 + 2 * v34))
        {
          if (*(v61 + v36))
          {
            goto LABEL_96;
          }

          v37 = (v16 + 2 * v36);
          v38 = *v37;
          if (*v37 < v17)
          {
            LOWORD(v17) = v17 + 256;
          }

          *(v61 + v36) = BYTE1(v17);
          v17 = (((v37[1] & 0xFF00) - (v38 & 0xFF00)) & 0xFFFFFF00 | v37[1]) + (v17 & 0xFF00);
        }
      }
    }

    v33 = this++ < a3;
    if (this - a3 == 1)
    {
      goto LABEL_42;
    }
  }

  if (this < a3)
  {
    while (1)
    {
      v53 = a2[v20 - 1];
      v54 = v53 == 103 || v53 == -1;
      if (v54)
      {
        goto LABEL_96;
      }

      if ((v53 & 0x80000000) == 0)
      {
        if (v14 > v53)
        {
          goto LABEL_89;
        }

        if ((v53 & 0x7FFFFFF8) == 0x1000)
        {
          break;
        }
      }

LABEL_94:
      if (this >= --v20)
      {
        goto LABEL_43;
      }
    }

    v53 = v31 + v53;
LABEL_89:
    v55 = *(v13 + 2 * v53);
    if (v55)
    {
      if (*(v61 + v55))
      {
        goto LABEL_96;
      }

      v56 = (v16 + 2 * v55);
      v57 = v56[1];
      if (v57 > v19)
      {
        LOWORD(v19) = v19 - 256;
      }

      v58 = *v56;
      v59 = (v19 & 0xFF00) + (v58 & 0xFF00) - (v57 & 0xFF00);
      v60 = v59 >> 8;
      v19 = v59 & 0xFFFFFF00 | v58;
      *(v61 + v55) = v60;
    }

    goto LABEL_94;
  }

LABEL_43:
  if (v18 >= 3)
  {
    v39 = (v16 + 4);
    v40 = v61 + 1;
    v41 = (v18 - 1) - 1;
    do
    {
      if (!*v40)
      {
        v42 = *(v39 - 1);
        if (v17 <= v42)
        {
          v43 = *(v39 - 1);
        }

        else
        {
          v43 = v17;
        }

        if (!v33)
        {
          LOWORD(v17) = v43;
        }

        if (*(v39 - 1) < v17)
        {
          LOWORD(v17) = v17 + 256;
        }

        *v40 = BYTE1(v17);
        this = *v39 & 0xFF00;
        v17 = ((this - (v42 & 0xFF00)) & 0xFFFFFF00 | *v39) + (v17 & 0xFF00);
      }

      ++v39;
      ++v40;
      --v41;
    }

    while (v41);
  }

  if (v17 <= v19)
  {
    v45 = 0;
    LODWORD(v46) = 1;
    while (1)
    {
      v47 = v45;
      v48 = v18 - 1;
      if (v46 >= v48)
      {
LABEL_65:
        v45 = v47;
        if (!v47)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v46 = v46;
        while (1)
        {
          v49 = *(v61 + v46);
          if (v49 != 255)
          {
            v45 = v49 - *(*(v12 + 112) + 2 * v46 + 1);
            if (v45 != v47)
            {
              break;
            }
          }

          if (v48 == ++v46)
          {
            LODWORD(v46) = v48;
            goto LABEL_65;
          }
        }

        if (!v47)
        {
LABEL_66:
          if (v46 >= v48)
          {
            goto LABEL_75;
          }
        }
      }

      v50 = *(*(v12 + 112) + 2 * v46);
      v51 = *(a5 + 2);
      if (v51 >= -1 && *(a5 + 3) > v51)
      {
        goto LABEL_74;
      }

      this = icu::UVector32::expandCapacity(a5, v51 + 1, a6);
      if (this)
      {
        v51 = *(a5 + 2);
LABEL_74:
        *(*(a5 + 3) + 4 * v51) = v47 | (v50 << 16);
        ++*(a5 + 2);
      }

LABEL_75:
      LODWORD(v18) = *(v12 + 120);
      v54 = v46 == v18 - 1;
      LODWORD(v46) = v46 + 1;
      if (v54)
      {
        goto LABEL_2;
      }
    }
  }

  if (v17 - v30 > v19)
  {
    v44 = U_BUFFER_OVERFLOW_ERROR;
    goto LABEL_97;
  }

  this = icu::CollationData::makeReorderRanges(v12, a2, a3, 1, a5, a6);
LABEL_2:
  v6 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::CollationData::addLowScriptRange(icu::CollationData *this, unsigned __int8 *a2, int a3, __int16 a4)
{
  v4 = *(*(this + 14) + 2 * a3);
  if (v4 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a4 + 256;
  }

  a2[a3] = HIBYTE(v5);
  return ((*(*(this + 14) + 2 * a3 + 2) & 0xFF00) - (v4 & 0xFF00) + (v5 & 0xFF00)) & 0xFFFFFF00 | *(*(this + 14) + 2 * a3 + 2);
}

uint64_t icu::CollationData::addHighScriptRange(icu::CollationData *this, unsigned __int8 *a2, int a3, __int16 a4)
{
  v4 = (*(this + 14) + 2 * a3);
  v5 = v4[1];
  if (v5 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 - 256;
  }

  v7 = *v4;
  v8 = (v6 & 0xFF00) + (v7 & 0xFF00) - (v5 & 0xFF00);
  v9 = v8 >> 8;
  result = v8 & 0xFFFFFF00 | v7;
  a2[a3] = v9;
  return result;
}

uint64_t sub_1952CDB2C(uint64_t result)
{
  if (result)
  {
    icu::UnicodeString::~UnicodeString((result + 8));

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t sub_1952CDB80(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(result + 400);
  *(result + 16) = result + 400;
  *(result + 24) = 0;
  *(result + 32) = result + 48;
  *(result + 40) = 40;
  *(result + 44) = 0;
  *(result + 368) = 0;
  *(result + 376) = 0;
  *(result + 384) = -1;
  *(result + 388) = 0;
  *result = &unk_1F0938270;
  *(result + 392) = a2;
  v2 = *(a2 + 8);
  *(result + 400) = 0u;
  *(result + 416) = 0u;
  *(result + 432) = 0u;
  *(result + 448) = v2;
  *(result + 456) = 301989888;
  *(result + 528) = 0;
  *(result + 536) = 0;
  *(result + 460) = 0u;
  *(result + 476) = 0u;
  *(result + 492) = 0u;
  *(result + 508) = 0u;
  *(result + 816) = 0;
  *(result + 824) = 0;
  *(result + 432) = *(a2 + 16);
  v3 = xmmword_19544D5E0;
  v4 = xmmword_19544D5F0;
  v5 = xmmword_19547B440;
  v6 = 544;
  v7 = vdupq_n_s64(0x13uLL);
  v8 = vdupq_n_s32(0x1180u);
  v9 = vdupq_n_s32(0x114Eu);
  v10.i64[0] = 0x110000001100;
  v10.i64[1] = 0x110000001100;
  v11 = vdupq_n_s32(0x1C7u);
  v12 = vdupq_n_s64(0x43uLL);
  v13.i64[0] = 0x400000004;
  v13.i64[1] = 0x400000004;
  v14 = vdupq_n_s64(4uLL);
  do
  {
    v15 = vdupq_n_s64(0x28uLL);
    v16 = vorrq_s8(vshlq_n_s32(vaddq_s32(vbslq_s8(vuzp1q_s32(vcgtq_u64(v7, v4), vcgtq_u64(v7, v3)), v10, vbslq_s8(vuzp1q_s32(vcgtq_u64(v15, v4), vcgtq_u64(v15, v3)), v9, v8)), v5), 0xDuLL), v11);
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v12, v4)), *v3.i8).u8[0])
    {
      *(result + v6) = v16.i32[0];
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x43uLL), *&v4)), *&v3).i8[2])
    {
      *(result + v6 + 4) = v16.i32[1];
    }

    if (vuzp1_s16(*&v3, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x43uLL), *&v3))).i32[1])
    {
      *(result + v6 + 8) = v16.i64[1];
    }

    v3 = vaddq_s64(v3, v14);
    v4 = vaddq_s64(v4, v14);
    v5 = vaddq_s32(v5, v13);
    v6 += 16;
  }

  while (v6 != 816);
  *(result + 440) = result + 544;
  return result;
}

void sub_1952CDD48(icu::CollationIterator *a1@<X0>, void *a2@<X8>)
{
  icu::CollationIterator::~CollationIterator(a1, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952CDD80(icu::CollationIterator *this, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = *(this + 49);
  v11 = (this + 400);
  v12 = *(v10 + 96);
  *(this + 51) = *(v10 + 64);
  *(this + 52) = v12;
  v13 = *(v10 + 352);
  if ((v13 & 0x11) != 0)
  {
    v14 = 0;
  }

  else if ((v13 & 2) != 0)
  {
    v14 = v10 + 354;
  }

  else
  {
    v14 = *(v10 + 368);
  }

  *(this + 53) = v14;
  icu::CollationIterator::reset(this);
  *(this + 102) = a2;
  *(this + 206) = a3;
  v27 = U_ZERO_ERROR;
  do
  {
    v15 = *(this + 102);
    if (*(v15 + 8) < 0)
    {
      v16 = *(v15 + 12);
    }

    else
    {
      v16 = (*(v15 + 8) >> 5);
    }

    v17 = *(this + 206);
    if (v17 >= v16)
    {
      break;
    }

    *(this + 6) = 0;
    *(this + 92) = 0;
    v18 = icu::UnicodeString::char32At(v16, v15, v17);
    if (v18 < 0x10000)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    *(this + 206) += v19;
    v20 = utrie2_get32(*(*(this + 49) + 32), v18);
    v21 = v11;
    if (v20 == 192)
    {
      v21 = *(*(this + 49) + 16);
      v20 = sub_1952C6CA0(v21, v18);
    }

    icu::CollationIterator::appendCEsFromCE32(this, v21, v18, v20, 1, &v27);
    v22 = *(this + 6);
    if (v22 >= 1)
    {
      v23 = *(this + 4);
      do
      {
        v25 = *v23++;
        v24 = v25;
        if (v25)
        {
          if (a5 <= 30)
          {
            *(a4 + 8 * a5) = v24;
          }

          a5 = (a5 + 1);
        }

        --v22;
      }

      while (v22);
    }
  }

  while (v27 <= U_ZERO_ERROR);
  return a5;
}

uint64_t sub_1952CDF04(uint64_t a1, int a2)
{
  result = icu::CollationIterator::reset(a1);
  *(a1 + 824) = a2;
  return result;
}

uint64_t *sub_1952CDF38(uint64_t a1)
{
  v2 = *(a1 + 824);
  v3 = *(a1 + 816);
  if (*(v3 + 8) < 0)
  {
    v4 = *(v3 + 12);
  }

  else
  {
    v4 = (*(v3 + 8) >> 5);
  }

  if (v2 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = icu::UnicodeString::char32At(v4, v3, v2);
  if (result < 0x10000)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  *(a1 + 824) += v6;
  return result;
}

uint64_t *sub_1952CDFA4(uint64_t a1)
{
  v1 = *(a1 + 824);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  result = icu::UnicodeString::char32At(v1, *(a1 + 816), v1 - 1);
  if (result >= 0x10000)
  {
    v4 = -2;
  }

  else
  {
    v4 = -1;
  }

  *(a1 + 824) += v4;
  return result;
}

uint64_t sub_1952CDFFC(uint64_t a1, int a2)
{
  result = icu::UnicodeString::moveIndex32(*(a1 + 816), *(a1 + 824), a2);
  *(a1 + 824) = result;
  return result;
}

uint64_t sub_1952CE030(uint64_t a1, int a2)
{
  result = icu::UnicodeString::moveIndex32(*(a1 + 816), *(a1 + 824), -a2);
  *(a1 + 824) = result;
  return result;
}

uint64_t sub_1952CE074(uint64_t a1, unsigned int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if ((a2 & 0x100) != 0)
  {
    v12 = a2 >> 13;
    v13 = *(*(a1 + 392) + 32);

    return utrie2_get32(v13, v12);
  }

  else
  {
    result = icu::UVector::elementAt((*(a1 + 392) + 104), a2 >> 13);
    if (result)
    {
      v6 = result;
      result = *(result + 80);
      if (result == 1 || *(v6 + 84) != *(*(a1 + 392) + 408))
      {
        result = icu::CollationDataBuilder::buildContext(*(a1 + 392), v6, a3);
        *(v6 + 80) = result;
        if (*a3 == U_BUFFER_OVERFLOW_ERROR)
        {
          *a3 = U_ZERO_ERROR;
          v7 = *(a1 + 392);
          if (*(v7 + 352))
          {
            v8 = 2;
          }

          else
          {
            v8 = *(v7 + 352) & 0x1E;
          }

          *(v7 + 352) = v8;
          ++*(v7 + 408);
          result = icu::CollationDataBuilder::buildContext(*(a1 + 392), v6, a3);
          *(v6 + 80) = result;
        }

        v9 = *(a1 + 392);
        *(v6 + 84) = *(v9 + 408);
        v10 = *(v9 + 352);
        if ((v10 & 0x11) != 0)
        {
          v11 = 0;
        }

        else if ((v10 & 2) != 0)
        {
          v11 = v9 + 354;
        }

        else
        {
          v11 = *(v9 + 368);
        }

        *(a1 + 424) = v11;
      }
    }

    else
    {
      *a3 = U_INTERNAL_PROGRAM_ERROR;
    }
  }

  return result;
}

uint64_t icu::CollationDataBuilder::buildContext(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    v3 = 0;
    goto LABEL_6;
  }

  memset(v72, 0, sizeof(v72));
  icu::UCharsTrieBuilder::UCharsTrieBuilder(v72, a3);
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  icu::UCharsTrieBuilder::UCharsTrieBuilder(&v65, a3);
  if (*a3 > 0)
  {
    goto LABEL_4;
  }

  v57 = a2;
  while (2)
  {
    v9 = *(a2 + 16);
    if (*(a2 + 16) < 0)
    {
      v10 = *(a2 + 20);
    }

    else
    {
      v10 = v9 >> 5;
    }

    if (v10)
    {
      if ((v9 & 2) != 0)
      {
        v11 = (a2 + 18);
      }

      else
      {
        v11 = *(a2 + 32);
      }

      v12 = *v11;
    }

    else
    {
      v12 = 0xFFFF;
    }

    v63 = 0uLL;
    v64 = 0uLL;
    v13 = v12 + 1;
    v61 = 0uLL;
    v62 = 0uLL;
    icu::UnicodeString::UnicodeString(&v61, (a2 + 8), 0, (v12 + 1));
    v14 = a2;
    while (1)
    {
      v15 = v14;
      *(v14 + 76) = 1;
      v16 = *(v14 + 88);
      if ((v16 & 0x80000000) != 0)
      {
        break;
      }

      v17 = icu::UVector::elementAt((a1 + 104), v16);
      v14 = v17;
      if ((SWORD4(v61) & 0x8000u) == 0)
      {
        v18 = WORD4(v61) >> 5;
      }

      else
      {
        v18 = HIDWORD(v61);
      }

      v19 = *(v17 + 16);
      if (BYTE8(v61))
      {
        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        if (v19)
        {
          break;
        }

        v20 = (BYTE8(v61) & 2) != 0 ? (&v61 + 10) : *(&v62 + 1);
        if (!icu::UnicodeString::doEqualsSubstring(v17 + 8, 0, v18, v20, v18 & (v18 >> 31), v18 & ~(v18 >> 31)))
        {
          break;
        }
      }
    }

    if (v15[4] < 0)
    {
      v21 = v15[5];
    }

    else
    {
      v21 = *(v15 + 8) >> 5;
    }

    if (v21 == v13)
    {
      v3 = v15[18];
      goto LABEL_113;
    }

    if (BYTE8(v66))
    {
      v22 = 2;
    }

    else
    {
      v22 = BYTE8(v66) & 0x1E;
    }

    WORD4(v66) = v22;
    HIDWORD(v70) = 0;
    HIDWORD(v71) = 0;
    if (*(a2 + 16) < 0)
    {
      v23 = *(a2 + 20);
    }

    else
    {
      v23 = *(a2 + 16) >> 5;
    }

    v58 = a2;
    if (v23 == v13)
    {
      v59 = *(a2 + 72);
      v24 = icu::UVector::elementAt((a1 + 104), *(a2 + 88));
      v25 = 512;
      goto LABEL_83;
    }

    v26 = 0;
    for (i = v57; ; i = icu::UVector::elementAt((a1 + 104), *(i + 88)))
    {
      v28 = *(i + 16);
      v29 = *(i + 16) < 0 ? *(i + 20) : v28 >> 5;
      v30 = 0uLL;
      if (v29)
      {
        v31 = (v28 & 2) != 0 ? (i + 18) : *(i + 32);
        v32 = *v31;
      }

      else
      {
        v32 = 0xFFFF;
      }

      if (v32 == v12)
      {
        break;
      }

      if (*(i + 76) == 1)
      {
        continue;
      }

      if (!v32)
      {
        v26 = *(i + 76);
        continue;
      }

      v33 = v28 >> 5;
      if ((v28 & 0x8000u) != 0)
      {
        v33 = *(i + 20);
      }

      if (v33 >= 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = v33;
      }

      if (v33 - v34 >= v32)
      {
        v35 = v32;
      }

      else
      {
        v35 = v33 - v34;
      }

      v36 = WORD4(v61) >> 5;
      if (SWORD4(v61) < 0)
      {
        v36 = HIDWORD(v61);
      }

      if (v28)
      {
        if ((BYTE8(v61) & 1) == 0)
        {
          continue;
        }

LABEL_77:
        v26 = *(i + 76);
        continue;
      }

      v37 = v34 & ~(v34 >> 31);
      if (v33 - v34 < 0)
      {
        v38 = 0;
LABEL_80:
        v39 = v38;
        if (BYTE8(v61))
        {
          continue;
        }

        goto LABEL_70;
      }

      v38 = v33 - v37;
      v39 = v35;
      if (v38 < v35)
      {
        goto LABEL_80;
      }

      if (BYTE8(v61))
      {
        continue;
      }

LABEL_70:
      if ((v28 & 2) != 0)
      {
        v40 = i + 18;
      }

      else
      {
        v40 = *(i + 32);
      }

      if (icu::UnicodeString::doEqualsSubstring(&v61, v36 - v35, v35, v40, v37, v39))
      {
        goto LABEL_77;
      }
    }

    v59 = v26;
    v25 = 768;
    v24 = a2;
    while (1)
    {
      v60[2] = v30;
      v60[3] = v30;
      v60[0] = v30;
      v60[1] = v30;
      icu::UnicodeString::UnicodeString(v60, (v24 + 2), v12 + 1);
      v41 = *(a1 + 8);
      v43 = icu::UnicodeString::char32At(v42, v60, 0);
      if (sub_1951FAB08(v41, v43) < 0x100)
      {
        v25 &= ~0x200u;
      }

      v44 = *(a1 + 8);
      LODWORD(v45) = WORD4(v60[0]) >> 5;
      if ((SWORD4(v60[0]) & 0x8000u) == 0)
      {
        v45 = v45;
      }

      else
      {
        v45 = HIDWORD(v60[0]);
      }

      v46 = icu::UnicodeString::char32At(v45, v60, v45 - 1);
      if (sub_1951FAB08(v44, v46) > 0xFF)
      {
        v25 |= 0x400u;
      }

      if (*(a1 + 617) && (v25 & 0x800) == 0)
      {
        LODWORD(v47) = WORD4(v60[0]) >> 5;
        v47 = (SWORD4(v60[0]) & 0x8000u) == 0 ? v47 : HIDWORD(v60[0]);
        if (v47 >= 1)
        {
          v48 = 0;
          while (1)
          {
            v49 = icu::UnicodeString::char32At(v47, v60, v48);
            if (!u_getCombiningClass(v49))
            {
              break;
            }

            if (v49 < 0x10000)
            {
              v50 = 1;
            }

            else
            {
              v50 = 2;
            }

            v48 += v50;
            LODWORD(v47) = WORD4(v60[0]) >> 5;
            if ((SWORD4(v60[0]) & 0x8000u) == 0)
            {
              v47 = v47;
            }

            else
            {
              v47 = HIDWORD(v60[0]);
            }

            if (v48 >= v47)
            {
              goto LABEL_108;
            }
          }

          v25 |= 0x800u;
        }
      }

LABEL_108:
      icu::UCharsTrieBuilder::add(&v65, v60, v24[18], a3);
      if (v24 == v15)
      {
        break;
      }

      v24 = icu::UVector::elementAt((a1 + 104), v24[22]);
      icu::UnicodeString::~UnicodeString(v52, v60);
LABEL_83:
      v30 = 0uLL;
    }

    icu::UnicodeString::~UnicodeString(v51, v60);
    v53 = icu::CollationDataBuilder::addContextTrie(a1, v59, &v65, a3);
    v54 = *a3;
    if (v54 > 0)
    {
      v3 = 0;
LABEL_127:
      icu::UnicodeString::~UnicodeString(v54, &v61);
      goto LABEL_5;
    }

    if (v53 >= 0x80000)
    {
      v3 = 0;
      v54 = 15;
      *a3 = U_BUFFER_OVERFLOW_ERROR;
      goto LABEL_127;
    }

    v3 = v25 | (v53 << 13) | 0xC9u;
    v15 = v24;
    a2 = v58;
LABEL_113:
    *(a2 + 76) = v3;
    if (!v12)
    {
      v54 = v15[22];
      if ((v54 & 0x80000000) != 0)
      {
        goto LABEL_127;
      }

LABEL_120:
      icu::UnicodeString::~UnicodeString(v54, &v61);
      a2 = icu::UVector::elementAt((a1 + 104), v15[22]);
      if (*a3 >= 1)
      {
        goto LABEL_4;
      }

      continue;
    }

    break;
  }

  icu::UnicodeString::doReplace(&v61, 0, 1, 0, 0, 0);
  if ((SWORD4(v61) & 0x8000u) == 0)
  {
    v55 = WORD4(v61) >> 5;
  }

  else
  {
    v55 = HIDWORD(v61);
  }

  icu::UnicodeString::doReverse(&v61, 0, v55);
  icu::UCharsTrieBuilder::add(v72, &v61, v3, a3);
  v54 = v15[22];
  if ((v54 & 0x80000000) == 0)
  {
    goto LABEL_120;
  }

  icu::UnicodeString::~UnicodeString(v54, &v61);
  v56 = icu::CollationDataBuilder::addContextTrie(a1, *(v57 + 76), v72, a3);
  if (*a3 > 0)
  {
LABEL_4:
    v3 = 0;
    goto LABEL_5;
  }

  if (v56 < 0x80000)
  {
    v3 = (v56 << 13) | 0xC8u;
  }

  else
  {
    v3 = 0;
    *a3 = U_BUFFER_OVERFLOW_ERROR;
  }

LABEL_5:
  icu::UCharsTrieBuilder::~UCharsTrieBuilder(&v65);
  icu::UCharsTrieBuilder::~UCharsTrieBuilder(v72);
LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t icu::CollationDataBuilder::clearContexts(uint64_t this)
{
  if (*(this + 352))
  {
    v1 = 2;
  }

  else
  {
    v1 = *(this + 352) & 0x1E;
  }

  *(this + 352) = v1;
  ++*(this + 408);
  return this;
}

icu::CollationDataBuilder *icu::CollationDataBuilder::CollationDataBuilder(icu::CollationDataBuilder *this, UErrorCode *a2, UErrorCode *a3)
{
  v4 = a2;
  *this = &unk_1F0938300;
  *(this + 1) = icu::Normalizer2Factory::getNFCImpl(a3, a2);
  *(this + 2) = 0;
  *(this + 24) = 0u;
  icu::UVector32::UVector32((this + 40), a3);
  icu::UVector64::UVector64((this + 72), a3);
  icu::UVector::UVector((this + 104), a3);
  icu::UnicodeSet::UnicodeSet((this + 144));
  *(this + 43) = &unk_1F0935D00;
  *(this + 176) = 2;
  *(this + 102) = 0;
  icu::UnicodeSet::UnicodeSet((this + 416));
  *(this + 616) = 0;
  *(this + 617) = v4;
  *(this + 618) = 0;
  *(this + 39) = 0u;
  if (!v4)
  {
    v6 = *(this + 12);
    if (v6 >= -1 && *(this + 13) > v6)
    {
      goto LABEL_6;
    }

    if (icu::UVector32::expandCapacity((this + 40), v6 + 1, a3))
    {
      v6 = *(this + 12);
LABEL_6:
      *(*(this + 8) + 4 * v6) = 0;
      ++*(this + 12);
    }
  }

  icu::UVector::setDeleter((this + 104), sub_1952CDB2C);
  return this;
}

void icu::CollationDataBuilder::~CollationDataBuilder(icu::CollationDataBuilder *this)
{
  *this = &unk_1F0938300;
  utrie2_close(*(this + 4));
  v3 = *(this + 78);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 79);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  icu::UnicodeSet::~UnicodeSet(v2, (this + 416));
  icu::UnicodeString::~UnicodeString(v5, (this + 344));
  icu::UnicodeSet::~UnicodeSet(v6, (this + 144));
  icu::UVector::~UVector((this + 104));
  icu::UVector64::~UVector64(this + 9);
  icu::UVector32::~UVector32(this + 5);

  icu::UObject::~UObject(this);
}

{
  icu::CollationDataBuilder::~CollationDataBuilder(this);

  JUMPOUT(0x19A8B2600);
}

icu::UnicodeSet *icu::CollationDataBuilder::initForTailoring(icu::UnicodeSet *this, const icu::CollationData *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    if (*(this + 4))
    {
      v5 = U_INVALID_STATE_ERROR;
LABEL_4:
      *a3 = v5;
      return this;
    }

    if (!a2)
    {
      v5 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_4;
    }

    *(this + 2) = a2;
    if (*(this + 617))
    {
      v7 = 192;
    }

    else
    {
      v7 = -195323;
    }

    this = utrie2_open(0xC0u, v7, a3);
    *(v4 + 4) = this;
    if (!*(v4 + 617))
    {
      for (i = 192; i != 256; ++i)
      {
        utrie2_set32(*(v4 + 4), i, 192, a3);
      }

      utrie2_setRange32(*(v4 + 4), 0xAC00u, 0xD7A3u, 0xCCu, 1, a3);
      v9 = *(a2 + 10);

      return icu::UnicodeSet::addAll(v4 + 52, v9);
    }
  }

  return this;
}

uint64_t icu::CollationDataBuilder::maybeSetPrimaryRange(icu::CollationDataBuilder *this, signed int a2, signed int a3, uint64_t a4, unsigned int a5, UErrorCode *a6)
{
  if (*a6 > 0 || a5 - 2 > 0x7D)
  {
    return 0;
  }

  v10 = (a3 >> 5) - (a2 >> 5);
  if (v10 > 2 || (v11 = 0, (a3 & 0x1Fu) >= 3) && (a2 & 0x1Fu) <= 0x1C && v10 >= 1)
  {
    v12 = (a2 << 8) | (a4 << 32) | a5;
    if ((*(*this + 24))(this, BYTE3(a4)))
    {
      v13 = v12 | 0x80;
    }

    else
    {
      v13 = v12;
    }

    v14 = icu::CollationDataBuilder::addCE(this, v13, a6);
    if (*a6 > 0)
    {
      return 0;
    }

    if (v14 < 0x80000)
    {
      v11 = 1;
      utrie2_setRange32(*(this + 4), a2, a3, (v14 << 13) | 0xCE, 1, a6);
      *(this + 616) = 1;
    }

    else
    {
      v11 = 0;
      *a6 = U_BUFFER_OVERFLOW_ERROR;
    }
  }

  return v11;
}

uint64_t icu::CollationDataBuilder::addCE(icu::CollationDataBuilder *this, uint64_t a2, UErrorCode *a3)
{
  v5 = *(this + 20);
  if (v5 < 1)
  {
LABEL_5:
    v7 = v5 + 1;
    if (v5 < -1 || *(this + 21) <= v5)
    {
      if (!icu::UVector64::expandCapacity((this + 72), v7, a3))
      {
        return v5;
      }

      v8 = *(this + 20);
      v7 = v8 + 1;
    }

    else
    {
      v8 = *(this + 20);
    }

    *(*(this + 12) + 8 * v8) = a2;
    *(this + 20) = v7;
    return v5;
  }

  v6 = 0;
  while (*(*(this + 12) + 8 * v6) != a2)
  {
    if (v5 == ++v6)
    {
      goto LABEL_5;
    }
  }

  return v6;
}

uint64_t icu::CollationDataBuilder::setPrimaryRangeAndReturnNext(icu::CollationDataBuilder *this, signed int a2, signed int a3, uint64_t a4, unsigned int a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v6 = a4;
  v13 = (*(*this + 24))(this, BYTE3(a4));
  if (!icu::CollationDataBuilder::maybeSetPrimaryRange(this, a2, a3, v6, a5, a6))
  {
    if (a3 <= a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = a3;
    }

    v15 = v14 + 1;
    do
    {
      utrie2_set32(*(this + 4), a2++, v6 | 0xC1, a6);
      v6 = icu::Collation::incThreeBytePrimaryByOffset(v6, v13, a5);
    }

    while (v15 != a2);
    return v6;
  }

  return icu::Collation::incThreeBytePrimaryByOffset(v6, v13, a5 + a5 * (a3 - a2));
}

uint64_t icu::CollationDataBuilder::getCE32FromOffsetCE32(icu::CollationDataBuilder *this, int a2, icu::Collation *a3, unsigned int a4)
{
  v4 = a4 >> 13;
  if (a2)
  {
    v5 = (*(this + 2) + 16);
  }

  else
  {
    if (*(this + 20) <= v4)
    {
      v6 = 0;
      return icu::Collation::getThreeBytePrimaryForOffsetData(a3, v6) | 0xC1;
    }

    v5 = (this + 96);
  }

  v6 = *(*v5 + 8 * v4);
  return icu::Collation::getThreeBytePrimaryForOffsetData(a3, v6) | 0xC1;
}

uint64_t icu::CollationDataBuilder::getLongPrimaryIfSingleCE(uint64_t **this, unsigned int a2)
{
  v2 = utrie2_get32(this[4], a2);
  if ((v2 & 0xCF) == 0xC1)
  {
    return v2 & 0xFFFFFF00;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::CollationDataBuilder::getSingleCE(uint64_t **this, icu::Collation *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v7 = utrie2_get32(this[4], a2);
  v8 = v7;
  if (v7 == 192)
  {
    v7 = sub_1952C6CA0(this[2], a2);
  }

  if ((~v7 & 0xC0) != 0)
  {
    return (v7 << 16) & 0xFF000000 | (((v7 & 0xFFFF0000) >> 16) << 48) | (v7 << 8);
  }

  while (2)
  {
    switch(v7 & 0xF)
    {
      case 1u:
        return (((v7 & 0xFFFFFF00) >> 8) << 40) | 0x5000500;
      case 2u:
        return v7 & 0xFFFFFF00;
      case 4u:
      case 7u:
      case 8u:
      case 9u:
      case 0xCu:
      case 0xDu:
        goto LABEL_37;
      case 5u:
        if ((v7 & 0x1F00) != 0x100)
        {
          goto LABEL_37;
        }

        v9 = v7 >> 13;
        if (v8 == 192)
        {
          v10 = this[2][1];
        }

        else
        {
          if (*(this + 12) <= v9)
          {
LABEL_29:
            v7 = 0;
            return (v7 << 16) & 0xFF000000 | (((v7 & 0xFFFF0000) >> 16) << 48) | (v7 << 8);
          }

LABEL_22:
          v10 = this[8];
        }

        v7 = *(v10 + v9);
LABEL_26:
        if ((~v7 & 0xC0) != 0)
        {
          return (v7 << 16) & 0xFF000000 | (((v7 & 0xFFFF0000) >> 16) << 48) | (v7 << 8);
        }

        continue;
      case 6u:
        if ((v7 & 0x1F00) == 0x100)
        {
          v16 = v7 >> 13;
          if (v8 == 192)
          {
            v17 = this[2][2];
            return v17[v16];
          }

          if (*(this + 20) > v16)
          {
            v17 = this[12];
            return v17[v16];
          }

          result = 0;
        }

        else
        {
LABEL_37:
          result = 0;
          v15 = U_UNSUPPORTED_ERROR;
LABEL_38:
          *a3 = v15;
        }

        break;
      case 0xAu:
        if (*(this + 12) <= (v7 >> 13))
        {
          goto LABEL_29;
        }

        v9 = v7 >> 13;
        goto LABEL_22;
      case 0xBu:
        if (v8 == 192)
        {
          v13 = this[2][1];
        }

        else
        {
          if (*(this + 12) < 1)
          {
            goto LABEL_29;
          }

          v13 = this[8];
        }

        v7 = *v13;
        goto LABEL_26;
      case 0xEu:
        v11 = v7 >> 13;
        if (v8 == 192)
        {
          v12 = this[2] + 2;
LABEL_17:
          v14 = *(*v12 + 8 * v11);
          goto LABEL_25;
        }

        v12 = this + 12;
        if (*(this + 20) > v11)
        {
          goto LABEL_17;
        }

        v14 = 0;
LABEL_25:
        v7 = icu::Collation::getThreeBytePrimaryForOffsetData(a2, v14) | 0xC1;
        goto LABEL_26;
      case 0xFu:
        return (icu::Collation::unassignedPrimaryFromCodePoint(a2) << 32) | 0x5000500;
      default:
        result = 0;
        v15 = U_INTERNAL_PROGRAM_ERROR;
        goto LABEL_38;
    }

    return result;
  }
}

uint64_t icu::CollationDataBuilder::addCE32(icu::CollationDataBuilder *this, int a2, UErrorCode *a3)
{
  v5 = *(this + 12);
  if (v5 < 1)
  {
LABEL_5:
    if (v5 < -1 || (v7 = *(this + 12), *(this + 13) <= v5))
    {
      if (!icu::UVector32::expandCapacity((this + 40), v5 + 1, a3))
      {
        return v5;
      }

      v7 = *(this + 12);
    }

    *(*(this + 8) + 4 * v7) = a2;
    ++*(this + 12);
    return v5;
  }

  v6 = 0;
  while (*(*(this + 8) + 4 * v6) != a2)
  {
    if (v5 == ++v6)
    {
      goto LABEL_5;
    }
  }

  return v6;
}

uint64_t icu::CollationDataBuilder::addConditionalCE32(icu::CollationDataBuilder *this, const icu::UnicodeString *a2, unsigned int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if (*(this + 28) < 0x80000)
    {
      operator new();
    }

    *a4 = U_BUFFER_OVERFLOW_ERROR;
  }

  return 0xFFFFFFFFLL;
}

uint64_t icu::CollationDataBuilder::add(icu::CollationDataBuilder *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, const uint64_t *a4, uint64_t a5, UErrorCode *a6)
{
  v10 = (*(*this + 32))(this, a4, a5, a6);

  return icu::CollationDataBuilder::addCE32(this, a2, a3, v10, a6);
}

uint64_t icu::CollationDataBuilder::addCE32(uint64_t this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, unsigned int a4, UErrorCode *a5)
{
  v71 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_8;
  }

  if (*(a3 + 4) <= 0x1Fu)
  {
    v11 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_7;
  }

  v7 = this;
  this = *(this + 32);
  if (!this || (this = utrie2_isFrozen(this), this))
  {
    v11 = U_INVALID_STATE_ERROR;
LABEL_7:
    *a5 = v11;
    goto LABEL_8;
  }

  v13 = icu::UnicodeString::char32At(v10, a3, 0);
  v14 = 1;
  if (v13 < 0x10000)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v17 = utrie2_get32(*(v7 + 32), v13);
  if (*(a2 + 4) <= 0x1Fu)
  {
    v18 = *(a3 + 4);
    v19 = v18;
    v20 = v18 >> 5;
    if (v19 < 0)
    {
      v20 = *(a3 + 3);
    }

    v14 = v20 > v15;
  }

  if (*(v7 + 617))
  {
    NFDInstance = icu::Normalizer2::getNFDInstance(a5, v16);
    memset(v70 + 8, 0, 56);
    *&v70[0] = &unk_1F0935D00;
    WORD4(v70[0]) = 2;
    (*(*NFDInstance + 24))(NFDInstance, a3, v70, a5);
    v22 = *(a3 + 4);
    if (v22)
    {
      v26 = WORD4(v70[0]);
      if ((BYTE8(v70[0]) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v23 = v22;
      v24 = v22 >> 5;
      if (v23 >= 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = *(a3 + 3);
      }

      v26 = WORD4(v70[0]);
      if ((SWORD4(v70[0]) & 0x8000u) == 0)
      {
        v27 = WORD4(v70[0]) >> 5;
      }

      else
      {
        v27 = HIDWORD(v70[0]);
      }

      if ((BYTE8(v70[0]) & 1) != 0 || v25 != v27)
      {
        goto LABEL_42;
      }

      v28 = (BYTE8(v70[0]) & 2) != 0 ? (v70 + 10) : *(&v70[1] + 1);
      if (!icu::UnicodeString::doEquals(a3, v28, v25))
      {
        goto LABEL_42;
      }
    }

    if (*(a2 + 4) >= 0x20u)
    {
      memset(v69 + 8, 0, 56);
      *&v69[0] = &unk_1F0935D00;
      WORD4(v69[0]) = 2;
      (*(*NFDInstance + 24))(NFDInstance, a2, v69, a5);
      if (!sub_195213DE4(a2, v69))
      {
        goto LABEL_39;
      }

      v29 = icu::UnicodeString::countChar32(a2, 0, 0x7FFFFFFF);
      if (v29 > 2)
      {
        goto LABEL_39;
      }

      v30 = v29;
      *c = 0;
      v68 = 0;
      if (icu::UnicodeString::toUTF32(a2, c, 4, a5) != v29)
      {
        v32 = 27;
        goto LABEL_40;
      }

      if (u_getCombiningClass(c[0]) || v30 == 2 && (v31 = (c[1] - 12441), v31 > 1))
      {
LABEL_39:
        v32 = 16;
LABEL_40:
        *a5 = v32;
        goto LABEL_41;
      }

      icu::UnicodeString::~UnicodeString(v31, v69);
    }

    v33 = *(a3 + 4);
    v34 = *(a3 + 3);
    if ((v33 & 0x8000u) == 0)
    {
      v35 = v33 >> 5;
    }

    else
    {
      v35 = *(a3 + 3);
    }

    if (v35 > v15)
    {
      v36 = 0;
      v37 = a3 + 10;
      if ((v33 & 2) == 0)
      {
        v37 = *(a3 + 3);
      }

      while (1)
      {
        if ((v33 & 0x8000) != 0)
        {
          v38 = v34;
          if (v36 >= v34)
          {
            break;
          }
        }

        else
        {
          v38 = v33 >> 5;
          if (v36 >= v33 >> 5)
          {
            break;
          }
        }

        if (v38 <= v36)
        {
          v39 = 0xFFFF;
        }

        else
        {
          v39 = *&v37[2 * v36];
        }

        ++v36;
        if (vmaxv_u16(vcgt_u16(0x2BA4001C00150013, vadd_s16(vdup_n_s16(v39), 0x5400EE59EE9FEF00))))
        {
          v26 = 16;
          *a5 = U_UNSUPPORTED_ERROR;
          goto LABEL_42;
        }
      }
    }

    icu::UnicodeString::~UnicodeString(v33, v70);
  }

  if (v17 == 192)
  {
    v40 = *(v7 + 16);
    v41 = sub_1952C6CA0(v40, v13);
    FinalCE32 = icu::CollationData::getFinalCE32(v40, v41);
    v43 = (FinalCE32 & 0xCE) == 0xC8 || v14;
    if (v43 != 1)
    {
      goto LABEL_73;
    }

    v17 = icu::CollationDataBuilder::copyFromBaseCE32(v7, v13, FinalCE32, 1, a5);
    this = utrie2_set32(*(v7 + 32), v13, v17, a5);
    if (*a5 > 0)
    {
      goto LABEL_8;
    }
  }

  v44 = v17 & 0xCF;
  if (!v14)
  {
    if (v44 == 199)
    {
      this = icu::UVector::elementAt((v7 + 104), v17 >> 13);
      *(this + 80) = 1;
      *(this + 72) = a4;
LABEL_106:
      *(v7 + 616) = 1;
      goto LABEL_8;
    }

LABEL_73:
    this = utrie2_set32(*(v7 + 32), v13, a4, a5);
    goto LABEL_106;
  }

  if (v44 == 199)
  {
    v45 = icu::UVector::elementAt((v7 + 104), v17 >> 13);
    *(v45 + 80) = 1;
  }

  else
  {
    icu::UnicodeString::UnicodeString(v70, 0);
    v46 = icu::CollationDataBuilder::addConditionalCE32(v7, v70, v17, a5);
    this = icu::UnicodeString::~UnicodeString(v47, v70);
    if (*a5 > 0)
    {
      goto LABEL_8;
    }

    utrie2_set32(*(v7 + 32), v13, (v46 << 13) | 0xC7, a5);
    icu::UnicodeSet::add((v7 + 144), v13);
    v45 = icu::UVector::elementAt((v7 + 104), v46);
  }

  memset(v70, 0, sizeof(v70));
  icu::UnicodeString::UnicodeString(v70, a3, v15);
  memset(v69, 0, sizeof(v69));
  v48 = *(a2 + 4);
  v49 = v48;
  v50 = v48 >> 5;
  if (v49 < 0)
  {
    LOWORD(v50) = *(a2 + 3);
  }

  icu::UnicodeString::UnicodeString(v69, v50);
  v51 = *(a2 + 4);
  v52 = v51;
  v53 = v51 >> 5;
  if (v52 >= 0)
  {
    v54 = v53;
  }

  else
  {
    v54 = *(a2 + 3);
  }

  v55 = icu::UnicodeString::doAppend(v69, a2, 0, v54);
  if ((SWORD4(v70[0]) & 0x8000u) == 0)
  {
    v56 = WORD4(v70[0]) >> 5;
  }

  else
  {
    v56 = HIDWORD(v70[0]);
  }

  icu::UnicodeString::doAppend(v55, v70, 0, v56);
  icu::UnicodeSet::addAll((v7 + 416), v70);
  while (1)
  {
    v57 = *(v45 + 88);
    if (v57 < 0)
    {
      v64 = icu::CollationDataBuilder::addConditionalCE32(v7, v69, a4, a5);
      v32 = *a5;
      if (v32 > 0)
      {
        goto LABEL_41;
      }

      *(v45 + 88) = v64;
      goto LABEL_105;
    }

    v58 = icu::UVector::elementAt((v7 + 104), *(v45 + 88));
    v59 = v58;
    v32 = *(v58 + 16);
    if ((v32 & 1) == 0)
    {
      break;
    }

    v63 = (BYTE8(v69[0]) & 1) == 0;
LABEL_99:
    v45 = v59;
    if (!v63)
    {
      *(v59 + 72) = a4;
LABEL_105:
      icu::UnicodeString::~UnicodeString(v32, v69);
      this = icu::UnicodeString::~UnicodeString(v66, v70);
      goto LABEL_106;
    }
  }

  if ((SWORD4(v69[0]) & 0x8000u) == 0)
  {
    v60 = WORD4(v69[0]) >> 5;
  }

  else
  {
    v60 = HIDWORD(v69[0]);
  }

  if ((v32 & 0x8000u) == 0)
  {
    v61 = v32 >> 5;
  }

  else
  {
    v61 = *(v58 + 20);
  }

  if ((v32 & 2) != 0)
  {
    v62 = v58 + 18;
  }

  else
  {
    v62 = *(v58 + 32);
  }

  v63 = icu::UnicodeString::doCompare(v69, 0, v60, v62, v61 & (v61 >> 31), v61 & ~(v61 >> 31));
  if ((v63 & 0x80000000) == 0)
  {
    goto LABEL_99;
  }

  v65 = icu::CollationDataBuilder::addConditionalCE32(v7, v69, a4, a5);
  v32 = *a5;
  if (v32 <= 0)
  {
    *(v45 + 88) = v65;
    *(icu::UVector::elementAt((v7 + 104), v65) + 88) = v57;
    goto LABEL_105;
  }

LABEL_41:
  icu::UnicodeString::~UnicodeString(v32, v69);
LABEL_42:
  this = icu::UnicodeString::~UnicodeString(v26, v70);
LABEL_8:
  v12 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::CollationDataBuilder::copyFromBaseCE32(icu::CollationDataBuilder *this, icu::Collation *a2, uint64_t a3, int a4, UErrorCode *a5)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
LABEL_2:
    v5 = 0;
    goto LABEL_50;
  }

  v5 = a3;
  if ((~a3 & 0xC0) != 0)
  {
    goto LABEL_50;
  }

  v7 = a2;
  v9 = a4 == 0;
  while (1)
  {
    v10 = v5 & 0xF;
    if (v10 <= 8)
    {
      break;
    }

    if ((v5 & 0xFu) > 0xB)
    {
      switch(v10)
      {
        case 0xCu:
          *a5 = U_UNSUPPORTED_ERROR;
          break;
        case 0xEu:
          v5 = icu::Collation::getThreeBytePrimaryForOffsetData(a2, *(*(*(this + 2) + 16) + 8 * (v5 >> 13))) | 0xC1;
          break;
        case 0xFu:
          v15 = icu::Collation::unassignedPrimaryFromCodePoint(a2);
          v14 = icu::CollationDataBuilder::encodeOneCE(this, ((v15 << 32) | 0x5000500), a5);
          goto LABEL_28;
        default:
LABEL_51:
          abort();
      }

      goto LABEL_50;
    }

    if (v10 != 9)
    {
      goto LABEL_51;
    }

    if (!v9)
    {
      *&v32 = 0;
      v33 = 0u;
      v36[0] = 0u;
      HIDWORD(v36[1]) = 0;
      v34 = 0u;
      v35 = 0u;
      *(&v32 + 1) = &unk_1F0935D00;
      LOWORD(v33) = 2;
      *(v36 + 12) = xmmword_195487A70;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      icu::UnicodeString::UnicodeString(&v40, 0);
      icu::CollationDataBuilder::copyContractionsFromBaseCE32(this, &v40, v7, v5, &v32, a5);
      v5 = (DWORD2(v36[1]) << 13) | 0xC7u;
      icu::UnicodeSet::add((this + 144), v7);
      icu::UnicodeString::~UnicodeString(v16, &v40);
      icu::UnicodeString::~UnicodeString(v17, (&v32 + 8));
      goto LABEL_50;
    }

    v13 = (*(*(this + 2) + 24) + 2 * (v5 >> 13));
    v5 = v13[1] | (*v13 << 16);
LABEL_14:
    v9 = 1;
    if ((~v5 & 0xC0) != 0)
    {
      goto LABEL_50;
    }
  }

  if ((v5 & 0xFu) <= 5)
  {
    if (v10 - 1 >= 2 && v10 != 4)
    {
      if (v10 == 5)
      {
        v14 = icu::CollationDataBuilder::encodeExpansion32(this, (*(*(this + 2) + 8) + 4 * (v5 >> 13)), (v5 >> 8) & 0x1F, a5);
        goto LABEL_28;
      }

      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (v10 != 8)
  {
    if (v10 != 6)
    {
      goto LABEL_51;
    }

    v14 = icu::CollationDataBuilder::encodeExpansion(this, (*(*(this + 2) + 16) + 8 * (v5 >> 13)), (v5 >> 8) & 0x1F, a5);
LABEL_28:
    v5 = v14;
    goto LABEL_50;
  }

  v11 = (*(*(this + 2) + 24) + 2 * (v5 >> 13));
  v12 = v11[1];
  v5 = v12 | (*v11 << 16);
  if (v9)
  {
    goto LABEL_14;
  }

  *&v40 = 0;
  v41 = 0u;
  memset(v44, 0, sizeof(v44));
  v42 = 0u;
  v43 = 0u;
  *(&v40 + 1) = &unk_1F0935D00;
  LOWORD(v41) = 2;
  *&v44[3] = xmmword_195487A70;
  memset(v39, 0, sizeof(v39));
  icu::UnicodeString::UnicodeString(v39, 0);
  if ((v12 & 0xCF) == 0xC9)
  {
    v18 = icu::CollationDataBuilder::copyContractionsFromBaseCE32(this, v39, v7, v5, &v40, a5);
  }

  else
  {
    v5 = icu::CollationDataBuilder::copyFromBaseCE32(this, v7, v5, 1, a5);
    v18 = icu::CollationDataBuilder::addConditionalCE32(this, v39, v5, a5);
    v44[6] = v18;
  }

  v19 = *a5;
  if (v19 <= 0)
  {
    v21 = icu::UVector::elementAt((this + 104), v18);
    v38 = 0;
    *v37 = 0u;
    v35 = 0u;
    memset(v36, 0, sizeof(v36));
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    v30 = (v11 + 2);
    icu::UCharsTrie::Iterator::Iterator(&v32, &v30, 0, a5);
    v29 = v30;
    if (icu::UCharsTrie::Iterator::next(&v29, &v32, a5))
    {
      while (1)
      {
        icu::UnicodeString::operator=(v39, &v34 + 1);
        if (SLOWORD(v39[1]) >= 0)
        {
          v22 = LOWORD(v39[1]) >> 5;
        }

        else
        {
          v22 = HIDWORD(v39[1]);
        }

        icu::UnicodeString::doReverse(v39, 0, v22);
        v23 = LOWORD(v39[1]) >> 5;
        if (SLOWORD(v39[1]) < 0)
        {
          LOWORD(v23) = WORD2(v39[1]);
        }

        v31 = v23;
        icu::UnicodeString::doReplace(v39, 0, 0, &v31, 0, 1);
        v5 = v37[3];
        if ((v37[3] & 0xCF) == 0xC9)
        {
          v24 = icu::CollationDataBuilder::copyContractionsFromBaseCE32(this, v39, v7, v37[3], v21, a5);
        }

        else
        {
          v5 = icu::CollationDataBuilder::copyFromBaseCE32(this, v7, v37[3], 1, a5);
          v24 = icu::CollationDataBuilder::addConditionalCE32(this, v39, v5, a5);
          *(v21 + 88) = v24;
        }

        if (*a5 > 0)
        {
          break;
        }

        v21 = icu::UVector::elementAt((this + 104), v24);
        if (!icu::UCharsTrie::Iterator::next(v25, &v32, a5))
        {
          goto LABEL_46;
        }
      }

      v20 = 1;
    }

    else
    {
LABEL_46:
      v5 = (v44[6] << 13) | 0xC7u;
      icu::UnicodeSet::add((this + 144), v7);
      v20 = 0;
    }

    icu::UCharsTrie::Iterator::~Iterator(&v32);
  }

  else
  {
    v20 = 1;
  }

  icu::UnicodeString::~UnicodeString(v19, v39);
  icu::UnicodeString::~UnicodeString(v26, (&v40 + 8));
  if (v20)
  {
    goto LABEL_2;
  }

LABEL_50:
  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t icu::CollationDataBuilder::encodeOneCEAsCE32(unint64_t this)
{
  if (this)
  {
    v1 = 0;
  }

  else
  {
    v1 = HIDWORD(this) == 0;
  }

  v2 = this | 0xC2;
  if (!v1)
  {
    v2 = 1;
  }

  if ((this & 0xFFFFFFFFFFLL) == 0x5000500)
  {
    v3 = HIDWORD(this) | 0xC1;
  }

  else
  {
    v3 = v2;
  }

  if ((this & 0xFFFF00FF00FFLL) != 0)
  {
    return v3;
  }

  else
  {
    return BYTE1(this) | WORD1(this) | HIDWORD(this);
  }
}

uint64_t icu::CollationDataBuilder::encodeOneCE(icu::CollationDataBuilder *this, icu::CollationDataBuilder *a2, UErrorCode *a3)
{
  result = icu::CollationDataBuilder::encodeOneCEAsCE32(a2);
  if (result == 1)
  {
    v7 = icu::CollationDataBuilder::addCE(this, a2, a3);
    if (*a3 <= 0)
    {
      if (v7 < 0x80000)
      {
        return (v7 << 13) | 0x1C6u;
      }

      else
      {
        result = 0;
        *a3 = U_BUFFER_OVERFLOW_ERROR;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t icu::CollationDataBuilder::encodeCEs(icu::CollationDataBuilder *this, unint64_t *a2, uint64_t a3, UErrorCode *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    v4 = 0;
LABEL_9:
    v10 = *MEMORY[0x1E69E9840];
    return v4;
  }

  v4 = a3;
  if (a3 >= 0x20)
  {
    v4 = 0;
    v6 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_8:
    *a4 = v6;
    goto LABEL_9;
  }

  v8 = *(this + 4);
  if (!v8 || utrie2_isFrozen(v8))
  {
    v4 = 0;
    v6 = U_INVALID_STATE_ERROR;
    goto LABEL_8;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    if (!*(this + 617))
    {
      v14 = *a2;
      if ((*a2 & 0xFFFFFFFFFF00FFLL) == 0x5000000)
      {
        if (HIDWORD(v14))
        {
          v15 = a2[1];
          if ((v15 & 0xFFFFFFFF00FFFFFFLL) == 0x500)
          {
            v4 = HIDWORD(v14) | (v14 << 8) | (v15 >> 16) | 0xC4;
            goto LABEL_9;
          }
        }
      }
    }

LABEL_21:
    v16 = 0;
    memset(v19, 0, 124);
    while (1)
    {
      v17 = icu::CollationDataBuilder::encodeOneCEAsCE32(a2[v16]);
      if (v17 == 1)
      {
        break;
      }

      *(v19 + v16++) = v17;
      if (v4 == v16)
      {
        v18 = icu::CollationDataBuilder::encodeExpansion32(this, v19, v4, a4);
        goto LABEL_26;
      }
    }

    v18 = icu::CollationDataBuilder::encodeExpansion(this, a2, v4, a4);
LABEL_26:
    v4 = v18;
    goto LABEL_9;
  }

  if (v4 != 1)
  {
    goto LABEL_21;
  }

  v12 = *a2;
  v13 = *MEMORY[0x1E69E9840];

  return icu::CollationDataBuilder::encodeOneCE(this, v12, a4);
}

uint64_t icu::CollationDataBuilder::encodeExpansion32(icu::CollationDataBuilder *this, const int *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v7 = a2;
  v9 = *(this + 12);
  if (v9 >= a3)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      if (v10 >= v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(*(this + 8) + 4 * v10);
      }

      if (*a2 == v12)
      {
        if (v10 >> 19)
        {
          goto LABEL_5;
        }

        v13 = a3 - 1;
        v14 = a2 + 1;
        v15 = v11;
        if (a3 == 1)
        {
LABEL_21:
          v17 = (a3 << 8) | (v10 << 13);
          return v17 | 0xC5u;
        }

        while (1)
        {
          v16 = v9 <= v15 ? 0 : *(*(this + 8) + 4 * v15);
          if (v16 != *v14)
          {
            break;
          }

          ++v15;
          ++v14;
          if (!--v13)
          {
            goto LABEL_21;
          }
        }
      }

      ++v10;
      ++v11;
    }

    while (v10 != v9 - a3 + 1);
  }

  if (v9 >= 0x80000)
  {
LABEL_5:
    result = 0;
    *a4 = U_BUFFER_OVERFLOW_ERROR;
    return result;
  }

  if (a3 >= 1)
  {
    v18 = a3;
    while (1)
    {
      v20 = *v7++;
      v19 = v20;
      v21 = *(this + 12);
      if (v21 >= -1 && *(this + 13) > v21)
      {
        goto LABEL_28;
      }

      if (icu::UVector32::expandCapacity((this + 40), v21 + 1, a4))
      {
        break;
      }

LABEL_29:
      if (!--v18)
      {
        goto LABEL_30;
      }
    }

    v21 = *(this + 12);
LABEL_28:
    *(*(this + 8) + 4 * v21) = v19;
    ++*(this + 12);
    goto LABEL_29;
  }

LABEL_30:
  v17 = (a3 << 8) | (v9 << 13);
  return v17 | 0xC5u;
}

uint64_t icu::CollationDataBuilder::encodeExpansion(icu::CollationDataBuilder *this, const uint64_t *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v7 = a2;
  v9 = *(this + 20);
  if (v9 >= a3)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      if (v10 >= v9)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(*(this + 12) + 8 * v10);
      }

      if (*a2 == v12)
      {
        if (v10 >> 19)
        {
          goto LABEL_5;
        }

        v13 = a3 - 1;
        v14 = a2 + 1;
        v15 = v11;
        if (a3 == 1)
        {
LABEL_21:
          v17 = (a3 << 8) | (v10 << 13);
          return v17 | 0xC6u;
        }

        while (1)
        {
          v16 = v9 <= v15 ? 0 : *(*(this + 12) + 8 * v15);
          if (v16 != *v14)
          {
            break;
          }

          ++v15;
          ++v14;
          if (!--v13)
          {
            goto LABEL_21;
          }
        }
      }

      ++v10;
      ++v11;
    }

    while (v10 != v9 - a3 + 1);
  }

  if (v9 >= 0x80000)
  {
LABEL_5:
    result = 0;
    *a4 = U_BUFFER_OVERFLOW_ERROR;
    return result;
  }

  if (a3 >= 1)
  {
    v18 = a3;
    while (1)
    {
      v20 = *v7++;
      v19 = v20;
      v21 = *(this + 20);
      v22 = v21 + 1;
      if (v21 >= -1 && *(this + 21) > v21)
      {
        goto LABEL_28;
      }

      if (icu::UVector64::expandCapacity((this + 72), v22, a4))
      {
        break;
      }

LABEL_29:
      if (!--v18)
      {
        goto LABEL_30;
      }
    }

    v21 = *(this + 20);
    v22 = v21 + 1;
LABEL_28:
    *(*(this + 12) + 8 * v21) = v19;
    *(this + 20) = v22;
    goto LABEL_29;
  }

LABEL_30:
  v17 = (a3 << 8) | (v9 << 13);
  return v17 | 0xC6u;
}

uint64_t icu::CollationDataBuilder::copyContractionsFromBaseCE32(icu::CollationDataBuilder *this, uint64_t a2, int a3, unsigned int a4, uint64_t a5, UErrorCode *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    goto LABEL_2;
  }

  v12 = (*(*(this + 2) + 24) + 2 * (a4 >> 13));
  if ((a4 & 0x100) != 0)
  {
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v13 = icu::CollationDataBuilder::copyFromBaseCE32(this, a3, v12[1] | (*v12 << 16), 1, a6);
    v14 = icu::CollationDataBuilder::addConditionalCE32(this, a2, v13, a6);
    *(a5 + 88) = v14;
    if (*a6 > 0)
    {
LABEL_2:
      v6 = 0;
      goto LABEL_29;
    }

    v6 = v14;
    a5 = icu::UVector::elementAt((this + 104), v14);
  }

  v15 = *(a2 + 8);
  v16 = v15;
  v17 = v15 >> 5;
  if (v16 >= 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(a2 + 12);
  }

  v34 = 0;
  v32 = 0u;
  *v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  v27 = (v12 + 2);
  icu::UCharsTrie::Iterator::Iterator(v28, &v27, 0, a6);
  v26 = v27;
  if (icu::UCharsTrie::Iterator::next(&v26, v28, a6))
  {
    while (1)
    {
      v19 = (v30 & 0x8000u) == 0 ? v30 >> 5 : DWORD1(v30);
      icu::UnicodeString::doAppend(a2, (&v29 + 8), 0, v19);
      v20 = icu::CollationDataBuilder::copyFromBaseCE32(this, a3, v33[3], 1, a6);
      v21 = icu::CollationDataBuilder::addConditionalCE32(this, a2, v20, a6);
      *(a5 + 88) = v21;
      if (*a6 > 0)
      {
        break;
      }

      v6 = v21;
      a5 = icu::UVector::elementAt((this + 104), v21);
      v22 = *(a2 + 8);
      if (v18 || (v22 & 1) == 0)
      {
        if (v22 >= 0)
        {
          v23 = v22 >> 5;
        }

        else
        {
          v23 = *(a2 + 12);
        }

        if (v23 > v18)
        {
          if (v18 > 1023)
          {
            v22 = (v22 | 0xFFE0);
            *(a2 + 8) = v22;
            *(a2 + 12) = v18;
          }

          else
          {
            v22 = (v22 & 0x1F | (32 * v18));
            *(a2 + 8) = v22;
          }
        }
      }

      else
      {
        icu::UnicodeString::unBogus(a2);
      }

      if (!icu::UCharsTrie::Iterator::next(v22, v28, a6))
      {
        goto LABEL_28;
      }
    }

    v6 = 0;
  }

LABEL_28:
  icu::UCharsTrie::Iterator::~Iterator(v28);
LABEL_29:
  v24 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t icu::CollationDataBuilder::copyFrom(uint64_t this, const icu::CollationDataBuilder *a2, const icu::CollationDataBuilder::CEModifier *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v27 = v4;
    v28 = v5;
    v7 = this;
    this = *(this + 32);
    if (this && (this = utrie2_isFrozen(this), !this))
    {
      v26 = 0u;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21 = 0u;
      v20 = 0u;
      v19 = 0u;
      v18 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      v10[0] = a2;
      v10[1] = v7;
      v10[2] = a3;
      SDWORD2(v26) = *a4;
      this = utrie2_enum(*(a2 + 4), 0, sub_1952D08FC, v10);
      *a4 = SDWORD2(v26);
      *(v7 + 616) |= *(a2 + 616);
    }

    else
    {
      *a4 = U_INVALID_STATE_ERROR;
    }
  }

  return this;
}

BOOL sub_1952D08FC(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  result = 1;
  if (a4 != -1 && a4 != 192)
  {
    return sub_1952D1AC4(a1, a2, a3, a4);
  }

  return result;
}

void icu::CollationDataBuilder::optimize(icu::CollationDataBuilder *this, const icu::UnicodeSet *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v14 = v3;
    v15 = v4;
    if (!icu::UnicodeSet::isEmpty(a2))
    {
      memset(v13, 0, sizeof(v13));
      icu::UnicodeSetIterator::UnicodeSetIterator(v13, a2);
      while (icu::UnicodeSetIterator::next(v13))
      {
        v8 = DWORD2(v13[0]);
        if ((DWORD2(v13[0]) & 0x80000000) != 0)
        {
          break;
        }

        if (utrie2_get32(*(this + 4), DWORD2(v13[0])) == 192)
        {
          v9 = *(this + 2);
          v10 = sub_1952C6CA0(v9, v8);
          FinalCE32 = icu::CollationData::getFinalCE32(v9, v10);
          v12 = icu::CollationDataBuilder::copyFromBaseCE32(this, v8, FinalCE32, 1, a3);
          utrie2_set32(*(this + 4), v8, v12, a3);
        }
      }

      *(this + 616) = 1;
      icu::UnicodeSetIterator::~UnicodeSetIterator(v13);
    }
  }
}

void icu::CollationDataBuilder::suppressContractions(uint64_t **this, const icu::UnicodeSet *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v16 = v3;
    v17 = v4;
    if (!icu::UnicodeSet::isEmpty(a2))
    {
      memset(v15, 0, sizeof(v15));
      icu::UnicodeSetIterator::UnicodeSetIterator(v15, a2);
      while (icu::UnicodeSetIterator::next(v15))
      {
        v8 = DWORD2(v15[0]);
        if ((DWORD2(v15[0]) & 0x80000000) != 0)
        {
          break;
        }

        v9 = utrie2_get32(this[4], DWORD2(v15[0]));
        if (v9 == 192)
        {
          v10 = this[2];
          v11 = sub_1952C6CA0(v10, v8);
          FinalCE32 = icu::CollationData::getFinalCE32(v10, v11);
          if ((FinalCE32 & 0xCE) == 0xC8)
          {
            v13 = icu::CollationDataBuilder::copyFromBaseCE32(this, v8, FinalCE32, 0, a3);
            utrie2_set32(this[4], v8, v13, a3);
          }
        }

        else if ((v9 & 0xCF) == 0xC7)
        {
          v14 = icu::UVector::elementAt((this + 13), v9 >> 13);
          utrie2_set32(this[4], v8, *(v14 + 72), a3);
          icu::UnicodeSet::remove((this + 18), v8);
        }
      }

      *(this + 616) = 1;
      icu::UnicodeSetIterator::~UnicodeSetIterator(v15);
    }
  }
}

BOOL icu::CollationDataBuilder::getJamoCE32s(icu::CollationDataBuilder *this, unsigned int *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(this + 2) == 0;
  v24 = this + 96;
  do
  {
    if (v6 >= 0x28)
    {
      LODWORD(v9) = 4480;
    }

    else
    {
      LODWORD(v9) = 4430;
    }

    if (v6 >= 0x13)
    {
      v9 = v9;
    }

    else
    {
      v9 = 4352;
    }

    v10 = (v6 + v9);
    v11 = utrie2_get32(*(this + 4), v6 + v9);
    v12 = v11;
    v13 = v11 != -1 && v11 != 192;
    if (v11 == 192)
    {
      v11 = sub_1952C6CA0(*(this + 2), v10);
    }

    if ((~v11 & 0xC0) != 0)
    {
      goto LABEL_29;
    }

    v14 = v11 & 0xF;
    if (v14 > 9)
    {
      if (v14 != 14)
      {
        if (v14 == 15)
        {
          v11 = 192;
          v7 = 1;
        }

        else if (v14 - 10 < 4)
        {
          goto LABEL_61;
        }

        goto LABEL_29;
      }

      v15 = v11 >> 13;
      if (v12 == 192)
      {
        v16 = (*(this + 2) + 16);
      }

      else
      {
        v16 = v24;
        if (*(this + 20) <= v15)
        {
          v17 = 0;
          goto LABEL_40;
        }
      }

      v17 = *(*v16 + 8 * v15);
LABEL_40:
      v11 = icu::Collation::getThreeBytePrimaryForOffsetData(v10, v17) | 0xC1;
      goto LABEL_29;
    }

    if ((v11 & 0xF) > 6)
    {
      if (v14 - 8 < 2)
      {
LABEL_26:
        if (v12 == 192)
        {
          v7 = 1;
        }

        v11 = v12;
        goto LABEL_29;
      }

      if (v14 == 7)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v14 - 5 < 2)
      {
        goto LABEL_26;
      }

      if ((v11 & 0xF) == 0 || v14 == 3)
      {
LABEL_61:
        result = 0;
        *a3 = U_INTERNAL_PROGRAM_ERROR;
        return result;
      }
    }

LABEL_29:
    v8 |= v13;
    a2[v6++] = v11;
  }

  while (v6 != 67);
  if (v8)
  {
    v18 = v7 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    for (i = 0; i != 67; ++i)
    {
      if (a2[i] == 192)
      {
        if (i >= 0x28)
        {
          v20 = 4480;
        }

        else
        {
          v20 = 4430;
        }

        if (i >= 0x13)
        {
          v21 = v20;
        }

        else
        {
          v21 = 4352;
        }

        v22 = sub_1952C6CA0(*(this + 2), i + v21);
        a2[i] = icu::CollationDataBuilder::copyFromBaseCE32(this, (i + v21), v22, 1, a3);
      }
    }
  }

  return v8 && *a3 < U_ILLEGAL_ARGUMENT_ERROR;
}

void *icu::CollationDataBuilder::setDigitTags(uint64_t **this, UErrorCode *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = L"[:Nd:]";
  icu::UnicodeString::UnicodeString(v18, 1, &v15);
  icu::UnicodeSet::UnicodeSet(v16, v18, a2);
  v5 = icu::UnicodeString::~UnicodeString(v4, v18);
  v6 = *a2;
  if (v6 > 0)
  {
    goto LABEL_12;
  }

  memset(v18, 0, sizeof(v18));
  v7 = icu::UnicodeSetIterator::UnicodeSetIterator(v5, v16);
  if (!icu::UnicodeSetIterator::next(v7))
  {
    goto LABEL_11;
  }

  while (1)
  {
    v8 = DWORD2(v18[0]);
    v9 = utrie2_get32(this[4], DWORD2(v18[0]));
    if (v9 == -1 || v9 == 192)
    {
      goto LABEL_8;
    }

    v10 = icu::CollationDataBuilder::addCE32(this, v9, a2);
    if (*a2 > 0)
    {
      goto LABEL_11;
    }

    v11 = v10;
    if (v10 >= 0x80000)
    {
      break;
    }

    v12 = u_charDigitValue(v8);
    utrie2_set32(this[4], v8, (v11 << 13) | (v12 << 8) | 0xCA, a2);
LABEL_8:
    if (!icu::UnicodeSetIterator::next(v18))
    {
      goto LABEL_11;
    }
  }

  *a2 = U_BUFFER_OVERFLOW_ERROR;
LABEL_11:
  icu::UnicodeSetIterator::~UnicodeSetIterator(v18);
LABEL_12:
  result = icu::UnicodeSet::~UnicodeSet(v6, v16);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::CollationDataBuilder::setLeadSurrogates(icu::CollationDataBuilder *this, UErrorCode *a2)
{
  v4 = 55296;
  v5 = 1024;
  do
  {
    v7 = -1;
    utrie2_enumForLeadSurrogate(*(this + 4), v4, 0, sub_1952D1008, &v7);
    result = utrie2_set32ForLeadSurrogateCodeUnit(*(this + 4), v4++, v7 | 0xCDu, a2);
    --v5;
  }

  while (v5);
  return result;
}

uint64_t sub_1952D1008(int *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == -1)
  {
    v4 = 0;
  }

  else
  {
    if (a4 != 192)
    {
      goto LABEL_8;
    }

    v4 = 256;
  }

  if (*a1 < 0)
  {
    v5 = 1;
    goto LABEL_10;
  }

  if (*a1 != v4)
  {
LABEL_8:
    v5 = 0;
    v4 = 512;
LABEL_10:
    *a1 = v4;
    return v5;
  }

  return 1;
}

uint64_t icu::CollationDataBuilder::build(icu::CollationDataBuilder *this, icu::CollationData *a2, UErrorCode *a3)
{
  icu::CollationDataBuilder::buildMappings(this, a2, a3);
  v6 = *(this + 2);
  if (v6)
  {
    *(a2 + 14) = *(v6 + 56);
    *(a2 + 9) = *(v6 + 72);
    *(a2 + 25) = *(v6 + 100);
    *(a2 + 104) = *(v6 + 104);
    *(a2 + 30) = *(v6 + 120);
  }

  return icu::CollationDataBuilder::buildFastLatinTable(this, a2, a3);
}

void icu::CollationDataBuilder::buildMappings(icu::CollationDataBuilder *this, icu::CollationData *a2, UErrorCode *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_5;
  }

  v5 = *(this + 4);
  if (!v5 || utrie2_isFrozen(v5))
  {
    *a3 = U_INVALID_STATE_ERROR;
    goto LABEL_5;
  }

  icu::CollationDataBuilder::buildContexts(this, a3);
  v40 = 0u;
  memset(v41, 0, 188);
  v38 = 0u;
  v39 = 0u;
  *v36 = 0u;
  v37 = 0u;
  if (!icu::CollationDataBuilder::getJamoCE32s(this, v36, a3))
  {
    v13 = 44032;
    do
    {
      v14 = sub_1952C6CA0(*(this + 2), v13);
      utrie2_setRange32(*(this + 4), v13, v13 + 587, v14, 1, a3);
      v15 = v13 >= 0xD558;
      v13 += 588;
    }

    while (!v15);
    v16 = -1;
    goto LABEL_33;
  }

  v8 = 0;
  v9 = *(this + 12);
  v10 = v9;
  while (1)
  {
    v11 = v36[v8];
    if (v10 < -1 || *(this + 13) <= v10)
    {
      if (!icu::UVector32::expandCapacity((this + 40), v10 + 1, a3))
      {
        goto LABEL_13;
      }

      v10 = *(this + 12);
    }

    *(*(this + 8) + 4 * v10) = v11;
    ++*(this + 12);
LABEL_13:
    if (v8 == 66)
    {
      break;
    }

    v10 = *(this + 12);
    ++v8;
  }

  if ((~HIDWORD(v40) & 0xC0) != 0)
  {
    v17 = v41;
    v18 = -19;
    do
    {
      v19 = v18;
      if (v18 == -66)
      {
        break;
      }

      v20 = *v17++;
      --v18;
    }

    while ((~v20 & 0xC0) != 0);
    v12 = -v19 > 0x41;
  }

  else
  {
    v12 = 0;
  }

  v21 = 0;
  v22 = 44032;
  do
  {
    if (v12)
    {
      if ((~v36[v21] & 0xC0) != 0)
      {
        v23 = 460;
      }

      else
      {
        v23 = 204;
      }
    }

    else
    {
      v23 = 204;
    }

    utrie2_setRange32(*(this + 4), v22, v22 + 587, v23, 1, a3);
    ++v21;
    v22 += 588;
  }

  while (v21 != 19);
  v16 = v9;
LABEL_33:
  icu::CollationDataBuilder::setDigitTags(this, a3);
  icu::CollationDataBuilder::setLeadSurrogates(this, a3);
  if (!*(this + 617))
  {
    v24 = utrie2_get32(*(this + 4), 0);
    icu::UVector32::setElementAt(this + 40, v24, 0);
    utrie2_set32(*(this + 4), 0, 203, a3);
  }

  utrie2_freeze(*(this + 4), 1u, a3);
  if (*a3 <= 0)
  {
    v25 = 0x10000;
    v26 = 55296;
    do
    {
      if (!icu::UnicodeSet::containsNone((this + 416), v25, v25 + 1023))
      {
        icu::UnicodeSet::add((this + 416), v26);
      }

      ++v26;
      v27 = v25 == 1113088;
      v25 += 1024;
    }

    while (!v27);
    icu::UnicodeSet::freeze((this + 416));
    v28 = *(this + 8);
    *a2 = *(this + 4);
    *(a2 + 1) = v28;
    *(a2 + 2) = *(this + 12);
    v29 = *(this + 176);
    if ((v29 & 0x11) != 0)
    {
      v30 = 0;
    }

    else if ((v29 & 2) != 0)
    {
      v30 = this + 354;
    }

    else
    {
      v30 = *(this + 46);
    }

    *(a2 + 3) = v30;
    v31 = *(this + 20);
    *(a2 + 15) = *(this + 12);
    *(a2 + 16) = v31;
    v32 = *(this + 176);
    if ((v32 & 0x8000) != 0)
    {
      v33 = *(this + 89);
    }

    else
    {
      v33 = v32 >> 5;
    }

    *(a2 + 17) = v33;
    v34 = *(this + 2);
    *(a2 + 4) = v34;
    if ((v16 & 0x80000000) != 0)
    {
      v35 = *(v34 + 40);
    }

    else
    {
      v35 = v28 + 4 * v16;
    }

    *(a2 + 5) = v35;
    *(a2 + 10) = this + 416;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t icu::CollationDataBuilder::buildFastLatinTable(uint64_t this, icu::CollationData *a2, UErrorCode *a3)
{
  if (*a3 <= 0 && *(this + 618))
  {
    v3 = *(this + 624);
    if (v3)
    {
      (*(*v3 + 8))(v3, a2);
    }

    operator new();
  }

  return this;
}

void icu::CollationDataBuilder::buildContexts(icu::CollationDataBuilder *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v12 = v2;
    v13 = v3;
    if (*(this + 176))
    {
      v6 = 2;
    }

    else
    {
      v6 = *(this + 176) & 0x1E;
    }

    *(this + 176) = v6;
    ++*(this + 102);
    memset(v11, 0, sizeof(v11));
    icu::UnicodeSetIterator::UnicodeSetIterator(v11, (this + 144));
    if (*a2 <= 0)
    {
      while (icu::UnicodeSetIterator::next(v11))
      {
        v7 = DWORD2(v11[0]);
        v8 = utrie2_get32(*(this + 4), DWORD2(v11[0]));
        if ((v8 & 0xCF) != 0xC7)
        {
          *a2 = U_INTERNAL_PROGRAM_ERROR;
          break;
        }

        v9 = icu::UVector::elementAt((this + 104), v8 >> 13);
        v10 = icu::CollationDataBuilder::buildContext(this, v9, a2);
        utrie2_set32(*(this + 4), v7, v10, a2);
        if (*a2 >= 1)
        {
          break;
        }
      }
    }

    icu::UnicodeSetIterator::~UnicodeSetIterator(v11);
  }
}

uint64_t icu::CollationDataBuilder::addContextTrie(icu::CollationDataBuilder *this, int a2, icu::UCharsTrieBuilder *a3, UErrorCode *a4)
{
  v6 = a2;
  v34 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v33 = 0;
  v32 = 0u;
  v29 = &unk_1F0935D00;
  LOWORD(v30) = 2;
  LOWORD(v24) = HIWORD(a2);
  v8 = icu::UnicodeString::doAppend(&v29, &v24, 0, 1);
  LOWORD(v24) = v6;
  icu::UnicodeString::doAppend(v8, &v24, 0, 1);
  v25 = 0u;
  v26 = 0u;
  v28 = 0;
  v27 = 0u;
  v24 = &unk_1F0935D00;
  LOWORD(v25) = 2;
  v9 = icu::UCharsTrieBuilder::buildUnicodeString(a3, 1, &v24, a4);
  v10 = *(v9 + 4);
  v11 = v10;
  v12 = v10 >> 5;
  if (v11 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(v9 + 3);
  }

  icu::UnicodeString::doAppend(&v29, v9, 0, v13);
  v14 = *a4;
  if (v14 > 0)
  {
    v15 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  if ((v30 & 0x8000u) == 0)
  {
    v16 = v30 >> 5;
  }

  else
  {
    v16 = DWORD1(v30);
  }

  v17 = *(this + 176);
  if (v17 < 0)
  {
    v18 = *(this + 89);
    if (v30)
    {
LABEL_19:
      if ((v17 & 0x8000) != 0)
      {
        v15 = *(this + 89);
      }

      else
      {
        v15 = v17 >> 5;
      }

      if ((v30 & 0x8000u) == 0)
      {
        v20 = v30 >> 5;
      }

      else
      {
        v20 = DWORD1(v30);
      }

      icu::UnicodeString::doAppend(this + 344, &v29, 0, v20);
      goto LABEL_26;
    }
  }

  else
  {
    v18 = *(this + 176) >> 5;
    if (v30)
    {
      goto LABEL_19;
    }
  }

  if (v16 < 1)
  {
    goto LABEL_19;
  }

  if ((v30 & 2) != 0)
  {
    v19 = &v30 + 2;
  }

  else
  {
    v19 = v31;
  }

  v15 = icu::UnicodeString::indexOf(this + 344, v19, 0, v16, 0, v18);
  if ((v15 & 0x80000000) != 0)
  {
    LOWORD(v17) = *(this + 176);
    goto LABEL_19;
  }

LABEL_26:
  icu::UnicodeString::~UnicodeString(v14, &v24);
  icu::UnicodeString::~UnicodeString(v21, &v29);
  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t icu::CollationDataBuilder::getCEs(icu::CollationDataBuilder *this, const icu::UnicodeString *a2, int a3, uint64_t *a4, uint64_t a5)
{
  v5 = *(this + 79);
  if (!v5)
  {
    operator new();
  }

  return sub_1952CDD80(v5, a2, a3, a4, a5);
}

uint64_t icu::CollationDataBuilder::getCEs(icu::CollationDataBuilder *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, uint64_t *a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 4);
  v9 = v8;
  v10 = v8 >> 5;
  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(a2 + 3);
  }

  if (v11)
  {
    icu::operator+(a2, a3, v17);
    CEs = icu::CollationDataBuilder::getCEs(this, v17, v11, a4, a5);
    icu::UnicodeString::~UnicodeString(v13, v17);
    v14 = *MEMORY[0x1E69E9840];
    return CEs;
  }

  else
  {
    v16 = *MEMORY[0x1E69E9840];

    return icu::CollationDataBuilder::getCEs(this, a3, 0, a4, a5);
  }
}

BOOL sub_1952D1AC4(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = sub_1952D1B5C(a1, a4);
  v8 = v7;
  utrie2_setRange32(*(*(a1 + 8) + 32), a2, a3, v7, 1, (a1 + 272));
  if ((v8 & 0xCF) == 0xC7)
  {
    icu::UnicodeSet::add((*(a1 + 8) + 144), a2, a3);
  }

  return *(a1 + 272) < 1;
}

uint64_t sub_1952D1B5C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v55 = *MEMORY[0x1E69E9840];
  if ((~a2 & 0xC0) != 0)
  {
    v21 = (*(**(a1 + 16) + 24))(*(a1 + 16), a2);
    if (v21 != 0x101000100)
    {
      v22 = v21;
      v23 = *(a1 + 8);
      v24 = *MEMORY[0x1E69E9840];

      return icu::CollationDataBuilder::encodeOneCE(v23, v22, (a1 + 272));
    }

LABEL_61:
    v51 = *MEMORY[0x1E69E9840];
    return v2;
  }

  v4 = a2 & 0xF;
  if (v4 == 7)
  {
    v36 = icu::UVector::elementAt((*a1 + 104), a2 >> 13);
    v37 = *(a1 + 8);
    v38 = sub_1952D1B5C(a1, v36[18]);
    v39 = icu::CollationDataBuilder::addConditionalCE32(v37, (v36 + 2), v38, (a1 + 272));
    v2 = (v39 << 13) | 0xC7;
    v40 = v36[22];
    if ((v40 & 0x80000000) != 0)
    {
      goto LABEL_61;
    }

    v41 = v39;
    while (1)
    {
      v42 = icu::UVector::elementAt((*a1 + 104), v40);
      v43 = icu::UVector::elementAt((*(a1 + 8) + 104), v41);
      v44 = *(a1 + 8);
      v45 = sub_1952D1B5C(a1, *(v42 + 72));
      v41 = icu::CollationDataBuilder::addConditionalCE32(v44, (v42 + 8), v45, (a1 + 272));
      v46 = *(v42 + 16);
      if ((v46 & 0x8000) != 0)
      {
        if (*(v42 + 20))
        {
LABEL_54:
          if ((v46 & 2) != 0)
          {
            v47 = (v42 + 18);
          }

          else
          {
            v47 = *(v42 + 32);
          }

          v48 = *v47 + 1;
          goto LABEL_60;
        }
      }

      else if (v46 >> 5)
      {
        goto LABEL_54;
      }

      v48 = 0x10000;
LABEL_60:
      v49 = *(a1 + 8);
      icu::UnicodeString::tempSubString((v42 + 8), v48, 0x7FFFFFFF, v54);
      icu::UnicodeSet::addAll((v49 + 416), v54);
      icu::UnicodeString::~UnicodeString(v50, v54);
      *(v43 + 88) = v41;
      v40 = *(v42 + 88);
      if ((v40 & 0x80000000) != 0)
      {
        goto LABEL_61;
      }
    }
  }

  if (v4 == 6)
  {
    v25 = (*(*a1 + 96) + 8 * (a2 >> 13));
    v26 = (a2 >> 8) & 0x1F;
    if (!v26)
    {
LABEL_47:
      v34 = *(a1 + 8);
      v35 = *MEMORY[0x1E69E9840];

      return icu::CollationDataBuilder::encodeExpansion(v34, v25, v26, (a1 + 272));
    }

    v27 = 0;
    v28 = 0;
    v29 = a1 + 24;
    while (1)
    {
      v30 = v25[v27];
      v31 = (*(**(a1 + 16) + 32))(*(a1 + 16), v30);
      if (v31 != 0x101000100)
      {
        break;
      }

      v31 = v30;
      if (v28)
      {
        goto LABEL_44;
      }

      v32 = 1;
LABEL_45:
      if (++v27 == v26)
      {
        if ((v32 & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_47;
      }
    }

    if (!v28 && v27)
    {
      for (i = 0; i != v27; ++i)
      {
        *(v29 + 8 * i) = v25[i];
      }
    }

LABEL_44:
    v32 = 0;
    *(v29 + 8 * v27) = v31;
    v28 = 1;
    goto LABEL_45;
  }

  if (v4 != 5)
  {
    goto LABEL_61;
  }

  v5 = (*(*a1 + 64) + 4 * (a2 >> 13));
  v6 = (a2 >> 8) & 0x1F;
  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = 0;
  v8 = 0;
  v9 = a1 + 24;
  do
  {
    v10 = v5[v7];
    if ((~v10 & 0xC0) != 0 && (v11 = (*(**(a1 + 16) + 24))(*(a1 + 16), v5[v7]), v11 != 0x101000100))
    {
      if (!v8 && v7)
      {
        for (j = 0; j != v7; ++j)
        {
          v14 = v5[j];
          v15 = v14;
          v16 = v14 & 0xFFFFFF00;
          if ((v14 & 0xF) == 1)
          {
            v16 = ((v14 & 0xFFFFFF00) << 32) | 0x5000500;
          }

          v17 = (v14 << 16) & 0xFF000000 | (((v14 & 0xFFFF0000) >> 16) << 48) | (v14 << 8);
          if (v15 > 0xBF)
          {
            v17 = v16;
          }

          *(v9 + 8 * j) = v17;
        }
      }
    }

    else
    {
      if (!v8)
      {
        v12 = 1;
        goto LABEL_26;
      }

      if (v10 > 0xBFu)
      {
        if ((v10 & 0xF) == 1)
        {
          v11 = ((v10 & 0xFFFFFF00) << 32) | 0x5000500;
        }

        else
        {
          v11 = v10 & 0xFFFFFF00;
        }
      }

      else
      {
        v11 = (v10 << 16) & 0xFF000000 | (((v10 & 0xFFFF0000) >> 16) << 48) | (v10 << 8);
      }
    }

    v12 = 0;
    *(v9 + 8 * v7) = v11;
    v8 = 1;
LABEL_26:
    ++v7;
  }

  while (v7 != v6);
  if (v12)
  {
LABEL_28:
    v18 = *(a1 + 8);
    v19 = *MEMORY[0x1E69E9840];

    return icu::CollationDataBuilder::encodeExpansion32(v18, v5, v6, (a1 + 272));
  }

LABEL_62:
  v52 = *(**(a1 + 8) + 32);
  v53 = *MEMORY[0x1E69E9840];

  return v52();
}

uint64_t *sub_1952D20B0(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    icu::UnicodeString::~UnicodeString((v2 + 8));
    MEMORY[0x19A8B2600](v2, 0x1092C40F9D2A717);
  }

  return a1;
}

uint64_t icu::CollationDataReader::read(uint64_t this, const icu::CollationTailoring *a2, const unsigned __int8 *a3, uint64_t a4, UErrorCode *a5, UErrorCode *a6)
{
  v92 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_32;
  }

  v8 = a3;
  v9 = a2;
  v10 = this;
  if (this)
  {
    if (!a2 || a3 <= 0x17)
    {
      goto LABEL_13;
    }

    if (*(a2 + 2) != 218)
    {
      goto LABEL_30;
    }

    if (*(a2 + 3) != 39)
    {
      goto LABEL_30;
    }

    this = icu::CollationDataReader::isAcceptable((a4 + 328), a2, a3, a2 + 2);
    if (!this)
    {
      goto LABEL_30;
    }

    UCAVersion = icu::CollationTailoring::getUCAVersion(v10);
    this = icu::CollationTailoring::getUCAVersion(a4);
    if (UCAVersion != this)
    {
      v13 = 28;
      goto LABEL_31;
    }

    v12 = *v9;
    v9 = (v9 + v12);
    if (v8 < 0)
    {
      v14 = 0;
      goto LABEL_15;
    }

    v8 -= v12;
  }

  else if (!a2)
  {
LABEL_13:
    v13 = 1;
LABEL_31:
    *a5 = v13;
    goto LABEL_32;
  }

  if (v8 <= 7)
  {
    goto LABEL_13;
  }

  v14 = v8 >= 0;
LABEL_15:
  v15 = *v9;
  if (*v9 < 2)
  {
    goto LABEL_30;
  }

  if (v8 < 4 * v15 && v14)
  {
    goto LABEL_30;
  }

  if (v15 >= 0x14)
  {
    v17 = (v9 + 76);
LABEL_24:
    v18 = *v17;
    goto LABEL_27;
  }

  if (v15 >= 6)
  {
    v17 = (v9 + 4 * (v15 - 1));
    goto LABEL_24;
  }

  v18 = 0;
LABEL_27:
  if (v8 >= v18)
  {
    v14 = 0;
  }

  if (v14)
  {
    goto LABEL_30;
  }

  if (v10)
  {
    v20 = *(v10 + 3);
  }

  else
  {
    v20 = 0;
  }

  if (v15 < 6)
  {
    v22 = 0;
    v21 = -1;
    goto LABEL_40;
  }

  v21 = *(v9 + 5);
  if (v15 == 6)
  {
    v22 = 0;
LABEL_40:
    v23 = -1;
    goto LABEL_43;
  }

  v23 = *(v9 + 6);
  v22 = 1;
LABEL_43:
  v24 = v23 - v21;
  if (v23 - v21 < 4)
  {
    LODWORD(v29) = 0;
    v30 = 0;
    LODWORD(v27) = 0;
    v26 = 0;
    if (v22)
    {
LABEL_50:
      v31 = *(v9 + 6);
      goto LABEL_55;
    }
  }

  else
  {
    if (!v20)
    {
      goto LABEL_30;
    }

    v25 = 0;
    v26 = v9 + v21;
    v27 = v24 >> 2;
    v28 = v9 + 4 * v27 + v21 - 4;
    while (*(v28 + 4 * v25) >= 0x10000u)
    {
      if (-v27 == --v25)
      {
        LODWORD(v29) = v24 >> 2;
        goto LABEL_53;
      }
    }

    if (v25)
    {
      v29 = -v25;
LABEL_53:
      LODWORD(v27) = v27 - v29;
      v30 = &v26[4 * v27];
      if (v22)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }

    LODWORD(v29) = 0;
    v30 = 0;
    if (v22)
    {
      goto LABEL_50;
    }
  }

LABEL_54:
  v31 = -1;
LABEL_55:
  if (v15 < 8)
  {
    v32 = -1;
  }

  else
  {
    v32 = *(v9 + 7);
  }

  if (v32 - v31 < 256)
  {
    v33 = 0;
  }

  else
  {
    if (!v27)
    {
      goto LABEL_30;
    }

    v33 = v9 + v31;
  }

  if (v20 && *(v20 + 56) != *(v9 + 7) << 24)
  {
    goto LABEL_30;
  }

  if (v15 < 8)
  {
    v34 = -1;
  }

  else
  {
    v34 = *(v9 + 7);
    if (v15 != 8)
    {
      v35 = *(v9 + 8);
      goto LABEL_69;
    }
  }

  v35 = -1;
LABEL_69:
  v36 = v35 - v34;
  if (v35 - v34 < 8)
  {
    if (!v20)
    {
      goto LABEL_30;
    }

    v39 = 0;
    *(a4 + 24) = v20;
  }

  else
  {
    v87 = v33;
    __s1 = v26;
    v37 = v20;
    v86 = v27;
    v38 = v29;
    this = icu::CollationTailoring::ensureOwnedData(a4, a5);
    if (!this)
    {
      goto LABEL_32;
    }

    v27 = *(a4 + 336);
    *(v27 + 32) = v37;
    *(v27 + 56) = *(v9 + 7) << 24;
    this = utrie2_openFromSerialized(1u, v9 + v34, v36, 0, a5);
    *(a4 + 368) = this;
    *v27 = this;
    if (*a5 >= 1)
    {
      goto LABEL_32;
    }

    v39 = v27;
    LODWORD(v29) = v38;
    LODWORD(v27) = v86;
    v33 = v87;
    v20 = v37;
    v26 = __s1;
  }

  if (v15 < 10)
  {
    v40 = -1;
  }

  else
  {
    v40 = *(v9 + 9);
    if (v15 != 10)
    {
      v41 = *(v9 + 10);
      goto LABEL_80;
    }
  }

  v41 = -1;
LABEL_80:
  v42 = v41 - v40;
  if (v42 >= 8)
  {
    if (!v39)
    {
      goto LABEL_30;
    }

    *(v39 + 16) = v9 + v40;
    *(v39 + 64) = v42 >> 3;
  }

  if (v15 < 12)
  {
    v44 = 0;
    v43 = -1;
    goto LABEL_87;
  }

  v43 = *(v9 + 11);
  if (v15 == 12)
  {
    v44 = 0;
LABEL_87:
    v45 = -1;
    goto LABEL_91;
  }

  v45 = *(v9 + 12);
  v44 = 1;
LABEL_91:
  v46 = v45 - v43;
  if (v46 >= 4)
  {
    if (!v39)
    {
      goto LABEL_30;
    }

    *(v39 + 8) = v9 + v43;
    *(v39 + 60) = v46 >> 2;
  }

  if (v15 <= 4 || (v47 = *(v9 + 4), (v47 & 0x80000000) != 0))
  {
    if (!v39)
    {
      goto LABEL_103;
    }

    if (!v20)
    {
      goto LABEL_30;
    }

    v49 = *(v20 + 40);
  }

  else
  {
    if (!v39)
    {
      goto LABEL_30;
    }

    v48 = *(v39 + 8);
    if (!v48)
    {
      goto LABEL_30;
    }

    v49 = v48 + 4 * v47;
  }

  *(v39 + 40) = v49;
LABEL_103:
  if (v44)
  {
    v50 = *(v9 + 12);
  }

  else
  {
    v50 = -1;
  }

  if (v15 < 14)
  {
    v51 = -1;
  }

  else
  {
    v51 = *(v9 + 13);
  }

  v52 = v51 - v50;
  if (v52 >= 4)
  {
    if (!v39)
    {
      goto LABEL_30;
    }

    if (v52 <= 0x13)
    {
      goto LABEL_30;
    }

    v53 = v9 + v50;
    *(v39 + 128) = v53;
    *(v39 + 136) = v52 >> 2;
    if (*(v53 + 3) != 83887360 || v53[19] <= 0x44u)
    {
      goto LABEL_30;
    }
  }

  if (v15 < 14)
  {
    v55 = 0;
    v54 = -1;
    goto LABEL_118;
  }

  v54 = *(v9 + 13);
  if (v15 == 14)
  {
    v55 = 0;
LABEL_118:
    v56 = -1;
    goto LABEL_120;
  }

  v56 = *(v9 + 14);
  v55 = 1;
LABEL_120:
  v57 = v56 - v54;
  if (v57 >= 2)
  {
    if (!v39)
    {
      goto LABEL_30;
    }

    *(v39 + 24) = v9 + v54;
    *(v39 + 68) = v57 >> 1;
  }

  if (v55)
  {
    v58 = *(v9 + 14);
  }

  else
  {
    v58 = -1;
  }

  if (v15 < 16)
  {
    v59 = -1;
  }

  else
  {
    v59 = *(v9 + 15);
  }

  v88 = v33;
  __s1a = v26;
  v85 = v29;
  if (v59 - v58 >= 2)
  {
    if (v39)
    {
      if (v20)
      {
        icu::UnicodeSet::cloneAsThawed(*(v20 + 80));
      }

      operator new();
    }

    goto LABEL_30;
  }

  if (!v39)
  {
    v60 = v20;
    v61 = 0;
    goto LABEL_149;
  }

  if (!v20)
  {
    goto LABEL_30;
  }

  v60 = v20;
  *(v39 + 80) = *(v20 + 80);
  *(v39 + 88) = 0;
  *(v39 + 96) = 0;
  if (*(v9 + 6) << 16 == 0x20000)
  {
    if (v15 < 16)
    {
      v62 = -1;
    }

    else
    {
      v62 = *(v9 + 15);
      if (v15 != 16)
      {
        v63 = *(v9 + 16);
        goto LABEL_144;
      }
    }

    v63 = -1;
LABEL_144:
    v64 = v63 - v62;
    if (v64 < 2)
    {
      *(v39 + 88) = *(v20 + 88);
      *(v39 + 96) = *(v20 + 96);
    }

    else
    {
      v65 = v9 + v62;
      *(v39 + 88) = v65;
      *(v39 + 96) = v64 >> 1;
      if (v65[1] << 8 != 512)
      {
        goto LABEL_30;
      }
    }
  }

  v61 = 1;
LABEL_149:
  if (v15 < 17)
  {
    v67 = 0;
    v66 = -1;
    goto LABEL_153;
  }

  v66 = *(v9 + 16);
  if (v15 == 17)
  {
    v67 = 0;
LABEL_153:
    v68 = -1;
    goto LABEL_155;
  }

  v68 = *(v9 + 17);
  v67 = 1;
LABEL_155:
  v69 = v68 - v66;
  if (v68 - v66 < 2)
  {
    v77 = v61 ^ 1;
    if (!v60)
    {
      v77 = 1;
    }

    if ((v77 & 1) == 0)
    {
      *(v39 + 100) = *(v60 + 100);
      *(v39 + 104) = *(v60 + 104);
      *(v39 + 120) = *(v60 + 120);
    }
  }

  else
  {
    if (!v39)
    {
      goto LABEL_30;
    }

    v70 = (v9 + v66);
    v71 = *v70;
    *(v39 + 100) = v71;
    v72 = (v69 >> 1) - v71;
    v73 = v72 - 17;
    *(v39 + 120) = v72 - 17;
    if ((v72 - 274) <= 0xFFFFFF01)
    {
      goto LABEL_30;
    }

    v74 = v70 + 1;
    *(v39 + 104) = v74;
    v75 = &v74[v71];
    v76 = v75[16];
    *(v39 + 112) = v75 + 16;
    if (v76 || v75[17] != 768 || v75[v73 + 15] != -256)
    {
      goto LABEL_30;
    }
  }

  if (v67)
  {
    v78 = *(v9 + 17);
  }

  else
  {
    v78 = -1;
  }

  if (v15 < 19)
  {
    v79 = -1;
  }

  else
  {
    v79 = *(v9 + 18);
  }

  if (v79 - v78 < 256)
  {
    if (!v39)
    {
      goto LABEL_179;
    }

    if (v60)
    {
      v80 = *(v60 + 72);
      goto LABEL_178;
    }

LABEL_30:
    v13 = 3;
    goto LABEL_31;
  }

  if (!v39)
  {
    goto LABEL_30;
  }

  v80 = v9 + v78;
LABEL_178:
  *(v39 + 72) = v80;
LABEL_179:
  v81 = *(a4 + 32);
  v82 = *(v9 + 1);
  bzero(&v91, 0x300uLL);
  this = icu::CollationFastLatin::getOptions(*(a4 + 24), v81, &v91, 0x180);
  if (v82 != *(v81 + 24) || !*(v81 + 28) || v27 != *(v81 + 72) || (v83 = this, v27) && (this = memcmp(__s1a, *(v81 + 64), 4 * v27), this) || v83 != *(v81 + 80) || (v83 & 0x80000000) == 0 && (this = memcmp(&v91, (v81 + 84), 0x300uLL), this))
  {
    this = sub_1952C9150((a4 + 32));
    if (!this)
    {
      v13 = 7;
      goto LABEL_31;
    }

    v84 = this;
    *(this + 24) = v82;
    this = icu::CollationData::getLastPrimaryForGroup(*(a4 + 24), (v82 >> 4) & 7 | 0x1000);
    *(v84 + 28) = this;
    if (!this)
    {
      goto LABEL_30;
    }

    if (v27)
    {
      icu::CollationSettings::aliasReordering(v84, v60, __s1a, v27, v30, v85, v88, a5);
    }

    this = icu::CollationFastLatin::getOptions(*(a4 + 24), v84, (v84 + 84), 0x180);
    *(v84 + 80) = this;
  }

LABEL_32:
  v19 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::CollationDataReader::isAcceptable(_DWORD *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  if (*a4 < 0x14u || *(a4 + 4) || *(a4 + 5) || *(a4 + 8) != 85 || *(a4 + 9) != 67 || *(a4 + 10) != 111 || *(a4 + 11) != 108 || *(a4 + 12) != 5)
  {
    return 0;
  }

  if (a1)
  {
    *a1 = *(a4 + 4);
  }

  return 1;
}

int *icu::RuleBasedCollator::cloneRuleData(icu::RuleBasedCollator *this, int *a2, UErrorCode *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v7 = malloc_type_malloc(0x4E20uLL, 0x100004077774924uLL);
    if (v7)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      *v17 = 0u;
      LODWORD(v15) = 20000;
      v8 = icu::CollationDataWriter::write(0, (*(this + 3) + 328), *(*(this + 3) + 24), *(this + 2), 0, 0, v17, v7, v15, a3, 0);
      *a2 = v8;
      v9 = *a3;
      if (*a3 != U_BUFFER_OVERFLOW_ERROR)
      {
LABEL_8:
        if (v9 >= U_ILLEGAL_ARGUMENT_ERROR)
        {
          v3 = 0;
        }

        else
        {
          v3 = v7;
        }

        if (v9 < U_ILLEGAL_ARGUMENT_ERROR)
        {
          v7 = 0;
        }

        goto LABEL_15;
      }

      if (v8 >= 1)
      {
        v10 = malloc_type_malloc(v8, 0x100004077774924uLL);
        if (v10)
        {
          v11 = v10;
          free(v7);
          *a3 = U_ZERO_ERROR;
          v12 = *a2;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          *v17 = 0u;
          LODWORD(v16) = v12;
          *a2 = icu::CollationDataWriter::write(0, (*(this + 3) + 328), *(*(this + 3) + 24), *(this + 2), 0, 0, v17, v11, v16, a3, 0);
          v9 = *a3;
          v7 = v11;
          goto LABEL_8;
        }
      }
    }

    v3 = 0;
    *a3 = U_MEMORY_ALLOCATION_ERROR;
LABEL_15:
    free(v7);
    goto LABEL_16;
  }

  v3 = 0;
LABEL_16:
  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t icu::RuleBasedCollator::cloneBinary(icu::RuleBasedCollator *this, unsigned __int8 *a2, int a3, UErrorCode *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *v7 = 0u;
  LODWORD(v6) = a3;
  result = icu::CollationDataWriter::write(0, (*(this + 3) + 328), *(*(this + 3) + 24), *(this + 2), 0, 0, v7, a2, v6, a4, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::CollationDataWriter::write(icu::CollationDataWriter *this, int *a2, unsigned __int8 *a3, const icu::CollationData *a4, const icu::CollationSettings *a5, const void *a6, int *a7, int *a8, unsigned __int8 *a9, UErrorCode *a10, UErrorCode *a11)
{
  v100 = *MEMORY[0x1E69E9840];
  if (*a10 <= 0)
  {
    if ((a9 & 0x80000000) != 0 || (v14 = a6, v18 = this, !a8) && a9)
    {
      v11 = 0;
      *a10 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_114;
    }

    v89 = a9;
    v93 = 0;
    memset(v92, 0, sizeof(v92));
    icu::UnicodeSet::UnicodeSet(v92);
    v19 = *(a3 + 4);
    v20 = *(a3 + 11) != 0;
    __dst = a8;
    v81 = v19;
    if (v18)
    {
      icu::UnicodeSet::operator=(v92, *(a3 + 10));
      v88 = 0;
      v85 = *(a3 + 24);
      v86 = 20;
    }

    else if (v19)
    {
      v82 = *(a3 + 11) != 0;
      if (*(a3 + 17))
      {
        v21 = 15;
      }

      else
      {
        v21 = 13;
      }

      v22 = icu::UnicodeSet::addAll(v92, *(a3 + 10));
      icu::UnicodeSet::removeAll(v22, *(v19 + 80));
      if (icu::UnicodeSet::isEmpty(v92))
      {
        v23 = v21;
      }

      else
      {
        v23 = 16;
      }

      if (*(a3 + 11) == *(v19 + 88))
      {
        v85 = 0;
        v86 = v23;
        v88 = 0;
      }

      else
      {
        v88 = 0;
        v85 = *(a3 + 24);
        v86 = 17;
      }

      v20 = v82;
    }

    else
    {
      if (*(a4 + 18))
      {
        v24 = 8;
      }

      else
      {
        v24 = 2;
      }

      v85 = 0;
      v86 = v24;
      v88 = 1;
    }

    v90 = 0u;
    v91 = 0u;
    icu::UVector32::UVector32(&v90, a10);
    v26 = *(a4 + 8);
    v27 = *(a4 + 18);
    v28 = *(a4 + 4);
    if (v28 && icu::CollationSettings::reorderTableHasSplitBytes(v28, v25))
    {
      v83 = v20;
      icu::CollationData::makeReorderRanges(a3, v26, v27, &v90, a10);
      if (v27 >= 1)
      {
        for (i = 0; i != v27; ++i)
        {
          icu::UVector32::insertElementAt(&v90, v26[i], i, a10);
        }
      }

      v30 = v88;
      v31 = v86;
      if (*a10 >= 1)
      {
        v11 = 0;
LABEL_113:
        icu::UVector32::~UVector32(&v90);
        icu::UnicodeSet::~UnicodeSet(v77, v92);
        goto LABEL_114;
      }

      v26 = *(&v91 + 1);
      LODWORD(v27) = DWORD2(v90);
      v20 = v83;
    }

    else
    {
      v30 = v88;
      v31 = v86;
    }

    v32 = v20 << 17;
    if (v18)
    {
      v84 = 0;
    }

    else
    {
      if (*(a3 + 16))
      {
        v33 = v30;
      }

      else
      {
        v33 = 1;
      }

      if (((v27 + v31) & 1) == 0)
      {
        v33 = 1;
      }

      if (v33)
      {
        v34 = 24;
      }

      else
      {
        v34 = 28;
      }

      v84 = v34;
      if (a9 >= v34)
      {
        v89 = a9 - v34;
        v35 = *a2;
        *__dst = v34;
        *(__dst + 1) = 10202;
        *(__dst + 1) = xmmword_1954881A0;
        __dst[5] = v35;
        bzero(__dst + 6, (v34 - 24));
        v31 = v86;
        v30 = v88;
        __dst = (__dst + v84);
      }

      else
      {
        v89 = 0;
        __dst = 0;
      }
    }

    *a7 = v31;
    v36 = *(a3 + 14) | v32 | *(a4 + 6);
    *(a7 + 1) = 0;
    a7[1] = v36;
    v37 = (4 * v31);
    if ((v30 & 1) != 0 || (v39 = *(a3 + 5), !v18) && v39 == *(v81 + 40))
    {
      LODWORD(v38) = -1;
    }

    else
    {
      v38 = (v39 - *(a3 + 1)) >> 2;
    }

    a7[4] = v38;
    a7[5] = v37;
    v40 = 4 * (v27 + v31);
    a7[6] = v40;
    if (*(a4 + 4))
    {
      v41 = v40 + 256;
    }

    else
    {
      v41 = 4 * (v27 + v31);
    }

    a7[7] = v41;
    if (v30)
    {
      a7[8] = v41;
      a7[9] = v41;
    }

    else
    {
      v95[0] = U_ZERO_ERROR;
      v42 = v89 - v41;
      if (v89 <= v41)
      {
        v43 = 0;
        v42 = 0;
      }

      else
      {
        v43 = __dst + v41;
      }

      v44 = utrie2_serialize(*a3, v43, v42, v95);
      v45 = v95[0];
      if (v95[0] >= U_ILLEGAL_ARGUMENT_ERROR && v95[0] != U_BUFFER_OVERFLOW_ERROR)
      {
        goto LABEL_78;
      }

      a7[8] = v44 + v41;
      a7[9] = v44 + v41;
      v46 = *(a3 + 16);
      if (v46)
      {
        v41 += v44 + 8 * v46;
      }

      else
      {
        v41 += v44;
      }

      v30 = v88;
    }

    a7[10] = v41;
    a7[11] = v41;
    v47 = 4 * *(a3 + 15);
    if (v30)
    {
      v47 = 0;
    }

    v48 = v47 + v41;
    v49 = v47 + v41 + 4 * v14;
    a7[12] = v48;
    a7[13] = v49;
    v50 = 2 * *(a3 + 17) + v49;
    if (v30)
    {
      v51 = v49;
    }

    else
    {
      v51 = 2 * *(a3 + 17) + v49;
    }

    a7[14] = v51;
    if (v30)
    {
      goto LABEL_80;
    }

    if (icu::UnicodeSet::isEmpty(v92))
    {
      v49 = v50;
LABEL_80:
      a7[15] = v49;
      v55 = v49 + 2 * v85;
      v96 = 0u;
      v99 = 0;
      v98 = 0u;
      v97 = 0u;
      *v95 = &unk_1F0935D00;
      LOWORD(v96) = 2;
      a7[16] = v55;
      if (v18)
      {
        v94 = *(a3 + 25);
        icu::UnicodeString::doAppend(v95, &v94, 0, 1);
        icu::UnicodeString::doAppend(v95, *(a3 + 13), 0, (*(a3 + 25) + 16));
        icu::UnicodeString::doAppend(v95, *(a3 + 14), 0, *(a3 + 30));
        v56 = v96 >> 5;
        if ((v96 & 0x8000u) != 0)
        {
          v56 = DWORD1(v96);
        }

        v55 += 2 * v56;
      }

      if (v18)
      {
        v57 = v55 + 256;
      }

      else
      {
        v57 = v55;
      }

      a7[17] = v55;
      a7[18] = v57;
      a7[19] = v57;
      if (v57 <= v89)
      {
        memcpy(__dst, a7, v37);
        v58 = a7[6];
        v59 = a7[5];
        if (v58 > v59)
        {
          memcpy(__dst + v59, v26, v58 - v59);
          v58 = a7[6];
        }

        v60 = a7[7];
        v61 = __OFSUB__(v60, v58);
        v62 = v60 - v58;
        if (!((v62 < 0) ^ v61 | (v62 == 0)))
        {
          memcpy(__dst + v58, *(a4 + 4), v62);
        }

        v63 = a7[10];
        v64 = a7[9];
        if (v63 > v64)
        {
          memcpy(__dst + v64, *(a3 + 2), v63 - v64);
        }

        v65 = a7[12];
        v66 = a7[11];
        if (v65 > v66)
        {
          memcpy(__dst + v66, *(a3 + 1), v65 - v66);
          v65 = a7[12];
        }

        v67 = a7[13];
        if (v67 > v65)
        {
          memcpy(__dst + v65, a5, v67 - v65);
          v67 = a7[13];
        }

        v68 = a7[14];
        v61 = __OFSUB__(v68, v67);
        v69 = v68 - v67;
        if (!((v69 < 0) ^ v61 | (v69 == 0)))
        {
          memcpy(__dst + v67, *(a3 + 3), v69);
        }

        v70 = a7[16];
        v71 = a7[15];
        if (v70 > v71)
        {
          memcpy(__dst + v71, *(a3 + 11), v70 - v71);
        }

        if ((v96 & 0x11) != 0)
        {
          v72 = 0;
        }

        else if ((v96 & 2) != 0)
        {
          v72 = &v96 + 2;
        }

        else
        {
          v72 = v97;
        }

        v73 = a7[17];
        v74 = a7[16];
        if (v73 > v74)
        {
          memcpy(__dst + v74, v72, v73 - v74);
          v73 = a7[17];
        }

        v75 = a7[18];
        v61 = __OFSUB__(v75, v73);
        v76 = v75 - v73;
        if (!((v76 < 0) ^ v61 | (v76 == 0)))
        {
          memcpy(__dst + v73, *(a3 + 9), v76);
        }
      }

      else
      {
        *a10 = U_BUFFER_OVERFLOW_ERROR;
      }

      v11 = v57 + v84;
      icu::UnicodeString::~UnicodeString(v84, v95);
      goto LABEL_113;
    }

    v95[0] = U_ZERO_ERROR;
    if (v89 <= v50)
    {
      v53 = 0;
      v52 = 0;
    }

    else
    {
      v52 = (v89 - v50) / 2;
      v53 = (__dst + v50);
    }

    v54 = icu::UnicodeSet::serialize(v92, v53, v52, v95);
    v45 = v95[0];
    if (v95[0] < U_ILLEGAL_ARGUMENT_ERROR || v95[0] == U_BUFFER_OVERFLOW_ERROR)
    {
      v49 = v50 + 2 * v54;
      goto LABEL_80;
    }

LABEL_78:
    v11 = 0;
    *a10 = v45;
    goto LABEL_113;
  }

  v11 = 0;
LABEL_114:
  v78 = *MEMORY[0x1E69E9840];
  return v11;
}