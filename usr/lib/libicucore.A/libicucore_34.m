void sub_1953802D8(void **this)
{
  *this = &unk_1F093FFC0;
  if (*(this + 68))
  {
    free(this[7]);
  }

  *this = &unk_1F0940138;
  if (*(this + 20))
  {
    free(this[1]);
  }

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(this);
}

uint64_t sub_195380368(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = sub_195380904(*(a1 + 8));
  v6 = (a2 + 8);
  if (v5 == sub_195380904(*(a2 + 8)))
  {
    v8 = *(a1 + 16);
    v7 = (a1 + 16);
    v9 = sub_195380904(v8);
    v11 = *(a2 + 16);
    v10 = (a2 + 16);
    if (v9 == sub_195380904(v11))
    {
      return 0;
    }

    v4 = v7;
    v6 = v10;
  }

  v13 = sub_195380904(*v4);
  if (v13 > sub_195380904(*v6))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_195380410(uint64_t a1, icu::StringSegment *a2, icu::numparse::impl::ParsedNumber *this, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (icu::numparse::impl::ParsedNumber::seenNumber(this))
  {
    if ((*(this + 76) & 1) != 0 && *(a1 + 16) && sub_1953805E4(*(a1 + 8), this + 80))
    {
      Offset = icu::StringSegment::getOffset(a2);
      v9 = (*(**(a1 + 16) + 24))(*(a1 + 16), a2, this, a4);
      if (Offset != icu::StringSegment::getOffset(a2))
      {
        v15 = *(*(a1 + 16) + 56);
        icu::UnicodeString::UnicodeString(v16, 1, &v15);
        v10 = (this + 144);
LABEL_11:
        icu::UnicodeString::operator=(v10, v16);
        icu::UnicodeString::~UnicodeString(v12, v16);
        goto LABEL_13;
      }

      goto LABEL_13;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if ((*(this + 44) & 1) == 0 || !*(a1 + 8))
  {
    goto LABEL_12;
  }

  v11 = icu::StringSegment::getOffset(a2);
  v9 = (*(**(a1 + 8) + 24))(*(a1 + 8), a2, this, a4);
  if (v11 != icu::StringSegment::getOffset(a2))
  {
    v15 = *(*(a1 + 8) + 56);
    icu::UnicodeString::UnicodeString(v16, 1, &v15);
    v10 = (this + 80);
    goto LABEL_11;
  }

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t sub_1953805E4(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = *(a1 + 56);
    icu::UnicodeString::UnicodeString(v11, 1, &v10);
    if (v12)
    {
      v5 = *(a2 + 8);
      v3 = v5 & 1;
    }

    else
    {
      v3 = 0;
      if ((v12 & 0x8000u) == 0)
      {
        v4 = v12 >> 5;
      }

      else
      {
        v4 = v13;
      }

      v5 = *(a2 + 8);
      if (v5 >= 0)
      {
        v6 = v5 >> 5;
      }

      else
      {
        v6 = *(a2 + 12);
      }

      if ((v5 & 1) == 0 && v4 == v6)
      {
        if ((v5 & 2) != 0)
        {
          v7 = (a2 + 10);
        }

        else
        {
          v7 = *(a2 + 24);
        }

        v3 = icu::UnicodeString::doEquals(v11, v7, v4);
      }
    }

    icu::UnicodeString::~UnicodeString(v5, v11);
  }

  else
  {
    v3 = *(a2 + 8) & 1;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1953806EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 && ((*(*v3 + 32))(v3, a2) & 1) != 0)
  {
    return 1;
  }

  result = *(a1 + 16);
  if (result)
  {
    v5 = *(*result + 32);

    return v5();
  }

  return result;
}

uint64_t sub_195380794(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  result = sub_1953805E4(*(a1 + 8), a2 + 80);
  if (result)
  {
    result = sub_1953805E4(*(a1 + 16), a2 + 144);
    if (result)
    {
      if (*(a2 + 88))
      {
        v9 = &unk_1F0935D00;
        v10 = 2;
        icu::UnicodeString::operator=((a2 + 80), &v9);
        icu::UnicodeString::~UnicodeString(v5, &v9);
      }

      if (*(a2 + 152))
      {
        v9 = &unk_1F0935D00;
        v10 = 2;
        icu::UnicodeString::operator=((a2 + 144), &v9);
        icu::UnicodeString::~UnicodeString(v6, &v9);
      }

      *(a2 + 76) |= *(a1 + 24);
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(*v7 + 40))(v7, a2);
      }

      result = *(a1 + 16);
      if (result)
      {
        result = (*(*result + 40))(result, a2);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195380904(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = *(a1 + 56);
    icu::UnicodeString::UnicodeString(v5, 1, &v4);
    if ((v6 & 0x8000u) == 0)
    {
      v1 = v6 >> 5;
    }

    else
    {
      v1 = v7;
    }

    icu::UnicodeString::~UnicodeString(v5);
  }

  else
  {
    v1 = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void *sub_1953809AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[8] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  sub_1951D6EE0(v22, "<");
  if (v4)
  {
    v5 = L":negative ";
  }

  else
  {
    v5 = " ";
  }

  if (*v5)
  {
    v6 = 0;
    do
    {
      v7 = v6 + 1;
    }

    while (v5[++v6]);
  }

  else
  {
    v7 = 0;
  }

  icu::unistr_internalConcat(v22, v5, v7, v23);
  v9 = *(a1 + 8);
  if (v9)
  {
    v26[0] = *(v9 + 56);
    icu::UnicodeString::UnicodeString(v21, 1, v26);
  }

  else
  {
    sub_1951D6EE0(v21, "n");
  }

  icu::operator+(v23, v21, v24);
  icu::unistr_internalConcat(v24, "#", 1uLL, v25);
  v10 = *(a1 + 16);
  if (v10)
  {
    v26[0] = *(v10 + 56);
    icu::UnicodeString::UnicodeString(v20, 1, v26);
  }

  else
  {
    sub_1951D6EE0(v20, "n");
  }

  icu::operator+(v25, v20, v26);
  icu::unistr_internalConcat(v26, L">", 1uLL, a2);
  icu::UnicodeString::~UnicodeString(v11, v26);
  icu::UnicodeString::~UnicodeString(v12, v20);
  icu::UnicodeString::~UnicodeString(v13, v25);
  icu::UnicodeString::~UnicodeString(v14, v24);
  icu::UnicodeString::~UnicodeString(v15, v21);
  icu::UnicodeString::~UnicodeString(v16, v23);
  result = icu::UnicodeString::~UnicodeString(v17, v22);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195380B7C(uint64_t a1)
{
  *a1 = &unk_1F093FF20;
  *(a1 + 8) = &unk_1F093FF50;
  if (*(a1 + 28))
  {
    free(*(a1 + 16));
  }

  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195380C10(uint64_t a1)
{
  v1 = a1 - 8;
  *(a1 - 8) = &unk_1F093FF20;
  *a1 = &unk_1F093FF50;
  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return nullsub_17(v1);
}

void sub_195380C8C(uint64_t a1)
{
  v1 = a1 - 8;
  *(a1 - 8) = &unk_1F093FF20;
  *a1 = &unk_1F093FF50;
  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  nullsub_17(v1);

  JUMPOUT(0x19A8B2600);
}

void sub_195380D20(icu::numparse::impl::NumberParseMatcher *a1)
{
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195380D64(icu::numparse::impl::NumberParseMatcher *a1)
{
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195380D9C(void **this)
{
  *this = &unk_1F093FFC0;
  if (*(this + 68))
  {
    free(this[7]);
  }

  *this = &unk_1F0940138;
  if (*(this + 20))
  {
    free(this[1]);
  }

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195380E3C(uint64_t result)
{
  v1 = 0;
  *result = &unk_1F0940240;
  *(result + 16) = &unk_1F0935D00;
  *(result + 24) = 2;
  *(result + 80) = &unk_1F0935D00;
  *(result + 88) = 2;
  do
  {
    v2 = result + v1;
    *(v2 + 152) = &unk_1F0935D00;
    *(v2 + 160) = 2;
    v1 += 64;
  }

  while (v1 != 512);
  *(result + 664) = &unk_1F0935D00;
  *(result + 672) = 2;
  *(result + 728) = &unk_1F0935D00;
  *(result + 736) = 2;
  *(result + 792) = result + 805;
  *(result + 800) = 40;
  *(result + 804) = 0;
  *(result + 848) = 0;
  return result;
}

void **sub_195380F48(void **a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  v7 = v6;
  v8 = v6 >> 5;
  if (v7 < 0)
  {
    v8 = *(a2 + 12);
  }

  sub_195381014(a1, v8 + 1, *a3);
  if (*a3 <= 0)
  {
    v9 = *(a2 + 8);
    if ((v9 & 0x11) != 0)
    {
      v10 = 0;
    }

    else if ((v9 & 2) != 0)
    {
      v10 = (a2 + 10);
    }

    else
    {
      v10 = *(a2 + 24);
    }

    v11 = v9;
    v12 = v9 >> 5;
    if (v11 < 0)
    {
      v12 = *(a2 + 12);
    }

    memcpy(*a1, v10, 2 * v12);
    v13 = *(a2 + 8);
    v14 = v13;
    v15 = v13 >> 5;
    if (v14 < 0)
    {
      v15 = *(a2 + 12);
    }

    *(*a1 + v15) = 0;
  }

  return a1;
}

uint64_t sub_195381014(uint64_t a1, int a2, int a3)
{
  *a1 = a1 + 14;
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  if (a2 >= 5 && a3 <= 0)
  {
    v5 = malloc_type_malloc((2 * a2), 0x1000040BDFB0063uLL);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 12))
      {
        free(*a1);
      }

      *a1 = v6;
      *(a1 + 8) = a2;
      *(a1 + 12) = 1;
    }
  }

  return a1;
}

uint64_t icu::numparse::impl::SeriesMatcher::match(icu::numparse::impl::SeriesMatcher *this, icu::StringSegment *a2, icu::numparse::impl::ParsedNumber *a3, UErrorCode *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  sub_1953817AC(v23, a3);
  Offset = icu::StringSegment::getOffset(a2);
  v9 = (*(*this + 56))(this);
  if (v9 < (*(*this + 64))(this))
  {
    v22 = Offset;
    while (1)
    {
      v11 = *v9;
      v12 = icu::StringSegment::getOffset(a2);
      if (icu::StringSegment::length(v13, a2))
      {
        v14 = (*(*v11 + 24))(v11, a2, a3, a4);
      }

      else
      {
        v14 = 1;
      }

      v15 = icu::StringSegment::getOffset(a2);
      v16 = (*(*v11 + 16))(v11);
      if (v15 == v12 || (v16 & 1) == 0)
      {
        if (v15 == v12)
        {
          if (!v16)
          {
            icu::StringSegment::setOffset(a2, v22);
            sub_195381340(a3, v23);
            goto LABEL_18;
          }

          ++v9;
        }

        else if (++v9 < (*(*this + 64))(this))
        {
          v17 = icu::StringSegment::getOffset(a2);
          v18 = *(a3 + 18);
          if (v17 != v18 && v18 > v12)
          {
            icu::StringSegment::setOffset(a2, v18);
          }
        }
      }

      if (v9 >= (*(*this + 64))(this))
      {
        goto LABEL_18;
      }
    }
  }

  v14 = 1;
LABEL_18:
  icu::UnicodeString::~UnicodeString(v10, v25);
  icu::UnicodeString::~UnicodeString(v19, v24);
  icu::number::impl::DecimalQuantity::~DecimalQuantity(v23);
  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sub_195381340(uint64_t a1, uint64_t a2)
{
  icu::number::impl::DecimalQuantity::operator=(a1, a2);
  *(a1 + 72) = *(a2 + 72);
  icu::UnicodeString::operator=((a1 + 80), (a2 + 80));
  icu::UnicodeString::operator=((a1 + 144), (a2 + 144));
  *(a1 + 208) = *(a2 + 208);
  return a1;
}

uint64_t icu::numparse::impl::SeriesMatcher::smokeTest(uint64_t a1)
{
  v2 = (*(*a1 + 56))(a1);
  if (v2 == (*(*a1 + 64))(a1))
  {
    return 0;
  }

  v3 = *(**v2 + 32);

  return v3();
}

uint64_t icu::numparse::impl::SeriesMatcher::postProcess(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 56))(a1);
  result = (*(*a1 + 64))(a1);
  if (v4 != result)
  {
    v6 = result;
    do
    {
      v7 = *v4++;
      result = (*(*v7 + 40))(v7, a2);
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t icu::numparse::impl::ArraySeriesMatcher::ArraySeriesMatcher(uint64_t this)
{
  *this = &unk_1F0940138;
  *(this + 8) = this + 24;
  *(this + 16) = 3;
  *(this + 20) = 0;
  *(this + 48) = 0;
  return this;
}

{
  *this = &unk_1F0940138;
  *(this + 8) = this + 24;
  *(this + 16) = 3;
  *(this + 20) = 0;
  *(this + 48) = 0;
  return this;
}

uint64_t icu::numparse::impl::ArraySeriesMatcher::ArraySeriesMatcher(uint64_t a1, uint64_t **a2, int a3)
{
  v5 = *a2;
  *a1 = &unk_1F0940138;
  *(a1 + 8) = v5;
  v6 = *(a2 + 2);
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 12);
  if (v5 == (a2 + 2))
  {
    *(a1 + 8) = a1 + 24;
    memcpy((a1 + 24), a2 + 2, 8 * v6);
  }

  else
  {
    *a2 = (a2 + 2);
    *(a2 + 2) = 3;
    *(a2 + 12) = 0;
  }

  *(a1 + 48) = a3;
  return a1;
}

{
  v5 = *a2;
  *a1 = &unk_1F0940138;
  *(a1 + 8) = v5;
  v6 = *(a2 + 2);
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 12);
  if (v5 == (a2 + 2))
  {
    *(a1 + 8) = a1 + 24;
    memcpy((a1 + 24), a2 + 2, 8 * v6);
  }

  else
  {
    *a2 = (a2 + 2);
    *(a2 + 2) = 3;
    *(a2 + 12) = 0;
  }

  *(a1 + 48) = a3;
  return a1;
}

void sub_1953816D8(void **this)
{
  *this = &unk_1F0940138;
  if (*(this + 20))
  {
    free(this[1]);
  }

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(this);
}

void sub_195381738(void **this)
{
  *this = &unk_1F0940138;
  if (*(this + 20))
  {
    free(this[1]);
  }

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(this);

  JUMPOUT(0x19A8B2600);
}

void *sub_1953817AC(void *a1, uint64_t a2)
{
  v4 = icu::number::impl::DecimalQuantity::DecimalQuantity(a1, a2);
  *(v4 + 9) = *(a2 + 72);
  icu::UnicodeString::UnicodeString((v4 + 80), (a2 + 80));
  icu::UnicodeString::UnicodeString((a1 + 18), (a2 + 144));
  a1[26] = *(a2 + 208);
  return a1;
}

icu::numparse::impl::CombinedCurrencyMatcher *icu::numparse::impl::CombinedCurrencyMatcher::CombinedCurrencyMatcher(icu::numparse::impl::CombinedCurrencyMatcher *this, UChar **a2, const icu::DecimalFormatSymbols *a3, __int16 a4, UErrorCode *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  *this = &unk_1F0940240;
  icu::number::impl::CurrencySymbols::getCurrencySymbol(a2, a5, (this + 16));
  icu::number::impl::CurrencySymbols::getIntlCurrencySymbol(a2, (this + 80));
  v10 = 0;
  *(this + 144) = (a4 & 0x2000) == 0;
  do
  {
    v11 = this + v10;
    *(v11 + 19) = &unk_1F0935D00;
    *(v11 + 80) = 2;
    v10 += 64;
  }

  while (v10 != 512);
  PatternForCurrencySpacing = icu::DecimalFormatSymbols::getPatternForCurrencySpacing(a3, 2, 0, a5);
  icu::UnicodeString::UnicodeString((this + 664), PatternForCurrencySpacing);
  v13 = icu::DecimalFormatSymbols::getPatternForCurrencySpacing(a3, 2, 1, a5);
  icu::UnicodeString::UnicodeString((this + 728), v13);
  icu::Locale::Locale(v22, a3 + 1936);
  v14 = v23;
  *(this + 99) = this + 805;
  *(this + 200) = 40;
  *(this + 402) = 0;
  *(this + 212) = 0;
  icu::CharString::append((this + 792), v14, -1, a5);
  icu::Locale::~Locale(v22);
  IsoCode = icu::number::impl::CurrencySymbols::getIsoCode(a2);
  v16 = *(IsoCode + 4);
  *(this + 2) = *IsoCode;
  *(this + 6) = v16;
  *(this + 7) = 0;
  if ((*(this + 144) & 1) == 0)
  {
    v17 = 0;
    v18 = (this + 152);
    do
    {
      icu::number::impl::CurrencySymbols::getPluralName(a2, v17, a5, v22);
      icu::UnicodeString::operator=(v18, v22);
      icu::UnicodeString::~UnicodeString(v19, v22);
      ++v17;
      v18 = (v18 + 64);
    }

    while (v17 != 8);
  }

  v20 = *MEMORY[0x1E69E9840];
  return this;
}

BOOL icu::numparse::impl::CombinedCurrencyMatcher::match(icu::numparse::impl::CombinedCurrencyMatcher *this, icu::StringSegment *a2, icu::numparse::impl::ParsedNumber *a3, UErrorCode *a4)
{
  if (*(a3 + 104))
  {
    return 0;
  }

  Offset = icu::StringSegment::getOffset(a2);
  if (!icu::numparse::impl::ParsedNumber::seenNumber(a3) || *(this + 368) < 0x20u)
  {
    goto LABEL_13;
  }

  CommonPrefixLength = icu::StringSegment::getCommonPrefixLength(a2, (this + 728));
  v12 = CommonPrefixLength;
  v13 = *(this + 368);
  if ((v13 & 0x8000) != 0)
  {
    v14 = *(this + 185);
  }

  else
  {
    v14 = (v13 >> 5);
  }

  if (CommonPrefixLength == v14)
  {
    icu::StringSegment::adjustOffset(a2, CommonPrefixLength);
  }

  if (v12 == icu::StringSegment::length(v14, a2))
  {
    matched = 1;
  }

  else
  {
LABEL_13:
    matched = icu::numparse::impl::CombinedCurrencyMatcher::matchCurrency(this, a2, a3, a4);
  }

  if (*(a3 + 104))
  {
    if ((icu::numparse::impl::ParsedNumber::seenNumber(a3) & 1) == 0 && *(this + 336) >= 0x20u)
    {
      v15 = icu::StringSegment::getCommonPrefixLength(a2, (this + 664));
      v16 = v15;
      v17 = *(this + 336);
      if ((v17 & 0x8000) != 0)
      {
        v18 = *(this + 169);
      }

      else
      {
        v18 = (v17 >> 5);
      }

      if (v15 == v18)
      {
        icu::StringSegment::adjustOffset(a2, v15);
      }

      return (matched & 1) != 0 || v16 == icu::StringSegment::length(v18, a2);
    }
  }

  else
  {
    icu::StringSegment::setOffset(a2, Offset);
  }

  return matched;
}

uint64_t icu::numparse::impl::CombinedCurrencyMatcher::matchCurrency(icu::numparse::impl::CombinedCurrencyMatcher *this, icu::StringSegment *a2, icu::numparse::impl::ParsedNumber *a3, UErrorCode *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = *(this + 12);
  if (v8 < 0x20)
  {
    CaseSensitivePrefixLength = -1;
  }

  else
  {
    CaseSensitivePrefixLength = icu::StringSegment::getCaseSensitivePrefixLength(a2, (this + 16));
  }

  v10 = icu::StringSegment::length(v8, a2);
  v11 = CaseSensitivePrefixLength == v10;
  v12 = *(this + 12);
  if ((v12 & 0x8000) != 0)
  {
    v13 = *(this + 7);
  }

  else
  {
    v13 = v12 >> 5;
  }

  if (CaseSensitivePrefixLength == v13)
  {
    v14 = *(this + 2);
    *(a3 + 106) = *(this + 6);
    *(a3 + 52) = v14;
    *(a3 + 107) = 0;
    v15 = a2;
    v16 = CaseSensitivePrefixLength;
LABEL_42:
    icu::StringSegment::adjustOffset(v15, v16);
    icu::numparse::impl::ParsedNumber::setCharsConsumed(a3, a2);
    goto LABEL_43;
  }

  v17 = *(this + 44);
  if (v17 < 0x20)
  {
    CommonPrefixLength = -1;
  }

  else
  {
    CommonPrefixLength = icu::StringSegment::getCommonPrefixLength(a2, (this + 80));
  }

  v11 = CaseSensitivePrefixLength == v10 || CommonPrefixLength == icu::StringSegment::length(v17, a2);
  if (*(this + 44) < 0)
  {
    v19 = *(this + 23);
  }

  else
  {
    v19 = *(this + 44) >> 5;
  }

  if (CommonPrefixLength == v19)
  {
    v20 = *(this + 2);
    *(a3 + 106) = *(this + 6);
    *(a3 + 52) = v20;
    *(a3 + 107) = 0;
    v15 = a2;
    v16 = CommonPrefixLength;
    goto LABEL_42;
  }

  if (*(this + 144))
  {
    memset(v38, 0, sizeof(v38));
    icu::StringSegment::toTempUnicodeString(a2, v38);
    v36 = &unk_1F0932C70;
    *v37 = 0xFFFFFFFF00000000;
    v35 = 0;
    uprv_parseCurrency(*(this + 99), v38, &v36, 0, &v35, a3 + 104, a4);
    if (v11)
    {
      v11 = 1;
    }

    else
    {
      v33 = v35;
      v11 = v33 == icu::StringSegment::length(v21, a2);
    }

    if (*a4 <= 0 && v37[0])
    {
      icu::StringSegment::adjustOffset(a2, v37[0]);
      icu::numparse::impl::ParsedNumber::setCharsConsumed(a3, a2);
    }

    icu::ParsePosition::~ParsePosition(&v36);
    icu::UnicodeString::~UnicodeString(v34, v38);
  }

  else
  {
    v22 = 0;
    v23 = (this + 152);
    v24 = 8;
    do
    {
      v25 = icu::StringSegment::getCommonPrefixLength(a2, v23);
      v26 = *(v23 + 4);
      if ((v26 & 0x8000) != 0)
      {
        v28 = v25 == *(v23 + 3) && v25 > v22;
      }

      else
      {
        v28 = v25 == v26 >> 5 && v22 < v25;
      }

      if (v28)
      {
        v22 = v25;
      }

      v11 |= v25 > 0;
      v23 = (v23 + 64);
      --v24;
    }

    while (v24);
    if (v22 >= 1)
    {
      v30 = *(this + 2);
      *(a3 + 106) = *(this + 6);
      *(a3 + 52) = v30;
      *(a3 + 107) = 0;
      v15 = a2;
      v16 = v22;
      goto LABEL_42;
    }
  }

LABEL_43:
  v31 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

void sub_195381E30(uint64_t a1)
{
  *a1 = &unk_1F0940240;
  v2 = *(a1 + 804);
  if (*(a1 + 804))
  {
    free(*(a1 + 792));
  }

  icu::UnicodeString::~UnicodeString(v2, (a1 + 728));
  icu::UnicodeString::~UnicodeString(v3, (a1 + 664));
  for (i = 600; i != 88; i -= 64)
  {
    icu::UnicodeString::~UnicodeString(v4, (a1 + i));
  }

  icu::UnicodeString::~UnicodeString(v4, (a1 + 80));
  icu::UnicodeString::~UnicodeString(v6, (a1 + 16));

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);
}

void sub_195381EC8(uint64_t a1)
{
  *a1 = &unk_1F0940240;
  v2 = *(a1 + 804);
  if (*(a1 + 804))
  {
    free(*(a1 + 792));
  }

  icu::UnicodeString::~UnicodeString(v2, (a1 + 728));
  icu::UnicodeString::~UnicodeString(v3, (a1 + 664));
  for (i = 600; i != 88; i -= 64)
  {
    icu::UnicodeString::~UnicodeString(v4, (a1 + i));
  }

  icu::UnicodeString::~UnicodeString(v4, (a1 + 80));
  icu::UnicodeString::~UnicodeString(v6, (a1 + 16));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195381F74(uint64_t a1, uint64_t a2, icu::number::impl::Grouper *a3, char a4)
{
  v21[8] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F09402C0;
  v8 = (a1 + 16);
  *(a1 + 16) = &unk_1F0935D00;
  *(a1 + 24) = 2;
  *(a1 + 80) = &unk_1F0935D00;
  *(a1 + 88) = 2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if ((a4 & 2) != 0)
  {
    icu::UnicodeString::operator=(v8, (a2 + 1096));
    v9 = (a2 + 648);
  }

  else
  {
    v9 = (a2 + 8);
    icu::UnicodeString::operator=(v8, (a2 + 72));
  }

  icu::UnicodeString::operator=((a1 + 80), v9);
  if ((a4 & 4) != 0)
  {
    v10 = 10;
  }

  else
  {
    v10 = 9;
  }

  if ((a4 & 4) != 0)
  {
    v11 = 5;
  }

  else
  {
    v11 = 3;
  }

  if ((a4 & 4) != 0)
  {
    v12 = 6;
  }

  else
  {
    v12 = 4;
  }

  *(a1 + 144) = icu::unisets::get(v10);
  icu::UnicodeString::UnicodeString(v21, (a1 + 80));
  v13 = icu::unisets::chooseFrom(v21, v11, v12);
  icu::UnicodeString::~UnicodeString(v14, v21);
  if (v13 < 0)
  {
    if (*(a1 + 88) >= 0x20u)
    {
      operator new();
    }

    *(a1 + 152) = icu::unisets::get(0);
    operator new();
  }

  v15 = icu::unisets::get(v13);
  v16 = *(a1 + 144);
  *(a1 + 152) = v15;
  *(a1 + 160) = v16;
  if ((a4 & 4) != 0)
  {
    v17 = 22;
  }

  else
  {
    v17 = 23;
  }

  *(a1 + 168) = icu::unisets::get(v17);
  v18 = *(a2 + 1928);
  if (v18 == -1 || !u_isdigit(*(a2 + 1928)) || u_digit(v18, 10))
  {
    operator new[]();
  }

  *(a1 + 8) = (a4 & 8) != 0;
  *(a1 + 9) = (a4 & 0x20) != 0;
  *(a1 + 10) = (a4 & 0x10) != 0;
  *(a1 + 12) = icu::number::impl::Grouper::getPrimary(a3);
  *(a1 + 14) = icu::number::impl::Grouper::getSecondary(a3);
  v19 = *MEMORY[0x1E69E9840];
  return a1;
}

icu::UnicodeSet *sub_1953822CC(icu::UnicodeSet **a1, icu::UnicodeSet *a2)
{
  result = *a1;
  if (result)
  {
    icu::UnicodeSet::~UnicodeSet(result);
    result = MEMORY[0x19A8B2600]();
  }

  *a1 = a2;
  return result;
}

BOOL sub_195382320(uint64_t a1, icu::StringSegment *a2, icu::numparse::impl::ParsedNumber *this, int a4)
{
  v86 = *MEMORY[0x1E69E9840];
  v8 = icu::numparse::impl::ParsedNumber::seenNumber(this);
  if (!a4 && (v8 & 1) != 0)
  {
    v9 = 0;
    goto LABEL_186;
  }

  v64 = a4;
  v66 = this;
  Offset = icu::StringSegment::getOffset(a2);
  v74 = 0;
  memset(v73, 0, sizeof(v73));
  icu::number::impl::DecimalQuantity::DecimalQuantity(v73);
  BYTE8(v73[0]) = 1;
  v82 = 0u;
  v85 = 0;
  v84 = 0u;
  v83 = 0u;
  v81 = &unk_1F0935D00;
  LOWORD(v82) = 2;
  v77 = 0u;
  v80 = 0;
  v79 = 0u;
  v78 = 0u;
  v76 = &unk_1F0935D00;
  LOWORD(v77) = 2;
  icu::UnicodeString::setToBogus(&v81);
  icu::UnicodeString::setToBogus(&v76);
  if (icu::StringSegment::length(v10, a2) < 1)
  {
    v11 = 0;
    v12 = 0;
    v70 = 0;
    v17 = 0;
    v68 = 0;
    v69 = -1;
    v13 = -1;
    v67 = -1;
    goto LABEL_146;
  }

  v11 = 0;
  v12 = 0;
  v67 = -1;
  v68 = 0;
  v13 = -1;
  v69 = -1;
  v70 = 0;
LABEL_6:
  CodePoint = icu::StringSegment::getCodePoint(a2);
  if (!u_isdigit(CodePoint) || (CodePoint < 0x10000 ? (v15 = 1) : (v15 = 2), icu::StringSegment::adjustOffset(a2, v15), v16 = u_digit(CodePoint, 10), v16 == -1))
  {
    v71 = v11;
    v72 = v13;
    if (!*(a1 + 192))
    {
      v17 = 0;
      goto LABEL_38;
    }

    v19 = 0;
    v18 = 0;
    v17 = 0;
    while (1)
    {
      v20 = *(a1 + 192);
      if (*(v20 + v19 + 8) < 0x20u)
      {
        goto LABEL_34;
      }

      if (!icu::StringSegment::startsWith(a2, 38646))
      {
        break;
      }

      v21 = *(a1 + 192);
      v22 = *(v21 + 8);
      if (*(v21 + 8) < 0)
      {
        if (!*(v21 + 12))
        {
          break;
        }
      }

      else if (!(v22 >> 5))
      {
        break;
      }

      v23 = (v22 & 2) != 0 ? (v21 + 10) : *(v21 + 24);
      if (*v23 != 12295)
      {
        break;
      }

      CommonPrefixLength = 1;
LABEL_27:
      if (*(v20 + v19 + 8) < 0)
      {
        v25 = *(v20 + v19 + 12);
      }

      else
      {
        v25 = (*(v20 + v19 + 8) >> 5);
      }

      if (CommonPrefixLength == v25)
      {
        icu::StringSegment::adjustOffset(a2, CommonPrefixLength);
        v11 = v71;
        v13 = v72;
LABEL_43:
        if (BYTE8(v73[0]) == 1)
        {
          BYTE8(v73[0]) = 0;
          icu::number::impl::DecimalQuantity::clear(v73);
        }

        icu::number::impl::DecimalQuantity::appendDigit(v73, v18, 0, 1);
        ++v12;
        v28 = (v77 & 1) == 0;
        v68 += v28;
LABEL_134:
        if (icu::StringSegment::length(v28, a2) <= 0)
        {
          goto LABEL_146;
        }

        goto LABEL_6;
      }

      v17 = v17 || CommonPrefixLength == icu::StringSegment::length(v25, a2);
LABEL_34:
      ++v18;
      v19 += 64;
      if (v18 == 10)
      {
        goto LABEL_38;
      }
    }

    CommonPrefixLength = icu::StringSegment::getCommonPrefixLength(a2, (v20 + v19));
    goto LABEL_27;
  }

  v17 = 0;
  if ((v16 & 0x80) == 0)
  {
    LOBYTE(v18) = v16;
    goto LABEL_43;
  }

  v71 = v11;
  v72 = v13;
LABEL_38:
  if ((v77 & 1) != 0 && *(a1 + 88) >= 0x20u && ((v27 = icu::StringSegment::getCommonPrefixLength(a2, (a1 + 80)), !v17) ? (v17 = v27 == icu::StringSegment::length(v26, a2)) : (v17 = 1), *(a1 + 88) < 0 ? (v29 = *(a1 + 92)) : (v29 = *(a1 + 88) >> 5), v27 == v29))
  {
    icu::UnicodeString::operator=(&v76, (a1 + 80));
    v30 = 1;
  }

  else
  {
    v30 = 0;
  }

  v31 = v82;
  if (v82)
  {
    v34 = 0;
  }

  else
  {
    v33 = icu::StringSegment::getCommonPrefixLength(a2, &v81);
    v17 = v17 || v33 == icu::StringSegment::length(v32, a2);
    v31 = v82;
    if ((v82 & 0x8000u) == 0)
    {
      v35 = v82 >> 5;
    }

    else
    {
      v35 = DWORD1(v82);
    }

    v34 = v33 == v35;
  }

  if ((*(a1 + 9) & 1) == 0 && (v31 & 1) != 0 && (v77 & 1) != 0 && *(a1 + 24) >= 0x20u)
  {
    v37 = icu::StringSegment::getCommonPrefixLength(a2, (a1 + 16));
    v17 = v17 || v37 == icu::StringSegment::length(v36, a2);
    v38 = *(a1 + 24) < 0 ? *(a1 + 28) : *(a1 + 24) >> 5;
    if (v37 == v38)
    {
      icu::UnicodeString::operator=(&v81, (a1 + 16));
      goto LABEL_75;
    }
  }

  if (v34)
  {
LABEL_75:
    v39 = 1;
    goto LABEL_78;
  }

  if (v77)
  {
    v11 = v71;
    v13 = v72;
    if (icu::UnicodeSet::contains(*(a1 + 152), CodePoint))
    {
      icu::UnicodeString::UnicodeString(v75, CodePoint);
      icu::UnicodeString::operator=(&v76, v75);
      icu::UnicodeString::~UnicodeString(v46, v75);
      v39 = 0;
      v30 = 1;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
LABEL_78:
    v11 = v71;
    v13 = v72;
  }

  if ((*(a1 + 9) & 1) == 0 && (v82 & 1) != 0 && (v77 & 1) != 0 && icu::UnicodeSet::contains(*(a1 + 144), CodePoint))
  {
    icu::UnicodeString::UnicodeString(v75, CodePoint);
    icu::UnicodeString::operator=(&v81, v75);
    icu::UnicodeString::~UnicodeString(v40, v75);
    v39 = 1;
  }

  else if ((v39 | v30) != 1)
  {
    goto LABEL_146;
  }

  if (v30 && (*(a1 + 10) & 1) != 0)
  {
    goto LABEL_146;
  }

  if (v70 == 2)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0;
  }

  if (v41)
  {
    v50 = v69;
    v51 = v13;
    v52 = v67;
    v13 = 2;
  }

  else
  {
    if (*(a1 + 8) == 1)
    {
      if (v13 == 1)
      {
        v42 = v69 == *(a1 + 14);
      }

      else if (v13)
      {
        v42 = 1;
      }

      else
      {
        v42 = v69 <= *(a1 + 14);
      }

      v45 = v70 != 1 || v12 == *(a1 + 12);
    }

    else
    {
      v42 = v69 != 1 || v13 != 1;
      v45 = v12 != 1 || v70 != 1;
    }

    if (v42 && ((v30 ^ 1 | v45) & 1) != 0)
    {
      if (!*(a1 + 8) || v12 || v70 != 1)
      {
        if (v30)
        {
          v13 = -1;
        }

        else
        {
          v13 = v70;
        }

        v47 = v11;
        if (v12)
        {
          v47 = icu::StringSegment::getOffset(a2);
        }

        if (v39)
        {
          if ((v82 & 0x8000u) == 0)
          {
            v48 = v82 >> 5;
          }

          else
          {
            v48 = DWORD1(v82);
          }

          icu::StringSegment::adjustOffset(a2, v48);
          v28 = 1;
        }

        else
        {
          if ((v77 & 0x8000u) == 0)
          {
            v49 = v77 >> 5;
          }

          else
          {
            v49 = DWORD1(v77);
          }

          icu::StringSegment::adjustOffset(a2, v49);
          v28 = 2;
        }

        v69 = v12;
        v70 = v28;
        v67 = v11;
        v11 = v47;
        v12 = 0;
        goto LABEL_134;
      }

      v12 = 0;
      v70 = 1;
    }

    else
    {
      if (v12)
      {
        v53 = 0;
      }

      else
      {
        v53 = v39;
      }

      if ((v53 & 1) == 0 && *(a1 + 8))
      {
        icu::number::impl::DecimalQuantity::clear(v73);
        BYTE8(v73[0]) = 1;
      }
    }

LABEL_146:
    if (v70 == 2 || v12)
    {
      v50 = v69;
      v51 = v13;
      v52 = v67;
      v13 = v70;
    }

    else
    {
      icu::StringSegment::setOffset(a2, v11);
      v51 = 0;
      v50 = 1;
      v52 = -1;
      v12 = v69;
      v11 = v67;
      v17 = 1;
    }
  }

  if (*(a1 + 8) != 1)
  {
    if (v50 == 1 && v51 == 1)
    {
      icu::StringSegment::setOffset(a2, v52);
      if (v12 != -1)
      {
        v55 = ~v12;
        v56 = v66;
        goto LABEL_162;
      }

      v54 = 1;
    }

    else
    {
      v54 = 1;
      if (v51 | v50 && v12 == 1)
      {
        v56 = v66;
        if (v13 != 1)
        {
LABEL_170:
          if (v13 == 2)
          {
            goto LABEL_174;
          }

          v57 = 0;
          if (!v54)
          {
            goto LABEL_173;
          }

          goto LABEL_172;
        }

        icu::StringSegment::setOffset(a2, v11);
        v55 = -1;
        v17 = 1;
LABEL_162:
        icu::number::impl::DecimalQuantity::adjustMagnitude(v73, v55);
        icu::number::impl::DecimalQuantity::truncate(v73);
        v54 = 1;
        goto LABEL_170;
      }
    }

LABEL_169:
    v56 = v66;
    goto LABEL_170;
  }

  if (v51 == 1)
  {
    v54 = v50 == *(a1 + 14);
  }

  else if (v51)
  {
    v54 = 1;
  }

  else
  {
    v54 = v50 <= *(a1 + 14);
  }

  if (v13 != 1)
  {
    goto LABEL_169;
  }

  v57 = v12 != *(a1 + 12);
  v56 = v66;
  if (!v54)
  {
LABEL_173:
    BYTE8(v73[0]) = 1;
    goto LABEL_174;
  }

LABEL_172:
  if (v57)
  {
    goto LABEL_173;
  }

LABEL_174:
  if (BYTE8(v73[0]) == 1)
  {
    v9 = v17 || icu::StringSegment::length(BYTE8(v73[0]), a2) == 0;
    icu::StringSegment::setOffset(a2, Offset);
  }

  else
  {
    icu::number::impl::DecimalQuantity::adjustMagnitude(v73, -v68);
    if (v64 && icu::StringSegment::getOffset(a2) != Offset)
    {
      if (!icu::number::impl::DecimalQuantity::fitsInLong(v73, 0) || (v63 = icu::number::impl::DecimalQuantity::toLong(v73, 0), v63 > 0x7FFFFFFF) || icu::number::impl::DecimalQuantity::adjustMagnitude(v56, v63 * v64))
      {
        if (v64 == -1)
        {
          icu::number::impl::DecimalQuantity::clear(v56);
        }

        else
        {
          *(v56 + 8) = 1;
          *(v56 + 19) |= 0x80u;
        }
      }
    }

    else
    {
      icu::number::impl::DecimalQuantity::operator=(v56, v73);
    }

    if ((v77 & 1) == 0)
    {
      *(v56 + 19) |= 0x20u;
    }

    icu::numparse::impl::ParsedNumber::setCharsConsumed(v56, a2);
    v59 = icu::StringSegment::length(v58, a2) == 0;
    v9 = v59 || v17;
  }

  icu::UnicodeString::~UnicodeString(v59, &v76);
  icu::UnicodeString::~UnicodeString(v60, &v81);
  icu::number::impl::DecimalQuantity::~DecimalQuantity(v73);
LABEL_186:
  v61 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL sub_195382C68(uint64_t a1, icu::StringSegment *this)
{
  if (*(a1 + 192) || (v6 = *(a1 + 168)) == 0)
  {
    if (icu::StringSegment::startsWith(this, *(a1 + 160)))
    {
      return 1;
    }

    CodePoint = icu::StringSegment::getCodePoint(this);
    if (u_isdigit(CodePoint))
    {
      return 1;
    }

    if (!*(a1 + 192))
    {
      return 0;
    }

    if (icu::StringSegment::startsWith(this, 38646))
    {
      v7 = *(a1 + 192);
      v8 = *(v7 + 8);
      if (v8 < 0)
      {
        if (*(v7 + 12) != 1)
        {
          goto LABEL_20;
        }
      }

      else if ((v8 & 0x7FE0) != 0x20)
      {
        goto LABEL_20;
      }

      if ((v8 & 2) != 0)
      {
        v9 = (v7 + 10);
      }

      else
      {
        v9 = *(v7 + 24);
      }

      if (*v9 == 12295)
      {
        return 1;
      }
    }

LABEL_20:
    v10 = 0;
    v11 = -1;
    while (!icu::StringSegment::startsWith(this, (*(a1 + 192) + v10)))
    {
      ++v11;
      v10 += 64;
      if (v11 == 9)
      {
        return 0;
      }
    }

    return 1;
  }

  return icu::StringSegment::startsWith(this, v6);
}

void sub_195382D9C(uint64_t a1)
{
  *a1 = &unk_1F09402C0;
  v2 = (a1 + 16);
  sub_1951DB10C((a1 + 192));
  sub_1951D18E4((a1 + 184));
  sub_1951D18E4((a1 + 176));
  icu::UnicodeString::~UnicodeString(v3, (a1 + 80));
  icu::UnicodeString::~UnicodeString(v4, v2);

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);
}

void sub_195382E18(uint64_t a1)
{
  *a1 = &unk_1F09402C0;
  v2 = (a1 + 16);
  sub_1951DB10C((a1 + 192));
  sub_1951D18E4((a1 + 184));
  sub_1951D18E4((a1 + 176));
  icu::UnicodeString::~UnicodeString(v3, (a1 + 80));
  icu::UnicodeString::~UnicodeString(v4, v2);
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void icu::numparse::impl::NumberParserImpl::createSimpleParser(icu::numparse::impl::NumberParserImpl *this, const icu::Locale *a2, const icu::UnicodeString *a3, uint64_t a4, UErrorCode *a5)
{
  MEMORY[0x1EEE9AC00](this, a2, a3, a4, a5);
  v5 = *MEMORY[0x1E69E9840];
  operator new();
}

uint64_t sub_195383B2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  icu::UnicodeString::operator=((a1 + 16), (a2 + 16));
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  icu::UnicodeString::operator=((a1 + 104), (a2 + 104));
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  icu::UnicodeString::operator=((a1 + 192), (a2 + 192));
  *(a1 + 256) = *(a2 + 256);
  icu::UnicodeString::operator=((a1 + 272), (a2 + 272));
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  icu::UnicodeString::operator=((a1 + 360), (a2 + 360));
  icu::UnicodeString::operator=((a1 + 424), (a2 + 424));
  *(a1 + 488) = *(a2 + 488);
  for (i = 496; i != 1008; i += 64)
  {
    icu::UnicodeString::operator=((a1 + i), (a2 + i));
  }

  icu::UnicodeString::operator=((a1 + 1008), (a2 + 1008));
  icu::UnicodeString::operator=((a1 + 1072), (a2 + 1072));
  icu::CharString::operator=(a1 + 1136, a2 + 1136);
  v5 = *(a1 + 1200);
  *(a1 + 1200) = *(a2 + 1200);
  *(a2 + 1200) = v5;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v6 = *(a1 + 1208);
  v13 = v6;
  v7 = *(a1 + 1216);
  v8 = *(a1 + 1220);
  BYTE4(v14[0]) = *(a1 + 1220);
  v9 = a1 + 1224;
  if (v6 == (a1 + 1224))
  {
    v13 = v14 + 8;
    memcpy(v14 + 8, (a1 + 1224), 8 * v7);
    if (v8)
    {
      free(v6);
    }

    v6 = v14 + 8;
  }

  else
  {
    *(a1 + 1208) = v9;
    *(a1 + 1216) = 8;
    *(a1 + 1220) = 0;
  }

  v10 = *(a2 + 1216);
  *(a1 + 1216) = v10;
  *(a1 + 1220) = *(a2 + 1220);
  v11 = *(a2 + 1208);
  if (v11 == a2 + 1224)
  {
    *(a1 + 1208) = v9;
    memcpy((a1 + 1224), (a2 + 1224), 8 * v10);
    if (*(a2 + 1220))
    {
      free(*(a2 + 1208));
      v8 = BYTE4(v14[0]);
      v6 = v13;
    }
  }

  else
  {
    *(a1 + 1208) = v11;
  }

  *(a2 + 1216) = v7;
  *(a2 + 1220) = v8;
  if (v6 == v14 + 8)
  {
    *(a2 + 1208) = a2 + 1224;
    memcpy((a2 + 1224), v14 + 8, 8 * v7);
    if (v8)
    {
      free(v6);
    }
  }

  else
  {
    *(a2 + 1208) = v6;
  }

  return a1;
}

uint64_t icu::numparse::impl::NumberParserImpl::createParserFromProperties(icu::numparse::impl::NumberParserImpl *this, const icu::number::impl::DecimalFormatProperties *a2, const icu::DecimalFormatSymbols *a3, uint64_t a4, UErrorCode *a5)
{
  v5 = MEMORY[0x1EEE9AC00](this, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v5;
  v47 = *MEMORY[0x1E69E9840];
  memset(v46, 0, 224);
  icu::Locale::Locale(v46, v10 + 1936);
  bzero(v36, 0x990uLL);
  v35[0] = &unk_1F093F170;
  v35[1] = &unk_1F0935D00;
  v36[0] = 2;
  v37 = &unk_1F0935D00;
  v38 = 2;
  v39 = &unk_1F0935D00;
  v40 = 2;
  v41 = &unk_1F0935D00;
  v42 = 2;
  v43 = 1;
  sub_1952FDB18(v44);
  v13 = *(v12 + 48);
  if (v13)
  {
    v43 = 1;
    sub_19536ADEC(v44, v13, v12, v7);
  }

  else
  {
    sub_19536A6B4(v35, v12, v7);
    v45 = 1;
  }

  if (*v7 <= 0)
  {
    memset(v27, 0, sizeof(v27));
    sub_1953572E0(v12, v46, v7, v27);
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    memset(v28, 0, sizeof(v28));
    icu::CurrencyUnit::CurrencyUnit(v26, v27);
    icu::number::impl::CurrencySymbols::CurrencySymbols(v28, v26, v46, v11, v7);
    icu::CurrencyUnit::~CurrencyUnit(v26);
    v14 = *(v12 + 460);
    v15 = *(v12 + 464) == 1;
    v24 = icu::number::impl::Grouper::forProperties(v12, v16);
    v25 = v17;
    v18 = *v7;
    if (v18 <= 0)
    {
      if (*(v12 + 457))
      {
        v19 = *(v12 + 456) ^ 1 | 0x10;
      }

      *(v12 + 756);
      icu::number::impl::Grouper::getPrimary(&v24);
      if ((v9 & 1) == 0)
      {
        v20 = 34;
        if (v45)
        {
          v20 = 0;
        }

        (*(v35[v20] + 40))();
      }

      operator new();
    }

    icu::UnicodeString::~UnicodeString(v18, &v33[72]);
    icu::UnicodeString::~UnicodeString(v21, &v33[8]);
    if (BYTE4(v30))
    {
      free(*(&v29 + 1));
    }

    icu::CurrencyUnit::~CurrencyUnit(&v28[8]);
    icu::CurrencyUnit::~CurrencyUnit(v27);
  }

  sub_1952FDC0C(v35);
  icu::Locale::~Locale(v46);
  v22 = *MEMORY[0x1E69E9840];
  return 0;
}

icu::numparse::impl::NumberParserImpl *icu::numparse::impl::NumberParserImpl::NumberParserImpl(icu::numparse::impl::NumberParserImpl *this, int a2)
{
  *this = &unk_1F0940340;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 2) = this + 32;
  *(this + 6) = 10;
  *(this + 28) = 0;
  *(this + 112) = 0;
  *(this + 16) = &unk_1F0935D00;
  *(this + 68) = 2;
  *(this + 15) = &unk_1F09404D0;
  *(this + 26) = &unk_1F0935D00;
  *(this + 108) = 2;
  *(this + 25) = &unk_1F0940528;
  *(this + 36) = &unk_1F0935D00;
  *(this + 148) = 2;
  *(this + 35) = &unk_1F0940580;
  *(this + 47) = &unk_1F0935D00;
  *(this + 192) = 2;
  *(this + 46) = &unk_1F09405D8;
  *(this + 57) = &unk_1F0935D00;
  *(this + 232) = 2;
  *(this + 56) = &unk_1F0940630;
  *(this + 67) = &unk_1F0935D00;
  *(this + 272) = 2;
  *(this + 66) = &unk_1F0940688;
  *(this + 77) = &unk_1F0935D00;
  *(this + 312) = 2;
  *(this + 76) = &unk_1F09406E0;
  *(this + 87) = &unk_1F0935D00;
  *(this + 352) = 2;
  *(this + 86) = &unk_1F0940738;
  *(this + 97) = &unk_1F09402C0;
  *(this + 99) = &unk_1F0935D00;
  *(this + 400) = 2;
  *(this + 107) = &unk_1F0935D00;
  *(this + 432) = 2;
  *(this + 121) = 0;
  *(this + 952) = 0u;
  sub_195385C40(this + 976);
  sub_195380E3C(this + 1456);
  sub_195385D84(this + 2312);
  sub_195385E2C(this + 3856);
  *(this + 643) = &unk_1F0940918;
  *(this + 644) = &unk_1F09409B0;
  *(this + 645) = &unk_1F0940888;
  *(this + 647) = &unk_1F0940A68;
  *(this + 648) = &unk_1F09408D0;
  *(this + 1298) = 0;
  *(this + 650) = 0;
  *(this + 1302) = 0;
  return this;
}

void icu::numparse::impl::NumberParserImpl::~NumberParserImpl(icu::numparse::impl::NumberParserImpl *this)
{
  *this = &unk_1F0940340;
  *(this + 3) = 0;
  *(this + 648) = &unk_1F09408D0;
  icu::number::Scale::~Scale((this + 5192));
  sub_195385F84(this + 120);
  if (*(this + 28))
  {
    free(*(this + 2));
  }
}

{
  icu::numparse::impl::NumberParserImpl::~NumberParserImpl(this);

  JUMPOUT(0x19A8B2600);
}

void icu::numparse::impl::NumberParserImpl::addMatcher(icu::numparse::impl::NumberParserImpl *this, icu::numparse::impl::NumberParseMatcher *a2)
{
  v4 = *(this + 3);
  if (v4 >= *(this + 6) && v4 >= 1)
  {
    v6 = 2 * v4;
    v7 = malloc_type_malloc(8 * (2 * v4), 0x6004044C4A2DFuLL);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 6);
      if (v9 >= v4)
      {
        v9 = v4;
      }

      if (v9 >= v6)
      {
        v9 = 2 * v4;
      }

      memcpy(v7, *(this + 2), 8 * v9);
      if (*(this + 28))
      {
        free(*(this + 2));
      }

      *(this + 2) = v8;
      *(this + 6) = v6;
      *(this + 28) = 1;
    }
  }

  v10 = *(this + 3);
  *(*(this + 2) + 8 * v10) = a2;
  *(this + 3) = v10 + 1;
}

uint64_t icu::numparse::impl::NumberParserImpl::parse(uint64_t this, const icu::UnicodeString *a2, int a3, int a4, icu::numparse::impl::ParsedNumber *a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    v16[9] = v6;
    v16[10] = v7;
    v12 = this;
    memset(v16, 0, 24);
    icu::StringSegment::StringSegment(v16, a2, *(this + 8) & 1);
    icu::StringSegment::adjustOffset(v16, a3);
    if (a4)
    {
      icu::numparse::impl::NumberParserImpl::parseGreedy(v12, v16, a5, a6);
    }

    else
    {
      if ((*(v12 + 9) & 0x40) != 0)
      {
        v13 = 1;
      }

      else
      {
        v13 = -100;
      }

      icu::numparse::impl::NumberParserImpl::parseLongestRecursive(v12, v16, a5, v13, a6);
    }

    if (*(v12 + 12) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = *(*(v12 + 16) + 8 * v14);
        (*(*v15 + 40))(v15, a5);
        ++v14;
      }

      while (v14 < *(v12 + 12));
    }

    return icu::numparse::impl::ParsedNumber::postProcess(a5);
  }

  return this;
}

uint64_t icu::numparse::impl::NumberParserImpl::parseGreedy(uint64_t this, icu::StringSegment *a2, icu::numparse::impl::ParsedNumber *a3, UErrorCode *a4)
{
  if (*(this + 12) >= 1)
  {
    v7 = this;
    v8 = 0;
    do
    {
      this = icu::StringSegment::length(a2);
      if (!this)
      {
        break;
      }

      v9 = *(*(v7 + 16) + 8 * v8);
      this = (*(*v9 + 32))(v9, a2);
      if (this)
      {
        Offset = icu::StringSegment::getOffset(a2);
        this = (*(*v9 + 24))(v9, a2, a3, a4);
        if (*a4 > 0)
        {
          return this;
        }

        this = icu::StringSegment::getOffset(a2);
        if (this == Offset)
        {
          ++v8;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        ++v8;
      }
    }

    while (v8 < *(v7 + 12));
  }

  return this;
}

void icu::numparse::impl::NumberParserImpl::parseLongestRecursive(icu::numparse::impl::NumberParserImpl *this, icu::StringSegment *a2, icu::numparse::impl::ParsedNumber *a3, int a4, UErrorCode *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = icu::StringSegment::length(a2);
  if (a4 && v10)
  {
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    memset(v28, 0, sizeof(v28));
    memset(v27, 0, sizeof(v27));
    sub_1953817AC(v27, a3);
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    memset(v24, 0, sizeof(v24));
    memset(v23, 0, sizeof(v23));
    icu::numparse::impl::ParsedNumber::ParsedNumber(v23);
    Offset = icu::StringSegment::getOffset(a2);
    v12 = *(this + 3);
    if (v12 >= 1)
    {
      v13 = Offset;
      for (i = 0; i < v12; ++i)
      {
        v15 = *(*(this + 2) + 8 * i);
        if ((*(*v15 + 32))(v15, a2))
        {
          v16 = 0;
          do
          {
            if (v16 >= icu::StringSegment::length(a2))
            {
              break;
            }

            if (icu::StringSegment::codePointAt(a2, v16) < 0x10000)
            {
              v17 = 1;
            }

            else
            {
              v17 = 2;
            }

            v16 += v17;
            sub_195381340(v23, v27);
            icu::StringSegment::setLength(a2, v16);
            v18 = (*(*v15 + 24))(v15, a2, v23, a5);
            icu::StringSegment::resetLength(a2);
            v12 = *a5;
            if (v12 > 0)
            {
              goto LABEL_18;
            }

            if (icu::StringSegment::getOffset(a2) - v13 == v16)
            {
              icu::numparse::impl::NumberParserImpl::parseLongestRecursive(this, a2, v23, a4 + 1, a5);
              v12 = *a5;
              if (v12 > 0)
              {
                goto LABEL_18;
              }

              if (icu::numparse::impl::ParsedNumber::isBetterThan(v23, a3))
              {
                sub_195381340(a3, v23);
              }
            }

            icu::StringSegment::setOffset(a2, v13);
          }

          while ((v18 & 1) != 0);
        }

        v12 = *(this + 3);
      }
    }

LABEL_18:
    icu::UnicodeString::~UnicodeString(v12, v25);
    icu::UnicodeString::~UnicodeString(v19, v24);
    icu::number::impl::DecimalQuantity::~DecimalQuantity(v23);
    icu::UnicodeString::~UnicodeString(v20, v29);
    icu::UnicodeString::~UnicodeString(v21, v28);
    icu::number::impl::DecimalQuantity::~DecimalQuantity(v27);
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t icu::numparse::impl::NumberParserImpl::toString@<X0>(icu::numparse::impl::NumberParserImpl *this@<X0>, icu::UnicodeString *a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  sub_1951D6EE0(a2, L"<NumberParserImpl matchers:[");
  if (*(this + 3) >= 1)
  {
    v4 = 0;
    do
    {
      LOWORD(v9) = 32;
      icu::UnicodeString::doAppend(a2, &v9, 0, 1);
      (*(**(*(this + 2) + 8 * v4) + 48))(&v9);
      if ((v10 & 0x8000u) == 0)
      {
        v5 = v10 >> 5;
      }

      else
      {
        v5 = v11;
      }

      icu::UnicodeString::doAppend(a2, &v9, 0, v5);
      icu::UnicodeString::~UnicodeString(v6, &v9);
      ++v4;
    }

    while (v4 < *(this + 3));
  }

  result = icu::UnicodeString::doAppend(a2, " ", 0, 0xFFFFFFFFLL);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1953859B0(void *a1)
{
  sub_195385AE4((a1 + 150));
  a1[43] = &unk_1F0940240;
  v2 = *(a1 + 1148);
  if (*(a1 + 1148))
  {
    free(a1[142]);
  }

  icu::UnicodeString::~UnicodeString(v2, (a1 + 134));
  icu::UnicodeString::~UnicodeString(v3, (a1 + 126));
  for (i = 118; i != 54; i -= 8)
  {
    icu::UnicodeString::~UnicodeString(v4, &a1[i]);
  }

  icu::UnicodeString::~UnicodeString(v4, (a1 + 53));
  icu::UnicodeString::~UnicodeString(v6, (a1 + 45));
  a1[33] = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString(a1 + 33, (a1 + 34));
  a1[23] = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString(a1 + 23, (a1 + 24));
  a1[12] = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString(a1 + 12, (a1 + 13));
  a1[1] = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString(a1 + 1, (a1 + 2));
  return a1;
}

uint64_t sub_195385AE4(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

icu::UnicodeSet **sub_195385B68(icu::UnicodeSet **a1, icu::UnicodeSet **a2)
{
  v4 = *a1;
  if (v4)
  {
    icu::UnicodeSet::~UnicodeSet(v4);
    MEMORY[0x19A8B2600]();
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

uint64_t *sub_195385BBC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = v4 - 16;
    v6 = *(v4 - 8);
    if (v6)
    {
      v7 = (v4 + (v6 << 6) - 64);
      v8 = -64 * v6;
      do
      {
        icu::UnicodeString::~UnicodeString(v7);
        v7 = (v9 - 64);
        v8 += 64;
      }

      while (v8);
    }

    MEMORY[0x19A8B25E0](v5, 0x1093C808E78F3FDLL);
  }

  *a1 = *a2;
  *a2 = 0;
  return a1;
}

uint64_t sub_195385C40(uint64_t result)
{
  *result = &unk_1F09403F8;
  *(result + 8) = &unk_1F0935D00;
  *(result + 16) = 2;
  *(result + 72) = &unk_1F09402C0;
  *(result + 88) = &unk_1F0935D00;
  *(result + 96) = 2;
  *(result + 152) = &unk_1F0935D00;
  *(result + 160) = 2;
  *(result + 256) = 0;
  *(result + 264) = 0;
  *(result + 248) = 0;
  *(result + 280) = &unk_1F0935D00;
  *(result + 288) = 2;
  *(result + 272) = &unk_1F09404D0;
  *(result + 352) = &unk_1F0935D00;
  *(result + 360) = 2;
  *(result + 416) = &unk_1F0935D00;
  *(result + 424) = 2;
  return result;
}

uint64_t sub_195385D84(uint64_t a1)
{
  for (i = 0; i != 576; i += 32)
  {
    *(a1 + i) = &unk_1F0940020;
  }

  v3 = -960;
  do
  {
    v4 = a1 + v3;
    icu::numparse::impl::ArraySeriesMatcher::ArraySeriesMatcher(a1 + v3 + 1536);
    *(v4 + 1536) = &unk_1F093FFC0;
    *(v4 + 1592) = v4 + 1606;
    *(v4 + 1600) = 4;
    *(v4 + 1604) = 0;
    *(v4 + 1606) = 0;
    v3 += 80;
  }

  while (v3);
  return a1;
}

uint64_t sub_195385E2C(uint64_t a1)
{
  *(a1 + 16) = &unk_1F0935D00;
  *(a1 + 24) = 2;
  *(a1 + 8) = &unk_1F0940580;
  *(a1 + 104) = &unk_1F0935D00;
  *(a1 + 112) = 2;
  *(a1 + 96) = &unk_1F0940738;
  *(a1 + 192) = &unk_1F0935D00;
  *(a1 + 200) = 2;
  *(a1 + 184) = &unk_1F0940688;
  *(a1 + 272) = &unk_1F0935D00;
  *(a1 + 280) = 2;
  *(a1 + 264) = &unk_1F09406E0;
  sub_195380E3C(a1 + 344);
  *(a1 + 1200) = 0;
  *(a1 + 1208) = a1 + 1224;
  *(a1 + 1216) = 8;
  *(a1 + 1220) = 0;
  return a1;
}

uint64_t sub_195385F84(uint64_t a1)
{
  sub_1953859B0((a1 + 3736));
  for (i = 0; i != -960; i -= 80)
  {
    v3 = a1 + i;
    *(a1 + i + 3648) = &unk_1F093FFC0;
    if (*(a1 + i + 3716))
    {
      free(*(v3 + 3704));
    }

    *(a1 + i + 3648) = &unk_1F0940138;
    if (*(v3 + 3668))
    {
      free(*(a1 + i + 3656));
    }
  }

  *(a1 + 1336) = &unk_1F0940240;
  v4 = *(a1 + 2140);
  if (*(a1 + 2140))
  {
    free(*(a1 + 2128));
  }

  icu::UnicodeString::~UnicodeString(v4, (a1 + 2064));
  icu::UnicodeString::~UnicodeString(v5, (a1 + 2000));
  for (j = 1936; j != 1424; j -= 64)
  {
    icu::UnicodeString::~UnicodeString(v6, (a1 + j));
  }

  icu::UnicodeString::~UnicodeString(v6, (a1 + 1416));
  icu::UnicodeString::~UnicodeString(v8, (a1 + 1352));
  *(a1 + 856) = &unk_1F09403F8;
  icu::UnicodeString::~UnicodeString((a1 + 856), (a1 + 1272));
  icu::UnicodeString::~UnicodeString(v9, (a1 + 1208));
  *(a1 + 1128) = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 1128), (a1 + 1136));
  *(a1 + 928) = &unk_1F09402C0;
  sub_1951DB10C((a1 + 1120));
  sub_1951D18E4((a1 + 1112));
  sub_1951D18E4((a1 + 1104));
  icu::UnicodeString::~UnicodeString(v10, (a1 + 1008));
  icu::UnicodeString::~UnicodeString(v11, (a1 + 944));
  icu::UnicodeString::~UnicodeString(v12, (a1 + 864));
  *(a1 + 656) = &unk_1F09402C0;
  sub_1951DB10C((a1 + 848));
  sub_1951D18E4((a1 + 840));
  sub_1951D18E4((a1 + 832));
  icu::UnicodeString::~UnicodeString(v13, (a1 + 736));
  icu::UnicodeString::~UnicodeString(v14, (a1 + 672));
  *(a1 + 568) = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 568), (a1 + 576));
  *(a1 + 488) = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 488), (a1 + 496));
  *(a1 + 408) = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 408), (a1 + 416));
  *(a1 + 328) = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 328), (a1 + 336));
  *(a1 + 248) = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 248), (a1 + 256));
  *(a1 + 160) = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 160), (a1 + 168));
  *(a1 + 80) = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 80), (a1 + 88));
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString(v15, (a1 + 8));
  return a1;
}

icu::numparse::impl::ParsedNumber *icu::numparse::impl::ParsedNumber::ParsedNumber(icu::numparse::impl::ParsedNumber *this)
{
  v2 = icu::number::impl::DecimalQuantity::DecimalQuantity(this);
  *(this + 9) = 0;
  *(this + 10) = &unk_1F0935D00;
  *(this + 44) = 2;
  *(this + 18) = &unk_1F0935D00;
  *(this + 76) = 2;
  *(this + 8) = 1;
  icu::UnicodeString::setToBogus((v2 + 80));
  icu::UnicodeString::setToBogus((this + 144));
  *(this + 104) = 0;
  return this;
}

void icu::numparse::impl::ParsedNumber::clear(icu::numparse::impl::ParsedNumber *this)
{
  *(this + 8) = 1;
  *(this + 9) = 0;
  icu::UnicodeString::setToBogus((this + 80));
  icu::UnicodeString::setToBogus((this + 144));
  *(this + 104) = 0;
}

uint64_t icu::numparse::impl::ParsedNumber::setCharsConsumed(icu::numparse::impl::ParsedNumber *this, const icu::StringSegment *a2)
{
  result = icu::StringSegment::getOffset(a2);
  *(this + 18) = result;
  return result;
}

uint64_t icu::numparse::impl::ParsedNumber::postProcess(uint64_t this)
{
  if (*(this + 8) & 1) == 0 && (*(this + 76))
  {
    return icu::number::impl::DecimalQuantity::negate(this);
  }

  return this;
}

uint64_t icu::numparse::impl::ParsedNumber::seenNumber(icu::numparse::impl::ParsedNumber *this)
{
  if (*(this + 8) != 1)
  {
    return 1;
  }

  v1 = *(this + 19);
  if ((v1 & 0x40) != 0)
  {
    return 1;
  }

  else
  {
    return (v1 >> 7) & 1;
  }
}

double icu::numparse::impl::ParsedNumber::getDouble(icu::numparse::impl::ParsedNumber *this, UErrorCode *a2)
{
  v2 = *(this + 19);
  if ((v2 & 0x40) != 0)
  {

    return uprv_getNaN();
  }

  else if ((v2 & 0x80) != 0)
  {
    result = -INFINITY;
    if ((v2 & 1) == 0)
    {
      return INFINITY;
    }
  }

  else if (*(this + 8) == 1)
  {
    *a2 = U_INVALID_STATE_ERROR;
    return 0.0;
  }

  else if (icu::number::impl::DecimalQuantity::isZeroish(this) && (icu::number::impl::DecimalQuantity::isNegative(this) & 1) != 0)
  {
    return -0.0;
  }

  else if (icu::number::impl::DecimalQuantity::fitsInLong(this, 0))
  {
    return icu::number::impl::DecimalQuantity::toLong(this, 0);
  }

  else
  {

    return icu::number::impl::DecimalQuantity::toDouble(this);
  }

  return result;
}

uint64_t icu::numparse::impl::ParsedNumber::populateFormattable(icu::numparse::impl::ParsedNumber *this, icu::Formattable *a2, char a3)
{
  v4 = *(this + 19);
  if ((v4 & 0x40) != 0)
  {
    NaN = uprv_getNaN();
  }

  else
  {
    if ((v4 & 0x80) != 0)
    {
      if (v4)
      {
        v8 = 0xFFF0000000000000;
      }

      else
      {
        v8 = 0x7FF0000000000000;
      }
    }

    else
    {
      if (!icu::number::impl::DecimalQuantity::isZeroish(this) || (isNegative = icu::number::impl::DecimalQuantity::isNegative(this), (a3 & 0x10) != 0) || !isNegative)
      {
        operator new();
      }

      v8 = 0x8000000000000000;
    }

    NaN = *&v8;
  }

  return icu::Formattable::setDouble(a2, NaN);
}

uint64_t sub_195386600(uint64_t a1, UChar **a2, uint64_t a3)
{
  *a1 = &unk_1F09403F8;
  icu::UnicodeString::UnicodeString((a1 + 8), a2 + 89);
  sub_195382314(a1 + 72, a2, a3, 48);
  icu::numparse::impl::IgnorablesMatcher::IgnorablesMatcher((a1 + 272), 0x8000);
  *(a1 + 352) = &unk_1F0935D00;
  *(a1 + 360) = 2;
  *(a1 + 416) = &unk_1F0935D00;
  *(a1 + 424) = 2;
  v6 = icu::unisets::get(11);
  if (icu::UnicodeSet::contains(v6, (a2 + 49)))
  {
    icu::UnicodeString::setToBogus((a1 + 352));
  }

  else
  {
    icu::UnicodeString::operator=((a1 + 352), a2 + 49);
  }

  v7 = icu::unisets::get(12);
  if (icu::UnicodeSet::contains(v7, (a2 + 57)))
  {
    icu::UnicodeString::setToBogus((a1 + 416));
  }

  else
  {
    icu::UnicodeString::operator=((a1 + 416), a2 + 57);
  }

  return a1;
}

BOOL sub_195386720(uint64_t a1, icu::StringSegment *a2, icu::numparse::impl::ParsedNumber *this, UErrorCode *a4)
{
  if (!icu::numparse::impl::ParsedNumber::seenNumber(this) || (*(this + 76) & 8) != 0)
  {
    return 0;
  }

  Offset = icu::StringSegment::getOffset(a2);
  CommonPrefixLength = icu::StringSegment::getCommonPrefixLength(a2, (a1 + 8));
  v10 = *(a1 + 16);
  if ((v10 & 0x8000) != 0)
  {
    v11 = *(a1 + 20);
  }

  else
  {
    v11 = v10 >> 5;
  }

  v14 = icu::StringSegment::length(v10, a2);
  if (CommonPrefixLength != v11)
  {
    return CommonPrefixLength == v14;
  }

  if (v14 == CommonPrefixLength)
  {
    return 1;
  }

  icu::StringSegment::adjustOffset(a2, CommonPrefixLength);
  icu::numparse::impl::SymbolMatcher::match((a1 + 272), a2, this, a4);
  if (!icu::StringSegment::length(v15, a2))
  {
LABEL_35:
    icu::StringSegment::setOffset(a2, Offset);
    return 1;
  }

  v16 = icu::unisets::get(11);
  if (!icu::StringSegment::startsWith(a2, v16))
  {
    v19 = icu::unisets::get(12);
    if (icu::StringSegment::startsWith(a2, v19))
    {
      icu::StringSegment::adjustOffsetByCodePoint(a2);
    }

    else
    {
      if (icu::StringSegment::startsWith(a2, (a1 + 352)))
      {
        v23 = icu::StringSegment::getCommonPrefixLength(a2, (a1 + 352));
        v24 = *(a1 + 360);
        if ((v24 & 0x8000) != 0)
        {
          v25 = *(a1 + 364);
        }

        else
        {
          v25 = v24 >> 5;
        }

        if (v23 != v25)
        {
          goto LABEL_35;
        }

        icu::StringSegment::adjustOffset(a2, v23);
        goto LABEL_13;
      }

      if (icu::StringSegment::startsWith(a2, (a1 + 416)))
      {
        v26 = icu::StringSegment::getCommonPrefixLength(a2, (a1 + 416));
        v27 = *(a1 + 424);
        if ((v27 & 0x8000) != 0)
        {
          v28 = *(a1 + 428);
        }

        else
        {
          v28 = v27 >> 5;
        }

        if (v26 != v28)
        {
          goto LABEL_35;
        }

        icu::StringSegment::adjustOffset(a2, v26);
      }
    }

    v18 = 1;
    goto LABEL_18;
  }

  icu::StringSegment::adjustOffsetByCodePoint(a2);
LABEL_13:
  v18 = -1;
LABEL_18:
  if (!icu::StringSegment::length(v17, a2))
  {
    goto LABEL_35;
  }

  icu::numparse::impl::SymbolMatcher::match((a1 + 272), a2, this, a4);
  if (!icu::StringSegment::length(v20, a2))
  {
    goto LABEL_35;
  }

  v21 = *(this + 8);
  *(this + 8) = 0;
  v22 = icu::StringSegment::getOffset(a2);
  v12 = sub_195382320(a1 + 72, a2, this, v18);
  *(this + 8) = v21;
  if (icu::StringSegment::getOffset(a2) == v22)
  {
    icu::StringSegment::setOffset(a2, Offset);
  }

  else
  {
    *(this + 19) |= 8u;
  }

  return v12;
}

void sub_1953869A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F09403F8;
  icu::UnicodeString::~UnicodeString(a2, (a1 + 416));
  icu::UnicodeString::~UnicodeString(v3, (a1 + 352));
  *(a1 + 272) = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString(v4, (a1 + 280));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher((a1 + 272));
  *(a1 + 72) = &unk_1F09402C0;
  sub_1951DB10C((a1 + 264));
  sub_1951D18E4((a1 + 256));
  sub_1951D18E4((a1 + 248));
  icu::UnicodeString::~UnicodeString(v5, (a1 + 152));
  icu::UnicodeString::~UnicodeString(v6, (a1 + 88));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher((a1 + 72));
  icu::UnicodeString::~UnicodeString(v7, (a1 + 8));

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);
}

void sub_195386A88(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F09403F8;
  icu::UnicodeString::~UnicodeString(a2, (a1 + 416));
  icu::UnicodeString::~UnicodeString(v3, (a1 + 352));
  *(a1 + 272) = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString(v4, (a1 + 280));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher((a1 + 272));
  *(a1 + 72) = &unk_1F09402C0;
  sub_1951DB10C((a1 + 264));
  sub_1951D18E4((a1 + 256));
  sub_1951D18E4((a1 + 248));
  icu::UnicodeString::~UnicodeString(v5, (a1 + 152));
  icu::UnicodeString::~UnicodeString(v6, (a1 + 88));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher((a1 + 72));
  icu::UnicodeString::~UnicodeString(v7, (a1 + 8));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::numparse::impl::SymbolMatcher::SymbolMatcher(uint64_t a1, UChar **a2, int a3)
{
  *a1 = &unk_1F0940478;
  v5 = (a1 + 8);
  *(a1 + 8) = &unk_1F0935D00;
  *(a1 + 16) = 2;
  v6 = icu::unisets::get(a3);
  *(a1 + 72) = v6;
  if (icu::UnicodeSet::contains(v6, a2))
  {
    icu::UnicodeString::setToBogus(v5);
  }

  else
  {
    icu::UnicodeString::operator=(v5, a2);
  }

  return a1;
}

BOOL icu::numparse::impl::SymbolMatcher::match(icu::UnicodeSet **this, icu::StringSegment *a2, icu::numparse::impl::ParsedNumber *a3, UErrorCode *a4)
{
  if ((*(*this + 7))(this, a3))
  {
    return 0;
  }

  if (*(this + 8) < 0x20u)
  {
    v8 = 0;
    goto LABEL_7;
  }

  CommonPrefixLength = icu::StringSegment::getCommonPrefixLength(a2, (this + 1));
  v8 = CommonPrefixLength;
  v9 = *(this + 8);
  if ((v9 & 0x8000) == 0)
  {
    if (CommonPrefixLength == v9 >> 5)
    {
      goto LABEL_15;
    }

LABEL_7:
    CodePoint = icu::StringSegment::getCodePoint(a2);
    if (CodePoint == -1)
    {
      return v8 == icu::StringSegment::length(v11, a2);
    }

    v12 = CodePoint;
    if (!icu::UnicodeSet::contains(this[9], CodePoint))
    {
      return v8 == icu::StringSegment::length(v11, a2);
    }

    if (v12 < 0x10000)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = a2;
    goto LABEL_16;
  }

  if (CommonPrefixLength != *(this + 5))
  {
    goto LABEL_7;
  }

LABEL_15:
  v14 = a2;
  v13 = v8;
LABEL_16:
  icu::StringSegment::adjustOffset(v14, v13);
  (*(*this + 8))(this, a2, a3);
  return 0;
}

BOOL icu::numparse::impl::SymbolMatcher::smokeTest(const icu::UnicodeSet **this, const icu::StringSegment *a2)
{
  if (icu::StringSegment::startsWith(a2, this[9]))
  {
    return 1;
  }

  return icu::StringSegment::startsWith(a2, (this + 1));
}

icu::numparse::impl::IgnorablesMatcher *icu::numparse::impl::IgnorablesMatcher::IgnorablesMatcher(icu::numparse::impl::IgnorablesMatcher *this, __int16 a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = &unk_1F0935D00;
  v8 = 2;
  if (a2 < 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  icu::numparse::impl::SymbolMatcher::SymbolMatcher(this, &v7, v3);
  icu::UnicodeString::~UnicodeString(v4, &v7);
  *this = &unk_1F09404D0;
  v5 = *MEMORY[0x1E69E9840];
  return this;
}

void *sub_195386EAC(uint64_t a1, uint64_t a2)
{
  result = icu::numparse::impl::SymbolMatcher::SymbolMatcher(a1, (a2 + 904), 15);
  *result = &unk_1F0940528;
  return result;
}

uint64_t icu::numparse::impl::MinusSignMatcher::MinusSignMatcher(icu::numparse::impl::MinusSignMatcher *this, UChar **a2, char a3)
{
  result = icu::numparse::impl::SymbolMatcher::SymbolMatcher(this, a2 + 49, 11);
  *result = &unk_1F0940580;
  *(result + 80) = a3;
  return result;
}

{
  result = icu::numparse::impl::SymbolMatcher::SymbolMatcher(this, a2 + 49, 11);
  *result = &unk_1F0940580;
  *(result + 80) = a3;
  return result;
}

uint64_t icu::numparse::impl::MinusSignMatcher::isDisabled(icu::numparse::impl::MinusSignMatcher *this, const icu::numparse::impl::ParsedNumber *a2)
{
  if (*(this + 80))
  {
    return 0;
  }

  else
  {
    return icu::numparse::impl::ParsedNumber::seenNumber(a2);
  }
}

void *sub_195386FCC(uint64_t a1, uint64_t a2)
{
  result = icu::numparse::impl::SymbolMatcher::SymbolMatcher(a1, (a2 + 968), 0);
  *result = &unk_1F09405D8;
  return result;
}

void *sub_195387024(uint64_t a1, UChar **a2)
{
  result = icu::numparse::impl::SymbolMatcher::SymbolMatcher(a1, a2, 0);
  *result = &unk_1F0940630;
  return result;
}

void *icu::numparse::impl::PercentMatcher::PercentMatcher(icu::numparse::impl::PercentMatcher *this, UChar **a2)
{
  result = icu::numparse::impl::SymbolMatcher::SymbolMatcher(this, a2 + 25, 13);
  *result = &unk_1F0940688;
  return result;
}

{
  result = icu::numparse::impl::SymbolMatcher::SymbolMatcher(this, a2 + 25, 13);
  *result = &unk_1F0940688;
  return result;
}

void *icu::numparse::impl::PermilleMatcher::PermilleMatcher(icu::numparse::impl::PermilleMatcher *this, UChar **a2)
{
  result = icu::numparse::impl::SymbolMatcher::SymbolMatcher(this, a2 + 97, 14);
  *result = &unk_1F09406E0;
  return result;
}

{
  result = icu::numparse::impl::SymbolMatcher::SymbolMatcher(this, a2 + 97, 14);
  *result = &unk_1F09406E0;
  return result;
}

uint64_t icu::numparse::impl::PlusSignMatcher::PlusSignMatcher(icu::numparse::impl::PlusSignMatcher *this, UChar **a2, char a3)
{
  result = icu::numparse::impl::SymbolMatcher::SymbolMatcher(this, a2 + 57, 12);
  *result = &unk_1F0940738;
  *(result + 80) = a3;
  return result;
}

{
  result = icu::numparse::impl::SymbolMatcher::SymbolMatcher(this, a2 + 57, 12);
  *result = &unk_1F0940738;
  *(result + 80) = a3;
  return result;
}

uint64_t icu::numparse::impl::PlusSignMatcher::isDisabled(icu::numparse::impl::PlusSignMatcher *this, const icu::numparse::impl::ParsedNumber *a2)
{
  if (*(this + 80))
  {
    return 0;
  }

  else
  {
    return icu::numparse::impl::ParsedNumber::seenNumber(a2);
  }
}

void sub_195387258(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);
}

void sub_1953872AC(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195387314(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);
}

void sub_195387368(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953873D0(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);
}

void sub_195387424(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_19538748C(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);
}

void sub_1953874E0(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195387548(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);
}

void sub_19538759C(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195387604(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);
}

void sub_195387658(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953876C0(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);
}

void sub_195387714(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_19538777C(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);
}

void sub_1953877D0(uint64_t a1)
{
  *a1 = &unk_1F0940478;
  icu::UnicodeString::~UnicodeString((a1 + 8));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195387838(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 88) & 1) != 0 || (*(a2 + 152))
  {
    *(a2 + 76) |= 0x100u;
  }
}

void sub_195387868(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 208))
  {
    *(a2 + 76) |= 0x100u;
  }
}

uint64_t sub_195387894(uint64_t result, char a2)
{
  *result = &unk_1F0940888;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_1953878B8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 76);
  if (((v2 >> 5) & 1) != *(result + 8))
  {
    *(a2 + 76) = v2 | 0x100;
  }

  return result;
}

uint64_t sub_1953878E8(int a1, icu::numparse::impl::ParsedNumber *this)
{
  result = icu::numparse::impl::ParsedNumber::seenNumber(this);
  if ((result & 1) == 0)
  {
    *(this + 19) |= 0x100u;
  }

  return result;
}

void *sub_195387930(void *a1, uint64_t a2)
{
  *a1 = &unk_1F09408D0;
  icu::number::Scale::Scale((a1 + 1), a2);
  return a1;
}

void sub_195387974(uint64_t a1, icu::number::impl::DecimalQuantity *a2)
{
  if ((*(a2 + 8) & 1) == 0)
  {
    icu::number::Scale::applyReciprocalTo((a1 + 8), a2);
  }
}

void sub_19538799C(icu::numparse::impl::NumberParseMatcher *a1)
{
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953879E8(icu::numparse::impl::NumberParseMatcher *a1)
{
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195387A24(icu::numparse::impl::NumberParseMatcher *a1)
{
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195387A60(icu::numparse::impl::NumberParseMatcher *a1)
{
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195387A98(uint64_t a1)
{
  *a1 = &unk_1F09408D0;
  icu::number::Scale::~Scale((a1 + 8));

  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);
}

void sub_195387AEC(uint64_t a1)
{
  *a1 = &unk_1F09408D0;
  icu::number::Scale::~Scale((a1 + 8));
  icu::numparse::impl::NumberParseMatcher::~NumberParseMatcher(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t unumrf_openResult(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t unumrf_resultAsValue(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 > 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (result)
  {
    if (*(result + 16) == 1178881536)
    {
      goto LABEL_8;
    }

    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  result = 0;
  *a2 = v2;
LABEL_8:
  if (v2 >= 1)
  {
    return 0;
  }

  return result;
}

uint64_t unumrf_closeResult(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) == 1178881536)
    {
      *(result + 32) = 0;
      sub_19536E7C4(result + 48);
      icu::number::FormattedNumberRange::~FormattedNumberRange((v1 + 6));
      v1[4] = 0;
      *v1 = 0;

      JUMPOUT(0x19A8B2600);
    }
  }

  return result;
}

uint64_t sub_195387CC0(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 0)
  {
    a1 = 0;
    goto LABEL_8;
  }

  if (a1)
  {
    if (*(a1 + 16) == 1178881536)
    {
      goto LABEL_8;
    }

    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  a1 = 0;
  *a2 = v2;
LABEL_8:
  if (v2 >= 1)
  {
    return 0;
  }

  else
  {
    return a1 + 48;
  }
}

void unumrf_openForSkeletonWithCollapseAndIdentityFallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5);
  v5 = *MEMORY[0x1E69E9840];
  operator new();
}

_DWORD *unumrf_formatDoubleRange(_DWORD *result, uint64_t a2, UErrorCode *a3, double a4, double a5)
{
  if (*a3 > 0)
  {
    return result;
  }

  v6 = result;
  if (!result)
  {
    goto LABEL_9;
  }

  if (*result != 1314014720)
  {
LABEL_10:
    v10 = 3;
    goto LABEL_11;
  }

  if (!a2)
  {
LABEL_9:
    v10 = 1;
LABEL_11:
    *a3 = v10;
    return result;
  }

  if (*(a2 + 16) != 1178881536)
  {
    goto LABEL_10;
  }

  icu::FormattedValueStringBuilderImpl::resetString((a2 + 48));
  icu::number::impl::DecimalQuantity::clear((a2 + 352));
  icu::number::impl::DecimalQuantity::clear((a2 + 424));
  icu::number::impl::DecimalQuantity::setToDouble((a2 + 352), a4);
  icu::number::impl::DecimalQuantity::setToDouble((a2 + 424), a5);

  return icu::number::LocalizedNumberRangeFormatter::formatImpl((v6 + 2), (a2 + 48), a4 == a5, a3);
}

_DWORD *unumrf_formatDecimalRange(_DWORD *result, const char *a2, int a3, const char *a4, int a5, uint64_t a6, UErrorCode *a7)
{
  if (*a7 > 0)
  {
    return result;
  }

  v8 = result;
  if (!result)
  {
    goto LABEL_9;
  }

  if (*result != 1314014720)
  {
LABEL_10:
    v14 = 3;
    goto LABEL_11;
  }

  if (!a6)
  {
LABEL_9:
    v14 = 1;
LABEL_11:
    *a7 = v14;
    return result;
  }

  if (*(a6 + 16) != 1178881536)
  {
    goto LABEL_10;
  }

  icu::FormattedValueStringBuilderImpl::resetString((a6 + 48));
  icu::number::impl::DecimalQuantity::clear((a6 + 352));
  icu::number::impl::DecimalQuantity::clear((a6 + 424));
  icu::number::impl::DecimalQuantity::setToDecNumber(a6 + 352, a2, a3, a7);
  icu::number::impl::DecimalQuantity::setToDecNumber(a6 + 424, a4, a5, a7);

  return icu::number::LocalizedNumberRangeFormatter::formatImpl((v8 + 2), (a6 + 48), a2 == a4, a7);
}

uint64_t unumrf_resultGetIdentityResult(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    if (a1)
    {
      if (*(a1 + 16) == 1178881536)
      {
        return *(a1 + 496);
      }

      v3 = 3;
    }

    else
    {
      v3 = 1;
    }

    *a2 = v3;
  }

  return 3;
}

uint64_t unumrf_resultGetFirstDecimalNumber(uint64_t a1, char *a2, int a3, UErrorCode *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    v4 = 0;
    goto LABEL_12;
  }

  if (!a1)
  {
    v10 = 1;
LABEL_11:
    v4 = 0;
    *a4 = v10;
    goto LABEL_12;
  }

  if (*(a1 + 16) != 1178881536)
  {
    v10 = 3;
    goto LABEL_11;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  icu::number::impl::DecNum::DecNum(v15);
  v9 = icu::number::impl::DecimalQuantity::toDecNum((a1 + 352), v15, a4);
  memset(&v14[1], 0, 56);
  v13[1] = 0;
  v14[0] = &v14[1] + 5;
  LODWORD(v14[1]) = 40;
  v13[0] = 0;
  icu::CharStringByteSink::CharStringByteSink(v13, v14);
  icu::number::impl::DecNum::toString(v9, v13, a4);
  icu::CharStringByteSink::~CharStringByteSink(v13);
  v4 = icu::CharString::extract(v14, a2, a3, a4);
  if (BYTE4(v14[1]))
  {
    free(v14[0]);
  }

  if (BYTE4(v15[1]))
  {
    free(v15[0]);
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t unumrf_resultGetSecondDecimalNumber(uint64_t a1, char *a2, int a3, UErrorCode *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    v4 = 0;
    goto LABEL_12;
  }

  if (!a1)
  {
    v10 = 1;
LABEL_11:
    v4 = 0;
    *a4 = v10;
    goto LABEL_12;
  }

  if (*(a1 + 16) != 1178881536)
  {
    v10 = 3;
    goto LABEL_11;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  icu::number::impl::DecNum::DecNum(v15);
  v9 = icu::number::impl::DecimalQuantity::toDecNum((a1 + 424), v15, a4);
  memset(&v14[1], 0, 56);
  v13[1] = 0;
  v14[0] = &v14[1] + 5;
  LODWORD(v14[1]) = 40;
  v13[0] = 0;
  icu::CharStringByteSink::CharStringByteSink(v13, v14);
  icu::number::impl::DecNum::toString(v9, v13, a4);
  icu::CharStringByteSink::~CharStringByteSink(v13);
  v4 = icu::CharString::extract(v14, a2, a3, a4);
  if (BYTE4(v14[1]))
  {
    free(v14[0]);
  }

  if (BYTE4(v15[1]))
  {
    free(v15[0]);
  }

LABEL_12:
  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

_DWORD *unumrf_close(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (*result == 1314014720)
    {
      icu::number::LocalizedNumberRangeFormatter::~LocalizedNumberRangeFormatter((result + 2));
      *v1 = 0;

      JUMPOUT(0x19A8B2600);
    }
  }

  return result;
}

uint64_t sub_1953884E4(uint64_t a1)
{
  v2 = icu::FormattedValueStringBuilderImpl::FormattedValueStringBuilderImpl(a1, 0);
  *v2 = &unk_1F093F700;
  icu::number::impl::DecimalQuantity::DecimalQuantity((v2 + 38));
  icu::number::impl::DecimalQuantity::DecimalQuantity((a1 + 376));
  *(a1 + 448) = 3;
  return a1;
}

icu::Locale *icu::number::NumberRangeFormatterSettings<icu::number::UnlocalizedNumberRangeFormatter>::numberFormatterBoth@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  bzero(a3, 0x4C0uLL);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 1;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 1;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 1;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 1;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

icu::Locale *icu::number::NumberRangeFormatterSettings<icu::number::UnlocalizedNumberRangeFormatter>::numberFormatterFirst@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  bzero(a3, 0x4C0uLL);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

icu::Locale *icu::number::NumberRangeFormatterSettings<icu::number::UnlocalizedNumberRangeFormatter>::numberFormatterSecond@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  bzero(a3, 0x4C0uLL);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 488), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 488), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 488), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 488), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

uint64_t icu::number::NumberRangeFormatterSettings<icu::number::UnlocalizedNumberRangeFormatter>::collapse@<X0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  bzero(a3, 0x4C0uLL);
  result = icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  a3[243] = a2;
  return result;
}

{
  bzero(a3, 0x4C0uLL);
  result = icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  a3[243] = a2;
  return result;
}

uint64_t icu::number::NumberRangeFormatterSettings<icu::number::UnlocalizedNumberRangeFormatter>::identityFallback@<X0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  bzero(a3, 0x4C0uLL);
  result = icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  a3[244] = a2;
  return result;
}

{
  bzero(a3, 0x4C0uLL);
  result = icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a3, a1);
  a3[244] = a2;
  return result;
}

void icu::number::NumberRangeFormatterSettings<icu::number::UnlocalizedNumberRangeFormatter>::clone()
{
  operator new();
}

{
  operator new();
}

BOOL icu::number::NumberRangeFormatterSettings<icu::number::UnlocalizedNumberRangeFormatter>::copyErrorTo(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 1;
  }

  sub_195388D34(a1, a2);
  return *a2 > 0;
}

BOOL sub_195388D34(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 1;
  }

  sub_19535D604(a1 + 8, a2);
  if (*a2 > 0)
  {
    return 1;
  }

  sub_19535D604(a1 + 488, a2);
  return *a2 > 0;
}

icu::Locale *icu::number::NumberRangeFormatterSettings<icu::number::LocalizedNumberRangeFormatter>::numberFormatterBoth@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  bzero(a3, 0x4C0uLL);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 1;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 1;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 1;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 1;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

icu::Locale *icu::number::NumberRangeFormatterSettings<icu::number::LocalizedNumberRangeFormatter>::numberFormatterFirst@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  bzero(a3, 0x4C0uLL);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 8), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

icu::Locale *icu::number::NumberRangeFormatterSettings<icu::number::LocalizedNumberRangeFormatter>::numberFormatterSecond@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  bzero(a3, 0x4C0uLL);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 488), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 488), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 488), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

{
  bzero(a3, 0x4C0uLL);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  icu::number::UnlocalizedNumberFormatter::operator=((a3 + 488), a2);
  a3[968] = 0;
  icu::Locale::operator=((a3 + 256), (a3 + 984));

  return icu::Locale::operator=((a3 + 736), (a3 + 984));
}

uint64_t icu::number::NumberRangeFormatterSettings<icu::number::LocalizedNumberRangeFormatter>::collapse@<X0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  bzero(a3, 0x4C0uLL);
  result = icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  a3[243] = a2;
  return result;
}

{
  bzero(a3, 0x4C0uLL);
  result = icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  a3[243] = a2;
  return result;
}

uint64_t icu::number::NumberRangeFormatterSettings<icu::number::LocalizedNumberRangeFormatter>::identityFallback@<X0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  bzero(a3, 0x4C0uLL);
  result = icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  a3[244] = a2;
  return result;
}

{
  bzero(a3, 0x4C0uLL);
  result = icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1);
  a3[244] = a2;
  return result;
}

void icu::number::NumberRangeFormatterSettings<icu::number::LocalizedNumberRangeFormatter>::clone()
{
  operator new();
}

{
  operator new();
}

BOOL icu::number::NumberRangeFormatterSettings<icu::number::LocalizedNumberRangeFormatter>::copyErrorTo(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 1;
  }

  sub_195388D34(a1, a2);
  return *a2 > 0;
}

uint64_t icu::number::NumberRangeFormatter::with@<X0>(void *a1@<X8>)
{
  bzero(a1, 0x4C0uLL);

  return sub_19538979C(a1);
}

void **icu::number::NumberRangeFormatter::withLocale@<X0>(icu::number::NumberRangeFormatter *this@<X0>, uint64_t a2@<X8>)
{
  v7[152] = *MEMORY[0x1E69E9840];
  bzero(v7, 0x4C0uLL);
  sub_19538979C(v7);
  icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a2, v7, this);
  result = sub_19538A1FC(v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::number::UnlocalizedNumberRangeFormatter::locale@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1, a2);
}

{
  return icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(a3, a1, a2);
}

uint64_t icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(uint64_t a1, uint64_t a2)
{
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter((a1 + 8), (a2 + 8));
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter((a1 + 488), (a2 + 488));
  v4 = *(a2 + 968);
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 968) = v4;
  icu::Locale::Locale((a1 + 984), a2 + 984);
  return a1;
}

{
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a1 + 8, a2 + 8);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a1 + 488, a2 + 488);
  v4 = *(a2 + 968);
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 968) = v4;
  icu::Locale::Locale(a1 + 984, a2 + 984);
  return a1;
}

{
  v4 = sub_19538979C(a1);
  icu::number::UnlocalizedNumberFormatter::operator=(v4 + 8, a2 + 8);
  icu::number::UnlocalizedNumberFormatter::operator=(a1 + 488, a2 + 488);
  v5 = *(a2 + 976);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = v5;
  icu::Locale::operator=((a1 + 984), a2 + 984);
  return a1;
}

{
  v4 = sub_19538979C(a1);
  icu::number::UnlocalizedNumberFormatter::operator=(v4 + 8, a2 + 8);
  icu::number::UnlocalizedNumberFormatter::operator=(a1 + 488, a2 + 488);
  v5 = *(a2 + 976);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = v5;
  icu::Locale::operator=((a1 + 984), a2 + 984);
  return a1;
}

uint64_t sub_19538979C(uint64_t a1)
{
  sub_19535F640(a1 + 8);
  sub_19535F640(a1 + 488);
  *(a1 + 968) = 1;
  *(a1 + 972) = 0x200000000;
  icu::Locale::Locale((a1 + 984));
  return a1;
}

uint64_t icu::number::UnlocalizedNumberRangeFormatter::operator=(uint64_t a1, uint64_t a2)
{
  icu::number::UnlocalizedNumberFormatter::operator=(a1 + 8, a2 + 8);
  icu::number::UnlocalizedNumberFormatter::operator=(a1 + 488, a2 + 488);
  v4 = *(a2 + 976);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = v4;
  icu::Locale::operator=((a1 + 984), a2 + 984);
  return a1;
}

{
  icu::number::UnlocalizedNumberFormatter::operator=(a1 + 8, a2 + 8);
  icu::number::UnlocalizedNumberFormatter::operator=(a1 + 488, a2 + 488);
  v4 = *(a2 + 976);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = v4;
  icu::Locale::operator=(a1 + 984, a2 + 984);
  return a1;
}

uint64_t icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(uint64_t a1, uint64_t a2)
{
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter((a1 + 8), (a2 + 8));
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter((a1 + 488), (a2 + 488));
  v4 = *(a2 + 968);
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 968) = v4;
  icu::Locale::Locale((a1 + 984), a2 + 984);
  *(a1 + 1208) = 0;
  return a1;
}

{
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a1 + 8, a2 + 8);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a1 + 488, a2 + 488);
  v4 = *(a2 + 968);
  *(a1 + 976) = *(a2 + 976);
  *(a1 + 968) = v4;
  icu::Locale::Locale(a1 + 984, a2 + 984);
  *(a1 + 1208) = 0;
  v5 = atomic_exchange((a1 + 1208), atomic_exchange((a2 + 1208), 0));
  if (v5)
  {
    if (*(v5 + 1908))
    {
      free(*(v5 + 1896));
    }

    sub_195360F0C((v5 + 1296));
    icu::SimpleFormatter::~SimpleFormatter((v5 + 1224));
    sub_195360F0C((v5 + 608));
    sub_195360F0C((v5 + 8));
    MEMORY[0x19A8B2600](v5, 0x10F2C40D9F69008);
  }

  return a1;
}

uint64_t icu::number::LocalizedNumberRangeFormatter::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::number::UnlocalizedNumberFormatter::operator=(a1 + 8, a2 + 8);
    icu::number::UnlocalizedNumberFormatter::operator=(a1 + 488, a2 + 488);
    v4 = *(a2 + 976);
    *(a1 + 968) = *(a2 + 968);
    *(a1 + 976) = v4;
    icu::Locale::operator=((a1 + 984), a2 + 984);
    v5 = atomic_exchange((a1 + 1208), 0);
    if (v5)
    {
      if (*(v5 + 1908))
      {
        free(*(v5 + 1896));
      }

      sub_195360F0C((v5 + 1296));
      icu::SimpleFormatter::~SimpleFormatter((v5 + 1224));
      sub_195360F0C((v5 + 608));
      sub_195360F0C((v5 + 8));
      MEMORY[0x19A8B2600](v5, 0x10F2C40D9F69008);
    }
  }

  return a1;
}

{
  icu::number::UnlocalizedNumberFormatter::operator=(a1 + 8, a2 + 8);
  icu::number::UnlocalizedNumberFormatter::operator=(a1 + 488, a2 + 488);
  v4 = *(a2 + 976);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = v4;
  icu::Locale::operator=(a1 + 984, a2 + 984);
  v5 = atomic_exchange((a1 + 1208), atomic_exchange((a2 + 1208), 0));
  if (v5)
  {
    if (*(v5 + 1908))
    {
      free(*(v5 + 1896));
    }

    sub_195360F0C((v5 + 1296));
    icu::SimpleFormatter::~SimpleFormatter((v5 + 1224));
    sub_195360F0C((v5 + 608));
    sub_195360F0C((v5 + 8));
    MEMORY[0x19A8B2600](v5, 0x10F2C40D9F69008);
  }

  return a1;
}

void icu::number::LocalizedNumberRangeFormatter::~LocalizedNumberRangeFormatter(atomic_ullong *this)
{
  v2 = atomic_exchange(this + 151, 0);
  if (v2)
  {
    if (*(v2 + 1908))
    {
      free(*(v2 + 1896));
    }

    sub_195360F0C((v2 + 1296));
    icu::SimpleFormatter::~SimpleFormatter((v2 + 1224));
    sub_195360F0C((v2 + 608));
    sub_195360F0C((v2 + 8));
    MEMORY[0x19A8B2600](v2, 0x10F2C40D9F69008);
  }

  sub_19538A1FC(this);
}

uint64_t icu::number::LocalizedNumberRangeFormatter::LocalizedNumberRangeFormatter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19538979C(a1);
  *(v6 + 1208) = 0;
  icu::number::UnlocalizedNumberFormatter::operator=(v6 + 8, a2 + 8);
  icu::number::UnlocalizedNumberFormatter::operator=(a1 + 488, a2 + 488);
  v7 = *(a2 + 976);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = v7;
  icu::Locale::operator=((a1 + 984), a2 + 984);
  icu::Locale::operator=((a1 + 984), a3);
  icu::Locale::operator=((a1 + 256), a1 + 984);
  icu::Locale::operator=((a1 + 736), a1 + 984);
  return a1;
}

{
  v6 = sub_19538979C(a1);
  *(v6 + 1208) = 0;
  icu::number::UnlocalizedNumberFormatter::operator=(v6 + 8, a2 + 8);
  icu::number::UnlocalizedNumberFormatter::operator=(a1 + 488, a2 + 488);
  v7 = *(a2 + 976);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 976) = v7;
  icu::Locale::operator=(a1 + 984, a2 + 984);
  icu::Locale::operator=((a1 + 984), a3);
  icu::Locale::operator=((a1 + 256), a1 + 984);
  icu::Locale::operator=((a1 + 736), a1 + 984);
  return a1;
}

void **icu::number::LocalizedNumberRangeFormatter::withoutLocale@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11[28] = *MEMORY[0x1E69E9840];
  bzero(&v7, 0x4B8uLL);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(&v8, (a1 + 8));
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(v9, (a1 + 488));
  v9[60] = *(a1 + 968);
  v10 = *(a1 + 976);
  icu::Locale::Locale(v11, a1 + 984);
  icu::Locale::Locale(v6);
  icu::Locale::operator=(v11, v6);
  icu::Locale::~Locale(v6);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a2, &v7);
  result = sub_19538A1FC(&v7);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v11[28] = *MEMORY[0x1E69E9840];
  bzero(&v7, 0x4B8uLL);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(&v8, a1 + 8);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(v9, a1 + 488);
  v9[60] = *(a1 + 968);
  v10 = *(a1 + 976);
  icu::Locale::Locale(v11, a1 + 984);
  icu::Locale::Locale(v6);
  icu::Locale::operator=(v11, v6);
  icu::Locale::~Locale(v6);
  icu::number::UnlocalizedNumberRangeFormatter::UnlocalizedNumberRangeFormatter(a2, &v7);
  result = sub_19538A1FC(&v7);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void icu::number::LocalizedNumberRangeFormatter::formatFormattableRange(UErrorCode *a1@<X3>, uint64_t a2@<X8>)
{
  if (*a1 < 1)
  {
    operator new();
  }

  *a2 = &unk_1F093F6C0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

uint64_t icu::number::LocalizedNumberRangeFormatter::formatImpl(icu::number::LocalizedNumberRangeFormatter *a1, _DWORD *a2, int a3, UErrorCode *a4)
{
  result = icu::number::LocalizedNumberRangeFormatter::getFormatter(a1, a4);
  if (*a4 <= 0)
  {
    if (result)
    {
      result = sub_19538A818(result, a2, a3, a4);
      if (*a4 <= 0)
      {

        return icu::FormattedStringBuilder::writeTerminator((a2 + 2), a4);
      }
    }

    else
    {
      *a4 = U_INTERNAL_PROGRAM_ERROR;
    }
  }

  return result;
}

unint64_t icu::number::LocalizedNumberRangeFormatter::getFormatter(icu::number::LocalizedNumberRangeFormatter *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v2 = atomic_load(this + 151);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void **sub_19538A1FC(void **a1)
{
  icu::Locale::~Locale((a1 + 123));
  icu::Locale::~Locale((a1 + 92));
  icu::number::impl::StringProp::~StringProp(a1 + 87);
  icu::number::impl::StringProp::~StringProp(a1 + 85);
  icu::number::Scale::~Scale((a1 + 82));
  icu::number::impl::SymbolsWrapper::~SymbolsWrapper((a1 + 78));
  icu::MeasureUnit::~MeasureUnit((a1 + 66));
  icu::MeasureUnit::~MeasureUnit((a1 + 63));
  icu::Locale::~Locale((a1 + 32));
  icu::number::impl::StringProp::~StringProp(a1 + 27);
  icu::number::impl::StringProp::~StringProp(a1 + 25);
  icu::number::Scale::~Scale((a1 + 22));
  icu::number::impl::SymbolsWrapper::~SymbolsWrapper((a1 + 18));
  icu::MeasureUnit::~MeasureUnit((a1 + 6));
  icu::MeasureUnit::~MeasureUnit((a1 + 3));
  return a1;
}

uint64_t *sub_19538A298(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(v2 + 1908))
    {
      free(*(v2 + 1896));
    }

    sub_195360F0C((v2 + 1296));
    icu::SimpleFormatter::~SimpleFormatter((v2 + 1224));
    sub_195360F0C((v2 + 608));
    sub_195360F0C((v2 + 8));
    MEMORY[0x19A8B2600](v2, 0x10F2C40D9F69008);
  }

  return a1;
}

uint64_t sub_19538A30C(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  sub_1953614AC(a1 + 8, (a2 + 8), a3);
  sub_1953614AC(a1 + 608, (a2 + 488), a3);
  *(a1 + 1208) = *(a2 + 968);
  *(a1 + 1212) = *(a2 + 972);
  icu::UnicodeString::UnicodeString(a1 + 1232, 0);
  *(a1 + 1296) = 0;
  sub_195362FE4(a1 + 1304);
  v6 = 0uLL;
  *(a1 + 1864) = 0u;
  *(a1 + 1880) = 0u;
  *(a1 + 1832) = 0u;
  *(a1 + 1848) = 0u;
  *(a1 + 1800) = 0u;
  *(a1 + 1816) = 0u;
  *(a1 + 1896) = a1 + 1912;
  *(a1 + 1904) = 3;
  *(a1 + 1908) = 0;
  *(a1 + 1952) = 0;
  if ((*(a1 + 1208) & 1) != 0 || (v7 = strcmp((a1 + 188), (a1 + 788)), v6 = 0uLL, !v7))
  {
    v31 = 0;
    v30[2] = v6;
    v30[3] = v6;
    v30[0] = v6;
    v30[1] = v6;
    icu::UnicodeString::UnicodeString(v30 + 8, 0);
    if (*a3 <= 0)
    {
      v8 = ures_open(0, *(a2 + 1024), a3);
      if (*a3 <= 0)
      {
        v17 = &unk_1F0940B20;
        v18 = v30;
        memset(&v32[1], 0, 56);
        v32[0] = &v32[1] + 5;
        LODWORD(v32[1]) = 40;
        icu::CharString::append(v32, "NumberElements/", -1, a3);
        icu::CharString::append(v32, (a1 + 188), -1, a3);
        icu::CharString::append(v32, "/miscPatterns", -1, a3);
        if (*a3 <= 0)
        {
          v16 = U_ZERO_ERROR;
          ures_getAllItemsWithFallback(v8, v32[0], &v17, &v16);
          if (v16 < U_ILLEGAL_ARGUMENT_ERROR || v16 == U_MISSING_RESOURCE_ERROR)
          {
            if (!sub_19538B8C8(&v17))
            {
              ures_getAllItemsWithFallback(v8, "NumberElements/latn/miscPatterns", &v17, a3);
            }

            if (!sub_19538B8C8(&v17))
            {
              sub_1951D6EE0(v33, L"{0}–{1}");
              *(&v19 + 1) = &unk_1F0935D00;
              LOWORD(v20) = 2;
              icu::SimpleFormatter::applyPatternMinMaxArguments(&v19, v33, 0, 0x7FFFFFFF, 0, a3);
              icu::SimpleFormatter::operator=(v18, &v19);
              icu::SimpleFormatter::~SimpleFormatter(&v19);
              icu::UnicodeString::~UnicodeString(v9, v33);
            }
          }

          else
          {
            *a3 = v16;
          }
        }

        if (BYTE4(v32[1]))
        {
          free(v32[0]);
        }

        icu::ResourceSink::~ResourceSink(&v17);
      }

      if (v8)
      {
        ures_close(v8);
      }

      if (*a3 <= 0)
      {
        icu::SimpleFormatter::operator=(a1 + 1224, v30);
        if (*(a1 + 1208) == 1 && (*(a1 + 1216) - 1) <= 1)
        {
          v29 = 0;
          memset(v28, 0, sizeof(v28));
          v27 = 0u;
          memset(v26, 0, sizeof(v26));
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v19 = 0u;
          *(&v19 + 4) = *(a2 + 12);
          HIDWORD(v19) = *(a2 + 20);
          icu::MeasureUnit::MeasureUnit(&v20, a2 + 24);
          icu::MeasureUnit::MeasureUnit(&v21 + 8, a2 + 48);
          v10 = *(a2 + 104);
          v24 = *(a2 + 88);
          v25 = v10;
          v26[0] = *(a2 + 120);
          *(v26 + 13) = *(a2 + 133);
          v23 = *(a2 + 72);
          icu::number::impl::SymbolsWrapper::SymbolsWrapper((&v26[1] + 8), (a2 + 144));
          *(&v26[2] + 8) = *(a2 + 160);
          icu::number::Scale::Scale((&v26[3] + 8), (a2 + 176));
          icu::number::impl::StringProp::StringProp(&v27, a2 + 200);
          icu::number::impl::StringProp::StringProp(v28, a2 + 216);
          v28[1] = *(a2 + 232);
          *(&v28[1] + 14) = *(a2 + 246);
          icu::Locale::Locale((&v28[2] + 8), a2 + 256);
          LOBYTE(v26[3]) = 1;
          sub_195360F0C((a1 + 1296));
          sub_1953614AC(a1 + 1296, &v19, a3);
          icu::Locale::~Locale((&v28[2] + 8));
          icu::number::impl::StringProp::~StringProp(v28);
          icu::number::impl::StringProp::~StringProp(&v27);
          icu::number::Scale::~Scale((&v26[3] + 8));
          icu::number::impl::SymbolsWrapper::~SymbolsWrapper((&v26[1] + 8));
          icu::MeasureUnit::~MeasureUnit((&v21 + 8));
          icu::MeasureUnit::~MeasureUnit(&v20);
        }

        sub_19538F63C(a3, a2 + 984, &v19);
        if (*(a1 + 1908))
        {
          free(*(a1 + 1896));
        }

        v11 = SDWORD2(v19);
        *(a1 + 1904) = DWORD2(v19);
        v12 = BYTE12(v19);
        *(a1 + 1908) = BYTE12(v19);
        v13 = v19;
        if (v19 == &v20)
        {
          *(a1 + 1896) = a1 + 1912;
          memcpy((a1 + 1912), &v20, 12 * v11);
          *(a1 + 1952) = DWORD2(v22);
          if (v12)
          {
            free(v13);
          }
        }

        else
        {
          *(a1 + 1896) = v19;
          *&v19 = &v20;
          DWORD2(v19) = 3;
          BYTE12(v19) = 0;
          *(a1 + 1952) = DWORD2(v22);
        }
      }
    }

    icu::SimpleFormatter::~SimpleFormatter(v30);
  }

  else
  {
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  v14 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_19538A818(uint64_t result, _DWORD *a2, int a3, UErrorCode *a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v7 = result;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    *v34 = 0u;
    v35 = 0u;
    *v33 = 0u;
    memset(v32, 0, sizeof(v32));
    sub_195362FE4(v32);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *v14 = 0u;
    v15 = 0u;
    *v13 = 0u;
    memset(v12, 0, sizeof(v12));
    sub_195362FE4(v12);
    sub_195361D1C((v7 + 8), (a2 + 76), v32, a4);
    if (*(v7 + 1208))
    {
      v8 = (v7 + 8);
    }

    else
    {
      v8 = (v7 + 608);
    }

    sub_195361D1C(v8, (a2 + 94), v12, a4);
    if (*a4 > 0)
    {
      goto LABEL_12;
    }

    if (icu::number::impl::Modifier::semanticallyEquivalent(v34[0], v14[0]) && icu::number::impl::Modifier::semanticallyEquivalent(v33[1], v13[1]) && (icu::number::impl::Modifier::semanticallyEquivalent(v33[0], v13[0]) & 1) != 0)
    {
      if (a3)
      {
        v9 = 0;
        a2[112] = 0;
      }

      else if (icu::number::impl::DecimalQuantity::operator==((a2 + 76), (a2 + 94)))
      {
        a2[112] = 1;
        v9 = 16;
      }

      else
      {
        a2[112] = 2;
        v9 = 32;
      }

      v11 = v9 | *(v7 + 1216);
      if (v11 > 0x23u)
      {
        goto LABEL_24;
      }

      if (((1 << v11) & 0xF00080008) != 0)
      {
        sub_19538AAC8(v7, a2, v32, v12, a4);
        goto LABEL_12;
      }

      if (((1 << v11) & 0x10003) != 0)
      {
        sub_19538B4F8(v7, a2, v32, v12, a4);
        goto LABEL_12;
      }

      if (((1 << v11) & 0x60004) == 0)
      {
LABEL_24:
        abort();
      }

      sub_19538B2E8(v7, a2, v32, v12, a4);
    }

    else
    {
      sub_19538AAC8(v7, a2, v32, v12, a4);
      a2[112] = 2;
    }

LABEL_12:
    sub_195361148(v12);
    result = sub_195361148(v32);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19538AAC8(uint64_t a1, uint64_t a2, icu::number::impl::Modifier **a3, const icu::number::impl::Modifier **a4, UErrorCode *a5)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_52;
  }

  v10 = *(a1 + 1212);
  v11 = v10 > 3 || v10 == 1;
  if (v11 || !icu::number::impl::Modifier::semanticallyEquivalent(a3[24], a4[24]))
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    goto LABEL_21;
  }

  if (!icu::number::impl::Modifier::semanticallyEquivalent(a3[25], a4[25]))
  {
    goto LABEL_12;
  }

  v12 = a3[25];
  v13 = *(a1 + 1212);
  if (v13)
  {
    if (v13 != 2)
    {
LABEL_16:
      if (v13 == 3)
      {
        v14 = icu::number::impl::Modifier::semanticallyEquivalent(a3[26], a4[26]);
      }

      else
      {
        v14 = 0;
      }

      v15 = 1;
      goto LABEL_20;
    }

    if (((*(*v12 + 48))(a3[25], 39) & 1) == 0 && ((*(*v12 + 48))(v12, 40) & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v13 = *(a1 + 1212);
    goto LABEL_16;
  }

  if ((*(*v12 + 32))(a3[25]) > 1)
  {
    goto LABEL_15;
  }

LABEL_12:
  v14 = 0;
  v15 = 0;
LABEL_20:
  v16 = 1;
LABEL_21:
  *v49 = 0;
  v17 = icu::number::impl::SimpleModifier::formatTwoArgPattern(a1 + 1224, (a2 + 8), 0, &v49[1], v49, 0, a5);
  if (*a5 < 1)
  {
    v18 = v17;
    v47 = v15;
    v48 = v16;
    v20 = v49[0];
    v19 = v49[1];
    v21 = (v14 & 1) == 0 && (*(*a3[26] + 32))(a3[26]) > 0;
    v22 = v19 + v20;
    v23 = (v47 & 1) == 0 && (*(*a3[25] + 32))(a3[25]) > 0;
    v24 = v18 - v22;
    v25 = (v48 & 1) == 0 && (*(*a3[24] + 32))(a3[24]) > 0;
    v26 = v49[1];
    if (v21 || v23 || v25)
    {
      v27 = *(a2 + 16);
      if (!*(a2 + 8))
      {
        v27 = a2 + 16;
      }

      if (!icu::PatternProps::isWhiteSpace(*(v27 + 2 * (*(a2 + 136) + v49[1]))))
      {
        v24 += icu::FormattedStringBuilder::insertCodePoint((a2 + 8), v49[1], 0x20u, 0, a5);
      }

      if (*(a2 + 8))
      {
        v28 = *(a2 + 16);
      }

      else
      {
        v28 = a2 + 16;
      }

      isWhiteSpace = icu::PatternProps::isWhiteSpace(*(v28 + 2 * (v24 + v49[1] + *(a2 + 136) - 1)));
      v26 = v49[1];
      if (!isWhiteSpace)
      {
        v24 += icu::FormattedStringBuilder::insertCodePoint((a2 + 8), v49[1] + v24, 0x20u, 0, a5);
        v26 = v49[1];
      }
    }

    v30 = sub_1953616DC((a3 + 1), (a2 + 304), (a2 + 8), v26, a5);
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    icu::FormattedStringBuilder::FormattedStringBuilder(v50);
    sub_1953616DC((a4 + 1), (a2 + 376), v50, 0, a5);
    v31 = icu::FormattedStringBuilder::insert((a2 + 8), v30 + v24 + v49[1], v50, a5);
    if (v14)
    {
      v32 = sub_19538B5B8(a1, a3[26], a4[26]);
      v33 = (*(*v32 + 16))(v32, a2 + 8);
      v49[0] += v33;
      v34 = (*(*v32 + 24))(v32);
      v49[1] += v34;
      v35 = (*(*v32 + 24))(v32);
      v49[0] -= v35;
    }

    else
    {
      v30 += (*(*a3[26] + 16))(a3[26], a2 + 8, v49[1], (v49[1] + v30), a5);
      v31 += (*(*a4[26] + 16))(a4[26], a2 + 8, (v30 + v24 + v49[1]), (v49[0] + v31 + v30 + v24 + v49[1]), a5);
    }

    if (v47)
    {
      v36 = sub_19538B5B8(a1, a3[25], a4[25]);
      v37 = (*(*v36 + 16))(v36, a2 + 8);
      v49[0] += v37;
      v38 = (*(*v36 + 24))(v36);
      v49[1] += v38;
      v39 = (*(*v36 + 24))(v36);
      v49[0] -= v39;
    }

    else
    {
      v30 += (*(*a3[25] + 16))(a3[25], a2 + 8, v49[1], (v49[1] + v30), a5);
      v31 += (*(*a4[25] + 16))(a4[25], a2 + 8, (v30 + v24 + v49[1]), (v49[0] + v31 + v30 + v24 + v49[1]), a5);
    }

    if (v48)
    {
      v40 = sub_19538B5B8(a1, a3[24], a4[24]);
      v41 = (*(*v40 + 16))(v40, a2 + 8);
      v49[0] += v41;
      v42 = (*(*v40 + 24))(v40);
      v49[1] += v42;
      v43 = (*(*v40 + 24))(v40);
      v49[0] -= v43;
      v44 = v30 + v24;
    }

    else
    {
      v30 += (*(*a3[24] + 16))(a3[24], a2 + 8, v49[1], (v49[1] + v30), a5);
      v45 = a4[24];
      v44 = v30 + v24;
      v31 += (*(*v45 + 16))(v45, a2 + 8, (v30 + v24 + v49[1]), (v49[0] + v31 + v30 + v24 + v49[1]), a5);
    }

    icu::FormattedValueStringBuilderImpl::appendSpanInfo(a2, 4098, 0, v49[1], v30, a5);
    icu::FormattedValueStringBuilderImpl::appendSpanInfo(a2, 4098, 1, v44 + v49[1], v31, a5);
    icu::FormattedStringBuilder::~FormattedStringBuilder(v50);
  }

LABEL_52:
  v46 = *MEMORY[0x1E69E9840];
}

void sub_19538B2E8(uint64_t a1, uint64_t a2, icu::number::impl::Modifier **a3, const icu::number::impl::Modifier **a4, UErrorCode *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_4;
  }

  if (*(a1 + 1208) == 1)
  {
    v31 = 0u;
    v32 = 0u;
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
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
    memset(v13, 0, sizeof(v13));
    sub_195362FE4(v13);
    icu::number::impl::DecimalQuantity::resetExponent((a2 + 304));
    sub_195361D1C((a1 + 1296), (a2 + 304), v13, a5);
    v8 = sub_1953616DC(v13 + 8, (a2 + 304), (a2 + 8), 0, a5);
    v9 = (*(*v15 + 16))(v15, a2 + 8, 0, v8, a5) + v8;
    v10 = (*(**(&v14 + 1) + 16))(*(&v14 + 1), a2 + 8, 0, v9, a5);
    (*(*v14 + 16))(v14, a2 + 8, 0, (v10 + v9), a5);
    sub_195361148(v13);
LABEL_4:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  v12 = *MEMORY[0x1E69E9840];

  sub_19538AAC8(a1, a2, a3, a4, a5);
}

void sub_19538B4F8(uint64_t a1, uint64_t a2, icu::number::impl::Modifier **a3, const icu::number::impl::Modifier **a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    if (*(a1 + 1208) == 1)
    {
      v8 = sub_1953616DC((a3 + 1), (a2 + 304), (a2 + 8), 0, a5);

      sub_195361914(a3, (a2 + 8), 0, v8, a5);
    }

    else
    {

      sub_19538AAC8(a1, a2, a3, a4, a5);
    }
  }
}

uint64_t sub_19538B5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  icu::number::impl::Modifier::Parameters::Parameters(&v9);
  (*(*a2 + 56))(a2, &v9);
  if (v9)
  {
    v6 = HIDWORD(v10);
    (*(*a3 + 56))(a3, &v9);
    if (v9)
    {
      v7 = sub_19538FA30((a1 + 1896), v6, SHIDWORD(v10));
      return (*(*v9 + 16))(v9, v10, v7);
    }
  }

  return a2;
}

void sub_19538B6B4(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_19538B6EC(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, UErrorCode *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = 0;
  __s1 = a2;
  memset(v12, 0, sizeof(v12));
  result = (*(*a3 + 88))(v12, a3, a5);
  if (*a5 <= 0)
  {
    result = icu::ResourceTable::getKeyAndValue(v12, 0, &__s1, a3);
    if (result)
    {
      v9 = 1;
      do
      {
        if (!strcmp(__s1, "range") && !sub_19538B8C8(a1))
        {
          v16 = 0;
          v15 = (*(*a3 + 32))(a3, &v16, a5);
          icu::UnicodeString::UnicodeString(v17, 1, &v15);
          v19 = &unk_1F0935D00;
          v20 = 2;
          icu::SimpleFormatter::applyPatternMinMaxArguments(v18, v17, 0, 0x7FFFFFFF, 0, a5);
          icu::SimpleFormatter::operator=(*(a1 + 8), v18);
          icu::SimpleFormatter::~SimpleFormatter(v18);
          icu::UnicodeString::~UnicodeString(v10, v17);
        }

        result = icu::ResourceTable::getKeyAndValue(v12, v9++, &__s1, a3);
      }

      while (result);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_19538B8C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 16);
  if ((v2 & 0x11) != 0)
  {
    v3 = 0;
    if ((v2 & 0x8000) != 0)
    {
LABEL_9:
      if (!*(v1 + 20))
      {
        return 0;
      }

      return *v3 != 0;
    }
  }

  else if ((v2 & 2) != 0)
  {
    v3 = (v1 + 18);
    if ((v2 & 0x8000) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = *(v1 + 32);
    if ((v2 & 0x8000) != 0)
    {
      goto LABEL_9;
    }
  }

  if (v2 >> 5)
  {
    return *v3 != 0;
  }

  return 0;
}

icu::NumberingSystem *icu::NumberingSystem::NumberingSystem(icu::NumberingSystem *this)
{
  v7 = *MEMORY[0x1E69E9840];
  *this = &unk_1F0940B68;
  v2 = (this + 8);
  *(this + 1) = &unk_1F0935D00;
  *(this + 8) = 2;
  *(this + 18) = 10;
  *(this + 76) = 0;
  memset(v6, 0, sizeof(v6));
  v5 = L"0123456789";
  icu::UnicodeString::UnicodeString(v6, 1, &v5);
  icu::UnicodeString::copyFrom(v2, v6, 0);
  strcpy(this + 77, "latn");
  icu::UnicodeString::~UnicodeString(0x6E74616C, v6);
  v3 = *MEMORY[0x1E69E9840];
  return this;
}

icu::NumberingSystem *icu::NumberingSystem::NumberingSystem(icu::NumberingSystem *this, const icu::NumberingSystem *a2)
{
  *this = &unk_1F0940B68;
  *(this + 1) = &unk_1F0935D00;
  *(this + 8) = 2;
  icu::UnicodeString::operator=(this + 1, a2 + 1);
  v4 = *(a2 + 78);
  *(this + 9) = *(a2 + 9);
  *(this + 78) = v4;
  return this;
}

{
  *this = &unk_1F0940B68;
  *(this + 1) = &unk_1F0935D00;
  *(this + 8) = 2;
  icu::UnicodeString::operator=(this + 1, a2 + 1);
  v4 = *(a2 + 78);
  *(this + 9) = *(a2 + 9);
  *(this + 78) = v4;
  return this;
}

uint64_t icu::NumberingSystem::createInstance(icu::NumberingSystem *this, int a2, icu::UnicodeString *a3, const icu::UnicodeString *a4, UErrorCode *a5)
{
  if (*a4 <= 0)
  {
    if (this > 1 && (a2 || icu::UnicodeString::countChar32(a3, 0, 0x7FFFFFFF) == this))
    {
      operator new();
    }

    *a4 = 1;
  }

  return 0;
}

char *icu::NumberingSystem::setName(icu::NumberingSystem *this, const char *a2)
{
  result = this + 77;
  if (a2)
  {
    strncpy(result, a2, 8uLL);
    result = this + 85;
  }

  *result = 0;
  return result;
}

uint64_t icu::NumberingSystem::createInstance(icu::NumberingSystem *this, UErrorCode *a2, UErrorCode *a3)
{
  v40[13] = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
LABEL_55:
    result = 0;
    goto LABEL_56;
  }

  memset(v40, 0, 96);
  KeywordValue = icu::Locale::getKeywordValue(this, "numbers", v40, 96, a2);
  length[1] = KeywordValue;
  if (*a2 > 0 || *a2 == U_STRING_NOT_TERMINATED_WARNING)
  {
    length[1] = 0;
    *a2 = U_ZERO_ERROR;
    goto LABEL_17;
  }

  if (KeywordValue < 1)
  {
LABEL_17:
    strcpy(v40, "default");
    goto LABEL_18;
  }

  *(v40 + KeywordValue) = 0;
  if (v40[0] != 0x746C7561666564 && (LODWORD(v40[0]) != 1769234798 || *(v40 + 3) != 6649449))
  {
    v8 = v40[0] == 0x6F69746964617274 && LODWORD(v40[1]) == 7102830;
    if (!v8 && v40[0] != 0x65636E616E6966)
    {
      goto LABEL_54;
    }
  }

LABEL_18:
  length[0] = 0;
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
  memset(v27, 0, sizeof(v27));
  icu::Locale::Locale(v27, this);
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  ulocimp_getRegionForSupplementalData(*(this + 5), a2, 0, v25);
  if (DWORD2(v26))
  {
    v21 = U_ZERO_ERROR;
    memset(v24, 0, sizeof(v24));
    icu::LocaleBuilder::LocaleBuilder(v24);
    icu::StringPiece::StringPiece(v23, this + 8);
    icu::LocaleBuilder::setLanguage(v24, *&v23[0], SDWORD2(v23[0]));
    icu::StringPiece::StringPiece(v23, this + 20);
    icu::LocaleBuilder::setScript(v24, *&v23[0], SDWORD2(v23[0]));
    icu::StringPiece::StringPiece(v23, v25[0]);
    icu::LocaleBuilder::setRegion(v24, *&v23[0], SDWORD2(v23[0]));
    memset(v23, 0, sizeof(v23));
    icu::LocaleBuilder::build(v24, &v21, v23);
    if (v21 <= U_ZERO_ERROR)
    {
      icu::Locale::operator=(v27, v23);
    }

    icu::Locale::~Locale(v23);
    icu::LocaleBuilder::~LocaleBuilder(v24);
  }

  v9 = ures_open(0, *(&v28 + 1), length);
  v10 = ures_getByKey(v9, "NumberElements", 0, length);
  v11 = v10;
  if (length[0] == 7)
  {
    v12 = 0;
    goto LABEL_46;
  }

  *length = 0;
  StringByKeyWithFallback = ures_getStringByKeyWithFallback(v10, v40, &length[1], length);
  if (length[0] == 7)
  {
LABEL_45:
    v12 = 0;
LABEL_46:
    *a2 = U_MEMORY_ALLOCATION_ERROR;
    v20 = 1;
    if (!v11)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  while ((length[1] - 1) > 0x5E)
  {
    if (LODWORD(v40[0]) == 1769234798 && *(v40 + 3) == 6649449 || v40[0] == 0x65636E616E6966)
    {
      strcpy(v40, "default");
    }

    else
    {
      if (v40[0] != 0x6F69746964617274 || LODWORD(v40[1]) != 7102830)
      {
        v20 = 0;
        goto LABEL_59;
      }

      strcpy(v40, "native");
    }

    *length = 0;
    StringByKeyWithFallback = ures_getStringByKeyWithFallback(v11, v40, &length[1], length);
    if (length[0] == 7)
    {
      goto LABEL_45;
    }
  }

  u_UCharsToChars(StringByKeyWithFallback, v40, length[1]);
  *(v40 + length[1]) = 0;
  v20 = 1;
LABEL_59:
  v12 = 1;
  if (v11)
  {
LABEL_47:
    ures_close(v11);
  }

LABEL_48:
  if (v9)
  {
    ures_close(v9);
  }

  if (BYTE4(v25[1]))
  {
    free(v25[0]);
  }

  icu::Locale::~Locale(v27);
  if (!v12)
  {
    goto LABEL_55;
  }

  if ((v20 & 1) == 0)
  {
    *a2 = U_USING_FALLBACK_WARNING;
    operator new();
  }

LABEL_54:
  result = icu::NumberingSystem::createInstanceByName(v40, a2, v6);
LABEL_56:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::NumberingSystem::createInstanceByName(icu::NumberingSystem *this, UErrorCode *a2, UErrorCode *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = ures_openDirect(0, "numberingSystems", a2);
  v6 = ures_getByKey(v5, "numberingSystems", 0, a2);
  v7 = ures_getByKey(v6, this, 0, a2);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  v20 = &unk_1F0935D00;
  LOWORD(v21) = 2;
  v19 = 0;
  StringByKey = ures_getStringByKey(v7, "desc", &v19, a2);
  if (*a2 <= 0)
  {
    v18 = StringByKey;
    icu::UnicodeString::setTo(&v20, 1, &v18, v19);
  }

  else
  {
    icu::UnicodeString::setToBogus(&v20);
  }

  ures_getByKey(v7, "radix", v6, a2);
  Int = ures_getInt(v6, a2);
  ures_getByKey(v7, "algorithmic", v6, a2);
  v10 = ures_getInt(v6, a2);
  v12 = *a2;
  if (v12 >= 1)
  {
    if (v12 == 7)
    {
LABEL_6:
      v13 = 0;
      goto LABEL_12;
    }

    v13 = 0;
    v12 = 16;
    goto LABEL_11;
  }

  Instance = icu::NumberingSystem::createInstance(Int, v10 == 1, &v20, a2, v11);
  v13 = Instance;
  v12 = *a2;
  if (!Instance && v12 <= 0)
  {
    v13 = 0;
    v12 = 7;
LABEL_11:
    *a2 = v12;
    goto LABEL_12;
  }

  if (v12 <= 0)
  {
    v17 = (Instance + 77);
    if (this)
    {
      strncpy(v17, this, 8uLL);
      v17 = (v13 + 85);
    }

    *v17 = 0;
  }

  else if (Instance)
  {
    (*(*Instance + 8))(Instance);
    goto LABEL_6;
  }

LABEL_12:
  icu::UnicodeString::~UnicodeString(v12, &v20);
  if (v7)
  {
    ures_close(v7);
  }

  if (v6)
  {
    ures_close(v6);
  }

  if (v5)
  {
    ures_close(v5);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t icu::NumberingSystem::createInstance(icu::NumberingSystem *this, UErrorCode *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::NumberingSystem::createInstance(Default, this, v4);
}

void icu::NumberingSystem::~NumberingSystem(icu::NumberingSystem *this)
{
  *this = &unk_1F0940B68;
  icu::UnicodeString::~UnicodeString((this + 8));

  icu::UObject::~UObject(this);
}

{
  *this = &unk_1F0940B68;
  icu::UnicodeString::~UnicodeString((this + 8));

  icu::UObject::~UObject(this);
}

{
  *this = &unk_1F0940B68;
  icu::UnicodeString::~UnicodeString((this + 8));
  icu::UObject::~UObject(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19538C4DC()
{
  if (qword_1EAEC9EA8)
  {
    (*(*qword_1EAEC9EA8 + 8))(qword_1EAEC9EA8);
  }

  qword_1EAEC9EA8 = 0;
  atomic_store(0, &dword_1EAEC9EB0);
  return 1;
}

void icu::NumberingSystem::getAvailableNames(icu::NumberingSystem *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    if (atomic_load_explicit(&dword_1EAEC9EB0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9EB0))
    {
      sub_19538C53C();
    }

    if (dword_1EAEC9EB4 >= 1)
    {
      *this = dword_1EAEC9EB4;
    }
  }

  operator new();
}

uint64_t sub_19538C7E8(uint64_t a1, int *a2)
{
  v2 = qword_1EAEC9EA8;
  if (*a2 > 0 || qword_1EAEC9EA8 == 0)
  {
    return 0;
  }

  v4 = *(a1 + 116);
  if (v4 >= *(qword_1EAEC9EA8 + 8))
  {
    return 0;
  }

  *(a1 + 116) = v4 + 1;
  return icu::UVector::elementAt(v2, v4);
}

uint64_t sub_19538C830()
{
  if (qword_1EAEC9EA8)
  {
    return *(qword_1EAEC9EA8 + 8);
  }

  else
  {
    return 0;
  }
}

void sub_19538C850(icu::StringEnumeration *a1)
{
  icu::StringEnumeration::~StringEnumeration(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::OlsonTimeZone::constructEmpty(uint64_t this)
{
  *(this + 152) = 0;
  *(this + 76) = 0;
  *(this + 72) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 80) = 0;
  *(this + 104) = 1;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 112) = &unk_1954915B0;
  return this;
}

uint64_t icu::OlsonTimeZone::OlsonTimeZone(uint64_t a1, uint64_t a2, uint64_t a3, UChar **a4, int *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = icu::BasicTimeZone::BasicTimeZone(a1, a4);
  *v10 = &unk_1F0940C30;
  *(v10 + 16) = 0;
  *(v10 + 20) = 0;
  *(v10 + 21) = 0;
  *(v10 + 88) = 0;
  *(v10 + 23) = 0;
  *(v10 + 24) = 0;
  *(v10 + 100) = 0;
  *(v10 + 26) = 0;
  *(v10 + 27) = 0;
  atomic_store(0, v10 + 54);
  if (a3)
  {
    v11 = a2 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *a5;
  if (v11 && v12 <= 0)
  {
    *a5 = 1;
LABEL_48:
    *(a1 + 152) = 0;
    *(a1 + 76) = 0;
    *(a1 + 72) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = 0;
    *(a1 + 104) = 1;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 112) = &unk_1954915B0;
    goto LABEL_49;
  }

  if (v12 > 0)
  {
    goto LABEL_48;
  }

  v28 = 0;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  icu::StackUResourceBundle::StackUResourceBundle(v35);
  ures_getByKey(a3, "transPre32", v35, a5);
  *(a1 + 80) = ures_getIntVector(v35, &v28, a5);
  v13 = v28;
  *(a1 + 72) = v28 >> 1;
  if (*a5 == 2)
  {
    v14 = 0;
    *(a1 + 80) = 0;
    *(a1 + 72) = 0;
LABEL_14:
    *a5 = v14;
    goto LABEL_15;
  }

  if (*a5 <= 0 && (v13 & 0xFFFF8001) != 0)
  {
    v14 = 3;
    goto LABEL_14;
  }

LABEL_15:
  ures_getByKey(a3, "trans", v35, a5);
  *(a1 + 88) = ures_getIntVector(v35, &v28, a5);
  v15 = v28;
  *(a1 + 74) = v28;
  if (*a5 == 2)
  {
    v16 = 0;
    *(a1 + 88) = 0;
    *(a1 + 74) = 0;
LABEL_20:
    *a5 = v16;
    goto LABEL_21;
  }

  if (*a5 <= 0 && v15 >= 0x8000)
  {
    v16 = 3;
    goto LABEL_20;
  }

LABEL_21:
  ures_getByKey(a3, "transPost32", v35, a5);
  *(a1 + 96) = ures_getIntVector(v35, &v28, a5);
  v17 = v28;
  *(a1 + 76) = v28 >> 1;
  if (*a5 == 2)
  {
    v18 = 0;
    *(a1 + 96) = 0;
    *(a1 + 76) = 0;
LABEL_26:
    *a5 = v18;
    goto LABEL_27;
  }

  if (*a5 <= 0 && (v17 & 0xFFFF8001) != 0)
  {
    v18 = 3;
    goto LABEL_26;
  }

LABEL_27:
  ures_getByKey(a3, "typeOffsets", v35, a5);
  *(a1 + 112) = ures_getIntVector(v35, &v28, a5);
  v20 = v28;
  if (*a5 <= 0)
  {
    if (v28 - 2 <= 0x7FFC && (v28 & 1) == 0)
    {
      v21 = 0;
      goto LABEL_33;
    }

    *a5 = 3;
  }

  v21 = 1;
LABEL_33:
  *(a1 + 104) = v20 >> 1;
  *(a1 + 120) = 0;
  if ((*(a1 + 74) + *(a1 + 72) + *(a1 + 76)) < 1)
  {
    if (v21)
    {
      goto LABEL_47;
    }

    goto LABEL_40;
  }

  ures_getByKey(a3, "typeMap", v35, a5);
  *(a1 + 120) = ures_getBinary(v35, &v28, a5);
  if (*a5 == 2)
  {
LABEL_35:
    *a5 = 3;
    goto LABEL_47;
  }

  if (*a5 <= 0)
  {
    if (v28 != (*(a1 + 74) + *(a1 + 72) + *(a1 + 76)))
    {
      goto LABEL_35;
    }

LABEL_40:
    StringByKey = ures_getStringByKey(a3, "finalRule", &v28, a5);
    ures_getByKey(a3, "finalRaw", v35, a5);
    ures_getInt(v35, a5);
    ures_getByKey(a3, "finalYear", v35, a5);
    ures_getInt(v35, a5);
    if (*a5 <= 0)
    {
      memset(v34, 0, sizeof(v34));
      v27 = StringByKey;
      icu::UnicodeString::UnicodeString(v34, 1, &v27);
      Rule = icu::TimeZone::loadRule(a2, v34, 0, a5);
      ures_getIntVector(Rule, &v28, a5);
      if (*a5 <= 0 && v28 == 11)
      {
        v30 = 0u;
        v33 = 0;
        v32 = 0u;
        v31 = 0u;
        v29 = &unk_1F0935D00;
        LOWORD(v30) = 2;
        operator new();
      }

      *a5 = 3;
      ures_close(Rule);
      icu::UnicodeString::~UnicodeString(v24, v34);
    }

    else if (*a5 == 2)
    {
      *a5 = 0;
    }
  }

LABEL_47:
  *(a1 + 152) = icu::ZoneMeta::getCanonicalCLDRID(a4, a5, v19);
  icu::StackUResourceBundle::~StackUResourceBundle(v35);
  if (*a5 >= 1)
  {
    goto LABEL_48;
  }

LABEL_49:
  v25 = *MEMORY[0x1E69E9840];
  return a1;
}

void icu::OlsonTimeZone::clearTransitionRules(icu::OlsonTimeZone *this)
{
  *(this + 26) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 88) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 100) = 0;
  atomic_store(0, this + 54);
}

uint64_t icu::OlsonTimeZone::OlsonTimeZone(icu::OlsonTimeZone *this, UChar **a2)
{
  v3 = icu::BasicTimeZone::BasicTimeZone(this, a2);
  *v3 = &unk_1F0940C30;
  *(v3 + 16) = 0;
  *(v3 + 27) = 0;

  return icu::OlsonTimeZone::operator=(v3, a2);
}

{
  v3 = icu::BasicTimeZone::BasicTimeZone(this, a2);
  *v3 = &unk_1F0940C30;
  *(v3 + 16) = 0;
  *(v3 + 27) = 0;

  return icu::OlsonTimeZone::operator=(v3, a2);
}

uint64_t icu::OlsonTimeZone::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 74) = *(a2 + 74);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 112) = *(a2 + 112);
    v4 = *(a1 + 128);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a2 + 128);
    if (v5)
    {
      v5 = (*(*v5 + 96))(v5);
    }

    *(a1 + 128) = v5;
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 208) = 0;
    *(a1 + 176) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 200) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    atomic_store(0, (a1 + 216));
  }

  return a1;
}

void icu::OlsonTimeZone::~OlsonTimeZone(icu::OlsonTimeZone *this)
{
  *this = &unk_1F0940C30;
  icu::OlsonTimeZone::deleteTransitionRules(this);
  v2 = *(this + 16);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::BasicTimeZone::~BasicTimeZone(this);
}

{
  icu::OlsonTimeZone::~OlsonTimeZone(this);

  JUMPOUT(0x19A8B2600);
}

void icu::OlsonTimeZone::deleteTransitionRules(icu::OlsonTimeZone *this)
{
  v3 = this + 160;
  v2 = *(this + 20);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = *(this + 21);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 23);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 26);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 24);
  if (v7)
  {
    v8 = *(this + 100);
    if (v8 >= 1)
    {
      v9 = 0;
      do
      {
        v10 = *(*(this + 24) + 8 * v9);
        if (v10)
        {
          (*(*v10 + 8))(v10);
          LOWORD(v8) = *(this + 100);
        }

        ++v9;
      }

      while (v9 < v8);
      v7 = *(this + 24);
    }

    free(v7);
  }

  *(this + 26) = 0;
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 8) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 100) = 0;
  atomic_store(0, this + 54);
}

uint64_t icu::OlsonTimeZone::operator==(uint64_t a1, void *a2)
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

uint64_t icu::OlsonTimeZone::getOffset(icu::OlsonTimeZone *this, unsigned __int8 a2, int a3, unsigned int a4, int a5, unsigned __int8 a6, int a7, UErrorCode *a8)
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
    if (*a8 <= 0)
    {
      *a8 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    return 0;
  }
}

uint64_t icu::OlsonTimeZone::getOffset(icu::OlsonTimeZone *this, unsigned int a2, int a3, unsigned int a4, int a5, char a6, unsigned int a7, int a8, UErrorCode *a9)
{
  if (*a9 > 0)
  {
    return 0;
  }

  if (a2 > 1 || a4 > 0xB || a5 < 1 || (a8 - 32) < 0xFFFFFFFC || a7 > 0x5265BFF || (a6 - 8) < 0xF9u || a5 > a8)
  {
    result = 0;
    *a9 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  else
  {
    if (!a2)
    {
      a3 = -a3;
    }

    v12 = *(this + 16);
    if (v12 && a3 >= *(this + 36))
    {
      v14 = *(*v12 + 40);

      return v14();
    }

    else
    {
      v13 = sub_195328D5C(a3, a4, a5);
      *v15 = 0;
      icu::OlsonTimeZone::getHistoricalOffset(this, (86400000 * v13 + a7), 1, 3, 1, &v15[1], v15);
      return (v15[0] + v15[1]);
    }
  }

  return result;
}

void icu::OlsonTimeZone::getHistoricalOffset(icu::OlsonTimeZone *this, double a2, int a3, char a4, char a5, int *a6, int *a7)
{
  v10 = (*(this + 37) + *(this + 36) + *(this + 38));
  if (v10 < 1 || (v14 = uprv_floor(a2 / 1000.0), !a3) && v14 < icu::OlsonTimeZone::transitionTimeInSeconds(this, 0))
  {
    v15 = *(this + 14);
    v17 = *v15;
    v16 = v15 + 1;
    *a6 = 1000 * v17;
    goto LABEL_39;
  }

  v43 = a7;
  v18 = a4 & 3;
  v19 = a4 & 0xC;
  v20 = a5 & 3;
  v21 = v10 - 1;
  v22 = v10 - 2;
  while ((v21 + 1) >= 1)
  {
    v23 = icu::OlsonTimeZone::transitionTimeInSeconds(this, v21);
    if (!a3 || v14 < (v23 - 86400))
    {
      goto LABEL_34;
    }

    v24 = *(this + 14);
    v25 = *(this + 15);
    if (v21)
    {
      v26 = v24[(2 * *(v25 + v22)) | 1] + v24[2 * *(v25 + v22)];
      v27 = (2 * *(v25 + v22)) | 1;
    }

    else
    {
      v26 = v24[1] + *v24;
      v27 = 1;
    }

    v28 = v24[v27];
    v29 = *(v25 + v21);
    v30 = v24[(2 * v29) | 1];
    if (v30)
    {
      v31 = 0;
    }

    else
    {
      v31 = v28 != 0;
    }

    v32 = v30 + v24[2 * v29];
    if (v28)
    {
      v33 = 0;
    }

    else
    {
      v33 = v30 != 0;
    }

    if (v32 >= v26)
    {
      if (v18 != 1 || !v31)
      {
        v36 = v18 == 3 && v33;
        v37 = v18 == 1 && v33 || v18 == 3 && v31;
        if (v19 == 12)
        {
          v38 = v26;
        }

        else
        {
          v38 = v32;
        }

        if (!v37)
        {
          v32 = v38;
        }

        v35 = !v36;
        goto LABEL_31;
      }

      v32 = v26;
    }

    else if ((v20 != 1 || !v31) && (v20 != 3 || !v33))
    {
      v34 = v20 == 1 && v33 || v20 == 3 && v31;
      if ((a5 & 0xC) == 4)
      {
        v34 = 1;
      }

      v35 = v34 == 0;
LABEL_31:
      if (!v35)
      {
        v32 = v26;
      }
    }

    v23 += v32;
LABEL_34:
    --v22;
    --v21;
    if (v14 >= v23)
    {
      v39 = (v21 + 1);
      v40 = *(this + 14);
      v41 = *(this + 15);
      *a6 = 1000 * v40[2 * *(v41 + v39)];
      v42 = (2 * *(v41 + v39)) | 1;
      goto LABEL_38;
    }
  }

  v40 = *(this + 14);
  *a6 = 1000 * *v40;
  v42 = 1;
LABEL_38:
  v16 = &v40[v42];
  a7 = v43;
LABEL_39:
  *a7 = 1000 * *v16;
}

void icu::OlsonTimeZone::getOffset(icu::OlsonTimeZone *this, double a2, uint64_t a3, int *a4, int *a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    v6 = *(this + 16);
    if (v6 && *(this + 17) <= a2)
    {
      (*(*v6 + 48))(*(this + 16), a3, a4, a5);
    }

    else
    {
      icu::OlsonTimeZone::getHistoricalOffset(this, a2, a3, 4, 12, a4, a5);
    }
  }
}

void icu::OlsonTimeZone::getOffsetFromLocal(icu::OlsonTimeZone *this, uint64_t a2, uint64_t a3, int *a4, int *a5, int *a6, double a7)
{
  if (*a6 <= 0)
  {
    v8 = *(this + 16);
    if (v8 && *(this + 17) <= a7)
    {
      (*(*v8 + 160))(v8, a2, a3, a4, a5);
    }

    else
    {
      icu::OlsonTimeZone::getHistoricalOffset(this, a7, 1, a2, a3, a4, a5);
    }
  }
}

uint64_t icu::OlsonTimeZone::getRawOffset(icu::OlsonTimeZone *this)
{
  v5 = 0;
  v4 = 0;
  UTCtime = uprv_getUTCtime();
  (*(*this + 48))(this, 0, &v5, &v4, &v5 + 4, UTCtime);
  return v5;
}

unint64_t icu::OlsonTimeZone::transitionTimeInSeconds(icu::OlsonTimeZone *this, int a2)
{
  v2 = *(this + 36);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (v4 < 0 != v3)
  {
    v5 = (*(this + 10) + 8 * a2);
  }

  else
  {
    v6 = *(this + 37);
    v3 = __OFSUB__(v4, v6);
    v7 = v4 - v6;
    if (v7 < 0 != v3)
    {
      return *(*(this + 11) + 4 * v4);
    }

    v5 = (*(this + 12) + 8 * v7);
  }

  return v5[1] | (*v5 << 32);
}

uint64_t icu::OlsonTimeZone::useDaylightTime(icu::OlsonTimeZone *this)
{
  UTCtime = uprv_getUTCtime();
  v3 = *(this + 16);
  if (v3 && UTCtime >= *(this + 17))
  {
    v5 = *(*v3 + 72);

    return v5();
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v14 = 0;
    sub_195329158(&v17 + 4, &v17, &v16 + 1, &v16, &v15 + 1, &v15, &v14, UTCtime);
    if (v14 <= 0)
    {
      v6 = sub_195328D5C(SHIDWORD(v17), 0, 1);
      v7 = sub_195328D5C(HIDWORD(v17) + 1, 0, 1);
      if ((*(this + 37) + *(this + 36) + *(this + 38)) >= 1)
      {
        v8 = 0;
        v9 = (86400 * v6);
        v10 = (86400 * v7);
        v11 = (*(this + 37) + *(this + 36) + *(this + 38));
        do
        {
          v12 = icu::OlsonTimeZone::transitionTimeInSeconds(this, v8);
          if (v12 >= v10)
          {
            break;
          }

          if (v12 >= v9 && *(*(this + 14) + 8 * *(*(this + 15) + v8) + 4))
          {
            return 1;
          }

          if (v12 > v9)
          {
            v13 = v8 ? (2 * *(*(this + 15) + v8 - 1)) | 1 : 1;
            if (*(*(this + 14) + 4 * v13))
            {
              return 1;
            }
          }

          ++v8;
        }

        while (v11 != v8);
      }
    }

    return 0;
  }
}

uint64_t icu::OlsonTimeZone::getDSTSavings(icu::OlsonTimeZone *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    return (*(*v2 + 104))();
  }

  else
  {
    return icu::TimeZone::getDSTSavings(this);
  }
}

BOOL icu::OlsonTimeZone::inDaylightTime(icu::OlsonTimeZone *this, double a2, UErrorCode *a3)
{
  v5 = 0;
  v4 = 0;
  (*(*this + 48))(this, 0, &v5, &v4, a3, a2);
  return v4 != 0;
}

uint64_t icu::OlsonTimeZone::hasSameRules(char **this, char **lpsrc)
{
  if (this == lpsrc)
  {
    return 1;
  }

  v3 = **lpsrc;
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (this[15] == *(result + 120))
  {
    return 1;
  }

  v6 = this[16];
  v7 = *(v5 + 128);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    result = (*(*v6 + 24))(v6);
    if (!result)
    {
      return result;
    }

    if (this[16] && (*(this + 36) != *(v5 + 144) || *(this + 17) != *(v5 + 136)))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(this + 52);
  if (v8 != *(v5 + 104))
  {
    return 0;
  }

  v9 = *(this + 36);
  if (v9 != *(v5 + 72))
  {
    return 0;
  }

  v10 = *(this + 37);
  if (v10 != *(v5 + 74))
  {
    return 0;
  }

  v11 = *(this + 38);
  if (v11 != *(v5 + 76))
  {
    return 0;
  }

  v12 = *(this + 36);
  result = sub_19538DE5C(this[10], *(v5 + 80), 8 * v9);
  if (result)
  {
    result = sub_19538DE5C(this[11], *(v5 + 88), 4 * v10);
    if (result)
    {
      result = sub_19538DE5C(this[12], *(v5 + 96), 8 * v11);
      if (result)
      {
        result = sub_19538DE5C(this[14], *(v5 + 112), 8 * v8);
        if (result)
        {
          return sub_19538DE5C(this[15], *(v5 + 120), (v10 + v12 + v11));
        }
      }
    }
  }

  return result;
}

BOOL sub_19538DE5C(unint64_t a1, unint64_t a2, int a3)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  if ((a1 != 0) != (a2 != 0))
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  return memcmp(a1, a2, a3) == 0;
}

icu::OlsonTimeZone *icu::OlsonTimeZone::initTransitionRules(icu::OlsonTimeZone *this, UErrorCode *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v2 = this;
    icu::OlsonTimeZone::deleteTransitionRules(this);
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v14 = &unk_1F0935D00;
    LOWORD(v15) = 2;
    icu::UnicodeString::operator=(&v14, v2 + 1);
    memset(v13, 0, 64);
    v10 = "(";
    icu::UnicodeString::UnicodeString(v12, 1, &v10);
    icu::operator+(&v14, v12, v13);
    icu::UnicodeString::~UnicodeString(v3, v12);
    memset(v12, 0, sizeof(v12));
    v9 = "(";
    icu::UnicodeString::UnicodeString(&v11, 1, &v9);
    icu::operator+(&v14, &v11, v12);
    icu::UnicodeString::~UnicodeString(v4, &v11);
    v5 = *(v2 + 14);
    v6 = v5[1];
    v7 = (1000 * *v5);
    operator new();
  }

  v8 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::OlsonTimeZone::getNextTransition(icu::OlsonTimeZone *this, double a2, uint64_t a3, icu::TimeZoneTransition *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v34 = 0;
  sub_1951D10A4(this + 54, sub_19538DEDC, this, &v34);
  if (v34 > 0)
  {
    goto LABEL_2;
  }

  if (*(this + 16))
  {
    if (a3 && icu::TimeZoneTransition::getTime(*(this + 23)) == a2)
    {
      v11 = *(this + 23);
LABEL_27:
      icu::TimeZoneTransition::operator=(a4, v11);
      v8 = 1;
      goto LABEL_3;
    }

    if (icu::TimeZoneTransition::getTime(*(this + 23)) <= a2)
    {
      if ((*(**(this + 16) + 72))(*(this + 16)))
      {
        v8 = (*(**(this + 26) + 112))(*(this + 26), a3, a4, a2);
        goto LABEL_3;
      }

      goto LABEL_2;
    }
  }

  v12 = *(this + 24);
  if (!v12)
  {
    goto LABEL_2;
  }

  v13 = *(this + 38);
  v14 = (*(this + 37) + *(this + 36) + v13) - 1;
  v15 = *(this + 88);
  if (v15 > (*(this + 37) + *(this + 36) + v13 - 1))
  {
    v16 = v14;
LABEL_23:
    if (v14 != v16)
    {
      v11 = *(this + 21);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  LOWORD(v16) = *(this + 37) + *(this + 36) + v13 - 1;
  while (1)
  {
    v17 = icu::OlsonTimeZone::transitionTimeInSeconds(this, v16) * 1000.0;
    v18 = v17 != a2 || a3 != 0;
    if (v17 < a2 || !v18)
    {
      break;
    }

    v16 = (v16 - 1);
    if (v16 < v15)
    {
      goto LABEL_23;
    }
  }

  if (v14 != v16)
  {
    v20 = *(this + 15);
    v21 = v16 + 1;
    v22 = *(v12 + 8 * *(v20 + v21));
    v23 = *(v12 + 8 * *(v20 + v16));
    v24 = icu::OlsonTimeZone::transitionTimeInSeconds(this, v21) * 1000.0;
    v41 = 0u;
    v42 = 0u;
    v44 = 0;
    v43 = 0u;
    v39 = 0;
    v40 = &unk_1F0935D00;
    LOWORD(v41) = 2;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = &unk_1F0935D00;
    LOWORD(v36) = 2;
    icu::TimeZoneRule::getName(v23, &v40);
    icu::TimeZoneRule::getName(v22, &v35);
    if (v41)
    {
      if ((v36 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if ((v41 & 0x8000u) == 0)
      {
        v25 = v41 >> 5;
      }

      else
      {
        v25 = DWORD1(v41);
      }

      if ((v36 & 0x8000u) == 0)
      {
        v26 = v36 >> 5;
      }

      else
      {
        v26 = DWORD1(v36);
      }

      if ((v36 & 1) != 0 || v25 != v26)
      {
        goto LABEL_46;
      }

      v27 = (v36 & 2) != 0 ? (&v36 + 2) : v37;
      if (!icu::UnicodeString::doEquals(&v40, v27, v25))
      {
        goto LABEL_46;
      }
    }

    RawOffset = icu::TimeZoneRule::getRawOffset(v23);
    if (RawOffset == icu::TimeZoneRule::getRawOffset(v22))
    {
      DSTSavings = icu::TimeZoneRule::getDSTSavings(v23);
      if (DSTSavings == icu::TimeZoneRule::getDSTSavings(v22))
      {
        v8 = (*(*this + 112))(this, 0, a4, v24);
LABEL_47:
        icu::UnicodeString::~UnicodeString(v30, &v35);
        icu::UnicodeString::~UnicodeString(v33, &v40);
        goto LABEL_3;
      }
    }

LABEL_46:
    icu::TimeZoneTransition::setTime(a4, v24);
    v31 = (*(*v23 + 3))(v23);
    icu::TimeZoneTransition::adoptFrom(a4, v31);
    v32 = (*(*v22 + 3))(v22);
    icu::TimeZoneTransition::adoptTo(a4, v32);
    v8 = 1;
    goto LABEL_47;
  }

LABEL_26:
  v11 = *(this + 23);
  if (v11)
  {
    goto LABEL_27;
  }

LABEL_2:
  v8 = 0;
LABEL_3:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t icu::OlsonTimeZone::getPreviousTransition(icu::OlsonTimeZone *this, double a2, uint64_t a3, icu::TimeZoneTransition *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v30 = 0;
  sub_1951D10A4(this + 54, sub_19538DEDC, this, &v30);
  if (v30 > 0)
  {
    goto LABEL_2;
  }

  if (!*(this + 16))
  {
    goto LABEL_10;
  }

  if (!a3 || icu::TimeZoneTransition::getTime(*(this + 23)) != a2)
  {
    if (icu::TimeZoneTransition::getTime(*(this + 23)) < a2)
    {
      if ((*(**(this + 16) + 72))(*(this + 16)))
      {
        v8 = (*(**(this + 26) + 120))(*(this + 26), a3, a4, a2);
        goto LABEL_3;
      }

      goto LABEL_20;
    }

LABEL_10:
    v11 = *(this + 24);
    if (!v11)
    {
LABEL_2:
      v8 = 0;
      goto LABEL_3;
    }

    LOWORD(v12) = *(this + 37) + *(this + 36) + *(this + 38);
    v13 = *(this + 88);
    do
    {
      v12 = (v12 - 1);
      if (v12 < v13)
      {
        goto LABEL_2;
      }

      v14 = icu::OlsonTimeZone::transitionTimeInSeconds(this, v12) * 1000.0;
      v15 = v14 != a2 || a3 == 0;
    }

    while (v14 >= a2 && v15);
    if (v12 == v13)
    {
      v16 = *(this + 21);
      goto LABEL_21;
    }

    v17 = (*(this + 15) + v12);
    v18 = *(v11 + 8 * *v17);
    v19 = *(v11 + 8 * *(v17 - 1));
    v20 = icu::OlsonTimeZone::transitionTimeInSeconds(this, v12) * 1000.0;
    v37 = 0u;
    v38 = 0u;
    v40 = 0;
    v39 = 0u;
    v35 = 0;
    v36 = &unk_1F0935D00;
    LOWORD(v37) = 2;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = &unk_1F0935D00;
    LOWORD(v32) = 2;
    icu::TimeZoneRule::getName(v19, &v36);
    icu::TimeZoneRule::getName(v18, &v31);
    if (v37)
    {
      if ((v32 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if ((v37 & 0x8000u) == 0)
      {
        v21 = v37 >> 5;
      }

      else
      {
        v21 = DWORD1(v37);
      }

      if ((v32 & 0x8000u) == 0)
      {
        v22 = v32 >> 5;
      }

      else
      {
        v22 = DWORD1(v32);
      }

      if ((v32 & 1) != 0 || v21 != v22)
      {
        goto LABEL_40;
      }

      v23 = (v32 & 2) != 0 ? (&v32 + 2) : v33;
      if (!icu::UnicodeString::doEquals(&v36, v23, v21))
      {
        goto LABEL_40;
      }
    }

    RawOffset = icu::TimeZoneRule::getRawOffset(v19);
    if (RawOffset == icu::TimeZoneRule::getRawOffset(v18))
    {
      DSTSavings = icu::TimeZoneRule::getDSTSavings(v19);
      if (DSTSavings == icu::TimeZoneRule::getDSTSavings(v18))
      {
        v8 = (*(*this + 120))(this, 0, a4, v20);
LABEL_41:
        icu::UnicodeString::~UnicodeString(v26, &v31);
        icu::UnicodeString::~UnicodeString(v29, &v36);
        goto LABEL_3;
      }
    }

LABEL_40:
    icu::TimeZoneTransition::setTime(a4, v20);
    v27 = (*(*v19 + 3))(v19);
    icu::TimeZoneTransition::adoptFrom(a4, v27);
    v28 = (*(*v18 + 3))(v18);
    icu::TimeZoneTransition::adoptTo(a4, v28);
    v8 = 1;
    goto LABEL_41;
  }

LABEL_20:
  v16 = *(this + 23);
LABEL_21:
  icu::TimeZoneTransition::operator=(a4, v16);
  v8 = 1;
LABEL_3:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t icu::OlsonTimeZone::countTransitionRules(icu::OlsonTimeZone *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  sub_1951D10A4(this + 54, sub_19538DEDC, this, a2);
  if (*a2 > 0)
  {
    return 0;
  }

  v6 = *(this + 24);
  if (v6 && (v7 = *(this + 100), v7 >= 1))
  {
    LODWORD(v4) = 0;
    do
    {
      if (*v6++)
      {
        v4 = (v4 + 1);
      }

      else
      {
        v4 = v4;
      }

      --v7;
    }

    while (v7);
  }

  else
  {
    v4 = 0;
  }

  v9 = *(this + 16);
  if (v9)
  {
    if ((*(*v9 + 72))(v9))
    {
      return (v4 + 2);
    }

    else
    {
      return (v4 + 1);
    }
  }

  return v4;
}

void icu::OlsonTimeZone::getTimeZoneRules(icu::OlsonTimeZone *this, const icu::InitialTimeZoneRule **a2, const icu::TimeZoneRule **a3, int *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v22 = v5;
    v23 = v6;
    sub_1951D10A4(this + 54, sub_19538DEDC, this, a5);
    if (*a5 <= 0)
    {
      v12 = 0;
      *a2 = *(this + 20);
      v13 = *a4;
      if (*(this + 24) && v13 >= 1)
      {
        v14 = *(this + 100);
        if (v14 < 1)
        {
          v12 = 0;
        }

        else
        {
          v15 = 0;
          v12 = 0;
          v16 = 8 * v14;
          do
          {
            v17 = *(*(this + 24) + v15);
            if (v17)
            {
              a3[v12++] = v17;
              if (v12 >= v13)
              {
                break;
              }
            }

            v15 += 8;
          }

          while (v16 != v15);
          v13 = *a4;
        }
      }

      v18 = *(this + 26);
      if (v18)
      {
        v19 = v13 <= v12;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        v21 = 0;
        v20 = (v13 - v12);
        (*(*v18 + 144))(v18, &v20 + 4, &a3[v12], &v20, a5);
        if (*a5 > 0)
        {
          return;
        }

        v12 += v20;
      }

      *a4 = v12;
    }
  }
}

icu::Calendar *sub_19538EFFC(icu::Calendar *a1, char **a2, UErrorCode *a3)
{
  v6 = icu::TimeZone::forLocaleOrDefault(a2, a2);
  v7 = icu::Calendar::Calendar(a1, v6, a2, a3);
  *a1 = &unk_1F0940D00;
  icu::Calendar::getNow(v7);
  icu::Calendar::setTimeInMillis(a1, v8, a3);
  return a1;
}

void sub_19538F080(icu::Calendar *a1)
{
  icu::Calendar::~Calendar(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19538F0CC(uint64_t a1, int a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v7 = a3;
  if (a3 >= 0xC)
  {
    v4 = sub_195328C58(a3, 12, &v7) + a2;
    v3 = v7;
  }

  if ((25 * v4 + 11) % 33 <= 7)
  {
    v5 = &unk_195491760;
  }

  else
  {
    v5 = &unk_19549176C;
  }

  return v5[v3];
}

uint64_t sub_19538F164(uint64_t a1, int a2)
{
  if ((25 * a2 + 11) % 33 > 7)
  {
    return 365;
  }

  else
  {
    return 366;
  }
}

uint64_t sub_19538F1A4(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int *a5)
{
  v9 = a3;
  v10 = a2;
  if (*a5 > 0)
  {
    return 0;
  }

  v6 = a2;
  if (a3 >= 0xC)
  {
    v8 = sub_195328C58(a3, 12, &v9);
    if (uprv_add32_overflow(v6, v8, &v10))
    {
      result = 0;
      *a5 = 1;
      return result;
    }

    v6 = v10;
  }

  result = sub_195328C20(8 * v6 + 21, 33) + 365 * v6 + 1947954;
  if (v9)
  {
    result += word_195491778[v9];
  }

  return result;
}

uint64_t sub_19538F264(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (icu::Calendar::newerField(a1, 0x13u, 1u) == 19)
  {
    if (*(a1 + 216) > 0)
    {
      v4 = 88;
      return *(a1 + v4);
    }
  }

  else if (*(a1 + 144) >= 1)
  {
    v4 = 16;
    return *(a1 + v4);
  }

  return 1;
}

uint64_t sub_19538F2E0(uint64_t a1, int a2, _DWORD *a3)
{
  v5 = a2 - 1948320;
  result = sub_195328C3C(33 * v5 + 3, 12053);
  if ((result - 0x7FFFFFFF) > 0xFFFFFFFEFFFFFFFFLL)
  {
    v7 = result;
    v8 = result + 1;
    result = sub_195328C20(8 * (result + 1) + 21, 33);
    v9 = v5 - 365 * v7 - result;
    v10 = (v9 - 6) / 0x1Eu;
    if (v9 <= 215)
    {
      v10 = v9 / 31;
    }

    v11 = word_195491778[v10];
    *(a1 + 140) = 1;
    *(a1 + 112) = 1;
    *(a1 + 12) = 0;
    *(a1 + 16) = v8;
    *(a1 + 144) = 0x100000001;
    *(a1 + 113) = 257;
    *(a1 + 88) = v8;
    *(a1 + 216) = 1;
    *(a1 + 131) = 1;
    *(a1 + 20) = v10;
    *(a1 + 104) = v10;
    v12 = v9 + 1;
    *(a1 + 232) = 1;
    *(a1 + 135) = 1;
    *(a1 + 160) = 0x100000001;
    *(a1 + 117) = 257;
    *(a1 + 32) = v12 - v11;
    *(a1 + 36) = v12;
  }

  else
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_19538F400(_BYTE *a1, UErrorCode *a2)
{
  v3 = icu::Calendar::get(a1, 0x13u, a2);
  v5 = v3;
  if (*a2 > 0)
  {
    return 0;
  }

  if (!uprv_add32_overflow(v3, 622, &v5))
  {
    return v5;
  }

  result = 0;
  *a2 = U_ILLEGAL_ARGUMENT_ERROR;
  return result;
}

double sub_19538F47C()
{
  if (atomic_load_explicit(dword_1ED443008, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED443008))
  {
    sub_19538F4D0();
    icu::umtx_initImplPostInit(dword_1ED443008);
  }

  return *&qword_1ED441B38;
}

void sub_19538F4D0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = U_ZERO_ERROR;
  bzero(v6, 0x280uLL);
  icu::Locale::Locale(v0, v5, "@calendar=persian", 0, 0, 0);
  sub_19538EFFC(v6, v5, &v4);
  icu::Locale::~Locale(v5);
  if (v4 <= U_ZERO_ERROR)
  {
    icu::Calendar::getNow(v1);
    icu::Calendar::setTimeInMillis(v6, v2, &v4);
    icu::Calendar::add(v6, 1u, -80, &v4);
    qword_1ED441B38 = icu::Calendar::getTimeInMillis(v6, &v4);
    dword_1ED441B40 = icu::Calendar::get(v6, 1u, &v4);
  }

  icu::Calendar::~Calendar(v6);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19538F5C8()
{
  if (atomic_load_explicit(dword_1ED443008, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED443008))
  {
    sub_19538F4D0();
    icu::umtx_initImplPostInit(dword_1ED443008);
  }

  return dword_1ED441B40;
}

void sub_19538F63C(UErrorCode *a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = a3 + 16;
  *(a3 + 8) = 3;
  *(a3 + 56) = 0;
  v6 = ures_openDirect(0, "pluralRanges", a1);
  if (*a1 <= 0)
  {
    memset(&v12[1], 0, 48);
    v13 = 0;
    v12[0] = &v12[1] + 5;
    LODWORD(v12[1]) = 40;
    icu::CharString::append(v12, "locales/", -1, a1);
    icu::CharString::append(v12, (a2 + 8), -1, a1);
    if (*a1 <= 0)
    {
      v11 = 0;
      StringByKeyWithFallback = ures_getStringByKeyWithFallback(v6, v12[0], &v11 + 1, &v11);
      if (v11 <= 0)
      {
        v8 = StringByKeyWithFallback;
        LODWORD(v13) = 0;
        *v12[0] = 0;
        icu::CharString::append(v12, "rules/", -1, a1);
        icu::CharString::appendInvariantChars(v12, v8, SHIDWORD(v11), a1);
        if (*a1 <= 0)
        {
          v10[0] = &unk_1F0940EF0;
          v10[1] = a3;
          ures_getAllItemsWithFallback(v6, v12[0], v10, a1);
          icu::ResourceSink::~ResourceSink(v10);
        }
      }
    }

    if (BYTE4(v12[1]))
    {
      free(v12[0]);
    }
  }

  if (v6)
  {
    ures_close(v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void *sub_19538F80C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  v5 = (a3 + 16);
  *a3 = a3 + 16;
  *(a3 + 8) = 3;
  *(a3 + 56) = 0;
  v6 = *(a1 + 56);
  if (v6 < 4)
  {
LABEL_6:
    result = memcpy(v5, *a1, 12 * v6);
    *(a3 + 56) = *(a1 + 56);
    return result;
  }

  result = malloc_type_malloc(12 * v6, 0x10000403E1C8BA9uLL);
  if (result)
  {
    v5 = result;
    if (*(a3 + 12))
    {
      free(*a3);
    }

    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 12) = 1;
    LODWORD(v6) = *(a1 + 56);
    goto LABEL_6;
  }

  *a2 = 7;
  return result;
}

void sub_19538F988(uint64_t a1, int a2, int *a3)
{
  if (*a3 <= 0 && *(a1 + 8) < a2)
  {
    if (a2 >= 1 && (v6 = malloc_type_malloc(12 * a2, 0x10000403E1C8BA9uLL)) != 0)
    {
      v7 = v6;
      if (*(a1 + 12))
      {
        free(*a1);
      }

      *a1 = v7;
      *(a1 + 8) = a2;
      *(a1 + 12) = 1;
    }

    else
    {
      *a3 = 7;
    }
  }
}

uint64_t sub_19538FA30(unsigned int *a1, int a2, int a3)
{
  v3 = a1[14];
  if (v3 < 1)
  {
    return 5;
  }

  for (i = (*a1 + 8); *(i - 2) != a2 || *(i - 1) != a3; i += 3)
  {
    if (!--v3)
    {
      return 5;
    }
  }

  return *i;
}

void sub_19538FA74(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_19538FAAC(uint64_t a1, uint64_t a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  (*(*a3 + 80))(v25, a3, a5);
  if (*a5 <= 0)
  {
    sub_19538F988(*(a1 + 8), v26, a5);
    if (*a5 <= 0)
    {
      if (icu::ResourceArray::getValue(v25, 0, a3))
      {
        v9 = 1;
        while (1)
        {
          v23[0] = 0;
          v23[1] = 0;
          v24 = 0;
          (*(*a3 + 80))(v23, a3, a5);
          if (*a5 > 0)
          {
            break;
          }

          if (v24 != 3)
          {
            *a5 = 17;
            break;
          }

          icu::ResourceArray::getValue(v23, 0, a3);
          v28 = 0;
          v27 = (*(*a3 + 32))(a3, &v28, a5);
          icu::UnicodeString::UnicodeString(v29, 1, &v27);
          v11 = icu::StandardPlural::indexFromString(v29, a5, v10);
          icu::UnicodeString::~UnicodeString(v12, v29);
          if (*a5 <= 0)
          {
            icu::ResourceArray::getValue(v23, 1u, a3);
            v28 = 0;
            v27 = (*(*a3 + 32))(a3, &v28, a5);
            icu::UnicodeString::UnicodeString(v29, 1, &v27);
            v14 = icu::StandardPlural::indexFromString(v29, a5, v13);
            icu::UnicodeString::~UnicodeString(v15, v29);
            if (*a5 <= 0)
            {
              icu::ResourceArray::getValue(v23, 2u, a3);
              v28 = 0;
              v27 = (*(*a3 + 32))(a3, &v28, a5);
              icu::UnicodeString::UnicodeString(v29, 1, &v27);
              v17 = icu::StandardPlural::indexFromString(v29, a5, v16);
              icu::UnicodeString::~UnicodeString(v18, v29);
              if (*a5 <= 0)
              {
                v19 = *(a1 + 8);
                v20 = *(v19 + 56);
                v21 = (*v19 + 12 * v20);
                *v21 = v11;
                v21[1] = v14;
                v21[2] = v17;
                *(v19 + 56) = v20 + 1;
                if (icu::ResourceArray::getValue(v25, v9++, a3))
                {
                  continue;
                }
              }
            }
          }

          break;
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

icu::PluralFormat *icu::PluralFormat::PluralFormat(icu::PluralFormat *this, UErrorCode *a2)
{
  v4 = icu::Format::Format(this);
  *v4 = &unk_1F0940F38;
  Default = icu::Locale::getDefault(v4);
  icu::Locale::Locale((this + 328), Default);
  icu::MessagePattern::MessagePattern((this + 552), a2);
  *(this + 680) = 0u;
  *(this + 87) = &unk_1F0940F90;
  *(this + 88) = 0;
  icu::PluralFormat::init(this, 0, 0, a2);
  return this;
}

uint64_t icu::PluralFormat::init(uint64_t result, icu::PluralRules *this, int a3, icu::UnifiedCache *a4)
{
  if (*a4 <= 0)
  {
    v5 = result;
    if (this)
    {
      icu::PluralRules::clone(this);
    }

    *(result + 704) = icu::PluralRules::forLocale(result + 328, a3, a4);
    result = icu::NumberFormat::createInstance((v5 + 328), a4, v6);
    *(v5 + 680) = result;
  }

  return result;
}

icu::PluralFormat *icu::PluralFormat::PluralFormat(icu::PluralFormat *this, const icu::Locale *a2, UErrorCode *a3)
{
  v6 = icu::Format::Format(this);
  *v6 = &unk_1F0940F38;
  icu::Locale::Locale((v6 + 41), a2);
  icu::MessagePattern::MessagePattern((this + 552), a3);
  *(this + 680) = 0u;
  *(this + 87) = &unk_1F0940F90;
  *(this + 88) = 0;
  icu::PluralFormat::init(this, 0, 0, a3);
  return this;
}

icu::PluralFormat *icu::PluralFormat::PluralFormat(icu::PluralFormat *this, const icu::PluralRules *a2, UErrorCode *a3)
{
  v6 = icu::Format::Format(this);
  *v6 = &unk_1F0940F38;
  Default = icu::Locale::getDefault(v6);
  icu::Locale::Locale((this + 328), Default);
  icu::MessagePattern::MessagePattern((this + 552), a3);
  *(this + 680) = 0u;
  *(this + 87) = &unk_1F0940F90;
  *(this + 88) = 0;
  icu::PluralFormat::init(this, a2, 2, a3);
  return this;
}

icu::PluralFormat *icu::PluralFormat::PluralFormat(icu::PluralFormat *this, const icu::Locale *a2, const icu::PluralRules *a3, UErrorCode *a4)
{
  v8 = icu::Format::Format(this);
  *v8 = &unk_1F0940F38;
  icu::Locale::Locale((v8 + 41), a2);
  icu::MessagePattern::MessagePattern((this + 552), a4);
  *(this + 680) = 0u;
  *(this + 87) = &unk_1F0940F90;
  *(this + 88) = 0;
  icu::PluralFormat::init(this, a3, 2, a4);
  return this;
}

uint64_t icu::PluralFormat::PluralFormat(uint64_t a1, uint64_t a2, int a3, UErrorCode *a4)
{
  v8 = icu::Format::Format(a1);
  *v8 = &unk_1F0940F38;
  icu::Locale::Locale((v8 + 41), a2);
  icu::MessagePattern::MessagePattern((a1 + 552), a4);
  *(a1 + 680) = 0u;
  *(a1 + 696) = &unk_1F0940F90;
  *(a1 + 704) = 0;
  icu::PluralFormat::init(a1, 0, a3, a4);
  return a1;
}

icu::PluralFormat *icu::PluralFormat::PluralFormat(icu::PluralFormat *this, UChar **a2, UErrorCode *a3)
{
  v6 = icu::Format::Format(this);
  *v6 = &unk_1F0940F38;
  Default = icu::Locale::getDefault(v6);
  icu::Locale::Locale((this + 328), Default);
  icu::MessagePattern::MessagePattern((this + 552), a3);
  *(this + 680) = 0u;
  *(this + 87) = &unk_1F0940F90;
  *(this + 88) = 0;
  icu::PluralFormat::init(this, 0, 0, a3);
  icu::PluralFormat::applyPattern(this, a2, a3);
  return this;
}

void icu::PluralFormat::applyPattern(icu::PluralFormat *this, UChar **a2, UErrorCode *a3)
{
  icu::MessagePattern::parsePluralStyle((this + 552), a2, 0, a3);
  v5 = (this + 552);
  if (*a3 < 1)
  {
    PluralOffset = icu::MessagePattern::getPluralOffset(v5, 0);
  }

  else
  {
    icu::MessagePattern::clear(v5);
    PluralOffset = 0.0;
  }

  *(this + 86) = PluralOffset;
}

icu::PluralFormat *icu::PluralFormat::PluralFormat(icu::PluralFormat *this, const icu::Locale *a2, UChar **a3, UErrorCode *a4)
{
  v8 = icu::Format::Format(this);
  *v8 = &unk_1F0940F38;
  icu::Locale::Locale((v8 + 41), a2);
  icu::MessagePattern::MessagePattern((this + 552), a4);
  *(this + 680) = 0u;
  *(this + 87) = &unk_1F0940F90;
  *(this + 88) = 0;
  icu::PluralFormat::init(this, 0, 0, a4);
  icu::PluralFormat::applyPattern(this, a3, a4);
  return this;
}

icu::PluralFormat *icu::PluralFormat::PluralFormat(icu::PluralFormat *this, const icu::PluralRules *a2, UChar **a3, UErrorCode *a4)
{
  v8 = icu::Format::Format(this);
  *v8 = &unk_1F0940F38;
  Default = icu::Locale::getDefault(v8);
  icu::Locale::Locale((this + 328), Default);
  icu::MessagePattern::MessagePattern((this + 552), a4);
  *(this + 680) = 0u;
  *(this + 87) = &unk_1F0940F90;
  *(this + 88) = 0;
  icu::PluralFormat::init(this, a2, 2, a4);
  icu::PluralFormat::applyPattern(this, a3, a4);
  return this;
}

icu::PluralFormat *icu::PluralFormat::PluralFormat(icu::PluralFormat *this, const icu::Locale *a2, const icu::PluralRules *a3, UChar **a4, UErrorCode *a5)
{
  v10 = icu::Format::Format(this);
  *v10 = &unk_1F0940F38;
  icu::Locale::Locale((v10 + 41), a2);
  icu::MessagePattern::MessagePattern((this + 552), a5);
  *(this + 680) = 0u;
  *(this + 87) = &unk_1F0940F90;
  *(this + 88) = 0;
  icu::PluralFormat::init(this, a3, 2, a5);
  icu::PluralFormat::applyPattern(this, a4, a5);
  return this;
}

uint64_t icu::PluralFormat::PluralFormat(uint64_t a1, uint64_t a2, int a3, UChar **a4, UErrorCode *a5)
{
  v10 = icu::Format::Format(a1);
  *v10 = &unk_1F0940F38;
  icu::Locale::Locale((v10 + 41), a2);
  icu::MessagePattern::MessagePattern((a1 + 552), a5);
  *(a1 + 680) = 0u;
  *(a1 + 696) = &unk_1F0940F90;
  *(a1 + 704) = 0;
  icu::PluralFormat::init(a1, 0, a3, a5);
  icu::PluralFormat::applyPattern(a1, a4, a5);
  return a1;
}

icu::PluralFormat *icu::PluralFormat::PluralFormat(icu::PluralFormat *this, const icu::PluralFormat *a2)
{
  v4 = icu::Format::Format(this, a2);
  *v4 = &unk_1F0940F38;
  icu::Locale::Locale((v4 + 41), a2 + 328);
  icu::MessagePattern::MessagePattern((this + 552), (a2 + 552));
  *(this + 85) = 0;
  *(this + 86) = *(a2 + 86);
  *(this + 87) = &unk_1F0940F90;
  *(this + 88) = 0;
  icu::PluralFormat::copyObjects(this, a2, v5);
  return this;
}

uint64_t icu::PluralFormat::copyObjects(icu::PluralFormat *this, const icu::PluralFormat *a2, UErrorCode *a3)
{
  v12 = 0;
  v5 = *(this + 85);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 88);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 85);
  if (v7)
  {
    Instance = (*(*v7 + 32))(v7);
  }

  else
  {
    Instance = icu::NumberFormat::createInstance(this + 41, &v12, a3);
  }

  *(this + 85) = Instance;
  v10 = *(a2 + 88);
  if (v10)
  {
    icu::PluralRules::clone(v10);
  }

  result = icu::PluralRules::forLocale((this + 328), &v12, v9);
  *(this + 88) = result;
  return result;
}

void icu::PluralFormat::~PluralFormat(icu::PluralFormat *this)
{
  *this = &unk_1F0940F38;
  v2 = *(this + 85);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 87) = &unk_1F0940F90;
  v3 = *(this + 88);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::MessagePattern::~MessagePattern((this + 552));
  icu::Locale::~Locale((this + 328));

  icu::Format::~Format(this);
}

{
  icu::PluralFormat::~PluralFormat(this);

  JUMPOUT(0x19A8B2600);
}

void icu::PluralFormat::PluralSelectorAdapter::~PluralSelectorAdapter(icu::PluralFormat::PluralSelectorAdapter *this)
{
  *this = &unk_1F0940F90;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_1F0940F90;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_1F0940F90;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19A8B2600);
}

icu::UnicodeString *icu::PluralFormat::format(icu::PluralFormat *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return a3;
  }

  if (!icu::Formattable::isNumeric(a2))
  {
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return a3;
  }

  v11.n128_u64[0] = *(a2 + 1);

  return icu::PluralFormat::format(this, a2, v11, a3, a4, a5);
}

icu::UnicodeString *icu::PluralFormat::format(icu::PluralFormat *this, const icu::Formattable *a2, __n128 a3, icu::UnicodeString *a4, icu::FieldPosition *a5, UErrorCode *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
LABEL_37:
    v36 = *MEMORY[0x1E69E9840];
    return a4;
  }

  if (*(this + 162))
  {
    v10 = a3.n128_f64[0];
    v11 = a3.n128_f64[0] - *(this + 86);
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    memset(v43, 0, sizeof(v43));
    sub_1952FDFB0(v43);
    if (*(this + 86) == 0.0)
    {
      icu::Formattable::populateDecimalQuantity(a2, v44, a6);
    }

    else
    {
      icu::number::impl::DecimalQuantity::setToDouble(v44, v11);
    }

    v39 = 0u;
    v42 = 0;
    v41 = 0u;
    v40 = 0u;
    v38 = &unk_1F0935D00;
    LOWORD(v39) = 2;
    v15 = *(this + 85);
    {
      if (*(this + 86) == 0.0)
      {
        icu::Format::format(v15, a2, &v38, a6);
      }

      else
      {
        icu::Formattable::Formattable(v37, v11);
        icu::Format::format(v15, v37, &v38, a6);
        icu::Formattable::~Formattable(v22, v37);
      }

      goto LABEL_17;
    }

    v18 = icu::DecimalFormat::toNumberFormatter(v17, a6);
    v19 = *a6;
    if (v19 <= 0)
    {
      icu::number::LocalizedNumberFormatter::formatImpl(v18, v43, a6);
      v19 = *a6;
      if (v19 <= 0)
      {
        icu::FormattedStringBuilder::toUnicodeString((v43 + 8), v37);
        icu::UnicodeString::operator=(&v38, v37);
        icu::UnicodeString::~UnicodeString(v20, v37);
LABEL_17:
        SubMessage = icu::PluralFormat::findSubMessage((this + 552), 0, this + 696, v44, a6, v10, v21);
        v19 = *a6;
        if (v19 > 0)
        {
          goto LABEL_36;
        }

        LODWORD(v24) = SubMessage;
        v25 = *(this + 80);
        v26 = *(v25 + 16 * SubMessage + 4) + *(v25 + 16 * SubMessage + 8);
        while (1)
        {
          v24 = v24 + 1;
          v27 = v25 + 16 * v24;
          v28 = *v27;
          v29 = *(v27 + 4);
          if (*v27 <= 3)
          {
            if (v28 == 2)
            {
              if (*(this + 140) != 1)
              {
                goto LABEL_34;
              }

              v32 = (v29 - v26);
              v33 = (this + 568);
              v34 = a4;
              v35 = v26;
              goto LABEL_32;
            }

            if (v28 == 1)
            {
              a4 = icu::UnicodeString::doAppend(a4, (this + 568), v26, (v29 - v26));
              break;
            }
          }

          else
          {
            if (v28 == 4)
            {
              icu::UnicodeString::doAppend(a4, (this + 568), v26, (v29 - v26));
              if ((v39 & 0x8000u) == 0)
              {
                v32 = v39 >> 5;
              }

              else
              {
                v32 = DWORD1(v39);
              }

              v33 = &v38;
              v34 = a4;
              v35 = 0;
LABEL_32:
              icu::UnicodeString::doAppend(v34, v33, v35, v32);
              v26 = *(v27 + 4) + *(v27 + 8);
              goto LABEL_34;
            }

            if (v28 == 5)
            {
              icu::UnicodeString::doAppend(a4, (this + 568), v26, (v29 - v26));
              v31 = *(this + 80);
              if (*(v31 + 16 * v24 + 12) > v24)
              {
                LODWORD(v24) = *(v31 + 16 * v24 + 12);
              }

              v26 = *(v31 + 16 * v24 + 4) + *(v31 + 16 * v24 + 8);
              icu::MessageImpl::appendReducedApostrophes((this + 568), v29, v26, a4, v30);
            }
          }

LABEL_34:
          v25 = *(this + 80);
        }
      }
    }

LABEL_36:
    icu::UnicodeString::~UnicodeString(v19, &v38);
    icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v43);
    goto LABEL_37;
  }

  v12 = *(**(this + 85) + 40);
  v13 = *MEMORY[0x1E69E9840];

  return v12(a3);
}

void icu::PluralFormat::format(icu::PluralFormat *this@<X0>, UErrorCode *a2@<X2>, int a3@<W1>, icu::UnicodeString *a4@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v13[2] = 0;
  v13[0] = &unk_1F093AD90;
  v13[1] = 0xFFFFFFFFLL;
  v16 = 0u;
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  v15 = &unk_1F0935D00;
  LOWORD(v16) = 2;
  icu::Formattable::Formattable(v14, a3);
  v8.n128_f64[0] = a3;
  v9 = icu::PluralFormat::format(this, v14, v8, &v15, v13, a2);
  icu::UnicodeString::UnicodeString(a4, v9);
  icu::Formattable::~Formattable(v10, v14);
  icu::UnicodeString::~UnicodeString(v11, &v15);
  icu::FieldPosition::~FieldPosition(v13);
  v12 = *MEMORY[0x1E69E9840];
}

void icu::PluralFormat::format(icu::PluralFormat *this@<X0>, double a2@<D0>, UErrorCode *a3@<X1>, icu::UnicodeString *a4@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v13[2] = 0;
  v13[0] = &unk_1F093AD90;
  v13[1] = 0xFFFFFFFFLL;
  v16 = 0u;
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  v15 = &unk_1F0935D00;
  LOWORD(v16) = 2;
  icu::Formattable::Formattable(v14, a2);
  v8.n128_f64[0] = a2;
  v9 = icu::PluralFormat::format(this, v14, v8, &v15, v13, a3);
  icu::UnicodeString::UnicodeString(a4, v9);
  icu::Formattable::~Formattable(v10, v14);
  icu::UnicodeString::~UnicodeString(v11, &v15);
  icu::FieldPosition::~FieldPosition(v13);
  v12 = *MEMORY[0x1E69E9840];
}

icu::UnicodeString *icu::PluralFormat::format(icu::PluralFormat *this, int a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  icu::Formattable::Formattable(v15, a2);
  v10.n128_f64[0] = a2;
  v11 = icu::PluralFormat::format(this, v15, v10, a3, a4, a5);
  icu::Formattable::~Formattable(v12, v15);
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

icu::UnicodeString *icu::PluralFormat::format(icu::PluralFormat *this, double a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  icu::Formattable::Formattable(v15, a2);
  v10.n128_f64[0] = a2;
  v11 = icu::PluralFormat::format(this, v15, v10, a3, a4, a5);
  icu::Formattable::~Formattable(v12, v15);
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t icu::PluralFormat::findSubMessage(icu::PluralFormat *this, const icu::MessagePattern *a2, uint64_t a3, const icu::PluralFormat::PluralSelector *a4, int *a5, double a6, UErrorCode *a7)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v12 = a2;
    v14 = *(this + 24);
    v15 = (*(this + 11) + 16 * a2);
    NumericValue = 0.0;
    if ((*v15 & 0xFFFFFFFE) == 0xC)
    {
      NumericValue = icu::MessagePattern::getNumericValue(this, v15);
      ++v12;
    }

    v45 = 0u;
    v48 = 0;
    v47 = 0u;
    v46 = 0u;
    v44 = &unk_1F0935D00;
    LOWORD(v45) = 2;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = L"other";
    icu::UnicodeString::UnicodeString(&v40, 0, &v38);
    v17 = 0;
    v7 = 0;
    v18 = a6 - NumericValue;
    v19 = *(this + 11);
    while (1)
    {
      v20 = &v19[16 * v12];
      if (*v20 == 6)
      {
LABEL_51:
        icu::UnicodeString::~UnicodeString(v19, &v40);
        icu::UnicodeString::~UnicodeString(v35, &v44);
        goto LABEL_52;
      }

      v21 = v12 + 1;
      v22 = &v19[16 * v21];
      if ((*v22 & 0xFFFFFFFE) == 0xC)
      {
        v23 = (v12 + 2);
        if (icu::MessagePattern::getNumericValue(this, v22) == a6)
        {
          v7 = v23;
          goto LABEL_51;
        }

        v21 = v23;
      }

      else
      {
        LODWORD(v23) = v12 + 1;
        if (v17)
        {
          goto LABEL_11;
        }

        if (sub_195346AE8(this, v20, &v40))
        {
          if (v7)
          {
            v17 = 0;
          }

          else
          {
            if (BYTE8(v40))
            {
              v33 = (v45 & 1) == 0;
            }

            else
            {
              if ((v45 & 0x8000u) == 0)
              {
                v30 = v45 >> 5;
              }

              else
              {
                v30 = DWORD1(v45);
              }

              if ((SWORD4(v40) & 0x8000u) == 0)
              {
                v31 = WORD4(v40) >> 5;
              }

              else
              {
                v31 = HIDWORD(v40);
              }

              if ((BYTE8(v40) & 2) != 0)
              {
                v32 = &v40 | 0xA;
              }

              else
              {
                v32 = *(&v41 + 1);
              }

              v33 = icu::UnicodeString::doCompare(&v44, 0, v30, v32, v31 & (v31 >> 31), v31 & ~(v31 >> 31));
            }

            v17 = v33 == 0;
            v7 = v21;
          }

          goto LABEL_12;
        }

        if (v45 <= 0x1Fu && ((*(*a3 + 16))(v39, a3, a4, a5, v18), icu::UnicodeString::operator=(&v44, v39), icu::UnicodeString::~UnicodeString(v25, v39), v7) && ((BYTE8(v40) & 1) != 0 ? (v29 = (v45 & 1) == 0) : ((v45 & 0x8000u) == 0 ? (v26 = v45 >> 5) : (v26 = DWORD1(v45)), (SWORD4(v40) & 0x8000u) == 0 ? (v27 = WORD4(v40) >> 5) : (v27 = HIDWORD(v40)), (BYTE8(v40) & 2) != 0 ? (v28 = &v40 | 0xA) : (v28 = *(&v41 + 1)), v29 = icu::UnicodeString::doCompare(&v44, 0, v26, v28, v27 & (v27 >> 31), v27 & ~(v27 >> 31))), !v29))
        {
LABEL_11:
          v17 = 1;
        }

        else
        {
          v34 = sub_195346AE8(this, v20, &v44);
          v17 = v34;
          if (v34)
          {
            v7 = v21;
          }

          else
          {
            v7 = v7;
          }
        }
      }

LABEL_12:
      v19 = *(this + 11);
      v24 = *&v19[16 * v21 + 12];
      if (v24 <= v23)
      {
        v24 = v23;
      }

      v12 = v24 + 1;
      if (v24 + 1 >= v14)
      {
        goto LABEL_51;
      }
    }
  }

  v7 = 0;
LABEL_52:
  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

icu::UnicodeString *icu::PluralFormat::toPattern(icu::PluralFormat *this, icu::UnicodeString *a2)
{
  if (*(this + 162))
  {
    v3 = *(this + 288);
    v4 = v3;
    v5 = v3 >> 5;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *(this + 145);
    }

    icu::UnicodeString::doAppend(a2, (this + 568), 0, v6);
  }

  else
  {
    icu::UnicodeString::setToBogus(a2);
  }

  return a2;
}

void *icu::PluralFormat::setLocale(void *this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    icu::Locale::operator=((this + 41), a2);
    icu::MessagePattern::clear((v5 + 69));
    v6 = v5[85];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v5[85] = 0;
    v5[86] = 0;
    v7 = v5[88];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v5[88] = 0;

    return icu::PluralFormat::init(v5, 0, 0, a3);
  }

  return this;
}

uint64_t icu::PluralFormat::PluralSelectorAdapter::reset(icu::PluralFormat::PluralSelectorAdapter *this)
{
  result = *(this + 1);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 1) = 0;
  return result;
}

uint64_t icu::PluralFormat::setNumberFormat(uint64_t this, const icu::NumberFormat *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    this = (*(*a2 + 32))(a2);
    if (this)
    {
      v5 = this;
      this = *(v4 + 680);
      if (this)
      {
        this = (*(*this + 8))(this);
      }

      *(v4 + 680) = v5;
    }

    else
    {
      *a3 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  return this;
}

const icu::PluralFormat *icu::PluralFormat::operator=(const icu::PluralFormat *a1, const icu::PluralFormat *a2)
{
  if (a1 != a2)
  {
    icu::Locale::operator=((a1 + 328), a2 + 328);
    icu::MessagePattern::operator=(a1 + 552, a2 + 552);
    *(a1 + 86) = *(a2 + 86);
    icu::PluralFormat::copyObjects(a1, a2, v4);
  }

  return a1;
}

uint64_t icu::PluralFormat::operator==(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = icu::Format::operator==(a1, a2);
  if (result)
  {
    result = icu::Locale::operator==((a1 + 41), (a2 + 41));
    if (result)
    {
      result = icu::MessagePattern::operator==((a1 + 69), (a2 + 69));
      if (result)
      {
        v5 = a1[85];
        if ((v5 == 0) == (a2[85] != 0))
        {
          return 0;
        }

        else if (!v5 || (result = (*(*v5 + 24))(v5), result))
        {
          v6 = a1[88];
          v7 = a2[88];
          result = (v6 == 0) == (v7 == 0);
          if (v6)
          {
            if (v7)
            {
              v8 = *(*v6 + 24);
              v9 = a1[88];

              return v8(v9);
            }
          }
        }
      }
    }
  }

  return result;
}

_DWORD *icu::PluralFormat::parseType(_DWORD *result, uint64_t a2, uint64_t a3, icu::Formattable *a4, uint64_t a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = result[162];
  if (!v6)
  {
    *(a5 + 12) = -1;
    goto LABEL_70;
  }

  v7 = &v46;
  v8 = *(a5 + 12);
  v52 = 0u;
  v55 = 0;
  v54 = 0u;
  v53 = 0u;
  v51 = &unk_1F0935D00;
  LOWORD(v52) = 2;
  v47 = 0u;
  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  v46 = &unk_1F0935D00;
  LOWORD(v47) = 2;
  if (v6 < 1)
  {
    goto LABEL_68;
  }

  v10 = result;
  LODWORD(v11) = 0;
  v39 = v8;
  v12 = v8 & ~(v8 >> 31);
  v13 = -1;
  do
  {
    v7 = v11;
    v14 = 16 * v11;
    v11 = v11 + 1;
    v15 = *(v10 + 80);
    if (*(v15 + v14) != 11)
    {
      continue;
    }

    v16 = v15 + 16 * v11;
    if (*v16)
    {
      LODWORD(v11) = v7 + 2;
      continue;
    }

    LODWORD(v11) = v7 + 3;
    v17 = (v15 + 16 * (v7 + 2));
    v7 = *v17;
    if (v7 == 1)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v18 = *(v16 + 4) + *(v16 + 8);
      icu::UnicodeString::tempSubString((v10 + 142), v18, v17[1] - v18, &v42);
      v19 = *(a2 + 8);
      if (a3)
      {
        if ((v19 & 0x8000) != 0)
        {
          v20 = *(a2 + 12);
          v21 = BYTE8(v42);
          if ((SWORD4(v42) & 0x8000u) == 0)
          {
            v22 = WORD4(v42) >> 5;
          }

          else
          {
            v22 = HIDWORD(v42);
          }

          if (v20 >= v12)
          {
            v23 = v12;
          }

          else
          {
            v23 = *(a2 + 12);
          }

          if (BYTE8(v42))
          {
            goto LABEL_39;
          }
        }

        else
        {
          v20 = v19 >> 5;
          v21 = BYTE8(v42);
          if ((SWORD4(v42) & 0x8000u) == 0)
          {
            v22 = WORD4(v42) >> 5;
          }

          else
          {
            v22 = HIDWORD(v42);
          }

          if (v39 <= (v19 >> 5))
          {
            v23 = v12;
          }

          else
          {
            v23 = v19 >> 5;
          }

          if (BYTE8(v42))
          {
LABEL_39:
            v41[0] = -1;
            v30 = sub_19534FD08(a3, a2, &v42, v12, v41);
LABEL_52:
            v29 = v30;
            goto LABEL_53;
          }
        }

        if (v22 >= 1)
        {
          v28 = (v21 & 2) != 0 ? (&v42 + 10) : *(&v43 + 1);
          v29 = icu::UnicodeString::indexOf(a2, v28, 0, v22, v23, v20 - v23);
          if ((v29 & 0x80000000) == 0)
          {
LABEL_53:
            if ((v29 & 0x80000000) == 0 && v29 >= v13)
            {
              LODWORD(v24) = WORD4(v42) >> 5;
              if ((SWORD4(v42) & 0x8000u) == 0)
              {
                v24 = v24;
              }

              else
              {
                v24 = HIDWORD(v42);
              }

              v32 = v47 >> 5;
              if ((v47 & 0x8000u) != 0)
              {
                v32 = DWORD1(v47);
              }

              if (v24 > v32)
              {
                icu::UnicodeString::operator=(&v46, &v42);
                v33 = *(v16 + 4) + *(v16 + 8);
                icu::UnicodeString::tempSubString((v10 + 142), v33, v17[1] - v33, v41);
                icu::UnicodeString::operator=(&v51, v41);
                icu::UnicodeString::~UnicodeString(v34, v41);
                v13 = v29;
              }
            }

            goto LABEL_62;
          }
        }

        goto LABEL_39;
      }

      if ((v19 & 0x8000) != 0)
      {
        v24 = *(a2 + 12);
        v25 = BYTE8(v42);
        if ((SWORD4(v42) & 0x8000u) == 0)
        {
          v26 = WORD4(v42) >> 5;
        }

        else
        {
          v26 = HIDWORD(v42);
        }

        if (v24 >= v12)
        {
          v27 = v12;
        }

        else
        {
          v27 = *(a2 + 12);
        }

        if (BYTE8(v42))
        {
          goto LABEL_62;
        }
      }

      else
      {
        v24 = v19 >> 5;
        v25 = BYTE8(v42);
        if ((SWORD4(v42) & 0x8000u) == 0)
        {
          v26 = WORD4(v42) >> 5;
        }

        else
        {
          v26 = HIDWORD(v42);
        }

        if (v39 <= (v19 >> 5))
        {
          v27 = v12;
        }

        else
        {
          v27 = v19 >> 5;
        }

        if (BYTE8(v42))
        {
          goto LABEL_62;
        }
      }

      if (v26 >= 1)
      {
        if ((v25 & 2) != 0)
        {
          v31 = &v42 + 10;
        }

        else
        {
          v31 = *(&v43 + 1);
        }

        v30 = icu::UnicodeString::indexOf(a2, v31, 0, v26, v27, v24 - v27);
        goto LABEL_52;
      }

LABEL_62:
      icu::UnicodeString::~UnicodeString(v24, &v42);
    }
  }

  while (v11 < v6);
  if ((v13 & 0x80000000) == 0)
  {
    v35 = v47 >> 5;
    if ((v47 & 0x8000u) != 0)
    {
      v35 = DWORD1(v47);
    }

    *(a5 + 12) = v13;
    *(a5 + 16) = v35 + v13;
    icu::Formattable::setString(a4, &v51);
  }

LABEL_68:
  *(a5 + 12) = -1;
  icu::UnicodeString::~UnicodeString(v7, &v46);
  result = icu::UnicodeString::~UnicodeString(v36, &v51);
LABEL_70:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::PluralRules::PluralRules(uint64_t this, UErrorCode *a2)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F0941028;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F0941028;
  *(this + 24) = 0;
  return this;
}

uint64_t icu::PluralRules::PluralRules(uint64_t this, uint64_t a2)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F0941028;
  *(this + 24) = 0;
  return icu::PluralRules::operator=(this, a2);
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F0941028;
  *(this + 24) = 0;
  return icu::PluralRules::operator=(this, a2);
}

uint64_t icu::PluralRules::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    *(a1 + 8) = 0;
    v5 = *(a1 + 16);
    if (v5)
    {
      if (*(v5 + 12))
      {
        free(*v5);
      }

      MEMORY[0x19A8B2600](v5, 0x1020C40B16F7C2DLL);
    }

    v6 = *(a2 + 24);
    *(a1 + 24) = v6;
    *(a1 + 16) = 0;
    if (v6 <= 0)
    {
      if (*(a2 + 8))
      {
        operator new();
      }

      v8 = *(a2 + 16);
      if (v8)
      {
        sub_19538F80C(v8, (a1 + 24), &v9);
        sub_19538F8E8();
      }
    }
  }

  return a1;
}

void icu::PluralRules::~PluralRules(icu::PluralRules *this)
{
  *this = &unk_1F0941028;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    if (*(v3 + 12))
    {
      free(*v3);
    }

    MEMORY[0x19A8B2600](v3, 0x1020C40B16F7C2DLL);
  }

  icu::UObject::~UObject(this);
}

{
  icu::PluralRules::~PluralRules(this);

  JUMPOUT(0x19A8B2600);
}

void icu::SharedPluralRules::~SharedPluralRules(icu::SharedPluralRules *this)
{
  *this = &unk_1F0941058;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::SharedObject::~SharedObject(this);
}

{
  icu::SharedPluralRules::~SharedPluralRules(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::PluralRules::getAvailableLocales(icu::PluralRules *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::PluralRules::createRules(icu::PluralRules *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v8 = 2;
    v11 = 0u;
    v10 = 0u;
    v9 = 0u;
    v6 = 0u;
    v5 = &unk_1F09410E0;
    v7 = &unk_1F0935D00;
    v12 = 0;
    v13 = 0u;
    v14 = -1;
    operator new();
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1953924F8(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 > 0)
  {
    return result;
  }

  v42 = v7;
  v43 = v6;
  v44 = v4;
  v45 = v5;
  v9 = result;
  *(result + 8) = a2;
  while (2)
  {
    v10 = *(v9 + 8);
    if (*(v10 + 8) < 0)
    {
      v11 = *(v10 + 12);
    }

    else
    {
      v11 = *(v10 + 8) >> 5;
    }

    if (*(v9 + 16) >= v11)
    {
      return result;
    }

    result = sub_195394AB8(v9, a4);
    if (*a4 > 0)
    {
      return result;
    }

    result = sub_195394E34(v9, a4);
    if (*a4 > 0)
    {
      return result;
    }

    v12 = *(v9 + 88);
    switch(v12)
    {
      case 1:
        v25 = *(v9 + 96);
        if (*(v25 + 8) == 1 && *(v25 + 12) == -1)
        {
          v41 = 0;
          result = icu::ICU_Utility::parseNumber((v9 + 24), &v41, 0xA);
          if (result == -1)
          {
            goto LABEL_92;
          }

          *(*(v9 + 96) + 12) = result;
          goto LABEL_86;
        }

        v26 = *(v25 + 24);
        if (!v26)
        {
          v41 = 0;
          result = icu::ICU_Utility::parseNumber((v9 + 24), &v41, 0xA);
          if (result == -1)
          {
            goto LABEL_92;
          }

          *(*(v9 + 96) + 16) = result;
          goto LABEL_86;
        }

        v27 = *(v9 + 112);
        if ((v27 & 0x80000000) == 0 && *(v26 + 8) > v27 && *(*(v26 + 24) + 4 * v27) == -1)
        {
          v41 = 0;
          result = icu::ICU_Utility::parseNumber((v9 + 24), &v41, 0xA);
          if (result == -1)
          {
            goto LABEL_92;
          }

          v40 = result;
          icu::UVector32::setElementAt(*(*(v9 + 96) + 24), result, *(v9 + 112));
          result = icu::UVector32::setElementAt(*(*(v9 + 96) + 24), v40, *(v9 + 116));
LABEL_86:
          v39 = *a4;
          *(v9 + 92) = *(v9 + 88);
          if (v39 >= 1)
          {
            return result;
          }

          continue;
        }

        v41 = 0;
        result = icu::ICU_Utility::parseNumber((v9 + 24), &v41, 0xA);
        if (result != -1)
        {
          result = icu::UVector32::setElementAt(*(*(v9 + 96) + 24), result, *(v9 + 116));
          v28 = *(*(v9 + 96) + 24);
          v29 = *(v9 + 112);
          if ((v29 & 0x80000000) != 0 || *(v28 + 8) <= v29)
          {
            v30 = 0;
          }

          else
          {
            v30 = *(*(v28 + 24) + 4 * v29);
          }

          v37 = *(v9 + 116);
          if ((v37 & 0x80000000) != 0 || *(v28 + 8) <= v37)
          {
            v38 = 0;
          }

          else
          {
            v38 = *(*(v28 + 24) + 4 * v37);
          }

          if (v30 <= v38)
          {
            goto LABEL_86;
          }
        }

LABEL_92:
        *a4 = 65792;
LABEL_93:
        *(v9 + 92) = *(v9 + 88);
        return result;
      case 2:
        v31 = *(v9 + 96);
        if (!v31)
        {
          goto LABEL_92;
        }

        v32 = *(v31 + 24);
        if (!v32)
        {
          goto LABEL_92;
        }

        v33 = *(v32 + 8);
        *(v9 + 112) = v33;
        if (v33 >= -1 && *(v32 + 12) > v33)
        {
          goto LABEL_67;
        }

        result = icu::UVector32::expandCapacity(v32, v33 + 1, a4);
        if (result)
        {
          v33 = *(v32 + 8);
LABEL_67:
          *(*(v32 + 24) + 4 * v33) = -1;
          ++*(v32 + 8);
        }

        v34 = *(*(v9 + 96) + 24);
        v35 = *(v34 + 8);
        *(v9 + 116) = v35;
        if (v35 >= -1 && *(v34 + 12) > v35)
        {
          goto LABEL_72;
        }

        result = icu::UVector32::expandCapacity(v34, v35 + 1, a4);
        if (result)
        {
          v35 = *(v34 + 8);
LABEL_72:
          *(*(v34 + 24) + 4 * v35) = -1;
          ++*(v34 + 8);
        }

        goto LABEL_86;
      case 10:
        operator new();
      case 11:
        result = sub_19539501C(*(v9 + 96), a4);
        *(v9 + 96) = result;
        goto LABEL_86;
      case 12:
        v36 = *(*(v9 + 104) + 80);
        do
        {
          v36 = *(v36 + 16);
        }

        while (v36);
        operator new();
      case 13:
        *(*(v9 + 96) + 8) = 1;
        goto LABEL_86;
      case 14:
        *(*(v9 + 96) + 32) = 1;
        goto LABEL_86;
      case 15:
      case 16:
      case 19:
        goto LABEL_29;
      case 17:
        *(*(v9 + 96) + 32) = 1;
LABEL_29:
        if (!*(*(v9 + 96) + 24))
        {
          operator new();
        }

        goto LABEL_92;
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
        *(*(v9 + 96) + 36) = v12;
        goto LABEL_86;
      case 28:
        result = sub_195394AB8(v9, a4);
        if (*a4 > 0)
        {
          goto LABEL_93;
        }

        while (2)
        {
          v13 = *(v9 + 88);
          if (v13 > 8)
          {
            if (v13 == 9)
            {
              *(*(v9 + 104) + 216) = 1;
            }

            else
            {
              if (v13 == 30)
              {
                goto LABEL_86;
              }

LABEL_22:
              v15 = *(v9 + 32);
              v16 = v15;
              v17 = v15 >> 5;
              if (v16 >= 0)
              {
                v18 = v17;
              }

              else
              {
                v18 = *(v9 + 36);
              }

              icu::UnicodeString::doAppend(*(v9 + 104) + 88, (v9 + 24), 0, v18);
            }

            result = sub_195394AB8(v9, a4);
            if (*a4 >= 1)
            {
              goto LABEL_93;
            }

            continue;
          }

          break;
        }

        if (v13 != 3 && v13 != 6)
        {
          goto LABEL_22;
        }

        goto LABEL_86;
      case 29:
        result = sub_195394AB8(v9, a4);
        if (*a4 > 0)
        {
          goto LABEL_93;
        }

        while (2)
        {
          v19 = *(v9 + 88);
          if (v19 > 8)
          {
            if (v19 == 9)
            {
              *(*(v9 + 104) + 217) = 1;
            }

            else
            {
              if (v19 == 30)
              {
                goto LABEL_86;
              }

LABEL_42:
              v21 = *(v9 + 32);
              v22 = v21;
              v23 = v21 >> 5;
              if (v22 >= 0)
              {
                v24 = v23;
              }

              else
              {
                v24 = *(v9 + 36);
              }

              icu::UnicodeString::doAppend(*(v9 + 104) + 152, (v9 + 24), 0, v24);
            }

            result = sub_195394AB8(v9, a4);
            if (*a4 >= 1)
            {
              goto LABEL_93;
            }

            continue;
          }

          break;
        }

        if (v19 != 3 && v19 != 6)
        {
          goto LABEL_42;
        }

        goto LABEL_86;
      default:
        *(v9 + 92) = *(v9 + 88);
        continue;
    }
  }
}

void *sub_195392D68(void *a1)
{
  *a1 = &unk_1F09410E0;
  icu::UnicodeString::~UnicodeString((a1 + 3));
  return a1;
}

uint64_t icu::PluralRules::createDefaultRules(icu::PluralRules *this, UErrorCode *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = L"other: n";
  icu::UnicodeString::UnicodeString(v9, 1, &v8);
  Rules = icu::PluralRules::createRules(v9, this, v3);
  icu::UnicodeString::~UnicodeString(v5, v9);
  v6 = *MEMORY[0x1E69E9840];
  return Rules;
}

uint64_t icu::LocaleCacheKey<icu::SharedPluralRules>::createObject(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  icu::Locale::Locale(v8, v7, *(a1 + 56), 0, 0, 0);
  v4 = icu::PluralRules::internalForLocale(v7, 0, a3);
  if (!v4 && *a3 <= 0)
  {
    *a3 = 7;
  }

  icu::Locale::~Locale(v7);
  if (*a3 <= 0)
  {
    operator new();
  }

  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t icu::PluralRules::internalForLocale(uint64_t a1, int a2, int *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    if (a2 <= 1)
    {
      operator new();
    }

    *a3 = 1;
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t icu::PluralRules::createSharedInstance(uint64_t a1, int a2, icu::UnifiedCache *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2)
  {
    result = 0;
    *a3 = 16;
  }

  else
  {
    v6[1] = v3;
    v6[2] = v4;
    v6[0] = 0;
    sub_195393274(a1, v6, a3);
    return v6[0];
  }

  return result;
}

void sub_195393274(uint64_t a1, UErrorCode *a2, icu::UnifiedCache *this)
{
  v12[28] = *MEMORY[0x1E69E9840];
  Instance = icu::UnifiedCache::getInstance(this, a2);
  if (*this <= 0)
  {
    v7 = Instance;
    v10 = 0;
    v11 = 0;
    v9 = &unk_1F0941330;
    icu::Locale::Locale(v12, a1);
    sub_1952C1AD0(v7, &v9, 0, a2, this);
    v9 = &unk_1F0941330;
    icu::Locale::~Locale(v12);
    icu::CacheKeyBase::~CacheKeyBase(&v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t icu::PluralRules::forLocale(uint64_t a1, int a2, icu::UnifiedCache *this)
{
  if (a2)
  {

    return icu::PluralRules::internalForLocale(a1, a2, this);
  }

  else
  {
    if (*this <= 0)
    {
      v5 = 0;
      sub_195393274(a1, &v5, this);
      if (*this <= 0)
      {
        icu::PluralRules::clone(*(v5 + 24), this);
      }
    }

    return 0;
  }
}

void *icu::PluralRules::getRuleFromResource@<X0>(UErrorCode *a1@<X3>, icu::Locale *a2@<X1>, int a3@<W2>, icu::UnicodeString *a4@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  v54 = 0u;
  v57 = 0;
  v56 = 0u;
  v55 = 0u;
  v53 = &unk_1F0935D00;
  LOWORD(v54) = 2;
  if (*a1 >= 1)
  {
    icu::UnicodeString::UnicodeString(a4, &v53);
    goto LABEL_7;
  }

  v9 = ures_openDirect(0, "plurals", a1);
  v10 = v9;
  if (*a1 >= 1)
  {
    goto LABEL_4;
  }

  if (!a3)
  {
    v13 = "locales";
LABEL_12:
    v14 = ures_getByKey(v9, v13, 0, a1);
    if (*a1 >= 1)
    {
      goto LABEL_13;
    }

    v33 = 0;
    BaseName = icu::Locale::getBaseName(a2);
    StringByKey = ures_getStringByKey(v14, BaseName, &v33, a1);
    if (StringByKey)
    {
      goto LABEL_29;
    }

    v35[0] = U_ZERO_ERROR;
    v17 = icu::Locale::getBaseName(a2);
    memset(&v39[1], 0, 56);
    icu::StringPiece::StringPiece(v52, v17);
    v39[0] = &v39[1] + 5;
    LODWORD(v39[1]) = 40;
    WORD2(v39[1]) = 0;
    LODWORD(v39[7]) = 0;
    icu::CharString::append(v39, *&v52[0], SDWORD2(v52[0]), v35);
    while (1)
    {
      memset(v52, 0, sizeof(v52));
      ulocimp_getParent(v39[0], v35, v52);
      v18 = DWORD2(v52[3]);
      if (DWORD2(v52[3]))
      {
        icu::CharString::operator=(v39, v52);
      }

      if (BYTE12(v52[0]))
      {
        free(*&v52[0]);
      }

      if (!v18)
      {
        StringByKey = 0;
        goto LABEL_26;
      }

      v33 = 0;
      v19 = ures_getStringByKey(v14, v39[0], &v33, v35);
      if (v19)
      {
        break;
      }

      v35[0] = U_ZERO_ERROR;
    }

    StringByKey = v19;
    *a1 = U_ZERO_ERROR;
LABEL_26:
    if (BYTE4(v39[1]))
    {
      free(v39[0]);
    }

    if (StringByKey)
    {
LABEL_29:
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      memset(v39, 0, sizeof(v39));
      u_UCharsToChars(StringByKey, v39, v33 + 1);
      v20 = ures_getByKey(v10, "rules", 0, a1);
      v21 = v20;
      if (*a1 < 1)
      {
        v22 = ures_getByKey(v20, v39, 0, a1);
        v23 = v22;
        if (*a1 < 1)
        {
          Size = ures_getSize(v22);
          v25 = 0uLL;
          *(a4 + 8) = 0u;
          *(a4 + 24) = 0u;
          *(a4 + 40) = 0u;
          *(a4 + 7) = 0;
          *a4 = &unk_1F0935D00;
          v5 = 2;
          *(a4 + 4) = 2;
          v32 = 0;
          if (Size >= 1)
          {
            v26 = Size;
            do
            {
              *(&v52[3] + 1) = 0;
              *(&v52[2] + 8) = v25;
              *(&v52[1] + 8) = v25;
              *(v52 + 8) = v25;
              *&v52[0] = &unk_1F0935D00;
              WORD4(v52[0]) = 2;
              v34 = 0;
              NextString = ures_getNextString(v23, &v34, &v32, a1);
              if (*a1 <= 0)
              {
                *v35 = NextString;
                icu::UnicodeString::setTo(v52, 1, v35, v34);
              }

              else
              {
                icu::UnicodeString::setToBogus(v52);
              }

              v37 = 0u;
              v38 = 0u;
              *v35 = 0u;
              v36 = 0u;
              icu::UnicodeString::UnicodeString(v35, v32, 0xFFFFFFFFLL, 0);
              if (SLOWORD(v35[2]) >= 0)
              {
                v28 = LOWORD(v35[2]) >> 5;
              }

              else
              {
                v28 = v35[3];
              }

              icu::UnicodeString::doAppend(a4, v35, 0, v28);
              LOWORD(v34) = 58;
              icu::UnicodeString::doAppend(a4, &v34, 0, 1);
              if ((SWORD4(v52[0]) & 0x8000u) == 0)
              {
                v29 = WORD4(v52[0]) >> 5;
              }

              else
              {
                v29 = HIDWORD(v52[0]);
              }

              icu::UnicodeString::doAppend(a4, v52, 0, v29);
              LOWORD(v34) = 59;
              icu::UnicodeString::doAppend(a4, &v34, 0, 1);
              icu::UnicodeString::~UnicodeString(v30, v35);
              icu::UnicodeString::~UnicodeString(v31, v52);
              v25 = 0uLL;
              --v26;
            }

            while (v26);
          }
        }

        else
        {
          icu::UnicodeString::UnicodeString(a4, &v53);
        }

        if (v23)
        {
          ures_close(v23);
        }
      }

      else
      {
        icu::UnicodeString::UnicodeString(a4, &v53);
      }

      if (v21)
      {
        ures_close(v21);
      }
    }

    else
    {
LABEL_13:
      icu::UnicodeString::UnicodeString(a4, &v53);
    }

    if (v14)
    {
      ures_close(v14);
    }

    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v13 = "locales_ordinals";
    goto LABEL_12;
  }

  *a1 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_4:
  icu::UnicodeString::UnicodeString(a4, &v53);
LABEL_5:
  if (v10)
  {
    ures_close(v10);
  }

LABEL_7:
  result = icu::UnicodeString::~UnicodeString(v5, &v53);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void icu::PluralRules::select(icu::PluralRules *this@<X0>, int a2@<W1>, icu::UnicodeString *a3@<X8>)
{
  v5 = &unk_1F0941168;
  v6 = &unk_1F09411A8;
  icu::FixedDecimal::init(&v5, a2);
  icu::PluralRules::select(this, &v5, a3);
  icu::UObject::~UObject(&v6);
  icu::IFixedDecimal::~IFixedDecimal(&v5);
}

icu::UnicodeString *icu::PluralRules::select@<X0>(icu::PluralRules *this@<X0>, const icu::IFixedDecimal *a2@<X1>, icu::UnicodeString *a3@<X8>)
{
  v5 = *(this + 1);
  if (v5)
  {

    return sub_195393C40(v5, a2, a3);
  }

  else
  {
    v7[1] = v3;
    v7[2] = v4;
    v7[0] = L"other: n";
    return icu::UnicodeString::UnicodeString(a3, 1, v7);
  }
}

icu::FixedDecimal *icu::FixedDecimal::FixedDecimal(icu::FixedDecimal *this, double a2)
{
  *this = &unk_1F0941168;
  *(this + 1) = &unk_1F09411A8;
  icu::FixedDecimal::init(this, a2);
  return this;
}

{
  *this = &unk_1F0941168;
  *(this + 1) = &unk_1F09411A8;
  icu::FixedDecimal::init(this, a2);
  return this;
}

void icu::FixedDecimal::~FixedDecimal(icu::FixedDecimal *this)
{
  icu::UObject::~UObject((this + 8));

  icu::IFixedDecimal::~IFixedDecimal(this);
}

{
  icu::UObject::~UObject((this + 8));

  icu::IFixedDecimal::~IFixedDecimal(this);
}

{
  icu::UObject::~UObject((this + 8));
  icu::IFixedDecimal::~IFixedDecimal(this);

  JUMPOUT(0x19A8B2600);
}

void icu::PluralRules::select(icu::PluralRules *this@<X0>, double a2@<D0>, icu::UnicodeString *a3@<X8>)
{
  v5 = &unk_1F0941168;
  v6 = &unk_1F09411A8;
  icu::FixedDecimal::init(&v5, a2);
  icu::PluralRules::select(this, &v5, a3);
  icu::UObject::~UObject(&v6);
  icu::IFixedDecimal::~IFixedDecimal(&v5);
}

void icu::PluralRules::select(icu::PluralRules *this@<X0>, const icu::number::FormattedNumber *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  icu::number::impl::DecimalQuantity::DecimalQuantity(v9);
  icu::number::FormattedNumber::getDecimalQuantity(a2, v9, a3);
  if (*a3 < 1)
  {
    v8 = *(this + 6);
    if (v8 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      icu::PluralRules::select(this, v9, a4);
      goto LABEL_6;
    }

    *a3 = v8;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0;
  }

  else
  {
    *(a4 + 8) = 0u;
    *(a4 + 56) = 0;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
  }

  *a4 = &unk_1F0935D00;
  *(a4 + 8) = 2;
  icu::UnicodeString::setToBogus(a4);
LABEL_6:
  icu::number::impl::DecimalQuantity::~DecimalQuantity(v9);
}

icu::UnicodeString *sub_195393C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, icu::UnicodeString *a3@<X8>)
{
  if (((*(*a2 + 24))(a2) & 1) != 0 || ((*(*a2 + 32))(a2) & 1) != 0 || !a1)
  {
LABEL_2:
    v7 = "o";
    return icu::UnicodeString::UnicodeString(a3, 1, &v7);
  }

  else
  {
    while (!sub_195395FA8(*(a1 + 80), a2))
    {
      a1 = *(a1 + 72);
      if (!a1)
      {
        goto LABEL_2;
      }
    }

    return icu::UnicodeString::UnicodeString(a3, (a1 + 8));
  }
}

void icu::PluralRules::select(icu::PluralRules *this@<X0>, const icu::number::FormattedNumberRange *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  Data = icu::number::FormattedNumberRange::getData(a2, a3);

  icu::PluralRules::select(this, Data, a3, a4);
}

void icu::PluralRules::select(icu::PluralRules *this@<X0>, uint64_t a2@<X1>, const icu::UnicodeString *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a3 >= 1)
  {
    *(a4 + 8) = 0u;
    *(a4 + 56) = 0;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
LABEL_5:
    *a4 = &unk_1F0935D00;
    *(a4 + 8) = 2;
    v8 = *MEMORY[0x1E69E9840];

    icu::UnicodeString::setToBogus(a4);
    return;
  }

  v7 = *(this + 6);
  if (v7 >= 1)
  {
LABEL_4:
    *a3 = v7;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0;
    goto LABEL_5;
  }

  if (!*(this + 2))
  {
    v7 = 16;
    goto LABEL_4;
  }

  icu::PluralRules::select(this, (a2 + 304), v19);
  v11 = icu::StandardPlural::indexFromString(v19, a3, v10);
  icu::UnicodeString::~UnicodeString(v12, v19);
  icu::PluralRules::select(this, (a2 + 376), v19);
  v14 = icu::StandardPlural::indexFromString(v19, a3, v13);
  icu::UnicodeString::~UnicodeString(v15, v19);
  if (*a3 < 1)
  {
    v16 = sub_19538FA30(*(this + 2), v11, v14);
    Keyword = icu::StandardPlural::getKeyword(v16);
    icu::UnicodeString::UnicodeString(a4, Keyword, 0xFFFFFFFFLL, 0);
  }

  else
  {
    *(a4 + 8) = 0u;
    *(a4 + 56) = 0;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *a4 = &unk_1F0935D00;
    *(a4 + 8) = 2;
    icu::UnicodeString::setToBogus(a4);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t icu::PluralRules::getKeywords(icu::PluralRules *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(this + 6);
  if (v3 < U_ILLEGAL_ARGUMENT_ERROR)
  {
    operator new();
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t *icu::PluralRules::getSamples(icu::PluralRules *this, const icu::UnicodeString *a2, double *a3, int a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v7 = *(this + 6);
  if (v7 >= 1)
  {
    result = 0;
LABEL_14:
    *a5 = v7;
    return result;
  }

  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_13:
    result = 0;
    LODWORD(v7) = 1;
    goto LABEL_14;
  }

  if (a4 < 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  result = icu::PluralRules::rulesForKeyword(v7, this, a2);
  if (result)
  {
    v10 = result;
    result = sub_1953941D0((result + 19), a3, 0, a4, a5);
    if (!result)
    {

      return sub_1953941D0((v10 + 11), a3, 0, a4, a5);
    }
  }

  return result;
}

uint64_t icu::PluralRules::rulesForKeyword(icu::PluralRules *this, const icu::UnicodeString *a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v4 = a2 + 10;
    do
    {
      v5 = *(v2 + 16);
      if (v5)
      {
        if (*(a2 + 4))
        {
          return v2;
        }
      }

      else
      {
        if ((v5 & 0x8000) != 0)
        {
          v6 = *(v2 + 20);
        }

        else
        {
          v6 = v5 >> 5;
        }

        v7 = *(a2 + 4);
        if ((v7 & 0x8000u) == 0)
        {
          v8 = v7 >> 5;
        }

        else
        {
          v8 = *(a2 + 3);
        }

        if ((v7 & 1) == 0 && v6 == v8)
        {
          v9 = (v7 & 2) != 0 ? v4 : *(a2 + 3);
          if (icu::UnicodeString::doEquals(v2 + 8, v9, v6))
          {
            return v2;
          }
        }
      }

      v2 = *(v2 + 72);
    }

    while (v2);
  }

  return v2;
}

uint64_t sub_1953941D0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, UErrorCode *a5)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a2 | a3)
  {
    v6 = a4;
    v7 = a3;
    if (!a2 || !a3)
    {
      v12 = 0;
      v9 = 0;
      while (1)
      {
        if (v9 >= v6)
        {
          goto LABEL_5;
        }

        v13 = *(a1 + 8);
        v14 = v13;
        v15 = v13 >> 5;
        v16 = v14 >= 0 ? v15 : *(a1 + 12);
        if (v12 >= v16)
        {
          goto LABEL_5;
        }

        if (v12 < 0)
        {
          break;
        }

        if (v14 < 0)
        {
          if (*(a1 + 12) >= v12)
          {
            v18 = v12;
          }

          else
          {
            v18 = *(a1 + 12);
          }

LABEL_22:
          v17 = v18;
          v15 = *(a1 + 12);
          goto LABEL_23;
        }

        if (v15 >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = v15;
        }

LABEL_23:
        v19 = icu::UnicodeString::doIndexOf(a1, 0x2Cu, v17, v15 - v17);
        if (v19 == -1)
        {
          if (*(a1 + 8) < 0)
          {
            v19 = *(a1 + 12);
          }

          else
          {
            v19 = *(a1 + 8) >> 5;
          }
        }

        icu::UnicodeString::tempSubString(a1, v12, v19 - v12, &v60);
        if ((v61 & 0x8000u) == 0)
        {
          v20 = v61 >> 5;
        }

        else
        {
          v20 = v62;
        }

        v21 = icu::UnicodeString::doIndexOf(&v60, 0x7Eu, 0, v20);
        if (v21 < 0)
        {
          *&v55 = 0;
          v53 = 0u;
          v54 = 0u;
          *v51 = 0u;
          v52 = 0u;
          v26 = icu::UnicodeString::UnicodeString(v59, &v60);
          icu::number::impl::DecimalQuantity::fromExponentString(v26, a5, v51);
          icu::UnicodeString::~UnicodeString(v27, v59);
          if (a2)
          {
            v28 = icu::number::impl::DecimalQuantity::toDouble(v51);
            if (v28 != floor(v28) || icu::number::impl::DecimalQuantity::fractionCount(v51) <= 0)
            {
              *(a2 + 8 * v9) = v28;
              v9 = (v9 + 1);
              v6 = a4;
            }
          }

          else
          {
            icu::number::impl::DecimalQuantity::operator=((v7 + 72 * v9), v51);
            v9 = (v9 + 1);
          }

          icu::number::impl::DecimalQuantity::~DecimalQuantity(v51);
LABEL_44:
          v30 = 0;
          v12 = v19 + 1;
          goto LABEL_45;
        }

        v22 = v21;
        v50 = 0;
        memset(v49, 0, sizeof(v49));
        icu::UnicodeString::tempSubString(&v60, 0, v21, v58);
        icu::number::impl::DecimalQuantity::fromExponentString(v58, a5, v49);
        icu::UnicodeString::~UnicodeString(v23, v58);
        v48 = 0;
        memset(v47, 0, sizeof(v47));
        icu::UnicodeString::tempSubString(&v60, v22 + 1, 2147483646 - v22, v57);
        icu::number::impl::DecimalQuantity::fromExponentString(v57, a5, v47);
        icu::UnicodeString::~UnicodeString(v24, v57);
        if (*a5 > 0)
        {
          v25 = 0;
LABEL_39:
          v30 = 2;
          goto LABEL_40;
        }

        v29 = icu::number::impl::DecimalQuantity::toDouble(v47);
        if (v29 < icu::number::impl::DecimalQuantity::toDouble(v49))
        {
          v25 = 0;
          *a5 = U_INVALID_FORMAT_ERROR;
          goto LABEL_39;
        }

        v46 = 0;
        memset(v45, 0, sizeof(v45));
        icu::number::impl::DecimalQuantity::DecimalQuantity(v45);
        icu::number::impl::DecimalQuantity::setToInt(v45, 1);
        LowerDisplayMagnitude = icu::number::impl::DecimalQuantity::getLowerDisplayMagnitude(v49);
        Exponent = icu::number::impl::DecimalQuantity::getExponent(v49);
        icu::number::impl::DecimalQuantity::adjustMagnitude(v45, Exponent + LowerDisplayMagnitude);
        v34 = icu::number::impl::DecimalQuantity::toDouble(v45);
        v44 = 0;
        memset(v43, 0, sizeof(v43));
        icu::number::impl::DecimalQuantity::DecimalQuantity(v43, v49);
        v35 = icu::number::impl::DecimalQuantity::toDouble(v43);
        v36 = icu::number::impl::DecimalQuantity::toDouble(v47);
        if (v35 <= v36)
        {
          v37 = v36;
          while (a2)
          {
            if (v35 != floor(v35) || icu::number::impl::DecimalQuantity::fractionCount(v43) <= 0)
            {
              *(a2 + 8 * v9) = v35;
              v9 = (v9 + 1);
LABEL_54:
              v6 = a4;
            }

            if (v9 < v6)
            {
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              *v51 = 0u;
              v52 = 0u;
              icu::number::impl::DecNum::DecNum(v51);
              icu::number::impl::DecNum::setTo(v51, v34 + v35, a5);
              v42 = 0;
              memset(v41, 0, sizeof(v41));
              icu::number::impl::DecimalQuantity::DecimalQuantity(v41);
              icu::number::impl::DecimalQuantity::setToDecNum(v41, v51, a5);
              icu::number::impl::DecimalQuantity::setMinFraction(v41, -LowerDisplayMagnitude);
              icu::number::impl::DecimalQuantity::roundToMagnitude(v41, LowerDisplayMagnitude, 4u, a5);
              icu::number::impl::DecimalQuantity::adjustMagnitude(v41, -Exponent);
              icu::number::impl::DecimalQuantity::adjustExponent(v41, Exponent);
              v35 = icu::number::impl::DecimalQuantity::toDouble(v41);
              icu::number::impl::DecimalQuantity::operator=(v43, v41);
              icu::number::impl::DecimalQuantity::~DecimalQuantity(v41);
              if (BYTE4(v51[1]))
              {
                free(v51[0]);
              }

              if (v35 <= v37)
              {
                continue;
              }
            }

            goto LABEL_59;
          }

          icu::number::impl::DecimalQuantity::operator=((a3 + 72 * v9), v43);
          v9 = (v9 + 1);
          goto LABEL_54;
        }

LABEL_59:
        icu::number::impl::DecimalQuantity::~DecimalQuantity(v43);
        icu::number::impl::DecimalQuantity::~DecimalQuantity(v45);
        v30 = 0;
        v25 = 1;
        v7 = a3;
LABEL_40:
        icu::number::impl::DecimalQuantity::~DecimalQuantity(v47);
        icu::number::impl::DecimalQuantity::~DecimalQuantity(v49);
        if (v25)
        {
          goto LABEL_44;
        }

LABEL_45:
        icu::UnicodeString::~UnicodeString(v31, &v60);
        if (v30)
        {
          goto LABEL_5;
        }
      }

      v18 = 0;
      v17 = 0;
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  v9 = 0;
  *a5 = U_INTERNAL_PROGRAM_ERROR;
LABEL_5:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}