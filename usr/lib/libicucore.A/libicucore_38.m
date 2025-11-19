uint64_t icu::RegexPattern::compile(icu::RegexPattern *this, const icu::UnicodeString *a2, unsigned int a3, UParseError *a4, UErrorCode *a5)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a4->line <= 0)
  {
    if ((a2 & 0xFFFFFC40) != 0)
    {
      v5 = 66315;
    }

    else
    {
      if ((a2 & 0x80) == 0)
      {
        operator new();
      }

      v5 = 66309;
    }

    a4->line = v5;
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t icu::RegexPattern::compile(icu::RegexPattern *this, UText *a2, unsigned int a3, UParseError *a4, UErrorCode *a5)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a4->line <= 0)
  {
    if ((a2 & 0xFFFFFC40) != 0)
    {
      v5 = 66315;
    }

    else
    {
      if ((a2 & 0x80) == 0)
      {
        operator new();
      }

      v5 = 66309;
    }

    a4->line = v5;
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t icu::RegexPattern::compile(icu::RegexPattern *this, const icu::UnicodeString *a2, UParseError *a3, UErrorCode *a4, UErrorCode *a5)
{
  return icu::RegexPattern::compile(this, 0, a2, a3, a5);
}

{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  return icu::RegexPattern::compile(this, a2, v6, a3, a5);
}

uint64_t icu::RegexPattern::compile(icu::RegexPattern *this, UText *a2, UParseError *a3, UErrorCode *a4, UErrorCode *a5)
{
  return icu::RegexPattern::compile(this, 0, a2, a3, a5);
}

{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  return icu::RegexPattern::compile(this, a2, v6, a3, a5);
}

UErrorCode *icu::RegexPattern::matcher(icu::RegexPattern *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v5 = icu::RegexPattern::matcher(this, a3);
  v6 = v5;
  if (v5)
  {
    v5[79] = *a3;
    icu::RegexMatcher::reset(v5, a2);
  }

  return v6;
}

uint64_t icu::RegexPattern::matcher(icu::RegexPattern *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(this + 30);
  if (v3 < U_ILLEGAL_ARGUMENT_ERROR)
  {
    operator new();
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t icu::RegexPattern::matches(icu::RegexPattern *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, UParseError *a4, UErrorCode *a5)
{
  if (a4->line > 0)
  {
    return 0;
  }

  v8 = icu::RegexPattern::compile(this, 0, a3, a4, a5);
  v9 = icu::RegexPattern::matcher(v8, a2, a4);
  v5 = icu::RegexMatcher::matches(v9, a4);
  if (v9)
  {
    icu::RegexMatcher::~RegexMatcher(v9);
    MEMORY[0x19A8B2600]();
  }

  if (v8)
  {
    icu::RegexPattern::zap(v8);
    icu::UnicodeString::~UnicodeString(v10, (v8 + 40));
    icu::UObject::~UObject(v8);
    MEMORY[0x19A8B2600]();
  }

  return v5;
}

uint64_t icu::RegexPattern::matches(icu::RegexPattern *this, UText *a2, UText *a3, UParseError *a4, UErrorCode *a5)
{
  if (a4->line > 0)
  {
    return 0;
  }

  v8 = icu::RegexPattern::compile(this, 0, a3, a4, a5);
  v9 = icu::RegexPattern::matcher(v8, a4);
  v10 = v9;
  v5 = 0;
  if (a4->line <= 0)
  {
    icu::RegexMatcher::reset(v9, a2);
    v5 = icu::RegexMatcher::matches(v10, a4);
  }

  if (v10)
  {
    icu::RegexMatcher::~RegexMatcher(v10);
    MEMORY[0x19A8B2600]();
  }

  if (v8)
  {
    icu::RegexPattern::zap(v8);
    icu::UnicodeString::~UnicodeString(v11, (v8 + 40));
    icu::UObject::~UObject(v8);
    MEMORY[0x19A8B2600]();
  }

  return v5;
}

UText *icu::RegexPattern::pattern@<X0>(icu::RegexPattern *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 2);
  if (v3)
  {

    return icu::UnicodeString::UnicodeString(a2, v3);
  }

  else
  {
    result = *(this + 1);
    if (result)
    {
      status = U_ZERO_ERROR;
      v6 = utext_nativeLength(result);
      v7 = utext_extract(*(this + 1), 0, v6, 0, 0, &status);
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0;
      *a2 = &unk_1F0935D00;
      *(a2 + 8) = 2;
      status = U_ZERO_ERROR;
      Buffer = icu::UnicodeString::getBuffer(a2, v7);
      utext_extract(*(this + 1), 0, v6, Buffer, v7, &status);
      return icu::UnicodeString::releaseBuffer(a2, v7);
    }

    else
    {
      *a2 = &unk_1F0935D00;
      *(a2 + 8) = 2;
    }
  }

  return result;
}

uint64_t icu::RegexPattern::patternText(icu::RegexPattern *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  *a2 = U_ZERO_ERROR;
  result = *(this + 1);
  if (!result)
  {
    sub_1953AD024(a2);
    return *(qword_1ED443488 + 3832);
  }

  return result;
}

uint64_t icu::RegexPattern::groupNumberFromName(icu::RegexPattern *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v5 = *(this + 24);
  if (!v5 || (result = uhash_geti(v5, a2), !result))
  {
    result = 0;
    *a3 = U_REGEX_INVALID_CAPTURE_GROUP_NAME;
  }

  return result;
}

uint64_t icu::RegexPattern::groupNumberFromName(icu::RegexPattern *this, const char *a2, uint64_t a3, UErrorCode *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    memset(v11, 0, sizeof(v11));
    icu::UnicodeString::UnicodeString(v11, a2, a3, 0);
    v4 = 0;
    v7 = *a4;
    if (v7 <= 0)
    {
      v8 = *(this + 24);
      if (!v8 || (v4 = uhash_geti(v8, v11), !v4))
      {
        v4 = 0;
        v7 = 66325;
        *a4 = U_REGEX_INVALID_CAPTURE_GROUP_NAME;
      }
    }

    icu::UnicodeString::~UnicodeString(v7, v11);
  }

  else
  {
    v4 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t icu::RegexPattern::split(icu::RegexPattern *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, int a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  icu::RegexMatcher::RegexMatcher(v11, this);
  if (*(&v12 + 1) <= 0)
  {
    v5 = icu::RegexMatcher::split(v11, a2, a3, a4, a5);
  }

  else
  {
    v5 = 0;
  }

  icu::RegexMatcher::~RegexMatcher(v11);
  return v5;
}

uint64_t icu::RegexPattern::split(icu::RegexPattern *this, UText *a2, UText **a3, int a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  icu::RegexMatcher::RegexMatcher(v11, this);
  if (*(&v12 + 1) <= 0)
  {
    v5 = icu::RegexMatcher::split(v11, a2, a3, a4, a5);
  }

  else
  {
    v5 = 0;
  }

  icu::RegexMatcher::~RegexMatcher(v11);
  return v5;
}

void sub_1953C0F14(icu::ByteSink *a1)
{
  icu::ByteSink::~ByteSink(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_1953C0F4C(void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  result = (*(*a1 + 48))(a1, a3, a4);
  if (result)
  {
    v9 = (a1[1] + v4);

    return memcpy(v9, a2, v5);
  }

  return result;
}

BOOL sub_1953C0FE0(uint64_t a1, int a2, int a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = 2 * *(a1 + 16);
  if (v4 <= a3 + 2 * a2)
  {
    v4 = a3 + 2 * a2;
  }

  if (v4 <= 200)
  {
    v5 = 200;
  }

  else
  {
    v5 = v4;
  }

  v6 = icu::CollationKey::reallocate(*(a1 + 32), v5, a3);
  result = v6 != 0;
  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  return result;
}

uint64_t icu::RuleBasedCollator::RuleBasedCollator(uint64_t a1, uint64_t a2)
{
  v4 = icu::Collator::Collator(a1, a2);
  *v4 = &unk_1F0942170;
  *(v4 + 1) = *(a2 + 8);
  *(v4 + 3) = *(a2 + 24);
  icu::Locale::Locale((v4 + 5), a2 + 40);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  icu::SharedObject::addRef(*(a1 + 16));
  icu::SharedObject::addRef(*(a1 + 32));
  return a1;
}

{
  v4 = icu::Collator::Collator(a1);
  *v4 = &unk_1F0942170;
  v5 = *(a2 + 248);
  *(v4 + 1) = *(v5 + 24);
  v4[3] = v5;
  v4[4] = a2;
  icu::Locale::Locale((v4 + 5), a2 + 24);
  *(a1 + 264) = 0;
  *(a1 + 268) = 0;
  icu::SharedObject::addRef(*(a1 + 16));
  icu::SharedObject::addRef(*(a1 + 32));
  return a1;
}

icu::RuleBasedCollator *icu::RuleBasedCollator::RuleBasedCollator(icu::RuleBasedCollator *this, const unsigned __int8 *a2, int a3, const icu::RuleBasedCollator *a4, UErrorCode *a5)
{
  v10 = icu::Collator::Collator(this);
  *v10 = &unk_1F0942170;
  *(v10 + 1) = 0u;
  *(v10 + 3) = 0u;
  icu::Locale::Locale(v11, (v10 + 5), "", 0, 0, 0);
  *(this + 66) = 0;
  *(this + 268) = 0;
  if (*a5 <= 0)
  {
    if (!a2 || !a3 || !a4)
    {
      v14 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_9:
      *a5 = v14;
      return this;
    }

    Root = icu::CollationRoot::getRoot(a5, v12);
    if (*a5 <= 0)
    {
      if (*(a4 + 3) == Root)
      {
        operator new();
      }

      v14 = U_UNSUPPORTED_ERROR;
      goto LABEL_9;
    }
  }

  return this;
}

uint64_t icu::RuleBasedCollator::adoptTailoring(icu::RuleBasedCollator *this, icu::CollationTailoring *a2, UErrorCode *a3)
{
  if (*a3 < 1)
  {
    operator new();
  }

  return icu::SharedObject::deleteIfZeroRefCount(a2);
}

void icu::RuleBasedCollator::~RuleBasedCollator(icu::RuleBasedCollator *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    icu::SharedObject::removeRef(v2);
    *(this + 2) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {
    icu::SharedObject::removeRef(v3);
    *(this + 4) = 0;
  }

  icu::Locale::~Locale((this + 40));

  icu::Collator::~Collator(this);
}

{
  icu::RuleBasedCollator::~RuleBasedCollator(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::RuleBasedCollator::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1952769E4(*(a2 + 16), (a1 + 16));
    v4 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    sub_1952769E4(v4, (a1 + 32));
    *(a1 + 8) = *(*(a1 + 24) + 24);
    icu::Locale::operator=((a1 + 40), a2 + 40);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 268) = *(a2 + 268);
  }

  return a1;
}

uint64_t icu::RuleBasedCollator::operator==(icu::RuleBasedCollator *a1, icu::RuleBasedCollator *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!icu::Collator::operator==(a1, a2) || !icu::CollationSettings::operator==(*(a1 + 2), *(a2 + 2)))
  {
    return 0;
  }

  v4 = *(a1 + 1);
  v5 = *(a2 + 1);
  if (v4 == v5)
  {
    return 1;
  }

  v6 = *(v4 + 32);
  v7 = *(v5 + 32);
  if ((v6 == 0) != (v7 == 0))
  {
    return 0;
  }

  if (!v6 || *(*(a1 + 3) + 48) >= 0x20u)
  {
    v9 = *(a2 + 3);
    if ((!v7 || *(v9 + 48) >= 0x20u) && sub_195213DE4(*(a1 + 3) + 40, v9 + 40))
    {
      return 1;
    }
  }

  v15 = U_ZERO_ERROR;
  TailoredSet = icu::RuleBasedCollator::getTailoredSet(a1, &v15);
  v14 = TailoredSet;
  v12 = icu::RuleBasedCollator::getTailoredSet(a2, &v15);
  v8 = 0;
  v13 = v12;
  if (v15 <= U_ZERO_ERROR)
  {
    v8 = icu::UnicodeSet::operator==(TailoredSet, v12);
  }

  sub_1951D18E4(&v13);
  sub_1951D18E4(&v14);
  return v8;
}

uint64_t icu::RuleBasedCollator::getTailoredSet(icu::RuleBasedCollator *this, UErrorCode *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t icu::RuleBasedCollator::hashCode(icu::RuleBasedCollator *this)
{
  v2 = icu::CollationSettings::hashCode(*(this + 2));
  if (*(*(this + 1) + 32))
  {
    v8 = U_ZERO_ERROR;
    TailoredSet = icu::RuleBasedCollator::getTailoredSet(this, &v8);
    v4 = 0;
    v7 = TailoredSet;
    if (v8 <= U_ZERO_ERROR)
    {
      memset(v6, 0, sizeof(v6));
      icu::UnicodeSetIterator::UnicodeSetIterator(v6, TailoredSet);
      while (icu::UnicodeSetIterator::next(v6) && (DWORD2(v6[0]) & 0x80000000) == 0)
      {
        v2 = sub_1952C6CA0(*(this + 1), DWORD2(v6[0])) ^ v2;
      }

      icu::UnicodeSetIterator::~UnicodeSetIterator(v6);
      v4 = v2;
    }

    sub_1951D18E4(&v7);
    return v4;
  }

  return v2;
}

icu::Locale *icu::RuleBasedCollator::setLocales(icu::RuleBasedCollator *this, const icu::Locale *a2, const icu::Locale *a3, const icu::Locale *a4)
{
  *(this + 268) = !icu::Locale::operator==(a4, *(this + 3) + 104);

  return icu::Locale::operator=((this + 40), a3);
}

icu::Locale *icu::RuleBasedCollator::getLocale@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, icu::Locale *a4@<X8>)
{
  if (*a3 >= 1)
  {
    goto LABEL_2;
  }

  if ((a2 - 1) < 2)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    *a3 = 1;
LABEL_2:
    Root = icu::Locale::getRoot(a1);
    goto LABEL_7;
  }

  if (*(a1 + 268))
  {
LABEL_6:
    Root = a1 + 40;
  }

  else
  {
    Root = *(a1 + 24) + 104;
  }

LABEL_7:

  return icu::Locale::Locale(a4, Root);
}

const char *icu::RuleBasedCollator::internalGetLocaleID(uint64_t a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if ((a2 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (a2)
  {
    result = 0;
    *a3 = 1;
    return result;
  }

  if (*(a1 + 268))
  {
LABEL_5:
    v3 = a1 + 40;
  }

  else
  {
    v3 = *(a1 + 24) + 104;
  }

  if (*(v3 + 216))
  {
    return 0;
  }

  v5 = *(v3 + 40);
  if (*v5)
  {
    return v5;
  }

  else
  {
    return "root";
  }
}

icu::UnicodeString *icu::RuleBasedCollator::getRules(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a3 + 8))
    {
      v5 = 2;
    }

    else
    {
      v5 = *(a3 + 8) & 0x1E;
    }

    *(a3 + 8) = v5;
    sub_195401608(a3);
    v6 = *(a1 + 24);
    v7 = *(v6 + 48);
    v8 = v7;
    v9 = v7 >> 5;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(v6 + 52);
    }

    v11 = icu::UnicodeString::doAppend(a3, (v6 + 40), 0, v10);

    return icu::UnicodeString::getTerminatedBuffer(v11);
  }

  else
  {
    v13 = (*(a1 + 24) + 40);

    return icu::UnicodeString::operator=(a3, v13);
  }
}

uint64_t icu::RuleBasedCollator::getVersion(uint64_t this, unsigned __int8 *a2)
{
  v2 = *(*(this + 24) + 328);
  *a2 = v2;
  if ((v2 & 0xFF00) == 0x7800 && BYTE2(v2) <= 0x3Fu)
  {
    a2[2] = BYTE2(v2) | 0x40;
  }

  *a2 = v2 - 112;
  return this;
}

void *icu::RuleBasedCollator::internalGetContractionsAndExpansions(void *this, icu::UnicodeSet *a2, icu::UnicodeSet *a3, char a4, UErrorCode *a5)
{
  v17[41] = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v9 = this;
    if (a2)
    {
      icu::UnicodeSet::clear(a2);
    }

    if (a3)
    {
      icu::UnicodeSet::clear(a3);
    }

    sub_1952C6ED4(v14, a2, a3, 0, a4);
    sub_1952DF260(v14, *(v9 + 8), a5);
    icu::UnicodeString::~UnicodeString(v10, v17);
    icu::UnicodeSet::~UnicodeSet(v11, &v16);
    this = icu::UnicodeSet::~UnicodeSet(v12, &v15);
  }

  v13 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::RuleBasedCollator::internalAddContractions(uint64_t **this, uint64_t a2, icu::UnicodeSet *a3, UErrorCode *a4)
{
  v12[41] = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    sub_1952C6ED4(v9, a3, 0, 0, 0);
    sub_1952DF450(v9, this[1], a2, a4);
    icu::UnicodeString::~UnicodeString(v7, v12);
    icu::UnicodeSet::~UnicodeSet(&v11);
    icu::UnicodeSet::~UnicodeSet(&v10);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t icu::RuleBasedCollator::getAttribute(uint64_t a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 > 3)
  {
    if (a2 > 5)
    {
      if (a2 == 6)
      {
        return 16;
      }

      if (a2 != 7)
      {
        goto LABEL_30;
      }

      v4 = 2;
    }

    else
    {
      if (a2 != 4)
      {
        return (*(*(a1 + 16) + 24) >> 12);
      }

      v4 = 1;
    }

    goto LABEL_20;
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if ((*(*(a1 + 16) + 24) & 0xC) != 0)
        {
          return 20;
        }

        else
        {
          return 21;
        }
      }

LABEL_30:
      *a3 = 1;
      return 0xFFFFFFFFLL;
    }

    v4 = 2048;
    goto LABEL_20;
  }

  if (a2 != 2)
  {
    v4 = 1024;
LABEL_20:
    if ((*(*(a1 + 16) + 24) & v4) != 0)
    {
      return 17;
    }

    else
    {
      return 16;
    }
  }

  v5 = *(*(a1 + 16) + 24);
  if ((v5 & 0x300) == 0x200)
  {
    v6 = 24;
  }

  else
  {
    v6 = 25;
  }

  if ((v5 & 0x300) != 0)
  {
    return v6;
  }

  else
  {
    return 16;
  }
}

atomic_uint **icu::RuleBasedCollator::setAttribute(uint64_t a1, int a2, unsigned int a3, int *a4)
{
  result = icu::RuleBasedCollator::getAttribute(a1, a2, a4);
  if (*a4 > 0)
  {
    return result;
  }

  if (result == a3)
  {
    v9 = 1 << a2;
LABEL_4:
    v10 = *(a1 + 264) | v9;
LABEL_9:
    *(a1 + 264) = v10;
    return result;
  }

  result = (a1 + 16);
  v11 = *(*(a1 + 24) + 32);
  if (a3 == -1 && *(a1 + 16) == v11)
  {
    v9 = 1 << a2;
    goto LABEL_8;
  }

  result = sub_1952C9150(result);
  if (!result)
  {
    v13 = 7;
LABEL_18:
    *a4 = v13;
    return result;
  }

  v12 = result;
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 != 4)
      {
        result = icu::CollationSettings::setStrength(result, a3, *(v11 + 24), a4);
        goto LABEL_30;
      }

      v14 = *(v11 + 24);
      v15 = 1;
      goto LABEL_29;
    }

    if (a2 == 6)
    {
      if (a3 + 1 <= 0x12 && ((1 << (a3 + 1)) & 0x60001) != 0)
      {
        goto LABEL_30;
      }
    }

    else if (a2 == 7)
    {
      v14 = *(v11 + 24);
      v15 = 2;
      goto LABEL_29;
    }

LABEL_36:
    v13 = 1;
    goto LABEL_18;
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        result = icu::CollationSettings::setAlternateHandling(result, a3, *(v11 + 24), a4);
        goto LABEL_30;
      }

      goto LABEL_36;
    }

    v14 = *(v11 + 24);
    v15 = 2048;
    goto LABEL_29;
  }

  if (a2 != 2)
  {
    v14 = *(v11 + 24);
    v15 = 1024;
LABEL_29:
    result = icu::CollationSettings::setFlag(result, v15, a3, v14, a4);
    goto LABEL_30;
  }

  result = icu::CollationSettings::setCaseFirst(result, a3, *(v11 + 24), a4);
LABEL_30:
  if (*a4 <= 0)
  {
    result = icu::CollationFastLatin::getOptions(*(a1 + 8), v12, (v12 + 84), 0x180);
    *(v12 + 20) = result;
    v9 = 1 << a2;
    if (a3 != -1)
    {
      goto LABEL_4;
    }

LABEL_8:
    v10 = *(a1 + 264) & ~v9;
    goto LABEL_9;
  }

  return result;
}

uint64_t icu::RuleBasedCollator::setFastLatinOptions(icu::CollationFastLatin **this, icu::CollationSettings *a2)
{
  result = icu::CollationFastLatin::getOptions(this[1], a2, (a2 + 84), 0x180);
  *(a2 + 20) = result;
  return result;
}

uint64_t icu::RuleBasedCollator::setMaxVariable(uint64_t a1, unsigned int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return a1;
  }

  if (a2 == -1)
  {
    v10 = *(a1 + 16);
    v9 = (a1 + 16);
    v11 = *(*(a1 + 24) + 32);
    if (v10 == v11)
    {
      v8 = *(a1 + 264);
      goto LABEL_18;
    }

    v12 = sub_1952C9150(v9);
    if (v12)
    {
      v13 = v12;
      v14 = (*(v11 + 24) >> 4) & 7 | 0x1000;
      v6 = -1;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if ((a2 & 0xFFFFFFFC) != 0x1000)
  {
    v15 = 1;
LABEL_16:
    *a3 = v15;
    return a1;
  }

  v6 = a2 - 4096;
  v7 = (a1 + 16);
  if (a2 - 4096 == ((*(*(a1 + 16) + 24) >> 4) & 7))
  {
    v8 = *(a1 + 264);
LABEL_14:
    v18 = v8 | 0x100;
LABEL_19:
    *(a1 + 264) = v18;
    return a1;
  }

  v11 = *(*(a1 + 24) + 32);
  v16 = sub_1952C9150(v7);
  if (!v16)
  {
LABEL_15:
    v15 = 7;
    goto LABEL_16;
  }

  v13 = v16;
  v14 = a2;
LABEL_12:
  LastPrimaryForGroup = icu::CollationData::getLastPrimaryForGroup(*(a1 + 8), v14);
  icu::CollationSettings::setMaxVariable(v13, v6, *(v11 + 24), a3);
  if (*a3 <= 0)
  {
    v13[7] = LastPrimaryForGroup;
    v13[20] = icu::CollationFastLatin::getOptions(*(a1 + 8), v13, (v13 + 21), 0x180);
    v8 = *(a1 + 264);
    if (a2 != -1)
    {
      goto LABEL_14;
    }

LABEL_18:
    v18 = v8 & 0xFFFFFEFF;
    goto LABEL_19;
  }

  return a1;
}

uint64_t icu::RuleBasedCollator::setVariableTop(uint64_t a1, UChar *s, int32_t a3, UErrorCode *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v6 = a3;
    if (s || !a3)
    {
      if (a3 < 0)
      {
        v6 = u_strlen(s);
        if (v6)
        {
          goto LABEL_7;
        }
      }

      else if (a3)
      {
LABEL_7:
        v9 = *(*(a1 + 16) + 24);
        v10 = (v9 >> 1) & 1;
        if (v9)
        {
          bzero(v17, 0x210uLL);
          sub_1952C6D30(v17, *(a1 + 8), v10, s, s, &s[v6]);
          v12 = sub_1952C5F10(v17, a4);
          v13 = sub_1952C5F10(v17, a4);
          icu::FCDUTF16CollationIterator::~FCDUTF16CollationIterator(v17, v16);
        }

        else
        {
          v20 = 0u;
          v21 = 0u;
          memset(v19, 0, sizeof(v19));
          v18 = 0u;
          v11 = *(a1 + 8);
          v17[1] = *v11;
          v17[2] = v11;
          *(&v18 + 1) = v19 + 8;
          LODWORD(v19[0]) = 40;
          DWORD2(v20) = 0;
          DWORD2(v21) = -1;
          BYTE12(v21) = (v9 & 2) != 0;
          v17[0] = &unk_1F09444F0;
          v22 = s;
          v23 = s;
          v24 = &s[v6];
          v12 = sub_1952C5F10(v17, a4);
          v13 = sub_1952C5F10(v17, a4);
          icu::UTF16CollationIterator::~UTF16CollationIterator(v17);
        }

        if (v12 != 0x101000100 && v13 == 0x101000100)
        {
          icu::RuleBasedCollator::setVariableTop(a1, HIDWORD(v12), a4);
          result = *(*(a1 + 16) + 28);
          goto LABEL_12;
        }

        result = 0;
        v14 = U_CE_NOT_FOUND_ERROR;
        goto LABEL_11;
      }
    }

    result = 0;
    v14 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_11:
    *a4 = v14;
    goto LABEL_12;
  }

  result = 0;
LABEL_12:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::RuleBasedCollator::setVariableTop(uint64_t this, unsigned int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return this;
  }

  v3 = a2;
  v4 = this;
  v5 = (this + 16);
  if (*(*(this + 16) + 28) != a2)
  {
    this = icu::CollationData::getGroupForPrimary(*(this + 8), a2);
    if ((this - 4100) > 0xFFFFFFFB)
    {
      v10 = this;
      this = icu::CollationData::getLastPrimaryForGroup(*(v4 + 8), this);
      v3 = this;
      if (this == *(*(v4 + 16) + 28))
      {
        goto LABEL_3;
      }

      this = sub_1952C9150(v5);
      if (this)
      {
        v11 = this;
        this = icu::CollationSettings::setMaxVariable(this, v10 - 4096, *(*(*(v4 + 24) + 32) + 24), a3);
        if (*a3 > 0)
        {
          return this;
        }

        v11[7] = v3;
        this = icu::CollationFastLatin::getOptions(*(v4 + 8), v11, (v11 + 21), 0x180);
        v11[20] = this;
        goto LABEL_3;
      }

      v9 = U_MEMORY_ALLOCATION_ERROR;
    }

    else
    {
      v9 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *a3 = v9;
    return this;
  }

LABEL_3:
  v6 = *(v4 + 264);
  if (v3 == *(*(*(v4 + 24) + 32) + 28))
  {
    v7 = v6 & 0xFFFFFEFF;
  }

  else
  {
    v7 = v6 | 0x100;
  }

  *(v4 + 264) = v7;
  return this;
}

uint64_t icu::RuleBasedCollator::setVariableTop(icu::RuleBasedCollator *this, const icu::UnicodeString *a2, UErrorCode *a3)
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
  v7 = v4 >> 5;
  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(a2 + 3);
  }

  return icu::RuleBasedCollator::setVariableTop(this, v5, v8, a3);
}

uint64_t icu::RuleBasedCollator::getReorderCodes(icu::RuleBasedCollator *this, void *__dst, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a3 < 0 || !__dst && a3)
  {
    v4 = 0;
    v5 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  else
  {
    v7 = *(this + 2);
    v4 = *(v7 + 72);
    if (!v4)
    {
      return v4;
    }

    if (v4 <= a3)
    {
      memcpy(__dst, *(v7 + 64), 4 * v4);
      return v4;
    }

    v5 = U_BUFFER_OVERFLOW_ERROR;
  }

  *a4 = v5;
  return v4;
}

uint64_t icu::RuleBasedCollator::setReorderCodes(uint64_t this, const int *__s1, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v5 = a3;
    if (a3 < 0 || (v7 = this, !__s1) && a3)
    {
      v8 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_6:
      *a4 = v8;
      return this;
    }

    if (a3 == 1)
    {
      v5 = *__s1 != 103;
    }

    v9 = *(this + 16);
    if (v5 != *(v9 + 72) || (this = memcmp(__s1, *(v9 + 64), (4 * v5)), this))
    {
      if (v5 != 1 || *__s1 != -1)
      {
        this = sub_1952C9150((v7 + 16));
        if (this)
        {
          v10 = this;
          icu::CollationSettings::setReordering(this, *(v7 + 8), __s1, v5, a4);
          this = icu::CollationFastLatin::getOptions(*(v7 + 8), v10, (v10 + 21), 0x180);
          v10[20] = this;
          return this;
        }

LABEL_19:
        v8 = U_MEMORY_ALLOCATION_ERROR;
        goto LABEL_6;
      }

      v11 = *(*(v7 + 24) + 32);
      if (v9 != v11)
      {
        this = sub_1952C9150((v7 + 16));
        if (this)
        {
          v12 = this;
          icu::CollationSettings::copyReorderingFrom(this, v11, a4);
          this = icu::CollationFastLatin::getOptions(*(v7 + 8), v12, (v12 + 21), 0x180);
          v12[20] = this;
          return this;
        }

        goto LABEL_19;
      }
    }
  }

  return this;
}

unint64_t icu::RuleBasedCollator::compare(icu::RuleBasedCollator *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v7 = *(a2 + 4);
  if ((v7 & 0x11) != 0)
  {
    v8 = 0;
  }

  else if ((v7 & 2) != 0)
  {
    v8 = (a2 + 10);
  }

  else
  {
    v8 = *(a2 + 3);
  }

  v9 = v7;
  v10 = v7 >> 5;
  v11 = *(a2 + 3);
  if (v9 >= 0)
  {
    v11 = v10;
  }

  v12 = *(a3 + 4);
  if ((v12 & 0x11) != 0)
  {
    v13 = 0;
  }

  else if ((v12 & 2) != 0)
  {
    v13 = (a3 + 10);
  }

  else
  {
    v13 = *(a3 + 3);
  }

  v14 = v12;
  v15 = v12 >> 5;
  if (v14 >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(a3 + 3);
  }

  return icu::RuleBasedCollator::doCompare(this, v8, v11, v13, v16, a4);
}

unint64_t icu::RuleBasedCollator::doCompare(uint64_t a1, unsigned __int16 *a2, int a3, unsigned __int16 *a4, UErrorCode *a5, UErrorCode *a6)
{
  v6 = a5;
  v49 = *MEMORY[0x1E69E9840];
  if (a2 == a4 && a3 == a5)
  {
    goto LABEL_3;
  }

  if (a3 < 0)
  {
    v13 = *a2;
    if (v13 == *a4)
    {
      v14 = 0;
      while (v13)
      {
        LODWORD(v12) = v14 + 1;
        v13 = a2[v14 + 1];
        v15 = a4[++v14];
        if (v13 != v15)
        {
          v35 = a6;
          v36 = 0;
          v16 = 0;
          v17 = (a1 + 16);
          v18 = (*(*(a1 + 16) + 24) >> 1) & 1;
          goto LABEL_20;
        }
      }

      goto LABEL_3;
    }

    v35 = a6;
    v36 = 0;
    v16 = 0;
    LODWORD(v12) = 0;
    v17 = (a1 + 16);
    v18 = (*(*(a1 + 16) + 24) >> 1) & 1;
  }

  else
  {
    if (a3)
    {
      v12 = 0;
      while (a5 != v12)
      {
        if (a2[v12] != a4[v12])
        {
          goto LABEL_19;
        }

        if (a3 == ++v12)
        {
          goto LABEL_10;
        }
      }

      LODWORD(v12) = a5;
    }

    else
    {
LABEL_10:
      LODWORD(v12) = a3;
      if (a3 == a5)
      {
LABEL_3:
        v11 = 0;
        goto LABEL_50;
      }
    }

LABEL_19:
    v35 = a6;
    v36 = &a2[a3];
    v16 = &a4[a5];
    v17 = (a1 + 16);
    v18 = (*(*(a1 + 16) + 24) >> 1) & 1;
    if (v12)
    {
LABEL_20:
      if (v12 == a3 || !sub_1952D8C08(*(a1 + 8), a2[v12], v18))
      {
        if (v12 == v6)
        {
          LODWORD(v12) = v6;
          goto LABEL_30;
        }

        if (!sub_1952D8C08(*(a1 + 8), a4[v12], v18))
        {
          goto LABEL_30;
        }
      }

      v19 = &a2[(v12 - 1)];
      while (v12 >= 2)
      {
        v20 = *v19--;
        LODWORD(v12) = v12 - 1;
        if (!sub_1952D8C08(*(a1 + 8), v20, v18))
        {
          goto LABEL_30;
        }
      }

      LODWORD(v12) = 0;
    }
  }

LABEL_30:
  v21 = *v17;
  if ((*(*v17 + 20) & 0x80000000) != 0 || (a5 = (a3 - v12), a3 != v12) && a2[v12] > 0x17Fu)
  {
    v24 = v16;
    v25 = v35;
  }

  else
  {
    v23 = v6 - v12;
    v22 = v6 == v12;
    v24 = v16;
    v25 = v35;
    if (v22 || a4[v12] <= 0x17Fu)
    {
      if (a3 < 0)
      {
        LODWORD(a5) = -1;
        v23 = -1;
      }

      v11 = icu::CollationFastLatin::compareUTF16(*(*(a1 + 8) + 88), v21 + 84, *(*v17 + 20), &a2[v12], a5, &a4[v12], v23);
      if (v11 != -2)
      {
LABEL_42:
        if (v11)
        {
          goto LABEL_50;
        }

        goto LABEL_45;
      }

      v21 = *v17;
    }
  }

  if ((*(v21 + 24) & 1) == 0)
  {
    v44 = 0u;
    v45 = 0u;
    memset(&v43[40], 0, 320);
    *&v43[24] = 0u;
    v26 = *(a1 + 8);
    *&v43[8] = *v26;
    *&v43[16] = v26;
    *&v43[32] = &v43[48];
    *&v43[40] = 40;
    DWORD2(v44) = 0;
    DWORD2(v45) = -1;
    BYTE12(v45) = v18;
    *v43 = &unk_1F09444F0;
    v46 = a2;
    v47 = &a2[v12];
    v48 = v36;
    v38 = 0u;
    v39 = 0u;
    memset(&v37[40], 0, 320);
    *&v37[24] = 0;
    *&v37[8] = *&v43[8];
    *&v37[16] = v26;
    *&v37[32] = &v37[48];
    *&v37[40] = 40;
    DWORD2(v38) = 0;
    DWORD2(v39) = -1;
    BYTE12(v39) = v18;
    *v37 = &unk_1F09444F0;
    v40 = a4;
    v41 = &a4[v12];
    v42 = v24;
    v11 = icu::CollationCompare::compareUpToQuaternary(v43, v37, v21, v25, a5);
    icu::UTF16CollationIterator::~UTF16CollationIterator(v37);
    icu::UTF16CollationIterator::~UTF16CollationIterator(v43);
    goto LABEL_42;
  }

  bzero(v43, 0x210uLL);
  sub_1952C6D30(v43, *(a1 + 8), v18, a2, &a2[v12], v36);
  bzero(v37, 0x210uLL);
  sub_1952C6D30(v37, *(a1 + 8), v18, a4, &a4[v12], v24);
  v11 = icu::CollationCompare::compareUpToQuaternary(v43, v37, *(a1 + 16), v25, v27);
  icu::FCDUTF16CollationIterator::~FCDUTF16CollationIterator(v37, v28);
  icu::FCDUTF16CollationIterator::~FCDUTF16CollationIterator(v43, v29);
  if (v11)
  {
    goto LABEL_50;
  }

LABEL_45:
  v30 = *(*v17 + 6);
  if (v30 >= 61440 && *v25 <= 0)
  {
    v31 = *(*(a1 + 8) + 48);
    v32 = &a4[v12];
    if (v30)
    {
      memset(v43, 0, 112);
      sub_1953C3918(v43, v31, &a2[v12], v36);
      memset(v37, 0, 112);
      sub_1953C3918(v37, v31, v32, v24);
      v11 = sub_1953C3830(v31, v43, v37);
      sub_1953C3B08(v37);
      sub_1953C3B08(v43);
    }

    else
    {
      *&v43[8] = 0u;
      *&v43[24] = 0xFFFFFFFFLL;
      *v43 = &unk_1F0942340;
      *&v43[32] = &a2[v12];
      *&v43[40] = v36;
      *&v37[8] = 0u;
      *&v37[24] = 0xFFFFFFFFLL;
      *v37 = &unk_1F0942340;
      *&v37[32] = v32;
      *&v37[40] = v24;
      v11 = sub_1953C3830(v31, v43, v37);
      icu::UObject::~UObject(v37);
      icu::UObject::~UObject(v43);
    }
  }

LABEL_50:
  v33 = *MEMORY[0x1E69E9840];
  return v11;
}

unint64_t icu::RuleBasedCollator::compare(icu::RuleBasedCollator *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, int a4, UErrorCode *a5)
{
  if (!a4 || *a5 > 0)
  {
    return 0;
  }

  if (a4 < 0)
  {
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }

  v6 = *(a2 + 4);
  if ((v6 & 0x8000u) == 0)
  {
    v7 = v6 >> 5;
  }

  else
  {
    v7 = *(a2 + 3);
  }

  v8 = *(a3 + 4);
  if ((v8 & 0x8000u) == 0)
  {
    v9 = v8 >> 5;
  }

  else
  {
    v9 = *(a3 + 3);
  }

  if (v7 >= a4)
  {
    v7 = a4;
  }

  if (v9 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v9;
  }

  if ((v6 & 0x11) != 0)
  {
    v11 = 0;
  }

  else if ((v6 & 2) != 0)
  {
    v11 = (a2 + 10);
  }

  else
  {
    v11 = *(a2 + 3);
  }

  if ((v8 & 0x11) != 0)
  {
    v13 = 0;
  }

  else if ((v8 & 2) != 0)
  {
    v13 = (a3 + 10);
  }

  else
  {
    v13 = *(a3 + 3);
  }

  return icu::RuleBasedCollator::doCompare(this, v11, v7, v13, v10, a5);
}

unint64_t icu::RuleBasedCollator::compare(uint64_t a1, UChar *s, int32_t a3, UChar *a4, UErrorCode *a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v7 = a5;
  v9 = a3;
  if (!s && a3 || !a4 && a5)
  {
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }

  if (a3 < 0)
  {
    if ((a5 & 0x80000000) == 0)
    {
      v9 = u_strlen(s);
    }
  }

  else if ((a5 & 0x80000000) != 0)
  {
    v7 = u_strlen(a4);
  }

  return icu::RuleBasedCollator::doCompare(a1, s, v9, a4, v7, a6);
}

unint64_t icu::RuleBasedCollator::compareUTF8(icu::RuleBasedCollator *this, const icu::StringPiece *a2, const unsigned __int8 **a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v6 = *a2;
    v7 = *(a2 + 2);
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 == 0;
    }

    if (v8)
    {
      v9 = *(a3 + 2);
      if (*a3 || v9 == 0)
      {
        return icu::RuleBasedCollator::doCompare(this, v6, v7, *a3, v9, a4);
      }
    }

    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

unint64_t icu::RuleBasedCollator::doCompare(icu::RuleBasedCollator *this, const unsigned __int8 *a2, int32_t a3, const unsigned __int8 *a4, UErrorCode *a5, UErrorCode *a6)
{
  v7 = a5;
  v132 = *MEMORY[0x1E69E9840];
  if (a2 == a4 && a3 == a5)
  {
    goto LABEL_3;
  }

  if (a3 < 0)
  {
    v14 = *a2;
    if (v14 == *a4)
    {
      v15 = 0;
      while (v14)
      {
        LODWORD(v13) = v15 + 1;
        v14 = a2[v15 + 1];
        v16 = a4[++v15];
        if (v14 != v16)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_3;
    }

    LODWORD(v13) = 0;
LABEL_19:
    pi = v13;
  }

  else if (a3)
  {
    v13 = 0;
    while (a5 != v13)
    {
      if (a2[v13] != a4[v13])
      {
        goto LABEL_19;
      }

      if (a3 == ++v13)
      {
        goto LABEL_10;
      }
    }

    pi = a5;
    LODWORD(v13) = a5;
  }

  else
  {
LABEL_10:
    pi = a3;
    LODWORD(v13) = a3;
    if (a3 == a5)
    {
LABEL_3:
      v12 = 0;
      goto LABEL_98;
    }
  }

  if (v13 < 1)
  {
LABEL_31:
    v18 = this + 16;
    v19 = (*(*(this + 2) + 24) >> 1) & 1;
    goto LABEL_76;
  }

  if (v13 != a3 && a2[v13] < -64)
  {
    goto LABEL_25;
  }

  v17 = a5;
  if (v13 == a5)
  {
LABEL_33:
    v18 = this + 16;
    v19 = (*(*(this + 2) + 24) >> 1) & 1;
LABEL_34:
    if (v17 == a3)
    {
LABEL_39:
      if (v17 == v7)
      {
        goto LABEL_76;
      }

      v23 = a4[v17];
      v24 = a4[v17];
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      v25 = v17 + 1;
      if (v25 == v7)
      {
        goto LABEL_42;
      }

      if (v24 < 0xE0)
      {
        if (v24 >= 0xC2)
        {
          v32 = v24 & 0x1F;
LABEL_63:
          v36 = a4[v25] ^ 0x80;
          v34 = v36 > 0x3F;
          v37 = v36 | (v32 << 6);
          if (v34)
          {
            v24 = 65533;
          }

          else
          {
            v24 = v37;
          }

LABEL_43:
          v26 = *(this + 1);
          while (sub_1952D8C08(v26, v24, v19))
          {
LABEL_100:
            v61 = --pi;
            v62 = a2[v61];
            if ((v62 & 0x80) != 0)
            {
              v62 = utf8_prevCharSafeBody(a2, 0, &pi, v62, -3);
              LODWORD(v61) = pi;
            }

            if (v61 < 1)
            {
              goto LABEL_76;
            }

            v26 = *(this + 1);
            v24 = v62;
          }

          goto LABEL_76;
        }
      }

      else
      {
        if (v24 > 0xEF)
        {
          if (v24 > 0xF4)
          {
            goto LABEL_42;
          }

          v25 = a4[v25];
          if (((byte_195492798[v25 >> 4] >> (v24 + 16)) & 1) == 0)
          {
            goto LABEL_42;
          }

          if (v17 + 2 == v7)
          {
            goto LABEL_42;
          }

          v31 = a4[v17 + 2] ^ 0x80;
          if (v31 > 0x3F)
          {
            goto LABEL_42;
          }

          LODWORD(v30) = v25 & 0x3F | ((v24 - 240) << 6);
          LODWORD(v25) = v17 + 2;
        }

        else
        {
          v30 = v23 & 0xF;
          if (((a00000000000000[v30] >> (a4[v25] >> 5)) & 1) == 0)
          {
            goto LABEL_42;
          }

          v31 = a4[v25] & 0x3F;
        }

        LODWORD(v25) = v25 + 1;
        if (v25 != v7)
        {
          v32 = v31 | (v30 << 6);
          goto LABEL_63;
        }
      }

LABEL_42:
      v24 = 65533;
      goto LABEL_43;
    }

    v20 = a2[v17];
    v21 = a2[v17];
    if (v20 < 0)
    {
      v22 = v17 + 1;
      if (v22 == a3)
      {
LABEL_37:
        v21 = 65533;
        goto LABEL_38;
      }

      if (v21 < 0xE0)
      {
        if (v21 < 0xC2)
        {
          goto LABEL_37;
        }

        v29 = v21 & 0x1F;
      }

      else
      {
        if (v21 > 0xEF)
        {
          if (v21 > 0xF4)
          {
            goto LABEL_37;
          }

          v22 = a2[v22];
          if (((byte_195492798[v22 >> 4] >> (v21 + 16)) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (v17 + 2 == a3)
          {
            goto LABEL_37;
          }

          v28 = a2[v17 + 2] ^ 0x80;
          if (v28 > 0x3F)
          {
            goto LABEL_37;
          }

          LODWORD(v27) = v22 & 0x3F | ((v21 - 240) << 6);
          LODWORD(v22) = v17 + 2;
        }

        else
        {
          v27 = v20 & 0xF;
          if (((a00000000000000[v27] >> (a2[v22] >> 5)) & 1) == 0)
          {
            goto LABEL_37;
          }

          v28 = a2[v22] & 0x3F;
        }

        LODWORD(v22) = v22 + 1;
        if (v22 == a3)
        {
          goto LABEL_37;
        }

        v29 = v28 | (v27 << 6);
      }

      v33 = a2[v22] ^ 0x80;
      v34 = v33 > 0x3F;
      v35 = v33 | (v29 << 6);
      if (v34)
      {
        v21 = 65533;
      }

      else
      {
        v21 = v35;
      }
    }

LABEL_38:
    if (sub_1952D8C08(*(this + 1), v21, v19))
    {
      goto LABEL_100;
    }

    goto LABEL_39;
  }

  if (a4[v13] > -65)
  {
    v17 = v13;
    goto LABEL_33;
  }

LABEL_25:
  v17 = v13;
  do
  {
    if (v17 <= 1)
    {
      pi = 0;
      goto LABEL_31;
    }

    --v17;
  }

  while (a2[v17] < -64);
  pi = v17;
  v18 = this + 16;
  v19 = (*(*(this + 2) + 24) >> 1) & 1;
  if (v17 >= 1)
  {
    goto LABEL_34;
  }

LABEL_76:
  v38 = *v18;
  if ((*(*v18 + 80) & 0x80000000) == 0 && (a3 == pi || a2[pi] <= 0xC5u) && (v7 == pi || a4[pi] <= 0xC5u))
  {
    if (a3 < 0)
    {
      v41 = v38 + 42;
      v42 = &a2[pi];
      v43 = &a4[pi];
      v44 = *(*v18 + 80);
      v39 = 0xFFFFFFFFLL;
      v40 = 0xFFFFFFFFLL;
    }

    else
    {
      v39 = (a3 - pi);
      v40 = (v7 - pi);
      v41 = v38 + 42;
      v42 = &a2[pi];
      v43 = &a4[pi];
      v44 = *(*v18 + 80);
    }

    v12 = icu::CollationFastLatin::compareUTF8(*(*(this + 1) + 88), v41, v44, v42, v39, v43, v40);
    if (v12 != -2)
    {
LABEL_88:
      if (v12)
      {
        goto LABEL_98;
      }

      goto LABEL_91;
    }

    v38 = *v18;
  }

  if ((v38[12] & 1) == 0)
  {
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
    v111 = 0u;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v45 = *(this + 1);
    *&v101 = *v45;
    *(&v101 + 1) = v45;
    *(&v102 + 1) = &v103 + 8;
    LODWORD(v103) = 40;
    DWORD2(v123) = 0;
    DWORD2(v124) = -1;
    BYTE12(v124) = v19;
    v100 = &unk_1F09446D0;
    *&v125 = a2;
    *(&v125 + 1) = __PAIR64__(a3, pi);
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v66 = 0;
    *&v65 = v101;
    *(&v65 + 1) = v45;
    v67 = &v68 + 8;
    LODWORD(v68) = 40;
    DWORD2(v88) = 0;
    DWORD2(v89) = -1;
    BYTE12(v89) = v19;
    v64 = &unk_1F09446D0;
    v90 = a4;
    v91 = pi;
    v92 = v7;
    v12 = icu::CollationCompare::compareUpToQuaternary(&v100, &v64, v38, a6, a5);
    icu::UTF8CollationIterator::~UTF8CollationIterator(&v64);
    icu::UTF8CollationIterator::~UTF8CollationIterator(&v100);
    goto LABEL_88;
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v131 = 0;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v46 = *(this + 1);
  *&v101 = *v46;
  *(&v101 + 1) = v46;
  *(&v102 + 1) = &v103 + 8;
  LODWORD(v103) = 40;
  DWORD2(v123) = 0;
  DWORD2(v124) = -1;
  BYTE12(v124) = v19;
  *&v125 = a2;
  *(&v125 + 1) = __PAIR64__(a3, pi);
  v100 = &unk_1F0944640;
  DWORD1(v126) = pi;
  *&v127 = v46[6];
  *(&v127 + 1) = &unk_1F0935D00;
  LOWORD(v128) = 2;
  v97 = 0u;
  v98 = 0u;
  v96 = 0u;
  v93 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v99 = 0;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v72 = 0u;
  v71 = 0u;
  v70 = 0u;
  v69 = 0u;
  v68 = 0u;
  v66 = 0;
  *&v65 = v101;
  *(&v65 + 1) = v46;
  v67 = &v68 + 8;
  LODWORD(v68) = 40;
  DWORD2(v88) = 0;
  DWORD2(v89) = -1;
  BYTE12(v89) = v19;
  v90 = a4;
  v91 = pi;
  v92 = v7;
  v64 = &unk_1F0944640;
  DWORD1(v93) = pi;
  v94 = v127;
  v95 = &unk_1F0935D00;
  LOWORD(v96) = 2;
  v12 = icu::CollationCompare::compareUpToQuaternary(&v100, &v64, v38, a6, a5);
  icu::FCDUTF8CollationIterator::~FCDUTF8CollationIterator(&v64, v47);
  icu::FCDUTF8CollationIterator::~FCDUTF8CollationIterator(&v100, v48);
  if (v12)
  {
    goto LABEL_98;
  }

LABEL_91:
  v49 = *(*v18 + 24);
  if (v49 >= 61440 && *a6 <= 0)
  {
    v50 = *(this + 1);
    v51 = v50[6];
    v52 = pi;
    v53 = &a2[pi];
    v54 = &a4[pi];
    if (a3 <= 0)
    {
      v52 = 0;
    }

    v55 = v7 - v52;
    v56 = a3 - v52;
    if (v49)
    {
      bzero(&v100, 0x210uLL);
      sub_1953C3B60(&v100, v50, v53, v56);
      bzero(&v64, 0x210uLL);
      sub_1953C3B60(&v64, *(this + 1), v54, v55);
      v12 = sub_1953C3830(v51, &v100, &v64);
      sub_1953C3C18(&v64, v57);
      sub_1953C3C18(&v100, v58);
    }

    else
    {
      v101 = 0u;
      *&v102 = 0xFFFFFFFFLL;
      v100 = &unk_1F09423E8;
      *(&v102 + 1) = v53;
      LODWORD(v103) = 0;
      DWORD1(v103) = v56;
      v65 = 0u;
      v66 = 0xFFFFFFFFLL;
      v64 = &unk_1F09423E8;
      v67 = v54;
      LODWORD(v68) = 0;
      DWORD1(v68) = v55;
      v12 = sub_1953C3830(v51, &v100, &v64);
      icu::UObject::~UObject(&v64);
      icu::UObject::~UObject(&v100);
    }
  }

LABEL_98:
  v59 = *MEMORY[0x1E69E9840];
  return v12;
}

unint64_t icu::RuleBasedCollator::internalCompareUTF8(icu::RuleBasedCollator *this, const char *a2, int32_t a3, const char *a4, UErrorCode *a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v7 = a5;
  v9 = a3;
  if (!a2 && a3 || !a4 && a5)
  {
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }

  if (a3 < 0)
  {
    if ((a5 & 0x80000000) == 0)
    {
      v9 = strlen(a2);
    }
  }

  else if ((a5 & 0x80000000) != 0)
  {
    v7 = strlen(a4);
  }

  return icu::RuleBasedCollator::doCompare(this, a2, v9, a4, v7, a6);
}

uint64_t sub_1953C3830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    while (1)
    {
      v6 = sub_1953C5A4C(a2);
      v7 = sub_1953C5A4C(a3);
      if (v6 != v7)
      {
        break;
      }

      if ((v6 & 0x80000000) != 0)
      {
        return 0;
      }
    }

    v8 = v7;
    if ((v6 & 0x80000000) != 0)
    {
      v9 = -2;
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_12;
      }
    }

    else if (v6 == 65534)
    {
      v9 = -1;
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = sub_1953C5AD0(a2, a1, v6);
      if ((v8 & 0x80000000) != 0)
      {
LABEL_12:
        v10 = -2;
        goto LABEL_14;
      }
    }

    v10 = v8 == 65534 ? -1 : sub_1953C5AD0(a3, a1, v8);
LABEL_14:
    if (v9 < v10)
    {
      return 0xFFFFFFFFLL;
    }

    if (v9 > v10)
    {
      return 1;
    }
  }
}

uint64_t sub_1953C3918(uint64_t a1, icu::Normalizer2Impl *this, UChar *src, unsigned __int16 *a4)
{
  *(a1 + 24) = -1;
  *(a1 + 36) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *a1 = &unk_1F09423A0;
  v8 = (a1 + 48);
  *(a1 + 48) = &unk_1F0935D00;
  *(a1 + 56) = 2;
  v23 = U_ZERO_ERROR;
  FCD = icu::Normalizer2Impl::makeFCD(this, src, a4, 0, &v23);
  if (v23 <= U_ZERO_ERROR)
  {
    v10 = FCD;
    if (FCD == a4 || !a4 && !*FCD)
    {
      *(a1 + 32) = src;
LABEL_26:
      *(a1 + 40) = v10;
      return a1;
    }

    icu::UnicodeString::unBogus(v8);
    if (*(a1 + 56) < 0)
    {
      v11 = *(a1 + 60);
    }

    else
    {
      v11 = *(a1 + 56) >> 5;
    }

    icu::UnicodeString::doReplace(v8, 0, v11, src, 0, (v10 - src) >> 1);
    v22 = 0u;
    v18 = this;
    v19 = v8;
    v21 = 0u;
    v20 = 0u;
    *(&v21 + 5) = 0;
    v12 = *(a1 + 56);
    if ((v12 & 0x8000) != 0)
    {
      v13 = *(a1 + 60);
    }

    else
    {
      v13 = v12 >> 5;
    }

    if (icu::ReorderingBuffer::init(&v18, v13, &v23))
    {
      icu::Normalizer2Impl::makeFCD(this, v10, a4, &v18, &v23);
    }

    if (v20)
    {
      icu::UnicodeString::releaseBuffer(v19, (v21 - v20) >> 1);
    }

    if (v23 <= U_ZERO_ERROR)
    {
      v14 = *(a1 + 56);
      if ((v14 & 0x11) != 0)
      {
        v15 = 0;
      }

      else if ((v14 & 2) != 0)
      {
        v15 = a1 + 58;
      }

      else
      {
        v15 = *(a1 + 72);
      }

      *(a1 + 32) = v15;
      if ((v14 & 0x8000) != 0)
      {
        v16 = *(a1 + 60);
      }

      else
      {
        v16 = v14 >> 5;
      }

      v10 = (v15 + 2 * v16);
      goto LABEL_26;
    }
  }

  return a1;
}

void sub_1953C3B08(uint64_t a1)
{
  *a1 = &unk_1F09423A0;
  icu::UnicodeString::~UnicodeString((a1 + 48));

  icu::UObject::~UObject(a1);
}

double sub_1953C3B60(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  *&result = 0xFFFFFFFFLL;
  *(a1 + 24) = 0xFFFFFFFFLL;
  *a1 = &unk_1F0942430;
  *(a1 + 40) = *a2;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = a1 + 80;
  *(a1 + 72) = 40;
  *(a1 + 76) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = -1;
  *(a1 + 420) = 0;
  *(a1 + 424) = a3;
  *(a1 + 432) = 0;
  *(a1 + 436) = a4;
  *(a1 + 32) = &unk_1F0944640;
  *(a1 + 440) = 0;
  *(a1 + 456) = a2[6];
  *(a1 + 464) = &unk_1F0935D00;
  *(a1 + 472) = 2;
  return result;
}

void sub_1953C3C18(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F0942430;
  icu::FCDUTF8CollationIterator::~FCDUTF8CollationIterator((a1 + 32), a2);

  icu::UObject::~UObject(a1);
}

unint64_t icu::RuleBasedCollator::compare(icu::RuleBasedCollator *this, UCharIterator *a2, UCharIterator *a3, UErrorCode *a4)
{
  v4 = 0;
  v98 = *MEMORY[0x1E69E9840];
  if (a2 != a3 && *a4 <= 0)
  {
    v9 = *(*(this + 2) + 24);
    v10 = (a2->next)(a2);
    v11 = (a3->next)(a3);
    if (v10 == v11)
    {
      LODWORD(v13) = 0;
      do
      {
        if (v10 < 0)
        {
          v4 = 0;
          goto LABEL_32;
        }

        v13 = (v13 + 1);
        v10 = (a2->next)(a2);
        v14 = (a3->next)(a3);
      }

      while (v10 == v14);
      v15 = v14;
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v15 = v11;
      v13 = 0;
      if ((v10 & 0x80000000) == 0)
      {
LABEL_10:
        (a2->previous)(a2);
      }
    }

    if ((v15 & 0x80000000) == 0)
    {
      (a3->previous)(a3);
    }

    v16 = (v9 >> 1) & 1;
    if (v13)
    {
      if ((v10 & 0x80000000) == 0 && sub_1952D8C08(*(this + 1), v10, v16))
      {
        goto LABEL_20;
      }

      if ((v15 & 0x80000000) == 0)
      {
        v17 = *(this + 1);
        for (i = v15; sub_1952D8C08(v17, i, v16); i = v19)
        {
LABEL_20:
          v19 = (a2->previous)(a2);
          (a3->previous)(a3);
          if (v13 < 2)
          {
            v13 = 0;
            break;
          }

          v13 = (v13 - 1);
          v17 = *(this + 1);
        }
      }
    }

    v20 = *(this + 2);
    if (*(v20 + 24))
    {
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      v82 = 0u;
      v81 = 0u;
      v80 = 0u;
      v79 = 0u;
      v78 = 0u;
      v77 = 0u;
      v76 = 0u;
      v75 = 0u;
      v74 = 0u;
      v73 = 0u;
      v72 = 0u;
      v71 = 0u;
      v70 = 0u;
      v69 = 0u;
      v22 = *(this + 1);
      *&v68 = *v22;
      *(&v68 + 1) = v22;
      *(&v69 + 1) = &v70 + 8;
      LODWORD(v70) = 40;
      DWORD2(v90) = 0;
      DWORD2(v91) = -1;
      BYTE12(v91) = v16;
      *&v92 = a2;
      v67 = &unk_1F09440D0;
      HIDWORD(v92) = v13;
      *(&v93 + 1) = v22[6];
      *&v94 = &unk_1F0935D00;
      WORD4(v94) = 2;
      v65 = 0u;
      v66 = 0u;
      v63 = 2;
      v64 = 0u;
      v58 = 0;
      v60 = 0;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0;
      *&v32 = v68;
      *(&v32 + 1) = v22;
      v34 = (&v35 + 8);
      LODWORD(v35) = 40;
      DWORD2(v55) = 0;
      DWORD2(v56) = -1;
      BYTE12(v56) = v16;
      v57 = a3;
      v31 = &unk_1F09440D0;
      v59 = v13;
      v61 = *(&v93 + 1);
      v62 = &unk_1F0935D00;
      v4 = icu::CollationCompare::compareUpToQuaternary(&v67, &v31, v20, a4, v12);
      icu::FCDUIterCollationIterator::~FCDUIterCollationIterator(&v31, v23);
      icu::FCDUIterCollationIterator::~FCDUIterCollationIterator(&v67, v24);
      if (v4)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v83 = 0u;
      v82 = 0u;
      v81 = 0u;
      v80 = 0u;
      v79 = 0u;
      v78 = 0u;
      v77 = 0u;
      v76 = 0u;
      v75 = 0u;
      v74 = 0u;
      v73 = 0u;
      v72 = 0u;
      v71 = 0u;
      v70 = 0u;
      v69 = 0u;
      v21 = *(this + 1);
      *&v68 = *v21;
      *(&v68 + 1) = v21;
      *(&v69 + 1) = &v70 + 8;
      LODWORD(v70) = 40;
      DWORD2(v90) = 0;
      DWORD2(v91) = -1;
      BYTE12(v91) = v16;
      v67 = &unk_1F0944160;
      *&v92 = a2;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      v44 = 0u;
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0;
      *&v32 = v68;
      *(&v32 + 1) = v21;
      v34 = (&v35 + 8);
      LODWORD(v35) = 40;
      DWORD2(v55) = 0;
      DWORD2(v56) = -1;
      BYTE12(v56) = v16;
      v31 = &unk_1F0944160;
      v57 = a3;
      v4 = icu::CollationCompare::compareUpToQuaternary(&v67, &v31, v20, a4, v12);
      icu::UIterCollationIterator::~UIterCollationIterator(&v31);
      icu::UIterCollationIterator::~UIterCollationIterator(&v67);
      if (v4)
      {
        goto LABEL_32;
      }
    }

    if (*(*(this + 2) + 24) >= 61440 && *a4 <= 0)
    {
      (a2->move)(a2, v13, 3);
      (a3->move)(a3, v13, 3);
      v25 = *(this + 1);
      v26 = v25[6];
      if (*(*(this + 2) + 24))
      {
        bzero(&v67, 0x208uLL);
        sub_1953C4290(&v67, v25, a2, v13);
        bzero(&v31, 0x208uLL);
        sub_1953C4290(&v31, *(this + 1), a3, v13);
        v4 = sub_1953C3830(v26, &v67, &v31);
        sub_1953C4344(&v31, v27);
        sub_1953C4344(&v67, v28);
      }

      else
      {
        v68 = 0u;
        *&v69 = 0xFFFFFFFFLL;
        v67 = &unk_1F0942478;
        *(&v69 + 1) = a2;
        v32 = 0u;
        v33 = 0xFFFFFFFFLL;
        v31 = &unk_1F0942478;
        v34 = a3;
        v4 = sub_1953C3830(v26, &v67, &v31);
        icu::UObject::~UObject(&v31);
        icu::UObject::~UObject(&v67);
      }
    }
  }

LABEL_32:
  v29 = *MEMORY[0x1E69E9840];
  return v4;
}

double sub_1953C4290(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  *&result = 0xFFFFFFFFLL;
  *(a1 + 24) = 0xFFFFFFFFLL;
  *a1 = &unk_1F09424C0;
  *(a1 + 40) = *a2;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = a1 + 80;
  *(a1 + 72) = 40;
  *(a1 + 76) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = -1;
  *(a1 + 420) = 0;
  *(a1 + 424) = a3;
  *(a1 + 32) = &unk_1F09440D0;
  *(a1 + 432) = 0;
  *(a1 + 436) = a4;
  *(a1 + 448) = a2[6];
  *(a1 + 456) = &unk_1F0935D00;
  *(a1 + 464) = 2;
  return result;
}

void sub_1953C4344(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F09424C0;
  icu::FCDUIterCollationIterator::~FCDUIterCollationIterator((a1 + 32), a2);

  icu::UObject::~UObject(a1);
}

icu::CollationKey *icu::RuleBasedCollator::getCollationKey(icu::RuleBasedCollator *this, const icu::UnicodeString *a2, icu::CollationKey *a3, UErrorCode *a4)
{
  v6 = *(a2 + 4);
  if ((v6 & 0x11) != 0)
  {
    v7 = 0;
  }

  else if ((v6 & 2) != 0)
  {
    v7 = (a2 + 10);
  }

  else
  {
    v7 = *(a2 + 3);
  }

  v8 = v6;
  v9 = v6 >> 5;
  if (v8 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a2 + 3);
  }

  return icu::RuleBasedCollator::getCollationKey(this, v7, v10, a3, a4);
}

icu::CollationKey *icu::RuleBasedCollator::getCollationKey(uint64_t a1, UChar *a2, int a3, icu::CollationKey *this, UErrorCode *a5)
{
  if (*a5 >= 1)
  {
LABEL_5:

    return icu::CollationKey::setToBogus(this);
  }

  if (!a2 && a3)
  {
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_5;
  }

  icu::CollationKey::reset(this);
  v18 = 0;
  v19 = this;
  v11 = *(this + 2);
  v12 = v11 < 0;
  if (v11 < 0)
  {
    v13 = *(this + 2);
  }

  else
  {
    v13 = this + 16;
  }

  if (v12)
  {
    v14 = *(this + 6);
  }

  else
  {
    v14 = 32;
  }

  v15[1] = v13;
  v16 = v14;
  v17 = 0;
  v15[0] = &unk_1F09422E0;
  icu::RuleBasedCollator::writeSortKey(a1, a2, a3, v15, a5);
  if (*a5 < 1)
  {
    if (*(this + 3) == 2)
    {
      *a5 = U_MEMORY_ALLOCATION_ERROR;
    }

    else
    {
      icu::CollationKey::setLength(this, v17);
    }
  }

  else
  {
    icu::CollationKey::setToBogus(this);
  }

  icu::ByteSink::~ByteSink(v15);
  return this;
}

void icu::RuleBasedCollator::writeSortKey(uint64_t a1, UChar *a2, int a3, _DWORD *a4, UErrorCode *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (a3 < 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = &a2[a3];
    }

    v10 = *(a1 + 16);
    v11 = *(v10 + 24);
    v12 = (v11 >> 1) & 1;
    v16 = &unk_1F09384C0;
    if (v11)
    {
      bzero(v17, 0x210uLL);
      sub_1952C6D30(v17, *(a1 + 8), v12, a2, a2, v9);
      icu::CollationKeys::writeSortKeyUpToQuaternary(v17, *(*(a1 + 8) + 72), *(a1 + 16), a4, 1, &v16, 1, a5);
      icu::FCDUTF16CollationIterator::~FCDUTF16CollationIterator(v17, v14);
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      memset(v19, 0, sizeof(v19));
      v13 = *(a1 + 8);
      v17[1] = *v13;
      v17[2] = v13;
      *(&v18 + 1) = v19 + 8;
      LODWORD(v19[0]) = 40;
      DWORD2(v20) = 0;
      DWORD2(v21) = -1;
      BYTE12(v21) = (v11 & 2) != 0;
      v17[0] = &unk_1F09444F0;
      v22 = a2;
      v23 = a2;
      v24 = v9;
      icu::CollationKeys::writeSortKeyUpToQuaternary(v17, v13[9], v10, a4, 1, &v16, 1, a5);
      icu::UTF16CollationIterator::~UTF16CollationIterator(v17);
    }

    if ((*(*(a1 + 16) + 24) & 0xFFFFF000) == 0xF000)
    {
      icu::RuleBasedCollator::writeIdenticalLevel(a1, a2, v9, a4, a5);
    }

    (*(*a4 + 16))(a4, &unk_1954927A9, 1);
    icu::CollationKeys::LevelCallback::~LevelCallback(&v16);
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t icu::RuleBasedCollator::getSortKey(icu::RuleBasedCollator *this, const icu::UnicodeString *a2, char *a3, int a4)
{
  v6 = *(a2 + 4);
  if ((v6 & 0x11) != 0)
  {
    v7 = 0;
  }

  else if ((v6 & 2) != 0)
  {
    v7 = (a2 + 10);
  }

  else
  {
    v7 = *(a2 + 3);
  }

  v8 = v6;
  v9 = v6 >> 5;
  if (v8 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a2 + 3);
  }

  return icu::RuleBasedCollator::getSortKey(this, v7, v10, a3, a4);
}

uint64_t icu::RuleBasedCollator::getSortKey(uint64_t a1, UChar *a2, int a3, char *a4, int a5)
{
  v5 = 0;
  if (a3)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6 && (a5 & 0x80000000) == 0)
  {
    if (a4 || !a5)
    {
      v15 = 0;
      if (a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = &v15;
      }

      if (a4)
      {
        v8 = a5;
      }

      else
      {
        v8 = 0;
      }

      v14 = 0;
      v12 = v8;
      v13 = 0;
      v11[0] = &unk_1F0942508;
      v11[1] = v7;
      v10 = U_ZERO_ERROR;
      icu::RuleBasedCollator::writeSortKey(a1, a2, a3, v11, &v10);
      if (v10 <= U_ZERO_ERROR)
      {
        v5 = v13;
      }

      else
      {
        v5 = 0;
      }

      icu::ByteSink::~ByteSink(v11);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

UChar *icu::RuleBasedCollator::writeIdenticalLevel(uint64_t a1, UChar *a2, UChar *a3, _DWORD *a4, UErrorCode *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  result = icu::Normalizer2Impl::decompose(*(*(a1 + 8) + 48), a2, a3, 0, a5);
  if (*a5 > 0)
  {
    goto LABEL_17;
  }

  v11 = result;
  result = sub_1952D9E40(a4, 1);
  if (v11 == a2)
  {
    v12 = 0;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = sub_1952B9C10(0, a2, (v11 - a2) >> 1, a4);
    v12 = result;
    if (a3)
    {
LABEL_4:
      if (v11 == a3)
      {
        goto LABEL_17;
      }

      v13 = (a3 - v11) >> 1;
      goto LABEL_9;
    }
  }

  if (!*v11)
  {
    goto LABEL_17;
  }

  LODWORD(v13) = -1;
LABEL_9:
  v19 = 0u;
  v20 = 0u;
  v22 = 0;
  v21 = 0u;
  v18 = &unk_1F0935D00;
  LOWORD(v19) = 2;
  icu::Normalizer2Impl::decompose(*(*(a1 + 8) + 48), v11, a3, &v18, v13, a5);
  v14 = 0;
  if ((v19 & 0x11) == 0)
  {
    if ((v19 & 2) != 0)
    {
      v14 = &v19 + 2;
    }

    else
    {
      v14 = v20;
    }
  }

  if ((v19 & 0x8000u) == 0)
  {
    v15 = v19 >> 5;
  }

  else
  {
    v15 = DWORD1(v19);
  }

  sub_1952B9C10(v12, v14, v15, a4);
  result = icu::UnicodeString::~UnicodeString(v16, &v18);
LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::RuleBasedCollator::internalNextSortKeyPart(icu::RuleBasedCollator *this, UCharIterator *a2, unsigned int *a3, unsigned __int8 *a4, uint64_t a5, UErrorCode *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    if (!a2 || !a3 || (v10 = a5, (a5 & 0x80000000) != 0) || !a4 && a5)
    {
      v6 = 0;
      *a6 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_9;
    }

    if (a5)
    {
      v32 = 0;
      v30 = a5;
      v31 = 0;
      v29[0] = &unk_1F0942508;
      v29[1] = a4;
      LODWORD(v32) = a3[1];
      (a2->move)(a2, 0, 0);
      v15 = *a3;
      if (*a3 <= 5)
      {
        v16 = *(this + 2);
        v17 = *(v16 + 24);
        v27[0] = &unk_1F0942568;
        v27[1] = v29;
        LODWORD(v28) = 1;
        HIDWORD(v28) = v30 + v32 - v31;
        if (v17)
        {
          v34 = 0;
          memset(v33, 0, sizeof(v33));
          sub_1953C5DB0(v33, *(this + 1), (v17 & 2) != 0, a2, 0);
          icu::CollationKeys::writeSortKeyUpToQuaternary(v33, *(*(this + 1) + 72), *(this + 2), v29, v15, v27, 0, a6);
          icu::FCDUIterCollationIterator::~FCDUIterCollationIterator(v33, v19);
        }

        else
        {
          memset(&v33[2] + 8, 0, 352);
          *(&v33[1] + 8) = 0u;
          v18 = *(this + 1);
          *(&v33[0] + 1) = *v18;
          *&v33[1] = v18;
          *&v33[2] = &v33[3];
          DWORD2(v33[2]) = 40;
          LODWORD(v33[23]) = 0;
          LODWORD(v33[24]) = -1;
          BYTE4(v33[24]) = (v17 & 2) != 0;
          *&v33[0] = &unk_1F0944160;
          *(&v33[24] + 1) = a2;
          icu::CollationKeys::writeSortKeyUpToQuaternary(v33, v18[9], v16, v29, v15, v27, 0, a6);
          icu::UIterCollationIterator::~UIterCollationIterator(v33);
        }

        if (*a6 > 0)
        {
          v10 = 0;
LABEL_19:
          icu::CollationKeys::LevelCallback::~LevelCallback(v27);
LABEL_39:
          v6 = v10;
LABEL_43:
          icu::ByteSink::~ByteSink(v29);
          goto LABEL_9;
        }

        if (v31 > v10)
        {
          *a3 = v28;
          goto LABEL_19;
        }

        if ((*(*(this + 2) + 24) & 0xFFFFF000) == 0xF000)
        {
          (a2->move)(a2, 0, 0);
          v15 = 6;
        }

        icu::CollationKeys::LevelCallback::~LevelCallback(v27);
      }

      if (v15 == 6)
      {
        v21 = v31;
        v20 = v32;
        v22 = v30;
        memset(v33 + 8, 0, 56);
        *&v33[0] = &unk_1F0935D00;
        WORD4(v33[0]) = 2;
        while (1)
        {
          v23 = (a2->next)(a2);
          if (v23 < 0)
          {
            break;
          }

          LOWORD(v27[0]) = v23;
          icu::UnicodeString::doAppend(v33, v27, 0, 1);
        }

        if ((BYTE8(v33[0]) & 0x11) != 0)
        {
          v24 = 0;
        }

        else if ((BYTE8(v33[0]) & 2) != 0)
        {
          v24 = v33 + 5;
        }

        else
        {
          v24 = *(&v33[1] + 1);
        }

        v25 = WORD4(v33[0]) >> 5;
        if (SWORD4(v33[0]) < 0)
        {
          v25 = HIDWORD(v33[0]);
        }

        icu::RuleBasedCollator::writeIdenticalLevel(this, v24, &v24[v25], v29, a6);
        v26 = *a6;
        if (v26 > 0)
        {
          v10 = 0;
LABEL_38:
          icu::UnicodeString::~UnicodeString(v26, v33);
          goto LABEL_39;
        }

        if (v31 > v10)
        {
          v26 = (v22 + v20 - v21);
          *a3 = 6;
          a3[1] = v26;
          goto LABEL_38;
        }

        icu::UnicodeString::~UnicodeString(v31, v33);
      }

      *a3 = 7;
      v6 = v31;
      if (v31 < v10)
      {
        bzero(&a4[v31], (~v31 + v10) + 1);
      }

      goto LABEL_43;
    }
  }

  v6 = 0;
LABEL_9:
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

void icu::RuleBasedCollator::internalGetCEs(icu::RuleBasedCollator *this, const icu::UnicodeString *a2, icu::UVector64 *a3, UErrorCode *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    goto LABEL_34;
  }

  v7 = *(a2 + 4);
  if ((v7 & 0x11) != 0)
  {
    v8 = 0;
  }

  else if ((v7 & 2) != 0)
  {
    v8 = a2 + 10;
  }

  else
  {
    v8 = *(a2 + 3);
  }

  v9 = v7;
  v10 = v7 >> 5;
  if (v9 < 0)
  {
    v10 = *(a2 + 3);
  }

  v11 = &v8[2 * v10];
  v12 = *(*(this + 2) + 24);
  v13 = (v12 >> 1) & 1;
  if (v12)
  {
    bzero(v27, 0x210uLL);
    sub_1952C6D30(v27, *(this + 1), v13, v8, v8, v11);
    v20 = sub_1952C5F10(v27, a4);
    if (v20 == 0x101000100)
    {
LABEL_33:
      icu::FCDUTF16CollationIterator::~FCDUTF16CollationIterator(v27, v21);
      goto LABEL_34;
    }

    v22 = v20;
    while (1)
    {
      v23 = *(a3 + 2);
      v24 = v23 + 1;
      if (v23 >= -1 && *(a3 + 3) > v23)
      {
        goto LABEL_31;
      }

      if (icu::UVector64::expandCapacity(a3, v24, a4))
      {
        break;
      }

LABEL_32:
      v22 = sub_1952C5F10(v27, a4);
      if (v22 == 0x101000100)
      {
        goto LABEL_33;
      }
    }

    v23 = *(a3 + 2);
    v24 = v23 + 1;
LABEL_31:
    *(*(a3 + 3) + 8 * v23) = v22;
    *(a3 + 2) = v24;
    goto LABEL_32;
  }

  v30 = 0u;
  v31 = 0u;
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  v14 = *(this + 1);
  v27[1] = *v14;
  v27[2] = v14;
  *(&v28 + 1) = v29 + 8;
  LODWORD(v29[0]) = 40;
  DWORD2(v30) = 0;
  DWORD2(v31) = -1;
  BYTE12(v31) = (v12 & 2) != 0;
  v27[0] = &unk_1F09444F0;
  v32 = v8;
  v33 = v8;
  v34 = v11;
  v15 = sub_1952C5F10(v27, a4);
  if (v15 != 0x101000100)
  {
    v16 = v15;
    while (1)
    {
      v17 = *(a3 + 2);
      v18 = v17 + 1;
      if (v17 >= -1 && *(a3 + 3) > v17)
      {
        goto LABEL_19;
      }

      if (icu::UVector64::expandCapacity(a3, v18, a4))
      {
        break;
      }

LABEL_20:
      v16 = sub_1952C5F10(v27, a4);
      if (v16 == 0x101000100)
      {
        goto LABEL_21;
      }
    }

    v17 = *(a3 + 2);
    v18 = v17 + 1;
LABEL_19:
    *(*(a3 + 3) + 8 * v17) = v16;
    *(a3 + 2) = v18;
    goto LABEL_20;
  }

LABEL_21:
  icu::UTF16CollationIterator::~UTF16CollationIterator(v27);
LABEL_34:
  v26 = *MEMORY[0x1E69E9840];
}

uint64_t icu::RuleBasedCollator::internalGetShortDefinitionString(icu::RuleBasedCollator *this, char *a2, char *a3, int a4, UErrorCode *a5)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
LABEL_2:
    v5 = 0;
    goto LABEL_3;
  }

  v11 = a2;
  if (a3)
  {
    if ((a4 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v5 = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_3;
  }

  if (a4)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (!a2)
  {
    if (*(this + 256))
    {
      v11 = 0;
    }

    else if (**(this + 10))
    {
      v11 = *(this + 10);
    }

    else
    {
      v11 = "root";
    }
  }

  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *v39 = 0u;
  FunctionalEquivalent = ucol_getFunctionalEquivalent(v39, 157, "collation", v11, 0, a5);
  if (*a5 > 0)
  {
    goto LABEL_2;
  }

  if (FunctionalEquivalent)
  {
    v39[FunctionalEquivalent] = 0;
  }

  else
  {
    strcpy(v39, "root");
  }

  memset(&v38[1], 0, 56);
  v38[0] = &v38[1] + 5;
  LODWORD(v38[1]) = 40;
  v14 = *(this + 66);
  if ((v14 & 2) != 0)
  {
    if ((*(*(this + 2) + 24) & 0xC) != 0)
    {
      v15 = 20;
    }

    else
    {
      v15 = 21;
    }

    sub_1953C5620(v38, 65, v15, a5);
    v14 = *(this + 66);
    if ((v14 & 4) == 0)
    {
LABEL_20:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v14 & 4) == 0)
  {
    goto LABEL_20;
  }

  if (*a5 <= 0)
  {
    v17 = *(*(this + 2) + 24);
    if ((v17 & 0x300) == 0x200)
    {
      v18 = 24;
    }

    else
    {
      v18 = 25;
    }

    if ((v17 & 0x300) != 0)
    {
      v16 = v18;
    }

    else
    {
      v16 = 16;
    }
  }

  else
  {
    v16 = -1;
  }

  sub_1953C5620(v38, 67, v16, a5);
  v14 = *(this + 66);
  if ((v14 & 0x80) == 0)
  {
LABEL_21:
    if ((v14 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_43:
    if (*a5 <= 0)
    {
      if ((*(*(this + 2) + 25) & 4) != 0)
      {
        v20 = 17;
      }

      else
      {
        v20 = 16;
      }
    }

    else
    {
      v20 = -1;
    }

    sub_1953C5620(v38, 69, v20, a5);
    if ((*(this + 66) & 1) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_49;
  }

LABEL_37:
  if (*a5 <= 0)
  {
    if ((*(*(this + 2) + 24) & 2) != 0)
    {
      v19 = 17;
    }

    else
    {
      v19 = 16;
    }
  }

  else
  {
    v19 = -1;
  }

  sub_1953C5620(v38, 68, v19, a5);
  v14 = *(this + 66);
  if ((v14 & 8) != 0)
  {
    goto LABEL_43;
  }

LABEL_22:
  if (v14)
  {
LABEL_49:
    if (*a5 <= 0)
    {
      if ((*(*(this + 2) + 25) & 8) != 0)
      {
        v21 = 17;
      }

      else
      {
        v21 = 16;
      }
    }

    else
    {
      v21 = -1;
    }

    sub_1953C5620(v38, 70, v21, a5);
  }

LABEL_55:
  v36 = 0u;
  *v37 = 0u;
  *v34 = 0u;
  v35 = 0u;
  ulocimp_getKeywordValue(v39, "collation", 9, a5, v34);
  sub_1953C56B0(v38, 75, v34[0], v37[2], a5);
  memset(&v32[1], 0, 48);
  v31[1] = 0;
  v32[0] = &v32[1] + 5;
  LODWORD(v32[1]) = 40;
  v33 = 0;
  memset(&v30[1], 0, 48);
  *v29 = 0;
  v30[0] = &v30[1] + 5;
  LODWORD(v30[1]) = 40;
  v31[0] = 0;
  memset(&v28[1], 0, 48);
  *v27 = 0;
  v28[0] = &v28[1] + 5;
  LODWORD(v28[1]) = 40;
  memset(&v26[1], 0, 48);
  v26[0] = &v26[1] + 5;
  LODWORD(v26[1]) = 40;
  ulocimp_getSubtags(v39, v32, v30, v28, v26, 0, a5);
  v22 = v33;
  if (v33)
  {
    v23 = v32[0];
  }

  else
  {
    v23 = "root";
    v22 = 4;
  }

  sub_1953C56B0(v38, 76, v23, v22, a5);
  if ((*(this + 264) & 0x10) != 0)
  {
    if (*a5 <= 0)
    {
      v24 = *(*(this + 2) + 24) & 1 | 0x10;
    }

    else
    {
      v24 = -1;
    }

    sub_1953C5620(v38, 78, v24, a5);
  }

  sub_1953C56B0(v38, 82, v28[0], v29[0], a5);
  if ((*(this + 264) & 0x20) != 0)
  {
    if (*a5 <= 0)
    {
      v25 = *(*(this + 2) + 24) >> 12;
    }

    else
    {
      v25 = -1;
    }

    sub_1953C5620(v38, 83, v25, a5);
  }

  sub_1953C56B0(v38, 86, v26[0], v27[0], a5);
  sub_1953C56B0(v38, 90, v30[0], v31[0], a5);
  if (*a5 <= 0)
  {
    v5 = icu::CharString::extract(v38, a3, a4, a5);
  }

  else
  {
    v5 = 0;
  }

  if (BYTE4(v26[1]))
  {
    free(v26[0]);
  }

  if (BYTE4(v28[1]))
  {
    free(v28[0]);
  }

  if (BYTE4(v30[1]))
  {
    free(v30[0]);
  }

  if (BYTE4(v32[1]))
  {
    free(v32[0]);
  }

  if (BYTE4(v34[1]))
  {
    free(v34[0]);
  }

  if (BYTE4(v38[1]))
  {
    free(v38[0]);
  }

LABEL_3:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

icu::CharString *sub_1953C5620(icu::CharString *this, char a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v8 = this;
    if (*(this + 14))
    {
      icu::CharString::append(this, 95, a4);
    }

    icu::CharString::append(v8, a2, a4);
    v9 = a1234IxoSnLu[a3];

    return icu::CharString::append(v8, v9, a4);
  }

  return this;
}

icu::CharString *sub_1953C56B0(icu::CharString *this, char a2, char *a3, int a4, UErrorCode *a5)
{
  if (a4 && *a5 <= 0)
  {
    LODWORD(v6) = a4;
    v9 = this;
    if (*(this + 14))
    {
      icu::CharString::append(this, 95, a5);
    }

    this = icu::CharString::append(v9, a2, a5);
    if (v6 >= 1)
    {
      v6 = v6;
      do
      {
        v10 = *a3++;
        v11 = uprv_toupper(v10);
        this = icu::CharString::append(v9, v11, a5);
        --v6;
      }

      while (v6);
    }
  }

  return this;
}

void **icu::RuleBasedCollator::computeMaxExpansions(icu::CollationElementIterator **this, const icu::CollationTailoring *a2, UErrorCode *a3)
{
  result = icu::CollationElementIterator::computeMaxExpansions(this[3], a2, a3);
  this[48] = result;
  return result;
}

uint64_t icu::RuleBasedCollator::createCollationElementIterator(icu::RuleBasedCollator *this, const icu::UnicodeString *a2)
{
  v3 = U_ZERO_ERROR;
  sub_1951D10A4((*(this + 3) + 392), icu::RuleBasedCollator::computeMaxExpansions, *(this + 3), &v3);
  if (v3 <= U_ZERO_ERROR)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::RuleBasedCollator::createCollationElementIterator(icu::RuleBasedCollator *this, const icu::CharacterIterator *a2)
{
  v3 = U_ZERO_ERROR;
  sub_1951D10A4((*(this + 3) + 392), icu::RuleBasedCollator::computeMaxExpansions, *(this + 3), &v3);
  if (v3 <= U_ZERO_ERROR)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::RuleBasedCollator::getMaxExpansion(icu::RuleBasedCollator *this, unsigned int a2)
{
  v5 = 0;
  sub_1951D10A4((*(this + 3) + 392), icu::RuleBasedCollator::computeMaxExpansions, *(this + 3), &v5);
  return icu::CollationElementIterator::getMaxExpansion(*(*(this + 3) + 384), a2);
}

void sub_1953C599C(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953C59D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 == v2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v1 + 1;
  result = *v1;
  *(a1 + 32) = v1 + 1;
  if (v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = result == 0;
  }

  if (v6)
  {
    *(a1 + 32) = 0;
    return 0xFFFFFFFFLL;
  }

  if ((result & 0xFC00) == 0xD800 && v5 != v2)
  {
    v8 = *v5;
    if ((v8 & 0xFC00) == 0xDC00)
    {
      *(a1 + 32) = v1 + 2;
      return (v8 + (result << 10) - 56613888);
    }
  }

  return result;
}

uint64_t sub_1953C5A4C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 0x80000000) != 0)
  {
    return (*(*a1 + 24))();
  }

  if (v1 == *(a1 + 28))
  {
    *(a1 + 24) = -1;
    return (*(*a1 + 24))();
  }

  v3 = *(a1 + 8);
  *(a1 + 24) = v1 + 1;
  v4 = *(v3 + 2 * v1);
  if ((v4 & 0xFC00) == 0xD800)
  {
    *(a1 + 24) = v1 + 2;
    return *(v3 + 2 * (v1 + 1)) + (v4 << 10) - 56613888;
  }

  return v4;
}

uint64_t sub_1953C5AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if ((*(a1 + 24) & 0x80000000) != 0)
  {
    Decomposition = icu::Normalizer2Impl::getDecomposition(a2, a3, (a1 + 16), (a1 + 28));
    *(a1 + 8) = Decomposition;
    if (Decomposition)
    {
      *(a1 + 24) = 1;
      v3 = *Decomposition;
      if ((v3 & 0xFC00) == 0xD800)
      {
        *(a1 + 24) = 2;
        return Decomposition[1] + (v3 << 10) - 56613888;
      }
    }
  }

  return v3;
}

void sub_1953C5B58(uint64_t a1)
{
  *a1 = &unk_1F09423A0;
  icu::UnicodeString::~UnicodeString((a1 + 48));
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953C5BC0(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953C5BF8(uint64_t a1)
{
  v1 = *(a1 + 44);
  v2 = *(a1 + 40);
  if (v2 != v1)
  {
    v3 = *(a1 + 32);
    if ((v1 & 0x80000000) == 0 || *(v3 + v2))
    {
      v6 = v2 + 1;
      *(a1 + 40) = v2 + 1;
      v7 = *(v3 + v2);
      v4 = *(v3 + v2);
      if ((v7 & 0x80000000) == 0)
      {
        return v4;
      }

      if (v6 == v1)
      {
        return 65533;
      }

      if (v4 < 0xE0)
      {
        if (v4 < 0xC2)
        {
          return 65533;
        }

        v10 = v4 & 0x1F;
      }

      else
      {
        if (v4 > 0xEF)
        {
          if (v4 > 0xF4)
          {
            return 65533;
          }

          v12 = v4 - 240;
          v6 = *(v3 + v6);
          if (((byte_195492798[v6 >> 4] >> v12) & 1) == 0)
          {
            return 65533;
          }

          v13 = v2 + 2;
          *(a1 + 40) = v2 + 2;
          if (v2 + 2 == v1)
          {
            return 65533;
          }

          v9 = *(v3 + v13) ^ 0x80;
          if (v9 > 0x3F)
          {
            return 65533;
          }

          LODWORD(v8) = v6 & 0x3F | (v12 << 6);
          LODWORD(v6) = v13;
        }

        else
        {
          v8 = v7 & 0xF;
          if (((a00000000000000[v8] >> (*(v3 + v6) >> 5)) & 1) == 0)
          {
            return 65533;
          }

          v9 = *(v3 + v6) & 0x3F;
        }

        LODWORD(v6) = v6 + 1;
        *(a1 + 40) = v6;
        if (v6 == v1)
        {
          return 65533;
        }

        v10 = v9 | (v8 << 6);
      }

      v11 = *(v3 + v6) ^ 0x80;
      if (v11 <= 0x3F)
      {
        v4 = v11 | (v10 << 6);
        *(a1 + 40) = v6 + 1;
        return v4;
      }

      return 65533;
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_1953C5D1C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F0942430;
  icu::FCDUTF8CollationIterator::~FCDUTF8CollationIterator((a1 + 32), a2);
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953C5DB0(uint64_t result, void *a2, char a3, uint64_t a4, int a5)
{
  *(result + 8) = *a2;
  *(result + 16) = a2;
  *(result + 24) = 0;
  *(result + 32) = result + 48;
  *(result + 40) = 40;
  *(result + 44) = 0;
  *(result + 368) = 0;
  *(result + 376) = 0;
  *(result + 384) = -1;
  *(result + 388) = a3;
  *(result + 392) = a4;
  *result = &unk_1F09440D0;
  *(result + 400) = 0;
  *(result + 404) = a5;
  *(result + 416) = a2[6];
  *(result + 424) = &unk_1F0935D00;
  *(result + 432) = 2;
  return result;
}

void sub_1953C5E3C(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953C5E7C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F09424C0;
  icu::FCDUIterCollationIterator::~FCDUIterCollationIterator((a1 + 32), a2);
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953C5F10(icu::ByteSink *a1)
{
  icu::ByteSink::~ByteSink(a1);

  JUMPOUT(0x19A8B2600);
}

_DWORD *sub_1953C5F48(_DWORD *result, const void *a2, uint64_t a3, int a4)
{
  v4 = (result[4] - a4);
  if (v4 >= 1)
  {
    return memcpy((*(result + 1) + a4), a2, v4);
  }

  return result;
}

void sub_1953C5F70(icu::CollationKeys::LevelCallback *a1)
{
  icu::CollationKeys::LevelCallback::~LevelCallback(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953C5FA8(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v4 = v2[4];
  v3 = v2[5];
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v6 < 0 != v5)
  {
    return 0;
  }

  v7 = v6 + v2[6];
  *(a1 + 16) = a2;
  *(a1 + 20) = v7;
  return 1;
}

uint64_t icu::ScientificNumberFormatter::createInstance(icu::ScientificNumberFormatter *this, icu::DecimalFormat *a2, Style *a3, UErrorCode *a4)
{
  if (*a3 <= 0)
  {
    operator new();
  }

  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  if (this)
  {
    (*(*this + 8))(this);
  }

  return 0;
}

icu::UnicodeString *icu::ScientificNumberFormatter::SuperscriptStyle::format(icu::ScientificNumberFormatter::SuperscriptStyle *this, const icu::UnicodeString *a2, icu::FieldPositionIterator *a3, const icu::UnicodeString *a4, icu::UnicodeString *a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return a5;
  }

  v32 = 0;
  v30 = &unk_1F093AD90;
  v31 = 0xFFFFFFFFLL;
  if (!icu::FieldPositionIterator::next(a3, &v30))
  {
    LODWORD(v12) = 0;
LABEL_29:
    v26 = *(a2 + 4);
    v27 = v26;
    v28 = v26 >> 5;
    if (v27 < 0)
    {
      v28 = *(a2 + 3);
    }

    icu::UnicodeString::doAppend(a5, a2, v12, v28 - v12);
    goto LABEL_32;
  }

  v11 = 0;
  while (v31 != 5)
  {
    if (v31 == 4)
    {
      v17 = HIDWORD(v31);
      v12 = v32;
      v18 = icu::UnicodeString::char32At(4, a2, SHIDWORD(v31));
      v19 = icu::unisets::get(11);
      if (icu::UnicodeSet::contains(v19, v18))
      {
        icu::UnicodeString::doAppend(a5, a2, v11, (v17 - v11));
        v20 = 8315;
      }

      else
      {
        v25 = icu::unisets::get(12);
        if (!icu::UnicodeSet::contains(v25, v18))
        {
          goto LABEL_27;
        }

        icu::UnicodeString::doAppend(a5, a2, v11, (v17 - v11));
        v20 = 8314;
      }

      v33 = v20;
      icu::UnicodeString::doAppend(a5, &v33, 0, 1);
    }

    else if (v31 == 3)
    {
      icu::UnicodeString::doAppend(a5, a2, v11, (HIDWORD(v31) - v11));
      v12 = v32;
      v13 = *(a4 + 4);
      v14 = v13;
      v15 = v13 >> 5;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = *(a4 + 3);
      }

      icu::UnicodeString::doAppend(a5, a4, 0, v16);
    }

    else
    {
      v12 = v11;
    }

LABEL_25:
    v11 = v12;
    if (!icu::FieldPositionIterator::next(a3, &v30))
    {
      goto LABEL_29;
    }
  }

  icu::UnicodeString::doAppend(a5, a2, v11, (HIDWORD(v31) - v11));
  v21 = *a6;
  if (v21 > 0)
  {
    goto LABEL_32;
  }

  v22 = HIDWORD(v31);
  v12 = v32;
  if (SHIDWORD(v31) >= v32)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v23 = icu::UnicodeString::char32At(v21, a2, v22);
    v24 = u_charDigitValue(v23);
    if ((v24 & 0x80000000) != 0)
    {
      break;
    }

    v33 = word_1954929F6[v24];
    icu::UnicodeString::doAppend(a5, &v33, 0, 1);
    if (v23 < 0x10000)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    v22 += v21;
    if (v22 >= v12)
    {
      v12 = v32;
      goto LABEL_25;
    }
  }

LABEL_27:
  *a6 = U_INVALID_CHAR_FOUND;
LABEL_32:
  icu::FieldPosition::~FieldPosition(&v30);
  return a5;
}

icu::UnicodeString *icu::ScientificNumberFormatter::MarkupStyle::format(icu::ScientificNumberFormatter::MarkupStyle *this, const icu::UnicodeString *a2, icu::FieldPositionIterator *a3, const icu::UnicodeString *a4, icu::UnicodeString *a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    v36 = 0;
    v34 = &unk_1F093AD90;
    v35 = 0xFFFFFFFFLL;
    v11 = 0;
    if (icu::FieldPositionIterator::next(a3, &v34))
    {
      v33 = (this + 72);
      v12 = this + 80;
      v13 = this + 84;
      v14 = (this + 8);
      v15 = this + 16;
      v16 = this + 20;
      while (v35 != 5)
      {
        if (v35 == 3)
        {
          icu::UnicodeString::doAppend(a5, a2, v11, (HIDWORD(v35) - v11));
          v11 = v36;
          v17 = *(a4 + 4);
          v18 = v17;
          v19 = v17 >> 5;
          if (v18 >= 0)
          {
            v20 = v19;
          }

          else
          {
            v20 = *(a4 + 3);
          }

          icu::UnicodeString::doAppend(a5, a4, 0, v20);
          v21 = v15;
          v22 = v16;
          v23 = v14;
          goto LABEL_11;
        }

LABEL_15:
        if (!icu::FieldPositionIterator::next(a3, &v34))
        {
          goto LABEL_16;
        }
      }

      icu::UnicodeString::doAppend(a5, a2, v11, (v36 - v11));
      v11 = v36;
      v21 = v12;
      v22 = v13;
      v23 = v33;
LABEL_11:
      v24 = *v21;
      v25 = v24;
      v26 = v24 >> 5;
      v27 = *v22;
      if (v25 >= 0)
      {
        v28 = v26;
      }

      else
      {
        v28 = v27;
      }

      icu::UnicodeString::doAppend(a5, v23, 0, v28);
      goto LABEL_15;
    }

LABEL_16:
    v29 = *(a2 + 4);
    v30 = v29;
    v31 = v29 >> 5;
    if (v30 < 0)
    {
      v31 = *(a2 + 3);
    }

    icu::UnicodeString::doAppend(a5, a2, v11, v31 - v11);
    icu::FieldPosition::~FieldPosition(&v34);
  }

  return a5;
}

icu::ScientificNumberFormatter *icu::ScientificNumberFormatter::ScientificNumberFormatter(icu::ScientificNumberFormatter *this, icu::DecimalFormat *a2, Style *a3, UErrorCode *a4)
{
  *this = &unk_1F09425A8;
  v5 = (this + 8);
  *(this + 1) = &unk_1F0935D00;
  *(this + 8) = 2;
  *(this + 9) = a2;
  *(this + 10) = a3;
  if (*a4 <= 0)
  {
    if (a2 && a3 && (v7 = (*(*a2 + 320))(a2)) != 0)
    {
      icu::ScientificNumberFormatter::getPreExponent(v7, v5, v8);
    }

    else
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return this;
}

uint64_t icu::ScientificNumberFormatter::getPreExponent(icu::ScientificNumberFormatter *this, const icu::DecimalFormatSymbols *a2, icu::UnicodeString *a3)
{
  v5 = *(this + 872);
  v6 = v5;
  v7 = v5 >> 5;
  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(this + 437);
  }

  icu::UnicodeString::doAppend(a2, (this + 1736), 0, v8);
  v9 = *(this + 584);
  v10 = v9;
  v11 = v9 >> 5;
  if (v10 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(this + 293);
  }

  icu::UnicodeString::doAppend(a2, (this + 1160), 0, v12);
  v13 = *(this + 136);
  v14 = v13;
  v15 = v13 >> 5;
  if (v14 >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(this + 69);
  }

  return icu::UnicodeString::doAppend(a2, (this + 264), 0, v16);
}

void *icu::ScientificNumberFormatter::ScientificNumberFormatter(void *a1, uint64_t a2)
{
  *a1 = &unk_1F09425A8;
  icu::UnicodeString::UnicodeString((a1 + 1), (a2 + 8));
  a1[9] = 0;
  a1[10] = 0;
  a1[9] = (*(**(a2 + 72) + 32))(*(a2 + 72));
  a1[10] = (*(**(a2 + 80) + 24))(*(a2 + 80));
  return a1;
}

void icu::ScientificNumberFormatter::~ScientificNumberFormatter(icu::ScientificNumberFormatter *this)
{
  *this = &unk_1F09425A8;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeString::~UnicodeString((this + 8));

  icu::UObject::~UObject(this);
}

{
  icu::ScientificNumberFormatter::~ScientificNumberFormatter(this);

  JUMPOUT(0x19A8B2600);
}

icu::UnicodeString *icu::ScientificNumberFormatter::format(icu::ScientificNumberFormatter *this, const icu::Formattable *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v13 = 0u;
    v14 = 0u;
    v16 = 0;
    v15 = 0u;
    v12 = &unk_1F0935D00;
    LOWORD(v13) = 2;
    memset(v11, 0, sizeof(v11));
    icu::FieldPositionIterator::FieldPositionIterator(v11);
    (*(**(this + 9) + 48))(*(this + 9), a2, &v12, v11, a4);
    a3 = (*(**(this + 10) + 32))(*(this + 10), &v12, v11, this + 8, a3, a4);
    icu::FieldPositionIterator::~FieldPositionIterator(v11);
    icu::UnicodeString::~UnicodeString(v8, &v12);
  }

  v9 = *MEMORY[0x1E69E9840];
  return a3;
}

void sub_1953C6C5C(uint64_t a1)
{
  *a1 = &unk_1F09425D0;
  v2 = (a1 + 8);
  icu::UnicodeString::~UnicodeString((a1 + 72));
  icu::UnicodeString::~UnicodeString(v2);

  icu::UObject::~UObject(a1);
}

void sub_1953C6CC0(uint64_t a1)
{
  *a1 = &unk_1F09425D0;
  v2 = (a1 + 8);
  icu::UnicodeString::~UnicodeString((a1 + 72));
  icu::UnicodeString::~UnicodeString(v2);
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953C6D3C(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::ScriptSet::ScriptSet(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

__n128 icu::ScriptSet::ScriptSet(icu::ScriptSet *this, const icu::ScriptSet *a2)
{
  result = *a2;
  *(this + 12) = *(a2 + 12);
  *this = result;
  return result;
}

{
  result = *a2;
  *(this + 12) = *(a2 + 12);
  *this = result;
  return result;
}

__n128 icu::ScriptSet::operator=(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

BOOL icu::ScriptSet::operator==(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 6)
    {
      break;
    }

    v4 = a1[v2 + 1];
    v5 = a2[++v2];
  }

  while (v4 == v5);
  return v3 > 5;
}

uint64_t icu::ScriptSet::test(uint64_t a1, unsigned int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 < 0xE0)
  {
    return (*(a1 + 4 * (a2 >> 5)) >> a2) & 1;
  }

  result = 0;
  *a3 = 1;
  return result;
}

uint64_t icu::ScriptSet::set(uint64_t result, unsigned int a2, int *a3)
{
  if (*a3 <= 0)
  {
    if (a2 < 0xE0)
    {
      *(result + 4 * (a2 >> 5)) |= 1 << a2;
    }

    else
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t icu::ScriptSet::reset(uint64_t result, unsigned int a2, int *a3)
{
  if (*a3 <= 0)
  {
    if (a2 < 0xE0)
    {
      *(result + 4 * (a2 >> 5)) &= ~(1 << a2);
    }

    else
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t icu::ScriptSet::Union(uint64_t this, const icu::ScriptSet *a2)
{
  for (i = 0; i != 28; i += 4)
  {
    *(this + i) |= *(a2 + i);
  }

  return this;
}

uint64_t icu::ScriptSet::intersect(uint64_t this, const icu::ScriptSet *a2)
{
  for (i = 0; i != 28; i += 4)
  {
    *(this + i) &= *(a2 + i);
  }

  return this;
}

uint64_t icu::ScriptSet::intersect(uint64_t result, unsigned int a2, int *a3)
{
  v5 = 0;
  v4[2] = 0;
  if (*a3 <= 0)
  {
    if (a2 < 0xE0)
    {
      v3 = 0;
      *(v4 + (a2 >> 5)) |= 1 << a2;
      do
      {
        *(result + v3) &= *(v4 + v3);
        v3 += 4;
      }

      while (v3 != 28);
    }

    else
    {
      *a3 = 1;
    }
  }

  return result;
}

BOOL icu::ScriptSet::intersects(icu::ScriptSet *this, const icu::ScriptSet *a2)
{
  if ((*a2 & *this) != 0)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v3 == 6)
    {
      break;
    }

    v5 = *(this + v3 + 1);
    v6 = *(a2 + ++v3);
  }

  while ((v6 & v5) == 0);
  return v4 < 6;
}

BOOL icu::ScriptSet::contains(icu::ScriptSet *this, const icu::ScriptSet *a2)
{
  v2 = 0;
  v3 = *this;
  *&v9[3] = *(this + 12);
  do
  {
    v9[v2] &= *(a2 + v2 * 4);
    ++v2;
  }

  while (v2 != 7);
  if (v9[0] != *a2)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v4 == 6)
    {
      break;
    }

    v6 = v9[v4 + 1];
    v7 = *(a2 + ++v4);
  }

  while (v6 == v7);
  return v5 > 5;
}

uint64_t icu::ScriptSet::setAll(uint64_t this)
{
  *(this + 8) = -1;
  *(this + 16) = -1;
  *this = -1;
  *(this + 24) = -1;
  return this;
}

uint64_t icu::ScriptSet::resetAll(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t icu::ScriptSet::countMembers(icu::ScriptSet *this, int8x8_t a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    if (*(this + v2))
    {
      a2.i32[0] = *(this + v2);
      a2 = vcnt_s8(a2);
      a2.i16[0] = vaddlv_u8(a2);
      v3 = (a2.i32[0] + v3);
    }

    v2 += 4;
  }

  while (v2 != 28);
  return v3;
}

uint64_t icu::ScriptSet::hashCode(icu::ScriptSet *this)
{
  v1 = 0;
  LODWORD(v2) = 0;
  do
  {
    v2 = *(this + v1) ^ v2;
    v1 += 4;
  }

  while (v1 != 28);
  return v2;
}

uint64_t icu::ScriptSet::nextSetBit(icu::ScriptSet *this, uint64_t a2)
{
  if (a2 <= 0xDF)
  {
    v3 = 0;
    do
    {
      if (v3 <= 0)
      {
        if (a2 <= 0xDF)
        {
          if ((*(this + (a2 >> 5)) >> a2))
          {
            return a2;
          }
        }

        else
        {
          v3 = 1;
        }
      }

      a2 = (a2 + 1);
    }

    while (a2 != 224);
  }

  return 0xFFFFFFFFLL;
}

BOOL icu::ScriptSet::isEmpty(icu::ScriptSet *this)
{
  if (*this)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 6)
    {
      break;
    }
  }

  while (!*(this + ++v2));
  return v3 > 5;
}

icu::UnicodeString *icu::ScriptSet::displayScripts(icu::ScriptSet *this, icu::UnicodeString *a2)
{
  v4 = 0;
  v14 = *MEMORY[0x1E69E9840];
  do
  {
    if ((*(this + (v4 >> 5)) >> v4))
    {
      while (1)
      {
        ShortName = uscript_getShortName(v4);
        icu::UnicodeString::UnicodeString(&v11, ShortName, 0xFFFFFFFFLL, 0);
        if ((v12 & 0x8000u) == 0)
        {
          v8 = v12 >> 5;
        }

        else
        {
          v8 = v13;
        }

        icu::UnicodeString::doAppend(a2, &v11, 0, v8);
        icu::UnicodeString::~UnicodeString(v9, &v11);
        if (v4 > 0xDE)
        {
          goto LABEL_4;
        }

        v10 = 0;
        ++v4;
        while (v10 > 0)
        {
LABEL_11:
          if (++v4 == 224)
          {
            goto LABEL_4;
          }
        }

        if (v4 > 0xDF)
        {
          break;
        }

        if (((*(this + (v4 >> 5)) >> v4) & 1) == 0)
        {
          goto LABEL_11;
        }

        v11 = 32;
        icu::UnicodeString::doAppend(a2, &v11, 0, 1);
      }

      v10 = 1;
      goto LABEL_11;
    }

    ++v4;
  }

  while (v4 != 224);
LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
  return a2;
}

icu::ScriptSet *icu::ScriptSet::parseScripts(icu::ScriptSet *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  if (*a3 <= 0)
  {
    *length = 0u;
    v25 = 0u;
    v27 = 0;
    v26 = 0u;
    v23 = &unk_1F0935D00;
    LOWORD(length[0]) = 2;
    v5 = *(a2 + 4);
    v6 = v5;
    LODWORD(v7) = v5 >> 5;
    if (v6 >= 0)
    {
      v7 = v7;
    }

    else
    {
      v7 = *(a2 + 3);
    }

    if (v7 >= 1)
    {
      v9 = 0;
      do
      {
        v10 = icu::UnicodeString::char32At(v7, a2, v9);
        v9 = icu::UnicodeString::moveIndex32(a2, v9, 1);
        if (!u_isUWhiteSpace(v10))
        {
          icu::UnicodeString::append(&v23, v10);
          v11 = *(a2 + 4);
          v12 = v11;
          v13 = v11 >> 5;
          if (v12 < 0)
          {
            v13 = *(a2 + 3);
          }

          if (v9 < v13)
          {
            goto LABEL_23;
          }
        }

        if (SLOWORD(length[0]) < 0)
        {
          v14 = length[1];
          if (length[1] <= 0)
          {
            goto LABEL_23;
          }

          v22 = 0;
        }

        else
        {
          if (LOWORD(length[0]) < 0x20u)
          {
            goto LABEL_23;
          }

          v22 = 0;
          v14 = LOWORD(length[0]) >> 5;
        }

        memset(v21, 0, sizeof(v21));
        icu::UnicodeString::extract(&v23, 0, v14, v21, 39);
        HIBYTE(v22) = 0;
        PropertyValueEnum = u_getPropertyValueEnum(UCHAR_SCRIPT, v21);
        if (PropertyValueEnum == -1)
        {
          goto LABEL_28;
        }

        v7 = *a3;
        if (v7 > 0)
        {
          break;
        }

        if (PropertyValueEnum > 0xDF)
        {
LABEL_28:
          v7 = 1;
          *a3 = U_ILLEGAL_ARGUMENT_ERROR;
          break;
        }

        *(this + (PropertyValueEnum >> 5)) |= 1 << PropertyValueEnum;
        if (length[0])
        {
          v16 = 2;
        }

        else
        {
          v16 = length[0] & 0x1E;
        }

        LOWORD(length[0]) = v16;
LABEL_23:
        v17 = *(a2 + 4);
        v18 = v17;
        LODWORD(v7) = v17 >> 5;
        if (v18 >= 0)
        {
          v7 = v7;
        }

        else
        {
          v7 = *(a2 + 3);
        }
      }

      while (v9 < v7);
    }

    icu::UnicodeString::~UnicodeString(v7, &v23);
  }

  v19 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::ScriptSet::setScriptExtensions(icu::ScriptSet *this, unsigned int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v21 = v3;
    v22 = v4;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    v18 = v19 + 8;
    LODWORD(v19[0]) = 20;
    v17 = U_ZERO_ERROR;
    ScriptExtensions = uscript_getScriptExtensions(a2, v19 + 2, 20, &v17);
    v9 = v17;
    if (v17 == U_BUFFER_OVERFLOW_ERROR)
    {
      while (ScriptExtensions >= 1)
      {
        v10 = malloc_type_malloc(4 * ScriptExtensions, 0x100004052888210uLL);
        if (!v10)
        {
          break;
        }

        v11 = v10;
        if (BYTE4(v19[0]))
        {
          free(v18);
        }

        v18 = v11;
        LODWORD(v19[0]) = ScriptExtensions;
        BYTE4(v19[0]) = 1;
        v17 = U_ZERO_ERROR;
        ScriptExtensions = uscript_getScriptExtensions(a2, v11, ScriptExtensions, &v17);
        v9 = v17;
        if (v17 != U_BUFFER_OVERFLOW_ERROR)
        {
          goto LABEL_8;
        }
      }

      v9 = U_MEMORY_ALLOCATION_ERROR;
    }

    else
    {
LABEL_8:
      if (v9 <= U_ZERO_ERROR)
      {
        if (ScriptExtensions >= 1)
        {
          v12 = *a3;
          v13 = v18;
          v14 = ScriptExtensions;
          while (v12 <= 0)
          {
            v16 = *v13++;
            v15 = v16;
            if (v16 >= 0xE0)
            {
              v9 = U_ILLEGAL_ARGUMENT_ERROR;
              goto LABEL_16;
            }

            *(this + ((v15 >> 3) & 0x1FFFFFFC)) |= 1 << v15;
            if (!--v14)
            {
              goto LABEL_17;
            }
          }
        }

        goto LABEL_17;
      }
    }

LABEL_16:
    *a3 = v9;
LABEL_17:
    if (BYTE4(v19[0]))
    {
      free(v18);
    }
  }
}

BOOL uhash_equalsScriptSet(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v2 == 6)
    {
      break;
    }

    v4 = a1[v2 + 1];
    v5 = a2[++v2];
  }

  while (v4 == v5);
  return v3 > 5;
}

uint64_t uhash_compareScriptSet(uint64_t a1, uint64_t a2, int8x8_t a3)
{
  v3 = 0;
  v4 = 0;
  do
  {
    if (*(a1 + v3))
    {
      a3.i32[0] = *(a1 + v3);
      a3 = vcnt_s8(a3);
      a3.i16[0] = vaddlv_u8(a3);
      v4 += a3.i32[0];
    }

    v3 += 4;
  }

  while (v3 != 28);
  v5 = 0;
  v6 = 0;
  do
  {
    if (*(a2 + v5))
    {
      a3.i32[0] = *(a2 + v5);
      a3 = vcnt_s8(a3);
      a3.i16[0] = vaddlv_u8(a3);
      v6 += a3.i32[0];
    }

    v5 += 4;
  }

  while (v5 != 28);
  v7 = v4 - v6;
  if (!v7)
  {
    while (((*(a1 + 4 * (v7 >> 5)) >> v7) & 1) == 0)
    {
      if (++v7 == 224)
      {
        v7 = -1;
        break;
      }
    }

    v8 = 0;
    while (((*(a2 + 4 * (v8 >> 5)) >> v8) & 1) == 0)
    {
      if (++v8 == 224)
      {
LABEL_16:
        v8 = -1;
        break;
      }
    }

LABEL_17:
    if (v7 >= 1 && v7 == v8)
    {
      if (v7 <= 0xDE)
      {
        v9 = 0;
        v8 = ++v7;
        while (1)
        {
          if (v9 <= 0)
          {
            if (v7 <= 0xDF)
            {
              if ((*(a1 + 4 * (v7 >> 5)) >> v7))
              {
                goto LABEL_27;
              }
            }

            else
            {
              v9 = 1;
            }
          }

          if (++v7 == 224)
          {
            v7 = -1;
LABEL_27:
            v10 = 0;
            while (1)
            {
              if (v10 <= 0)
              {
                if (v8 <= 0xDF)
                {
                  if ((*(a2 + 4 * (v8 >> 5)) >> v8))
                  {
                    goto LABEL_17;
                  }
                }

                else
                {
                  v10 = 1;
                }
              }

              if (++v8 == 224)
              {
                goto LABEL_16;
              }
            }
          }
        }
      }

      LOBYTE(v7) = -1;
      LOBYTE(v8) = -1;
    }

    LOBYTE(v7) = v7 - v8;
  }

  return v7;
}

uint64_t uhash_hashScriptSet(uint64_t a1)
{
  v1 = 0;
  LODWORD(v2) = 0;
  do
  {
    v2 = *(a1 + v1) ^ v2;
    v1 += 4;
  }

  while (v1 != 28);
  return v2;
}

uint64_t uhash_deleteScriptSet(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t icu::SearchIterator::SearchIterator(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F09426A0;
  *(a1 + 32) = 2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = &unk_1F0935D00;
  icu::UnicodeString::operator=((a1 + 24), (a2 + 24));
  v4 = malloc_type_malloc(0x30uLL, 0x10700405B6EB62AuLL);
  *(a1 + 8) = v4;
  v5 = *(a2 + 8);
  v4[3] = *(v5 + 24);
  *(v4 + 3) = *(v5 + 12);
  v4[4] = *(v5 + 32);
  *v4 = *v5;
  *(v4 + 2) = *(v5 + 8);
  return a1;
}

void icu::SearchIterator::~SearchIterator(icu::SearchIterator *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F09426A0;
  v3 = *(this + 1);
  if (v3)
  {
    free(v3);
  }

  icu::UnicodeString::~UnicodeString(a2, (this + 24));

  icu::UObject::~UObject(this);
}

uint64_t icu::SearchIterator::setAttribute(uint64_t result, int a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a2 == 2)
    {
      if ((a3 - 3) <= 1)
      {
        *(*(result + 8) + 14) = a3;
        return result;
      }

      *(*(result + 8) + 14) = 0;
    }

    else if (a2 == 1)
    {
      *(*(result + 8) + 13) = a3 == 1;
    }

    else if (a2)
    {
      *a4 = 1;
    }

    else
    {
      *(*(result + 8) + 12) = a3 == 1;
    }
  }

  if (a3 == 5)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t icu::SearchIterator::getAttribute(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 2:
      v4 = *(*(a1 + 8) + 14);
      if (((v4 - 3) & 0xFFFE) != 0)
      {
        return 2;
      }

      return v4;
    case 1:
      v2 = *(*(a1 + 8) + 13);
      return v2 != 0;
    case 0:
      v2 = *(*(a1 + 8) + 12);
      return v2 != 0;
    default:
      return 0xFFFFFFFFLL;
  }
}

uint64_t icu::SearchIterator::getMatchedText(uint64_t this, icu::UnicodeString *a2)
{
  v3 = *(this + 8);
  v4 = *(v3 + 36);
  v5 = *(v3 + 32);
  if (v5 == -1 || v4 == 0)
  {
    if (*(a2 + 4))
    {
      v7 = 2;
    }

    else
    {
      v7 = *(a2 + 4) & 0x1E;
    }

    *(a2 + 4) = v7;
  }

  else
  {
    v8 = *v3 + 2 * v5;
    icu::UnicodeString::unBogus(a2);
    v9 = *(a2 + 4);
    v10 = v9;
    v11 = v9 >> 5;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a2 + 3);
    }

    return icu::UnicodeString::doReplace(a2, 0, v12, v8, 0, v4);
  }

  return this;
}

uint64_t icu::SearchIterator::setBreakIterator(uint64_t this, icu::BreakIterator *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    *(*(this + 8) + 24) = a2;
    *(this + 16) = a2;
  }

  return this;
}

icu::UnicodeString *icu::SearchIterator::setText(icu::UnicodeString *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v3 = *(a2 + 4);
    v4 = v3;
    v5 = v3 >> 5;
    if (v4 < 0)
    {
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v6 = this;
      this = icu::UnicodeString::operator=(this + 3, a2);
      v7 = *(v6 + 32);
      if ((v7 & 0x11) != 0)
      {
        v8 = 0;
      }

      else if ((v7 & 2) != 0)
      {
        v8 = v6 + 34;
      }

      else
      {
        v8 = *(v6 + 48);
      }

      v9 = *(v6 + 8);
      *v9 = v8;
      if (*(v6 + 32) < 0)
      {
        v10 = *(v6 + 36);
      }

      else
      {
        v10 = *(v6 + 32) >> 5;
      }

      *(v9 + 8) = v10;
    }

    else
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return this;
}

uint64_t icu::SearchIterator::setText(uint64_t this, icu::CharacterIterator *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    (*(*a2 + 208))(a2, this + 24);
    v6 = *(*v5 + 40);

    return v6(v5, v5 + 24, a3);
  }

  return this;
}

BOOL icu::SearchIterator::operator==(void *a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (a1[2] != *(a2 + 16))
  {
    return 0;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (*(v4 + 13) != *(v5 + 13))
  {
    return 0;
  }

  if (*(v4 + 12) != *(v5 + 12))
  {
    return 0;
  }

  if (*(v4 + 14) != *(v5 + 14))
  {
    return 0;
  }

  if (*(v4 + 32) != *(v5 + 32))
  {
    return 0;
  }

  if (*(v4 + 36) != *(v5 + 36))
  {
    return 0;
  }

  if (*(v4 + 8) != *(v5 + 8))
  {
    return 0;
  }

  v6 = (*(*a1 + 32))(a1);
  if (v6 != (*(*a2 + 32))(a2))
  {
    return 0;
  }

  v7 = a1[1];
  v8 = *(v7 + 8);
  return !v8 || memcmp(*v7, **(a2 + 8), 2 * v8) == 0;
}

uint64_t icu::SearchIterator::first(icu::SearchIterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*this + 24))(this, 0, a2);
  v6 = *(*this + 80);

  return v6(this, 0, a2);
}

uint64_t icu::SearchIterator::following(icu::SearchIterator *this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*this + 24))(this);
  v8 = *(*this + 80);

  return v8(this, a2, a3);
}

uint64_t icu::SearchIterator::last(icu::SearchIterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*this + 24))(this, *(*(this + 1) + 8), a2);
  v6 = *(*(this + 1) + 8);
  v7 = *(*this + 88);

  return v7(this, v6, a2);
}

uint64_t icu::SearchIterator::preceding(icu::SearchIterator *this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*this + 24))(this);
  v8 = *(*this + 88);

  return v8(this, a2, a3);
}

uint64_t icu::SearchIterator::next(icu::SearchIterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = (*(*this + 32))(this);
  v5 = *(this + 1);
  result = *(v5 + 32);
  v7 = *(v5 + 36);
  *(v5 + 41) = 0;
  if (*(v5 + 40))
  {
    v8 = *(v5 + 8);
    v9 = v4 == v8 || result == v8;
    if (v9 || (result != -1 ? (v10 = v7 + result < v8) : (v10 = 1), !v10))
    {
      icu::SearchIterator::setMatchNotFound(this);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(v5 + 40) = 1;
    if (result != -1)
    {
      return result;
    }
  }

  if (v7 >= 1)
  {
    v11 = v7 + v4;
    if (*(v5 + 12))
    {
      v4 = (v4 + 1);
    }

    else
    {
      v4 = v11;
    }
  }

  v12 = *(*this + 80);

  return v12(this, v4, a2);
}

uint64_t icu::SearchIterator::setMatchNotFound(icu::SearchIterator *this)
{
  (*(*this + 104))(this, 0xFFFFFFFFLL);
  (*(*this + 96))(this, 0);
  v5 = 0;
  v2 = *(this + 1);
  if (*(v2 + 40))
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  return (*(*this + 24))(this, v3, &v5);
}

uint64_t icu::SearchIterator::previous(icu::SearchIterator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 1);
  if (*(v6 + 41))
  {
    v7 = *(v6 + 8);
    *(v6 + 40) = 0;
    (*(*this + 24))(this, v7, a2);
  }

  else
  {
    v7 = (*(*this + 32))(this);
  }

  v8 = *(this + 1);
  v2 = *(v8 + 32);
  if (*(v8 + 40))
  {
    *(v8 + 40) = 0;
    if (v2 != -1)
    {
      return v2;
    }
  }

  else
  {
    if (v7)
    {
      v9 = v2 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      icu::SearchIterator::setMatchNotFound(this);
      return 0xFFFFFFFFLL;
    }

    if (v2 != -1)
    {
      if (*(v8 + 12))
      {
        v2 = (v2 + *(v8 + 36) - 2);
      }

      v10 = *(*this + 88);
      v11 = this;
      goto LABEL_21;
    }
  }

  v10 = *(*this + 88);
  v11 = this;
  v2 = v7;
LABEL_21:

  return v10(v11, v2, a2);
}

uint64_t icu::SearchIterator::reset(icu::SearchIterator *this)
{
  v4 = 0;
  icu::SearchIterator::setMatchNotFound(this);
  result = (*(*this + 24))(this, 0, &v4);
  v3 = *(this + 1);
  *(v3 + 12) = 0;
  *(v3 + 40) = 257;
  return result;
}

icu::SearchIterator *icu::SearchIterator::SearchIterator(icu::SearchIterator *this)
{
  *this = &unk_1F09426A0;
  *(this + 3) = &unk_1F0935D00;
  *(this + 16) = 2;
  v2 = malloc_type_malloc(0x30uLL, 0x10700405B6EB62AuLL);
  *(this + 1) = v2;
  v2[3] = 0;
  *(v2 + 20) = 257;
  v2[4] = 0xFFFFFFFFLL;
  *v2 = 0;
  v2[1] = 0;
  *(this + 2) = 0;
  return this;
}

icu::SearchIterator *icu::SearchIterator::SearchIterator(icu::SearchIterator *this, UChar **a2, icu::BreakIterator *a3)
{
  *this = &unk_1F09426A0;
  *(this + 2) = a3;
  icu::UnicodeString::UnicodeString((this + 24), a2);
  v5 = malloc_type_malloc(0x30uLL, 0x10700405B6EB62AuLL);
  v6 = 0;
  *(this + 1) = v5;
  v5[3] = 0;
  *(v5 + 3) = 0;
  *(v5 + 20) = 257;
  v5[4] = 0xFFFFFFFFLL;
  v7 = *(this + 16);
  if ((v7 & 0x11) == 0)
  {
    if ((v7 & 2) != 0)
    {
      v6 = this + 34;
    }

    else
    {
      v6 = *(this + 6);
    }
  }

  *v5 = v6;
  v8 = *(a2 + 4);
  v9 = v8;
  v10 = v8 >> 5;
  if (v9 < 0)
  {
    v10 = *(a2 + 3);
  }

  *(v5 + 2) = v10;
  return this;
}

icu::SearchIterator *icu::SearchIterator::SearchIterator(icu::SearchIterator *this, icu::CharacterIterator *a2, icu::BreakIterator *a3)
{
  *this = &unk_1F09426A0;
  v6 = this + 24;
  *(this + 2) = a3;
  *(this + 3) = &unk_1F0935D00;
  *(this + 16) = 2;
  v7 = malloc_type_malloc(0x30uLL, 0x10700405B6EB62AuLL);
  *(this + 1) = v7;
  v7[3] = 0;
  *(v7 + 3) = 0;
  *(v7 + 20) = 257;
  v7[4] = 0xFFFFFFFFLL;
  (*(*a2 + 208))(a2, v6);
  v8 = 0;
  v9 = *(this + 16);
  if ((v9 & 0x11) == 0)
  {
    if ((v9 & 2) != 0)
    {
      v8 = this + 34;
    }

    else
    {
      v8 = *(this + 6);
    }
  }

  v10 = *(this + 1);
  *v10 = v8;
  if (*(this + 16) < 0)
  {
    v11 = *(this + 9);
  }

  else
  {
    v11 = *(this + 16) >> 5;
  }

  *(v10 + 8) = v11;
  *(this + 2) = a3;
  return this;
}

uint64_t icu::SearchIterator::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 16) = *(a2 + 16);
    icu::UnicodeString::operator=((a1 + 24), (a2 + 24));
    v4 = *(a2 + 8);
    v5 = *(a1 + 8);
    *(v5 + 24) = *(v4 + 24);
    *(v5 + 12) = *(v4 + 12);
    *(v5 + 32) = *(v4 + 32);
    *v5 = *v4;
    *(v5 + 8) = *(v4 + 8);
  }

  return a1;
}

icu::SelectFormat *icu::SelectFormat::SelectFormat(icu::SelectFormat *this, UChar **a2, UErrorCode *a3)
{
  v6 = icu::Format::Format(this);
  *v6 = &unk_1F0942738;
  icu::MessagePattern::MessagePattern((v6 + 41), a3);
  icu::SelectFormat::applyPattern(this, a2, a3);
  return this;
}

icu::MessagePattern *icu::SelectFormat::applyPattern(icu::MessagePattern *this, UChar **a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    this = icu::MessagePattern::parseSelectStyle((this + 328), a2, 0, a3);
    if (*a3 >= 1)
    {

      return icu::MessagePattern::clear(v4 + 328);
    }
  }

  return this;
}

icu::SelectFormat *icu::SelectFormat::SelectFormat(icu::SelectFormat *this, const icu::SelectFormat *a2)
{
  v4 = icu::Format::Format(this, a2);
  *v4 = &unk_1F0942738;
  icu::MessagePattern::MessagePattern((v4 + 41), (a2 + 328));
  return this;
}

{
  v4 = icu::Format::Format(this, a2);
  *v4 = &unk_1F0942738;
  icu::MessagePattern::MessagePattern((v4 + 41), (a2 + 328));
  return this;
}

void icu::SelectFormat::~SelectFormat(icu::SelectFormat *this)
{
  *this = &unk_1F0942738;
  icu::MessagePattern::~MessagePattern((this + 328));

  icu::Format::~Format(this);
}

{
  *this = &unk_1F0942738;
  icu::MessagePattern::~MessagePattern((this + 328));

  icu::Format::~Format(this);
}

{
  *this = &unk_1F0942738;
  icu::MessagePattern::~MessagePattern((this + 328));
  icu::Format::~Format(this);

  JUMPOUT(0x19A8B2600);
}

icu::UnicodeString *icu::SelectFormat::format(icu::SelectFormat *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return a3;
  }

  if (icu::Formattable::getType(a2) != 3)
  {
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return a3;
  }

  String = icu::Formattable::getString(a2, a5);

  return icu::SelectFormat::format(this, String, a3, v10, a5);
}

icu::UnicodeString *icu::SelectFormat::format(icu::SelectFormat *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return a3;
  }

  v10 = *(a2 + 4);
  if ((v10 & 0x11) != 0)
  {
    v11 = 0;
  }

  else if ((v10 & 2) != 0)
  {
    v11 = (a2 + 10);
  }

  else
  {
    v11 = *(a2 + 3);
  }

  v12 = v10;
  v13 = v10 >> 5;
  if (v12 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(a2 + 3);
  }

  if (!icu::PatternProps::isIdentifier(v11, v14))
  {
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  if (!*(this + 106))
  {
    *a5 = U_INVALID_STATE_ERROR;
    return a3;
  }

  SubMessage = icu::SelectFormat::findSubMessage((this + 328), 0, a2, a5, v15);
  if (*(this + 84) != 1)
  {
    v18 = *(this + 52);
    v19 = v18 + 16 * SubMessage;
    v20 = *(v19 + 4) + *(v19 + 8);
    v21 = *(v19 + 12);
    if (v21 <= SubMessage)
    {
      v21 = SubMessage;
    }

    icu::UnicodeString::doAppend(a3, (this + 344), v20, (*(v18 + 16 * v21 + 4) - v20));
    return a3;
  }

  return icu::MessageImpl::appendSubMessageWithoutSkipSyntax((this + 328), SubMessage, a3, v17);
}

uint64_t icu::SelectFormat::findSubMessage(icu::SelectFormat *this, const icu::MessagePattern *a2, uint64_t a3, const icu::UnicodeString *a4, UErrorCode *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v7 = a2;
    memset(v17, 0, sizeof(v17));
    v16 = "o";
    icu::UnicodeString::UnicodeString(v17, 0, &v16);
    v5 = 0;
    v9 = *(this + 24);
    v10 = *(this + 11);
    do
    {
      v11 = &v10[4 * v7];
      v10 = *v11;
      if (v10 == 6)
      {
        break;
      }

      v12 = v7 + 1;
      if (sub_195346AE8(this, v11, a3))
      {
        v5 = v12;
        break;
      }

      if (!v5)
      {
        if (sub_195346AE8(this, v11, v17))
        {
          v5 = v12;
        }

        else
        {
          v5 = 0;
        }
      }

      v10 = *(this + 11);
      v13 = v10[4 * v12 + 3];
      if (v13 <= v12)
      {
        v13 = v12;
      }

      v7 = v13 + 1;
    }

    while (v13 + 1 < v9);
    icu::UnicodeString::~UnicodeString(v10, v17);
  }

  else
  {
    v5 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

icu::UnicodeString *icu::SelectFormat::toPattern(icu::SelectFormat *this, icu::UnicodeString *a2)
{
  if (*(this + 106))
  {
    v3 = *(this + 176);
    v4 = v3;
    v5 = v3 >> 5;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *(this + 89);
    }

    icu::UnicodeString::doAppend(a2, (this + 344), 0, v6);
  }

  else
  {
    icu::UnicodeString::setToBogus(a2);
  }

  return a2;
}

uint64_t icu::SelectFormat::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::MessagePattern::operator=(a1 + 328, a2 + 328);
  }

  return a1;
}

uint64_t icu::SelectFormat::operator==(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::Format::operator==(a1, a2);
  if (result)
  {

    return icu::MessagePattern::operator==((a1 + 41), (a2 + 41));
  }

  return result;
}

void *icu::SharedBreakIterator::SharedBreakIterator(void *this, icu::BreakIterator *a2)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F09427A8;
  this[3] = a2;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F09427A8;
  this[3] = a2;
  return this;
}

void icu::SharedBreakIterator::~SharedBreakIterator(icu::SharedBreakIterator *this)
{
  *this = &unk_1F09427A8;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::SharedObject::~SharedObject(this);
}

{
  icu::SharedBreakIterator::~SharedBreakIterator(this);

  JUMPOUT(0x19A8B2600);
}

double icu::SimpleTimeZone::SimpleTimeZone(icu::SimpleTimeZone *this, int a2, UChar **a3)
{
  v4 = icu::BasicTimeZone::BasicTimeZone(this, a3);
  *v4 = &unk_1F09427E8;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 23) = 0;
  *(v4 + 24) = 0;
  *(v4 + 76) = 0;
  *(v4 + 83) = 0;
  *(v4 + 25) = a2;
  *(v4 + 104) = 0;
  *(v4 + 108) = 0x100000001;
  *(v4 + 29) = 3600000;
  *(v4 + 120) = 0;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  return result;
}

double icu::SimpleTimeZone::clearTransitionRules(icu::SimpleTimeZone *this)
{
  *(this + 120) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  return result;
}

icu::SimpleTimeZone *icu::SimpleTimeZone::SimpleTimeZone(icu::SimpleTimeZone *this, int a2, UChar **a3, char a4, char a5, char a6, int a7, char a8, char a9, char a10, int a11, UErrorCode *a12)
{
  v18 = icu::BasicTimeZone::BasicTimeZone(this, a3);
  *v18 = &unk_1F09427E8;
  *(v18 + 120) = 0;
  *(v18 + 8) = 0u;
  *(v18 + 9) = 0u;
  *(v18 + 24) = 0;
  *(v18 + 25) = a2;
  *(v18 + 72) = a4;
  *(v18 + 73) = a5;
  *(v18 + 74) = a6;
  *(v18 + 88) = a8;
  *(v18 + 89) = a9;
  *(v18 + 90) = a10;
  *(v18 + 10) = 0;
  *(v18 + 19) = a7;
  *(v18 + 29) = 3600000;
  *(v18 + 23) = a11;
  *(v18 + 108) = 0x100000001;
  icu::SimpleTimeZone::decodeStartRule(v18, a12);
  icu::SimpleTimeZone::decodeEndRule(this, a12);
  return this;
}

{
  return icu::SimpleTimeZone::SimpleTimeZone(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t icu::SimpleTimeZone::construct(uint64_t a1, int a2, char a3, char a4, char a5, int a6, int a7, char a8, char a9, char a10, int a11, int a12, int a13, UErrorCode *a14)
{
  *(a1 + 96) = 0;
  *(a1 + 100) = a2;
  *(a1 + 72) = a3;
  *(a1 + 73) = a4;
  *(a1 + 74) = a5;
  *(a1 + 76) = a6;
  *(a1 + 80) = a7;
  *(a1 + 88) = a8;
  *(a1 + 89) = a9;
  *(a1 + 90) = a10;
  *(a1 + 84) = a12;
  *(a1 + 116) = a13;
  *(a1 + 92) = a11;
  *(a1 + 108) = 0x100000001;
  icu::SimpleTimeZone::decodeStartRule(a1, a14);
  result = icu::SimpleTimeZone::decodeEndRule(a1, a14);
  if (!a13)
  {
    *a14 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return result;
}

icu::SimpleTimeZone *icu::SimpleTimeZone::SimpleTimeZone(icu::SimpleTimeZone *this, int a2, UChar **a3, char a4, char a5, char a6, int a7, char a8, char a9, char a10, int a11, int a12, UErrorCode *a13)
{
  v18 = icu::BasicTimeZone::BasicTimeZone(this, a3);
  *v18 = &unk_1F09427E8;
  *(v18 + 120) = 0;
  *(v18 + 8) = 0u;
  *(v18 + 9) = 0u;
  icu::SimpleTimeZone::construct(v18, a2, a4, a5, a6, a7, 0, a8, a9, a10, a11, 0, a12, a13);
  return this;
}

{
  v18 = icu::BasicTimeZone::BasicTimeZone(this, a3);
  *v18 = &unk_1F09427E8;
  *(v18 + 120) = 0;
  *(v18 + 8) = 0u;
  *(v18 + 9) = 0u;
  icu::SimpleTimeZone::construct(v18, a2, a4, a5, a6, a7, 0, a8, a9, a10, a11, 0, a12, a13);
  return this;
}

icu::BasicTimeZone *icu::SimpleTimeZone::SimpleTimeZone(icu::BasicTimeZone *a1, int a2, UChar **a3, char a4, char a5, char a6, int a7, int a8, char a9, char a10, char a11, int a12, int a13, int a14, UErrorCode *a15)
{
  v19 = icu::BasicTimeZone::BasicTimeZone(a1, a3);
  *v19 = &unk_1F09427E8;
  *(v19 + 120) = 0;
  *(v19 + 8) = 0u;
  *(v19 + 9) = 0u;
  icu::SimpleTimeZone::construct(v19, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  return a1;
}

{
  v19 = icu::BasicTimeZone::BasicTimeZone(a1, a3);
  *v19 = &unk_1F09427E8;
  *(v19 + 120) = 0;
  *(v19 + 8) = 0u;
  *(v19 + 9) = 0u;
  icu::SimpleTimeZone::construct(v19, a2, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
  return a1;
}

uint64_t icu::SimpleTimeZone::decodeRules(icu::SimpleTimeZone *this, UErrorCode *a2)
{
  icu::SimpleTimeZone::decodeStartRule(this, a2);

  return icu::SimpleTimeZone::decodeEndRule(this, a2);
}

void icu::SimpleTimeZone::~SimpleTimeZone(icu::SimpleTimeZone *this)
{
  *this = &unk_1F09427E8;
  icu::SimpleTimeZone::deleteTransitionRules(this);

  icu::BasicTimeZone::~BasicTimeZone(this);
}

{
  *this = &unk_1F09427E8;
  icu::SimpleTimeZone::deleteTransitionRules(this);

  icu::BasicTimeZone::~BasicTimeZone(this);
}

{
  *this = &unk_1F09427E8;
  icu::SimpleTimeZone::deleteTransitionRules(this);
  icu::BasicTimeZone::~BasicTimeZone(this);

  JUMPOUT(0x19A8B2600);
}

double icu::SimpleTimeZone::deleteTransitionRules(icu::SimpleTimeZone *this)
{
  v3 = (this + 128);
  v2 = *(this + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = *(this + 17);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 19);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 120) = 0;
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  return result;
}

uint64_t icu::SimpleTimeZone::SimpleTimeZone(icu::SimpleTimeZone *this, UChar **a2)
{
  v3 = icu::BasicTimeZone::BasicTimeZone(this, a2);
  *v3 = &unk_1F09427E8;

  return icu::SimpleTimeZone::operator=(v3, a2);
}

{
  v3 = icu::BasicTimeZone::BasicTimeZone(this, a2);
  *v3 = &unk_1F09427E8;

  return icu::SimpleTimeZone::operator=(v3, a2);
}

uint64_t icu::SimpleTimeZone::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::TimeZone::operator=(a1, a2);
    *(a1 + 100) = *(a2 + 100);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 73) = *(a2 + 73);
    *(a1 + 76) = *(a2 + 76);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 89) = *(a2 + 89);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 92) = *(a2 + 92);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
  }

  return a1;
}

uint64_t icu::SimpleTimeZone::operator==(uint64_t a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    result = icu::TimeZone::operator==(a1, a2);
    if (result)
    {
      return (*(*a1 + 88))(a1, a2) != 0;
    }
  }

  return result;
}

uint64_t icu::SimpleTimeZone::setStartYear(uint64_t this, int a2)
{
  *(this + 96) = a2;
  *(this + 120) = 0;
  return this;
}

uint64_t icu::SimpleTimeZone::setStartRule(uint64_t a1, char a2, char a3, char a4, int a5, int a6, UErrorCode *a7)
{
  *(a1 + 72) = a2;
  *(a1 + 73) = a3;
  *(a1 + 74) = a4;
  *(a1 + 76) = a5;
  *(a1 + 80) = a6;
  result = icu::SimpleTimeZone::decodeStartRule(a1, a7);
  *(a1 + 120) = 0;
  return result;
}

uint64_t icu::SimpleTimeZone::decodeStartRule(uint64_t this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v2 = *(this + 73);
    if (!*(this + 73))
    {
      *(this + 104) = 0;
      return this;
    }

    v3 = *(this + 89);
    *(this + 104) = *(this + 89) != 0;
    if (v3 && !*(this + 116))
    {
      *(this + 116) = 3600000;
    }

    v4 = *(this + 72);
    if (v4 >= 0xC || *(this + 76) > 0x5265C00u || *(this + 80) >= 3u)
    {
      goto LABEL_24;
    }

    v5 = *(this + 74);
    if (*(this + 74))
    {
      if (v5 <= 0)
      {
        v7 = -v5;
        *(this + 74) = -v5;
        if (v2 <= 0)
        {
          v2 = -v2;
          *(this + 73) = v2;
          v6 = 4;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
        LOBYTE(v7) = *(this + 74);
      }

      *(this + 108) = v6;
      if (v7 >= 8)
      {
        goto LABEL_24;
      }

      if (v5 >= 1)
      {
        if ((v2 - 6) > 0xF4u)
        {
          return this;
        }

        goto LABEL_24;
      }
    }

    else
    {
      *(this + 108) = 1;
    }

    if (v2 >= 1 && icu::SimpleTimeZone::STATICMONTHLENGTH[v4] >= v2)
    {
      return this;
    }

LABEL_24:
    *a2 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return this;
}

uint64_t icu::SimpleTimeZone::setStartRule(uint64_t a1, char a2, char a3, int a4, int a5, UErrorCode *a6)
{
  *(a1 + 72) = a2;
  *(a1 + 73) = a3;
  *(a1 + 74) = 0;
  *(a1 + 76) = a4;
  *(a1 + 80) = a5;
  result = icu::SimpleTimeZone::decodeStartRule(a1, a6);
  *(a1 + 120) = 0;
  return result;
}

uint64_t icu::SimpleTimeZone::setStartRule(uint64_t a1, char a2, int a3, char a4, int a5, int a6, int a7, UErrorCode *a8)
{
  *(a1 + 72) = a2;
  if (a7)
  {
    LOBYTE(v9) = a3;
  }

  else
  {
    v9 = -a3;
  }

  *(a1 + 73) = v9;
  *(a1 + 74) = -a4;
  *(a1 + 76) = a5;
  *(a1 + 80) = a6;
  result = icu::SimpleTimeZone::decodeStartRule(a1, a8);
  *(a1 + 120) = 0;
  return result;
}

uint64_t icu::SimpleTimeZone::setEndRule(uint64_t a1, char a2, char a3, char a4, int a5, int a6, UErrorCode *a7)
{
  *(a1 + 88) = a2;
  *(a1 + 89) = a3;
  *(a1 + 90) = a4;
  *(a1 + 92) = a5;
  *(a1 + 84) = a6;
  result = icu::SimpleTimeZone::decodeEndRule(a1, a7);
  *(a1 + 120) = 0;
  return result;
}

uint64_t icu::SimpleTimeZone::decodeEndRule(uint64_t this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    if (*(this + 73))
    {
      v2 = *(this + 89);
      *(this + 104) = *(this + 89) != 0;
      if (!v2)
      {
        return this;
      }

      if (!*(this + 116))
      {
        *(this + 116) = 3600000;
      }
    }

    else
    {
      *(this + 104) = 0;
      LOBYTE(v2) = *(this + 89);
      if (!v2)
      {
        return this;
      }
    }

    v3 = *(this + 88);
    if (v3 > 0xB || *(this + 92) > 0x5265C00u || *(this + 84) > 2u)
    {
      goto LABEL_24;
    }

    v4 = *(this + 90);
    if (*(this + 90))
    {
      if (v4 <= 0)
      {
        v6 = -v4;
        *(this + 90) = -v4;
        if (v2 <= 0)
        {
          *(this + 89) = -v2;
          v5 = 4;
        }

        else
        {
          v5 = 3;
        }
      }

      else
      {
        v5 = 2;
        LOBYTE(v6) = *(this + 90);
      }

      *(this + 112) = v5;
      if (v6 > 7)
      {
        goto LABEL_24;
      }

      if (v4 >= 1)
      {
        if (*(this + 89) - 6 >= 0xF5)
        {
          return this;
        }

        goto LABEL_24;
      }
    }

    else
    {
      *(this + 112) = 1;
    }

    v7 = *(this + 89);
    if (v7 >= 1 && v7 <= icu::SimpleTimeZone::STATICMONTHLENGTH[v3])
    {
      return this;
    }

LABEL_24:
    *a2 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return this;
}

uint64_t icu::SimpleTimeZone::setEndRule(uint64_t a1, char a2, char a3, int a4, int a5, UErrorCode *a6)
{
  *(a1 + 88) = a2;
  *(a1 + 89) = a3;
  *(a1 + 90) = 0;
  *(a1 + 92) = a4;
  *(a1 + 84) = a5;
  result = icu::SimpleTimeZone::decodeEndRule(a1, a6);
  *(a1 + 120) = 0;
  return result;
}

uint64_t icu::SimpleTimeZone::setEndRule(uint64_t a1, char a2, int a3, char a4, int a5, int a6, int a7, UErrorCode *a8)
{
  *(a1 + 88) = a2;
  if (a7)
  {
    LOBYTE(v9) = a3;
  }

  else
  {
    v9 = -a3;
  }

  *(a1 + 89) = v9;
  *(a1 + 90) = -a4;
  *(a1 + 92) = a5;
  *(a1 + 84) = a6;
  result = icu::SimpleTimeZone::decodeEndRule(a1, a8);
  *(a1 + 120) = 0;
  return result;
}

uint64_t icu::SimpleTimeZone::getOffset(icu::SimpleTimeZone *this, unsigned __int8 a2, int a3, unsigned int a4, int a5, unsigned __int8 a6, int a7, UErrorCode *a8)
{
  if (a4 < 0xC)
  {
    if ((a3 & 3) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = 12;
      HIDWORD(v10) = -1030792151 * a3 + 85899344;
      LODWORD(v10) = HIDWORD(v10);
      if ((v10 >> 2) <= 0x28F5C28)
      {
        HIDWORD(v11) = -1030792151 * a3 + 85899344;
        LODWORD(v11) = HIDWORD(v11);
        if ((v11 >> 4) >= 0xA3D70B)
        {
          v9 = 0;
        }

        else
        {
          v9 = 12;
        }
      }
    }

    v12 = byte_19548DBC2[v9 + a4];
    return (*(*this + 40))(this);
  }

  else
  {
    *a8 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }
}

uint64_t icu::SimpleTimeZone::getOffset(icu::SimpleTimeZone *this, unsigned __int8 a2, int a3, unsigned int a4, int a5, unsigned __int8 a6, int a7, int a8, UErrorCode *a9)
{
  if (a4 >= 0xC)
  {
    *a9 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0xFFFFFFFFLL;
  }

  if ((a3 & 3) != 0)
  {
    v10 = byte_19548DBC2[a4];
    if (a4)
    {
      LODWORD(v11) = 0;
LABEL_13:
      v16 = byte_19548DBC2[a4 - 1 + v11];
    }
  }

  else
  {
    HIDWORD(v12) = -1030792151 * a3 + 85899344;
    LODWORD(v12) = HIDWORD(v12);
    if ((v12 >> 2) <= 0x28F5C28)
    {
      HIDWORD(v14) = -1030792151 * a3 + 85899344;
      LODWORD(v14) = HIDWORD(v14);
      if ((v14 >> 4) >= 0xA3D70B)
      {
        v11 = 0;
      }

      else
      {
        v11 = 12;
      }

      v15 = byte_19548DBC2[v11 + a4];
      if (!a4)
      {
        return (*(*this + 168))(this);
      }

      goto LABEL_13;
    }

    v13 = byte_19548DBC2[a4 + 12];
    if (a4)
    {
      LODWORD(v11) = 12;
      goto LABEL_13;
    }
  }

  return (*(*this + 168))(this);
}

uint64_t icu::SimpleTimeZone::getOffset(icu::SimpleTimeZone *this, unsigned int a2, int a3, unsigned int a4, int a5, char a6, unsigned int a7, int a8, int a9, UErrorCode *a10)
{
  if (*a10 > 0)
  {
    return 0;
  }

  if (a2 > 1 || a4 > 0xB || a5 < 1 || ((a9 - 32) >= 0xFFFFFFFC ? (v12 = (a8 - 32) >= 0xFFFFFFFC) : (v12 = 0), v12 ? (v13 = a7 > 0x5265BFF) : (v13 = 1), v13 || (a6 - 8) < 0xF9u || a5 > a8))
  {
    *a10 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v10 = *(this + 25);
    if (*(this + 104) && a2 == 1 && *(this + 24) <= a3)
    {
      v15 = *(this + 72);
      v16 = *(this + 88);
      if (*(this + 20) == 2)
      {
        v17 = -v10;
      }

      else
      {
        v17 = 0;
      }

      v18 = a8;
      v19 = a5;
      v20 = a6;
      v27 = a4;
      v21 = icu::SimpleTimeZone::compareToRule(a4, a8, a9, a5, a6, a7, v17, *(this + 27), v15, *(this + 74), *(this + 73), *(this + 19));
      v22 = 0;
      if (v15 > v16 != v21 >= 0)
      {
        v23 = *(this + 21);
        if (v23 == 2)
        {
          v24 = -v10;
        }

        else if (v23)
        {
          v24 = 0;
        }

        else
        {
          v24 = *(this + 29);
        }

        v22 = icu::SimpleTimeZone::compareToRule(v27, v18, a9, v19, v20, a7, v24, *(this + 28), v16, *(this + 90), *(this + 89), *(this + 23)) >> 31;
      }

      v26 = v15 <= v16 && v21 >= 0;
      if ((v26 & v22 & 1) != 0 || ((v15 > v16) & ((v21 >= 0) | v22)) != 0)
      {
        return (*(this + 29) + v10);
      }
    }
  }

  return v10;
}

uint64_t icu::SimpleTimeZone::compareToRule(char a1, int a2, char a3, char a4, unsigned int a5, int a6, int a7, int a8, char a9, char a10, char a11, int a12)
{
  v12 = a7 + a6;
  if (a7 + a6 <= 86399999)
  {
    if (v12 < 0)
    {
      v15 = a7 + a6 - 86400000;
      do
      {
        v12 += 86400000;
        a5 = a5 + 5 - 7 * (((18725 * (a5 + 5)) >> 17) + ((18725 * (a5 + 5)) >> 31)) + 1;
        v16 = (a4 - 1) < 1;
        if ((a4 - 1) >= 1)
        {
          --a4;
        }

        else
        {
          a4 = a3;
        }

        a1 -= v16;
        v15 += 86400000;
      }

      while (v15 < 0xFAD9A400);
    }
  }

  else
  {
    v13 = v12 + 86400000;
    do
    {
      v12 -= 86400000;
      v14 = (a4 + 1);
      a5 = a5 - 7 * ((((147 * a5) >> 8) >> 2) + (((a5 + ((-109 * a5) >> 8)) & 0x80) >> 7)) + 1;
      if (v14 <= a2)
      {
        ++a4;
      }

      else
      {
        a4 = 1;
      }

      if (v14 > a2)
      {
        ++a1;
      }

      v13 -= 86400000;
    }

    while (v13 > 0xA4CB7FF);
  }

  if (a9 > a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a9 < a1)
  {
    return 1;
  }

  v18 = 0;
  v19 = a11;
  if (a11 >= a2)
  {
    v19 = a2;
  }

  if (a8 > 2)
  {
    if (a8 == 3)
    {
      v18 = (a10 - (v19 + a5) + a4 + 49) % 7 + v19;
    }

    else if (a8 == 4)
    {
      v18 = v19 - (v19 - a10 + a5 - a4 + 49) % 7;
    }
  }

  else if (a8 == 1)
  {
    v18 = v19;
  }

  else if (a8 == 2)
  {
    v20 = 7 * v19;
    if (v19 < 1)
    {
      v21 = a2 + 7 + a5 - (a10 + a4);
      v18 = a2 + 7 + v20 + (7 * (v21 / 7) - v21);
    }

    else
    {
      v18 = v20 + (a10 + ~a5 + a4 + 7) % 7 - 6;
    }
  }

  if (v18 > a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v18 < a4)
  {
    return 1;
  }

  if (v12 < a12)
  {
    return 0xFFFFFFFFLL;
  }

  return v12 > a12;
}

void icu::SimpleTimeZone::getOffsetFromLocal(uint64_t a1, int a2, char a3, _DWORD *a4, int *a5, int *a6, double a7)
{
  if (*a6 <= 0)
  {
    v36 = v10;
    v37 = v9;
    v38 = v7;
    v39 = v8;
    *a4 = (*(*a1 + 64))(a1);
    v34 = 0;
    v32 = 0;
    v33 = 0;
    v18 = sub_195328C88(86400000, &v32, a7);
    if (v18 > 2147483650.0 || v18 < -2147483650.0)
    {
      *a6 = 1;
      return;
    }

    v35 = 0;
    sub_195328E3C(v18, &v34, &v33 + 1, &v33, &v32 + 1, &v35, a6);
    if (*a6 <= 0)
    {
      if ((v34 & 3) != 0)
      {
        v20 = 0;
      }

      else
      {
        HIDWORD(v22) = -1030792151 * v34 + 85899344;
        LODWORD(v22) = HIDWORD(v22);
        v21 = v22 >> 2;
        LODWORD(v22) = HIDWORD(v22);
        v23 = (v22 >> 4) >= 0xA3D70B ? 0 : 12;
        v20 = v21 <= 0x28F5C28 ? v23 : 12;
      }

      v24 = byte_19548DBC2[SHIDWORD(v33) + v20];
      v25 = (*(*a1 + 40))(a1, 1) - *a4;
      *a5 = v25;
      if (*a6 <= 0)
      {
        if (v25 < 1)
        {
          if ((a3 & 3) == 1 || (a3 & 3) != 3 && (a3 & 0xC) != 4)
          {
            return;
          }
        }

        else if ((a2 & 3) != 1 && ((a2 & 3) == 3 || (~a2 & 0xC) == 0))
        {
          return;
        }

        v26 = (*(*a1 + 104))(a1);
        v27 = sub_195328C88(86400000, &v32, a7 - v26);
        v35 = 0;
        sub_195328E3C(v27, &v34, &v33 + 1, &v33, &v32 + 1, &v35, a6);
        if (*a6 <= 0)
        {
          if ((v34 & 3) != 0)
          {
            v28 = 0;
          }

          else
          {
            v28 = 12;
            HIDWORD(v29) = -1030792151 * v34 + 85899344;
            LODWORD(v29) = HIDWORD(v29);
            if ((v29 >> 2) <= 0x28F5C28)
            {
              HIDWORD(v30) = -1030792151 * v34 + 85899344;
              LODWORD(v30) = HIDWORD(v30);
              if ((v30 >> 4) >= 0xA3D70B)
              {
                v28 = 0;
              }

              else
              {
                v28 = 12;
              }
            }
          }

          v31 = byte_19548DBC2[SHIDWORD(v33) + v28];
          *a5 = (*(*a1 + 40))(a1, 1) - *a4;
        }
      }
    }
  }
}

uint64_t icu::SimpleTimeZone::setRawOffset(uint64_t this, int a2)
{
  *(this + 100) = a2;
  *(this + 120) = 0;
  return this;
}

uint64_t icu::SimpleTimeZone::setDSTSavings(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2)
  {
    *(this + 116) = a2;
  }

  else
  {
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  *(this + 120) = 0;
  return this;
}

uint64_t icu::SimpleTimeZone::inDaylightTime(icu::SimpleTimeZone *this, double a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    operator new();
  }

  return 0;
}

BOOL icu::SimpleTimeZone::hasSameRules(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    if (*(a1 + 100) != *(a2 + 100) || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }

    if (*(a1 + 104))
    {
      if (*(a1 + 116) == *(a2 + 116) && *(a1 + 108) == *(a2 + 108) && *(a1 + 72) == *(a2 + 72) && *(a1 + 73) == *(a2 + 73) && *(a1 + 74) == *(a2 + 74) && *(a1 + 76) == *(a2 + 76) && *(a1 + 80) == *(a2 + 80) && *(a1 + 112) == *(a2 + 112) && *(a1 + 88) == *(a2 + 88) && *(a1 + 89) == *(a2 + 89) && *(a1 + 90) == *(a2 + 90) && *(a1 + 92) == *(a2 + 92) && *(a1 + 84) == *(a2 + 84))
      {
        return *(a1 + 96) == *(a2 + 96);
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t icu::SimpleTimeZone::getNextTransition(icu::SimpleTimeZone *this, double a2, uint64_t a3, icu::TimeZoneTransition *a4)
{
  if (!*(this + 104))
  {
    return 0;
  }

  v22 = U_ZERO_ERROR;
  icu::SimpleTimeZone::checkTransitionRules(this, &v22);
  result = 0;
  if (v22 <= U_ZERO_ERROR)
  {
    Time = icu::TimeZoneTransition::getTime(*(this + 17));
    if (Time > a2 || a3 && Time == a2)
    {
      icu::TimeZoneTransition::operator=(a4, *(this + 17));
    }

    v20 = 0.0;
    v21 = 0.0;
    v11 = *(this + 19);
    v10 = (this + 152);
    v12 = *(v10 - 1);
    RawOffset = icu::TimeZoneRule::getRawOffset(v11);
    DSTSavings = icu::TimeZoneRule::getDSTSavings(*v10);
    LODWORD(v12) = (*(*v12 + 72))(v12, RawOffset, DSTSavings, a3, &v21, a2);
    v15 = *v10;
    v16 = icu::TimeZoneRule::getRawOffset(*(v10 - 1));
    v17 = icu::TimeZoneRule::getDSTSavings(*(v10 - 1));
    result = (*(*v15 + 72))(v15, v16, v17, a3, &v20, a2);
    if (v12)
    {
      if (result && (v18 = v20, v21 >= v20))
      {
        v19 = v10 - 1;
        if (v20 >= v21)
        {
          return 0;
        }
      }

      else
      {
        v18 = v21;
        v19 = v10--;
      }
    }

    else
    {
      if (!result)
      {
        return result;
      }

      v18 = v20;
      v19 = v10 - 1;
    }

    icu::TimeZoneTransition::setTime(a4, v18);
    icu::TimeZoneTransition::setFrom(a4, *v19);
    icu::TimeZoneTransition::setTo(a4, *v10);
    return 1;
  }

  return result;
}

void icu::SimpleTimeZone::checkTransitionRules(icu::SimpleTimeZone *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    umtx_lock(&unk_1ED443010);
    if (!*(this + 120))
    {
      icu::SimpleTimeZone::initTransitionRules(this, a2);
    }

    umtx_unlock(&unk_1ED443010);
  }
}

uint64_t icu::SimpleTimeZone::getPreviousTransition(icu::SimpleTimeZone *this, double a2, uint64_t a3, icu::TimeZoneTransition *a4)
{
  if (!*(this + 104))
  {
    return 0;
  }

  v22 = U_ZERO_ERROR;
  icu::SimpleTimeZone::checkTransitionRules(this, &v22);
  if (v22 > U_ZERO_ERROR)
  {
    return 0;
  }

  Time = icu::TimeZoneTransition::getTime(*(this + 17));
  if (Time > a2 || !a3 && Time == a2)
  {
    return 0;
  }

  v20 = 0.0;
  v21 = 0.0;
  v11 = *(this + 19);
  v10 = (this + 152);
  v12 = *(v10 - 1);
  RawOffset = icu::TimeZoneRule::getRawOffset(v11);
  DSTSavings = icu::TimeZoneRule::getDSTSavings(*v10);
  LODWORD(v12) = (*(*v12 + 80))(v12, RawOffset, DSTSavings, a3, &v21, a2);
  v15 = *v10;
  v16 = icu::TimeZoneRule::getRawOffset(*(v10 - 1));
  v17 = icu::TimeZoneRule::getDSTSavings(*(v10 - 1));
  result = (*(*v15 + 80))(v15, v16, v17, a3, &v20, a2);
  if (v12)
  {
    if (result && (v18 = v20, v21 <= v20))
    {
      v19 = v10 - 1;
      if (v20 <= v21)
      {
        return 0;
      }
    }

    else
    {
      v18 = v21;
      v19 = v10--;
    }

LABEL_16:
    icu::TimeZoneTransition::setTime(a4, v18);
    icu::TimeZoneTransition::setFrom(a4, *v19);
    icu::TimeZoneTransition::setTo(a4, *v10);
    return 1;
  }

  if (result)
  {
    v18 = v20;
    v19 = v10 - 1;
    goto LABEL_16;
  }

  return result;
}

_BYTE *icu::SimpleTimeZone::initTransitionRules(_BYTE *this, UErrorCode *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v2 = this;
    if (!this[120])
    {
      icu::SimpleTimeZone::deleteTransitionRules(this);
      v7 = 0u;
      v10 = 0;
      v9 = 0u;
      v8 = 0u;
      v6 = &unk_1F0935D00;
      LOWORD(v7) = 2;
      icu::UnicodeString::operator=(&v6, v2 + 1);
      if (!v2[104])
      {
        operator new();
      }

      *(v2 + 20);
      v4 = *(v2 + 27);
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          operator new();
        }

        if (v4 == 4)
        {
          operator new();
        }
      }

      else
      {
        if (v4 == 1)
        {
          operator new();
        }

        if (v4 == 2)
        {
          operator new();
        }
      }

      *a2 = U_INVALID_STATE_ERROR;
      this = icu::UnicodeString::~UnicodeString(0x1B, &v6);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::SimpleTimeZone::getTimeZoneRules(icu::SimpleTimeZone *this, const icu::InitialTimeZoneRule **a2, const icu::TimeZoneRule **a3, int *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    icu::SimpleTimeZone::checkTransitionRules(this, a5);
    if (*a5 <= 0)
    {
      *a2 = *(this + 16);
      v10 = *(this + 18);
      if (v10)
      {
        v11 = *a4;
        if (*a4 < 1)
        {
          LODWORD(v10) = 0;
        }

        else
        {
          *a3 = v10;
          LODWORD(v10) = 1;
        }

        if (v10 < v11)
        {
          a3[v10] = *(this + 19);
          LODWORD(v10) = v10 + 1;
        }
      }

      *a4 = v10;
    }
  }
}

void icu::SimpleDateFormat::NSOverride::~NSOverride(icu::SimpleDateFormat::NSOverride *this)
{
  v1 = *this;
  if (v1)
  {
    icu::SharedObject::removeRef(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    icu::SharedObject::removeRef(v1);
  }
}

uint64_t *icu::SimpleDateFormat::NSOverride::free(uint64_t *this)
{
  if (this)
  {
    v1 = this;
    do
    {
      v2 = v1[2];
      if (*v1)
      {
        icu::SharedObject::removeRef(*v1);
      }

      this = MEMORY[0x19A8B2600](v1, 0x1060C402CF69088);
      v1 = v2;
    }

    while (v2);
  }

  return this;
}

uint64_t icu::SimpleDateFormat::getNumberFormatByIndex(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 800);
  if (v2 && (v3 = *(v2 + 8 * a2)) != 0)
  {
    v4 = v3 + 24;
  }

  else
  {
    v4 = a1 + 336;
  }

  return *v4;
}

void icu::SimpleDateFormat::~SimpleDateFormat(icu::SimpleDateFormat *this)
{
  *this = &unk_1F09428C0;
  v2 = *(this + 96);
  if (v2)
  {
    icu::DateFormatSymbols::~DateFormatSymbols(v2);
    MEMORY[0x19A8B2600]();
  }

  v3 = *(this + 100);
  if (v3)
  {
    sub_1953CB7D4(v3);
  }

  v4 = *(this + 97);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 101);
  if (v5)
  {
    icu::number::SimpleNumberFormatter::cleanup(*(this + 101));
    MEMORY[0x19A8B2600](v5, 0x1020C40E72D6CFBLL);
  }

  v6 = *(this + 103);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  icu::Locale::~Locale((this + 544));
  icu::UnicodeString::~UnicodeString(v7, (this + 480));
  icu::UnicodeString::~UnicodeString(v8, (this + 416));
  icu::UnicodeString::~UnicodeString(v9, (this + 352));

  icu::DateFormat::~DateFormat(this);
}

{
  icu::SimpleDateFormat::~SimpleDateFormat(this);

  JUMPOUT(0x19A8B2600);
}

void sub_1953CB7D4(char *a1)
{
  for (i = 0; i != 304; i += 8)
  {
    v3 = *&a1[i];
    if (v3)
    {
      icu::SharedObject::removeRef(v3);
      *&a1[i] = 0;
    }
  }

  free(a1);
}

icu::SimpleDateFormat *icu::SimpleDateFormat::SimpleDateFormat(icu::SimpleDateFormat *this, UErrorCode *a2)
{
  v4 = icu::DateFormat::DateFormat(this);
  *v4 = &unk_1F09428C0;
  v4[44] = &unk_1F0935D00;
  *(v4 + 180) = 2;
  v4[52] = &unk_1F0935D00;
  *(v4 + 212) = 2;
  v4[60] = &unk_1F0935D00;
  *(v4 + 244) = 2;
  Default = icu::Locale::getDefault(v4);
  icu::Locale::Locale((this + 544), Default);
  *(this + 103) = 0;
  *(this + 48) = 0u;
  *(this + 50) = 0u;
  icu::SimpleDateFormat::initializeBooleanAttributes(this);
  icu::SimpleDateFormat::construct(this, 3u, 7, this + 544, a2);
  icu::SimpleDateFormat::initializeDefaultCentury(this);
  return this;
}

uint64_t icu::SimpleDateFormat::initializeBooleanAttributes(icu::SimpleDateFormat *this)
{
  v3 = 0;
  (*(*this + 216))(this, 0, 1, &v3);
  (*(*this + 216))(this, 1, 1, &v3);
  (*(*this + 216))(this, 2, 1, &v3);
  return (*(*this + 216))(this, 3, 1, &v3);
}

void icu::SimpleDateFormat::construct(uint64_t a1, unsigned int a2, signed int a3, uint64_t a4, UErrorCode *a5)
{
  v69 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_76;
  }

  icu::SimpleDateFormat::initializeCalendar(a1, 0, a4, a5);
  if (*a5 > 0)
  {
    goto LABEL_76;
  }

  v53 = 0;
  v67 = 0u;
  memset(v68, 0, sizeof(v68));
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  *__dst = 0u;
  if (!ulocimp_setRegionToSupplementalRegion(*(a4 + 40)))
  {
    strcpy(__dst, *(a4 + 40));
  }

  v10 = *(a1 + 328);
  if (v10)
  {
    v11 = (*(*v10 + 184))(v10);
  }

  else
  {
    v11 = 0;
  }

  v52 = 0;
  v12 = ures_open(0, __dst, a5);
  v13 = ures_openWithCountryFallback(0, *(a4 + 40), &v52, a5);
  if (*a5 <= 0)
  {
    if (v52)
    {
      LODWORD(v56[0]) = -1;
      StringByKeyWithFallback = ures_getStringByKeyWithFallback(v12, "NumberElements/default", v56, a5);
      v15 = ures_getStringByKeyWithFallback(v13, "NumberElements/default", v56, a5);
      if (*a5 > 0 || u_strcmp(StringByKeyWithFallback, v15))
      {
        v52 = 0;
      }
    }

    if (!v11 || !strcmp(v11, "gregorian"))
    {
      *a5 = U_ZERO_ERROR;
      v20 = ures_getByKeyWithFallback(v12, "calendar/gregorian/DateTimePatterns", 0, a5);
      v21 = ures_getByKeyWithFallback(v13, "calendar/gregorian/DateTimePatterns", 0, a5);
      v23 = 0;
      v22 = 1;
    }

    else
    {
      memset(v56, 0, 64);
      icu::StringPiece::StringPiece(v59, "calendar/");
      v56[0] = (v56 | 0xD);
      LODWORD(v56[1]) = 40;
      WORD2(v56[1]) = 0;
      LODWORD(v56[7]) = 0;
      icu::CharString::append(v56, v59[0], v59[1], a5);
      icu::StringPiece::StringPiece(v59, v11);
      v16 = icu::CharString::append(v56, v59[0], v59[1], a5);
      icu::StringPiece::StringPiece(v59, "/DateTimePatterns");
      icu::CharString::append(v16, v59[0], v59[1], a5);
      v17 = ures_getByKeyWithFallback(v12, v56[0], 0, a5);
      v18 = ures_getByKeyWithFallback(v13, v56[0], 0, a5);
      if (BYTE4(v56[1]))
      {
        free(v56[0]);
      }

      v19 = *a5;
      if (*a5 != U_MISSING_RESOURCE_ERROR)
      {
        v22 = 0;
        v23 = 1;
LABEL_25:
        if (v19 > U_ZERO_ERROR)
        {
LABEL_68:
          if (v18)
          {
            ures_close(v18);
          }

          if (v17)
          {
            ures_close(v17);
          }

          goto LABEL_72;
        }

        v45 = v22;
        v46 = v23;
        if (ures_getSize(v17) <= 8)
        {
          v25 = 3;
LABEL_28:
          *a5 = v25;
          goto LABEL_68;
        }

        v48 = v17;
        LocaleByType = ures_getLocaleByType(v17, 1, a5);
        v27 = ures_getLocaleByType(v48, 0, a5);
        v28 = LocaleByType;
        v17 = v48;
        icu::Format::setLocaleIDs(a1, v28, v27);
        v30 = icu::DateFormatSymbols::createForLocale(a4, a5, v29);
        *(a1 + 768) = v30;
        if (*a5 > 0)
        {
          goto LABEL_68;
        }

        if (!v30)
        {
          v25 = 7;
          goto LABEL_28;
        }

        v51 = 0;
        icu::UnicodeString::setToBogus((a1 + 416));
        icu::UnicodeString::setToBogus((a1 + 480));
        if (a2 == -1 || a3 == -1)
        {
          if (a2 == -1)
          {
            if (a3 == -1)
            {
              *a5 = U_INVALID_FORMAT_ERROR;
              v17 = v48;
              goto LABEL_67;
            }

            memset(&v56[1], 0, 56);
            v56[0] = &unk_1F0935D00;
            LOWORD(v56[1]) = 2;
            memset(v59, 0, sizeof(v59));
            v17 = v48;
            icu::SimpleDateFormat::getPatternForDateStyle(a3, v48, v18, &v52, v56, a5, v59);
          }

          else
          {
            memset(&v56[1], 0, 56);
            v56[0] = &unk_1F0935D00;
            LOWORD(v56[1]) = 2;
            memset(v59, 0, sizeof(v59));
            v17 = v48;
            icu::SimpleDateFormat::getPatternForTimeStyle(a1, a2, a4, v48, v56, a5, v59);
          }

          if (LOWORD(v56[1]) >= 0x20u)
          {
            icu::UnicodeString::operator=((a1 + 416), v56);
          }

          icu::UnicodeString::operator=((a1 + 352), v59);
          icu::UnicodeString::~UnicodeString(v43, v59);
          v42 = v56;
LABEL_66:
          icu::UnicodeString::~UnicodeString(v41, v42);
LABEL_67:
          icu::SimpleDateFormat::initialize(a1, a4, a5);
          goto LABEL_68;
        }

        memset(&v59[1], 0, 56);
        v59[0] = &unk_1F0935D00;
        LOWORD(v59[1]) = 2;
        memset(v58, 0, sizeof(v58));
        icu::SimpleDateFormat::getPatternForTimeStyle(a1, a2, a4, v48, v59, a5, v58);
        if (LOWORD(v59[1]) >= 0x20u)
        {
          icu::UnicodeString::operator=((a1 + 480), v59);
        }

        memset(v57, 0, sizeof(v57));
        icu::SimpleDateFormat::getPatternForDateStyle(a3, v48, v18, &v52, v59, a5, v57);
        if (LOWORD(v59[1]) >= 0x20u)
        {
          icu::UnicodeString::operator=((a1 + 416), v59);
        }

        if (v46)
        {
          memset(&v56[1], 0, 56);
          icu::StringPiece::StringPiece(&v54, "calendar/");
          v56[0] = &v56[1] + 5;
          LODWORD(v56[1]) = 40;
          WORD2(v56[1]) = 0;
          LODWORD(v56[7]) = 0;
          icu::CharString::append(v56, v54, v55, a5);
          icu::StringPiece::StringPiece(&v54, v11);
          v31 = icu::CharString::append(v56, v54, v55, a5);
          icu::StringPiece::StringPiece(&v54, "/DateTimePatterns%atTime");
          icu::CharString::append(v31, v54, v55, a5);
          v32 = ures_getByKeyWithFallback(v12, v56[0], 0, a5);
          if (BYTE4(v56[1]))
          {
            free(v56[0]);
          }

          v33 = *a5;
          v34 = v45;
          if (*a5 == U_MISSING_RESOURCE_ERROR)
          {
            v34 = 1;
          }

          if (v34 != 1)
          {
            goto LABEL_51;
          }

          *a5 = U_ZERO_ERROR;
          v35 = ures_getByKeyWithFallback(v12, "calendar/gregorian/DateTimePatterns%atTime", 0, a5);
          if (v32)
          {
            ures_close(v32);
          }
        }

        else
        {
          *a5 = U_ZERO_ERROR;
          v35 = ures_getByKeyWithFallback(v12, "calendar/gregorian/DateTimePatterns%atTime", 0, a5);
        }

        v33 = *a5;
        v32 = v35;
LABEL_51:
        v17 = v48;
        if (v33 > U_ZERO_ERROR || ures_getSize(v32) < 4)
        {
          *a5 = U_ZERO_ERROR;
          if (ures_getSize(v48) <= 12)
          {
            v36 = 8;
          }

          else
          {
            v36 = a3 + 5;
          }

          v37 = v48;
        }

        else
        {
          v36 = a3 - 4;
          v37 = v32;
        }

        StringByIndex = ures_getStringByIndex(v37, v36, &v51, a5);
        icu::UnicodeString::UnicodeString(&v54, 1, &StringByIndex);
        v56[1] = &unk_1F0935D00;
        LOWORD(v56[2]) = 2;
        icu::SimpleFormatter::applyPatternMinMaxArguments(v56, &v54, 2, 2, 0, a5);
        icu::SimpleFormatter::format(v56, v58, v57, (a1 + 352), a5);
        icu::SimpleFormatter::~SimpleFormatter(v56);
        icu::UnicodeString::~UnicodeString(v38, &v54);
        v49 = StringByIndex;
        v39 = &v49;
        if (v32)
        {
          ures_close(v32);
        }

        icu::UnicodeString::~UnicodeString(v39, v57);
        icu::UnicodeString::~UnicodeString(v40, v58);
        v42 = v59;
        goto LABEL_66;
      }

      v47 = v18;
      *a5 = U_ZERO_ERROR;
      v20 = ures_getByKeyWithFallback(v12, "calendar/gregorian/DateTimePatterns", 0, a5);
      if (v17)
      {
        ures_close(v17);
      }

      v21 = ures_getByKeyWithFallback(v13, "calendar/gregorian/DateTimePatterns", 0, a5);
      if (v47)
      {
        ures_close(v47);
      }

      v22 = 0;
      v23 = 1;
    }

    v19 = *a5;
    v24 = v20;
    v18 = v21;
    v17 = v24;
    goto LABEL_25;
  }

LABEL_72:
  if (v13)
  {
    ures_close(v13);
  }

  if (v12)
  {
    ures_close(v12);
  }

LABEL_76:
  v44 = *MEMORY[0x1E69E9840];
}

uint64_t icu::SimpleDateFormat::initializeDefaultCentury(icu::SimpleDateFormat *this)
{
  result = *(this + 41);
  if (result)
  {
    v3 = (*(*result + 416))(result);
    *(this + 816) = v3;
    if (v3)
    {
      *(this + 98) = (*(**(this + 41) + 424))(*(this + 41));
      result = (*(**(this + 41) + 432))();
    }

    else
    {
      *(this + 98) = 0x10000000000000;
      result = 0xFFFFFFFFLL;
    }

    *(this + 199) = result;
  }

  return result;
}

icu::SimpleDateFormat *icu::SimpleDateFormat::SimpleDateFormat(icu::SimpleDateFormat *this, UChar **a2, UErrorCode *a3)
{
  v6 = icu::DateFormat::DateFormat(this);
  *v6 = &unk_1F09428C0;
  v7 = icu::UnicodeString::UnicodeString((v6 + 44), a2);
  *(this + 52) = &unk_1F0935D00;
  *(this + 212) = 2;
  *(this + 60) = &unk_1F0935D00;
  *(this + 244) = 2;
  Default = icu::Locale::getDefault(v7);
  icu::Locale::Locale((this + 544), Default);
  *(this + 103) = 0;
  *(this + 48) = 0u;
  *(this + 50) = 0u;
  icu::UnicodeString::setToBogus((this + 416));
  icu::UnicodeString::setToBogus((this + 480));
  icu::SimpleDateFormat::initializeBooleanAttributes(this);
  icu::SimpleDateFormat::initializeCalendar(this, 0, this + 68, a3);
  *(this + 96) = icu::DateFormatSymbols::createForLocale((this + 544), a3, v9);
  icu::SimpleDateFormat::initialize(this, (this + 544), a3);
  icu::SimpleDateFormat::initializeDefaultCentury(this);
  return this;
}

uint64_t icu::SimpleDateFormat::initializeCalendar(icu::SimpleDateFormat *this, icu::TimeZone *a2, char **a3, UErrorCode *a4)
{
  if (*a4 >= 1)
  {
    return *(this + 41);
  }

  if (!a2)
  {
    a2 = icu::TimeZone::forLocaleOrDefault(a3, 0);
  }

  result = icu::Calendar::createInstance(a2, a3, a4, a4);
  *(this + 41) = result;
  return result;
}

void icu::SimpleDateFormat::initialize(icu::SimpleDateFormat *this, const icu::Locale *a2, UErrorCode *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    *(this + 795) = 0;
    v6 = getprogname();
    if (v6)
    {
      v7 = v6;
      if (!strncmp(v6, "Wells_Fargo_Mobile_Banking", 0x1AuLL) || !strncmp(v7, "FioSB2", 6uLL))
      {
        *(this + 795) = 1;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1951C9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ICU using compatibility space for date formatting", buf, 2u);
        }
      }
    }

    icu::SimpleDateFormat::parsePattern(this);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = U_ZERO_ERROR;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *buf = 0u;
    v18 = 0u;
    icu::Locale::Locale(buf, a2);
    KeywordValue = icu::Locale::getKeywordValue(buf, "numbers", &v31, 96, &v16);
    if (v16 <= U_ZERO_ERROR && KeywordValue >= 1 && !(v31 ^ 0x73796164696E6168 | BYTE8(v31)))
    {
      sub_1951DE32C(buf, "numbers", 0, &v16);
      icu::UnicodeString::unBogus(this + 416);
      if (*(this + 212) < 0)
      {
        v10 = *(this + 107);
      }

      else
      {
        v10 = *(this + 212) >> 5;
      }

      icu::UnicodeString::doReplace(this + 416, 0, v10, L"d=hanidays", 0, 0xFFFFFFFFLL);
    }

    if (*(this + 212))
    {
      if (*(this + 794))
      {
        v11 = *(this + 41);
        if (v11)
        {
          v12 = (*(*v11 + 184))(v11);
          if (!strcmp(v12, "japanese") && *(this + 552) == 106 && *(this + 553) == 97 && !*(this + 554))
          {
            sub_19537E4C8(this + 416, L"y=jpanyear", 0xFFFFFFFFLL);
          }
        }
      }
    }

    Instance = icu::NumberFormat::createInstance(buf, a3, v9);
    *(this + 42) = Instance;
    v14 = *a3;
    if (Instance && v14 <= 0)
    {
      (*(*Instance + 288))(Instance);
      icu::SimpleDateFormat::initNumberFormatters(this, a2, a3);
      icu::SimpleDateFormat::initSimpleNumberFormatter(this, a3);
    }

    else if (v14 <= 0)
    {
      *a3 = U_MISSING_RESOURCE_ERROR;
    }

    icu::Locale::~Locale(buf);
  }

  v15 = *MEMORY[0x1E69E9840];
}

UChar **icu::SimpleDateFormat::SimpleDateFormat(UChar **this, UChar **a2, UChar **a3, UErrorCode *a4)
{
  v8 = icu::DateFormat::DateFormat(this);
  *v8 = &unk_1F09428C0;
  v9 = icu::UnicodeString::UnicodeString((v8 + 44), a2);
  this[52] = &unk_1F0935D00;
  *(this + 212) = 2;
  this[60] = &unk_1F0935D00;
  *(this + 244) = 2;
  Default = icu::Locale::getDefault(v9);
  icu::Locale::Locale((this + 68), Default);
  this[103] = 0;
  *(this + 48) = 0u;
  *(this + 50) = 0u;
  icu::UnicodeString::copyFrom(this + 52, a3, 0);
  icu::UnicodeString::setToBogus((this + 60));
  icu::SimpleDateFormat::initializeBooleanAttributes(this);
  icu::SimpleDateFormat::initializeCalendar(this, 0, this + 68, a4);
  this[96] = icu::DateFormatSymbols::createForLocale((this + 68), a4, v11);
  icu::SimpleDateFormat::initialize(this, (this + 68), a4);
  icu::SimpleDateFormat::initializeDefaultCentury(this);
  icu::SimpleDateFormat::processOverrideString(this, (this + 68), a3, 2, a4);
  return this;
}

uint64_t icu::SimpleDateFormat::processOverrideString(uint64_t this, const icu::Locale *a2, const icu::UnicodeString *a3, signed __int8 a4, UErrorCode *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  if ((*(a3 + 4) & 1) == 0 && *a5 <= 0)
  {
    v27 = 0u;
    v30 = 0;
    v29 = 0u;
    v28 = 0u;
    v25 = 0;
    v26 = &unk_1F0935D00;
    LOWORD(v27) = 2;
    v22 = 0u;
    v24 = 0u;
    v23 = 0u;
    v21 = &unk_1F0935D00;
    LOWORD(v22) = 2;
    v6 = *(a3 + 4);
    if ((v6 & 0x8000) != 0)
    {
      v7 = *(a3 + 3);
      if (v7 >= 0)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(a3 + 3);
      }
    }

    else
    {
      v7 = v6 >> 5;
      v8 = 0;
    }

    v9 = icu::UnicodeString::doIndexOf(a3, 0x3Bu, v8, v7 - v8);
    if (v9 == -1)
    {
      if (*(a3 + 4) < 0)
      {
        v9 = *(a3 + 3);
      }

      else
      {
        v9 = *(a3 + 4) >> 5;
      }
    }

    memset(v20, 0, 64);
    icu::UnicodeString::UnicodeString(v20, a3, 0, v9);
    if (SLOWORD(v20[1]) < 0)
    {
      v11 = HIDWORD(v20[1]);
      v10 = HIDWORD(v20[1]) & (SHIDWORD(v20[1]) >> 31);
    }

    else
    {
      v10 = 0;
      v11 = LOWORD(v20[1]) >> 5;
    }

    v12 = icu::UnicodeString::doIndexOf(v20, 0x3Du, v10, v11 - v10);
    if (v12 == -1)
    {
      icu::UnicodeString::copyFrom(&v26, v20, 0);
      icu::UnicodeString::setToBogus(&v21);
      goto LABEL_31;
    }

    v13 = v12;
    icu::UnicodeString::unBogus(&v26);
    v14 = LOWORD(v20[1]) >> 5;
    if (v13 >= -1)
    {
      v16 = v13 + 1;
      if ((v20[1] & 0x8000) != 0)
      {
        v15 = HIDWORD(v20[1]);
        if (SHIDWORD(v20[1]) > v13)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v15 = LOWORD(v20[1]) >> 5;
        if (v13 < v15)
        {
LABEL_22:
          if ((v27 & 0x8000u) == 0)
          {
            v17 = v27 >> 5;
          }

          else
          {
            v17 = DWORD1(v27);
          }

          if (SLOWORD(v20[1]) < 0)
          {
            v14 = HIDWORD(v20[1]);
          }

          icu::UnicodeString::doReplace(&v26, 0, v17, v20, v16, (v14 - v16));
          icu::UnicodeString::unBogus(&v21);
          if ((v22 & 0x8000u) == 0)
          {
            v18 = v22 >> 5;
          }

          else
          {
            v18 = DWORD1(v22);
          }

          icu::UnicodeString::doReplace(&v21, 0, v18, v20, 0, 1);
LABEL_31:
          icu::UnicodeString::doHashCode(&v26);
          operator new();
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    goto LABEL_22;
  }

  v19 = *MEMORY[0x1E69E9840];
  return this;
}

icu::SimpleDateFormat *icu::SimpleDateFormat::SimpleDateFormat(icu::SimpleDateFormat *this, UChar **a2, const icu::Locale *a3, UErrorCode *a4)
{
  v8 = icu::DateFormat::DateFormat(this);
  *v8 = &unk_1F09428C0;
  icu::UnicodeString::UnicodeString((v8 + 44), a2);
  *(this + 52) = &unk_1F0935D00;
  *(this + 212) = 2;
  *(this + 60) = &unk_1F0935D00;
  *(this + 244) = 2;
  icu::Locale::Locale((this + 544), a3);
  *(this + 103) = 0;
  *(this + 48) = 0u;
  *(this + 50) = 0u;
  icu::SimpleDateFormat::initializeCalendar(this, 0, this + 68, a4);
  icu::SimpleDateFormat::setIndianDateOverride(this);
  icu::UnicodeString::setToBogus((this + 480));
  icu::SimpleDateFormat::initializeBooleanAttributes(this);
  *(this + 96) = icu::DateFormatSymbols::createForLocale((this + 544), a4, v9);
  icu::SimpleDateFormat::initialize(this, (this + 544), a4);
  icu::SimpleDateFormat::initializeDefaultCentury(this);
  return this;
}

void icu::SimpleDateFormat::setIndianDateOverride(icu::SimpleDateFormat *this)
{
  v25 = *MEMORY[0x1E69E9840];
  if (icu::SimpleDateFormat::isHinduCalendar(this))
  {
    if (*(this + 180) < 0)
    {
      v3 = *(this + 91);
      v2 = v3 & (v3 >> 31);
    }

    else
    {
      v2 = 0;
      v3 = *(this + 180) >> 5;
    }

    if ((icu::UnicodeString::indexOf(this + 352, L"MMMM", 0, -1, v2, v3 - v2) & 0x80000000) != 0)
    {
      if (*(this + 180) < 0)
      {
        v7 = *(this + 91);
        v6 = v7 & (v7 >> 31);
      }

      else
      {
        v6 = 0;
        v7 = *(this + 180) >> 5;
      }

      if (icu::UnicodeString::indexOf(this + 352, "M", 0, -1, v6, v7 - v6) >= 0)
      {
        v5 = 6;
      }

      else
      {
        v5 = 7;
      }
    }

    else
    {
      v5 = 4;
    }

    v16 = U_ZERO_ERROR;
    v8 = ures_open(0, *(this + 73), &v16);
    v24 = 0;
    memset(&v23[1], 0, 48);
    icu::StringPiece::StringPiece(&v18, "calendar/");
    v23[0] = &v23[1] + 5;
    LODWORD(v23[1]) = 40;
    WORD2(v23[1]) = 0;
    LODWORD(v24) = 0;
    icu::CharString::append(v23, v18, v19[0], &v16);
    v9 = (*(**(this + 41) + 184))(*(this + 41));
    icu::StringPiece::StringPiece(&v18, v9);
    v10 = icu::CharString::append(v23, v18, v19[0], &v16);
    icu::StringPiece::StringPiece(&v18, "/DateTimePatterns");
    icu::CharString::append(v10, v18, v19[0], &v16);
    v11 = ures_getByKeyWithFallback(v8, v23[0], 0, &v16);
    *v19 = 0u;
    v20 = 0u;
    v22 = 0;
    v21 = 0u;
    v18 = &unk_1F0935D00;
    LOWORD(v19[0]) = 2;
    v15 = 0;
    icu::SimpleDateFormat::getPatternForDateStyle(v5, v11, v11, &v15, &v18, &v16, v17);
    icu::UnicodeString::~UnicodeString(v12, v17);
    if (v16 > U_ZERO_ERROR || LOWORD(v19[0]) < 0x20u || (v19[0] & 1) != 0)
    {
      icu::UnicodeString::setToBogus((this + 416));
    }

    else
    {
      icu::UnicodeString::copyFrom(this + 52, &v18, 0);
    }

    icu::UnicodeString::~UnicodeString(v13, &v18);
    if (BYTE4(v23[1]))
    {
      free(v23[0]);
    }

    if (v11)
    {
      ures_close(v11);
    }

    if (v8)
    {
      ures_close(v8);
    }

    v14 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9840];

    icu::UnicodeString::setToBogus((this + 416));
  }
}

UChar **icu::SimpleDateFormat::SimpleDateFormat(UChar **this, UChar **a2, UChar **a3, const icu::Locale *a4, UErrorCode *a5)
{
  v10 = icu::DateFormat::DateFormat(this);
  *v10 = &unk_1F09428C0;
  icu::UnicodeString::UnicodeString((v10 + 44), a2);
  this[52] = &unk_1F0935D00;
  *(this + 212) = 2;
  this[60] = &unk_1F0935D00;
  *(this + 244) = 2;
  icu::Locale::Locale((this + 68), a4);
  this[103] = 0;
  *(this + 48) = 0u;
  *(this + 50) = 0u;
  icu::UnicodeString::copyFrom(this + 52, a3, 0);
  icu::UnicodeString::setToBogus((this + 60));
  icu::SimpleDateFormat::initializeBooleanAttributes(this);
  icu::SimpleDateFormat::initializeCalendar(this, 0, this + 68, a5);
  this[96] = icu::DateFormatSymbols::createForLocale((this + 68), a5, v11);
  icu::SimpleDateFormat::initialize(this, (this + 68), a5);
  icu::SimpleDateFormat::initializeDefaultCentury(this);
  icu::SimpleDateFormat::processOverrideString(this, a4, a3, 2, a5);
  return this;
}

icu::SimpleDateFormat *icu::SimpleDateFormat::SimpleDateFormat(icu::SimpleDateFormat *this, UChar **a2, icu::DateFormatSymbols *a3, UErrorCode *a4)
{
  v8 = icu::DateFormat::DateFormat(this);
  *v8 = &unk_1F09428C0;
  v9 = icu::UnicodeString::UnicodeString((v8 + 44), a2);
  *(this + 52) = &unk_1F0935D00;
  *(this + 212) = 2;
  *(this + 60) = &unk_1F0935D00;
  *(this + 244) = 2;
  Default = icu::Locale::getDefault(v9);
  icu::Locale::Locale((this + 544), Default);
  *(this + 96) = a3;
  *(this + 97) = 0;
  *(this + 103) = 0;
  *(this + 50) = 0u;
  icu::UnicodeString::setToBogus((this + 416));
  icu::UnicodeString::setToBogus((this + 480));
  icu::SimpleDateFormat::initializeBooleanAttributes(this);
  icu::SimpleDateFormat::initializeCalendar(this, 0, this + 68, a4);
  icu::SimpleDateFormat::initialize(this, (this + 544), a4);
  icu::SimpleDateFormat::initializeDefaultCentury(this);
  return this;
}

void icu::SimpleDateFormat::SimpleDateFormat(icu::SimpleDateFormat *this, UChar **a2, const icu::DateFormatSymbols *a3, UErrorCode *a4)
{
  v6 = icu::DateFormat::DateFormat(this);
  *v6 = &unk_1F09428C0;
  v7 = icu::UnicodeString::UnicodeString((v6 + 44), a2);
  *(this + 52) = &unk_1F0935D00;
  *(this + 212) = 2;
  *(this + 60) = &unk_1F0935D00;
  *(this + 244) = 2;
  Default = icu::Locale::getDefault(v7);
  icu::Locale::Locale((this + 544), Default);
  operator new();
}

uint64_t icu::SimpleDateFormat::SimpleDateFormat(uint64_t a1, unsigned int a2, signed int a3, uint64_t a4, UErrorCode *a5)
{
  v10 = icu::DateFormat::DateFormat(a1);
  *v10 = &unk_1F09428C0;
  v10[44] = &unk_1F0935D00;
  *(v10 + 180) = 2;
  v10[52] = &unk_1F0935D00;
  *(v10 + 212) = 2;
  v10[60] = &unk_1F0935D00;
  *(v10 + 244) = 2;
  icu::Locale::Locale((v10 + 68), a4);
  *(a1 + 824) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 800) = 0u;
  icu::SimpleDateFormat::initializeBooleanAttributes(a1);
  icu::SimpleDateFormat::construct(a1, a2, a3, a1 + 544, a5);
  if (*a5 <= 0)
  {
    icu::SimpleDateFormat::initializeDefaultCentury(a1);
  }

  return a1;
}

icu::SimpleDateFormat *icu::SimpleDateFormat::SimpleDateFormat(icu::SimpleDateFormat *this, const icu::Locale *a2, UErrorCode *a3)
{
  v6 = icu::DateFormat::DateFormat(this);
  *v6 = &unk_1F09428C0;
  sub_1951D6EE0((v6 + 44), L"yMMdd hh:mm a");
  *(this + 52) = &unk_1F0935D00;
  *(this + 212) = 2;
  *(this + 60) = &unk_1F0935D00;
  *(this + 244) = 2;
  icu::Locale::Locale((this + 544), a2);
  *(this + 103) = 0;
  *(this + 48) = 0u;
  *(this + 50) = 0u;
  if (*a3 <= 0)
  {
    icu::SimpleDateFormat::initializeBooleanAttributes(this);
    icu::SimpleDateFormat::initializeCalendar(this, 0, this + 68, a3);
    v8 = icu::DateFormatSymbols::createForLocale((this + 544), a3, v7);
    *(this + 96) = v8;
    if (*a3 >= 1)
    {
      *a3 = U_ZERO_ERROR;
      if (v8)
      {
        icu::DateFormatSymbols::~DateFormatSymbols(v8);
        MEMORY[0x19A8B2600]();
      }

      operator new();
    }

    icu::UnicodeString::setToBogus((this + 416));
    icu::UnicodeString::setToBogus((this + 480));
    icu::SimpleDateFormat::initialize(this, (this + 544), a3);
    if (*a3 <= 0)
    {
      icu::SimpleDateFormat::initializeDefaultCentury(this);
    }
  }

  return this;
}

uint64_t icu::SimpleDateFormat::SimpleDateFormat(icu::SimpleDateFormat *this, const icu::SimpleDateFormat *a2)
{
  v4 = icu::DateFormat::DateFormat(this, a2);
  *v4 = &unk_1F09428C0;
  v4[44] = &unk_1F0935D00;
  *(v4 + 180) = 2;
  v4[52] = &unk_1F0935D00;
  *(v4 + 212) = 2;
  v4[60] = &unk_1F0935D00;
  *(v4 + 244) = 2;
  icu::Locale::Locale((v4 + 68), a2 + 544);
  *(this + 103) = 0;
  *(this + 48) = 0u;
  *(this + 50) = 0u;
  icu::SimpleDateFormat::initializeBooleanAttributes(this);

  return icu::SimpleDateFormat::operator=(this, a2);
}

uint64_t icu::SimpleDateFormat::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 808);
    if (v4)
    {
      icu::number::SimpleNumberFormatter::cleanup(*(a1 + 808));
      MEMORY[0x19A8B2600](v4, 0x1020C40E72D6CFBLL);
    }

    *(a1 + 808) = 0;
    icu::DateFormat::operator=(a1, a2);
    icu::UnicodeString::operator=((a1 + 416), (a2 + 416));
    icu::UnicodeString::operator=((a1 + 480), (a2 + 480));
    v5 = *(a1 + 768);
    if (v5)
    {
      icu::DateFormatSymbols::~DateFormatSymbols(v5);
      MEMORY[0x19A8B2600]();
    }

    *(a1 + 768) = 0;
    if (*(a2 + 768))
    {
      operator new();
    }

    *(a1 + 784) = *(a2 + 784);
    *(a1 + 796) = *(a2 + 796);
    *(a1 + 816) = *(a2 + 816);
    icu::UnicodeString::operator=((a1 + 352), (a2 + 352));
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 795) = *(a2 + 795);
    icu::Locale::operator=((a1 + 544), a2 + 544);
    v6 = *(a1 + 776);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(a1 + 776) = 0;
    umtx_lock(&unk_1ED443060);
    v7 = *(a2 + 776);
    umtx_unlock(&unk_1ED443060);
    if (v7)
    {
      operator new();
    }

    v8 = *(a2 + 824);
    if (v8)
    {
      *(a1 + 824) = (*(*v8 + 32))(v8);
    }

    v9 = *(a1 + 800);
    if (v9)
    {
      sub_1953CB7D4(v9);
      *(a1 + 800) = 0;
    }

    if (*(a2 + 800))
    {
      v10 = malloc_type_malloc(0x130uLL, 0x6004044C4A2DFuLL);
      if (v10)
      {
        v11 = 0;
        v10[17] = 0u;
        v10[18] = 0u;
        v10[15] = 0u;
        v10[16] = 0u;
        v10[13] = 0u;
        v10[14] = 0u;
        v10[11] = 0u;
        v10[12] = 0u;
        v10[9] = 0u;
        v10[10] = 0u;
        v10[7] = 0u;
        v10[8] = 0u;
        v10[5] = 0u;
        v10[6] = 0u;
        v10[3] = 0u;
        v10[4] = 0u;
        v10[1] = 0u;
        v10[2] = 0u;
        *v10 = 0u;
        *(a1 + 800) = v10;
        do
        {
          sub_1952769E4(*(*(a2 + 800) + v11), (*(a1 + 800) + v11));
          v11 += 8;
        }

        while (v11 != 304);
      }

      else
      {
        *(a1 + 800) = 0;
      }
    }

    v13 = U_ZERO_ERROR;
    icu::SimpleDateFormat::initSimpleNumberFormatter(a1, &v13);
  }

  return a1;
}

char **icu::SimpleDateFormat::initSimpleNumberFormatter(char **this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    this = this[42];
    if (this)
    {
      v2 = **this;
      if (this)
      {
        this = (*(*this + 40))(this);
        if (this)
        {
          operator new();
        }
      }
    }
  }

  return this;
}

uint64_t icu::SimpleDateFormat::operator==(uint64_t a1, uint64_t a2)
{
  result = icu::DateFormat::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 360);
  if (v5)
  {
    if ((*(a2 + 360) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if ((v5 & 0x8000) != 0)
  {
    v6 = *(a1 + 364);
  }

  else
  {
    v6 = v5 >> 5;
  }

  result = 0;
  v7 = *(a2 + 360);
  if ((v7 & 0x8000u) == 0)
  {
    v8 = v7 >> 5;
  }

  else
  {
    v8 = *(a2 + 364);
  }

  if ((v7 & 1) == 0 && v6 == v8)
  {
    v9 = (v7 & 2) != 0 ? (a2 + 362) : *(a2 + 376);
    result = icu::UnicodeString::doEquals(a1 + 352, v9, v6);
    if (result)
    {
LABEL_17:
      result = *(a1 + 768);
      if (!result)
      {
        return result;
      }

      v10 = *(a2 + 768);
      if (v10)
      {
        result = icu::DateFormatSymbols::operator==(result, v10);
        if (!result)
        {
          return result;
        }

        if (*(a1 + 816) == *(a2 + 816) && *(a1 + 784) == *(a2 + 784))
        {
          v11 = *(a1 + 776);
          v12 = *(a2 + 776);
          if (v11)
          {
            if (v12)
            {
              result = (*(*v11 + 24))(v11);
              if (!result)
              {
                return result;
              }

              goto LABEL_29;
            }
          }

          else if (!v12)
          {
LABEL_29:
            result = sub_195213DE4(a1 + 416, a2 + 416);
            if (result)
            {
              result = sub_195213DE4(a1 + 480, a2 + 480);
              if (result)
              {
                return (*(a1 + 795) == 0) ^ (*(a2 + 795) != 0);
              }
            }

            return result;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t icu::SimpleDateFormat::getPatternForTimeStyle@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, char **a3@<X2>, uint64_t a4@<X3>, icu::UnicodeString *a5@<X4>, UErrorCode *a6@<X5>, uint64_t a7@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  *(a7 + 8) = 0u;
  v10 = (a7 + 8);
  *(a7 + 56) = 0;
  *(a7 + 40) = 0u;
  *(a7 + 24) = 0u;
  *a7 = &unk_1F0935D00;
  *(a7 + 8) = 2;
  if (a2 > 3)
  {
    goto LABEL_27;
  }

  v29 = a4;
  v30 = a5;
  memset(v38, 0, 157);
  BaseName = v38;
  v14 = ulocimp_setRegionToSupplementalRegion(a3[5]);
  if (*a6 > 0 || v14 <= 0)
  {
    BaseName = icu::Locale::getBaseName(a3);
  }

  v33 = U_ZERO_ERROR;
  result = icu::Locale::getKeywordValue(a3, "hours", 0, 0, &v33);
  v16 = result > 0;
  if (BaseName)
  {
    if (*BaseName)
    {
      v17 = result;
      result = strcmp(BaseName, "und");
      if (result)
      {
        v32 = U_ZERO_ERROR;
        LocaleID = icu::Format::getLocaleID(a1, 1, &v32);
        if (v17 > 0 || (__s1 = LocaleID, result = icu::DateTimePatternGenerator::localeUsesLongDayPeriods(a3, LocaleID), (result & 1) != 0) || v32 <= U_ZERO_ERROR && (result = strcmp(__s1, BaseName), result))
        {
          *__s2 = 0;
          memset(v37, 0, 14);
          uloc_minimizeSubtags(BaseName, __s2, 22, &v32);
          BYTE5(v37[1]) = 0;
          v19 = icu::Format::getLocaleID(a1, 0, &v32);
          if (v32 <= U_ZERO_ERROR)
          {
            v16 = strcmp(v19, __s2) || v17 > 0;
          }

          result = icu::DateTimePatternGenerator::localeUsesLongDayPeriods(a3, v20);
          if ((result & 1) != 0 || v16)
          {
            result = icu::DateTimePatternGenerator::createInstance(a3, &v32, 1);
            v22 = result;
            if (v32 <= U_ZERO_ERROR)
            {
              memset(v35, 0, sizeof(v35));
              v31 = off_1E7410058[a2];
              icu::UnicodeString::UnicodeString(v35, 1, &v31);
              if (!icu::DateTimePatternGenerator::localeUsesLongDayPeriods(a3, v23))
              {
                v34[0] = 67;
                icu::UnicodeString::doReplace(v35, 0, 1, v34, 0, 1);
              }

              icu::DateTimePatternGenerator::getBestPattern(v22, v35, &v32, v34);
              icu::UnicodeString::operator=(a7, v34);
              icu::UnicodeString::~UnicodeString(v24, v34);
              result = icu::UnicodeString::~UnicodeString(v25, v35);
            }

            if (v22)
            {
              result = (*(*v22 + 8))(v22);
            }
          }
        }
      }
    }
  }

  a4 = v29;
  a5 = v30;
  if (*v10 <= 0x1Fu)
  {
LABEL_27:
    icu::SimpleDateFormat::getPatternString(a2, a4, a5, a6, v38);
    icu::UnicodeString::operator=(a7, v38);
    result = icu::UnicodeString::~UnicodeString(v26, v38);
  }

  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void *icu::SimpleDateFormat::getPatternForDateStyle@<X0>(signed int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X4>, UChar **a5@<X5>, UErrorCode *a6@<X6>, uint64_t a7@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v43 = &unk_1F0935D00;
  LOWORD(v44) = 2;
  memset(v42, 0, sizeof(v42));
  icu::SimpleDateFormat::getPatternString(a1, a2, &v43, a6, v42);
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  icu::UnicodeString::UnicodeString(a7, v42);
  icu::UnicodeString::operator=(a5, &v43);
  v14 = *a4;
  if (*a4)
  {
    *a4 = 0;
    v14 = a1 & 0xFFFFFFFE;
    if (v14 == 6)
    {
      v38 = 0u;
      v41 = 0;
      v40 = 0u;
      v39 = 0u;
      v37 = &unk_1F0935D00;
      LOWORD(v38) = 2;
      memset(v36, 0, sizeof(v36));
      icu::SimpleDateFormat::getPatternString(a1, a3, &v37, a6, v36);
      LocaleByType = ures_getLocaleByType(a3, 0, a6);
      if (uloc_isRightToLeft(LocaleByType))
      {
        v16 = ures_getLocaleByType(a2, 0, a6);
        v17 = uloc_isRightToLeft(v16) == 0;
      }

      else
      {
        v17 = 0;
      }

      v18 = *a6;
      if (v18 > 0)
      {
        goto LABEL_7;
      }

      if (sub_19531CA6C(v36))
      {
        icu::UnicodeString::operator=(a5, &v37);
        icu::UnicodeString::operator=(a7, v36);
        v18 = 1;
        *a4 = 1;
        if (!v17)
        {
LABEL_7:
          icu::UnicodeString::~UnicodeString(v18, v36);
          icu::UnicodeString::~UnicodeString(v19, &v37);
          goto LABEL_8;
        }

        icu::UnicodeString::UnicodeString(v33, 8207);
        v31 = &unk_1F0935D00;
        v32 = 2;
        v23 = *(a7 + 8);
        v24 = v23;
        v25 = v23 >> 5;
        if (v24 >= 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = *(a7 + 12);
        }

        if ((v34 & 0x8000u) == 0)
        {
          v27 = v34 >> 5;
        }

        else
        {
          v27 = v35;
        }

        icu::UnicodeString::findAndReplace(a7, 0, v26, v33, 0, v27, &v31, 0, 0);
      }

      else
      {
        if (a1 != 6)
        {
          goto LABEL_7;
        }

        if (!sub_19531CA6C(v42))
        {
          goto LABEL_7;
        }

        icu::SimpleDateFormat::getPatternString(7, a3, &v37, a6, v33);
        icu::UnicodeString::operator=(v36, v33);
        icu::UnicodeString::~UnicodeString(v30, v33);
        if (!sub_19531CA6C(v36))
        {
          goto LABEL_7;
        }

        icu::UnicodeString::operator=(a5, &v37);
        icu::UnicodeString::operator=(a7, v36);
        v18 = 1;
        *a4 = 1;
        if (!v17)
        {
          goto LABEL_7;
        }

        icu::UnicodeString::UnicodeString(v33, 8207);
        v31 = &unk_1F0935D00;
        v32 = 2;
        sub_1952E8E98(a7, v33, &v31);
      }

      icu::UnicodeString::~UnicodeString(v28, &v31);
      icu::UnicodeString::~UnicodeString(v29, v33);
      goto LABEL_7;
    }
  }

LABEL_8:
  icu::UnicodeString::~UnicodeString(v14, v42);
  result = icu::UnicodeString::~UnicodeString(v20, &v43);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void icu::SimpleDateFormat::getPatternString(signed int a1@<W1>, uint64_t a2@<X2>, icu::UnicodeString *a3@<X3>, UErrorCode *a4@<X4>, uint64_t a5@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  *(a5 + 8) = 0u;
  *(a5 + 56) = 0;
  *(a5 + 40) = 0u;
  *(a5 + 24) = 0u;
  *a5 = &unk_1F0935D00;
  *(a5 + 8) = 2;
  v8 = ures_getByIndex(a2, a1, 0, a4);
  v9 = v8;
  if (*(a3 + 4))
  {
    v10 = 2;
  }

  else
  {
    v10 = *(a3 + 4) & 0x1E;
  }

  *(a3 + 4) = v10;
  if (*a4 < 1)
  {
    Type = ures_getType(v8);
    if (Type == 8)
    {
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0;
      v21 = &unk_1F0935D00;
      LOWORD(v22) = 2;
      v20 = 0;
      StringByIndex = ures_getStringByIndex(v9, 0, &v20, a4);
      if (*a4 <= 0)
      {
        v19 = StringByIndex;
        icu::UnicodeString::setTo(&v21, 1, &v19, v20);
      }

      else
      {
        icu::UnicodeString::setToBogus(&v21);
      }

      icu::UnicodeString::operator=(a5, &v21);
      icu::UnicodeString::~UnicodeString(v16, &v21);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0;
      v21 = &unk_1F0935D00;
      LOWORD(v22) = 2;
      v20 = 0;
      v17 = ures_getStringByIndex(v9, 1, &v20, a4);
      if (*a4 <= 0)
      {
        v19 = v17;
        icu::UnicodeString::setTo(&v21, 1, &v19, v20);
      }

      else
      {
        icu::UnicodeString::setToBogus(&v21);
      }

      v15 = a3;
    }

    else
    {
      if (Type)
      {
        goto LABEL_5;
      }

      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0;
      v21 = &unk_1F0935D00;
      LOWORD(v22) = 2;
      v20 = 0;
      String = ures_getString(v9, &v20, a4);
      if (*a4 <= 0)
      {
        v19 = String;
        icu::UnicodeString::setTo(&v21, 1, &v19, v20);
      }

      else
      {
        icu::UnicodeString::setToBogus(&v21);
      }

      v15 = a5;
    }

    icu::UnicodeString::operator=(v15, &v21);
    icu::UnicodeString::~UnicodeString(v18, &v21);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_5:
  *a4 = U_INVALID_FORMAT_ERROR;
  if (v9)
  {
LABEL_6:
    ures_close(v9);
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
}

icu::UnicodeString *icu::SimpleDateFormat::parsePattern(icu::UnicodeString *this)
{
  v1 = this;
  *(this + 396) = 0;
  *(this + 794) = 0;
  v2 = *(this + 180);
  if ((v2 & 0x8000) != 0)
  {
    v3 = *(this + 91);
  }

  else
  {
    v3 = v2 >> 5;
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = v3;
    do
    {
      v7 = *(v1 + 360);
      if (*(v1 + 360) < 0)
      {
        v8 = *(v1 + 364);
      }

      else
      {
        v8 = v7 >> 5;
      }

      if (v4 >= v8)
      {
        v11 = v5;
      }

      else
      {
        v9 = v1 + 362;
        if ((v7 & 2) == 0)
        {
          v9 = *(v1 + 376);
        }

        v10 = *(v9 + 2 * v4);
        if (v10 == 39)
        {
          v11 = v5 == 0;
        }

        else
        {
          v11 = v5;
        }

        if (v10 == 24180)
        {
          *(v1 + 794) = 1;
          if (v5)
          {
            v11 = v11;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          if (!v11)
          {
            if (v10 != 8239)
            {
              if (v10 == 115)
              {
                v11 = 0;
                *(v1 + 793) = 1;
              }

              else
              {
                v11 = 0;
                if (v10 == 109)
                {
                  *(v1 + 792) = 1;
                }
              }

              goto LABEL_20;
            }

LABEL_29:
            if (*(v1 + 795))
            {
              this = icu::UnicodeString::setCharAt((v1 + 352), v4, 32);
            }

            goto LABEL_20;
          }

          if (v10 == 8239)
          {
            goto LABEL_29;
          }
        }
      }

LABEL_20:
      ++v4;
      v5 = v11;
    }

    while (v6 != v4);
  }

  return this;
}

void icu::SimpleDateFormat::initNumberFormatters(icu::SimpleDateFormat *this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a3 <= 0 && ((*(this + 212) & 1) == 0 || (*(this + 244) & 1) == 0))
  {
    umtx_lock(&unk_1ED443060);
    if (!*(this + 100))
    {
      v6 = malloc_type_malloc(0x130uLL, 0x6004044C4A2DFuLL);
      if (v6)
      {
        v6[17] = 0u;
        v6[18] = 0u;
        v6[15] = 0u;
        v6[16] = 0u;
        v6[13] = 0u;
        v6[14] = 0u;
        v6[11] = 0u;
        v6[12] = 0u;
        v6[9] = 0u;
        v6[10] = 0u;
        v6[7] = 0u;
        v6[8] = 0u;
        v6[5] = 0u;
        v6[6] = 0u;
        v6[3] = 0u;
        v6[4] = 0u;
        v6[1] = 0u;
        v6[2] = 0u;
        *v6 = 0u;
        *(this + 100) = v6;
      }

      else
      {
        *(this + 100) = 0;
        *a3 = U_MEMORY_ALLOCATION_ERROR;
      }
    }

    umtx_unlock(&unk_1ED443060);
    if (*a3 <= 0)
    {
      icu::SimpleDateFormat::processOverrideString(this, a2, (this + 416), 0, a3);

      icu::SimpleDateFormat::processOverrideString(this, a2, (this + 480), 1, a3);
    }
  }
}

uint64_t icu::SimpleDateFormat::parseAmbiguousDatesAsAfter(uint64_t this, double a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    this = *(this + 328);
    if (this)
    {
      this = icu::Calendar::setTimeInMillis(this, a2, a3);
      if (*a3 <= 0)
      {
        *(v4 + 816) = 1;
        *(v4 + 784) = a2;
        this = icu::Calendar::get(*(v4 + 328), 1u, a3);
        *(v4 + 796) = this;
      }
    }

    else
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return this;
}

icu::UnicodeString *icu::SimpleDateFormat::format(icu::SimpleDateFormat *this, icu::Calendar *a2, icu::UnicodeString *a3, icu::FieldPosition *a4)
{
  v9 = U_ZERO_ERROR;
  memset(v8, 0, sizeof(v8));
  sub_195325204(v8, a4);
  icu::SimpleDateFormat::_format(this, a2, a3, v8, &v9);
  nullsub_30(v8);
  return a3;
}

icu::UnicodeString *icu::SimpleDateFormat::_format(icu::SimpleDateFormat *this, icu::Calendar *a2, icu::UnicodeString *a3, icu::FieldPositionHandler *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v7 = a2;
    if (*(this + 41) == a2 || (v9 = (*(*a2 + 184))(a2), v10 = (*(**(this + 41) + 184))(*(this + 41)), !strcmp(v9, v10)))
    {
      v12 = 0;
    }

    else
    {
      v11 = (*(**(this + 41) + 24))(*(this + 41));
      if (!v11)
      {
        *a5 = U_MEMORY_ALLOCATION_ERROR;
        return a3;
      }

      v12 = v11;
      TimeInMillis = icu::Calendar::getTimeInMillis(v7, a5);
      icu::Calendar::setTimeInMillis(v12, TimeInMillis, a5);
      TimeZone = icu::Calendar::getTimeZone(v7);
      icu::Calendar::setTimeZone(v12, TimeZone);
      v7 = v12;
    }

    v35 = (*(*this + 208))(this, 1, a5);
    v15 = *(this + 180);
    if ((v15 & 0x8000) != 0)
    {
      v16 = *(this + 91);
    }

    else
    {
      v16 = v15 >> 5;
    }

    if (v16 >= 1 && *a5 <= U_ZERO_ERROR)
    {
      v32 = v12;
      v33 = v7;
      v34 = a4;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = *(this + 180);
        if (*(this + 180) < 0)
        {
          v24 = *(this + 91);
        }

        else
        {
          v24 = v23 >> 5;
        }

        if (v24 <= v18)
        {
          v26 = 0xFFFF;
        }

        else
        {
          v25 = this + 362;
          if ((v23 & 2) == 0)
          {
            v25 = *(this + 47);
          }

          v26 = *&v25[2 * v18];
        }

        if (v26 != v21 && v20 >= 1)
        {
          icu::SimpleDateFormat::subFormat(this, a3, v21, v20, v35, v19, v21, v34, v33, a5);
          v20 = 0;
          ++v19;
        }

        if (v26 == 39)
        {
          v27 = v18 + 1;
          if (v27 >= v16)
          {
            goto LABEL_42;
          }

          v28 = *(this + 180);
          v29 = *(this + 180) < 0 ? *(this + 91) : v28 >> 5;
          if (v29 <= v27)
          {
            goto LABEL_42;
          }

          v30 = this + 362;
          if ((v28 & 2) == 0)
          {
            v30 = *(this + 47);
          }

          if (*&v30[2 * v27] == 39)
          {
            v37 = 39;
            icu::UnicodeString::doAppend(a3, &v37, 0, 1);
            ++v18;
          }

          else
          {
LABEL_42:
            v22 = !v22;
          }
        }

        else if (v22 || v26 > 0x7F || !byte_195492D64[v26])
        {
          v38 = v26;
          icu::UnicodeString::doAppend(a3, &v38, 0, 1);
        }

        else
        {
          v22 = 0;
          ++v20;
          v21 = v26;
        }

        ++v18;
      }

      while (v18 < v16 && *a5 <= 0);
      v12 = v32;
      if (v20 > 0)
      {
        icu::SimpleDateFormat::subFormat(this, a3, v21, v20, v35, v19, v21, v34, v33, a5);
      }
    }

    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  return a3;
}

icu::UnicodeString *icu::SimpleDateFormat::format(icu::SimpleDateFormat *this, icu::Calendar *a2, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  icu::FieldPositionIteratorHandler::FieldPositionIteratorHandler(v10, a4, a5);
  icu::SimpleDateFormat::_format(this, a2, a3, v10, a5);
  icu::FieldPositionIteratorHandler::~FieldPositionIteratorHandler(v10);
  return a3;
}

void icu::SimpleDateFormat::subFormat(uint64_t a1, uint64_t a2, unsigned __int16 a3, int a4, int a5, int a6, __int16 a7, uint64_t a8, icu::Calendar *a9, UErrorCode *a10)
{
  v205 = *MEMORY[0x1E69E9840];
  v12 = (a1 + 336);
  v14 = a4 == 4 || a4 > 5;
  v197 = v14;
  while (2)
  {
    v201 = a7;
    if ((atomic_load_explicit(&qword_1ED4430B0, memory_order_acquire) & 1) == 0)
    {
      sub_19542FF14();
    }

    if (*a10 > 0)
    {
      goto LABEL_399;
    }

    PatternCharIndex = icu::DateFormatSymbols::getPatternCharIndex(a3);
    if (PatternCharIndex != 38)
    {
      v16 = PatternCharIndex;
      v17 = *(a2 + 8);
      v18 = *(a2 + 12);
      if (PatternCharIndex > 0x22)
      {
        v19 = 0;
      }

      else
      {
        if (PatternCharIndex == 34)
        {
          v20 = (*(*a9 + 440))(a9, a10);
        }

        else
        {
          v20 = icu::Calendar::get(a9, icu::SimpleDateFormat::fgPatternIndexToCalendarField[PatternCharIndex], a10);
        }

        v19 = v20;
        if (*a10 > 0)
        {
          goto LABEL_399;
        }
      }

      v21 = a1;
      v22 = *(a1 + 800);
      v23 = v12;
      if (v22)
      {
        v24 = *(v22 + 8 * v16);
        if (v24)
        {
          v23 = (v24 + 24);
        }

        else
        {
          v23 = v12;
        }
      }

      v25 = *v23;
      if (!*v23)
      {
        v57 = 5;
LABEL_82:
        *a10 = v57;
        goto LABEL_399;
      }

      switch(v16)
      {
        case 0:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          v91 = (*(*a9 + 184))(a9);
          if (!strcmp(v91, "chinese") || !strcmp(v91, "dangi"))
          {
            v71 = a1;
            v72 = v25;
            v73 = a2;
            v74 = v19;
            v75 = 1;
            v130 = 9;
            goto LABEL_305;
          }

          v92 = *(a1 + 768);
          if (a4 == 4)
          {
            v54 = 7;
            v55 = a8;
            v56 = v201;
            if ((v19 & 0x80000000) == 0 && v19 < *(v92 + 32))
            {
              v161 = *(v92 + 24) + (v19 << 6);
              v162 = *(v161 + 8);
              v163 = v162;
              v164 = v162 >> 5;
              if (v163 >= 0)
              {
                v165 = v164;
              }

              else
              {
                v165 = *(v161 + 12);
              }

              icu::UnicodeString::doAppend(a2, v161, 0, v165);
              v54 = 7;
            }
          }

          else if (a4 == 5)
          {
            v54 = 9;
            v55 = a8;
            v56 = v201;
            if ((v19 & 0x80000000) == 0 && v19 < *(v92 + 48))
            {
              v93 = *(v92 + 40) + (v19 << 6);
              v94 = *(v93 + 8);
              v95 = v94;
              v96 = v94 >> 5;
              if (v95 >= 0)
              {
                v97 = v96;
              }

              else
              {
                v97 = *(v93 + 12);
              }

              icu::UnicodeString::doAppend(a2, v93, 0, v97);
              v54 = 9;
            }
          }

          else
          {
            v54 = 8;
            v55 = a8;
            v56 = v201;
            if ((v19 & 0x80000000) == 0 && v19 < *(v92 + 16))
            {
              v166 = *(v92 + 8) + (v19 << 6);
              v167 = *(v166 + 8);
              v168 = v167;
              v169 = v167 >> 5;
              if (v168 >= 0)
              {
                v170 = v169;
              }

              else
              {
                v170 = *(v166 + 12);
              }

              icu::UnicodeString::doAppend(a2, v166, 0, v170);
              v54 = 8;
            }
          }

          goto LABEL_394;
        case 1:
        case 18:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          goto LABEL_98;
        case 2:
        case 26:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          v58 = (*(*a9 + 184))(a9);
          if (!strcmp(v58, "hebrew"))
          {
            v113 = icu::Calendar::get(a9, 1u, a10);
            isLeapYear = icu::HebrewCalendar::isLeapYear(v113);
            v115 = v19 != 6 || !isLeapYear;
            v59 = a4;
            if (v115 || a4 <= 2)
            {
              v117 = v19;
            }

            else
            {
              v117 = 13;
            }

            v118 = icu::Calendar::get(a9, 1u, a10);
            v121 = !icu::HebrewCalendar::isLeapYear(v118) && v117 > 5 && a4 < 3;
            LODWORD(v19) = v117 - v121;
          }

          else
          {
            v59 = a4;
          }

          v122 = a1;
          v123 = *(a1 + 768);
          if (*(v123 + 472) && *(v123 + 480) >= 7)
          {
            v124 = icu::Calendar::get(a9, 0x16u, a10);
            v122 = a1;
            v125 = v124 == 0;
          }

          else
          {
            v125 = 1;
          }

          switch(v59)
          {
            case 3:
              v135 = *(v122 + 96);
              if (v16 == 2)
              {
                v132 = *(v135 + 72);
                v133 = *(v135 + 80);
                v55 = a8;
                v56 = v201;
                if (!v125)
                {
                  v134 = (*(v135 + 472) + 64);
                  goto LABEL_380;
                }

                goto LABEL_266;
              }

              v152 = *(v135 + 120);
              v153 = *(v135 + 128);
              v55 = a8;
              v56 = v201;
              if (!v125)
              {
                v154 = (*(v135 + 472) + 256);
                goto LABEL_382;
              }

              break;
            case 4:
              v131 = *(v122 + 96);
              if (v16 == 2)
              {
                v132 = *(v131 + 56);
                v133 = *(v131 + 64);
                v55 = a8;
                v56 = v201;
                if (!v125)
                {
                  v134 = *(v131 + 472);
LABEL_380:
                  sub_1953D0EC0(a2, v19, v132, v133, v134, a10);
                  v54 = 1;
                  goto LABEL_394;
                }

LABEL_266:
                v134 = 0;
                goto LABEL_380;
              }

              v152 = *(v131 + 104);
              v153 = *(v131 + 112);
              v55 = a8;
              v56 = v201;
              if (!v125)
              {
                v154 = (*(v131 + 472) + 192);
LABEL_382:
                sub_1953D0EC0(a2, v19, v152, v153, v154, a10);
                v54 = 2;
                goto LABEL_394;
              }

              break;
            case 5:
              v126 = *(v122 + 96);
              if (v16 == 2)
              {
                v127 = *(v126 + 88);
                v128 = *(v126 + 96);
                v55 = a8;
                v56 = v201;
                if (!v125)
                {
                  v129 = (*(v126 + 472) + 128);
LABEL_384:
                  sub_1953D0EC0(a2, v19, v127, v128, v129, a10);
                  v54 = 3;
                  goto LABEL_394;
                }
              }

              else
              {
                v127 = *(v126 + 136);
                v128 = *(v126 + 144);
                v55 = a8;
                v56 = v201;
                if (!v125)
                {
                  v129 = (*(v126 + 472) + 320);
                  goto LABEL_384;
                }
              }

              v129 = 0;
              goto LABEL_384;
            default:
              memset(v204 + 8, 0, 56);
              *&v204[0] = &unk_1F0935D00;
              WORD4(v204[0]) = 2;
              icu::SimpleDateFormat::zeroPaddingNumber(v122, v25, v204, (v19 + 1), v59, 10);
              v136 = 0;
              if (!v125)
              {
                v136 = (*(*(a1 + 768) + 472) + 384);
              }

              sub_1953D0EC0(a2, 0, v204, 1, v136, a10);
LABEL_270:
              icu::UnicodeString::~UnicodeString(v111, v204);
LABEL_306:
              v54 = 0;
              goto LABEL_307;
          }

          v154 = 0;
          goto LABEL_382;
        case 3:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          v76 = (*(*a9 + 184))(a9);
          if (!strcmp(v76, "vikram") && icu::Calendar::get(a9, 0x16u, a10) == 1)
          {
            v19 = ((v19 + 15) % 30);
          }

          v63 = a4;
          v56 = v201;
          v64 = a1;
          v65 = v25;
          v66 = a2;
          v62 = v19;
          goto LABEL_136;
        case 4:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          if (v19)
          {
            goto LABEL_206;
          }

          v89 = a1;
          v90 = (*(*a9 + 128))(a9, 11);
          goto LABEL_302;
        case 8:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          if (a4 >= 3)
          {
            v75 = 3;
          }

          else
          {
            v75 = a4;
          }

          if (a4 == 1)
          {
            v79 = 100;
          }

          else
          {
            if (a4 != 2)
            {
              icu::SimpleDateFormat::zeroPaddingNumber(a1, v25, a2, v19, v75, 10);
              if (a4 >= 4)
              {
                v71 = a1;
                v72 = v25;
                v73 = a2;
                v74 = 0;
                v75 = (a4 - 3);
LABEL_304:
                v130 = 10;
LABEL_305:
                icu::SimpleDateFormat::zeroPaddingNumber(v71, v72, v73, v74, v75, v130);
              }

              goto LABEL_306;
            }

            v79 = 10;
          }

          v74 = (v19 / v79);
          v71 = a1;
          v72 = v25;
          v73 = a2;
          goto LABEL_304;
        case 9:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          goto LABEL_187;
        case 14:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          v77 = *(a1 + 768);
          if (a4 > 4)
          {
            v54 = 0;
            v55 = a8;
            v56 = v201;
            if ((v19 & 0x80000000) != 0 || v19 >= *(v77 + 304))
            {
              goto LABEL_394;
            }

            v78 = *(v77 + 296);
          }

          else
          {
            v54 = 0;
            v55 = a8;
            v56 = v201;
            if ((v19 & 0x80000000) != 0 || v19 >= *(v77 + 288))
            {
              goto LABEL_394;
            }

            v78 = *(v77 + 280);
          }

          v140 = v78 + (v19 << 6);
          goto LABEL_357;
        case 15:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          if (v19)
          {
            goto LABEL_206;
          }

          v89 = a1;
          v90 = (*(*a9 + 160))(a9, 10);
LABEL_302:
          v74 = (v90 + 1);
          v71 = v89;
          v72 = v25;
          v73 = a2;
          goto LABEL_303;
        case 17:
        case 23:
        case 24:
        case 29:
        case 31:
        case 32:
        case 33:
          memset(&v204[14], 0, 32);
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          memset(v204, 0, 224);
          memset(v203, 0, sizeof(v203));
          icu::UnicodeString::UnicodeString(v203, v204, 0, 128);
          TimeZone = icu::Calendar::getTimeZone(a9);
          TimeInMillis = icu::Calendar::getTimeInMillis(a9, a10);
          v53 = icu::SimpleDateFormat::tzFormat(a1, a10);
          if (*a10 > 0)
          {
            goto LABEL_77;
          }

          if (v16 > 28)
          {
            if (v16 <= 31)
            {
              if (v16 != 29)
              {
                if (v16 == 31)
                {
                  v56 = v201;
                  if (a4 != 4 && a4 != 1)
                  {
                    goto LABEL_388;
                  }

                  goto LABEL_387;
                }

LABEL_431:
                abort();
              }

              v54 = 0;
              v56 = v201;
              if (a4 > 2)
              {
                if (a4 != 3)
                {
                  v55 = a8;
                  if (a4 == 4)
                  {
                    (*(*v53 + 64))(v53, 0, TimeZone, v203, 0, TimeInMillis);
                    v54 = 10;
                  }

                  goto LABEL_390;
                }
              }

              else if (a4 != 1)
              {
                v55 = a8;
                if (a4 == 2)
                {
                  goto LABEL_366;
                }

LABEL_390:
                if ((SWORD4(v203[0]) & 0x8000u) == 0)
                {
                  v171 = WORD4(v203[0]) >> 5;
                }

                else
                {
                  v171 = HIDWORD(v203[0]);
                }

                icu::UnicodeString::doAppend(a2, v203, 0, v171);
                icu::UnicodeString::~UnicodeString(v172, v203);
                goto LABEL_394;
              }

              goto LABEL_387;
            }

            if (v16 == 32)
            {
              v54 = 0;
              v56 = v201;
              if (a4 > 2)
              {
                if (a4 != 3 && a4 != 4)
                {
                  v55 = a8;
                  if (a4 == 5)
                  {
                    goto LABEL_366;
                  }

                  goto LABEL_390;
                }

LABEL_387:
                (*(*v53 + 64))(TimeInMillis);
                goto LABEL_388;
              }

              if (a4 == 1)
              {
                goto LABEL_387;
              }

              v55 = a8;
              if (a4 != 2)
              {
                goto LABEL_390;
              }
            }

            else
            {
              if (v16 != 33)
              {
                goto LABEL_431;
              }

              v54 = 0;
              v56 = v201;
              if (a4 <= 2)
              {
                if (a4 != 1)
                {
                  v55 = a8;
                  if (a4 == 2)
                  {
                    goto LABEL_366;
                  }

                  goto LABEL_390;
                }

                goto LABEL_387;
              }

              if (a4 == 3 || a4 == 4)
              {
                goto LABEL_387;
              }

              v55 = a8;
              if (a4 != 5)
              {
                goto LABEL_390;
              }
            }

LABEL_366:
            (*(*v53 + 64))(TimeInMillis);
            v54 = 0;
            goto LABEL_390;
          }

          switch(v16)
          {
            case 17:
              (*(*v53 + 64))(TimeInMillis);
              if (a4 > 3)
              {
                v54 = 12;
              }

              else
              {
                v54 = 13;
              }

              break;
            case 23:
              if (a4 > 3)
              {
                v56 = v201;
                (*(*v53 + 64))(TimeInMillis);
                goto LABEL_388;
              }

              (*(*v53 + 64))(v53, 12, TimeZone, v203, 0, TimeInMillis);
LABEL_77:
              v54 = 0;
              break;
            case 24:
              v56 = v201;
              if (a4 == 4)
              {
                (*(*v53 + 64))(v53, 1, TimeZone, v203, 0, TimeInMillis);
                v54 = 12;
                goto LABEL_389;
              }

              if (a4 == 1)
              {
                (*(*v53 + 64))(v53, 2, TimeZone, v203, 0, TimeInMillis);
                v54 = 13;
LABEL_389:
                v55 = a8;
                goto LABEL_390;
              }

LABEL_388:
              v54 = 0;
              goto LABEL_389;
            default:
              goto LABEL_431;
          }

          v55 = a8;
          v56 = v201;
          goto LABEL_390;
        case 19:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          v75 = a4;
          if (a4 <= 2)
          {
            v71 = a1;
            v72 = *v23;
            v73 = a2;
            v74 = v19;
            goto LABEL_304;
          }

          v141 = icu::Calendar::get(a9, 7u, a10);
          if (*a10 >= 1)
          {
            goto LABEL_399;
          }

          LODWORD(v19) = v141;
          v21 = a1;
LABEL_187:
          v98 = *(v21 + 768);
          if (a4 == 4)
          {
            v54 = 4;
            v56 = v201;
            if ((v19 & 0x80000000) != 0)
            {
              goto LABEL_139;
            }

            v55 = a8;
            if (v19 >= *(v98 + 160))
            {
              goto LABEL_394;
            }

            v146 = *(v98 + 152);
          }

          else if (a4 == 6)
          {
            v54 = 4;
            v56 = v201;
            if ((v19 & 0x80000000) != 0)
            {
              goto LABEL_139;
            }

            v55 = a8;
            if (v19 >= *(v98 + 192))
            {
              goto LABEL_394;
            }

            v146 = *(v98 + 184);
          }

          else
          {
            v56 = v201;
            if (a4 == 5)
            {
              v54 = 6;
              v55 = a8;
              if ((v19 & 0x80000000) == 0 && v19 < *(v98 + 208))
              {
                v99 = *(v98 + 200);
                v100 = v19;
                goto LABEL_193;
              }

              goto LABEL_394;
            }

            v54 = 4;
            v55 = a8;
            if ((v19 & 0x80000000) != 0 || v19 >= *(v98 + 176))
            {
              goto LABEL_394;
            }

            v146 = *(v98 + 168);
          }

          v147 = v146 + (v19 << 6);
          v148 = *(v147 + 8);
          v149 = v148;
          v150 = v148 >> 5;
          if (v149 >= 0)
          {
            v151 = v150;
          }

          else
          {
            v151 = *(v147 + 12);
          }

          icu::UnicodeString::doAppend(a2, v147, 0, v151);
          v54 = 4;
          goto LABEL_394;
        case 25:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          if (a4 <= 2)
          {
            v71 = a1;
            v72 = *v23;
            v73 = a2;
            v74 = v19;
            v75 = 1;
            goto LABEL_304;
          }

          v138 = icu::Calendar::get(a9, 7u, a10);
          if (*a10 > 0)
          {
            goto LABEL_399;
          }

          v139 = *(a1 + 768);
          switch(a4)
          {
            case 4:
              v54 = 5;
              if (v138 < 0)
              {
                goto LABEL_307;
              }

              v55 = a8;
              v56 = v201;
              if (v138 >= *(v139 + 224))
              {
                goto LABEL_394;
              }

              v190 = *(v139 + 216);
              break;
            case 6:
              v54 = 5;
              v56 = v201;
              if (v138 < 0)
              {
                goto LABEL_139;
              }

              v55 = a8;
              if (v138 >= *(v139 + 256))
              {
                goto LABEL_394;
              }

              v190 = *(v139 + 248);
              break;
            case 5:
              v54 = 6;
              v55 = a8;
              v56 = v201;
              if ((v138 & 0x80000000) == 0 && v138 < *(v139 + 272))
              {
                v99 = *(v139 + 264);
                v100 = v138;
LABEL_193:
                v101 = v99 + (v100 << 6);
                v102 = *(v101 + 8);
                v103 = v102;
                v104 = v102 >> 5;
                if (v103 >= 0)
                {
                  v105 = v104;
                }

                else
                {
                  v105 = *(v101 + 12);
                }

                icu::UnicodeString::doAppend(a2, v101, 0, v105);
                v54 = 6;
              }

              goto LABEL_394;
            default:
              v54 = 5;
              v55 = a8;
              v56 = v201;
              if (v138 < 0 || v138 >= *(v139 + 240))
              {
                goto LABEL_394;
              }

              v190 = *(v139 + 232);
              break;
          }

          v191 = v190 + (v138 << 6);
          v192 = *(v191 + 8);
          v193 = v192;
          v194 = v192 >> 5;
          if (v193 >= 0)
          {
            v195 = v194;
          }

          else
          {
            v195 = *(v191 + 12);
          }

          icu::UnicodeString::doAppend(a2, v191, 0, v195);
          v54 = 5;
          goto LABEL_394;
        case 27:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          v68 = (v19 / 3);
          v63 = a4;
          if (a4 >= 5)
          {
            v54 = 0;
            if (v19 < -2)
            {
              goto LABEL_307;
            }

            v112 = *(a1 + 768);
            v55 = a8;
            v56 = v201;
            if (v68 < *(v112 + 416))
            {
              v70 = *(v112 + 408);
              goto LABEL_356;
            }

            goto LABEL_394;
          }

          if (a4 == 3)
          {
            v54 = 0;
            v56 = v201;
            if (v19 < -2)
            {
              goto LABEL_139;
            }

            v156 = *(a1 + 768);
            v55 = a8;
            if (v68 < *(v156 + 400))
            {
              v70 = *(v156 + 392);
              goto LABEL_356;
            }

            goto LABEL_394;
          }

          v56 = v201;
          if (a4 != 4)
          {
            goto LABEL_325;
          }

          v54 = 0;
          if (v19 < -2)
          {
            goto LABEL_139;
          }

          v142 = *(a1 + 768);
          v55 = a8;
          if (v68 >= *(v142 + 384))
          {
            goto LABEL_394;
          }

          v70 = *(v142 + 376);
          goto LABEL_356;
        case 28:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          v68 = (v19 / 3);
          v63 = a4;
          if (a4 < 5)
          {
            if (a4 == 3)
            {
              v54 = 0;
              v56 = v201;
              if (v19 < -2)
              {
LABEL_139:
                v55 = a8;
                goto LABEL_394;
              }

              v155 = *(a1 + 768);
              v55 = a8;
              if (v68 >= *(v155 + 448))
              {
                goto LABEL_394;
              }

              v70 = *(v155 + 440);
            }

            else
            {
              v56 = v201;
              if (a4 != 4)
              {
LABEL_325:
                v62 = (v68 + 1);
                v64 = a1;
                goto LABEL_107;
              }

              v54 = 0;
              if (v19 < -2)
              {
                goto LABEL_139;
              }

              v137 = *(a1 + 768);
              v55 = a8;
              if (v68 >= *(v137 + 432))
              {
                goto LABEL_394;
              }

              v70 = *(v137 + 424);
            }
          }

          else
          {
            v54 = 0;
            if (v19 < -2)
            {
              goto LABEL_307;
            }

            v69 = *(a1 + 768);
            v55 = a8;
            v56 = v201;
            if (v68 >= *(v69 + 464))
            {
              goto LABEL_394;
            }

            v70 = *(v69 + 456);
          }

LABEL_356:
          v140 = v70 + (v68 << 6);
LABEL_357:
          v157 = *(v140 + 8);
          v158 = v157;
          v159 = v157 >> 5;
          if (v158 >= 0)
          {
            v160 = v159;
          }

          else
          {
            v160 = *(v140 + 12);
          }

          icu::UnicodeString::doAppend(a2, v140, 0, v160);
          v54 = 0;
          goto LABEL_394;
        case 30:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          v80 = *(a1 + 768);
          v81 = *(v80 + 488);
          if (v81 && v19 <= *(v80 + 496))
          {
            v56 = v201;
            if (v19 >= 1)
            {
              v82 = v81 + (v19 << 6);
              v83 = (v82 - 64);
              v84 = *(v82 - 56);
              v85 = v84;
              v86 = v84 >> 5;
              v87 = *(v82 - 52);
              if (v85 >= 0)
              {
                v88 = v86;
              }

              else
              {
                v88 = v87;
              }

              icu::UnicodeString::doAppend(a2, v83, 0, v88);
            }
          }

          else
          {
LABEL_98:
            v56 = v201;
            v60 = sub_19537E5F8(a1 + 416, &unk_1ED4430B8);
            if ((v19 - 5001) < 0x3E7 && v60 == 0)
            {
              v62 = (v19 - 5000);
            }

            else
            {
              v62 = v19;
            }

            v63 = a4;
            if (a4 == 2)
            {
              v64 = a1;
              v65 = v25;
              v66 = a2;
              v67 = 2;
            }

            else
            {
              v64 = a1;
LABEL_107:
              v65 = v25;
              v66 = a2;
LABEL_136:
              v67 = 10;
            }

            icu::SimpleDateFormat::zeroPaddingNumber(v64, v65, v66, v62, v63, v67);
          }

          v54 = 0;
          goto LABEL_139;
        case 35:
          v26 = icu::Calendar::get(a9, 0xBu, a10);
          a7 = 98;
          a3 = 97;
          if (v26 != 12)
          {
            continue;
          }

          if (*(a1 + 792))
          {
            v27 = icu::Calendar::get(a9, 0xCu, a10);
            a7 = 98;
            if (v27)
            {
              continue;
            }
          }

          if (*(a1 + 793))
          {
            v28 = icu::Calendar::get(a9, 0xDu, a10);
            a7 = 98;
            if (v28)
            {
              continue;
            }
          }

          v29 = icu::Calendar::get(a9, 9u, a10);
          v30 = *(a1 + 768);
          if (a4 > 3)
          {
            v32 = v29;
            v31 = v197 ? v30[110] : v30[112];
          }

          else
          {
            v31 = v30[108];
            v32 = v29;
          }

          v46 = v31 + (v32 << 6);
          a7 = 98;
          if (!v46)
          {
            continue;
          }

          goto LABEL_71;
        case 36:
          v33 = sub_1952EB9C0((a1 + 544), a10);
          if (*a10 > 0)
          {
            v54 = 0;
            if ((v17 & 0x8000u) == 0)
            {
              v50 = v17 >> 5;
            }

            else
            {
              v50 = v18;
            }

LABEL_307:
            v55 = a8;
            v56 = v201;
LABEL_394:
            if (a6 || !*(a1 + 824))
            {
              goto LABEL_395;
            }

            v179 = *(a2 + 8);
            v180 = v179;
            LODWORD(v181) = v179 >> 5;
            v181 = v180 >= 0 ? v181 : *(a2 + 12);
            if (v181 <= v50)
            {
              goto LABEL_395;
            }

            v182 = icu::UnicodeString::char32At(v181, a2, v50);
            if (!u_islower(v182))
            {
              goto LABEL_395;
            }

            if (a5 != 258)
            {
              if (a5 != 260)
              {
                if (a5 == 259)
                {
                  v183 = (*(a1 + 768) + 2 * v54 + 832);
                  goto LABEL_411;
                }

                goto LABEL_395;
              }

              v183 = (*(a1 + 768) + 2 * v54 + 833);
LABEL_411:
              if (!*v183)
              {
LABEL_395:
                v173 = icu::DateFormatSymbols::getPatternCharIndex(v56);
                v174 = *(a2 + 8);
                v175 = v174;
                v176 = v174 >> 5;
                if (v175 >= 0)
                {
                  v177 = v176;
                }

                else
                {
                  v177 = *(a2 + 12);
                }

                (*(*v55 + 16))(v55, v173, v50, v177);
                goto LABEL_399;
              }
            }

            v184 = (*(**(a1 + 824) + 32))(*(a1 + 824));
            memset(v204, 0, 64);
            icu::UnicodeString::UnicodeString(v204, a2, v50);
            icu::UnicodeString::toTitle(v204, v184, (a1 + 544), 768);
            v185 = *(a2 + 8);
            v186 = v185;
            v187 = v185 >> 5;
            if (v186 >= 0)
            {
              v188 = v187;
            }

            else
            {
              v188 = *(a2 + 12);
            }

            sub_1953D1078(a2, v50, v188, v204);
            if (v184)
            {
              (*(*v184 + 8))(v184);
            }

            icu::UnicodeString::~UnicodeString(v189, v204);
            goto LABEL_395;
          }

          v34 = v33;
          a7 = 66;
          a3 = 97;
          if (!v33)
          {
            continue;
          }

          v35 = icu::Calendar::get(a9, 0xBu, a10);
          v36 = a1;
          if (*(a1 + 792))
          {
            v37 = icu::Calendar::get(a9, 0xCu, a10);
            v36 = a1;
            v38 = v37 == 0;
          }

          else
          {
            v38 = 1;
          }

          if (*(v36 + 793))
          {
            v39 = icu::Calendar::get(a9, 0xDu, a10) == 0;
          }

          else
          {
            v39 = 1;
          }

          v40 = &v34[4 * v35];
          if (v35 == 0 && v38 && v39)
          {
            v41 = a1;
            if (*v34)
            {
              goto LABEL_63;
            }
          }

          else
          {
            v41 = a1;
            if (v35 == 12 && v38 && v39 && v34[1])
            {
              v42 = 1;
              goto LABEL_48;
            }
          }

          v42 = *(v40 + 1);
          if (v42 <= 0xB && ((1 << v42) & 0xC01) != 0)
          {
            goto LABEL_62;
          }

LABEL_48:
          v43 = *(v41 + 768);
          if (a4 > 3)
          {
            v45 = v42;
            if (v197)
            {
              v44 = v43[110];
            }

            else
            {
              v44 = v43[112];
            }
          }

          else
          {
            v44 = v43[108];
            v45 = v42;
          }

          v46 = v44 + (v45 << 6);
          if (!v46)
          {
LABEL_62:
            if (v42 > 1)
            {
              v46 = 0;
              goto LABEL_70;
            }

            goto LABEL_63;
          }

          if (v42 > 1 || (*(v46 + 8) & 1) == 0)
          {
            goto LABEL_70;
          }

LABEL_63:
          v42 = *(v40 + 1);
          v47 = *(v41 + 768);
          if (a4 > 3)
          {
            if (v197)
            {
              v48 = v47[110];
            }

            else
            {
              v48 = v47[112];
            }
          }

          else
          {
            v48 = v47[108];
          }

          v46 = v48 + (v42 << 6);
LABEL_70:
          a7 = 66;
          a3 = 97;
          if ((v42 & 0xFFFFFFFE) != 0xA)
          {
LABEL_71:
            v49 = *(v46 + 8);
            if ((v49 & 1) == 0)
            {
              if ((v17 & 0x8000u) == 0)
              {
                v50 = v17 >> 5;
              }

              else
              {
                v50 = v18;
              }

              v143 = v49;
              v144 = v49 >> 5;
              if (v143 >= 0)
              {
                v145 = v144;
              }

              else
              {
                v145 = *(v46 + 12);
              }

              icu::UnicodeString::doAppend(a2, v46, 0, v145);
              goto LABEL_306;
            }
          }

          continue;
        case 37:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

          memset(v204 + 8, 0, 56);
          *&v204[0] = &unk_1F0935D00;
          WORD4(v204[0]) = 2;
          TimeSeparatorString = icu::DateFormatSymbols::getTimeSeparatorString(*(a1 + 768), v204);
          v107 = *(TimeSeparatorString + 4);
          v108 = v107;
          v109 = v107 >> 5;
          if (v108 >= 0)
          {
            v110 = v109;
          }

          else
          {
            v110 = *(TimeSeparatorString + 3);
          }

          icu::UnicodeString::doAppend(a2, TimeSeparatorString, 0, v110);
          goto LABEL_270;
        default:
          if ((v17 & 0x8000u) == 0)
          {
            v50 = v17 >> 5;
          }

          else
          {
            v50 = v18;
          }

LABEL_206:
          v71 = a1;
          v72 = *v23;
          v73 = a2;
          v74 = v19;
LABEL_303:
          v75 = a4;
          goto LABEL_304;
      }
    }

    break;
  }

  if (a3 != 108)
  {
    v57 = 3;
    goto LABEL_82;
  }

LABEL_399:
  v178 = *MEMORY[0x1E69E9840];
}