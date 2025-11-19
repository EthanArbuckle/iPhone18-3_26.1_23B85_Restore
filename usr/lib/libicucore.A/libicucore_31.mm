uint64_t icu::number::impl::AffixUtils::unescapedCodePointCount(icu::number::impl::AffixUtils *this, const icu::UnicodeString *a2, const icu::number::impl::SymbolProvider *a3, UErrorCode *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = 0;
  v7 = 0;
  if (icu::number::impl::AffixUtils::hasNext(&v16, this))
  {
    v9 = v16;
    v8 = v17;
    do
    {
      Token = icu::number::impl::AffixUtils::nextToken(v9, v8, this, a3);
      v16 = Token;
      v17 = v11;
      if (*a3 > 0)
      {
        break;
      }

      v9 = Token;
      v8 = v11;
      if (HIDWORD(v11) == 4294967281)
      {
        v7 = (v7 + 1);
      }

      else if ((v11 & 0x8000000000000000) != 0)
      {
        (*(*a2 + 16))(&v18, a2);
        LODWORD(v13) = v19 >> 5;
        v13 = (v19 & 0x8000u) == 0 ? v13 : v20;
        v7 = (v13 + v7);
        icu::UnicodeString::~UnicodeString(v13, &v18);
      }

      else
      {
        v12 = HIWORD(Token) ? 2 : 1;
        v7 = (v12 + v7);
      }
    }

    while ((icu::number::impl::AffixUtils::hasNext(&v16, this) & 1) != 0);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t icu::number::impl::AffixUtils::containsType(uint64_t a1, int a2, int *a3)
{
  v3 = *(a1 + 8);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 < 0)
  {
    v5 = *(a1 + 12);
  }

  if (!v5)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v14 = 0;
  v15 = 0;
  while (1)
  {
    result = icu::number::impl::AffixUtils::hasNext(&v14, a1);
    if (!result)
    {
      break;
    }

    Token = icu::number::impl::AffixUtils::nextToken(v10, v9, a1, a3);
    v14 = Token;
    v15 = v13;
    if (*a3 > 0)
    {
      return 0;
    }

    v10 = Token;
    v9 = v13;
    if (HIDWORD(v13) == a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t icu::number::impl::AffixUtils::hasCurrencySymbols(icu::number::impl::AffixUtils *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v3 = *(this + 4);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 < 0)
  {
    v5 = *(this + 3);
  }

  if (!v5)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  result = icu::number::impl::AffixUtils::hasNext(&v13, this);
  if (result)
  {
    v10 = v13;
    v9 = v14;
    while (1)
    {
      Token = icu::number::impl::AffixUtils::nextToken(v10, v9, this, a2);
      v13 = Token;
      v14 = v12;
      if (*a2 > 0)
      {
        return 0;
      }

      v10 = Token;
      v9 = v12;
      if (v12 < 0 && icu::number::impl::AffixUtils::getFieldForType(HIDWORD(v12)) == 39)
      {
        break;
      }

      if ((icu::number::impl::AffixUtils::hasNext(&v13, this) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t icu::number::impl::AffixUtils::replaceType@<X0>(UChar **a1@<X0>, int a2@<W1>, __int16 a3@<W2>, int *a4@<X3>, icu::UnicodeString *a5@<X8>)
{
  *(a5 + 2) = 0u;
  *(a5 + 3) = 0u;
  *a5 = 0u;
  *(a5 + 1) = 0u;
  result = icu::UnicodeString::UnicodeString(a5, a1);
  v11 = *(a1 + 4);
  v12 = v11;
  v13 = v11 >> 5;
  if (v12 < 0)
  {
    v13 = *(a1 + 3);
  }

  if (v13)
  {
    v17 = 0;
    v18 = 0;
    result = icu::number::impl::AffixUtils::hasNext(&v17, a1);
    if (result)
    {
      v15 = v17;
      v14 = v18;
      do
      {
        result = icu::number::impl::AffixUtils::nextToken(v15, v14, a1, a4);
        v17 = result;
        v18 = v16;
        if (*a4 > 0)
        {
          break;
        }

        v15 = result;
        v14 = v16;
        if (HIDWORD(v16) == a2)
        {
          v19 = a3;
          icu::UnicodeString::doReplace(a5, (result - 1), 1, &v19, 0, 1);
        }

        result = icu::number::impl::AffixUtils::hasNext(&v17, a1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

uint64_t icu::number::impl::AffixUtils::containsOnlySymbolsAndIgnorables(icu::number::impl::AffixUtils *this, const icu::UnicodeString *a2, const icu::UnicodeSet *a3, UErrorCode *a4)
{
  v4 = *(this + 4);
  v5 = v4;
  v6 = v4 >> 5;
  if (v5 < 0)
  {
    v6 = *(this + 3);
  }

  if (!v6)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  if (!icu::number::impl::AffixUtils::hasNext(&v15, this))
  {
    return 1;
  }

  v11 = v15;
  v10 = v16;
  while (1)
  {
    Token = icu::number::impl::AffixUtils::nextToken(v11, v10, this, a3);
    v15 = Token;
    v16 = v13;
    if (*a3 > 0)
    {
      break;
    }

    v11 = Token;
    v10 = v13;
    if (!HIDWORD(v13))
    {
      result = icu::UnicodeSet::contains(a2, SHIDWORD(Token));
      if (!result)
      {
        return result;
      }
    }

    if ((icu::number::impl::AffixUtils::hasNext(&v15, this) & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t icu::number::impl::AffixUtils::iterateWithConsumer(unint64_t result, uint64_t a2, int *a3)
{
  v3 = *(result + 8);
  v4 = v3;
  v5 = v3 >> 5;
  if (v4 < 0)
  {
    v5 = *(result + 12);
  }

  if (v5)
  {
    v8 = result;
    v9 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      result = icu::number::impl::AffixUtils::hasNext(&v12, v8);
      if (!result)
      {
        break;
      }

      result = icu::number::impl::AffixUtils::nextToken(v10, v9, v8, a3);
      v12 = result;
      v13 = v11;
      if (*a3 > 0)
      {
        break;
      }

      v10 = result;
      v9 = v11;
      result = (*(*a2 + 16))(a2, HIDWORD(v11), HIDWORD(result), a3);
    }

    while (*a3 < 1);
  }

  return result;
}

icu::number::impl::LocalizedNumberFormatterAsFormat *icu::number::impl::LocalizedNumberFormatterAsFormat::LocalizedNumberFormatterAsFormat(icu::number::impl::LocalizedNumberFormatterAsFormat *this, const icu::number::LocalizedNumberFormatter *a2, const char **a3)
{
  v6 = icu::Format::Format(this);
  *v6 = &unk_1F093EC48;
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter((v6 + 41), a2);
  icu::Locale::Locale((this + 824), a3);
  icu::Format::setLocaleIDs(this, a3[5], a3[5]);
  return this;
}

void icu::number::impl::LocalizedNumberFormatterAsFormat::~LocalizedNumberFormatterAsFormat(icu::number::impl::LocalizedNumberFormatterAsFormat *this)
{
  *this = &unk_1F093EC48;
  icu::Locale::~Locale((this + 824));
  icu::number::LocalizedNumberFormatter::~LocalizedNumberFormatter((this + 328));

  icu::Format::~Format(this);
}

{
  icu::number::impl::LocalizedNumberFormatterAsFormat::~LocalizedNumberFormatterAsFormat(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::number::impl::LocalizedNumberFormatterAsFormat::operator==(int a1, char **lpsrc)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = **lpsrc;
  {
    icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::toSkeleton();
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

icu::UnicodeString *icu::number::impl::LocalizedNumberFormatterAsFormat::format(icu::number::impl::LocalizedNumberFormatterAsFormat *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    memset(v23, 0, sizeof(v23));
    sub_1952FDFB0(v23);
    icu::Formattable::populateDecimalQuantity(a2, v24, a5);
    if (*a5 > 0 || (icu::number::LocalizedNumberFormatter::formatImpl((this + 328), v23, a5), *a5 > 0))
    {
LABEL_16:
      icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v23);
      goto LABEL_17;
    }

    *(a4 + 3) = 0;
    *(a4 + 4) = 0;
    if (icu::FormattedValueStringBuilderImpl::nextFieldPosition(v23, a4, a5))
    {
      if (*(a3 + 4) < 0)
      {
        v11 = *(a3 + 3);
        if (v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v10 = *(a3 + 4);
        if (v10 >= 0x20)
        {
          v11 = v10 >> 5;
LABEL_9:
          v12 = *(a4 + 4);
          *(a4 + 3) += v11;
          v13 = *(a3 + 4);
          v14 = v13;
          v15 = v13 >> 5;
          if (v14 < 0)
          {
            v15 = *(a3 + 3);
          }

          *(a4 + 4) = v15 + v12;
        }
      }
    }

    icu::FormattedValueStringBuilderImpl::toTempString(v23, &v20);
    if ((v21 & 0x8000u) == 0)
    {
      v16 = v21 >> 5;
    }

    else
    {
      v16 = v22;
    }

    icu::UnicodeString::doAppend(a3, &v20, 0, v16);
    icu::UnicodeString::~UnicodeString(v17, &v20);
    goto LABEL_16;
  }

LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
  return a3;
}

icu::UnicodeString *icu::number::impl::LocalizedNumberFormatterAsFormat::format(icu::number::impl::LocalizedNumberFormatterAsFormat *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPositionIterator *a4, UErrorCode *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    memset(v16, 0, sizeof(v16));
    sub_1952FDFB0(v16);
    icu::Formattable::populateDecimalQuantity(a2, v17, a5);
    if (*a5 <= 0)
    {
      icu::number::LocalizedNumberFormatter::formatImpl((this + 328), v16, a5);
      if (*a5 <= 0)
      {
        icu::FormattedValueStringBuilderImpl::toTempString(v16, v14);
        if ((SWORD4(v14[0]) & 0x8000u) == 0)
        {
          v10 = WORD4(v14[0]) >> 5;
        }

        else
        {
          v10 = HIDWORD(v14[0]);
        }

        icu::UnicodeString::doAppend(a3, v14, 0, v10);
        icu::UnicodeString::~UnicodeString(v11, v14);
        if (a4)
        {
          v15 = 0;
          memset(v14, 0, sizeof(v14));
          icu::FieldPositionIteratorHandler::FieldPositionIteratorHandler(v14, a4, a5);
          icu::FormattedValueStringBuilderImpl::getAllFieldPositions(v16, v14, a5);
          icu::FieldPositionIteratorHandler::~FieldPositionIteratorHandler(v14);
        }
      }
    }

    icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v16);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t icu::number::LocalizedNumberFormatter::toFormat(icu::number::LocalizedNumberFormatter *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_195354884(uint64_t a1, uint64_t a2)
{
  icu::FormattedStringBuilder::operator=((a1 + 8), a2 + 8);
  *(a1 + 144) = *(a2 + 144);
  if (*(a1 + 164))
  {
    free(*(a1 + 152));
  }

  v4 = *(a2 + 160);
  *(a1 + 160) = v4;
  *(a1 + 164) = *(a2 + 164);
  v5 = *(a2 + 152);
  v6 = (a2 + 168);
  if (v5 == a2 + 168)
  {
    *(a1 + 152) = a1 + 168;
    memcpy((a1 + 168), v6, 16 * v4);
  }

  else
  {
    *(a1 + 152) = v5;
    *(a2 + 152) = v6;
    *(a2 + 160) = 8;
    *(a2 + 164) = 0;
  }

  *(a1 + 296) = *(a2 + 296);
  icu::number::impl::DecimalQuantity::operator=((a1 + 304), a2 + 304);
  icu::MeasureUnit::operator=(a1 + 376, a2 + 376);
  *(a1 + 400) = *(a2 + 400);
  return a1;
}

uint64_t unumf_openResult(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t unumf_resultAsValue(uint64_t result, int *a2)
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

uint64_t unumf_closeResult(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) == 1178881536)
    {
      *(result + 32) = 0;
      icu::number::impl::UFormattedNumberData::~UFormattedNumberData((result + 48));
      icu::number::FormattedNumber::~FormattedNumber((v1 + 6));
      v1[4] = 0;
      *v1 = 0;

      JUMPOUT(0x19A8B2600);
    }
  }

  return result;
}

uint64_t sub_195354AAC(uint64_t a1, int *a2)
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
    return a1 + 352;
  }
}

_DWORD *unumf_formatInt(_DWORD *result, unint64_t a2, uint64_t a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return result;
  }

  v5 = result;
  if (!result)
  {
    goto LABEL_9;
  }

  if (*result != 1313231360)
  {
LABEL_10:
    v8 = 3;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_9:
    v8 = 1;
LABEL_11:
    *a4 = v8;
    return result;
  }

  if (*(a3 + 16) != 1178881536)
  {
    goto LABEL_10;
  }

  icu::FormattedValueStringBuilderImpl::resetString((a3 + 48));
  icu::number::impl::DecimalQuantity::clear((a3 + 352));
  icu::number::impl::DecimalQuantity::setToLong((a3 + 352), a2);

  return icu::number::LocalizedNumberFormatter::formatImpl((v5 + 2), (a3 + 48), a4);
}

_DWORD *unumf_formatDouble(_DWORD *result, uint64_t a2, UErrorCode *a3, double a4)
{
  if (*a3 > 0)
  {
    return result;
  }

  v5 = result;
  if (!result)
  {
    goto LABEL_9;
  }

  if (*result != 1313231360)
  {
LABEL_10:
    v8 = 3;
    goto LABEL_11;
  }

  if (!a2)
  {
LABEL_9:
    v8 = 1;
LABEL_11:
    *a3 = v8;
    return result;
  }

  if (*(a2 + 16) != 1178881536)
  {
    goto LABEL_10;
  }

  icu::FormattedValueStringBuilderImpl::resetString((a2 + 48));
  icu::number::impl::DecimalQuantity::clear((a2 + 352));
  icu::number::impl::DecimalQuantity::setToDouble((a2 + 352), a4);

  return icu::number::LocalizedNumberFormatter::formatImpl((v5 + 2), (a2 + 48), a3);
}

_DWORD *unumf_formatDecimal(_DWORD *result, const char *a2, int a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return result;
  }

  v6 = result;
  if (!result)
  {
    goto LABEL_10;
  }

  if (*result != 1313231360)
  {
LABEL_11:
    v10 = 3;
    goto LABEL_12;
  }

  if (!a4)
  {
LABEL_10:
    v10 = 1;
LABEL_12:
    *a5 = v10;
    return result;
  }

  if (*(a4 + 16) != 1178881536)
  {
    goto LABEL_11;
  }

  icu::FormattedValueStringBuilderImpl::resetString((a4 + 48));
  icu::number::impl::DecimalQuantity::clear((a4 + 352));
  result = icu::number::impl::DecimalQuantity::setToDecNumber(a4 + 352, a2, a3, a5);
  if (*a5 <= 0)
  {

    return icu::number::LocalizedNumberFormatter::formatImpl((v6 + 2), (a4 + 48), a5);
  }

  return result;
}

uint64_t unumf_resultToString(uint64_t a1, UChar *a2, int a3, UErrorCode *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (a1)
    {
      if (*(a1 + 16) == 1178881536)
      {
        if (a2)
        {
          if ((a3 & 0x80000000) == 0)
          {
LABEL_7:
            icu::FormattedValueStringBuilderImpl::toTempString((a1 + 48), v13);
            v12 = a2;
            v4 = icu::UnicodeString::extract(v13, &v12, a3, a4);
            v11 = v12;
            icu::UnicodeString::~UnicodeString(&v11, v13);
            goto LABEL_12;
          }
        }

        else if (!a3)
        {
          goto LABEL_7;
        }

        v4 = 0;
        v8 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_11:
        *a4 = v8;
        goto LABEL_12;
      }

      v8 = U_INVALID_FORMAT_ERROR;
    }

    else
    {
      v8 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    v4 = 0;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL unumf_resultNextFieldPosition(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (a1)
    {
      if (*(a1 + 16) == 1178881536)
      {
        if (a2)
        {
          *(&v8 + 1) = 0;
          v7 = &unk_1F093AD90;
          *&v8 = *a2;
          DWORD2(v8) = *(a2 + 8);
          v3 = icu::FormattedValueStringBuilderImpl::nextFieldPosition((a1 + 48), &v7, a3) != 0;
          *(a2 + 4) = *(&v8 + 4);
          icu::FieldPosition::~FieldPosition(&v7);
          return v3;
        }

        v3 = 0;
        v5 = 1;
LABEL_10:
        *a3 = v5;
        return v3;
      }

      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    v3 = 0;
    goto LABEL_10;
  }

  return 0;
}

void unumf_resultGetAllFieldPositions(uint64_t a1, icu::FieldPositionIterator *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v10 = v3;
    v11 = v4;
    if (a1)
    {
      if (*(a1 + 16) != 1178881536)
      {
        v7 = U_INVALID_FORMAT_ERROR;
        goto LABEL_8;
      }

      if (a2)
      {
        v9 = 0;
        memset(v8, 0, sizeof(v8));
        icu::FieldPositionIteratorHandler::FieldPositionIteratorHandler(v8, a2, a3);
        icu::FormattedValueStringBuilderImpl::getAllFieldPositions((a1 + 48), v8, a3);
        icu::FieldPositionIteratorHandler::~FieldPositionIteratorHandler(v8);
        return;
      }
    }

    v7 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_8:
    *a3 = v7;
  }
}

uint64_t unumf_resultToDecimalNumber(uint64_t a1, char *a2, int a3, UErrorCode *a4)
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

_DWORD *unumf_close(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (*result == 1313231360)
    {
      icu::number::LocalizedNumberFormatter::~LocalizedNumberFormatter((result + 2));
      *v1 = 0;

      JUMPOUT(0x19A8B2600);
    }
  }

  return result;
}

_DWORD *usnum_setToInt64(_DWORD *result, icu::number::SimpleNumber *this, int *a3)
{
  if (*a3 <= 0)
  {
    v9 = v3;
    v10 = v4;
    v5 = result;
    if (result)
    {
      if (*result == 1397640448)
      {
        icu::number::SimpleNumber::forInt64(a3, &v7);
        icu::number::SimpleNumber::cleanup((v5 + 2));
        *(v5 + 1) = v7;
        v5[4] = v8;
        v7 = 0;
        return icu::number::SimpleNumber::cleanup(&v7);
      }

      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    *a3 = v6;
  }

  return result;
}

_DWORD *usnum_multiplyByPowerOfTen(_DWORD *result, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (result)
    {
      if (*result == 1397640448)
      {
        return icu::number::SimpleNumber::multiplyByPowerOfTen((result + 2), a2, a3);
      }

      v3 = 3;
    }

    else
    {
      v3 = 1;
    }

    *a3 = v3;
  }

  return result;
}

void usnum_roundTo(uint64_t a1, int a2, unsigned int a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a1)
    {
      if (*a1 == 1397640448)
      {
        icu::number::SimpleNumber::roundTo((a1 + 8), a2, a3, a4);
        return;
      }

      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    *a4 = v4;
  }
}

void *usnum_setMinimumIntegerDigits(void *result, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (result)
    {
      if (*result == 1397640448)
      {
        return icu::number::SimpleNumber::setMinimumIntegerDigits(result + 1, a2, a3);
      }

      v3 = 3;
    }

    else
    {
      v3 = 1;
    }

    *a3 = v3;
  }

  return result;
}

void *usnum_setMinimumFractionDigits(void *result, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (result)
    {
      if (*result == 1397640448)
      {
        return icu::number::SimpleNumber::setMinimumFractionDigits(result + 1, a2, a3);
      }

      v3 = 3;
    }

    else
    {
      v3 = 1;
    }

    *a3 = v3;
  }

  return result;
}

void usnum_setMaximumIntegerDigits(_DWORD *a1, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (a1)
    {
      if (*a1 == 1397640448)
      {
        icu::number::SimpleNumber::setMaximumIntegerDigits((a1 + 2), a2, a3);
        return;
      }

      v3 = 3;
    }

    else
    {
      v3 = 1;
    }

    *a3 = v3;
  }
}

_DWORD *usnum_setSign(_DWORD *result, int a2, int *a3)
{
  if (*a3 <= 0)
  {
    if (result)
    {
      if (*result == 1397640448)
      {
        return icu::number::SimpleNumber::setSign((result + 2), a2, a3);
      }

      v3 = 3;
    }

    else
    {
      v3 = 1;
    }

    *a3 = v3;
  }

  return result;
}

void usnumf_format(_DWORD *a1, uint64_t a2, uint64_t a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return;
  }

  v12[5] = v4;
  v12[6] = v5;
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1397638656)
  {
    goto LABEL_12;
  }

  if (!a2)
  {
LABEL_11:
    v8 = 1;
LABEL_13:
    *a4 = v8;
    return;
  }

  if (*a2 != 1397640448)
  {
LABEL_12:
    v8 = 3;
    goto LABEL_13;
  }

  if (!a3)
  {
    goto LABEL_11;
  }

  if (*(a3 + 16) != 1178881536)
  {
    goto LABEL_12;
  }

  memset(v12, 0, 24);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  *(a2 + 8) = 0;
  icu::number::SimpleNumberFormatter::format((a1 + 2), &v10, a4, v12);
  icu::number::SimpleNumber::cleanup(&v10);
  if (*a4 <= 0)
  {
    icu::number::FormattedNumber::FormattedNumber(v9, v12);
    sub_195354884(a3 + 48, v9[1]);
    icu::number::FormattedNumber::~FormattedNumber(v9);
  }

  icu::number::FormattedNumber::~FormattedNumber(v12);
}

void usnumf_formatInt64(_DWORD *a1, int a2, uint64_t a3, int *a4)
{
  if (*a4 > 0)
  {
    return;
  }

  if (!a1)
  {
    v7 = 1;
LABEL_9:
    *a4 = v7;
    return;
  }

  if (*a1 != 1397638656)
  {
    v7 = 3;
    goto LABEL_9;
  }

  v10[5] = v4;
  v10[6] = v5;
  if (a3)
  {
    if (*(a3 + 16) == 1178881536)
    {
      memset(v10, 0, 24);
      sub_195355DAC((a1 + 2), a4, v10);
      icu::number::FormattedNumber::FormattedNumber(v9, v10);
      sub_195354884(a3 + 48, v9[1]);
      icu::number::FormattedNumber::~FormattedNumber(v9);
      icu::number::FormattedNumber::~FormattedNumber(v10);
      return;
    }

    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  *a4 = v8;
}

uint64_t sub_195355DAC@<X0>(uint64_t a1@<X0>, int *a2@<X2>, uint64_t a3@<X8>)
{
  icu::number::SimpleNumber::forInt64(a2, v8);
  icu::number::SimpleNumberFormatter::format(a1, v8, a2, a3);
  return icu::number::SimpleNumber::cleanup(v8);
}

_DWORD *usnum_close(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (*result == 1397640448)
    {
      icu::number::SimpleNumber::cleanup((result + 2));
      *v1 = 0;

      JUMPOUT(0x19A8B2600);
    }
  }

  return result;
}

_DWORD *usnumf_close(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (*result == 1397638656)
    {
      icu::number::SimpleNumberFormatter::cleanup((result + 2));
      *v1 = 0;

      JUMPOUT(0x19A8B2600);
    }
  }

  return result;
}

void sub_195355EF8(uint64_t a1, uint64_t a2, const char *a3, int a4, int a5, UErrorCode *a6)
{
  v17[8] = *MEMORY[0x1E69E9840];
  v16[0] = &unk_1F093ED00;
  v16[1] = a1;
  v11 = ures_open(0, *(a2 + 40), a6);
  if (*a6 <= 0)
  {
    v12 = strcmp(a3, "latn");
    memset(&v17[1], 0, 56);
    v17[0] = &v17[1] + 5;
    LODWORD(v17[1]) = 40;
    sub_195356114(a3, a4, a5, v17, a6);
    v15 = 0;
    ures_getAllItemsWithFallback(v11, v17[0], v16, &v15);
    v13 = *(a1 + 1374);
    if (*(a1 + 1374) && v12)
    {
      sub_195356114("latn", a4, a5, v17, a6);
      v15 = 0;
      ures_getAllItemsWithFallback(v11, v17[0], v16, &v15);
      v13 = *(a1 + 1374);
    }

    if (a4 && v13)
    {
      sub_195356114(a3, 0, a5, v17, a6);
      v15 = 0;
      ures_getAllItemsWithFallback(v11, v17[0], v16, &v15);
      v13 = *(a1 + 1374);
    }

    if (a4 && v13 && v12)
    {
      sub_195356114("latn", 0, a5, v17, a6);
      v15 = 0;
      ures_getAllItemsWithFallback(v11, v17[0], v16, &v15);
      v13 = *(a1 + 1374);
    }

    if (v13)
    {
      *a6 = U_INTERNAL_PROGRAM_ERROR;
    }

    if (BYTE4(v17[1]))
    {
      free(v17[0]);
    }
  }

  if (v11)
  {
    ures_close(v11);
  }

  icu::ResourceSink::~ResourceSink(v16);
  v14 = *MEMORY[0x1E69E9840];
}

icu::CharString *sub_195356114(const char *a1, int a2, int a3, icu::CharString *a4, UErrorCode *a5)
{
  *(a4 + 14) = 0;
  **a4 = 0;
  icu::StringPiece::StringPiece(&v13, "NumberElements/");
  icu::CharString::append(a4, v13, v14, a5);
  icu::StringPiece::StringPiece(&v13, a1);
  icu::CharString::append(a4, v13, v14, a5);
  if (a2)
  {
    v10 = "/patternsLong";
  }

  else
  {
    v10 = "/patternsShort";
  }

  icu::StringPiece::StringPiece(&v13, v10);
  icu::CharString::append(a4, v13, v14, a5);
  if (a3)
  {
    v11 = "/currencyFormat";
  }

  else
  {
    v11 = "/decimalFormat";
  }

  icu::StringPiece::StringPiece(&v13, v11);
  return icu::CharString::append(a4, v13, v14, a5);
}

uint64_t sub_195356218(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(a1 + 1373);
  if (v2 >= a2)
  {
    v2 = a2;
  }

  return *(a1 + v2 + 1352);
}

char *sub_19535623C(uint64_t a1, int a2, icu::PluralRules *a3, icu::number::impl::DecimalQuantity *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    result = 0;
    goto LABEL_22;
  }

  if (*(a1 + 1373) >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = *(a1 + 1373);
  }

  if ((*(*a4 + 40))(a4))
  {
    v8 = icu::number::impl::DecimalQuantity::toLong(a4, 1);
    if (!v8)
    {
      v9 = 6;
LABEL_11:
      result = *(a1 + 8 * (v9 | (8 * v7)) + 8);
      if (result)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    if (v8 == 1)
    {
      v9 = 7;
      goto LABEL_11;
    }
  }

LABEL_12:
  if (!a3 || ((memset(v16, 0, sizeof(v16)), icu::PluralRules::select(a3, a4, v16), v12 = icu::StandardPlural::indexOrNegativeFromString(v16, v11), v12 < 0) ? (v13 = 5) : (v13 = v12), (icu::UnicodeString::~UnicodeString(5, v16), v14 = *(a1 + 8 * (v13 + 8 * v7) + 8), v13 != 5) && !v14))
  {
    v14 = *(a1 + 64 * v7 + 48);
  }

  if (v14 == "<")
  {
    result = 0;
  }

  else
  {
    result = v14;
  }

LABEL_22:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195356388(uint64_t result, icu::UVector *this, UErrorCode *a3)
{
  v5 = result;
  for (i = 8; i != 1352; i += 8)
  {
    v7 = *(v5 + i);
    if (v7)
    {
      v8 = v7 == "<";
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      v9 = *(this + 2);
      while (1)
      {
        v10 = __OFSUB__(v9--, 1);
        if (v9 < 0 != v10)
        {
          break;
        }

        v11 = icu::UVector::elementAt(this, v9);
        result = u_strcmp(v7, v11);
        if (!result)
        {
          goto LABEL_11;
        }
      }

      result = icu::UVector::addElement(this, v7, a3);
    }

LABEL_11:
    ;
  }

  return result;
}

const UChar *sub_195356428(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, char *a5)
{
  v27 = a2;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  result = (*(*a3 + 88))(v25, a3, a5);
  if (*a5 > 0)
  {
    return result;
  }

  result = icu::ResourceTable::getKeyAndValue(v25, 0, &v27, a3);
  if (!result)
  {
    return result;
  }

  v9 = 0;
  while (1)
  {
    v10 = (strlen(v27) - 1);
    if (v10 <= 19)
    {
      break;
    }

LABEL_29:
    result = icu::ResourceTable::getKeyAndValue(v25, ++v9, &v27, a3);
    if (!result)
    {
      return result;
    }
  }

  v11 = *(*(a1 + 8) + v10 + 1352);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  result = (*(*a3 + 88))(v23, a3, a5);
  if (*a5 > 0)
  {
    return result;
  }

  if (!icu::ResourceTable::getKeyAndValue(v23, 0, &v27, a3))
  {
LABEL_25:
    v20 = *(a1 + 8) + 1352;
    if (!*(v20 + v10))
    {
      *(v20 + v10) = v11;
      v21 = *(a1 + 8);
      if (v10 > *(v21 + 1373))
      {
        *(v21 + 1373) = v10;
      }

      *(v21 + 1374) = 0;
    }

    goto LABEL_29;
  }

  v13 = 0;
  v14 = 8 * v10;
  while (1)
  {
    result = icu::StandardPlural::indexFromString(v27, a5, v12);
    if (*a5 > 0)
    {
      return result;
    }

    v15 = result + v14;
    if (!*(*(a1 + 8) + 8 * (result + v14) + 8))
    {
      v22 = 0;
      result = (*(*a3 + 32))(a3, &v22, a5);
      if (*a5 > 0)
      {
        return result;
      }

      v16 = result;
      if (!u_strcmp(result, "0"))
      {
        v22 = 0;
        v16 = "<";
      }

      *(*(a1 + 8) + 8 * v15 + 8) = v16;
      if (!v11)
      {
        v17 = v22;
        if (v22 < 1)
        {
LABEL_23:
          v11 = 0;
        }

        else
        {
          v18 = 0;
          do
          {
            v19 = *v16;
            v16 += 2;
            if (v19 == 48)
            {
              ++v18;
            }

            else if (v18 > 0)
            {
              goto LABEL_22;
            }

            --v17;
          }

          while (v17);
          if (v18 < 1)
          {
            goto LABEL_23;
          }

LABEL_22:
          v11 = (v18 + ~v10);
        }
      }
    }

    if (!icu::ResourceTable::getKeyAndValue(v23, ++v13, &v27, a3))
    {
      goto LABEL_25;
    }
  }
}

uint64_t sub_1953566CC(uint64_t a1, int a2, uint64_t a3, const char *a4, int a5, uint64_t a6, icu::number::impl::MutablePatternModifier *a7, int a8, uint64_t a9, UErrorCode *a10)
{
  *a1 = &unk_1F093ECD8;
  *(a1 + 8) = a6;
  *(a1 + 16) = a9;
  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = 12;
  *(a1 + 36) = 0;
  *(a1 + 232) = 0;
  v17 = a1 + 240;
  *(a1 + 240) = &unk_1F093ECB0;
  bzero((a1 + 248), 0x556uLL);
  *(a1 + 1614) = 1;
  sub_195356DD8(a1 + 1616);
  *(a1 + 2064) = a8;
  sub_195355EF8(v17, a3, a4, a2, a5, a10);
  if (a8)
  {
    sub_1953567D8(a1, a7, a10);
  }

  else
  {
    *(a1 + 2056) = a7;
  }

  return a1;
}

void sub_1953567D8(uint64_t a1, icu::number::impl::MutablePatternModifier *a2, UErrorCode *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    icu::UVector::UVector(v15, 12, a3);
    if (*a3 <= 0)
    {
      sub_195356388(a1 + 240, v15, a3);
      if (*a3 <= 0)
      {
        v7 = DWORD2(v15[0]);
        *(a1 + 232) = DWORD2(v15[0]);
        if (*(a1 + 32) < v7)
        {
          if (v7 >= 1)
          {
            v8 = malloc_type_malloc(16 * v7, 0x70040105F9A77uLL);
            if (v8)
            {
              v9 = v8;
              if (*(a1 + 36))
              {
                free(*(a1 + 24));
              }

              *(a1 + 24) = v9;
              *(a1 + 32) = v7;
              *(a1 + 36) = 1;
            }
          }

          if (*a3 > 0)
          {
            goto LABEL_4;
          }

          LODWORD(v7) = *(a1 + 232);
        }

        if (v7 >= 1)
        {
          v14 = icu::UVector::elementAt(v15, 0);
          memset(v20, 0, 64);
          sub_1951F3478(v20, &v14);
          v10 = *(a1 + 24);
          v19 = 0;
          memset(v18, 0, sizeof(v18));
          sub_195356DD8(v18);
          sub_1951F3478(v17, &v14);
          icu::number::impl::PatternParser::parseToPatternInfo(v17, v18, a3, v11);
          icu::UnicodeString::~UnicodeString(v12, v17);
          if (*a3 <= 0)
          {
            icu::number::impl::MutablePatternModifier::setPatternInfo(a2, v18, 44);
            icu::number::impl::MutablePatternModifier::createImmutable(a2, a3);
          }

          sub_195356ED0(v18);
          icu::UnicodeString::~UnicodeString(v13, v20);
        }
      }
    }

LABEL_4:
    icu::UVector::~UVector(v15);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195356A44(uint64_t a1)
{
  *a1 = &unk_1F093ECD8;
  v2 = *(a1 + 232);
  if (v2 >= 1)
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = *(*(a1 + 24) + v3);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v2 = *(a1 + 232);
      }

      v3 += 16;
    }
  }

  sub_195356ED0((a1 + 1616));
  nullsub_17(a1 + 240);
  if (*(a1 + 36))
  {
    free(*(a1 + 24));
  }

  return a1;
}

void sub_195356B0C(uint64_t a1)
{
  sub_195356A44(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195356B44(uint64_t a1, icu::number::impl::DecimalQuantity *a2, uint64_t a3, int *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (*a4 <= 0)
  {
    if (icu::number::impl::DecimalQuantity::isZeroish(a2))
    {
      sub_195374000(a3 + 104, a2, a4);
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v8 = sub_195373EE8(a3 + 104, a2, a1 + 240, a4);
      if (icu::number::impl::DecimalQuantity::isZeroish(a2))
      {
        Magnitude = 0;
      }

      else
      {
        Magnitude = icu::number::impl::DecimalQuantity::getMagnitude(a2);
      }

      v9 = Magnitude - v8;
    }

    v11 = sub_19535623C(a1 + 240, v9, *(a1 + 8), a2);
    v24 = v11;
    if (v11)
    {
      if (*(a1 + 2064))
      {
        if (*(a1 + 232) >= 1)
        {
          v12 = v11;
          v13 = 0;
          v14 = 0;
          while (1)
          {
            v15 = *(a1 + 24);
            if (!u_strcmp(v12, *(v15 + v13 + 8)))
            {
              break;
            }

            ++v14;
            v13 += 16;
            if (v14 >= *(a1 + 232))
            {
              goto LABEL_20;
            }
          }

          icu::number::impl::ImmutablePatternModifier::applyToMicros(*(v15 + v13), a3, a2, a4);
        }
      }

      else
      {
        sub_1951F3478(&v25, &v24);
        icu::number::impl::PatternParser::parseToPatternInfo(&v25, (a1 + 1616), a4, v16);
        icu::UnicodeString::~UnicodeString(v17, &v25);
        icu::number::impl::MutablePatternModifier::setPatternInfo(*(a1 + 2056), a1 + 1616, 44);
        v18 = *(a1 + 2056);
        v19 = icu::number::impl::DecimalQuantity::signum(a2);
        icu::number::impl::MutablePatternModifier::setNumberProperties(v18, v19, 8);
        v20 = *(a1 + 2056);
        if (v20)
        {
          v21 = v20 + 8;
        }

        else
        {
          v21 = 0;
        }

        *(a3 + 200) = v21;
      }
    }

LABEL_20:
    icu::number::impl::DecimalQuantity::adjustExponent(a2, -v8);
    sub_195373EC0(&v25);
    v22 = v26[0];
    *(a3 + 104) = v25;
    *(a3 + 120) = v22;
    *(a3 + 133) = *(v26 + 13);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_195356D68(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195356DA0(uint64_t a1)
{
  nullsub_17(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195356DD8(uint64_t a1)
{
  *a1 = &unk_1F093FA60;
  v2 = a1 + 8;
  *(a1 + 8) = &unk_1F0935D00;
  *(a1 + 16) = 2;
  *(a1 + 72) = 0xFFFFFFFF0000;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  icu::number::impl::DecimalQuantity::DecimalQuantity((a1 + 128));
  *(a1 + 200) = 0;
  *(a1 + 204) = 0;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0xFFFFFFFF0000;
  *(a1 + 284) = 0;
  *(a1 + 288) = 0;
  *(a1 + 292) = 0;
  *(a1 + 280) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  icu::number::impl::DecimalQuantity::DecimalQuantity((a1 + 296));
  *(a1 + 368) = 0;
  *(a1 + 372) = 0;
  *(a1 + 380) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = v2;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  return a1;
}

void sub_195356ED0(void **a1)
{
  *a1 = &unk_1F093FA60;
  v2 = (a1 + 1);
  icu::number::impl::DecimalQuantity::~DecimalQuantity(a1 + 37);
  icu::number::impl::DecimalQuantity::~DecimalQuantity(a1 + 16);
  icu::UnicodeString::~UnicodeString(v3, v2);

  icu::number::impl::AffixPatternProvider::~AffixPatternProvider(a1);
}

uint64_t icu::number::impl::CurrencySymbols::CurrencySymbols(uint64_t a1, const UChar *a2, uint64_t a3, UErrorCode *a4)
{
  icu::CurrencyUnit::CurrencyUnit((a1 + 8), a2);
  icu::StringPiece::StringPiece(&v10, *(a3 + 40));
  v7 = v10;
  v8 = v11;
  *(a1 + 40) = a1 + 53;
  *(a1 + 48) = 40;
  *(a1 + 52) = 0;
  *(a1 + 96) = 0;
  icu::CharString::append((a1 + 40), v7, v8, a4);
  *(a1 + 104) = &unk_1F0935D00;
  *(a1 + 112) = 2;
  *(a1 + 168) = &unk_1F0935D00;
  *(a1 + 176) = 2;
  icu::UnicodeString::setToBogus((a1 + 104));
  icu::UnicodeString::setToBogus((a1 + 168));
  return a1;
}

uint64_t icu::number::impl::CurrencySymbols::CurrencySymbols(uint64_t a1, const UChar *a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  icu::CurrencyUnit::CurrencyUnit(v10, a2);
  icu::number::impl::CurrencySymbols::CurrencySymbols(a1, v10, a3, a5);
  icu::CurrencyUnit::~CurrencyUnit(v10);
  if (*(a4 + 2872))
  {
    icu::UnicodeString::operator=((a1 + 104), (a4 + 520));
  }

  if (*(a4 + 2873))
  {
    icu::UnicodeString::operator=((a1 + 168), (a4 + 584));
  }

  return a1;
}

{
  icu::CurrencyUnit::CurrencyUnit(v10, a2);
  icu::number::impl::CurrencySymbols::CurrencySymbols(a1, v10, a3, a5);
  icu::CurrencyUnit::~CurrencyUnit(v10);
  if (*(a4 + 2872))
  {
    icu::UnicodeString::operator=((a1 + 104), (a4 + 520));
  }

  if (*(a4 + 2873))
  {
    icu::UnicodeString::operator=((a1 + 168), (a4 + 584));
  }

  return a1;
}

uint64_t icu::number::impl::CurrencySymbols::loadSymbol@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1 + 28;
  v9 = 0;
  Name = ucurr_getName((a1 + 28), *(a1 + 40), a2, 0, &v9, a3);
  if (Name == v5)
  {
    return icu::UnicodeString::UnicodeString(a4, v5, 3);
  }

  v8 = Name;
  return icu::UnicodeString::UnicodeString(a4, 1, &v8);
}

icu::UnicodeString *icu::number::impl::CurrencySymbols::getCurrencySymbol@<X0>(UChar **this@<X0>, UErrorCode *a2@<X1>, icu::UnicodeString *a3@<X8>)
{
  if (this[14])
  {
    return icu::number::impl::CurrencySymbols::loadSymbol(this, 0, a2, a3);
  }

  else
  {
    return icu::UnicodeString::UnicodeString(a3, this + 13);
  }
}

icu::UnicodeString *icu::number::impl::CurrencySymbols::getIntlCurrencySymbol@<X0>(UChar **this@<X0>, icu::UnicodeString *a2@<X8>)
{
  if (this[22])
  {
    return icu::UnicodeString::UnicodeString(a2, this + 28, 3);
  }

  else
  {
    return icu::UnicodeString::UnicodeString(a2, this + 21);
  }
}

uint64_t icu::number::impl::CurrencySymbols::getPluralName@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = (a1 + 28);
  v12 = 0;
  v7 = *(a1 + 40);
  Keyword = icu::StandardPlural::getKeyword(a2);
  PluralName = ucurr_getPluralName(v6, v7, 0, Keyword, &v12, a3);
  if (PluralName == v6)
  {
    return icu::UnicodeString::UnicodeString(a4, v6, 3);
  }

  v11 = PluralName;
  return icu::UnicodeString::UnicodeString(a4, 1, &v11);
}

icu::CurrencyUnit *sub_1953572E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, icu::CurrencyUnit *a4@<X8>)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 8))
  {
    v10 = 0;
    v11[0] = 0;
    ucurr_forLocale(*(a2 + 40), v11, 4, &v10);
    if (v10 <= 0)
    {
      v9 = v11;
      result = icu::CurrencyUnit::CurrencyUnit(a4, &v9, a3);
    }

    else
    {
      result = icu::CurrencyUnit::CurrencyUnit(a4);
    }

    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];

    return icu::CurrencyUnit::CurrencyUnit(a4, (a1 + 16));
  }

  return result;
}

icu::number::impl::DecimalQuantity *icu::number::impl::DecimalQuantity::DecimalQuantity(icu::number::impl::DecimalQuantity *this)
{
  *this = &unk_1F093EDA8;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 32) = 0;
  icu::number::impl::DecimalQuantity::setBcdToZero(this);
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_1F093EDA8;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 32) = 0;
  icu::number::impl::DecimalQuantity::setBcdToZero(this);
  *(this + 20) = 0;
  return this;
}

void icu::number::impl::DecimalQuantity::setBcdToZero(void **this)
{
  if (*(this + 64) == 1)
  {
    free(this[6]);
    *(this + 64) = 0;
  }

  this[6] = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 21) = 0;
  this[3] = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
}

void icu::number::impl::DecimalQuantity::~DecimalQuantity(void **this)
{
  *this = &unk_1F093EDA8;
  if (*(this + 64) == 1)
  {
    free(this[6]);
    this[6] = 0;
    *(this + 64) = 0;
  }
}

{
  *this = &unk_1F093EDA8;
  if (*(this + 64) == 1)
  {
    free(this[6]);
    this[6] = 0;
    *(this + 64) = 0;
  }
}

{
  *this = &unk_1F093EDA8;
  if (*(this + 64) == 1)
  {
    free(this[6]);
    this[6] = 0;
    *(this + 64) = 0;
  }

  JUMPOUT(0x19A8B2600);
}

icu::number::impl::DecimalQuantity *icu::number::impl::DecimalQuantity::DecimalQuantity(icu::number::impl::DecimalQuantity *this, uint64_t a2)
{
  *this = &unk_1F093EDA8;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 32) = 0;
  return icu::number::impl::DecimalQuantity::operator=(this, a2);
}

{
  *this = &unk_1F093EDA8;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 32) = 0;
  return icu::number::impl::DecimalQuantity::operator=(this, a2);
}

{
  *this = &unk_1F093EDA8;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 32) = 0;
  return icu::number::impl::DecimalQuantity::operator=(this, a2);
}

{
  *this = &unk_1F093EDA8;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 9) = 0;
  *(this + 32) = 0;
  return icu::number::impl::DecimalQuantity::operator=(this, a2);
}

icu::number::impl::DecimalQuantity *icu::number::impl::DecimalQuantity::operator=(icu::number::impl::DecimalQuantity *this, uint64_t a2)
{
  if (this != a2)
  {
    icu::number::impl::DecimalQuantity::copyBcdFrom(this, a2);
    *(this + 8) = *(a2 + 8);
    *(this + 36) = *(a2 + 36);
    *(this + 12) = *(a2 + 12);
    *(this + 10) = *(a2 + 20);
    *(this + 3) = *(a2 + 24);
    *(this + 8) = *(a2 + 32);
    *(this + 11) = *(a2 + 44);
  }

  return this;
}

{
  if (this != a2)
  {
    icu::number::impl::DecimalQuantity::moveBcdFrom(this, a2);
    *(this + 8) = *(a2 + 8);
    *(this + 36) = *(a2 + 36);
    *(this + 12) = *(a2 + 12);
    *(this + 10) = *(a2 + 20);
    *(this + 3) = *(a2 + 24);
    *(this + 8) = *(a2 + 32);
    *(this + 11) = *(a2 + 44);
  }

  return this;
}

void icu::number::impl::DecimalQuantity::copyBcdFrom(void **this, const icu::number::impl::DecimalQuantity *a2)
{
  icu::number::impl::DecimalQuantity::setBcdToZero(this);
  if (*(a2 + 64) == 1)
  {
    icu::number::impl::DecimalQuantity::ensureCapacity(this, *(a2 + 4));
    v4 = this[6];
    v5 = *(a2 + 6);
    v6 = *(a2 + 4);

    memcpy(v4, v5, v6);
  }

  else
  {
    this[6] = *(a2 + 6);
  }
}

double icu::number::impl::DecimalQuantity::copyFieldsFrom(icu::number::impl::DecimalQuantity *this, const icu::number::impl::DecimalQuantity *a2)
{
  *(this + 8) = *(a2 + 8);
  *(this + 36) = *(a2 + 36);
  *(this + 12) = *(a2 + 12);
  *(this + 10) = *(a2 + 10);
  result = *(a2 + 3);
  *(this + 3) = result;
  *(this + 8) = *(a2 + 8);
  *(this + 11) = *(a2 + 11);
  return result;
}

void icu::number::impl::DecimalQuantity::moveBcdFrom(void **this, icu::number::impl::DecimalQuantity *a2)
{
  icu::number::impl::DecimalQuantity::setBcdToZero(this);
  if (*(a2 + 64) == 1)
  {
    *(this + 64) = 1;
    this[6] = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(a2 + 6) = 0;
    *(a2 + 64) = 0;
  }

  else
  {
    this[6] = *(a2 + 6);
  }
}

void icu::number::impl::DecimalQuantity::clear(void **this)
{
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 20) = 0;
  icu::number::impl::DecimalQuantity::setBcdToZero(this);
}

uint64_t icu::number::impl::DecimalQuantity::decreaseMinIntegerTo(uint64_t this, int a2)
{
  if (*(this + 36) > a2)
  {
    *(this + 36) = a2;
  }

  return this;
}

uint64_t icu::number::impl::DecimalQuantity::increaseMinIntegerTo(uint64_t this, int a2)
{
  if (*(this + 36) < a2)
  {
    *(this + 36) = a2;
  }

  return this;
}

void icu::number::impl::DecimalQuantity::applyMaxInteger(icu::number::impl::DecimalQuantity *this, int a2)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = *(this + 3);
    if (v4 >= a2)
    {

      icu::number::impl::DecimalQuantity::setBcdToZero(this);
    }

    else
    {
      v5 = v2 + v4 - 1;
      v6 = __OFSUB__(v5, a2);
      v7 = v5 - a2;
      if (v7 < 0 == v6)
      {
        icu::number::impl::DecimalQuantity::popFromLeft(this, v7 + 1);

        icu::number::impl::DecimalQuantity::compact(this);
      }
    }
  }
}

uint64_t icu::number::impl::DecimalQuantity::popFromLeft(uint64_t this, int a2)
{
  if (*(this + 64) == 1)
  {
    v2 = *(this + 16);
    if (a2 <= 0)
    {
      LODWORD(v3) = v2 - a2;
    }

    else
    {
      do
      {
        *(*(this + 48) + v2 - 1) = 0;
        v3 = *(this + 16) - a2;
        --v2;
      }

      while (v2 > v3);
    }
  }

  else
  {
    LODWORD(v3) = *(this + 16) - a2;
    *(this + 48) &= ~(-1 << (4 * (*(this + 16) - a2)));
  }

  *(this + 16) = v3;
  return this;
}

void icu::number::impl::DecimalQuantity::compact(icu::number::impl::DecimalQuantity *this)
{
  if (*(this + 64) == 1)
  {
    v2 = *(this + 4);
    if (v2 < 1)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      v3 = 0;
      while (!*(*(this + 6) + v3))
      {
        if (v2 == ++v3)
        {
          goto LABEL_16;
        }
      }
    }

    if (v3 == v2)
    {
      goto LABEL_16;
    }

    icu::number::impl::DecimalQuantity::shiftRight(this, v3);
    v7 = *(this + 4);
    do
    {
      if (v7 <= 0)
      {
        *(this + 4) = v7;
        goto LABEL_33;
      }

      v8 = v7 - 1;
    }

    while (!*(*(this + 6) + v7-- - 1));
    *(this + 4) = v8 + 1;
    if ((v8 + 1) > 0x10)
    {
      return;
    }

LABEL_33:

    icu::number::impl::DecimalQuantity::switchStorage(this);
  }

  else
  {
    v4 = *(this + 6);
    if (!v4)
    {
LABEL_16:

      icu::number::impl::DecimalQuantity::setBcdToZero(this);
      return;
    }

    v5 = *(this + 4);
    if (v5 < 1)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      v6 = 0;
      while (v6 > 0xF || ((v4 >> (4 * v6)) & 0xF) == 0)
      {
        if (++v6 == v5)
        {
          LODWORD(v6) = *(this + 4);
          break;
        }
      }
    }

    v10 = v4 >> (4 * v6);
    *(this + 6) = v10;
    *(this + 3) += v6;
    v11 = v5 & (v5 >> 31);
    v12 = v5 - 1;
    v13 = 4 * v5 - 4;
    while (1)
    {
      v14 = __OFSUB__(v5, 1);
      LODWORD(v5) = v5 - 1;
      if (v5 < 0 != v14)
      {
        break;
      }

      v15 = v13;
      v13 -= 4;
      v16 = v12-- & 0xFFFFFFF0;
      if (!v16 && ((15 << (v15 & 0xFC)) & v10) != 0)
      {
        v11 = v5 + 1;
        break;
      }
    }

    *(this + 4) = v11;
  }
}

void icu::number::impl::DecimalQuantity::roundToIncrement(icu::number::impl::DecimalQuantity *a1, unint64_t a2, int a3, unsigned int a4, UErrorCode *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  *v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = &unk_1F093EDA8;
  BYTE8(v14) = 0;
  *(&v11 + 4) = 0;
  WORD6(v11) = 0;
  icu::number::impl::DecimalQuantity::setToLong(&v10, a2);
  icu::number::impl::DecimalQuantity::adjustMagnitude(&v10, a3);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  icu::number::impl::DecNum::DecNum(v15);
  icu::number::impl::DecimalQuantity::toDecNum(&v10, v15, a5);
  if (*a5 <= 0)
  {
    icu::number::impl::DecimalQuantity::divideBy(a1, v15, a5);
    if (*a5 <= 0)
    {
      icu::number::impl::DecimalQuantity::roundToMagnitude(a1, 0, a4, 0, a5);
      if (*a5 <= 0)
      {
        icu::number::impl::DecimalQuantity::multiplyBy(a1, v15, a5);
      }
    }
  }

  if (BYTE4(v15[1]))
  {
    free(v15[0]);
  }

  v10 = &unk_1F093EDA8;
  if (BYTE8(v14) == 1)
  {
    free(v13[1]);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void **icu::number::impl::DecimalQuantity::setToLong(void **this, unint64_t a2)
{
  icu::number::impl::DecimalQuantity::setBcdToZero(this);
  *(this + 20) = 0;
  if (a2 >= 0x8000000000000001)
  {
    *(this + 20) = 1;
    a2 = -a2;
LABEL_4:
    icu::number::impl::DecimalQuantity::_setToLong(this, a2);
    icu::number::impl::DecimalQuantity::compact(this);
    return this;
  }

  if (a2)
  {
    goto LABEL_4;
  }

  return this;
}

BOOL icu::number::impl::DecimalQuantity::adjustMagnitude(icu::number::impl::DecimalQuantity *this, int a2)
{
  if (!*(this + 4))
  {
    return 0;
  }

  v4 = uprv_add32_overflow(*(this + 3), a2, this + 3);
  v5 = uprv_add32_overflow(*(this + 8), a2, this + 8);
  v7 = 0;
  return v5 || v4 || uprv_add32_overflow(*(this + 3), *(this + 4), &v7);
}

void **icu::number::impl::DecimalQuantity::toDecNum(icu::number::impl::DecimalQuantity *this, void **a2, UErrorCode *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *(this + 4);
  if (v5)
  {
    v16 = 0;
    *v14 = 0u;
    v15 = 0u;
    sub_195359A14(v14, v5, *a3);
    if (*a3 <= 0)
    {
      LODWORD(v7) = *(this + 4);
      if (v7 >= 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = -1;
        do
        {
          if (*(this + 64) == 1)
          {
            LOBYTE(v11) = *(*(this + 6) + v9);
          }

          else if (v9 <= 0xF)
          {
            v11 = (*(this + 6) >> v8) & 0xFLL;
          }

          else
          {
            LOBYTE(v11) = 0;
          }

          v14[0][v7 + v10] = v11;
          ++v9;
          v7 = *(this + 4);
          --v10;
          v8 += 4;
        }

        while (v9 < v7);
      }

      icu::number::impl::DecNum::setTo(a2, v14[0], v7, *(this + 3), *(this + 20) & 1, a3);
    }

    if (BYTE4(v14[1]))
    {
      free(v14[0]);
    }
  }

  else
  {
    icu::number::impl::DecNum::setTo(a2, "0", a3);
  }

  v12 = *MEMORY[0x1E69E9840];
  return a2;
}

void icu::number::impl::DecimalQuantity::divideBy(icu::number::impl::DecimalQuantity *this, const icu::number::impl::DecNum *a2, UErrorCode *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 4))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    *v7 = 0u;
    v8 = 0u;
    icu::number::impl::DecNum::DecNum(v7);
    icu::number::impl::DecimalQuantity::toDecNum(this, v7, a3);
    if (*a3 <= 0)
    {
      icu::number::impl::DecNum::divideBy(v7, a2, a3);
      if (*a3 <= 0)
      {
        icu::number::impl::DecimalQuantity::setBcdToZero(this);
        *(this + 20) = 0;
        icu::number::impl::DecimalQuantity::_setToDecNum(this, v7, a3);
      }
    }

    if (BYTE4(v7[1]))
    {
      free(v7[0]);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void icu::number::impl::DecimalQuantity::multiplyBy(icu::number::impl::DecimalQuantity *this, const icu::number::impl::DecNum *a2, UErrorCode *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(this + 4))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    *v7 = 0u;
    v8 = 0u;
    icu::number::impl::DecNum::DecNum(v7);
    icu::number::impl::DecimalQuantity::toDecNum(this, v7, a3);
    if (*a3 <= 0)
    {
      icu::number::impl::DecNum::multiplyBy(v7, a2, a3);
      if (*a3 <= 0)
      {
        icu::number::impl::DecimalQuantity::setBcdToZero(this);
        *(this + 20) = 0;
        icu::number::impl::DecimalQuantity::_setToDecNum(this, v7, a3);
      }
    }

    if (BYTE4(v7[1]))
    {
      free(v7[0]);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void **icu::number::impl::DecimalQuantity::setToDecNum(void **this, const icu::number::impl::DecNum *a2, UErrorCode *a3)
{
  icu::number::impl::DecimalQuantity::setBcdToZero(this);
  *(this + 20) = 0;
  icu::number::impl::DecimalQuantity::_setToDecNum(this, a2, a3);
  return this;
}

uint64_t icu::number::impl::DecimalQuantity::adjustToZeroScale(icu::number::impl::DecimalQuantity *this)
{
  v1 = *(this + 3);
  *(this + 3) = 0;
  return v1;
}

double icu::number::impl::DecimalQuantity::getPluralOperand(uint64_t a1, int a2)
{
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        v5 = *(a1 + 20);
        v6 = icu::number::impl::DecimalQuantity::toLong(a1, 1);
        if (v5)
        {
          return -v6;
        }

        else
        {
          return v6;
        }

      case 2:
        v3 = 1;
        break;
      case 3:
        v3 = 0;
        break;
      default:
        return fabs(icu::number::impl::DecimalQuantity::toDouble(a1));
    }

    return icu::number::impl::DecimalQuantity::toFractionLong(a1, v3);
  }

  if (a2 > 5)
  {
    if (a2 == 6 || a2 == 7)
    {
      return *(a1 + 44);
    }

    return fabs(icu::number::impl::DecimalQuantity::toDouble(a1));
  }

  if (a2 == 4)
  {
    v8 = *(a1 + 12);
    if (*(a1 + 40) < v8)
    {
      v8 = *(a1 + 40);
    }

    v2 = -*(a1 + 44) - v8;
  }

  else
  {
    v2 = -(*(a1 + 12) + *(a1 + 44));
  }

  return (v2 & ~(v2 >> 31));
}

uint64_t icu::number::impl::DecimalQuantity::toLong(icu::number::impl::DecimalQuantity *this, int a2)
{
  v2 = *(this + 4);
  v3 = *(this + 3) + *(this + 11);
  v4 = v2 + v3 - 1;
  if (v4 >= 17)
  {
    LODWORD(v5) = 17;
  }

  else
  {
    LODWORD(v5) = v2 + v3 - 1;
  }

  if (a2)
  {
    v5 = v5;
  }

  else
  {
    v5 = v4;
  }

  if ((v5 & 0x80000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = -v3;
    v8 = 4 * v5 - 4 * v3;
    do
    {
      v9 = v7 + v5;
      if (*(this + 64))
      {
        LOBYTE(v10) = 0;
        if ((v9 & 0x80000000) == 0 && v2 > v9)
        {
          LOBYTE(v10) = *(*(this + 6) + v9);
        }
      }

      else if (v9 <= 0xF)
      {
        v10 = (*(this + 6) >> v8) & 0xFLL;
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      v6 = 10 * v6 + v10;
      v8 -= 4;
    }

    while (v5-- > 0);
  }

  if (*(this + 20))
  {
    return -v6;
  }

  else
  {
    return v6;
  }
}

unint64_t icu::number::impl::DecimalQuantity::toFractionLong(icu::number::impl::DecimalQuantity *this, int a2)
{
  v3 = *(this + 11);
  v4 = ~v3;
  v5 = *(this + 3);
  v6 = v5;
  if (a2)
  {
    v6 = *(this + 10);
    if (v6 >= v5)
    {
      v6 = *(this + 3);
    }
  }

  if (v6 > v4)
  {
    return 0;
  }

  result = 0;
  v8 = -v5;
  v9 = 4 * ~(v3 + v5);
  do
  {
    LODWORD(v10) = v8 + v4;
    if (!*(this + 64))
    {
      if (v10 <= 0xF)
      {
        v10 = (*(this + 6) >> v9) & 0xFLL;
        goto LABEL_15;
      }

LABEL_13:
      LOBYTE(v10) = 0;
      goto LABEL_15;
    }

    if ((v10 & 0x80000000) != 0 || *(this + 4) <= v10)
    {
      goto LABEL_13;
    }

    LOBYTE(v10) = *(*(this + 6) + v10);
LABEL_15:
    result = 10 * result + v10;
    if (v4 <= v6)
    {
      break;
    }

    --v4;
    v9 -= 4;
  }

  while (result <= 1.0e18);
  if ((a2 & 1) == 0 && result)
  {
    while (!(result % 0xA))
    {
      v11 = result > 9;
      result /= 0xAuLL;
      if (!v11)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t icu::number::impl::DecimalQuantity::fractionCount(icu::number::impl::DecimalQuantity *this)
{
  v1 = *(this + 3);
  if (*(this + 10) < v1)
  {
    v1 = *(this + 10);
  }

  return (-*(this + 11) - v1) & ~((-*(this + 11) - v1) >> 31);
}

double icu::number::impl::DecimalQuantity::toDouble(icu::number::impl::DecimalQuantity *this)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(*this + 24))(this))
  {
    v2 = NAN;
  }

  else if ((*(*this + 32))(this))
  {
    if (*(this + 20))
    {
      v2 = -INFINITY;
    }

    else
    {
      v2 = INFINITY;
    }
  }

  else
  {
    v10 = 0;
    v13 = 0;
    v9 = 0u;
    v11 = "";
    v12 = "";
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    icu::number::impl::DecimalQuantity::toScientificString(this, &v14);
    v8 = 0;
    if ((BYTE8(v14) & 0x11) != 0)
    {
      v3 = 0;
    }

    else if ((BYTE8(v14) & 2) != 0)
    {
      v3 = (&v14 | 0xA);
    }

    else
    {
      v3 = *(&v15 + 1);
    }

    if ((SWORD4(v14) & 0x8000u) == 0)
    {
      v4 = WORD4(v14) >> 5;
    }

    else
    {
      v4 = HIDWORD(v14);
    }

    v2 = sub_195300C94(&v9, v3, v4, &v8);
    icu::UnicodeString::~UnicodeString(v5, &v14);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

BOOL icu::number::impl::DecimalQuantity::resetExponent(icu::number::impl::DecimalQuantity *this)
{
  result = icu::number::impl::DecimalQuantity::adjustMagnitude(this, *(this + 11));
  *(this + 11) = 0;
  return result;
}

uint64_t icu::number::impl::DecimalQuantity::getUpperDisplayMagnitude(icu::number::impl::DecimalQuantity *this)
{
  v1 = *(this + 4) + *(this + 3);
  if (*(this + 9) > v1)
  {
    v1 = *(this + 9);
  }

  return (v1 - 1);
}

uint64_t icu::number::impl::DecimalQuantity::getLowerDisplayMagnitude(icu::number::impl::DecimalQuantity *this)
{
  v1 = *(this + 3);
  v2 = *(this + 10);
  if (v2 >= v1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t icu::number::impl::DecimalQuantity::getDigit(icu::number::impl::DecimalQuantity *this, int a2)
{
  LODWORD(v2) = a2 - *(this + 3);
  if (*(this + 64) != 1)
  {
    if (v2 <= 0xF)
    {
      v2 = (*(this + 6) >> (4 * v2)) & 0xFLL;
      return v2;
    }

    goto LABEL_6;
  }

  if ((v2 & 0x80000000) != 0 || *(this + 4) <= v2)
  {
LABEL_6:
    LOBYTE(v2) = 0;
    return v2;
  }

  LOBYTE(v2) = *(*(this + 6) + v2);
  return v2;
}

uint64_t icu::number::impl::DecimalQuantity::getDigitPos(icu::number::impl::DecimalQuantity *this, unsigned int a2)
{
  if (*(this + 64) != 1)
  {
    if (a2 <= 0xF)
    {
      v2 = (*(this + 6) >> (4 * a2)) & 0xFLL;
      return v2;
    }

    goto LABEL_6;
  }

  if ((a2 & 0x80000000) != 0 || *(this + 4) <= a2)
  {
LABEL_6:
    LOBYTE(v2) = 0;
    return v2;
  }

  LOBYTE(v2) = *(*(this + 6) + a2);
  return v2;
}

uint64_t icu::number::impl::DecimalQuantity::signum(icu::number::impl::DecimalQuantity *this)
{
  if (*(this + 4))
  {
    if (*(this + 20))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v3 = (*(*this + 32))(this);
    if (*(this + 20))
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
    }

    if (*(this + 20))
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if (v3)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }
}

void **icu::number::impl::DecimalQuantity::setToInt(void **this, int a2)
{
  icu::number::impl::DecimalQuantity::setBcdToZero(this);
  *(this + 20) = 0;
  if (a2 == 0x80000000)
  {
    *(this + 20) = 1;
    a2 = 0x80000000;
  }

  else if (a2 < 0)
  {
    *(this + 20) = 1;
    a2 = -a2;
  }

  else if (!a2)
  {
    return this;
  }

  icu::number::impl::DecimalQuantity::_setToInt(this, a2);
  icu::number::impl::DecimalQuantity::compact(this);
  return this;
}

uint64_t icu::number::impl::DecimalQuantity::_setToInt(uint64_t this, int a2)
{
  if (a2 == 0x80000000)
  {
    *(this + 48) = 0x2147483648;
    *(this + 12) = 0;
    v4 = 10;
  }

  else
  {
    if (a2)
    {
      v2 = 0;
      v3 = 16;
      do
      {
        *(&v5 + 1) = a2 - 10 * (((a2 * 0xCCCCCCCCCCCCCCCDLL) >> 64) >> 3);
        *&v5 = v2;
        v2 = v5 >> 4;
        v6 = a2 + 9;
        --v3;
        a2 /= 10;
      }

      while (v6 > 0x12);
    }

    else
    {
      v2 = 0;
      v3 = 16;
    }

    *(this + 48) = v2 >> (4 * v3);
    *(this + 12) = 0;
    v4 = 16 - v3;
  }

  *(this + 16) = v4;
  return this;
}

void icu::number::impl::DecimalQuantity::readLongToBcd(icu::number::impl::DecimalQuantity *this, uint64_t a2)
{
  v2 = a2;
  if (a2 <= 0x2386F26FC0FFFFLL)
  {
    v6 = 0;
    v7 = 16;
    if (a2)
    {
      do
      {
        *(&v8 + 1) = (v2 % 10);
        *&v8 = v6;
        v6 = v8 >> 4;
        --v7;
        v9 = v2 + 9;
        v2 /= 10;
      }

      while (v9 > 0x12);
    }

    *(this + 6) = v6 >> (4 * v7);
    *(this + 3) = 0;
    LODWORD(v4) = 16 - v7;
  }

  else
  {
    icu::number::impl::DecimalQuantity::ensureCapacity(this, 40);
    v4 = 0;
    do
    {
      *(*(this + 6) + v4++) = v2 % 10;
      v5 = v2 + 9;
      v2 /= 10;
    }

    while (v5 > 0x12);
    *(this + 3) = 0;
  }

  *(this + 4) = v4;
}

uint64_t icu::number::impl::DecimalQuantity::readIntToBcd(uint64_t this, int a2)
{
  v2 = 0;
  v3 = 16;
  if (a2)
  {
    do
    {
      *(&v4 + 1) = a2 - 10 * (((a2 * 0xCCCCCCCCCCCCCCCDLL) >> 64) >> 3);
      *&v4 = v2;
      v2 = v4 >> 4;
      v5 = a2 + 9;
      --v3;
      a2 /= 10;
    }

    while (v5 > 0x12);
  }

  *(this + 48) = v2 >> (4 * v3);
  *(this + 12) = 0;
  *(this + 16) = 16 - v3;
  return this;
}

void icu::number::impl::DecimalQuantity::_setToLong(icu::number::impl::DecimalQuantity *this, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 == 0x8000000000000000)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    *v10 = 0u;
    v11 = 0u;
    icu::number::impl::DecNum::DecNum(v10);
    v9 = U_ZERO_ERROR;
    icu::number::impl::DecNum::setTo(v10, "9.223372036854775808E+18", &v9);
    if (v9 <= U_ZERO_ERROR)
    {
      *(this + 20) |= 1u;
      icu::number::impl::DecimalQuantity::readDecNumberToBcd(this, v10);
    }

    if (BYTE4(v10[1]))
    {
      free(v10[0]);
    }

LABEL_10:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    v3 = 0;
    v4 = 16;
    if (a2)
    {
      do
      {
        *(&v5 + 1) = a2 - 10 * (((a2 * 0xCCCCCCCCCCCCCCCDLL) >> 64) >> 3);
        *&v5 = v3;
        v3 = v5 >> 4;
        v6 = a2 + 9;
        --v4;
        LODWORD(a2) = a2 / 10;
      }

      while (v6 > 0x12);
    }

    *(this + 6) = v3 >> (4 * v4);
    *(this + 3) = 0;
    *(this + 4) = 16 - v4;
    goto LABEL_10;
  }

  v8 = *MEMORY[0x1E69E9840];

  icu::number::impl::DecimalQuantity::readLongToBcd(this, a2);
}

void icu::number::impl::DecimalQuantity::readDecNumberToBcd(icu::number::impl::DecimalQuantity *this, int **a2)
{
  v3 = *a2;
  v4 = **a2;
  if (v4 <= 16)
  {
    if (v4 < 1)
    {
      v5 = 0;
    }

    else
    {
      v7 = 0;
      v5 = 0;
      v8 = v3 + 9;
      do
      {
        v9 = *v8++;
        v5 |= v9 << v7;
        v7 += 4;
      }

      while (4 * v4 != v7);
    }

    *(this + 6) = v5;
    LODWORD(v5) = *v3;
  }

  else
  {
    icu::number::impl::DecimalQuantity::ensureCapacity(this, v4);
    LODWORD(v5) = *v3;
    if (*v3 >= 1)
    {
      v6 = 0;
      do
      {
        *(*(this + 6) + v6) = *(v3 + v6 + 9);
        ++v6;
        v5 = *v3;
      }

      while (v6 < v5);
    }
  }

  *(this + 3) = v3[1];
  *(this + 4) = v5;
}

void **icu::number::impl::DecimalQuantity::setToDouble(void **this, double a2)
{
  icu::number::impl::DecimalQuantity::setBcdToZero(this);
  *(this + 20) = 0;
  if ((*&a2 & 0x8000000000000000) != 0)
  {
    v4 = 1;
    *(this + 20) = 1;
    a2 = -a2;
  }

  else
  {
    v4 = 0;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if (a2 != 0.0)
    {
      icu::number::impl::DecimalQuantity::_setToDoubleFast(this, a2);
      icu::number::impl::DecimalQuantity::compact(this);
    }
  }

  else
  {
    *(this + 20) = v4 | 2;
  }

  return this;
}

void icu::number::impl::DecimalQuantity::_setToDoubleFast(icu::number::impl::DecimalQuantity *this, double a2)
{
  *(this + 21) = 1;
  *(this + 3) = a2;
  *(this + 8) = 0;
  v3 = (*&a2 >> 52) & 0x7FFLL;
  if (v3 <= 0x433 && a2 == a2)
  {

    icu::number::impl::DecimalQuantity::_setToLong(this, a2);
  }

  else if (v3 != 2047 && v3)
  {
    v5 = (1075 - v3) / 3.32192809;
    v6 = v5;
    if (v5 < 0)
    {
      if (v6 > 0xFFFFFFEA)
      {
        v11 = v5;
      }

      else
      {
        v10 = v5;
        do
        {
          v11 = v10 + 22;
          a2 = a2 / 1.0e22;
          v12 = __CFADD__(v10, 43);
          v10 += 22;
        }

        while (!v12);
      }

      v13 = a2 / dbl_195490890[-v11];
    }

    else
    {
      if (v6 < 0x16)
      {
        v8 = v5;
      }

      else
      {
        v7 = v5;
        do
        {
          a2 = a2 * 1.0e22;
          v8 = v7 - 22;
          v9 = v7 > 0x2B;
          v7 -= 22;
        }

        while (v9);
      }

      v13 = a2 * dbl_195490890[v8];
    }

    v14 = uprv_round(v13);
    if (v14)
    {
      icu::number::impl::DecimalQuantity::_setToLong(this, v14);
      *(this + 3) -= v6;
    }
  }

  else
  {

    icu::number::impl::DecimalQuantity::convertToAccurateDouble(this);
  }
}

void icu::number::impl::DecimalQuantity::convertToAccurateDouble(icu::number::impl::DecimalQuantity *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 8);
  *v7 = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v4 = 0;
  v5 = 0;
  icu::double_conversion::DoubleToStringConverter::DoubleToAscii(0, 0, v7, 0x12u, &v6, &v5, &v4, *(this + 3));
  icu::number::impl::DecimalQuantity::setBcdToZero(this);
  icu::number::impl::DecimalQuantity::readDoubleConversionToBcd(this, v7, v5, v4);
  *(this + 3) += v2;
  *(this + 65) = 1;
  v3 = *MEMORY[0x1E69E9840];
}

void icu::number::impl::DecimalQuantity::readDoubleConversionToBcd(icu::number::impl::DecimalQuantity *this, const char *a2, int a3, int a4)
{
  if (a3 <= 16)
  {
    if (a3 < 1)
    {
      v11 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = a3;
      do
      {
        v11 |= (a2[v12 - 1] - 48) << v10;
        v10 += 4;
        --v12;
      }

      while (v12);
    }

    *(this + 6) = v11;
  }

  else
  {
    icu::number::impl::DecimalQuantity::ensureCapacity(this, a3);
    v8 = 0;
    v9 = a3;
    do
    {
      *(*(this + 6) + v8++) = a2[--v9] - 48;
    }

    while (v9);
  }

  *(this + 3) = a4 - a3;
  *(this + 4) = a3;
}

uint64_t icu::number::impl::DecimalQuantity::setToDecNumber(uint64_t a1, const char *a2, int a3, UErrorCode *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  icu::number::impl::DecimalQuantity::setBcdToZero(a1);
  *(a1 + 20) = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  icu::number::impl::DecNum::DecNum(v10);
  icu::number::impl::DecNum::setTo(v10, a2, a3, a4);
  icu::number::impl::DecimalQuantity::_setToDecNum(a1, v10, a4);
  if (BYTE4(v10[1]))
  {
    free(v10[0]);
  }

  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

void icu::number::impl::DecimalQuantity::_setToDecNum(icu::number::impl::DecimalQuantity *this, const icu::number::impl::DecNum *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (icu::number::impl::DecNum::isNegative(a2))
    {
      *(this + 20) |= 1u;
    }

    if (icu::number::impl::DecNum::isNaN(a2))
    {
      v5 = *(this + 20) | 4;
LABEL_8:
      *(this + 20) = v5;
      return;
    }

    if (icu::number::impl::DecNum::isInfinity(a2))
    {
      v5 = *(this + 20) | 2;
      goto LABEL_8;
    }

    if (!icu::number::impl::DecNum::isZero(a2))
    {
      icu::number::impl::DecimalQuantity::readDecNumberToBcd(this, a2);

      icu::number::impl::DecimalQuantity::compact(this);
    }
  }
}

void icu::number::impl::DecimalQuantity::fromExponentString(uint64_t a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) < 0)
  {
    v6 = *(a1 + 12);
  }

  else
  {
    v6 = *(a1 + 8) >> 5;
  }

  if ((icu::UnicodeString::doIndexOf(a1, 0x65u, 0, v6) & 0x80000000) != 0 && (*(a1 + 8) < 0 ? (v7 = *(a1 + 12)) : (v7 = *(a1 + 8) >> 5), (icu::UnicodeString::doIndexOf(a1, 0x63u, 0, v7) & 0x80000000) != 0 && (*(a1 + 8) < 0 ? (v8 = *(a1 + 12)) : (v8 = *(a1 + 8) >> 5), (icu::UnicodeString::doIndexOf(a1, 0x45u, 0, v8) & 0x80000000) != 0 && (*(a1 + 8) < 0 ? (v9 = *(a1 + 12)) : (v9 = *(a1 + 8) >> 5), (icu::UnicodeString::doIndexOf(a1, 0x43u, 0, v9) & 0x80000000) != 0))))
  {
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    icu::number::impl::DecimalQuantity::DecimalQuantity(a3);
    icu::UnicodeString::UnicodeString(v35, a1);
    VisibleFractionCount = icu::number::impl::DecimalQuantity::getVisibleFractionCount(v35);
    icu::UnicodeString::~UnicodeString(v16, v35);
    memset(&v37[1], 0, 56);
    v37[0] = &v37[1] + 5;
    LODWORD(v37[1]) = 40;
    icu::CharString::appendInvariantChars(v37, a1, a2);
    icu::number::impl::DecimalQuantity::setToDecNumber(a3, v37[0], v37[7], a2);
    *(a3 + 40) = -VisibleFractionCount;
    if (BYTE4(v37[1]))
    {
      free(v37[0]);
    }
  }

  else
  {
    if (*(a1 + 8) < 0)
    {
      v10 = *(a1 + 12);
    }

    else
    {
      v10 = *(a1 + 8) >> 5;
    }

    IndexOf = icu::UnicodeString::doLastIndexOf(a1, 101, 0, v10);
    if (IndexOf < 0)
    {
      v12 = *(a1 + 8) < 0 ? *(a1 + 12) : *(a1 + 8) >> 5;
      IndexOf = icu::UnicodeString::doLastIndexOf(a1, 99, 0, v12);
      if (IndexOf < 0)
      {
        v13 = *(a1 + 8) < 0 ? *(a1 + 12) : *(a1 + 8) >> 5;
        IndexOf = icu::UnicodeString::doLastIndexOf(a1, 69, 0, v13);
        if (IndexOf < 0)
        {
          if (*(a1 + 8) < 0)
          {
            v14 = *(a1 + 12);
          }

          else
          {
            v14 = *(a1 + 8) >> 5;
          }

          IndexOf = icu::UnicodeString::doLastIndexOf(a1, 67, 0, v14);
        }
      }
    }

    v17 = IndexOf;
    v18 = IndexOf + 1;
    memset(v44, 0, 64);
    v19 = *(a1 + 8);
    if ((v19 & 0x8000) != 0)
    {
      v20 = *(a1 + 12);
    }

    else
    {
      v20 = v19 >> 5;
    }

    icu::UnicodeString::tempSubString(a1, v18, v20 - v18, v44);
    v22 = *(a1 + 8);
    if (*(a1 + 8) < 0)
    {
      v23 = *(a1 + 12);
    }

    else
    {
      v23 = v22 >> 5;
    }

    if (v23 <= v18)
    {
      v25 = 0;
    }

    else
    {
      if ((v22 & 2) != 0)
      {
        v24 = a1 + 10;
      }

      else
      {
        v24 = *(a1 + 24);
      }

      v25 = *(v24 + 2 * v18) == 45;
    }

    v34 = v25;
    v26 = icu::ICU_Utility::parseAsciiInteger(v44, &v34, v21);
    memset(&v43[4], 0, 32);
    if (v25)
    {
      v27 = -v26;
    }

    else
    {
      v27 = v26;
    }

    memset(v43, 0, 32);
    icu::UnicodeString::tempSubString(a1, 0, v17, v43);
    memset(&v40[1], 0, 48);
    v42 = 0;
    v40[0] = &v40[1] + 5;
    LODWORD(v40[1]) = 40;
    v41 = 0;
    icu::CharString::appendInvariantChars(v40, v43, a2);
    v38 = 0u;
    v39 = 0u;
    memset(v37, 0, sizeof(v37));
    icu::number::impl::DecNum::DecNum(v37);
    icu::number::impl::DecNum::setTo(v37, v40[0], v41, a2);
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 8) = 0u;
    *a3 = &unk_1F093EDA8;
    *(a3 + 36) = 0;
    *(a3 + 44) = 0;
    *(a3 + 65) = 0;
    icu::number::impl::DecimalQuantity::setBcdToZero(a3);
    *(a3 + 20) = 0;
    icu::number::impl::DecimalQuantity::setBcdToZero(a3);
    *(a3 + 20) = 0;
    icu::number::impl::DecimalQuantity::_setToDecNum(a3, v37, a2);
    icu::UnicodeString::UnicodeString(v36, v43);
    v28 = icu::number::impl::DecimalQuantity::getVisibleFractionCount(v36);
    icu::UnicodeString::~UnicodeString(v29, v36);
    v30 = *(a3 + 44) + v27;
    *(a3 + 40) = -v28;
    *(a3 + 44) = v30;
    if (BYTE4(v37[1]))
    {
      free(v37[0]);
    }

    v31 = BYTE4(v40[1]);
    if (BYTE4(v40[1]))
    {
      free(v40[0]);
    }

    icu::UnicodeString::~UnicodeString(v31, v43);
    icu::UnicodeString::~UnicodeString(v32, v44);
  }

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t icu::number::impl::DecimalQuantity::getVisibleFractionCount(uint64_t a1)
{
  if (*(a1 + 8) < 0)
  {
    v2 = *(a1 + 12);
  }

  else
  {
    v2 = *(a1 + 8) >> 5;
  }

  v3 = icu::UnicodeString::doIndexOf(a1, 46, 0, v2);
  result = 0;
  v5 = __CFADD__(v3, 1);
  v6 = v3 + 1;
  if (!v5)
  {
    if (*(a1 + 8) < 0)
    {
      v7 = *(a1 + 12);
    }

    else
    {
      v7 = *(a1 + 8) >> 5;
    }

    return (v7 - v6);
  }

  return result;
}

BOOL icu::number::impl::DecimalQuantity::fitsInLong(icu::number::impl::DecimalQuantity *this, int a2)
{
  if ((*(*this + 32))(this) & 1) != 0 || ((*(*this + 24))(this))
  {
    return 0;
  }

  v4 = *(this + 4);
  if (!v4)
  {
    return 1;
  }

  v5 = *(this + 3);
  if (v5 + *(this + 11) < 0 && !a2)
  {
    return 0;
  }

  if (v4 + v5 - 1 < 18)
  {
    return 1;
  }

  if (v4 + v5 != 19)
  {
    return 0;
  }

  if (v4 < 1)
  {
    return *(this + 20) & 1;
  }

  v7 = 18 - v5;
  v8 = 72 - 4 * v5;
  v9 = &byte_195490940;
  v10 = *(this + 4);
  while (1)
  {
    if (*(this + 64))
    {
      if (v7 < v4)
      {
        LODWORD(v11) = *(*(this + 6) + v7);
        goto LABEL_18;
      }

LABEL_16:
      LODWORD(v11) = 0;
      goto LABEL_18;
    }

    if (v7 > 0xF)
    {
      goto LABEL_16;
    }

    v11 = (*(this + 6) >> v8) & 0xFLL;
LABEL_18:
    v12 = *v9;
    if (v11 != v12)
    {
      return v11 < v12;
    }

    --v7;
    v8 -= 4;
    ++v9;
    if (!--v10)
    {
      return *(this + 20) & 1;
    }
  }
}

icu::UnicodeString *icu::number::impl::DecimalQuantity::toScientificString@<X0>(icu::number::impl::DecimalQuantity *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  if (*(this + 20))
  {
    v18 = 45;
    icu::UnicodeString::doAppend(a2, &v18, 0, 1);
  }

  v4 = *(this + 4);
  if (!v4)
  {
    return icu::UnicodeString::doAppend(a2, L"0E+0", 0, 0xFFFFFFFFLL);
  }

  v5 = v4 - 1;
  if (*(this + 64) == 1)
  {
    if (v4 >= 1)
    {
      LOBYTE(v6) = *(*(this + 6) + v5);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v5 > 0xF)
  {
LABEL_9:
    LOBYTE(v6) = 0;
    goto LABEL_11;
  }

  v6 = (*(this + 6) >> (4 * v5)) & 0xFLL;
LABEL_11:
  icu::UnicodeString::append(a2, v6 + 48);
  if (v4 > 1)
  {
    v18 = 46;
    icu::UnicodeString::doAppend(a2, &v18, 0, 1);
    v8 = (v4 - 2);
    v9 = 4 * v8;
    while (*(this + 64) == 1)
    {
      if (v8 >= *(this + 4))
      {
        goto LABEL_17;
      }

      LOBYTE(v10) = *(*(this + 6) + v8);
LABEL_19:
      icu::UnicodeString::append(a2, v10 + 48);
      v9 -= 4;
      if (v8-- <= 0)
      {
        goto LABEL_21;
      }
    }

    if (v8 <= 0xF)
    {
      v10 = (*(this + 6) >> v9) & 0xFLL;
      goto LABEL_19;
    }

LABEL_17:
    LOBYTE(v10) = 0;
    goto LABEL_19;
  }

LABEL_21:
  v18 = 69;
  icu::UnicodeString::doAppend(a2, &v18, 0, 1);
  quot = *(this + 3) + v5 + *(this + 11);
  if (quot == 0x80000000)
  {
    return icu::UnicodeString::doAppend(a2, "-", 0xBuLL);
  }

  if ((quot & 0x80000000) != 0)
  {
    quot = -quot;
    v13 = 45;
    goto LABEL_27;
  }

  v18 = 43;
  result = icu::UnicodeString::doAppend(a2, &v18, 0, 1);
  if (!quot)
  {
    v13 = 48;
LABEL_27:
    v18 = v13;
    result = icu::UnicodeString::doAppend(a2, &v18, 0, 1);
  }

  v14 = *(a2 + 8);
  v15 = v14;
  v16 = v14 >> 5;
  if (v15 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(a2 + 12);
  }

  if (quot)
  {
    do
    {
      quot = div(quot, 10).quot;
      result = icu::UnicodeString::replace(a2, v17, 0, HIDWORD(quot) + 48);
    }

    while (quot > 0);
  }

  return result;
}

uint64_t sub_195359A14(uint64_t a1, size_t size, int a3)
{
  *a1 = a1 + 13;
  *(a1 + 8) = 20;
  *(a1 + 12) = 0;
  if (size >= 21 && a3 <= 0)
  {
    v4 = size;
    v5 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 12))
      {
        free(*a1);
      }

      *a1 = v6;
      *(a1 + 8) = v4;
      *(a1 + 12) = 1;
    }
  }

  return a1;
}

void icu::number::impl::DecimalQuantity::truncate(icu::number::impl::DecimalQuantity *this)
{
  v2 = *(this + 3);
  if (v2 < 0)
  {
    icu::number::impl::DecimalQuantity::shiftRight(this, -v2);
    *(this + 3) = 0;

    icu::number::impl::DecimalQuantity::compact(this);
  }
}

uint64_t icu::number::impl::DecimalQuantity::shiftRight(uint64_t this, int a2)
{
  if (*(this + 64) == 1)
  {
    v2 = *(this + 16);
    if (v2 <= a2)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      v3 = 0;
      do
      {
        *(*(this + 48) + v3) = *(*(this + 48) + v3 + a2);
        ++v3;
        v2 = *(this + 16);
      }

      while (v3 < v2 - a2);
    }

    if (v3 < v2)
    {
      v3 = v3;
      do
      {
        *(*(this + 48) + v3++) = 0;
        v2 = *(this + 16);
      }

      while (v2 > v3);
    }
  }

  else
  {
    *(this + 48) >>= 4 * a2;
    v2 = *(this + 16);
  }

  *(this + 12) += a2;
  *(this + 16) = v2 - a2;
  return this;
}

void icu::number::impl::DecimalQuantity::roundToMagnitude(uint64_t a1, int a2, unsigned int a3, int a4, int *a5)
{
  while (1)
  {
    v7 = *(a1 + 12);
    v8 = a2 - v7 <= a2 || v7 <= 0;
    if (v8)
    {
      v9 = a2 - v7;
    }

    else
    {
      v9 = 0x80000000;
    }

    if (a2 - v7 < a2 && v7 < 0)
    {
      v11 = 0x7FFFFFFF;
    }

    else
    {
      v11 = v9;
    }

    if (*(a1 + 64) == 1)
    {
      if (v11 < 0)
      {
        LODWORD(v12) = 0;
        goto LABEL_23;
      }

      if (*(a1 + 16) > v11)
      {
        LODWORD(v12) = *(*(a1 + 48) + v11);
        goto LABEL_20;
      }

LABEL_18:
      LODWORD(v12) = 0;
      goto LABEL_20;
    }

    if (v11 > 0xF)
    {
      goto LABEL_18;
    }

    v12 = (*(a1 + 48) >> (4 * v11)) & 0xFLL;
LABEL_20:
    if (v11 > 0)
    {
      v13 = 0;
      goto LABEL_28;
    }

LABEL_23:
    if (!*(a1 + 21) && (!a4 || !v12 || v12 == 5))
    {
      return;
    }

    v13 = 1;
LABEL_28:
    v14 = *(a1 + 16);
    if (!v14)
    {
      return;
    }

    v15 = v11 == 0x80000000 ? 0x80000000 : v11 - 1;
    if (*(a1 + 64))
    {
      LODWORD(v16) = 0;
      if ((v15 & 0x80000000) == 0 && v14 > v15)
      {
        LODWORD(v16) = *(*(a1 + 48) + v15);
      }
    }

    else if (v15 <= 0xF)
    {
      v16 = (*(a1 + 48) >> (4 * v15)) & 0xFLL;
    }

    else
    {
      LODWORD(v16) = 0;
    }

    if (!*(a1 + 21))
    {
      break;
    }

    if (v11 >= -2147483646)
    {
      v17 = v11 - 2;
    }

    else
    {
      v17 = 0x80000000;
    }

    v18 = uprv_max(0, v14 - 14);
    if (v16 <= 4)
    {
      if (v16)
      {
        if (v16 != 4)
        {
          goto LABEL_70;
        }

        if (a4 && v12 != 7 && v12 != 2)
        {
          goto LABEL_132;
        }

        if (v17 < v18)
        {
          goto LABEL_95;
        }

        if (v11 <= -2147483646)
        {
          v19 = -2147483646;
        }

        else
        {
          v19 = v11;
        }

        v20 = v19 - 1;
        v21 = 4 * v19 - 8;
        do
        {
          --v20;
          if (*(a1 + 64))
          {
            if ((v20 & 0x80000000) != 0 || *(a1 + 16) <= v20)
            {
              goto LABEL_133;
            }

            LODWORD(v22) = *(*(a1 + 48) + v20);
          }

          else
          {
            if (v20 > 0xF)
            {
              goto LABEL_133;
            }

            v22 = (*(a1 + 48) >> v21) & 0xFLL;
          }

          if (v22 != 9)
          {
            goto LABEL_133;
          }

          v21 -= 4;
          v23 = 2;
          v24 = 1;
          v25 = 1;
        }

        while (v20 > v18);
        goto LABEL_141;
      }

      if (!a4)
      {
        goto LABEL_115;
      }

      if (v12 > 4)
      {
        if (v12 != 7)
        {
          if (v12 == 5)
          {
LABEL_115:
            if (v17 >= v18)
            {
              if (v11 <= -2147483646)
              {
                v33 = -2147483646;
              }

              else
              {
                v33 = v11;
              }

              v34 = v33 - 1;
              v35 = 4 * v33 - 8;
              do
              {
                --v34;
                if (*(a1 + 64))
                {
                  if ((v34 & 0x80000000) == 0 && *(a1 + 16) > v34 && *(*(a1 + 48) + v34))
                  {
                    goto LABEL_133;
                  }
                }

                else if (v34 <= 0xF && ((*(a1 + 48) >> v35) & 0xF) != 0)
                {
                  goto LABEL_133;
                }

                v35 -= 4;
              }

              while (v34 > v18);
            }

            v24 = 0;
            v25 = 0;
            goto LABEL_134;
          }

          goto LABEL_132;
        }
      }

      else
      {
        if (!v12)
        {
          goto LABEL_115;
        }

        if (v12 != 2)
        {
          goto LABEL_132;
        }
      }

LABEL_129:
      v24 = 0;
      if (v16 < 5)
      {
        v23 = 1;
      }

      else
      {
        v23 = 3;
      }

      goto LABEL_140;
    }

    if (v16 == 5)
    {
      if (!a4 || v12 == 7 || v12 == 2)
      {
        if (v17 >= v18)
        {
          if (v11 <= -2147483646)
          {
            v26 = -2147483646;
          }

          else
          {
            v26 = v11;
          }

          v27 = v26 - 1;
          v28 = 4 * v26 - 8;
          do
          {
            --v27;
            if (*(a1 + 64))
            {
              if ((v27 & 0x80000000) == 0 && *(a1 + 16) > v27 && *(*(a1 + 48) + v27))
              {
                goto LABEL_136;
              }
            }

            else if (v27 <= 0xF && ((*(a1 + 48) >> v28) & 0xF) != 0)
            {
              goto LABEL_136;
            }

            v28 -= 4;
          }

          while (v27 > v18);
        }

LABEL_95:
        v23 = 2;
        v24 = 1;
        goto LABEL_140;
      }

      goto LABEL_132;
    }

    if (v16 != 9)
    {
LABEL_70:
      if (!a4 || v12 == 2 || v12 == 7)
      {
        goto LABEL_129;
      }

LABEL_132:
      if (v12 < 2)
      {
LABEL_133:
        v24 = 0;
        v25 = 1;
LABEL_134:
        v23 = 1;
        goto LABEL_141;
      }

      if (v12 >= 5)
      {
        v24 = 0;
        if (v12 < 7)
        {
          v23 = 1;
        }

        else
        {
          v23 = 3;
        }
      }

      else
      {
LABEL_136:
        v24 = 0;
        v23 = 3;
      }

LABEL_140:
      v25 = 1;
      goto LABEL_141;
    }

    if (a4)
    {
      if (v12 > 6)
      {
        if (v12 == 7)
        {
          goto LABEL_129;
        }

        if (v12 != 9)
        {
          goto LABEL_132;
        }
      }

      else
      {
        if (v12 == 2)
        {
          goto LABEL_129;
        }

        if (v12 != 4)
        {
          goto LABEL_132;
        }
      }
    }

    if (v17 >= v18)
    {
      if (v11 <= -2147483646)
      {
        v29 = -2147483646;
      }

      else
      {
        v29 = v11;
      }

      v30 = v29 - 1;
      v31 = 4 * v29 - 8;
      do
      {
        --v30;
        if (*(a1 + 64))
        {
          if ((v30 & 0x80000000) != 0 || *(a1 + 16) <= v30)
          {
            goto LABEL_136;
          }

          LODWORD(v32) = *(*(a1 + 48) + v30);
        }

        else
        {
          if (v30 > 0xF)
          {
            goto LABEL_136;
          }

          v32 = (*(a1 + 48) >> v31) & 0xFLL;
        }

        if (v32 != 9)
        {
          goto LABEL_136;
        }

        v24 = 0;
        v25 = 0;
        v31 -= 4;
        v23 = 3;
      }

      while (v30 > v18);
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v23 = 3;
    }

LABEL_141:
    if (a3 > 3)
    {
      v25 = 1;
    }

    else
    {
      v24 = 0;
    }

    if (v25 == 1 && !v24 && v15 >= *(a1 + 16) - 14)
    {
      *(a1 + 21) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      if (v13)
      {
        if (!a4 || !v12 || v12 == 5)
        {
          return;
        }

        goto LABEL_175;
      }

      goto LABEL_174;
    }

    icu::number::impl::DecimalQuantity::convertToAccurateDouble(a1);
  }

  if (a4 && v12 != 2 && v12 != 7)
  {
    if (v12 <= 1)
    {
      v23 = 1;
      goto LABEL_176;
    }

    v23 = 3;
    if (v12 < 5)
    {
LABEL_184:
      v40 = v12 == 7 && v23 == 3;
      goto LABEL_187;
    }

    if (v12 < 7)
    {
      v23 = 1;
    }

    else
    {
      v23 = 3;
    }

LABEL_175:
    if ((v12 - 8) < 0xFFFFFFFA)
    {
LABEL_176:
      v39 = 1;
      goto LABEL_190;
    }

    if (v12 == 2 && v23 != 3)
    {
      v39 = 1;
      LODWORD(v12) = 2;
      goto LABEL_190;
    }

    goto LABEL_184;
  }

  if (v16 < 5)
  {
    v23 = 1;
    goto LABEL_174;
  }

  if (v16 == 5)
  {
    LODWORD(v36) = v11 - 2;
    if (v11 >= -2147483646)
    {
      v36 = v36;
    }

    else
    {
      v36 = 0x80000000;
    }

    if ((v36 & 0x80000000) != 0)
    {
LABEL_172:
      v23 = 2;
      goto LABEL_174;
    }

    v37 = 4 * v36;
    while (2)
    {
      if (*(a1 + 64))
      {
        if (v36 < v14)
        {
          LODWORD(v38) = *(*(a1 + 48) + v36);
LABEL_169:
          if (v38)
          {
            break;
          }
        }
      }

      else if (v36 <= 0xF)
      {
        v38 = (*(a1 + 48) >> v37) & 0xFLL;
        goto LABEL_169;
      }

      v37 -= 4;
      v8 = v36-- <= 0;
      if (v8)
      {
        goto LABEL_172;
      }

      continue;
    }
  }

  v23 = 3;
LABEL_174:
  if (a4)
  {
    goto LABEL_175;
  }

  v40 = (v12 & 1) == 0;
LABEL_187:
  v39 = v40;
LABEL_190:
  v41 = sub_19535A414(v39, *(a1 + 20) & 1, v23, a3, a5);
  if (*a5 >= 1)
  {
    return;
  }

  v42 = v41;
  if (v11 >= *(a1 + 16))
  {
    icu::number::impl::DecimalQuantity::setBcdToZero(a1);
    *(a1 + 12) = a2;
  }

  else
  {
    icu::number::impl::DecimalQuantity::shiftRight(a1, v11);
  }

  if (!a4)
  {
    goto LABEL_212;
  }

  if (((v12 < 5) & v42) == 1)
  {
    if (*(a1 + 64) == 1)
    {
      icu::number::impl::DecimalQuantity::ensureCapacity(a1, 1);
      **(a1 + 48) = 0;
    }

    else
    {
      *(a1 + 48) &= 0xFFFFFFFFFFFFFFF0;
    }

LABEL_230:

    icu::number::impl::DecimalQuantity::compact(a1);
    return;
  }

  v43 = *(a1 + 64);
  if (!((v12 < 5) | v42 & 1))
  {
    if (*(a1 + 64))
    {
      icu::number::impl::DecimalQuantity::ensureCapacity(a1, 1);
      LODWORD(v12) = 9;
      **(a1 + 48) = 9;
    }

    else
    {
      *(a1 + 48) = *(a1 + 48) & 0xFFFFFFFFFFFFFFF0 | 9;
      LODWORD(v12) = 9;
    }

LABEL_212:
    if ((v42 & 1) == 0)
    {
      v44 = *(a1 + 64);
      if (v12 == 9)
      {
        v45 = 0;
        v46 = 0;
        if (*(a1 + 64))
        {
          goto LABEL_217;
        }

LABEL_215:
        if (v46 <= 0xF)
        {
          for (i = (*(a1 + 48) >> v45) & 0xFLL; i == 9; LODWORD(i) = *(*(a1 + 48) + v46))
          {
            ++v46;
            v45 += 4;
            if ((*(a1 + 64) & 1) == 0)
            {
              goto LABEL_215;
            }

LABEL_217:
            if (v46 >= *(a1 + 16))
            {
              break;
            }
          }
        }

        icu::number::impl::DecimalQuantity::shiftRight(a1, v46);
        v44 = *(a1 + 64);
      }

      if (v44)
      {
        if (*(a1 + 16) < 1)
        {
          v48 = 1;
        }

        else
        {
          v48 = **(a1 + 48) + 1;
        }

        icu::number::impl::DecimalQuantity::ensureCapacity(a1, 1);
        **(a1 + 48) = v48;
      }

      else
      {
        *(a1 + 48) = ((*(a1 + 48) & 0xFLL) + 1) | *(a1 + 48) & 0xFFFFFFFFFFFFFFF0;
      }

      ++*(a1 + 16);
    }

    goto LABEL_230;
  }

  if (*(a1 + 64))
  {
    icu::number::impl::DecimalQuantity::ensureCapacity(a1, 1);
    **(a1 + 48) = 5;
  }

  else
  {
    *(a1 + 48) = *(a1 + 48) & 0xFFFFFFFFFFFFFFF0 | 5;
  }

  if (!*(a1 + 16))
  {
    *(a1 + 16) = 1;
  }
}

uint64_t sub_19535A414(char a1, unsigned int a2, int a3, int a4, int *a5)
{
  if (*a5 > 0)
  {
    goto LABEL_2;
  }

  if (a4 <= 4)
  {
    if (a4 > 1)
    {
      if (a4 != 2)
      {
        if (a4 != 3 && a3 != 3)
        {
          if (a3 == 2)
          {
            LOBYTE(a2) = a1;
            return a2 & 1;
          }

LABEL_35:
          if (a3 == 1)
          {
            goto LABEL_36;
          }

LABEL_37:
          LOBYTE(a2) = 0;
          *a5 = 65809;
          return a2 & 1;
        }

        goto LABEL_2;
      }

LABEL_36:
      LOBYTE(a2) = 1;
      return a2 & 1;
    }

    if (!a4)
    {
      return a2 & 1;
    }

    if (a4 != 1)
    {
      goto LABEL_37;
    }

LABEL_21:
    LOBYTE(a2) = a2 ^ 1;
    return a2 & 1;
  }

  if (a4 <= 7)
  {
    if (a4 == 5)
    {
      if ((a3 - 1) >= 3)
      {
        goto LABEL_37;
      }

      v6 = (a3 - 1) & 7;
      v7 = 3;
    }

    else
    {
      if (a4 != 6 || (a3 - 1) >= 3)
      {
        goto LABEL_37;
      }

      v6 = (a3 - 1) & 7;
      v7 = 1;
    }

    a2 = v7 >> v6;
    return a2 & 1;
  }

  if (a4 == 8)
  {
    if (a3 != 1)
    {
      if (a3 != 3)
      {
        if (a3 == 2)
        {
          LOBYTE(a2) = a1 ^ 1;
          return a2 & 1;
        }

        goto LABEL_37;
      }

      goto LABEL_2;
    }

    goto LABEL_36;
  }

  if (a4 != 9)
  {
    if (a4 != 10)
    {
      goto LABEL_37;
    }

    if (a3 == 1)
    {
      goto LABEL_36;
    }

    if (a3 == 3)
    {
      goto LABEL_2;
    }

    if (a3 != 2)
    {
      goto LABEL_37;
    }

    goto LABEL_21;
  }

  if (a3 != 3)
  {
    if (a3 == 2)
    {
      return a2 & 1;
    }

    goto LABEL_35;
  }

LABEL_2:
  LOBYTE(a2) = 0;
  return a2 & 1;
}

void icu::number::impl::DecimalQuantity::setDigitPos(const void **this, int a2, int a3)
{
  v3 = a3;
  if (*(this + 64) == 1)
  {
    icu::number::impl::DecimalQuantity::ensureCapacity(this, a2 + 1);
    *(this[6] + a2) = v3;
  }

  else if (a2 < 16)
  {
    this[6] = (this[6] & ~(15 << (4 * a2)) | (a3 << (4 * a2)));
  }

  else
  {
    icu::number::impl::DecimalQuantity::switchStorage(this);
    icu::number::impl::DecimalQuantity::ensureCapacity(this, a2 + 1);
    *(this[6] + a2) = v3;
  }
}

void icu::number::impl::DecimalQuantity::roundToInfinity(icu::number::impl::DecimalQuantity *this)
{
  if (*(this + 21))
  {
    icu::number::impl::DecimalQuantity::convertToAccurateDouble(this);
  }
}

void icu::number::impl::DecimalQuantity::appendDigit(icu::number::impl::DecimalQuantity *this, int a2, int a3, int a4)
{
  if (a2)
  {
    v7 = *(this + 3);
    if (v7 >= 1)
    {
      a3 += v7;
      if (a4)
      {
        *(this + 3) = 0;
      }
    }

    v8 = a3 + 1;
    icu::number::impl::DecimalQuantity::shiftLeft(this, a3 + 1);
    if (*(this + 64) == 1)
    {
      icu::number::impl::DecimalQuantity::ensureCapacity(this, 1);
      **(this + 6) = a2;
      if (!a4)
      {
        return;
      }
    }

    else
    {
      *(this + 6) = *(this + 6) & 0xFFFFFFFFFFFFFFF0 | a2;
      if (!a4)
      {
        return;
      }
    }

    v9 = *(this + 3) + v8;
LABEL_13:
    *(this + 3) = v9;
    return;
  }

  if (a4 && *(this + 4))
  {
    v9 = a3 + *(this + 3) + 1;
    goto LABEL_13;
  }
}

void icu::number::impl::DecimalQuantity::shiftLeft(const void **this, int a2)
{
  if (this[8] & 1) != 0 || *(this + 4) + a2 >= 17 && (icu::number::impl::DecimalQuantity::switchStorage(this), (this[8]))
  {
    icu::number::impl::DecimalQuantity::ensureCapacity(this, *(this + 4) + a2);
    memmove(this[6] + a2, this[6], *(this + 4));
    bzero(this[6], a2);
  }

  else
  {
    this[6] = (this[6] << (4 * a2));
  }

  v4 = *(this + 4) + a2;
  *(this + 3) -= a2;
  *(this + 4) = v4;
}

uint64_t icu::number::impl::DecimalQuantity::toPlainString@<X0>(icu::number::impl::DecimalQuantity *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  if (*(this + 20))
  {
    v19 = 45;
    icu::UnicodeString::doAppend(a2, &v19, 0, 1);
  }

  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(this + 11) + *(this + 3);
    v6 = v5 + v4;
    if (v6 <= *(this + 9))
    {
      v7 = *(this + 9);
    }

    else
    {
      v7 = v6;
    }

    if (v5 >= *(this + 10))
    {
      v8 = *(this + 10);
    }

    else
    {
      v8 = *(this + 11) + *(this + 3);
    }

    if (v7 > 0)
    {
      v9 = v7 + 1;
      v10 = 4 * v7 - 4;
      while (1)
      {
        v11 = *(this + 3) + *(this + 11);
        LODWORD(v12) = v9 - v11 - 2;
        if (*(this + 64) != 1)
        {
          break;
        }

        if ((v12 & 0x80000000) != 0 || *(this + 4) <= v12)
        {
          goto LABEL_17;
        }

        LOBYTE(v12) = *(*(this + 6) + v12);
LABEL_19:
        result = icu::UnicodeString::append(a2, v12 + 48);
        --v9;
        v10 -= 4;
        if (v9 <= 1)
        {
          v14 = -1;
          if (v8 < 0)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }
      }

      if (v12 <= 0xF)
      {
        v12 = (*(this + 6) >> (v10 - 4 * v11)) & 0xFLL;
        goto LABEL_19;
      }

LABEL_17:
      LOBYTE(v12) = 0;
      goto LABEL_19;
    }

    v21 = 48;
    result = icu::UnicodeString::doAppend(a2, &v21, 0, 1);
    v14 = v7 - 1;
    if (v8 < 0)
    {
LABEL_21:
      v22 = 46;
      result = icu::UnicodeString::doAppend(a2, &v22, 0, 1);
    }

LABEL_22:
    if (v14 >= v8)
    {
      for (i = 4 * v14; ; i -= 4)
      {
        v16 = *(this + 3) + *(this + 11);
        LODWORD(v17) = v14 - v16;
        if (*(this + 64) != 1)
        {
          break;
        }

        if ((v17 & 0x80000000) != 0 || *(this + 4) <= v17)
        {
          goto LABEL_29;
        }

        LOBYTE(v17) = *(*(this + 6) + v17);
LABEL_31:
        result = icu::UnicodeString::append(a2, v17 + 48);
        if (v14-- <= v8)
        {
          return result;
        }
      }

      if (v17 <= 0xF)
      {
        v17 = (*(this + 6) >> (i - 4 * v16)) & 0xFLL;
        goto LABEL_31;
      }

LABEL_29:
      LOBYTE(v17) = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v20 = 48;
    return icu::UnicodeString::doAppend(a2, &v20, 0, 1);
  }

  return result;
}

icu::ICU_Utility *icu::number::impl::DecimalQuantity::toExponentString@<X0>(icu::number::impl::DecimalQuantity *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  if (*(this + 20))
  {
    v17 = 45;
    icu::UnicodeString::doAppend(a2, &v17, 0, 1);
  }

  v4 = *(this + 3);
  if (*(this + 4) + v4 <= *(this + 9))
  {
    v5 = *(this + 9);
  }

  else
  {
    v5 = *(this + 4) + v4;
  }

  if (v4 >= *(this + 10))
  {
    v6 = *(this + 10);
  }

  else
  {
    v6 = *(this + 3);
  }

  if (v5 > 0)
  {
    v7 = v5 + 1;
    v8 = 4 * v5 - 4;
    while (1)
    {
      v9 = *(this + 3);
      LODWORD(v10) = v7 - v9 - 2;
      if (*(this + 64) != 1)
      {
        break;
      }

      if ((v10 & 0x80000000) != 0 || *(this + 4) <= v10)
      {
        goto LABEL_16;
      }

      LOBYTE(v10) = *(*(this + 6) + v10);
LABEL_18:
      result = icu::UnicodeString::append(a2, v10 + 48);
      --v7;
      v8 -= 4;
      if (v7 <= 1)
      {
        v12 = -1;
        if (v6 < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    if (v10 <= 0xF)
    {
      v10 = (*(this + 6) >> (v8 - 4 * v9)) & 0xFLL;
      goto LABEL_18;
    }

LABEL_16:
    LOBYTE(v10) = 0;
    goto LABEL_18;
  }

  v18 = 48;
  result = icu::UnicodeString::doAppend(a2, &v18, 0, 1);
  v12 = v5 - 1;
  if (v6 < 0)
  {
LABEL_20:
    v19 = 46;
    result = icu::UnicodeString::doAppend(a2, &v19, 0, 1);
  }

LABEL_21:
  if (v12 >= v6)
  {
    v13 = 4 * v12;
    while (1)
    {
      v14 = *(this + 3);
      LODWORD(v15) = v12 - v14;
      if (*(this + 64) != 1)
      {
        break;
      }

      if ((v15 & 0x80000000) != 0 || *(this + 4) <= v15)
      {
        goto LABEL_28;
      }

      LOBYTE(v15) = *(*(this + 6) + v15);
LABEL_30:
      result = icu::UnicodeString::append(a2, v15 + 48);
      v13 -= 4;
      if (v12-- <= v6)
      {
        goto LABEL_32;
      }
    }

    if (v15 <= 0xF)
    {
      v15 = (*(this + 6) >> (v13 - 4 * v14)) & 0xFLL;
      goto LABEL_30;
    }

LABEL_28:
    LOBYTE(v15) = 0;
    goto LABEL_30;
  }

LABEL_32:
  if (*(this + 11))
  {
    v20 = 99;
    icu::UnicodeString::doAppend(a2, &v20, 0, 1);
    return icu::ICU_Utility::appendNumber(a2, *(this + 11), 0xAu, 1);
  }

  return result;
}

void icu::number::impl::DecimalQuantity::ensureCapacity(const void **this, int a2)
{
  if (a2)
  {
    if (this[8])
    {
      v4 = *(this + 14);
      if (a2 > v4)
      {
        v5 = 2 * a2;
        v6 = malloc_type_malloc(2 * a2, 0x100004077774924uLL);
        memcpy(v6, this[6], v4);
        bzero(&v6[v4], a2 - v4);
        free(this[6]);
        this[6] = v6;
        *(this + 14) = v5;
      }
    }

    else
    {
      v7 = malloc_type_malloc(a2, 0x100004077774924uLL);
      this[6] = v7;
      *(this + 14) = a2;
      bzero(v7, a2);
    }

    *(this + 64) = 1;
  }
}

void icu::number::impl::DecimalQuantity::switchStorage(icu::number::impl::DecimalQuantity *this)
{
  if (*(this + 64) == 1)
  {
    v2 = *(this + 4);
    v3 = *(this + 6);
    if (v2 < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      do
      {
        v4 = v3[v2 - 1] | (16 * v4);
      }

      while (v2-- > 1);
    }

    free(v3);
    *(this + 6) = v4;
    *(this + 64) = 0;
  }

  else
  {
    v6 = *(this + 6);
    icu::number::impl::DecimalQuantity::ensureCapacity(this, 40);
    if (*(this + 4) >= 1)
    {
      v7 = 0;
      do
      {
        *(*(this + 6) + v7) = v6 & 0xF;
        v6 >>= 4;
        ++v7;
      }

      while (v7 < *(this + 4));
    }
  }
}

const char *icu::number::impl::DecimalQuantity::checkHealth(icu::number::impl::DecimalQuantity *this)
{
  v1 = *(this + 4);
  if (*(this + 64) == 1)
  {
    if (!v1)
    {
      return "Z";
    }

    v2 = *(this + 14);
    if (v1 > v2)
    {
      return L"Precision exceeds length of byte array";
    }

    if (v1 < 1)
    {
      return "M";
    }

    v5 = *(this + 6);
    if (!v5[v1 - 1])
    {
      return "M";
    }

    if (*v5)
    {
      result = L"Digit exceeding 10 in byte array";
      v6 = v1;
      v7 = v5;
      while (1)
      {
        v9 = *v7++;
        v8 = v9;
        if (v9 > 9)
        {
          break;
        }

        if (v8 < 0)
        {
          return "D";
        }

        if (!--v6)
        {
          if (v1 >= v2)
          {
            return 0;
          }

          v10 = &v5[v1];
          v11 = v1;
          while (v1 <= v11 || !*v10)
          {
            result = 0;
            ++v10;
            if (v2 <= ++v11)
            {
              return result;
            }
          }

          return "N";
        }
      }

      return result;
    }

    return "L";
  }

  if (v1)
  {
    if (v1 > 16)
    {
      return L"Precision exceeds length of long";
    }

    if ((v1 - 1) > 0xF)
    {
      return "M";
    }

    v4 = *(this + 6);
    if (((v4 >> (4 * (v1 - 1))) & 0xF) == 0)
    {
      return "M";
    }

    if ((v4 & 0xF) == 0)
    {
      return "L";
    }

    v12 = 0;
    result = "D";
    while (v12 > 0xF || ((v4 >> (4 * v12)) & 0xE) <= 9)
    {
      if (++v12 == v1)
      {
        if (v1 != 16)
        {
          goto LABEL_33;
        }

        return 0;
      }
    }
  }

  else
  {
    v4 = *(this + 6);
    if (v4)
    {
      return "V";
    }

    else
    {
LABEL_33:
      v13 = 4 * v1;
      result = L"Nonzero digits outside of range in long";
      while (v1 > 0xF || ((v4 >> v13) & 0xF) == 0)
      {
        LODWORD(v1) = v1 + 1;
        v13 += 4;
        if (v1 == 16)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL icu::number::impl::DecimalQuantity::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  if (v2 != *(a2 + 12))
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v4 = *(a1 + 36);
  if (v4 != *(a2 + 36))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  if (v5 != *(a2 + 40) || *(a1 + 21) != *(a2 + 21))
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  if (*(a1 + 21))
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      return *(a1 + 32) == *(a2 + 32);
    }

    return 0;
  }

  if (v4 <= v3 + v2)
  {
    v4 = v3 + v2;
  }

  if (v5 >= v2)
  {
    v5 = *(a1 + 12);
  }

  v8 = *(a2 + 64);
  v9 = *(a2 + 48);
  v10 = ~v2;
  v11 = 4 * (~v2 + v4);
  do
  {
    v6 = v4 <= v5;
    if (v4 <= v5)
    {
      break;
    }

    v12 = v10 + v4;
    if (*(a1 + 64) == 1)
    {
      LODWORD(v13) = 0;
      if ((v12 & 0x80000000) == 0 && v3 > v12)
      {
        LODWORD(v13) = *(*(a1 + 48) + v12);
      }
    }

    else if (v12 <= 0xF)
    {
      v13 = (*(a1 + 48) >> v11) & 0xFLL;
    }

    else
    {
      LODWORD(v13) = 0;
    }

    if (v8)
    {
      v14 = 0;
      if ((v12 & 0x80000000) == 0 && v3 > v12)
      {
        v14 = *(v9 + v12);
      }
    }

    else
    {
      v14 = v12 <= 0xF ? (v9 >> v11) & 0xF : 0;
    }

    v11 -= 4;
    --v4;
  }

  while (v13 == v14);
  return v6;
}

void icu::number::impl::DecimalQuantity::toString(icu::number::impl::DecimalQuantity *this@<X0>, uint64_t a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v4 = *(this + 4);
  v24 = v25 + 5;
  LODWORD(v25[0]) = 30;
  if (v4 >= 30)
  {
    v5 = v4 + 1;
    v6 = malloc_type_malloc((v4 + 1), 0x100004077774924uLL);
    if (v6)
    {
      v7 = v6;
      if (BYTE4(v25[0]))
      {
        free(v24);
      }

      v24 = v7;
      LODWORD(v25[0]) = v5;
      BYTE4(v25[0]) = 1;
    }
  }

  v8 = *(this + 4);
  if (v8 > 0)
  {
    v9 = 0;
    v10 = -1;
    do
    {
      v11 = v8 + v10;
      if (*(this + 64) == 1)
      {
        LOBYTE(v12) = 0;
        if ((v11 & 0x80000000) == 0 && v8 > v11)
        {
          LOBYTE(v12) = *(*(this + 6) + v11);
        }
      }

      else if (v11 <= 0xF)
      {
        v12 = (*(this + 6) >> (4 * v11)) & 0xFLL;
      }

      else
      {
        LOBYTE(v12) = 0;
      }

      *(v24 + v9++) = v12 + 48;
      v8 = *(this + 4);
      --v10;
    }

    while (v9 < v8);
  }

  *(v24 + v8) = 0;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__str = 0u;
  v18 = 0u;
  if (*(this + 64))
  {
    v13 = "bytes";
  }

  else
  {
    v13 = "long";
  }

  v14 = "-";
  if ((*(this + 20) & 1) == 0)
  {
    v14 = "";
  }

  v15 = v24;
  if (!*(this + 4))
  {
    v15 = "0";
  }

  snprintf(__str, 0x64uLL, "<DecimalQuantity %d:%d %s %s%s%s%d>", *(this + 9), *(this + 10), v13, v14, v15, "E", *(this + 3));
  icu::UnicodeString::UnicodeString(a2, __str, 0xFFFFFFFFLL, 0);
  if (BYTE4(v25[0]))
  {
    free(v24);
  }

  v16 = *MEMORY[0x1E69E9840];
}

icu::number::impl::DecimalFormatProperties *icu::number::impl::DecimalFormatProperties::DecimalFormatProperties(icu::number::impl::DecimalFormatProperties *this)
{
  *this = 1;
  *(this + 8) = 1;
  icu::CurrencyUnit::CurrencyUnit((this + 16));
  *(this + 6) = 0;
  *(this + 56) = 1;
  *(this + 16) = &unk_1F0935D00;
  *(this + 68) = 2;
  *(this + 24) = &unk_1F0935D00;
  *(this + 100) = 2;
  *(this + 32) = &unk_1F0935D00;
  *(this + 132) = 2;
  *(this + 40) = &unk_1F0935D00;
  *(this + 164) = 2;
  *(this + 384) = 1;
  *(this + 49) = &unk_1F0935D00;
  *(this + 200) = 2;
  *(this + 460) = 1;
  *(this + 60) = &unk_1F0935D00;
  *(this + 244) = 2;
  *(this + 68) = &unk_1F0935D00;
  *(this + 276) = 2;
  *(this + 76) = &unk_1F0935D00;
  *(this + 308) = 2;
  *(this + 84) = &unk_1F0935D00;
  *(this + 340) = 2;
  *(this + 744) = 1;
  icu::number::impl::DecimalFormatProperties::clear(this);
  return this;
}

void icu::number::impl::DecimalFormatProperties::clear(icu::number::impl::DecimalFormatProperties *this)
{
  *this = 1;
  *(this + 8) = 1;
  v2 = *(this + 6);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 6) = 0;
  *(this + 56) = 1;
  *(this + 16) = 0;
  *(this + 68) = 0;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(this + 9) = -1;
  *(this + 80) = 1;
  *(this + 21) = 0;
  *(this + 88) = v3;
  *(this + 104) = v3;
  *(this + 15) = 1;
  icu::UnicodeString::setToBogus((this + 128));
  icu::UnicodeString::setToBogus((this + 192));
  icu::UnicodeString::setToBogus((this + 256));
  icu::UnicodeString::setToBogus((this + 320));
  *(this + 384) = 1;
  icu::UnicodeString::setToBogus((this + 392));
  *(this + 228) = 0;
  *(this + 460) = 1;
  *(this + 234) = 0;
  *(this + 118) = 2;
  icu::UnicodeString::setToBogus((this + 480));
  icu::UnicodeString::setToBogus((this + 544));
  icu::UnicodeString::setToBogus((this + 608));
  icu::UnicodeString::setToBogus((this + 672));
  *(this + 92) = 0;
  *(this + 744) = 1;
  *(this + 188) = -1;
  *(this + 378) = 0;
}

uint64_t icu::number::impl::DecimalFormatProperties::_equals(icu::number::impl::DecimalFormatProperties *this, const icu::number::impl::DecimalFormatProperties *a2, unsigned int a3)
{
  v6 = *a2;
  if (*this & 1) != 0 || (v6)
  {
    if (*this)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  else if (*(this + 1) != *(a2 + 1))
  {
    return 0;
  }

  v8 = *(this + 8);
  if (v8 & 1) != 0 || (*(a2 + 8))
  {
    result = 0;
    if (!v8 || !*(a2 + 8))
    {
      return result;
    }
  }

  else if ((icu::MeasureUnit::operator==(this + 16, a2 + 16) & 1) == 0)
  {
    return 0;
  }

  if (*(this + 6) != *(a2 + 6))
  {
    return 0;
  }

  if (*(this + 56) & 1) != 0 || (*(a2 + 56))
  {
    result = 0;
    if (!*(this + 56) || !*(a2 + 56))
    {
      return result;
    }
  }

  else if (*(this + 15) != *(a2 + 15))
  {
    return 0;
  }

  if (*(this + 65) != *(a2 + 65) || *(this + 66) != *(a2 + 66) || *(this + 67) != *(a2 + 67) || *(this + 68) != *(a2 + 68) || *(this + 18) != *(a2 + 18) || *(this + 21) != *(a2 + 21) || *(this + 24) != *(a2 + 24) || *(this + 25) != *(a2 + 25) || *(this + 27) != *(a2 + 27) || *(this + 29) != *(a2 + 29) || *(this + 30) != *(a2 + 30) || *(this + 31) != *(a2 + 31))
  {
    return 0;
  }

  result = sub_195213DE4(this + 128, a2 + 128);
  if (result)
  {
    result = sub_195213DE4(this + 256, a2 + 256);
    if (result)
    {
      if (*(this + 384) & 1) != 0 || (*(a2 + 384))
      {
        result = 0;
        if (!*(this + 384) || !*(a2 + 384))
        {
          return result;
        }
      }

      else if (*(this + 97) != *(a2 + 97))
      {
        return 0;
      }

      result = sub_195213DE4(this + 392, a2 + 392);
      if (result)
      {
        result = sub_195213DE4(this + 480, a2 + 480);
        if (result)
        {
          result = sub_195213DE4(this + 608, a2 + 608);
          if (result)
          {
            if (*(this + 92) != *(a2 + 92))
            {
              return 0;
            }

            if (*(this + 744) & 1) != 0 || (*(a2 + 744))
            {
              result = 0;
              if (!*(this + 744) || !*(a2 + 744))
              {
                return result;
              }
            }

            else if (*(this + 187) != *(a2 + 187))
            {
              return 0;
            }

            if (*(this + 188) != *(a2 + 188) || *(this + 756) != *(a2 + 756))
            {
              return 0;
            }

            v10 = *(this + 757);
            v11 = *(a2 + 757);
            if (v10 == v11)
            {
              result = a3;
            }

            else
            {
              result = 0;
            }

            if (v10 == v11 && (a3 & 1) == 0)
            {
              if (*(this + 19) != *(a2 + 19) || *(this + 80) != *(a2 + 80) || *(this + 26) != *(a2 + 26) || *(this + 22) != *(a2 + 22) || *(this + 23) != *(a2 + 23) || *(this + 28) != *(a2 + 28))
              {
                return 0;
              }

              result = sub_195213DE4(this + 192, a2 + 192);
              if (result)
              {
                result = sub_195213DE4(this + 320, a2 + 320);
                if (result)
                {
                  result = sub_195213DE4(this + 544, a2 + 544);
                  if (result)
                  {
                    result = sub_195213DE4(this + 672, a2 + 672);
                    if (result)
                    {
                      if (*(this + 64) != *(a2 + 64) || *(this + 456) != *(a2 + 456) || *(this + 457) != *(a2 + 457))
                      {
                        return 0;
                      }

                      if ((*(this + 460) & 1) == 0 && (*(a2 + 460) & 1) == 0)
                      {
                        if (*(this + 116) != *(a2 + 116))
                        {
                          return 0;
                        }

LABEL_80:
                        if (*(this + 468) == *(a2 + 468) && *(this + 469) == *(a2 + 469))
                        {
                          return *(this + 118) == *(a2 + 118);
                        }

                        return 0;
                      }

                      result = 0;
                      if (*(this + 460) && *(a2 + 460))
                      {
                        goto LABEL_80;
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
  }

  return result;
}

uint64_t icu::number::impl::DecimalFormatProperties::equalsDefaultExceptFastFormat(icu::number::impl::DecimalFormatProperties *this)
{
  if (atomic_load_explicit(&dword_1ED442F90, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1ED442F90))
  {
    icu::number::impl::DecimalFormatProperties::DecimalFormatProperties(&unk_1ED442C98);
    dword_1ED442F94 = 0;
    icu::umtx_initImplPostInit(&dword_1ED442F90);
  }

  return icu::number::impl::DecimalFormatProperties::_equals(this, &unk_1ED442C98, 1u);
}

void *icu::number::impl::DecimalFormatProperties::getDefault(icu::number::impl::DecimalFormatProperties *this)
{
  if (atomic_load_explicit(&dword_1ED442F90, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1ED442F90))
  {
    icu::number::impl::DecimalFormatProperties::DecimalFormatProperties(&unk_1ED442C98);
    dword_1ED442F94 = 0;
    icu::umtx_initImplPostInit(&dword_1ED442F90);
  }

  return &unk_1ED442C98;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::notation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 4) = *a2;
  *(result + 12) = *(a2 + 8);
  return result;
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 4) = *a2;
  *(result + 12) = *(a2 + 8);
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::unit@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = (a3 + 1);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);

  return icu::MeasureUnit::operator=(v4, a2);
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = (a3 + 1);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);

  return icu::MeasureUnit::operator=(v4, a2);
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::adoptUnit@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  if (a2)
  {
    icu::MeasureUnit::operator=(result + 16, a2);
    v5 = *(*a2 + 8);

    return v5(a2);
  }

  return result;
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  if (a2)
  {
    icu::MeasureUnit::operator=(result + 16, a2);
    v5 = *(*a2 + 8);

    return v5(a2);
  }

  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::perUnit@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1) + 40;

  return icu::MeasureUnit::operator=(v4, a2);
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1) + 40;

  return icu::MeasureUnit::operator=(v4, a2);
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::adoptPerUnit@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  if (a2)
  {
    icu::MeasureUnit::operator=(result + 40, a2);
    v5 = *(*a2 + 8);

    return v5(a2);
  }

  return result;
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  if (a2)
  {
    icu::MeasureUnit::operator=(result + 40, a2);
    v5 = *(*a2 + 8);

    return v5(a2);
  }

  return result;
}

__n128 icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::precision@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(v4 + 64) = *a2;
  result = *(a2 + 12);
  *(v4 + 76) = result;
  return result;
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(v4 + 64) = *a2;
  result = *(a2 + 12);
  *(v4 + 76) = result;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::roundingMode@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 96) = a2;
  return result;
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 96) = a2;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::grouping@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  result = icu::number::impl::Grouper::forStrategy(a2);
  *(a3 + 100) = result;
  *(a3 + 108) = v6;
  return result;
}

{
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  result = icu::number::impl::Grouper::forStrategy(a2);
  *(a3 + 100) = result;
  *(a3 + 108) = v6;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::integerWidth@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 124) = *a2;
  *(result + 132) = *(a2 + 8);
  return result;
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 124) = *a2;
  *(result + 132) = *(a2 + 8);
  return result;
}

void icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::symbols(uint64_t a1@<X0>, const icu::DecimalFormatSymbols *a2@<X1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = (icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1) + 136);

  icu::number::impl::SymbolsWrapper::setTo(v4, a2);
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = (icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1) + 136);

  icu::number::impl::SymbolsWrapper::setTo(v4, a2);
}

void *icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::adoptSymbols@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = (icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1) + 136);

  return icu::number::impl::SymbolsWrapper::setTo(v4, a2);
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = (icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1) + 136);

  return icu::number::impl::SymbolsWrapper::setTo(v4, a2);
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::unitWidth@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 152) = a2;
  return result;
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 152) = a2;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::sign@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 156) = a2;
  return result;
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 156) = a2;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::decimal@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 164) = a2;
  return result;
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 164) = a2;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::scale@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1) + 168;

  return icu::number::Scale::operator=(v4, a2);
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1) + 168;

  return icu::number::Scale::operator=(v4, a2);
}

char *icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::usage@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, __int16 a3@<W2>, _OWORD *a4@<X8>)
{
  a4[28] = 0u;
  a4[29] = 0u;
  a4[26] = 0u;
  a4[27] = 0u;
  a4[24] = 0u;
  a4[25] = 0u;
  a4[22] = 0u;
  a4[23] = 0u;
  a4[20] = 0u;
  a4[21] = 0u;
  a4[18] = 0u;
  a4[19] = 0u;
  a4[16] = 0u;
  a4[17] = 0u;
  a4[14] = 0u;
  a4[15] = 0u;
  a4[13] = 0u;
  a4[10] = 0u;
  a4[11] = 0u;
  a4[8] = 0u;
  a4[9] = 0u;
  a4[6] = 0u;
  a4[7] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  a4[12] = 0u;
  v6 = (a4 + 12);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a4, a1);

  return icu::number::impl::StringProp::set(v6, a2, a3);
}

{
  a4[28] = 0u;
  a4[29] = 0u;
  a4[26] = 0u;
  a4[27] = 0u;
  a4[24] = 0u;
  a4[25] = 0u;
  a4[22] = 0u;
  a4[23] = 0u;
  a4[20] = 0u;
  a4[21] = 0u;
  a4[18] = 0u;
  a4[19] = 0u;
  a4[16] = 0u;
  a4[17] = 0u;
  a4[14] = 0u;
  a4[15] = 0u;
  a4[13] = 0u;
  a4[10] = 0u;
  a4[11] = 0u;
  a4[8] = 0u;
  a4[9] = 0u;
  a4[6] = 0u;
  a4[7] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  a4[12] = 0u;
  v6 = (a4 + 12);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a4, a1);

  return icu::number::impl::StringProp::set(v6, a2, a3);
}

char *icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::displayOptions@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  a3[13] = 0u;
  v4 = (a3 + 13);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  if (*a2)
  {
    GrammaticalCaseIdentifier = udispopt_getGrammaticalCaseIdentifier(*a2);
    icu::StringPiece::StringPiece(&v7, GrammaticalCaseIdentifier);
    return icu::number::impl::StringProp::set(v4, v7, v8);
  }

  else
  {

    return icu::number::impl::StringProp::set(v4, 0, 0);
  }
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  a3[13] = 0u;
  v4 = (a3 + 13);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  if (*a2)
  {
    GrammaticalCaseIdentifier = udispopt_getGrammaticalCaseIdentifier(*a2);
    icu::StringPiece::StringPiece(&v7, GrammaticalCaseIdentifier);
    return icu::number::impl::StringProp::set(v4, v7, v8);
  }

  else
  {

    return icu::number::impl::StringProp::set(v4, 0, 0);
  }
}

char *icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::unitDisplayCase@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, __int16 a3@<W2>, _OWORD *a4@<X8>)
{
  a4[28] = 0u;
  a4[29] = 0u;
  a4[26] = 0u;
  a4[27] = 0u;
  a4[24] = 0u;
  a4[25] = 0u;
  a4[22] = 0u;
  a4[23] = 0u;
  a4[20] = 0u;
  a4[21] = 0u;
  a4[18] = 0u;
  a4[19] = 0u;
  a4[16] = 0u;
  a4[17] = 0u;
  a4[14] = 0u;
  a4[15] = 0u;
  a4[11] = 0u;
  a4[12] = 0u;
  a4[9] = 0u;
  a4[10] = 0u;
  a4[7] = 0u;
  a4[8] = 0u;
  a4[5] = 0u;
  a4[6] = 0u;
  a4[3] = 0u;
  a4[4] = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  a4[13] = 0u;
  v6 = (a4 + 13);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a4, a1);

  return icu::number::impl::StringProp::set(v6, a2, a3);
}

{
  a4[28] = 0u;
  a4[29] = 0u;
  a4[26] = 0u;
  a4[27] = 0u;
  a4[24] = 0u;
  a4[25] = 0u;
  a4[22] = 0u;
  a4[23] = 0u;
  a4[20] = 0u;
  a4[21] = 0u;
  a4[18] = 0u;
  a4[19] = 0u;
  a4[16] = 0u;
  a4[17] = 0u;
  a4[14] = 0u;
  a4[15] = 0u;
  a4[11] = 0u;
  a4[12] = 0u;
  a4[9] = 0u;
  a4[10] = 0u;
  a4[7] = 0u;
  a4[8] = 0u;
  a4[5] = 0u;
  a4[6] = 0u;
  a4[3] = 0u;
  a4[4] = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  a4[13] = 0u;
  v6 = (a4 + 13);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a4, a1);

  return icu::number::impl::StringProp::set(v6, a2, a3);
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::padding@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 112) = *a2;
  *(result + 120) = *(a2 + 8);
  return result;
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 112) = *a2;
  *(result + 120) = *(a2 + 8);
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::threshold@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 240) = a2;
  return result;
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 240) = a2;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::forDateFormat@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 245) = a2;
  return result;
}

{
  a3[28] = 0u;
  a3[29] = 0u;
  a3[26] = 0u;
  a3[27] = 0u;
  a3[24] = 0u;
  a3[25] = 0u;
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(result + 245) = a2;
  return result;
}

icu::Locale *icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::macros@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 208) = 0u;
  v5 = a3 + 208;
  *(a3 + 192) = 0u;
  v6 = a3 + 192;
  *(a3 + 16) = 0u;
  v7 = a3 + 16;
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(a3 + 4) = *(a2 + 4);
  *(a3 + 12) = *(a2 + 12);
  icu::MeasureUnit::operator=(v7, a2 + 16);
  icu::MeasureUnit::operator=(a3 + 40, a2 + 40);
  v8 = *(a2 + 112);
  *(a3 + 96) = *(a2 + 96);
  *(a3 + 112) = v8;
  *(a3 + 125) = *(a2 + 125);
  v9 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v9;
  icu::number::impl::SymbolsWrapper::operator=((a3 + 136), (a2 + 136));
  *(a3 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a3 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(v6, a2 + 192);
  icu::number::impl::StringProp::operator=(v5, a2 + 208);
  *(a3 + 224) = *(a2 + 224);
  *(a3 + 238) = *(a2 + 238);

  return icu::Locale::operator=((a3 + 248), a2 + 248);
}

{
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 208) = 0u;
  v5 = a3 + 208;
  *(a3 + 192) = 0u;
  v6 = a3 + 192;
  *(a3 + 16) = 0u;
  v7 = a3 + 16;
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(a3 + 4) = *(a2 + 4);
  *(a3 + 12) = *(a2 + 12);
  icu::MeasureUnit::operator=(v7, a2 + 16);
  icu::MeasureUnit::operator=(a3 + 40, a2 + 40);
  v8 = *(a2 + 112);
  *(a3 + 96) = *(a2 + 96);
  *(a3 + 112) = v8;
  *(a3 + 125) = *(a2 + 125);
  v9 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v9;
  icu::number::impl::SymbolsWrapper::operator=((a3 + 136), (a2 + 136));
  *(a3 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a3 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(v6, a2 + 192);
  icu::number::impl::StringProp::operator=(v5, a2 + 208);
  *(a3 + 224) = *(a2 + 224);
  *(a3 + 238) = *(a2 + 238);

  return icu::Locale::operator=((a3 + 248), a2 + 248);
}

uint64_t icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::macros@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 208) = 0u;
  v5 = a3 + 208;
  *(a3 + 192) = 0u;
  v6 = a3 + 192;
  *(a3 + 16) = 0u;
  v7 = a3 + 16;
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(a3 + 4) = *(a2 + 4);
  *(a3 + 12) = *(a2 + 12);
  icu::MeasureUnit::operator=(v7, a2 + 16);
  icu::MeasureUnit::operator=(a3 + 40, a2 + 40);
  v8 = *(a2 + 112);
  *(a3 + 96) = *(a2 + 96);
  *(a3 + 112) = v8;
  *(a3 + 125) = *(a2 + 125);
  v9 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v9;
  icu::number::impl::SymbolsWrapper::operator=((a3 + 136), (a2 + 136));
  *(a3 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a3 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(v6, a2 + 192);
  icu::number::impl::StringProp::operator=(v5, a2 + 208);
  *(a3 + 224) = *(a2 + 224);
  *(a3 + 238) = *(a2 + 238);

  return icu::Locale::operator=(a3 + 248, a2 + 248);
}

{
  *(a3 + 448) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 208) = 0u;
  v5 = a3 + 208;
  *(a3 + 192) = 0u;
  v6 = a3 + 192;
  *(a3 + 16) = 0u;
  v7 = a3 + 16;
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a3, a1);
  *(a3 + 4) = *(a2 + 4);
  *(a3 + 12) = *(a2 + 12);
  icu::MeasureUnit::operator=(v7, a2 + 16);
  icu::MeasureUnit::operator=(a3 + 40, a2 + 40);
  v8 = *(a2 + 112);
  *(a3 + 96) = *(a2 + 96);
  *(a3 + 112) = v8;
  *(a3 + 125) = *(a2 + 125);
  v9 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v9;
  icu::number::impl::SymbolsWrapper::operator=((a3 + 136), (a2 + 136));
  *(a3 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a3 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(v6, a2 + 192);
  icu::number::impl::StringProp::operator=(v5, a2 + 208);
  *(a3 + 224) = *(a2 + 224);
  *(a3 + 238) = *(a2 + 238);

  return icu::Locale::operator=(a3 + 248, a2 + 248);
}

void icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::clone()
{
  operator new();
}

{
  operator new();
}

BOOL icu::number::NumberFormatterSettings<icu::number::UnlocalizedNumberFormatter>::copyErrorTo(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 1;
  }

  sub_19535D604(a1, a2);
  return *a2 > 0;
}

uint64_t sub_19535D604(uint64_t a1, int *a2)
{
  if (*(a1 + 4) == 3)
  {
    v2 = *(a1 + 8);
  }

  else if (*(a1 + 64) == 10)
  {
    v2 = *(a1 + 72);
  }

  else if (*(a1 + 112) == -3)
  {
    v2 = *(a1 + 116);
  }

  else if (*(a1 + 132) == 1)
  {
    v2 = *(a1 + 124);
  }

  else
  {
    v3 = *(a1 + 136);
    if ((v3 == 2 || v3 == 1) && !*(a1 + 144))
    {
      v2 = 7;
    }

    else
    {
      v2 = *(a1 + 184);
      if (v2 <= 0)
      {
        v2 = *(a1 + 204);
        if (v2 <= 0)
        {
          v2 = *(a1 + 220);
          if (v2 < 1)
          {
            return 0;
          }
        }
      }
    }
  }

  *a2 = v2;
  return 1;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::notation@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 4) = *a2;
  *(result + 12) = *(a2 + 8);
  return result;
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 4) = *a2;
  *(result + 12) = *(a2 + 8);
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::unit@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = (a3 + 1);
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);

  return icu::MeasureUnit::operator=(v4, a2);
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  v4 = (a3 + 1);
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);

  return icu::MeasureUnit::operator=(v4, a2);
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::adoptUnit@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  if (a2)
  {
    icu::MeasureUnit::operator=(result + 16, a2);
    v5 = *(*a2 + 8);

    return v5(a2);
  }

  return result;
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  if (a2)
  {
    icu::MeasureUnit::operator=(result + 16, a2);
    v5 = *(*a2 + 8);

    return v5(a2);
  }

  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::perUnit@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v4 = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1) + 40;

  return icu::MeasureUnit::operator=(v4, a2);
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v4 = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1) + 40;

  return icu::MeasureUnit::operator=(v4, a2);
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::adoptPerUnit@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  if (a2)
  {
    icu::MeasureUnit::operator=(result + 40, a2);
    v5 = *(*a2 + 8);

    return v5(a2);
  }

  return result;
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  if (a2)
  {
    icu::MeasureUnit::operator=(result + 40, a2);
    v5 = *(*a2 + 8);

    return v5(a2);
  }

  return result;
}

__n128 icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::precision@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v4 = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(v4 + 64) = *a2;
  result = *(a2 + 12);
  *(v4 + 76) = result;
  return result;
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v4 = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(v4 + 64) = *a2;
  result = *(a2 + 12);
  *(v4 + 76) = result;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::roundingMode@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 96) = a2;
  return result;
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 96) = a2;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::grouping@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  result = icu::number::impl::Grouper::forStrategy(a2);
  *(a3 + 100) = result;
  *(a3 + 108) = v6;
  return result;
}

{
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  result = icu::number::impl::Grouper::forStrategy(a2);
  *(a3 + 100) = result;
  *(a3 + 108) = v6;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::integerWidth@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 124) = *a2;
  *(result + 132) = *(a2 + 8);
  return result;
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 124) = *a2;
  *(result + 132) = *(a2 + 8);
  return result;
}

void icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::symbols(uint64_t a1@<X0>, const icu::DecimalFormatSymbols *a2@<X1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v4 = (icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1) + 136);

  icu::number::impl::SymbolsWrapper::setTo(v4, a2);
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v4 = (icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1) + 136);

  icu::number::impl::SymbolsWrapper::setTo(v4, a2);
}

void *icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::adoptSymbols@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v4 = (icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1) + 136);

  return icu::number::impl::SymbolsWrapper::setTo(v4, a2);
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v4 = (icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1) + 136);

  return icu::number::impl::SymbolsWrapper::setTo(v4, a2);
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::unitWidth@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 152) = a2;
  return result;
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 152) = a2;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::sign@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 156) = a2;
  return result;
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 156) = a2;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::decimal@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 164) = a2;
  return result;
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 164) = a2;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::scale@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v4 = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1) + 168;

  return icu::number::Scale::operator=(v4, a2);
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v4 = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1) + 168;

  return icu::number::Scale::operator=(v4, a2);
}

char *icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::usage@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, __int16 a3@<W2>, _OWORD *a4@<X8>)
{
  a4[29] = 0u;
  a4[30] = 0u;
  a4[27] = 0u;
  a4[28] = 0u;
  a4[25] = 0u;
  a4[26] = 0u;
  a4[23] = 0u;
  a4[24] = 0u;
  a4[21] = 0u;
  a4[22] = 0u;
  a4[19] = 0u;
  a4[20] = 0u;
  a4[17] = 0u;
  a4[18] = 0u;
  a4[15] = 0u;
  a4[16] = 0u;
  a4[13] = 0u;
  a4[14] = 0u;
  a4[10] = 0u;
  a4[11] = 0u;
  a4[8] = 0u;
  a4[9] = 0u;
  a4[6] = 0u;
  a4[7] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  a4[12] = 0u;
  v6 = (a4 + 12);
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a4, a1);

  return icu::number::impl::StringProp::set(v6, a2, a3);
}

{
  a4[29] = 0u;
  a4[30] = 0u;
  a4[27] = 0u;
  a4[28] = 0u;
  a4[25] = 0u;
  a4[26] = 0u;
  a4[23] = 0u;
  a4[24] = 0u;
  a4[21] = 0u;
  a4[22] = 0u;
  a4[19] = 0u;
  a4[20] = 0u;
  a4[17] = 0u;
  a4[18] = 0u;
  a4[15] = 0u;
  a4[16] = 0u;
  a4[13] = 0u;
  a4[14] = 0u;
  a4[10] = 0u;
  a4[11] = 0u;
  a4[8] = 0u;
  a4[9] = 0u;
  a4[6] = 0u;
  a4[7] = 0u;
  a4[4] = 0u;
  a4[5] = 0u;
  a4[2] = 0u;
  a4[3] = 0u;
  *a4 = 0u;
  a4[1] = 0u;
  a4[12] = 0u;
  v6 = (a4 + 12);
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a4, a1);

  return icu::number::impl::StringProp::set(v6, a2, a3);
}

char *icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::displayOptions@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  a3[13] = 0u;
  v4 = (a3 + 13);
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  if (*a2)
  {
    GrammaticalCaseIdentifier = udispopt_getGrammaticalCaseIdentifier(*a2);
    icu::StringPiece::StringPiece(&v7, GrammaticalCaseIdentifier);
    return icu::number::impl::StringProp::set(v4, v7, v8);
  }

  else
  {

    return icu::number::impl::StringProp::set(v4, 0, 0);
  }
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  a3[13] = 0u;
  v4 = (a3 + 13);
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  if (*a2)
  {
    GrammaticalCaseIdentifier = udispopt_getGrammaticalCaseIdentifier(*a2);
    icu::StringPiece::StringPiece(&v7, GrammaticalCaseIdentifier);
    return icu::number::impl::StringProp::set(v4, v7, v8);
  }

  else
  {

    return icu::number::impl::StringProp::set(v4, 0, 0);
  }
}

char *icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::unitDisplayCase@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, __int16 a3@<W2>, _OWORD *a4@<X8>)
{
  a4[29] = 0u;
  a4[30] = 0u;
  a4[27] = 0u;
  a4[28] = 0u;
  a4[25] = 0u;
  a4[26] = 0u;
  a4[23] = 0u;
  a4[24] = 0u;
  a4[21] = 0u;
  a4[22] = 0u;
  a4[19] = 0u;
  a4[20] = 0u;
  a4[17] = 0u;
  a4[18] = 0u;
  a4[15] = 0u;
  a4[16] = 0u;
  a4[14] = 0u;
  a4[11] = 0u;
  a4[12] = 0u;
  a4[9] = 0u;
  a4[10] = 0u;
  a4[7] = 0u;
  a4[8] = 0u;
  a4[5] = 0u;
  a4[6] = 0u;
  a4[3] = 0u;
  a4[4] = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  a4[13] = 0u;
  v6 = (a4 + 13);
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a4, a1);

  return icu::number::impl::StringProp::set(v6, a2, a3);
}

{
  a4[29] = 0u;
  a4[30] = 0u;
  a4[27] = 0u;
  a4[28] = 0u;
  a4[25] = 0u;
  a4[26] = 0u;
  a4[23] = 0u;
  a4[24] = 0u;
  a4[21] = 0u;
  a4[22] = 0u;
  a4[19] = 0u;
  a4[20] = 0u;
  a4[17] = 0u;
  a4[18] = 0u;
  a4[15] = 0u;
  a4[16] = 0u;
  a4[14] = 0u;
  a4[11] = 0u;
  a4[12] = 0u;
  a4[9] = 0u;
  a4[10] = 0u;
  a4[7] = 0u;
  a4[8] = 0u;
  a4[5] = 0u;
  a4[6] = 0u;
  a4[3] = 0u;
  a4[4] = 0u;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  a4[13] = 0u;
  v6 = (a4 + 13);
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a4, a1);

  return icu::number::impl::StringProp::set(v6, a2, a3);
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::padding@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 112) = *a2;
  *(result + 120) = *(a2 + 8);
  return result;
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 112) = *a2;
  *(result + 120) = *(a2 + 8);
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::threshold@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 240) = a2;
  return result;
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 240) = a2;
  return result;
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::forDateFormat@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 245) = a2;
  return result;
}

{
  a3[29] = 0u;
  a3[30] = 0u;
  a3[27] = 0u;
  a3[28] = 0u;
  a3[25] = 0u;
  a3[26] = 0u;
  a3[23] = 0u;
  a3[24] = 0u;
  a3[21] = 0u;
  a3[22] = 0u;
  a3[19] = 0u;
  a3[20] = 0u;
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(result + 245) = a2;
  return result;
}

icu::Locale *icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::macros@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 208) = 0u;
  v5 = a3 + 208;
  *(a3 + 192) = 0u;
  v6 = a3 + 192;
  *(a3 + 16) = 0u;
  v7 = a3 + 16;
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(a3 + 4) = *(a2 + 4);
  *(a3 + 12) = *(a2 + 12);
  icu::MeasureUnit::operator=(v7, a2 + 16);
  icu::MeasureUnit::operator=(a3 + 40, a2 + 40);
  v8 = *(a2 + 112);
  *(a3 + 96) = *(a2 + 96);
  *(a3 + 112) = v8;
  *(a3 + 125) = *(a2 + 125);
  v9 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v9;
  icu::number::impl::SymbolsWrapper::operator=((a3 + 136), (a2 + 136));
  *(a3 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a3 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(v6, a2 + 192);
  icu::number::impl::StringProp::operator=(v5, a2 + 208);
  *(a3 + 224) = *(a2 + 224);
  *(a3 + 238) = *(a2 + 238);

  return icu::Locale::operator=((a3 + 248), a2 + 248);
}

{
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 208) = 0u;
  v5 = a3 + 208;
  *(a3 + 192) = 0u;
  v6 = a3 + 192;
  *(a3 + 16) = 0u;
  v7 = a3 + 16;
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(a3 + 4) = *(a2 + 4);
  *(a3 + 12) = *(a2 + 12);
  icu::MeasureUnit::operator=(v7, a2 + 16);
  icu::MeasureUnit::operator=(a3 + 40, a2 + 40);
  v8 = *(a2 + 112);
  *(a3 + 96) = *(a2 + 96);
  *(a3 + 112) = v8;
  *(a3 + 125) = *(a2 + 125);
  v9 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v9;
  icu::number::impl::SymbolsWrapper::operator=((a3 + 136), (a2 + 136));
  *(a3 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a3 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(v6, a2 + 192);
  icu::number::impl::StringProp::operator=(v5, a2 + 208);
  *(a3 + 224) = *(a2 + 224);
  *(a3 + 238) = *(a2 + 238);

  return icu::Locale::operator=((a3 + 248), a2 + 248);
}

uint64_t icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::macros@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 208) = 0u;
  v5 = a3 + 208;
  *(a3 + 192) = 0u;
  v6 = a3 + 192;
  *(a3 + 16) = 0u;
  v7 = a3 + 16;
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(a3 + 4) = *(a2 + 4);
  *(a3 + 12) = *(a2 + 12);
  icu::MeasureUnit::operator=(v7, a2 + 16);
  icu::MeasureUnit::operator=(a3 + 40, a2 + 40);
  v8 = *(a2 + 112);
  *(a3 + 96) = *(a2 + 96);
  *(a3 + 112) = v8;
  *(a3 + 125) = *(a2 + 125);
  v9 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v9;
  icu::number::impl::SymbolsWrapper::operator=((a3 + 136), (a2 + 136));
  *(a3 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a3 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(v6, a2 + 192);
  icu::number::impl::StringProp::operator=(v5, a2 + 208);
  *(a3 + 224) = *(a2 + 224);
  *(a3 + 238) = *(a2 + 238);

  return icu::Locale::operator=(a3 + 248, a2 + 248);
}

{
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 208) = 0u;
  v5 = a3 + 208;
  *(a3 + 192) = 0u;
  v6 = a3 + 192;
  *(a3 + 16) = 0u;
  v7 = a3 + 16;
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1);
  *(a3 + 4) = *(a2 + 4);
  *(a3 + 12) = *(a2 + 12);
  icu::MeasureUnit::operator=(v7, a2 + 16);
  icu::MeasureUnit::operator=(a3 + 40, a2 + 40);
  v8 = *(a2 + 112);
  *(a3 + 96) = *(a2 + 96);
  *(a3 + 112) = v8;
  *(a3 + 125) = *(a2 + 125);
  v9 = *(a2 + 80);
  *(a3 + 64) = *(a2 + 64);
  *(a3 + 80) = v9;
  icu::number::impl::SymbolsWrapper::operator=((a3 + 136), (a2 + 136));
  *(a3 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a3 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(v6, a2 + 192);
  icu::number::impl::StringProp::operator=(v5, a2 + 208);
  *(a3 + 224) = *(a2 + 224);
  *(a3 + 238) = *(a2 + 238);

  return icu::Locale::operator=(a3 + 248, a2 + 248);
}

void icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::clone()
{
  operator new();
}

{
  operator new();
}

BOOL icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::copyErrorTo(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 1;
  }

  sub_19535D604(a1, a2);
  return *a2 > 0;
}