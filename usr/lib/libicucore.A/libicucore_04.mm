BOOL icu::Normalizer2Impl::hasCompBoundaryBefore(icu::Normalizer2Impl *this, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 < 0)
  {
    if (v4 != a3)
    {
      if (v5 < 0xE0)
      {
        if (v5 >= 0xC2)
        {
          v10 = *v4 ^ 0x80;
          if (v10 <= 0x3F)
          {
            v5 = *(**(this + 5) + 2 * (*a2 & 0x1F)) + v10;
            goto LABEL_23;
          }
        }
      }

      else if (v5 > 0xEF)
      {
        if (v5 <= 0xF4)
        {
          v11 = *v4;
          if (((byte_195439E50[v11 >> 4] >> (v5 + 16)) & 1) != 0 && a2 + 2 != a3)
          {
            v12 = a2[2] ^ 0x80;
            if (v12 <= 0x3Fu && a2 + 3 != a3)
            {
              v13 = a2[3] ^ 0x80;
              if (v13 <= 0x3Fu)
              {
                v14 = v11 & 0x3F | ((v5 - 240) << 6);
                v15 = *(this + 5);
                if (v14 >= *(v15 + 28))
                {
                  v5 = *(v15 + 20) - 2;
                }

                else
                {
                  v5 = ucptrie_internalSmallU8Index(v15, v14, v12, v13);
                }

                goto LABEL_23;
              }
            }
          }
        }
      }

      else
      {
        v6 = *a2 & 0xF;
        v7 = *v4;
        if (((a00000000000000[v6] >> (v7 >> 5)) & 1) != 0 && a2 + 2 != a3)
        {
          v8 = a2[2] ^ 0x80;
          if (v8 <= 0x3F)
          {
            v5 = *(**(this + 5) + 2 * (v7 & 0x3F | (v6 << 6))) + v8;
            goto LABEL_23;
          }
        }
      }
    }

    v5 = *(*(this + 5) + 20) - 1;
  }

LABEL_23:
  v16 = *(*(*(this + 5) + 8) + 2 * v5);
  if (*(this + 11) > v16)
  {
    return 1;
  }

  if (*(this + 13) <= v16)
  {
    return *(this + 15) > v16;
  }

  return 0;
}

BOOL icu::Normalizer2Impl::hasCompBoundaryAfter(icu::Normalizer2Impl *this, const unsigned __int8 *a2, const unsigned __int8 *a3, int a4)
{
  if (a2 == a3)
  {
    return 1;
  }

  v9 = *(a3 - 1);
  v8 = a3 - 1;
  v10 = v9;
  if (v9 < 0)
  {
    v10 = ucptrie_internalU8PrevIndex(*(this + 5), v10, a2, v8) >> 3;
  }

  v11 = *(*(*(this + 5) + 8) + 2 * v10);

  return sub_1951FD64C(this, v11, a4);
}

uint64_t sub_195201870(unsigned __int8 *a1, uint64_t a2)
{
  if (a2 - a1 < 3 || *a1 != 225)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1[1];
  if (v2 != 135)
  {
    if (v2 == 134)
    {
      v3 = a1[2];
      if ((v3 - 192) >= 0xFFFFFFE8)
      {
        return (v3 - 167);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a1[2] >= -125)
  {
    return 0xFFFFFFFFLL;
  }

  return a1[2] - 103;
}

uint64_t icu::Normalizer2Impl::getPreviousTrailCC(icu::Normalizer2Impl *this, uint8_t *s, uint8_t *a3)
{
  if (s == a3)
  {
    LOBYTE(result) = 0;
  }

  else
  {
    v9 = v3;
    v10 = v4;
    pi = a3 - s - 1;
    v6 = s[a3 - s - 1];
    if ((v6 & 0x80) != 0)
    {
      v6 = utf8_prevCharSafeBody(s, 0, &pi, v6, -1);
    }

    LOBYTE(result) = sub_1951FAB08(this, v6);
  }

  return result;
}

uint64_t icu::Normalizer2Impl::getFCD16FromNormData(icu::Normalizer2Impl *this, unsigned int a2)
{
  v4 = sub_1951FBB98(this, a2);
  if (v4 >= *(this + 13))
  {
    if (v4 >> 10 >= 0x3F)
    {
      return ((v4 >> 1) | (v4 >> 1 << 8));
    }

    if (v4 >= *(this + 17))
    {
LABEL_15:
      LOWORD(v10) = 0;
      return v10;
    }

    if (v4 < *(this + 15))
    {
      if ((v4 & 6) < 3)
      {
        return (v4 & 6) >> 1;
      }

      v4 = sub_1951FC680(this, a2 + (v4 >> 3) - *(this + 14));
    }
  }

  if (v4 <= *(this + 7) || (*(this + 8) | 1) == v4)
  {
    goto LABEL_15;
  }

  v5 = *(this + 15);
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (v6)
  {
    LOWORD(v4) = v7 + *(this + 13);
  }

  v8 = (*(this + 6) + (v4 & 0xFFFE));
  v9 = *v8;
  v10 = v9 >> 8;
  if ((v9 & 0x80) != 0)
  {
    LOWORD(v10) = v10 | (*(v8 - 1) << 8);
  }

  return v10;
}

UChar *icu::Normalizer2Impl::makeFCD(icu::Normalizer2Impl *this, UChar *src, unsigned __int16 *a3, UChar **a4, UErrorCode *a5)
{
  v7 = src;
  if (a3)
  {
    v9 = a3;
    v10 = 0;
    v11 = src;
  }

  else
  {
    v28 = 0;
    do
    {
      v29 = src[v28++];
      if (v29)
      {
        v30 = v29 >= *(this + 6);
      }

      else
      {
        v30 = 1;
      }
    }

    while (!v30);
    v11 = &src[v28 - 1];
    if (a4 && v28 != 1)
    {
      icu::ReorderingBuffer::appendZeroCC(a4, src, &src[v28 - 1], a5);
    }

    if (*a5 > 0)
    {
      return v11;
    }

    if (v11 <= v7)
    {
      v10 = 0;
    }

    else
    {
      v32 = &v7[v28];
      v34 = *(v32 - 2);
      v33 = v32 - 2;
      v10 = sub_1951FAB08(this, v34);
      if (v10 <= 1)
      {
        v7 = v11;
      }

      else
      {
        v7 = v33;
      }
    }

    v9 = u_strchr(v11, 0);
  }

  if (v11 == v9)
  {
    return v11;
  }

  v35 = a4;
  NextFCDBoundary = v11;
  while (2)
  {
    v13 = v10;
    while (1)
    {
      v14 = *NextFCDBoundary;
      if (v14 >= *(this + 6))
      {
        break;
      }

      v13 = ~v14;
LABEL_14:
      ++NextFCDBoundary;
LABEL_26:
      if (NextFCDBoundary == v9)
      {
        if (v35 && NextFCDBoundary != v11)
        {
          icu::ReorderingBuffer::appendZeroCC(v35, v11, NextFCDBoundary, a5);
        }

        return NextFCDBoundary;
      }
    }

    if (*(*(this + 7) + (v14 >> 8)))
    {
      v15 = ((1 << (v14 >> 5)) & *(*(this + 7) + (v14 >> 8))) == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v16 = NextFCDBoundary + 1;
    if ((v14 & 0xFC00) == 0xD800 && v16 != v9)
    {
      v18 = *v16;
      v15 = (v18 & 0xFC00) == 56320;
      v19 = (v14 << 10) - 56613888 + v18;
      if (v15)
      {
        LODWORD(v14) = v19;
      }
    }

    FCD16FromNormData = icu::Normalizer2Impl::getFCD16FromNormData(this, v14);
    v10 = FCD16FromNormData;
    if (FCD16FromNormData <= 0xFF)
    {
      v21 = 4;
      if (v14 < 0x10000)
      {
        v21 = 2;
      }

      NextFCDBoundary = (NextFCDBoundary + v21);
      v13 = FCD16FromNormData;
      goto LABEL_26;
    }

    if (NextFCDBoundary != v11)
    {
      if (v35 && !icu::ReorderingBuffer::appendZeroCC(v35, v11, NextFCDBoundary, a5))
      {
        return NextFCDBoundary;
      }

      if ((v13 & 0x80000000) != 0)
      {
        if (~v13 >= *(this + 4))
        {
          v25 = icu::Normalizer2Impl::getFCD16FromNormData(this, ~v13);
          LOBYTE(v13) = v25;
          v26 = 0x7FFFFFFFFFFFFFFFLL;
          if (v25 <= 1)
          {
            v26 = 0;
          }

          v7 = &NextFCDBoundary[v26];
        }

        else
        {
          LOBYTE(v13) = 0;
          v7 = NextFCDBoundary;
        }
      }

      else
      {
        v22 = NextFCDBoundary - 1;
        v23 = *(NextFCDBoundary - 1);
        if ((v23 & 0xFC00) == 0xDC00 && v11 < v22)
        {
          v24 = *(NextFCDBoundary - 2);
          if ((v24 & 0xFC00) == 0xD800)
          {
            v13 = icu::Normalizer2Impl::getFCD16FromNormData(this, v23 - 56613888 + (v24 << 10));
            v22 = NextFCDBoundary - 2;
          }
        }

        if (v13 <= 1)
        {
          v7 = NextFCDBoundary;
        }

        else
        {
          v7 = v22;
        }
      }

      v11 = NextFCDBoundary;
    }

    v27 = 4;
    if (v14 < 0x10000)
    {
      v27 = 2;
    }

    NextFCDBoundary = (NextFCDBoundary + v27);
    if (v13 <= v10 >> 8)
    {
      if ((v10 & 0xFE) == 0)
      {
        v7 = NextFCDBoundary;
      }

      if (!v35 || icu::ReorderingBuffer::appendZeroCC(v35, v14, a5))
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (!v35)
      {
        return v7;
      }

      icu::ReorderingBuffer::removeSuffix(v35, (v11 - v7) >> 1);
      NextFCDBoundary = icu::Normalizer2Impl::findNextFCDBoundary(this, NextFCDBoundary, v9);
      icu::Normalizer2Impl::decomposeShort(this, v7, NextFCDBoundary, 0, 0, v35, a5);
      v10 = 0;
      v7 = NextFCDBoundary;
      if (*a5 >= 1)
      {
        return NextFCDBoundary;
      }

LABEL_55:
      v11 = NextFCDBoundary;
      if (NextFCDBoundary != v9)
      {
        continue;
      }
    }

    return NextFCDBoundary;
  }
}

unsigned __int16 *icu::Normalizer2Impl::findNextFCDBoundary(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  while (a2 < a3)
  {
    v7 = a2 + 1;
    v6 = *a2;
    if ((v6 & 0xF800) == 0xD800)
    {
      if ((v6 & 0x400) != 0 || v7 == a3)
      {
        v9 = *(a1 + 40);
      }

      else
      {
        v8 = *v7;
        v9 = *(a1 + 40);
        if ((v8 & 0xFC00) == 0xDC00)
        {
          v7 = a2 + 2;
          LODWORD(v6) = v8 + (v6 << 10) - 56613888;
          if (v6 >= *(v9 + 24))
          {
            v10 = *(v9 + 20) - 2;
          }

          else
          {
            v10 = ucptrie_internalSmallIndex(v9, v6);
            v9 = *(a1 + 40);
          }

          goto LABEL_11;
        }
      }

      v10 = *(v9 + 20) - 1;
    }

    else
    {
      v9 = *(a1 + 40);
      v10 = (v6 & 0x3F) + *(*v9 + ((v6 >> 5) & 0x7FE));
    }

LABEL_11:
    if (v6 >= *(a1 + 12))
    {
      v11 = *(*(v9 + 8) + 2 * v10);
      if (!icu::Normalizer2Impl::norm16HasDecompBoundaryBefore(a1, v11))
      {
        a2 = v7;
        if (!icu::Normalizer2Impl::norm16HasDecompBoundaryAfter(a1, v11))
        {
          continue;
        }
      }
    }

    return a2;
  }

  return a2;
}

void *icu::Normalizer2Impl::makeFCDAndAppend(icu::Normalizer2Impl *this, UChar *src, unsigned __int16 *a3, int a4, UChar **a5, icu::ReorderingBuffer *a6, UErrorCode *a7)
{
  v10 = a3;
  v11 = src;
  v29 = *MEMORY[0x1E69E9840];
  if (*(a6 + 2) == *(a6 + 4) || (NextFCDBoundary = icu::Normalizer2Impl::findNextFCDBoundary(this, src, a3), v15 = NextFCDBoundary - v11, NextFCDBoundary == v11))
  {
LABEL_12:
    if (a4)
    {
      result = icu::Normalizer2Impl::makeFCD(this, v11, v10, a6, a7);
    }

    else
    {
      if (!v10)
      {
        v10 = u_strchr(v11, 0);
      }

      result = icu::ReorderingBuffer::appendZeroCC(a6, v11, v10, a7);
    }

    goto LABEL_17;
  }

  v16 = NextFCDBoundary;
  PreviousFCDBoundary = icu::Normalizer2Impl::findPreviousFCDBoundary(this, *(a6 + 2), *(a6 + 4));
  v18 = (*(a6 + 4) - PreviousFCDBoundary) >> 1;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  icu::UnicodeString::UnicodeString(&v25, PreviousFCDBoundary, v18);
  icu::ReorderingBuffer::removeSuffix(a6, v18);
  icu::UnicodeString::operator=(a5, &v25);
  icu::UnicodeString::doAppend(&v25, v11, 0, v15 >> 1);
  if ((BYTE8(v25) & 0x11) != 0)
  {
    v19 = 0;
  }

  else if ((BYTE8(v25) & 2) != 0)
  {
    v19 = (&v25 | 0xA);
  }

  else
  {
    v19 = *(&v26 + 1);
  }

  v20 = WORD4(v25) >> 5;
  if (SWORD4(v25) < 0)
  {
    v20 = HIDWORD(v25);
  }

  icu::Normalizer2Impl::makeFCD(this, v19, &v19[v20], a6, a7);
  v21 = *a7;
  result = icu::UnicodeString::~UnicodeString(v22, &v25);
  if (v21 <= U_ZERO_ERROR)
  {
    v11 = v16;
    goto LABEL_12;
  }

LABEL_17:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t icu::Normalizer2Impl::findPreviousFCDBoundary(icu::Normalizer2Impl *this, unint64_t a2, unint64_t a3)
{
  while (a3 > a2)
  {
    v7 = a3 - 2;
    v6 = *(a3 - 2);
    if ((v6 & 0xF800) == 0xD800)
    {
      if (v7 == a2 || (v6 & 0x400) == 0)
      {
        v9 = *(this + 5);
      }

      else
      {
        v8 = *(a3 - 4);
        v9 = *(this + 5);
        if ((v8 & 0xFC00) == 0xD800)
        {
          LODWORD(v6) = v6 + (v8 << 10) - 56613888;
          if (v6 >= *(v9 + 24))
          {
            v10 = *(v9 + 20) - 2;
          }

          else
          {
            v10 = ucptrie_internalSmallIndex(v9, v6);
            v9 = *(this + 5);
          }

          v7 = a3 - 4;
          goto LABEL_13;
        }
      }

      v10 = *(v9 + 20) - 1;
    }

    else
    {
      v9 = *(this + 5);
      v10 = (v6 & 0x3F) + *(*v9 + ((v6 >> 5) & 0x7FE));
    }

LABEL_13:
    if (v6 >= *(this + 4))
    {
      v11 = *(*(v9 + 8) + 2 * v10);
      if (!icu::Normalizer2Impl::norm16HasDecompBoundaryAfter(this, v11))
      {
        a3 = v7;
        if (!icu::Normalizer2Impl::norm16HasDecompBoundaryBefore(this, v11))
        {
          continue;
        }
      }
    }

    return a3;
  }

  return a3;
}

uint64_t sub_1952021F8(uint64_t a1)
{
  umutablecptrie_close(*a1);
  ucptrie_close(*(a1 + 8));
  icu::UVector::~UVector((a1 + 16));
  return a1;
}

void sub_195202234(uint64_t *a1, unsigned int a2, unsigned int a3, int *a4)
{
  v8 = umutablecptrie_get(*a1, a3);
  if (!a2 || (v8 & 0x3FFFFF) != 0)
  {
    if ((v8 & 0x200000) == 0)
    {
      operator new();
    }

    v10 = icu::UVector::elementAt((a1 + 2), v8 & 0x1FFFFF);
    icu::UnicodeSet::add(v10, a2);
  }

  else
  {
    v9 = *a1;

    umutablecptrie_set(v9, a3, v8 | a2, a4);
  }
}

void icu::Normalizer2Impl::makeCanonIterDataFromNorm16(uint64_t a1, signed int a2, signed int a3, unsigned int a4, uint64_t *a5, int *a6)
{
  if (a4 != 1)
  {
    v8 = a2;
    if (*(a1 + 14) > a4 || *(a1 + 18) <= a4)
    {
      if (*(a1 + 30) <= a4)
      {
        if (*(a1 + 34) <= a4 && a2 <= a3)
        {
          goto LABEL_13;
        }
      }

      else if (a2 <= a3)
      {
LABEL_13:
        if (a4 >> 10 >= 0x3F)
        {
          v11 = 0x80000000;
        }

        else
        {
          v11 = -1073741824;
        }

        if (a3 <= a2)
        {
          v12 = a2;
        }

        else
        {
          v12 = a3;
        }

        v31 = v11;
        v29 = a4 >> 3;
        v30 = v12;
        while (1)
        {
          v13 = umutablecptrie_get(*a5, v8);
          v14 = v13;
          if (*(a1 + 34) <= a4)
          {
            break;
          }

          v15 = *(a1 + 14);
          if (v15 > a4)
          {
            v16 = v13 | 0x40000000;
            goto LABEL_24;
          }

          if (*(a1 + 26) <= a4)
          {
            v17 = a4;
            v18 = v8;
            if (*(a1 + 30) > a4)
            {
              v18 = v8 + v29 - *(a1 + 28);
              v17 = sub_1951FC680(a1, v18);
              v15 = *(a1 + 14);
            }
          }

          else
          {
            v17 = a4;
            v18 = v8;
          }

          if (v17 > v15)
          {
            v19 = (*(a1 + 48) + (v17 & 0xFFFE));
            v20 = *v19;
            if (v8 == v18)
            {
              v16 = v14;
              if ((v20 & 0x80) != 0)
              {
                if (*(v19 - 2))
                {
                  v16 = v14 | 0x80000000;
                }

                else
                {
                  v16 = v14;
                }
              }
            }

            else
            {
              v16 = v14;
            }

            v22 = v20 & 0x1F;
            if ((v20 & 0x1F) != 0)
            {
              v24 = v19 + 1;
              v23 = v19[1];
              if ((v23 & 0xFC00) == 0xD800)
              {
                v23 = (v23 << 10) - 56613888 + v19[2];
                v25 = 2;
              }

              else
              {
                v25 = 1;
              }

              sub_195202234(a5, v8, v23, a6);
              if (v17 >= *(a1 + 18) && v25 < v22)
              {
                do
                {
                  v26 = v25 + 1;
                  v27 = v24[v25];
                  if ((v27 & 0xFC00) == 0xD800)
                  {
                    v25 += 2;
                    v27 = (v27 << 10) - 56613888 + v24[v26];
                  }

                  else
                  {
                    ++v25;
                  }

                  v28 = umutablecptrie_get(*a5, v27);
                  if ((v28 & 0x80000000) == 0)
                  {
                    umutablecptrie_set(*a5, v27, v28 | 0x80000000, a6);
                  }
                }

                while (v25 < v22);
              }

              v12 = v30;
              v11 = v31;
            }

            goto LABEL_24;
          }

          sub_195202234(a5, v8, v18, a6);
LABEL_37:
          if (v8++ == v12)
          {
            return;
          }
        }

        v16 = v13 | v11;
LABEL_24:
        if (v16 != v14)
        {
          umutablecptrie_set(*a5, v8, v16, a6);
        }

        goto LABEL_37;
      }
    }
  }
}

uint64_t icu::Normalizer2Impl::getCanonStartSet(icu::Normalizer2Impl *this, unsigned int a2, icu::UnicodeSet *a3)
{
  v6 = ucptrie_get(*(*(this + 9) + 8), a2);
  if ((v6 & 0x7FFFFFFF) == 0)
  {
    return 0;
  }

  v7 = v6;
  icu::UnicodeSet::clear(a3);
  v8 = v7 & 0x1FFFFF;
  if ((v7 & 0x200000) == 0)
  {
    if (v8)
    {
      icu::UnicodeSet::add(a3, v8);
    }

    if ((v7 & 0x40000000) == 0)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v10 = icu::UVector::elementAt((*(this + 9) + 16), v8);
  icu::UnicodeSet::addAll(a3, v10);
  if ((v7 & 0x40000000) != 0)
  {
LABEL_9:
    v11 = sub_1951FC680(this, a2);
    if (v11 == 2)
    {
      icu::UnicodeSet::add(a3, 588 * a2 - 2514944, 588 * a2 - 2514357);
    }

    else
    {
      v12 = sub_1952028C8(this, v11);
      icu::Normalizer2Impl::addComposites(this, v12, a3);
    }
  }

  return 1;
}

uint64_t sub_1952028C8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 14) > a2 || *(a1 + 34) <= a2)
  {
    if ((a2 + 1024) >= 0x402u)
    {
      v6 = *(a1 + 30);
      v3 = a2 >= v6;
      v7 = a2 - v6;
      if (v3)
      {
        LOWORD(a2) = v7 + *(a1 + 26);
      }

      return *(a1 + 48) + (a2 & 0xFFFE);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 30);
    v3 = a2 >= v2;
    v4 = a2 - v2;
    if (v3)
    {
      LOWORD(a2) = v4 + *(a1 + 26);
    }

    return *(a1 + 48) + (a2 & 0xFFFE) + 2 * (*(*(a1 + 48) + (a2 & 0xFFFE)) & 0x1F) + 2;
  }
}

uint64_t unorm2_swap(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v43 = *MEMORY[0x1E69E9840];
  v13 = udata_swapDataHeader(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a5 && *a5 <= 0)
  {
    v21 = *(a2 + 16);
    v22 = *(a2 + 12);
    if (__PAIR64__(*(a2 + 13), v22) != 0x720000004ELL || *(a2 + 14) != 109 || *(a2 + 15) != 50 || v21 - 1 >= 5)
    {
      v40 = *(a2 + 15);
      v39 = *(a2 + 14);
      udata_printError(a1, "unorm2_swap(): data format %02x.%02x.%02x.%02x (format version %02x) is not recognized as Normalizer2 data\n", v14, v15, v16, v17, v18, v19, v22);
      result = 0;
      v26 = 16;
LABEL_15:
      *a5 = v26;
      goto LABEL_16;
    }

    v23 = v13;
    if (a4)
    {
      v24 = a4 + v13;
    }

    else
    {
      v24 = 0;
    }

    if (v21 == 1)
    {
      v25 = 56;
    }

    else if (v21 == 2)
    {
      v25 = 60;
    }

    else if (v21 >= 5)
    {
      v25 = 88;
    }

    else
    {
      v25 = 76;
    }

    if ((v10 & 0x80000000) == 0)
    {
      v10 = (v10 - v13);
      if (v10 < v25)
      {
        udata_printError(a1, "unorm2_swap(): too few bytes (%d after header) for Normalizer2 data\n", v14, v15, v16, v17, v18, v19, v10);
LABEL_29:
        result = 0;
        v26 = 8;
        goto LABEL_15;
      }
    }

    v28 = 0;
    v29 = (a2 + v13);
    v41 = 0u;
    *__n = 0u;
    do
    {
      *(&__n[-2] + v28) = udata_readInt32(a1, *&v29[v28]);
      v28 += 4;
    }

    while (v28 != 32);
    v36 = HIDWORD(__n[1]);
    if ((v10 & 0x80000000) == 0)
    {
      if (v10 < SHIDWORD(__n[1]))
      {
        udata_printError(a1, "unorm2_swap(): too few bytes (%d after header) for all of Normalizer2 data\n", v30, v31, v32, v33, v34, v35, v10);
        goto LABEL_29;
      }

      if (v29 != v24)
      {
        memcpy(v24, v29, SHIDWORD(__n[1]));
      }

      v37 = v41;
      (*(a1 + 56))(a1, v29, v41, v24, a5);
      v38 = SDWORD1(v41);
      utrie_swapAnyVersion(a1, &v29[v37], DWORD1(v41) - v37, &v24[v37], a5);
      (*(a1 + 48))(a1, &v29[v38], (DWORD2(v41) - v38), &v24[v38], a5);
    }

    result = (v36 + v23);
    goto LABEL_16;
  }

  result = 0;
LABEL_16:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

void icu::Normalizer::Normalizer(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F0932C30;
  *(a1 + 24) = a3;
  *(a1 + 28) = 0;
  operator new();
}

uint64_t icu::Normalizer::init(icu::Normalizer *this)
{
  v5 = 0;
  result = icu::Normalizer2Factory::getInstance(*(this + 6), &v5);
  *(this + 2) = result;
  if ((*(this + 28) & 0x20) != 0)
  {
    v4 = *(this + 1);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    operator new();
  }

  if (v5 >= 1)
  {
    v5 = 0;
    result = icu::Normalizer2Factory::getNoopInstance(&v5, v3);
    *(this + 2) = result;
  }

  return result;
}

void icu::Normalizer::Normalizer(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F0932C30;
  *(a1 + 24) = a4;
  *(a1 + 28) = 0;
  operator new();
}

uint64_t icu::Normalizer::Normalizer(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F0932C30;
  *(a1 + 24) = a3;
  *(a1 + 28) = 0;
  *(a1 + 32) = (*(*a2 + 64))(a2);
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_1F0935D00;
  *(a1 + 56) = 2;
  *(a1 + 112) = 0;
  icu::Normalizer::init(a1);
  return a1;
}

icu::Normalizer *icu::Normalizer::Normalizer(icu::Normalizer *this, const icu::Normalizer *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F0932C30;
  *(this + 3) = *(a2 + 3);
  *(this + 4) = (*(**(a2 + 4) + 64))(*(a2 + 4));
  *(this + 5) = *(a2 + 5);
  icu::UnicodeString::UnicodeString((this + 48), a2 + 6);
  *(this + 28) = *(a2 + 28);
  icu::Normalizer::init(this);
  return this;
}

void icu::Normalizer::~Normalizer(icu::Normalizer *this)
{
  *this = &unk_1F0932C30;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeString::~UnicodeString((this + 48));

  icu::UObject::~UObject(this);
}

{
  icu::Normalizer::~Normalizer(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::Normalizer::hashCode(icu::Normalizer *this)
{
  v2 = (*(**(this + 4) + 32))(*(this + 4));
  v3 = *(this + 6) + *(this + 7);
  return v3 + icu::UnicodeString::doHashCode((this + 48)) + *(this + 28) + *(this + 10) + *(this + 11) + v2;
}

uint64_t icu::Normalizer::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  result = (*(**(a1 + 32) + 24))(*(a1 + 32), *(a2 + 32));
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    if (*(a2 + 56))
    {
      goto LABEL_21;
    }

    return 0;
  }

  if ((v5 & 0x8000) != 0)
  {
    v6 = *(a1 + 60);
  }

  else
  {
    v6 = v5 >> 5;
  }

  result = 0;
  v7 = *(a2 + 56);
  if ((v7 & 0x8000u) == 0)
  {
    v8 = v7 >> 5;
  }

  else
  {
    v8 = *(a2 + 60);
  }

  if ((v7 & 1) == 0 && v6 == v8)
  {
    v9 = (v7 & 2) != 0 ? (a2 + 58) : *(a2 + 72);
    result = icu::UnicodeString::doEquals(a1 + 48, v9, v6);
    if (result)
    {
LABEL_21:
      if (*(a1 + 112) == *(a2 + 112))
      {
        return *(a1 + 44) == *(a2 + 44);
      }

      return 0;
    }
  }

  return result;
}

void icu::Normalizer::normalize(const icu::UnicodeString *a1, int a2, char a3, icu::UnicodeString *this, icu::Normalizer2Factory *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 4) & 1) != 0 || *a5 >= 1)
  {
    icu::UnicodeString::setToBogus(this);
    if (*a5 <= 0)
    {
      *a5 = 1;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v18 = 0;
    v17 = 0u;
    v14 = &unk_1F0935D00;
    LOWORD(v15) = 2;
    if (a1 == this)
    {
      v9 = &v14;
    }

    else
    {
      v9 = this;
    }

    Instance = icu::Normalizer2Factory::getInstance(a2, a5);
    v11 = *a5;
    if (v11 <= 0)
    {
      if ((a3 & 0x20) != 0)
      {
        v13[0] = &unk_1F0931F08;
        v13[1] = Instance;
        v13[2] = sub_19527C23C(a5);
        icu::FilteredNormalizer2::normalize(v13, a1, v9, a5);
        icu::FilteredNormalizer2::~FilteredNormalizer2(v13);
      }

      else
      {
        (*(*Instance + 24))(Instance, a1, v9, a5);
      }
    }

    if (v9 == &v14)
    {
      v11 = *a5;
      if (v11 <= 0)
      {
        icu::UnicodeString::operator=(this, v9);
      }
    }

    icu::UnicodeString::~UnicodeString(v11, &v14);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void icu::Normalizer::compose(icu::Normalizer *this, const icu::UnicodeString *a2, char a3, icu::UnicodeString *a4, icu::UnicodeString *a5, UErrorCode *a6)
{
  if (a2)
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  icu::Normalizer::normalize(this, v6, a3, a4, a5);
}

void icu::Normalizer::decompose(icu::Normalizer *this, const icu::UnicodeString *a2, char a3, icu::UnicodeString *a4, icu::UnicodeString *a5, UErrorCode *a6)
{
  if (a2)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  icu::Normalizer::normalize(this, v6, a3, a4, a5);
}

uint64_t icu::Normalizer::quickCheck(const icu::UnicodeString *a1, int a2, char a3, icu::Normalizer2Factory *this)
{
  Instance = icu::Normalizer2Factory::getInstance(a2, this);
  if (*this > 0)
  {
    return 2;
  }

  if ((a3 & 0x20) != 0)
  {
    v11[0] = &unk_1F0931F08;
    v11[1] = Instance;
    v11[2] = sub_19527C23C(this);
    v8 = icu::FilteredNormalizer2::quickCheck(v11, a1, this);
    icu::FilteredNormalizer2::~FilteredNormalizer2(v11);
    return v8;
  }

  v9 = *(*Instance + 104);

  return v9();
}

uint64_t icu::Normalizer::isNormalized(const icu::UnicodeString *a1, int a2, char a3, icu::Normalizer2Factory *this)
{
  Instance = icu::Normalizer2Factory::getInstance(a2, this);
  if (*this > 0)
  {
    return 0;
  }

  if ((a3 & 0x20) != 0)
  {
    v11[0] = &unk_1F0931F08;
    v11[1] = Instance;
    v11[2] = sub_19527C23C(this);
    isNormalized = icu::FilteredNormalizer2::isNormalized(v11, a1, this);
    icu::FilteredNormalizer2::~FilteredNormalizer2(v11);
    return isNormalized;
  }

  v9 = *(*Instance + 88);

  return v9();
}

icu::UnicodeString *icu::Normalizer::concatenate(uint64_t a1, const icu::UnicodeString *a2, icu::UnicodeString *this, int a4, char a5, icu::Normalizer2Factory *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 8) & 1) != 0 || (*(a2 + 4) & 1) != 0 || *a6 >= 1)
  {
    icu::UnicodeString::setToBogus(this);
    if (*a6 <= 0)
    {
      *a6 = 1;
    }
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v21 = 0;
    v20 = 0u;
    v17 = &unk_1F0935D00;
    LOWORD(v18) = 2;
    if (a2 == this)
    {
      v11 = &v17;
    }

    else
    {
      v11 = this;
    }

    icu::UnicodeString::operator=(v11, a1);
    Instance = icu::Normalizer2Factory::getInstance(a4, a6);
    v13 = *a6;
    if (v13 <= 0)
    {
      if ((a5 & 0x20) != 0)
      {
        v16[0] = &unk_1F0931F08;
        v16[1] = Instance;
        v16[2] = sub_19527C23C(a6);
        icu::FilteredNormalizer2::append(v16, v11, a2, a6);
        icu::FilteredNormalizer2::~FilteredNormalizer2(v16);
      }

      else
      {
        (*(*Instance + 48))(Instance, v11, a2, a6);
      }
    }

    if (v11 == &v17)
    {
      v13 = *a6;
      if (v13 <= 0)
      {
        icu::UnicodeString::operator=(this, v11);
      }
    }

    icu::UnicodeString::~UnicodeString(v13, &v17);
  }

  v14 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::Normalizer::current(icu::Normalizer *this)
{
  v2 = *(this + 28);
  if (*(this + 28) < 0)
  {
    v3 = *(this + 15);
  }

  else
  {
    v3 = *(this + 28) >> 5;
  }

  if (v2 >= v3)
  {
    if (!icu::Normalizer::nextNormalize(this))
    {
      return 0xFFFFLL;
    }

    v2 = *(this + 28);
  }

  return icu::UnicodeString::char32At((this + 48), v2);
}

BOOL icu::Normalizer::nextNormalize(icu::Normalizer *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(this + 28))
  {
    v2 = 2;
  }

  else
  {
    v2 = *(this + 28) & 0x1E;
  }

  *(this + 28) = v2;
  *(this + 28) = 0;
  *(this + 10) = *(this + 11);
  (*(**(this + 4) + 120))(*(this + 4));
  if ((*(**(this + 4) + 56))(*(this + 4)))
  {
    memset(v11, 0, sizeof(v11));
    v3 = (*(**(this + 4) + 48))(*(this + 4));
    icu::UnicodeString::UnicodeString(v11, v3);
    while ((*(**(this + 4) + 56))(*(this + 4)))
    {
      v4 = *(this + 2);
      v5 = (*(**(this + 4) + 48))(*(this + 4));
      if ((*(*v4 + 120))(v4, v5))
      {
        (*(**(this + 4) + 200))(*(this + 4), 0xFFFFFFFFLL, 1);
        break;
      }

      icu::UnicodeString::append(v11, v5);
    }

    *(this + 11) = *(*(this + 4) + 12);
    v10 = 0;
    (*(**(this + 2) + 24))(*(this + 2), v11, this + 48, &v10);
    v6 = 0;
    v7 = v10;
    if (v10 <= 0)
    {
      v7 = *(this + 28);
      v6 = v7 > 0x1F;
    }

    icu::UnicodeString::~UnicodeString(v7, v11);
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t icu::Normalizer::next(icu::Normalizer *this)
{
  v2 = *(this + 28);
  if (*(this + 28) < 0)
  {
    v3 = *(this + 15);
  }

  else
  {
    v3 = *(this + 28) >> 5;
  }

  if (v2 >= v3)
  {
    if (!icu::Normalizer::nextNormalize(this))
    {
      return 0xFFFFLL;
    }

    v2 = *(this + 28);
  }

  result = icu::UnicodeString::char32At((this + 48), v2);
  if (result < 0x10000)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *(this + 28) += v5;
  return result;
}

uint64_t icu::Normalizer::previous(icu::Normalizer *this)
{
  v2 = *(this + 28);
  if (v2 <= 0)
  {
    if (!icu::Normalizer::previousNormalize(this))
    {
      return 0xFFFFLL;
    }

    v2 = *(this + 28);
  }

  result = icu::UnicodeString::char32At((this + 48), v2 - 1);
  if (result >= 0x10000)
  {
    v4 = -2;
  }

  else
  {
    v4 = -1;
  }

  *(this + 28) += v4;
  return result;
}

BOOL icu::Normalizer::previousNormalize(icu::Normalizer *this)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(this + 28))
  {
    v2 = 2;
  }

  else
  {
    v2 = *(this + 28) & 0x1E;
  }

  *(this + 28) = v2;
  *(this + 28) = 0;
  *(this + 11) = *(this + 10);
  (*(**(this + 4) + 120))(*(this + 4));
  if ((*(**(this + 4) + 184))(*(this + 4)))
  {
    v12 = 0u;
    v13 = 0u;
    v15 = 0;
    v14 = 0u;
    v11 = &unk_1F0935D00;
    LOWORD(v12) = 2;
    do
    {
      if (!(*(**(this + 4) + 184))(*(this + 4)))
      {
        break;
      }

      v3 = (*(**(this + 4) + 176))(*(this + 4));
      icu::UnicodeString::replace(&v11, 0, 0, v3);
    }

    while (!(*(**(this + 2) + 120))(*(this + 2), v3));
    *(this + 10) = *(*(this + 4) + 12);
    v10 = 0;
    (*(**(this + 2) + 24))(*(this + 2), &v11, this + 48, &v10);
    v4 = *(this + 28);
    if ((v4 & 0x8000) != 0)
    {
      v5 = *(this + 15);
    }

    else
    {
      v5 = v4 >> 5;
    }

    *(this + 28) = v5;
    v6 = v4 > 0x1F && v10 < 1;
    icu::UnicodeString::~UnicodeString(v4, &v11);
  }

  else
  {
    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t icu::Normalizer::reset(icu::Normalizer *this)
{
  result = (*(**(this + 4) + 192))(*(this + 4), 0, 0);
  *(this + 10) = result;
  *(this + 11) = result;
  if (*(this + 28))
  {
    v3 = 2;
  }

  else
  {
    v3 = *(this + 28) & 0x1E;
  }

  *(this + 28) = v3;
  *(this + 28) = 0;
  return result;
}

uint64_t icu::Normalizer::clearBuffer(uint64_t this)
{
  if (*(this + 56))
  {
    v1 = 2;
  }

  else
  {
    v1 = *(this + 56) & 0x1E;
  }

  *(this + 56) = v1;
  *(this + 112) = 0;
  return this;
}

uint64_t icu::Normalizer::setIndexOnly(icu::Normalizer *this)
{
  result = (*(**(this + 4) + 120))(*(this + 4));
  v3 = *(*(this + 4) + 12);
  *(this + 10) = v3;
  *(this + 11) = v3;
  if (*(this + 28))
  {
    v4 = 2;
  }

  else
  {
    v4 = *(this + 28) & 0x1E;
  }

  *(this + 28) = v4;
  *(this + 28) = 0;
  return result;
}

uint64_t icu::Normalizer::first(icu::Normalizer *this)
{
  v2 = (*(**(this + 4) + 192))(*(this + 4), 0, 0);
  *(this + 10) = v2;
  *(this + 11) = v2;
  if (*(this + 28))
  {
    v3 = 2;
  }

  else
  {
    v3 = *(this + 28) & 0x1E;
  }

  *(this + 28) = v3;
  *(this + 28) = 0;

  return icu::Normalizer::next(this);
}

uint64_t icu::Normalizer::last(icu::Normalizer *this)
{
  v2 = (*(**(this + 4) + 192))(*(this + 4), 0, 2);
  *(this + 10) = v2;
  *(this + 11) = v2;
  if (*(this + 28))
  {
    v3 = 2;
  }

  else
  {
    v3 = *(this + 28) & 0x1E;
  }

  *(this + 28) = v3;
  *(this + 28) = 0;

  return icu::Normalizer::previous(this);
}

uint64_t icu::Normalizer::getIndex(icu::Normalizer *this)
{
  if (*(this + 28) < 0)
  {
    v1 = *(this + 15);
  }

  else
  {
    v1 = *(this + 28) >> 5;
  }

  v2 = 44;
  if (*(this + 28) < v1)
  {
    v2 = 40;
  }

  return *(this + v2);
}

uint64_t icu::Normalizer::setOption(icu::Normalizer *this, int a2, int a3)
{
  if (a3)
  {
    v3 = *(this + 7) | a2;
  }

  else
  {
    v3 = *(this + 7) & ~a2;
  }

  *(this + 7) = v3;
  return icu::Normalizer::init(this);
}

void icu::Normalizer::setText(icu::Normalizer *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    operator new();
  }
}

uint64_t icu::Normalizer::setText(uint64_t this, const icu::CharacterIterator *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    this = (*(*a2 + 64))(a2);
    if (this)
    {
      v5 = this;
      v6 = *(v4 + 32);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      *(v4 + 32) = v5;
      this = (*(*v5 + 192))(v5, 0, 0);
      *(v4 + 40) = this;
      *(v4 + 44) = this;
      if (*(v4 + 56))
      {
        v7 = 2;
      }

      else
      {
        v7 = *(v4 + 56) & 0x1E;
      }

      *(v4 + 56) = v7;
      *(v4 + 112) = 0;
    }

    else
    {
      *a3 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  return this;
}

void icu::Normalizer::setText(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    v10 = v7;
    v11 = v6;
    v12 = v5;
    v13 = v4;
    v14 = v8;
    v15 = v9;
    operator new();
  }
}

void icu::ParsePosition::~ParsePosition(icu::ParsePosition *this)
{
  icu::UObject::~UObject(this);

  JUMPOUT(0x19A8B2600);
}

BOOL icu::PatternProps::isSyntax(icu::PatternProps *this)
{
  if ((this & 0x80000000) != 0)
  {
    return 0;
  }

  if (this <= 0xFF)
  {
    return (byte_195439F78[this] >> 1) & 1;
  }

  if (this >> 4 < 0x201)
  {
    return 0;
  }

  if (this <= 0x3030)
  {
    return (dword_195439EA4[byte_195439ECC[(this - 0x2000) >> 5]] >> this) & 1;
  }

  if ((this - 64830) <= 0x108)
  {
    return (this - 65093) < 0xFFFFFEFB;
  }

  return 0;
}

BOOL icu::PatternProps::isSyntaxOrWhiteSpace(icu::PatternProps *this)
{
  if ((this & 0x80000000) != 0)
  {
    return 0;
  }

  if (this <= 0xFF)
  {
    LOBYTE(v1) = byte_195439F78[this];
    return v1 & 1;
  }

  if (this < 0x200E)
  {
    return 0;
  }

  if (this <= 0x3030)
  {
    v1 = dword_195439F50[byte_195439ECC[(this - 0x2000) >> 5]] >> this;
    return v1 & 1;
  }

  return (this - 64830) <= 0x108 && (this - 65093) < 0xFFFFFEFB;
}

BOOL icu::PatternProps::isWhiteSpace(icu::PatternProps *this)
{
  if ((this & 0x80000000) != 0)
  {
    return 0;
  }

  if (this <= 0xFF)
  {
    return (byte_195439F78[this] >> 2) & 1;
  }

  if ((this - 8206) <= 0x1B)
  {
    return (this - 8232) < 0xFFFFFFE8;
  }

  return 0;
}

unsigned __int16 *icu::PatternProps::skipWhiteSpace(unsigned __int16 *result, int a2)
{
  if (a2 >= 1)
  {
    v2 = &result[a2 - 1 + 1];
    v3 = a2 + 1;
    do
    {
      v4 = *result;
      if (v4 > 0xFF)
      {
        if (v4 - 8206 > 0x1B || v4 - 8232 >= 0xFFFFFFE8)
        {
          return result;
        }
      }

      else if (((byte_195439F78[*result] >> 2) & 1) == 0)
      {
        return result;
      }

      ++result;
      --v3;
    }

    while (v3 > 1);
    return v2;
  }

  return result;
}

uint64_t icu::PatternProps::skipWhiteSpace(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0x8000u) == 0)
  {
    v3 = v2 >> 5;
  }

  else
  {
    v3 = *(a1 + 12);
  }

  if (v3 > a2)
  {
    v4 = a1 + 10;
    if ((v2 & 2) == 0)
    {
      v4 = *(a1 + 24);
    }

    if (v3 <= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = v3;
    }

    v6 = (v4 + 2 * a2);
    a2 = a2;
    while (v3 > a2)
    {
      v7 = *v6;
      if (v7 > 0xFF)
      {
        if (v7 - 8206 > 0x1B || v7 - 8232 >= 0xFFFFFFE8)
        {
          return a2;
        }
      }

      else if (((byte_195439F78[*v6] >> 2) & 1) == 0)
      {
        return a2;
      }

      ++a2;
      ++v6;
      if (v3 == a2)
      {
        return v3;
      }
    }

    return v5;
  }

  return a2;
}

unsigned __int16 *icu::PatternProps::trimWhiteSpace(unsigned __int16 *result, unsigned int *a2)
{
  v2 = *a2;
  if (v2 < 1)
  {
    return result;
  }

  v3 = *result;
  if (v3 > 0xFF)
  {
    if (v3 - 8206 > 0x1B || v3 - 8232 >= 0xFFFFFFE8)
    {
LABEL_7:
      v4 = result[v2 - 1];
      if (v4 > 0xFF)
      {
        if (v4 - 8206 > 0x1B || v4 - 8232 >= 0xFFFFFFE8)
        {
          return result;
        }
      }

      else if (((byte_195439F78[result[v2 - 1]] >> 2) & 1) == 0)
      {
        return result;
      }
    }
  }

  else if (((byte_195439F78[*result] >> 2) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = 0;
  while (1)
  {
    v6 = result[v5];
    if (v6 <= 0xFF)
    {
      if (((byte_195439F78[result[v5]] >> 2) & 1) == 0)
      {
        break;
      }

      goto LABEL_18;
    }

    if (v6 - 8206 > 0x1B || v6 - 8232 >= 0xFFFFFFE8)
    {
      break;
    }

LABEL_18:
    if (v2 == ++v5)
    {
      v7 = *a2;
      goto LABEL_27;
    }
  }

  while (1)
  {
    v8 = result[v2 - 1];
    if (v8 > 0xFF)
    {
      break;
    }

    if (((byte_195439F78[result[v2 - 1]] >> 2) & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_25:
    --v2;
  }

  if (v8 - 8206 <= 0x1B && v8 - 8232 < 0xFFFFFFE8)
  {
    goto LABEL_25;
  }

LABEL_26:
  v7 = v2;
  LODWORD(v2) = v5;
LABEL_27:
  *a2 = v7 - v2;
  result += v2;
  return result;
}

uint64_t icu::PatternProps::isIdentifier(unsigned __int16 *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = a1;
  v3 = &a1[a2];
  while (!icu::PatternProps::isSyntaxOrWhiteSpace(*v2))
  {
    if (++v2 >= v3)
    {
      return 1;
    }
  }

  return 0;
}

unsigned __int16 *icu::PatternProps::skipIdentifier(unsigned __int16 *a1, int a2)
{
  v2 = a1;
  if (a2 >= 1)
  {
    v3 = &a1[a2 - 1 + 1];
    v4 = a2 + 1;
    while (!icu::PatternProps::isSyntaxOrWhiteSpace(*v2))
    {
      ++v2;
      if (--v4 <= 1)
      {
        return v3;
      }
    }
  }

  return v2;
}

uint64_t icu::PluralMapBase::toCategory(icu::PluralMapBase *this, const char *a2)
{
  v3 = 0;
  while (strcmp(this, off_1E7402578[v3]))
  {
    if (++v3 == 6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

uint64_t icu::PluralMapBase::toCategory(icu::PluralMapBase *this, const icu::UnicodeString *a2)
{
  __s1[8] = *MEMORY[0x1E69E9840];
  memset(&__s1[1], 0, 56);
  __s1[0] = &__s1[1] + 5;
  LODWORD(__s1[1]) = 40;
  v6 = U_ZERO_ERROR;
  icu::CharString::appendInvariantChars(__s1, this, &v6);
  if (v6 > U_ZERO_ERROR)
  {
LABEL_5:
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = 0;
    v3 = __s1[0];
    while (strcmp(v3, off_1E7402578[v2]))
    {
      if (++v2 == 6)
      {
        goto LABEL_5;
      }
    }
  }

  if (BYTE4(__s1[1]))
  {
    free(__s1[0]);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

char *icu::PluralMapBase::getCategoryName(icu::PluralMapBase *this, Category a2)
{
  if (this <= 5)
  {
    return off_1E7402578[this];
  }

  else
  {
    return 0;
  }
}

uint64_t uprv_compareASCIIPropertyNames(unsigned __int8 *a1, unsigned __int8 *a2)
{
  while (1)
  {
    v4 = 256;
    v5 = a1;
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      v8 = (1 << (v7 - 32)) & 0x8000000000002001;
      v9 = (v7 - 32) > 0x3F || v8 == 0;
      if (v9 && (v6 - 9) > 4)
      {
        break;
      }

      v4 += 256;
    }

    if (v6)
    {
      v4 += uprv_asciitolower(v6);
    }

    v10 = 256;
    v11 = a2;
    while (1)
    {
      v13 = *v11++;
      v12 = v13;
      v14 = (1 << (v13 - 32)) & 0x8000000000002001;
      v15 = (v13 - 32) > 0x3F || v14 == 0;
      if (v15 && (v12 - 9) > 4)
      {
        break;
      }

      v10 += 256;
    }

    if (v12)
    {
      v10 += uprv_asciitolower(v12);
    }

    if (!(v10 | v4))
    {
      break;
    }

    if (v4 != v10)
    {
      result = v4 - v10;
      if (v4 != v10)
      {
        return result;
      }
    }

    a1 += v4 >> 8;
    a2 += v10 >> 8;
  }

  return 0;
}

uint64_t uprv_compareEBCDICPropertyNames(unsigned __int8 *a1, unsigned __int8 *a2)
{
  while (2)
  {
    v4 = 256;
    v5 = a1;
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      if (v7 <= 0x25)
      {
        if (((1 << v6) & 0x2000203820) != 0)
        {
          goto LABEL_9;
        }

        if (!v6)
        {
          goto LABEL_11;
        }
      }

      if ((v6 - 64) > 0x2D || ((1 << (v6 - 64)) & 0x200100000001) == 0)
      {
        break;
      }

LABEL_9:
      v4 += 256;
    }

    v4 += uprv_ebcdictolower(v6);
LABEL_11:
    v9 = 256;
    v10 = a2;
    while (2)
    {
      v12 = *v10++;
      v11 = v12;
      if (v12 <= 0x25)
      {
        if (((1 << v11) & 0x2000203820) == 0)
        {
          if (!v11)
          {
            goto LABEL_21;
          }

          break;
        }

LABEL_19:
        v9 += 256;
        continue;
      }

      break;
    }

    if ((v11 - 64) <= 0x2D && ((1 << (v11 - 64)) & 0x200100000001) != 0)
    {
      goto LABEL_19;
    }

    v9 += uprv_ebcdictolower(v11);
LABEL_21:
    if (!(v9 | v4))
    {
      return 0;
    }

    if (v4 == v9 || (result = v4 - v9, v4 == v9))
    {
      a1 += v4 >> 8;
      a2 += v9 >> 8;
      continue;
    }

    return result;
  }
}

uint64_t sub_195204C20(int a1)
{
  v1 = 1;
  v2 = 7;
  while (1)
  {
    v3 = (&unk_19543A078 + 4 * v1);
    v4 = *v3;
    v5 = a1 - *v3;
    if (a1 < *v3)
    {
      return 0;
    }

    v6 = v3[1];
    v7 = v1 + 2;
    if (v6 > a1)
    {
      break;
    }

    v1 = v7 + 2 * (v6 - v4);
    if (--v2 <= 1)
    {
      return 0;
    }
  }

  return (v7 + 2 * v5);
}

uint64_t sub_195204C74(uint64_t result, signed int a2)
{
  if (result)
  {
    LODWORD(v2) = result + 2;
    v3 = dword_19543A078[result + 1];
    if (v3 > 15)
    {
      v9 = result + v3 - 14;
      v2 = v2;
      v10 = v9;
      do
      {
        v11 = dword_19543A078[v2];
        if (v11 > a2)
        {
          break;
        }

        if (v11 == a2)
        {
          return dword_19543A078[v9];
        }

        ++v2;
        ++v9;
      }

      while (v2 < v10);
    }

    else if (v3 >= 1)
    {
      for (i = v3 + 1; i > 1; --i)
      {
        v5 = &dword_19543A078[v2];
        v6 = *v5;
        if (*v5 > a2)
        {
          break;
        }

        v7 = v5[1];
        v8 = v2 + 2;
        if (v7 > a2)
        {
          v9 = v8 + a2 - v6;
          return dword_19543A078[v9];
        }

        LODWORD(v2) = v8 - v6 + v7;
      }
    }

    return 0;
  }

  return result;
}

const char *sub_195204D20(char *a1, int a2)
{
  if (a2 < 0 || *a1 <= a2)
  {
    return 0;
  }

  v2 = a1 + 1;
  if (a2)
  {
    v3 = a2 + 1;
    do
    {
      v2 += strlen(v2) + 1;
      --v3;
    }

    while (v3 > 1);
  }

  if (*v2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

BOOL sub_195204D8C(icu::BytesTrie *a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = *a2;
  if (*a2)
  {
    v5 = 1;
    while (1)
    {
      ++v2;
      while (1)
      {
        v6 = uprv_asciitolower(v3);
        v7 = v6 - 32 > 0x3F || ((1 << (v6 - 32)) & 0x8000000000002001) == 0;
        if (v7 && (v6 - 9) > 4)
        {
          break;
        }

        v8 = *v2++;
        v3 = v8;
        if (!v8)
        {
          return v5 > 1;
        }
      }

      if ((v5 & 1) == 0)
      {
        break;
      }

      v5 = icu::BytesTrie::next(a1, v6);
      v3 = *v2;
      if (!*v2)
      {
        return v5 > 1;
      }
    }

    return 0;
  }

  else
  {
    v5 = 1;
    return v5 > 1;
  }
}

const char *__cdecl u_getPropertyName_0(UProperty property, UPropertyNameChoice nameChoice)
{
  v3 = sub_195204C20(property);
  if (!v3)
  {
    return 0;
  }

  v4 = &unk_19543F6AB + dword_19543A078[v3];

  return sub_195204D20(v4, nameChoice);
}

const char *__cdecl u_getPropertyValueName_0(UProperty property, int32_t value, UPropertyNameChoice nameChoice)
{
  v5 = sub_195204C20(property);
  if (!v5)
  {
    return 0;
  }

  v6 = sub_195204C74(dword_19543A078[v5 + 1], value);
  if (!v6)
  {
    return 0;
  }

  v7 = &unk_19543F6AB + v6;

  return sub_195204D20(v7, nameChoice);
}

uint64_t sub_195204F38(int a1, unsigned __int8 *a2)
{
  v4 = 0;
  v5 = &unk_19543B7D0 + a1;
  v6 = v5;
  Value = 0xFFFFFFFFLL;
  v7 = 0xFFFFFFFFLL;
  if (sub_195204D8C(&v4, a2))
  {
    Value = icu::BytesTrie::readValue((v6 + 1), (*v6 >> 1));
  }

  icu::BytesTrie::~BytesTrie(&v4);
  return Value;
}

int32_t u_getPropertyValueEnum_0(UProperty property, const char *alias)
{
  v3 = sub_195204C20(property);
  if (!v3)
  {
    return -1;
  }

  v4 = dword_19543A078[v3 + 1];
  if (!v4)
  {
    return -1;
  }

  v5 = dword_19543A078[v4];

  return sub_195204F38(v5, alias);
}

void *upvec_open(int a1, int *a2)
{
  if (*a2 <= 0)
  {
    if (a1 <= 0)
    {
      v2 = 0;
      v9 = 1;
    }

    else
    {
      v4 = a1 + 2;
      v2 = malloc_type_malloc(0x20uLL, 0x1010040A6225C5AuLL);
      v5 = malloc_type_malloc(v4 << 14, 0x100004052888210uLL);
      v6 = v5;
      if (v2 && v5)
      {
        v2[2] = 0;
        v2[3] = 0;
        *v2 = v5;
        *(v2 + 2) = v4;
        *(v2 + 12) = 0x300001000;
        bzero(v5, 12 * v4);
        *v6 = 0x11000000000000;
        v7 = (v6 + 4 * v4);
        *v7 = 0x11000100110000;
        v8 = v7 + v4;
        *v8 = 1114113;
        v8[1] = 1114114;
        return v2;
      }

      free(v2);
      free(v6);
      v2 = 0;
      v9 = 7;
    }

    *a2 = v9;
    return v2;
  }

  return 0;
}

void upvec_close(void **a1)
{
  if (a1)
  {
    free(*a1);

    free(a1);
  }
}

void upvec_setValue(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int *a7)
{
  if (*a7 <= 0)
  {
    v9 = 1;
    if (!a1)
    {
      goto LABEL_11;
    }

    if (a2 < 0)
    {
      goto LABEL_11;
    }

    if (a2 > a3)
    {
      goto LABEL_11;
    }

    v12 = 1114114;
    if (a3 > 1114113 || a4 < 0)
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 8);
    if (v13 - 2 <= a4)
    {
      v9 = 1;
      goto LABEL_11;
    }

    if (*(a1 + 24))
    {
      v9 = 30;
LABEL_11:
      *a7 = v9;
      return;
    }

    v40 = a3 + 1;
    v15 = a4 + 2;
    v16 = a6 & a5;
    v17 = sub_1952054CC(a1, a2);
    v18 = sub_1952054CC(a1, a3);
    v19 = v18;
    v20 = *v17 != a2 && v16 != (v17[v15] & a6);
    v21 = v40 != *(v18 + 1) && v16 != (*&v18[4 * v15] & a6);
    if (v20 || v21)
    {
      v22 = *(a1 + 12);
      v23 = *(a1 + 16);
      v24 = v21 + v20 + v23;
      if (v24 <= v22)
      {
        v39 = v15;
        v26 = *a1;
      }

      else
      {
        if (v22 >= 0x10000)
        {
          if (v22 >= 0x110002)
          {
            v9 = 5;
            goto LABEL_11;
          }
        }

        else
        {
          v12 = 0x10000;
        }

        v34 = *(a1 + 16);
        v36 = v21;
        v37 = v21 + v20 + v23;
        v35 = v20;
        v39 = v15;
        v27 = malloc_type_malloc(4 * v13 * v12, 0x100004052888210uLL);
        if (!v27)
        {
          v9 = 7;
          goto LABEL_11;
        }

        v26 = v27;
        memcpy(v27, *a1, 4 * v13 * v34);
        v17 = (v17 + v26 - *a1);
        v19 = &v19[v26 - *a1];
        free(*a1);
        v23 = v34;
        *a1 = v26;
        *(a1 + 12) = v12;
        v20 = v35;
        v21 = v36;
        v24 = v37;
      }

      v25 = &v19[4 * v13];
      v28 = v26 + 4 * v23 * v13 - v25;
      if ((v28 >> 2) >= 1)
      {
        if (v20)
        {
          v29 = 2;
        }

        else
        {
          v29 = 1;
        }

        v30 = v21;
        v31 = v20;
        v38 = v24;
        memmove(&v19[4 * (v29 + v21) * v13], &v19[4 * v13], v28);
        v24 = v38;
        v20 = v31;
        v21 = v30;
      }

      *(a1 + 16) = v24;
      v15 = v39;
      if (v20)
      {
        v32 = v21;
        memmove(&v17[v13], v17, 4 * (v13 + ((v19 - v17) >> 2)));
        v21 = v32;
        v17[v13] = a2;
        v17[1] = a2;
        v17 += v13;
      }

      else
      {
        v25 = v19;
      }

      if (v21)
      {
        memcpy(&v25[4 * v13], v25, 4 * v13);
        *&v25[4 * v13] = v40;
        *(v25 + 1) = v40;
      }
    }

    else
    {
      v25 = v18;
    }

    *(a1 + 20) = (&v25[-*a1] >> 2) / v13;
    v33 = &v17[v15];
    *v33 = *v33 & ~a6 | v16;
    if (v17 != v25)
    {
      do
      {
        v33 += v13;
        *v33 = *v33 & ~a6 | v16;
      }

      while (v33 != &v25[4 * v15]);
    }
  }
}

_DWORD *sub_1952054CC(uint64_t *a1, int a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *a1;
  v6 = v4 * v2;
  v7 = (*a1 + 4 * v4 * v2);
  if (*v7 > a2)
  {
    if (*(v5 + 4) > a2)
    {
      *(a1 + 5) = 0;
      return v5;
    }

    goto LABEL_15;
  }

  if (v7[1] > a2)
  {
    return v7;
  }

  v7 += v2;
  if (v7[1] > a2)
  {
    v8 = v4 + 1;
LABEL_10:
    *(a1 + 5) = v8;
    return v7;
  }

  v7 += v2;
  v9 = v7[1];
  v10 = __OFSUB__(a2, v9);
  v11 = a2 - v9;
  if (v11 < 0 != v10)
  {
    v8 = v4 + 2;
    goto LABEL_10;
  }

  if (v11 <= 9)
  {
    v12 = v4 + 2;
    v13 = 4 * v2;
    v14 = (12 * v2 + 4 * v6 + v5 + 4);
    do
    {
      ++v12;
      v15 = *v14;
      v7 = (v7 + v13);
      v14 = (v14 + v13);
    }

    while (v15 <= a2);
    *(a1 + 5) = v12;
    return v7;
  }

LABEL_15:
  if (v3 >= 2)
  {
    v16 = 0;
    while (1)
    {
      v17 = (v3 + v16) / 2;
      v7 = (v5 + 4 * v17 * v2);
      if (*v7 <= a2)
      {
        if (v7[1] > a2)
        {
          *(a1 + 5) = v17;
          return v7;
        }

        v16 = (v3 + v16) / 2;
      }

      else
      {
        v3 = (v3 + v16) / 2;
      }

      if (v16 >= v3 - 1)
      {
        goto LABEL_24;
      }
    }
  }

  v16 = 0;
LABEL_24:
  *(a1 + 5) = v16;
  return (v5 + 4 * v16 * v2);
}

uint64_t upvec_getValue(uint64_t a1, unsigned int a2, int a3)
{
  result = 0;
  if ((a3 & 0x80000000) == 0 && a2 <= 0x110001 && !*(a1 + 24))
  {
    if (*(a1 + 8) - 2 <= a3)
    {
      return 0;
    }

    else
    {
      return sub_1952054CC(a1, a2)[a3 + 2];
    }
  }

  return result;
}

_DWORD *upvec_getRow(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4)
{
  result = 0;
  if ((a2 & 0x80000000) == 0 && !*(a1 + 24))
  {
    if (*(a1 + 16) <= a2)
    {
      return 0;
    }

    else
    {
      v6 = (*a1 + 4 * *(a1 + 8) * a2);
      if (a3)
      {
        *a3 = *v6;
      }

      if (a4)
      {
        *a4 = v6[1] - 1;
      }

      return v6 + 2;
    }
  }

  return result;
}

void upvec_compact(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unsigned int *, uint64_t, int *), uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a2)
    {
      if (!*(a1 + 24))
      {
        *(a1 + 24) = 1;
        v23 = *(a1 + 8);
        v24 = *(a1 + 16);
        uprv_sortArray(*a1, v24, (4 * v23), sub_195205958, a1, 0, a4);
        if (*a4 <= 0)
        {
          v8 = v23 - 2;
          v9 = *a1;
          v10 = (2 - v23);
          v11 = v24;
          v12 = (v23 - 2);
          v27 = 2 - v23;
          if (v24 < 1)
          {
LABEL_13:
            a2(a3, 0x200000, 0x200000, (v10 + v8), &v9[-v8], v12, a4);
            if (*a4 <= 0)
            {
              v15 = v23 - 2;
              v16 = v24;
              if (v24 < 1)
              {
LABEL_22:
                *(a1 + 16) = v27 / v15 + 1;
              }

              else
              {
                v17 = (*a1 + 8);
                while (1)
                {
                  v19 = *(v17 - 2);
                  v18 = *(v17 - 1);
                  v20 = *a1;
                  v21 = v27;
                  if ((v27 & 0x80000000) != 0 || (v22 = memcmp(v17, (v20 + 4 * v27), 4 * v12), v21 = v27, v15 = v23 - 2, v22))
                  {
                    v27 = v21 + v15;
                    memmove((v20 + 4 * (v21 + v15)), v17, 4 * (v23 - 2));
                    v15 = v23 - 2;
                  }

                  if (v19 < 1114112)
                  {
                    a2(a3, v19, (v18 - 1), v27, (*a1 + 4 * v27), v12, a4);
                    v15 = v23 - 2;
                    if (*a4 > 0)
                    {
                      break;
                    }
                  }

                  v17 += v23;
                  if (!--v16)
                  {
                    goto LABEL_22;
                  }
                }
              }
            }
          }

          else
          {
            v26 = 4 * v8;
            __len = 0x3FFFFFFFFFFFFFFFLL * v8;
            while (1)
            {
              v13 = *v9;
              if ((v10 & 0x80000000) != 0 || (v14 = memcmp(v9 + 2, &v9[__len], v26), v8 = v23 - 2, v14))
              {
                v10 = (v10 + v8);
              }

              if (v13 >= 1114112)
              {
                a2(a3, v13, v13, v10, v9 + 2, v12, a4);
                v8 = v23 - 2;
                if (*a4 > 0)
                {
                  break;
                }
              }

              v9 += v23;
              if (!--v11)
              {
                goto LABEL_13;
              }
            }
          }
        }
      }
    }

    else
    {
      *a4 = 1;
    }
  }
}

uint64_t sub_195205958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = 2;
  while (1)
  {
    v6 = *(a2 + 4 * v5);
    v7 = *(a3 + 4 * v5);
    if (v6 != v7)
    {
      break;
    }

    if (v5 + 1 == v3)
    {
      v5 = 0;
    }

    else
    {
      ++v5;
    }

    if (--v4 <= 1)
    {
      return 0;
    }
  }

  if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t upvec_getArray(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  if (a2)
  {
    *a2 = *(a1 + 16);
  }

  if (a3)
  {
    *a3 = *(a1 + 8) - 2;
  }

  return *a1;
}

void *upvec_cloneArray(uint64_t a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (!*(a1 + 24))
  {
    v4 = 0;
    v11 = 1;
LABEL_11:
    *a4 = v11;
    return v4;
  }

  v9 = 4 * *(a1 + 16) * (*(a1 + 8) - 2);
  v10 = malloc_type_malloc(v9, 0x100004052888210uLL);
  v4 = v10;
  if (!v10)
  {
    v11 = 7;
    goto LABEL_11;
  }

  memcpy(v10, *a1, v9);
  if (a2)
  {
    *a2 = *(a1 + 16);
  }

  if (a3)
  {
    *a3 = *(a1 + 8) - 2;
  }

  return v4;
}

void *upvec_compactToUTrie2WithRowIndexes(uint64_t a1, int *a2)
{
  memset(v4, 0, sizeof(v4));
  upvec_compact(a1, upvec_compactToUTrie2Handler, v4, a2);
  utrie2_freeze(v4[0], 0, a2);
  result = v4[0];
  if (*a2 >= 1)
  {
    utrie2_close(v4[0]);
    return 0;
  }

  return result;
}

void *upvec_compactToUTrie2Handler(void *result, signed int a2, unsigned int a3, signed int a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = result;
  if (a2 >= 1114112)
  {
    switch(a2)
    {
      case 0x200000:
        *(result + 4) = a4;
        if (a4 < 0x10000)
        {
          result = utrie2_open(*(result + 2), *(result + 3), a7);
          *v7 = result;
        }

        else
        {
          *a7 = 8;
        }

        break;
      case 0x110001:
        *(result + 3) = a4;
        break;
      case 0x110000:
        *(result + 2) = a4;
        break;
    }
  }

  else
  {
    v8 = *result;

    return utrie2_setRange32(v8, a2, a3, a4, 1, a7);
  }

  return result;
}

uint64_t u_strToPunycode(_WORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int *a6)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!a6 || *a6 > 0)
  {
    goto LABEL_9;
  }

  if (!a1 || (v8 = a2, a2 < -1) || !a3 && a4)
  {
    v12 = 1;
LABEL_8:
    *a6 = v12;
LABEL_9:
    v13 = *MEMORY[0x1E69E9840];
    return 0;
  }

  if (a2 >= 1001)
  {
LABEL_11:
    v12 = 31;
    goto LABEL_8;
  }

  bzero(v60, 0xFA0uLL);
  if (v8 == -1)
  {
    LOWORD(v23) = *a1;
    if (*a1)
    {
      v15 = 0;
      v24 = 0;
      v25 = 0;
      v17 = 0;
      while (v25 < 1000)
      {
        v23 = v23;
        if (v23 > 0x7Fu)
        {
          if (a5)
          {
            v28 = (*(a5 + v24) != 0) << 31;
          }

          else
          {
            v28 = 0;
          }

          if ((v23 & 0xF800) == 0xD800)
          {
            if ((v23 & 0xDC00) != 0xD800 || (++v25, v29 = a1[v25], (v29 & 0xFC00) != 0xDC00))
            {
LABEL_122:
              v12 = 10;
              goto LABEL_8;
            }

            v23 = (v23 << 10) - 56613888 + v29;
          }

          v60[v15] = v23 | v28;
        }

        else
        {
          v60[v15] = 0;
          if (v17 < a4)
          {
            if (a5)
            {
              v26 = *(a5 + v24);
              if ((v23 - 65) >= 0x1Au)
              {
                v27 = v23;
              }

              else
              {
                v27 = v23 | 0x20;
              }

              if ((v23 - 97) < 0x1Au)
              {
                LOBYTE(v23) = v23 - 32;
              }

              if (!v26)
              {
                LOBYTE(v23) = v27;
              }
            }

            *(a3 + 2 * v17) = v23;
          }

          v17 = (v17 + 1);
        }

        ++v15;
        v24 = ++v25;
        LOWORD(v23) = a1[v25];
        if (!v23)
        {
LABEL_65:
          v8 = v17;
          if (v17 >= 1)
          {
            if (v17 < a4)
            {
              *(a3 + 2 * v17) = 45;
            }

            v8 = (v17 + 1);
          }

          if (v17 >= v15)
          {
            goto LABEL_124;
          }

          v30 = 0;
          v31 = 128;
          v32 = 72;
          v33 = v17;
          while (1)
          {
            v34 = 0x7FFFFFFF;
            v35 = v60;
            v36 = v15;
            do
            {
              v37 = *v35++;
              v38 = v37 & 0x7FFFFFFF;
              if ((v37 & 0x7FFFFFFF) >= v34)
              {
                v39 = v34;
              }

              else
              {
                v39 = v38;
              }

              if (v31 <= v38)
              {
                v34 = v39;
              }

              --v36;
            }

            while (v36);
            v40 = v34 - v31;
            if (v34 - v31 > ((v30 + v33) ^ 0x7FFFFFFF) / (v33 + 1))
            {
              break;
            }

            v41 = 0;
            v42 = v30 + v40 * (v33 + 1);
            do
            {
              v43 = v60[v41];
              if ((v43 & 0x7FFFFFFF) >= v34)
              {
                if ((v43 & 0x7FFFFFFF) == v34)
                {
                  v44 = 36 - v32;
                  if (v32 <= 10)
                  {
                    v44 = 26;
                  }

                  if (v32 > 35)
                  {
                    v45 = 1;
                  }

                  else
                  {
                    v45 = v44;
                  }

                  if (v42 >= v45)
                  {
                    v8 = v8;
                    v47 = 46;
                    v46 = v42;
                    do
                    {
                      v48 = v46 - v45;
                      v46 = (v46 - v45) / (36 - v45);
                      if (v8 < a4)
                      {
                        v49 = v48 - v46 * (36 - v45) + v45;
                        if (v49 >= 26)
                        {
                          v50 = 22;
                        }

                        else
                        {
                          v50 = 97;
                        }

                        *(a3 + 2 * v8) = (v50 + v49);
                      }

                      ++v8;
                      if (v47 >= v32)
                      {
                        v51 = 26;
                      }

                      else
                      {
                        v51 = v47 - v32 + 26;
                      }

                      if (v47 - v32 + 26 < 1)
                      {
                        v45 = 1;
                      }

                      else
                      {
                        v45 = v51;
                      }

                      v47 += 36;
                    }

                    while (v46 >= v45);
                  }

                  else
                  {
                    v46 = v42;
                  }

                  if (v8 < a4)
                  {
                    if (v46 > 25)
                    {
                      v52 = v46 + 22;
                    }

                    else if (v43 < 0)
                    {
                      v52 = v46 + 65;
                    }

                    else
                    {
                      v52 = v46 + 97;
                    }

                    *(a3 + 2 * v8) = v52;
                  }

                  v53 = v33 + 1;
                  if (v33 == v17)
                  {
                    v54 = 700;
                  }

                  else
                  {
                    v54 = 2;
                  }

                  v55 = v42 / v54 / v53 + v42 / v54;
                  if (v55 < 456)
                  {
                    v56 = 0;
                  }

                  else
                  {
                    v56 = 0;
                    v57 = v55;
                    do
                    {
                      v55 = v57 / 0x23;
                      v56 += 36;
                      v58 = v57 >> 3;
                      v57 /= 0x23u;
                    }

                    while (v58 > 0x7CA);
                  }

                  v42 = 0;
                  v8 = (v8 + 1);
                  v32 = 36 * v55 / (v55 + 38) + v56;
                  v33 = v53;
                }
              }

              else
              {
                ++v42;
              }

              ++v41;
            }

            while (v41 != v15);
            v30 = v42 + 1;
            v31 = v34 + 1;
            if (v33 >= v15)
            {
              goto LABEL_124;
            }
          }

          v12 = 5;
          goto LABEL_8;
        }
      }

      goto LABEL_11;
    }

    v8 = 0;
  }

  else if (v8)
  {
    v15 = 0;
    LODWORD(v16) = 0;
    v17 = 0;
    while (1)
    {
      v18 = a1[v16];
      if (v18 > 0x7F)
      {
        if (a5)
        {
          v20 = (*(a5 + v16) != 0) << 31;
        }

        else
        {
          v20 = 0;
        }

        if ((v18 & 0xF800) == 0xD800)
        {
          v16 = v16 + 1;
          if ((v18 & 0xDC00) != 0xD800 || v16 >= v8)
          {
            goto LABEL_122;
          }

          v22 = a1[v16];
          if ((v22 & 0xFC00) != 0xDC00)
          {
            goto LABEL_122;
          }

          v18 = (v18 << 10) - 56613888 + v22;
        }

        v60[v15] = v18 | v20;
      }

      else
      {
        v60[v15] = 0;
        if (v17 < a4)
        {
          if (a5)
          {
            if ((v18 - 65) >= 0x1Au)
            {
              v19 = v18;
            }

            else
            {
              v19 = v18 | 0x20;
            }

            if ((v18 - 97) < 0x1Au)
            {
              LOBYTE(v18) = v18 - 32;
            }

            if (!*(a5 + v16))
            {
              LOBYTE(v18) = v19;
            }
          }

          *(a3 + 2 * v17) = v18;
        }

        v17 = (v17 + 1);
      }

      ++v15;
      LODWORD(v16) = v16 + 1;
      if (v16 >= v8)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_124:
  v59 = *MEMORY[0x1E69E9840];

  return u_terminateUChars(a3, a4, v8, a6);
}

uint64_t u_strFromPunycode(UChar *s, unint64_t a2, uint64_t a3, int a4, uint64_t a5, int *a6)
{
  if (!a6 || *a6 > 0)
  {
    return 0;
  }

  if (!s || (v8 = a2, a2 < -1) || !a3 && a4)
  {
    v12 = 1;
LABEL_8:
    *a6 = v12;
    return 0;
  }

  if (a2 == -1)
  {
    v8 = u_strlen(s);
  }

  if (v8 >= 2001)
  {
    v12 = 31;
    goto LABEL_8;
  }

  v14 = v8;
  if (v8 < 1)
  {
    v21 = 0;
    v17 = v8;
  }

  else
  {
    v15 = s - 1;
    v16 = v8;
    do
    {
      v17 = v16 - 1;
      if (v16 < 2)
      {
        break;
      }

      v18 = v15[v16--];
    }

    while (v18 != 45);
    if (v17 >= 1)
    {
      v19 = v17 & 0x7FFFFFFF;
      while (1)
      {
        v20 = v15[v19];
        if (v20 >= 0x80)
        {
          break;
        }

        if (v19 <= a4)
        {
          *(a3 - 2 + 2 * v19) = v20;
          if (a5)
          {
            *(a5 - 1 + v19) = v20 - 65 < 0x1A;
          }
        }

        if (v19-- <= 1)
        {
          v21 = v17 + 1;
          goto LABEL_28;
        }
      }

LABEL_108:
      v12 = 10;
      goto LABEL_8;
    }

    v21 = 0;
  }

LABEL_28:
  if (v21 < v8)
  {
    v22 = 0;
    v23 = 128;
    v24 = 72;
    v25 = 1000000000;
    v26 = v17;
    while (2)
    {
      v27 = v24 + 26;
      v28 = v21++;
      v29 = 36 - v24;
      v30 = 1;
      v31 = 36;
      v32 = v22;
      while (1)
      {
        v33 = s[v28];
        if (v33 > 0x5A)
        {
          if (v33 > 0x7A)
          {
            goto LABEL_108;
          }

          v34 = v33 - 97;
          if (v34 < 0)
          {
            goto LABEL_108;
          }
        }

        else if (v33 > 0x39)
        {
          v34 = v33 - 65;
          if (v34 < 0)
          {
            goto LABEL_108;
          }
        }

        else
        {
          if (v33 < 0x30)
          {
            goto LABEL_108;
          }

          v34 = v33 - 22;
        }

        if (v34 > (v32 ^ 0x7FFFFFFF) / v30)
        {
          goto LABEL_109;
        }

        v32 += v34 * v30;
        if (v31 >= v27)
        {
          v35 = 26;
        }

        else
        {
          v35 = v29;
        }

        if (v29 < 1)
        {
          v35 = 1;
        }

        if (v34 < v35)
        {
          break;
        }

        if (v30 <= 0x7FFFFFFF / (36 - v35))
        {
          ++v28;
          v30 *= 36 - v35;
          v31 += 36;
          ++v21;
          v29 += 36;
          if (v28 < v14)
          {
            continue;
          }
        }

        goto LABEL_109;
      }

      ++v26;
      v36 = v32 - v22;
      if (v22)
      {
        v37 = 2;
      }

      else
      {
        v37 = 700;
      }

      v38 = v36 / v37 / v26 + v36 / v37;
      if (v38 < 456)
      {
        v39 = 0;
      }

      else
      {
        v39 = 0;
        v40 = v36 / v37 / v26 + v36 / v37;
        do
        {
          v38 = v40 / 0x23;
          v39 += 36;
          v41 = v40 >> 3;
          v40 /= 0x23u;
        }

        while (v41 > 0x7CA);
      }

      if (v32 / v26 > (v23 ^ 0x7FFFFFFF) || (v23 += v32 / v26, v23 >= 1114112) || (v23 & 0xFFFFF800) == 0xD800)
      {
LABEL_109:
        v12 = 12;
        goto LABEL_8;
      }

      v42 = v32 % v26;
      v43 = HIWORD(v23);
      if (HIWORD(v23))
      {
        v44 = 2;
      }

      else
      {
        v44 = 1;
      }

      v45 = (v44 + v17);
      if (!a3 || v45 > a4)
      {
        goto LABEL_102;
      }

      v46 = v42 - v25;
      if (v42 <= v25)
      {
        if (v43)
        {
          v25 = v32 % v26;
        }

        else
        {
          ++v25;
        }

        v48 = v32 % v26;
      }

      else if (v46 < 1)
      {
        v48 = v25;
      }

      else
      {
        v47 = v46 + 1;
        v48 = v25;
        do
        {
          if (v48 >= v17)
          {
            if ((v17 & 0x80000000) == 0)
            {
              break;
            }

            v49 = *(a3 + 2 * v48);
            if (!v49)
            {
              break;
            }
          }

          else
          {
            v49 = *(a3 + 2 * v48);
          }

          v50 = v48 + 1;
          if ((v49 & 0xFC00) != 0xD800 || v50 == v17)
          {
            ++v48;
          }

          else
          {
            v48 += 2;
            if ((*(a3 + 2 * v50) & 0xFC00) != 0xDC00)
            {
              v48 = v50;
            }
          }

          --v47;
        }

        while (v47 > 1);
      }

      v52 = __OFSUB__(v17, v48);
      v53 = v17 - v48;
      if ((v53 < 0) ^ v52 | (v53 == 0))
      {
        if (v43)
        {
          v54 = (a3 + 2 * v48);
          *v54 = (v23 >> 10) - 10304;
          v54[1] = v23 & 0x3FF | 0xDC00;
          if (!a5)
          {
            goto LABEL_102;
          }

          goto LABEL_93;
        }

        *(a3 + 2 * v48) = v23;
        if (a5)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v59 = HIWORD(v23);
        v60 = v42;
        v61 = v45;
        v62 = v26;
        v63 = v25;
        v64 = v23;
        v65 = v14;
        v66 = v48;
        v57 = v53;
        v58 = (a3 + 2 * v48);
        v56 = v44;
        memmove(&v58[v44], v58, 2 * v53);
        if (a5)
        {
          memmove((a5 + v66 + v56), (a5 + v66), v57);
          if (v59)
          {
            v25 = v63;
            v23 = v64;
            *v58 = (v64 >> 10) - 10304;
            v58[1] = v64 & 0x3FF | 0xDC00;
            v14 = v65;
            v48 = v66;
            v45 = v61;
            v26 = v62;
            v42 = v60;
LABEL_93:
            v55 = (a5 + v48);
            *v55 = s[v28] - 65 < 0x1A;
            v55[1] = 0;
            goto LABEL_102;
          }

          v25 = v63;
          v23 = v64;
          *v58 = v64;
          v14 = v65;
          v48 = v66;
          v45 = v61;
          v26 = v62;
          v42 = v60;
LABEL_99:
          *(a5 + v48) = s[v28] - 65 < 0x1A;
          goto LABEL_102;
        }

        v42 = v60;
        v23 = v64;
        if (v59)
        {
          *v58 = (v64 >> 10) - 10304;
          v58[1] = v64 & 0x3FF | 0xDC00;
        }

        else
        {
          *v58 = v64;
        }

        v14 = v65;
        v26 = v62;
        v25 = v63;
        v45 = v61;
      }

LABEL_102:
      v24 = 36 * v38 / (v38 + 38) + v39;
      v22 = v42 + 1;
      LODWORD(v17) = v45;
      if (v8 > v21)
      {
        continue;
      }

      goto LABEL_105;
    }
  }

  v45 = v17;
LABEL_105:

  return u_terminateUChars(a3, a4, v45, a6);
}

double uprv_getUTCtime()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return (1000 * v1.tv_sec + v1.tv_usec / 1000);
}

double uprv_getRawUTCtime()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return (1000 * v1.tv_sec + v1.tv_usec / 1000);
}

double uprv_fmax(double a1, double a2)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000001 || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000001)
  {
    return NAN;
  }

  if (((*&a1 & 0x8000000000000000) == 0 || a1 != 0.0 || a2 != 0.0) && a1 > a2)
  {
    return a1;
  }

  return a2;
}

double uprv_fmin(double a1, double a2)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000001 || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000001)
  {
    return NAN;
  }

  if ((a1 != 0.0 || a2 != 0.0 || (*&a2 & 0x8000000000000000) == 0) && a1 <= a2)
  {
    return a1;
  }

  return a2;
}

BOOL uprv_add32_overflow(int a1, int a2, _DWORD *a3)
{
  v3 = a1 + a2;
  result = __OFADD__(a1, a2);
  *a3 = v3;
  return result;
}

BOOL uprv_mul32_overflow(int a1, int a2, _DWORD *a3)
{
  v3 = a2 * a1;
  *a3 = v3;
  return v3 != v3;
}

double uprv_trunc(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    return NAN;
  }

  v1 = INFINITY;
  if (fabs(a1) == INFINITY)
  {
    return v1;
  }

  if ((*&a1 & 0x8000000000000000) != 0)
  {
    return ceil(a1);
  }

  else
  {
    return floor(a1);
  }
}

uint64_t uprv_maximumPtr(unint64_t a1)
{
  if (a1 >= 0xFFFFFFFF80000001)
  {
    return -1;
  }

  else
  {
    return a1 + 0x7FFFFFFF;
  }
}

const char *uprv_tzname(int a1)
{
  v2 = getenv("TZ");
  v20 = v2;
  if (v2)
  {
    v3 = v2;
    if (sub_195206BE0(v2))
    {
      if (*v3 == 58)
      {
        v20 = v3 + 1;
      }

      sub_195206CC0(&v20);
      return v20;
    }
  }

  v4 = qword_1ED442208;
  if (qword_1ED442208)
  {
    return v4;
  }

  v5 = readlink("/var/db/timezone/localtime", byte_1ED442210, 0x3FFuLL);
  if (v5 < 1)
  {
    v7 = malloc_type_malloc(0x20uLL, 0x10300408F51E483uLL);
    if (v7)
    {
      v8 = v7;
      v7[7] = 0;
      *(v7 + 1) = 0;
      *(v7 + 2) = 0;
      *v7 = 0;
      *(v7 + 24) = 0;
      qword_1ED442208 = sub_195206D1C("/var/db/timezone/zoneinfo/", v7);
      if (*v8)
      {
        free(*v8);
      }

      v9 = *(v8 + 2);
      if (v9)
      {
        fclose(v9);
      }

      free(v8);
    }

    v4 = qword_1ED442208;
    if (qword_1ED442208 && sub_195206BE0(qword_1ED442208))
    {
      return v4;
    }
  }

  else
  {
    byte_1ED442210[v5] = 0;
    v6 = strstr(byte_1ED442210, "/zoneinfo/");
    if (v6)
    {
      *&v19.tm_sec = v6 + 10;
      sub_195206CC0(&v19);
      v4 = *&v19.tm_sec;
      if (sub_195206BE0(*&v19.tm_sec))
      {
        qword_1ED442208 = v4;
        return v4;
      }
    }
  }

  memset(&v19, 0, sizeof(v19));
  memset(&v18, 0, sizeof(v18));
  localtime_r(&qword_1954455A8, &v19);
  localtime_r(&qword_1954455B0, &v18);
  if (v18.tm_isdst <= 0)
  {
    v10 = v19.tm_isdst > 0;
  }

  else
  {
    v10 = 2;
  }

  v11 = MEMORY[0x1E69E9960];
  v12 = *MEMORY[0x1E69E9960];
  v13 = *(MEMORY[0x1E69E9960] + 8);
  v14 = *MEMORY[0x1E69E9958];
  v15 = off_1E74025B8;
  v16 = 59;
  while (*(v15 - 4) != v14 || *(v15 - 3) != v10 || strcmp(*(v15 - 1), v12) || strcmp(*v15, v13))
  {
    v15 += 4;
    if (!--v16)
    {
      return *(v11 + 8 * a1);
    }
  }

  v4 = v15[1];
  if (!v4)
  {
    return *(v11 + 8 * a1);
  }

  return v4;
}

BOOL sub_195206BE0(char *__s1)
{
  v2 = *__s1;
  if (*__s1)
  {
    v3 = 0;
    while (v2 != 44 && (v2 - 48) >= 0xA)
    {
      v4 = v3 + 1;
      v2 = __s1[++v3];
      if (!v2)
      {
        LODWORD(v3) = v4;
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  v5 = (v3 + 2);
  v3 = v3;
  do
  {
    v6 = __s1[v3];
  }

  while ((v6 - 48) <= 9 && v3++ < v5);
  return !v6 || !strcmp(__s1, "PST8PDT") || !strcmp(__s1, "MST7MDT") || !strcmp(__s1, "CST6CDT") || strcmp(__s1, "EST5EDT") == 0;
}

uint64_t sub_195206CC0(const char **a1)
{
  v2 = *a1;
  result = strncmp(*a1, "posix/", 6uLL);
  if (!result || (result = strncmp(v2, "right/", 6uLL), !result))
  {
    *a1 = v2 + 6;
  }

  return result;
}

uint64_t sub_195206D1C(const char *a1, uint64_t a2)
{
  __ptr[65] = *MEMORY[0x1E69E9840];
  v28 = U_ZERO_ERROR;
  memset(&v32[1], 0, 48);
  *v33 = 0;
  v32[0] = &v32[1] + 5;
  LODWORD(v32[1]) = 40;
  icu::CharString::append(v32, a1, -1, &v28);
  if (v28 <= U_ZERO_ERROR && (v5 = opendir(a1)) != 0)
  {
    v6 = v5;
    if (!qword_1EAEC97C0)
    {
      operator new();
    }

    v7 = readdir(v5);
    v4 = 0;
    if (v7)
    {
      v8 = &__filename[1] + 5;
      while (1)
      {
        d_name = v7->d_name;
        if (v7->d_name[0] == 46 && (!v7->d_name[1] || v7->d_name[1] == 46 && !v7->d_name[2]) || !strcmp("posixrules", d_name) || !strcmp("localtime", d_name))
        {
          goto LABEL_19;
        }

        v31 = 0;
        memset(&__filename[1], 0, 48);
        __filename[0] = v8;
        LODWORD(__filename[1]) = 40;
        v30 = 0;
        icu::CharString::append(__filename, v32[0], v33[0], &v28);
        icu::CharString::append(__filename, d_name, -1, &v28);
        if (v28 > U_ZERO_ERROR)
        {
LABEL_15:
          v10 = 0;
          goto LABEL_16;
        }

        v11 = opendir(__filename[0]);
        if (v11)
        {
          break;
        }

        v12 = __filename[0];
        if (!*(a2 + 16))
        {
          *(a2 + 16) = fopen("/var/db/timezone/localtime", "r");
        }

        v13 = fopen(v12, "r");
        *(a2 + 28) = 0;
        if (!v13)
        {
          goto LABEL_47;
        }

        v14 = v13;
        v27 = v8;
        v15 = *(a2 + 16);
        if (!v15)
        {
          goto LABEL_46;
        }

        if (!*(a2 + 8))
        {
          fseek(v15, 0, 2);
          *(a2 + 8) = MEMORY[0x19A8B2850](*(a2 + 16));
        }

        fseek(v14, 0, 2);
        v16 = MEMORY[0x19A8B2850](v14);
        if (v16 != *(a2 + 8))
        {
          goto LABEL_46;
        }

        v17 = v16;
        if (!*a2)
        {
          rewind(*(a2 + 16));
          v18 = malloc_type_malloc(*(a2 + 8), 0x100004077774924uLL);
          *a2 = v18;
          fread(v18, 1uLL, *(a2 + 8), *(a2 + 16));
        }

        rewind(v14);
        if (v17 >= 1)
        {
          while (1)
          {
            memset(&__ptr[4], 0, 480);
            v19 = v17 >= 0x200 ? 512 : v17;
            memset(__ptr, 0, 32);
            v20 = fread(__ptr, 1uLL, v19, v14);
            v21 = *(a2 + 28);
            if (memcmp((*a2 + v21), __ptr, v20))
            {
              break;
            }

            *(a2 + 28) = v21 + v20;
            v22 = v17 <= v20;
            v17 -= v20;
            if (v22)
            {
              goto LABEL_41;
            }
          }

LABEL_46:
          fclose(v14);
          v8 = v27;
LABEL_47:
          v10 = 1;
          goto LABEL_16;
        }

LABEL_41:
        fclose(v14);
        v23 = v30;
        if (v30 >= 26)
        {
          v23 = 26;
        }

        __ptr[0] = &__filename[0][v23];
        sub_195206CC0(__ptr);
        v24 = qword_1EAEC97C0;
        *(qword_1EAEC97C0 + 56) = 0;
        **v24 = 0;
        icu::CharString::append(v24, __ptr[0], -1, &v28);
        if (v28 <= U_ZERO_ERROR)
        {
          v4 = *qword_1EAEC97C0;
        }

        v10 = 0;
        v8 = v27;
LABEL_16:
        if (BYTE4(__filename[1]))
        {
          free(__filename[0]);
        }

        if (!v10)
        {
          goto LABEL_48;
        }

LABEL_19:
        v7 = readdir(v6);
        if (!v7)
        {
          goto LABEL_48;
        }
      }

      closedir(v11);
      icu::CharString::append(__filename, 47, &v28);
      if (v28 > U_ZERO_ERROR)
      {
        goto LABEL_15;
      }

      v4 = sub_195206D1C(__filename[0], a2);
      if (v4)
      {
        goto LABEL_15;
      }

      goto LABEL_47;
    }

LABEL_48:
    closedir(v6);
  }

  else
  {
    v4 = 0;
  }

  if (BYTE4(v32[1]))
  {
    free(v32[0]);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v4;
}

void u_setDataDirectory(const char *directory)
{
  if (directory && *directory)
  {
    v2 = strlen(directory);
    v3 = malloc_type_malloc(v2 + 2, 0x100004077774924uLL);
    if (!v3)
    {
      return;
    }

    v4 = v3;
    strcpy(v3, directory);
  }

  else
  {
    v4 = "";
  }

  if (qword_1ED442610 && *qword_1ED442610)
  {
    free(qword_1ED442610);
  }

  qword_1ED442610 = v4;

  sub_1952376A4(0x19u, sub_195207274);
}

uint64_t sub_195207274()
{
  if (qword_1ED442610 && *qword_1ED442610)
  {
    free(qword_1ED442610);
  }

  qword_1ED442610 = 0;
  atomic_store(0, &unk_1ED442630);
  v0 = qword_1ED442618;
  if (qword_1ED442618)
  {
    if (*(qword_1ED442618 + 12))
    {
      free(*qword_1ED442618);
    }

    MEMORY[0x19A8B2600](v0, 0x1010C40AA5E6C2FLL);
  }

  qword_1ED442618 = 0;
  atomic_store(0, &dword_1ED443478);
  v1 = qword_1EAEC97C0;
  if (qword_1EAEC97C0)
  {
    if (*(qword_1EAEC97C0 + 12))
    {
      free(*qword_1EAEC97C0);
    }

    MEMORY[0x19A8B2600](v1, 0x1010C40AA5E6C2FLL);
  }

  qword_1EAEC97C0 = 0;
  if (qword_1ED442620 && byte_1ED442628 == 1)
  {
    free(qword_1ED442620);
    qword_1ED442620 = 0;
    byte_1ED442628 = 0;
  }

  return 1;
}

unsigned __int8 *uprv_pathIsAbsolute(unsigned __int8 *result)
{
  if (result)
  {
    return (*result == 47);
  }

  return result;
}

const char *u_getDataDirectory(void)
{
  if (atomic_load_explicit(dword_1ED442630, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442630))
  {
    sub_1952073C8();
    icu::umtx_initImplPostInit(dword_1ED442630);
  }

  return qword_1ED442610;
}

void sub_1952073C8()
{
  if (!qword_1ED442610)
  {
    v1 = getenv("ICU_DATA");
    if (!v1 || !*v1)
    {
      v1 = "/usr/share/icu";
    }

    u_setDataDirectory(v1);
  }
}

const char *__cdecl u_getTimeZoneFilesDirectory(UErrorCode *status)
{
  if (*status > 0)
  {
    return "";
  }

  if (atomic_load_explicit(&dword_1ED443478, memory_order_acquire) != 2)
  {
    if (icu::umtx_initImplPreInit(&dword_1ED443478))
    {
      sub_1952074D8();
    }
  }

  if (dword_1ED44347C >= 1)
  {
    *status = dword_1ED44347C;
    return "";
  }

  if (*status > 0)
  {
    return "";
  }

  return *qword_1ED442618;
}

void sub_1952074D8()
{
  v0 = *MEMORY[0x1E69E9840];
  sub_1952376A4(0x19u, sub_195207274);
  operator new();
}

void u_setTimeZoneFilesDirectory(const char *path, UErrorCode *status)
{
  if (*status <= 0)
  {
    if (atomic_load_explicit(&dword_1ED443478, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1ED443478))
    {
      sub_1952074D8();
    }

    if (dword_1ED44347C >= 1)
    {
      *status = dword_1ED44347C;
    }
  }

  sub_195207734(path, status);
}

icu::CharString *sub_195207734(icu::CharString *__s, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v3 = qword_1ED442618;
    *(qword_1ED442618 + 56) = 0;
    **v3 = 0;
    icu::StringPiece::StringPiece(&v4, __s);
    return icu::CharString::append(v3, v4, v5, a2);
  }

  return __s;
}

uint64_t uprv_getDefaultLocaleID()
{
  v0 = qword_1ED442638;
  if (!qword_1ED442638)
  {
    v1 = setlocale(6, 0);
    if (!v1)
    {
      goto LABEL_8;
    }

    v0 = v1;
    v2 = *v1;
    if (v2 == 67)
    {
      if (!v1[1])
      {
LABEL_8:
        v3 = getenv("LC_ALL");
        if (!v3)
        {
          v3 = getenv("LC_MESSAGES");
          if (!v3)
          {
            v3 = getenv("LANG");
            if (!v3)
            {
              goto LABEL_17;
            }
          }
        }

        v0 = v3;
LABEL_12:
        v4 = *v0;
        if (v4 == 67)
        {
          if (!v0[1])
          {
            goto LABEL_17;
          }
        }

        else if (67 == v4)
        {
          goto LABEL_17;
        }

        if (strcmp("POSIX", v0))
        {
LABEL_18:
          qword_1ED442638 = v0;
          goto LABEL_19;
        }

LABEL_17:
        v0 = "en_US_POSIX";
        goto LABEL_18;
      }
    }

    else if (67 == v2)
    {
      goto LABEL_8;
    }

    if (strcmp("POSIX", v1))
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_19:
  v5 = qword_1ED442620;
  if (qword_1ED442620)
  {
    return v5;
  }

  v7 = strlen(v0);
  v8 = malloc_type_malloc(v7 + 11, 0x100004077774924uLL);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = strcpy(v8, v0);
  v11 = strchr(v10, 46);
  if (v11)
  {
    *v11 = 0;
  }

  v12 = strchr(v9, 64);
  if (v12)
  {
    *v12 = 0;
  }

  v13 = *v9;
  if (v13 == 67)
  {
    if (!v9[1])
    {
      goto LABEL_32;
    }
  }

  else if (67 == v13)
  {
LABEL_32:
    strcpy(v9, "en_US_POSIX");
    goto LABEL_33;
  }

  if (!strcmp("POSIX", v9))
  {
    goto LABEL_32;
  }

LABEL_33:
  v14 = strrchr(v0, 64);
  if (v14)
  {
    v15 = v14;
    if (!strcmp(v14 + 1, "nynorsk"))
    {
      v16 = "NY";
    }

    else
    {
      v16 = v15 + 1;
    }

    v17 = strchr(v9, 95);
    v18 = &v9[strlen(v9)];
    if (v17)
    {
      *v18 = 95;
    }

    else
    {
      strcpy(v18, "__");
    }

    v19 = strchr(v16, 46);
    if (v19)
    {
      v20 = v19;
      v21 = strlen(v9);
      v22 = v20 - v16;
      LODWORD(v20) = v21 + v20 - v16;
      strncat(v9, v16, v22);
      v9[v20] = 0;
    }

    else
    {
      strcat(v9, v16);
    }
  }

  v5 = qword_1ED442620;
  if (qword_1ED442620)
  {
    free(v9);
  }

  else
  {
    qword_1ED442620 = v9;
    byte_1ED442628 = 1;
    sub_1952376A4(0x19u, sub_195207274);
    return qword_1ED442620;
  }

  return v5;
}

void u_versionFromString(UVersionInfo versionArray, const char *versionString)
{
  if (versionArray)
  {
    if (!versionString || (__endptr = 0, *versionArray = strtoul(versionString, &__endptr, 10), v4 = __endptr, __endptr == versionString))
    {
      LOWORD(v6) = 0;
LABEL_11:

      bzero(&versionArray[v6], (4 - v6));
    }

    else
    {
      v5 = 1;
      while (v5 != 4)
      {
        v6 = v5;
        if (*v4 == 46)
        {
          v7 = v4 + 1;
          versionArray[v5] = strtoul(v4 + 1, &__endptr, 10);
          v4 = __endptr;
          v5 = v6 + 1;
          if (__endptr != v7)
          {
            continue;
          }
        }

        if ((v6 - 1) <= 2)
        {
          goto LABEL_11;
        }

        return;
      }
    }
  }
}

void u_versionFromUString(UVersionInfo versionArray, const UChar *versionString)
{
  v8[2] = *MEMORY[0x1E69E9840];
  if (versionArray && versionString)
  {
    v7 = 0;
    v8[0] = 0;
    *(v8 + 5) = 0;
    v4 = u_strlen(versionString);
    if (v4 >= 20)
    {
      v5 = 20;
    }

    else
    {
      v5 = v4;
    }

    u_UCharsToChars(versionString, &v7, v5);
    *(&v8[-1] + v5) = 0;
    u_versionFromString(versionArray, &v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void u_versionToString(const UVersionInfo versionArray, char *versionString)
{
  if (versionString)
  {
    if (versionArray)
    {
      v2 = 4;
      while (!versionArray[v2 - 1])
      {
        if (!--v2)
        {
          v2 = 0;
          break;
        }
      }

      if (v2 <= 2u)
      {
        v3 = 2;
      }

      else
      {
        v3 = v2;
      }

      v4 = *versionArray;
      if (v4 >= 0x64)
      {
        v5 = *versionArray / 0x64u;
        *versionString++ = v5 | 0x30;
        LOBYTE(v4) = v4 - 100 * v5;
      }

      if (v4 >= 0xAu)
      {
        *versionString++ = (v4 / 0xAu) | 0x30;
        LOBYTE(v4) = v4 % 0xAu;
      }

      *versionString = v4 | 0x30;
      v6 = versionArray + 1;
      v7 = v3 - 1;
      do
      {
        versionString[1] = 46;
        v9 = *v6++;
        v8 = v9;
        if (v9 < 0x64)
        {
          versionString += 2;
        }

        else
        {
          versionString[2] = (v8 / 0x64u) | 0x30;
          versionString += 3;
          v8 %= 0x64u;
        }

        if (v8 >= 0xAu)
        {
          *versionString++ = (v8 / 0xAu) | 0x30;
          v8 %= 0xAu;
        }

        *versionString = v8 | 0x30;
        --v7;
      }

      while (v7);
      ++versionString;
    }

    *versionString = 0;
  }
}

void *uprv_dl_open(const char *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  result = dlopen(a1, 10);
  if (!result)
  {
    *a2 = 2;
  }

  return result;
}

void *uprv_dl_close(void *__handle, int *a2)
{
  if (*a2 <= 0)
  {
    return dlclose(__handle);
  }

  return __handle;
}

void *uprv_dlsym_func(void *a1, const char *a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  result = dlsym(a1, a2);
  if (!result)
  {
    *a3 = 2;
  }

  return result;
}

void icu::RuleBasedBreakIterator::RuleBasedBreakIterator(icu::RuleBasedBreakIterator *a1, int a2, UErrorCode *a3)
{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(a1, a3);
}

{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(a1, a3);
}

{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(a1, a3);
}

{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(a1, a3);
}

void icu::RuleBasedBreakIterator::RuleBasedBreakIterator(icu::RuleBasedBreakIterator *this, UErrorCode *a2)
{
  v4 = icu::BreakIterator::BreakIterator(this);
  *v4 = &unk_1F0932CB0;
  v5 = (v4 + 488);
  *(v4 + 488) = xmmword_1954455D0;
  *(v4 + 668) = 0;
  *(v4 + 504) = 0u;
  *(v4 + 520) = 0u;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 628) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(this + 178) = 0;
  *(this + 90) = v4 + 728;
  v8 = &unk_19549D930;
  icu::UCharCharacterIterator::UCharCharacterIterator();
  *(this + 760) = 0;
  *(this + 96) = 0;
  *(this + 776) = 0;
  v7 = 0;
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = &v7;
  }

  utext_openUChars(v5, 0, 0, v6);
  operator new();
}

void icu::RuleBasedBreakIterator::RuleBasedBreakIterator(icu::RuleBasedBreakIterator *a1, int a2, int a3, UErrorCode *a4)
{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(a1, a2, a4);
}

{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(a1, a2, a4);
}

void icu::RuleBasedBreakIterator::RuleBasedBreakIterator(icu::RuleBasedBreakIterator *this, const unsigned __int8 *a2, unsigned int a3, UErrorCode *a4)
{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(this, a4);
}

{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(this, a4);
}

void icu::RuleBasedBreakIterator::RuleBasedBreakIterator(icu::RuleBasedBreakIterator *this, const icu::UnicodeString *a2, UParseError *a3, UErrorCode *a4)
{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(this, a4);
}

{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(this, a4);
}

uint64_t icu::RuleBasedBreakIterator::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::BreakIterator::operator=(a1, a2);
    *(a1 + 8) = *(a2 + 8);
    v4 = *(a1 + 696);
    if (v4)
    {
      (*(*v4 + 8))(v4);
      *(a1 + 696) = 0;
    }

    status = U_ZERO_ERROR;
    utext_clone((a1 + 488), (a2 + 488), 0, 1, &status);
    v5 = *(a1 + 720);
    v6 = a1 + 728;
    if (v5 != a1 + 728 && v5 != 0)
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 720) = v6;
    v8 = *(a2 + 720);
    if (v8 && v8 != a2 + 728)
    {
      *(a1 + 720) = (*(*v8 + 64))(v8);
    }

    icu::UCharCharacterIterator::operator=(a1 + 728, a2 + 728);
    if (!*(a1 + 720))
    {
      *(a1 + 720) = v6;
    }

    v9 = *(a1 + 632);
    if (v9)
    {
      sub_195210934(v9);
      *(a1 + 632) = 0;
    }

    v10 = *(a2 + 632);
    if (v10)
    {
      *(a1 + 632) = sub_195210988(v10);
    }

    free(*(a1 + 768));
    *(a1 + 768) = 0;
    v11 = *(a1 + 632);
    if (v11)
    {
      v12 = *(*(v11 + 8) + 12);
      if (v12)
      {
        *(a1 + 768) = malloc_type_malloc(4 * v12, 0x100004052888210uLL);
      }
    }

    v13 = *(a1 + 648);
    if (v13)
    {
      MEMORY[0x19A8B25E0](v13, 0x1000C80BDFB0063);
    }

    *(a1 + 648) = 0;
    v14 = *(a1 + 656);
    if (v14)
    {
      MEMORY[0x19A8B25E0](v14, 0x1000C80789AEA99);
    }

    *(a1 + 656) = 0;
    v15 = *(a2 + 664);
    *(a1 + 664) = v15;
    if (v15)
    {
      operator new[]();
    }

    v16 = *(a2 + 668);
    *(a1 + 668) = v16;
    v17 = *(a2 + 672);
    *(a1 + 672) = v17;
    *(a1 + 760) = *(a2 + 760);
    icu::RuleBasedBreakIterator::BreakCache::reset(*(a1 + 680), v16, v17);
    icu::RuleBasedBreakIterator::DictionaryCache::reset(*(a1 + 688));
  }

  return a1;
}

void icu::RuleBasedBreakIterator::RuleBasedBreakIterator(icu::RuleBasedBreakIterator *this)
{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(this, 0);
}

{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(this, 0);
}

void icu::RuleBasedBreakIterator::RuleBasedBreakIterator(icu::RuleBasedBreakIterator *this, const icu::RuleBasedBreakIterator *a2)
{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(this, 0);
}

{
  icu::RuleBasedBreakIterator::RuleBasedBreakIterator(this, 0);
}

void icu::RuleBasedBreakIterator::~RuleBasedBreakIterator(icu::RuleBasedBreakIterator *this)
{
  *this = &unk_1F0932CB0;
  v2 = *(this + 90);
  if (v2 != (this + 728) && v2 != 0)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 90) = 0;
  utext_close((this + 488));
  v4 = *(this + 79);
  if (v4)
  {
    sub_195210934(v4);
    *(this + 79) = 0;
  }

  v5 = *(this + 85);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 85) = 0;
  v6 = *(this + 86);
  if (v6)
  {
    icu::RuleBasedBreakIterator::DictionaryCache::~DictionaryCache(v6);
    MEMORY[0x19A8B2600]();
  }

  *(this + 86) = 0;
  v7 = *(this + 87);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 87) = 0;
  v8 = *(this + 88);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 88) = 0;
  free(*(this + 96));
  *(this + 96) = 0;
  v9 = *(this + 81);
  if (v9)
  {
    MEMORY[0x19A8B25E0](v9, 0x1000C80BDFB0063);
  }

  *(this + 81) = 0;
  v10 = *(this + 82);
  if (v10)
  {
    MEMORY[0x19A8B25E0](v10, 0x1000C80789AEA99);
  }

  *(this + 82) = 0;
  *(this + 166) = 0;
  icu::UCharCharacterIterator::~UCharCharacterIterator((this + 728));

  icu::BreakIterator::~BreakIterator(this);
}

{
  icu::RuleBasedBreakIterator::~RuleBasedBreakIterator(this);

  JUMPOUT(0x19A8B2600);
}

void icu::RuleBasedBreakIterator::setCategoryOverrides(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 656);
  if (v4)
  {
    MEMORY[0x19A8B25E0](v4, 0x1000C80789AEA99);
  }

  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  if (*(a2 + 8) != 100 || *(a2 + 9) != 97 || *(a2 + 10))
  {
    v25 = 0;
    v5 = ulocdata_open(*(a2 + 40), &v25);
    if (v25 <= 0)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      v9 = 1;
      memset(v26, 0, sizeof(v26));
      do
      {
        v10 = v9;
        v24 = 0;
        v23 = 0;
        v25 = 0;
        v11 = &dword_1954455E0[2 * v7];
        if (ulocdata_getDelimiter(v6, *v11, &v23, 3, &v25) == 1 && v25 < 1)
        {
          v13 = v23;
        }

        else
        {
          v13 = 0;
        }

        v25 = 0;
        Delimiter = ulocdata_getDelimiter(v6, v11[1], &v23, 3, &v25);
        v15 = 0;
        if (v25 <= 0 && Delimiter == 1)
        {
          v17 = v23;
          if (v23 == 8220)
          {
            v17 = 8221;
          }

          if (v17 == 8216)
          {
            v15 = 0;
          }

          else
          {
            v15 = v17;
          }
        }

        if (v13 != v15)
        {
          if (u_getIntPropertyValue(v13, UCHAR_LINE_BREAK) == 23 && v13 != 8217)
          {
            v19 = v26 + 8 * v8;
            *v19 = v13;
            ++v8;
            *(v19 + 2) = ucptrie_get(*(*(a1 + 632) + 48), 0x7Bu);
          }

          IntPropertyValue = u_getIntPropertyValue(v15, UCHAR_LINE_BREAK);
          if (v15 != 8217 && IntPropertyValue == 23)
          {
            v21 = v26 + 8 * v8;
            *v21 = v15;
            ++v8;
            *(v21 + 2) = ucptrie_get(*(*(a1 + 632) + 48), 0x7Du);
          }
        }

        v9 = 0;
        v7 = 1;
      }

      while ((v10 & 1) != 0);
      ulocdata_close(v6);
      if (v8 > 0)
      {
        *(a1 + 664) = v8;
        operator new[]();
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t icu::RuleBasedBreakIterator::operator==(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    if (a1 == a2)
    {
      return 1;
    }

    if (*(a2 + 8) == *(a1 + 8))
    {
      result = utext_equals((a1 + 488), (a2 + 488));
      if (!result)
      {
        return result;
      }

      if (*(a1 + 668) == *(a2 + 668) && *(a1 + 672) == *(a2 + 672) && *(a1 + 760) == *(a2 + 760))
      {
        v5 = *(a2 + 632);
        v6 = *(a1 + 632);
        if (v5 == v6 || v5 && v6 && sub_1952108D4(v5, v6))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t icu::RuleBasedBreakIterator::hashCode(icu::RuleBasedBreakIterator *this)
{
  result = *(this + 79);
  if (result)
  {
    return sub_195210928(result);
  }

  return result;
}

uint64_t icu::RuleBasedBreakIterator::setText(uint64_t this, UText *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v10[5] = v3;
    v10[6] = v4;
    v7 = this;
    icu::RuleBasedBreakIterator::BreakCache::reset(*(this + 680), 0, 0);
    icu::RuleBasedBreakIterator::DictionaryCache::reset(*(v7 + 688));
    utext_clone((v7 + 488), a2, 0, 1, a3);
    v10[0] = &unk_19549D930;
    icu::UCharCharacterIterator::setText(v7 + 728, v10, 0);
    v8 = *(v7 + 720);
    if (v8 != v7 + 728 && v8 != 0)
    {
      (*(*v8 + 8))(v8);
    }

    *(v7 + 720) = v7 + 728;
    return (*(*v7 + 80))(v7);
  }

  return this;
}

uint64_t icu::RuleBasedBreakIterator::adoptText(icu::RuleBasedBreakIterator *this, icu::CharacterIterator *a2)
{
  v4 = *(this + 90);
  if (v4 != (this + 728) && v4 != 0)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 90) = a2;
  status = U_ZERO_ERROR;
  icu::RuleBasedBreakIterator::BreakCache::reset(*(this + 85), 0, 0);
  icu::RuleBasedBreakIterator::DictionaryCache::reset(*(this + 86));
  if (a2 && !*(a2 + 4))
  {
    v6.n128_f64[0] = utext_openCharacterIterator((this + 488), a2, &status);
  }

  else
  {
    utext_openUChars((this + 488), 0, 0, &status);
  }

  return (*(*this + 80))(this, v6);
}

uint64_t icu::RuleBasedBreakIterator::setText(icu::RuleBasedBreakIterator *this, const icu::UnicodeString *a2)
{
  status = U_ZERO_ERROR;
  icu::RuleBasedBreakIterator::BreakCache::reset(*(this + 85), 0, 0);
  icu::RuleBasedBreakIterator::DictionaryCache::reset(*(this + 86));
  utext_openConstUnicodeString((this + 488), a2, &status);
  v4 = this + 728;
  v5 = *(a2 + 4);
  if ((v5 & 0x11) != 0)
  {
    v6 = 0;
  }

  else if ((v5 & 2) != 0)
  {
    v6 = a2 + 10;
  }

  else
  {
    v6 = *(a2 + 3);
  }

  v7 = v5;
  v12 = v6;
  v8 = v5 >> 5;
  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a2 + 3);
  }

  icu::UCharCharacterIterator::setText(this + 728, &v12, v9);
  v10 = *(this + 90);
  if (v10 != v4 && v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 90) = v4;
  return (*(*this + 80))(this);
}

icu::RuleBasedBreakIterator *icu::RuleBasedBreakIterator::refreshInputText(icu::RuleBasedBreakIterator *this, UText *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (!a2 || (NativeIndex = utext_getNativeIndex((this + 488)), utext_clone((this + 488), a2, 0, 1, a3), *a3 <= 0) && (utext_setNativeIndex((this + 488), NativeIndex), utext_getNativeIndex((this + 488)) != NativeIndex))
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return this;
}

uint64_t icu::RuleBasedBreakIterator::first(icu::RuleBasedBreakIterator ***this)
{
  v3 = U_ZERO_ERROR;
  if (!icu::RuleBasedBreakIterator::BreakCache::seek(this[85], 0))
  {
    icu::RuleBasedBreakIterator::BreakCache::populateNear(this[85], 0, &v3);
  }

  icu::RuleBasedBreakIterator::BreakCache::current(this[85]);
  return 0;
}

int64_t icu::RuleBasedBreakIterator::last(icu::RuleBasedBreakIterator *this)
{
  v2 = utext_nativeLength((this + 488));
  (*(*this + 136))(this, v2);
  return v2;
}

uint64_t icu::RuleBasedBreakIterator::next(icu::RuleBasedBreakIterator *this, int a2)
{
  v2 = a2;
  if (a2 < 1)
  {
    if (a2 < 0)
    {
      v6 = a2 + 1;
      do
      {
        result = (*(*this + 96))(this);
        if (!v6)
        {
          break;
        }

        ++v6;
      }

      while (result != -1);
    }

    else
    {
      v5 = *(*this + 112);

      return v5();
    }
  }

  else
  {
    do
    {
      result = (*(*this + 104))(this);
      if (v2 < 2)
      {
        break;
      }

      --v2;
    }

    while (result != -1);
  }

  return result;
}

uint64_t icu::RuleBasedBreakIterator::next(icu::RuleBasedBreakIterator *this)
{
  sub_1952094C0(*(this + 85));
  if (*(this + 760))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(this + 167);
  }
}

uint64_t sub_1952094C0(uint64_t result)
{
  v1 = *(result + 28);
  if (v1 == *(result + 20))
  {
    return icu::RuleBasedBreakIterator::BreakCache::nextOL(result);
  }

  v2 = (v1 + 1) & 0x7F;
  v3 = *(result + 4 * v2 + 32);
  v4 = *(result + 8);
  *(v4 + 668) = v3;
  *(result + 24) = v3;
  *(result + 28) = v2;
  *(v4 + 672) = *(result + 2 * v2 + 544);
  return result;
}

uint64_t icu::RuleBasedBreakIterator::previous(icu::RuleBasedBreakIterator *this)
{
  v3 = U_ZERO_ERROR;
  icu::RuleBasedBreakIterator::BreakCache::previous(*(this + 85), &v3);
  if (*(this + 760))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(this + 167);
  }
}

uint64_t icu::RuleBasedBreakIterator::following(icu::RuleBasedBreakIterator::BreakCache **this, int64_t nativeIndex)
{
  if ((nativeIndex & 0x80000000) != 0)
  {
    v5 = *(*this + 10);

    return v5();
  }

  else
  {
    utext_setNativeIndex((this + 61), nativeIndex);
    v3 = utext_getNativeIndex((this + 61));
    v6 = U_ZERO_ERROR;
    icu::RuleBasedBreakIterator::BreakCache::following(this[85], v3, &v6);
    if (this[95])
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return *(this + 167);
    }
  }
}

uint64_t icu::RuleBasedBreakIterator::preceding(icu::RuleBasedBreakIterator *this, int a2)
{
  if (utext_nativeLength((this + 488)) >= a2)
  {
    utext_setNativeIndex((this + 488), a2);
    NativeIndex = utext_getNativeIndex((this + 488));
    v7 = U_ZERO_ERROR;
    icu::RuleBasedBreakIterator::BreakCache::preceding(*(this + 85), NativeIndex, &v7);
    if (*(this + 760))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return *(this + 167);
    }
  }

  else
  {
    v4 = *(*this + 88);

    return v4(this);
  }
}

uint64_t icu::RuleBasedBreakIterator::isBoundary(icu::RuleBasedBreakIterator *this, int64_t nativeIndex)
{
  if ((nativeIndex & 0x80000000) != 0)
  {
    (*(*this + 80))(this);
  }

  else
  {
    v3 = nativeIndex;
    v4 = nativeIndex;
    utext_setNativeIndex((this + 488), nativeIndex);
    v5 = utext_getNativeIndex((this + 488));
    v9 = U_ZERO_ERROR;
    if (icu::RuleBasedBreakIterator::BreakCache::seek(*(this + 85), v5) || icu::RuleBasedBreakIterator::BreakCache::populateNear(*(this + 85), v5, &v9))
    {
      v6 = icu::RuleBasedBreakIterator::BreakCache::current(*(this + 85));
      v7 = v6;
      if (v5 < v3 && v6 == v3 && utext_char32At((this + 488), v4) == -1)
      {
        return 0;
      }

      if (v7 == v3)
      {
        return 1;
      }
    }

    (*(*this + 104))(this);
  }

  return 0;
}

int64_t icu::RuleBasedBreakIterator::handleNext(icu::RuleBasedBreakIterator *this)
{
  v2 = *(this + 79);
  v3 = *(v2 + 8);
  ValueWidth = ucptrie_getValueWidth(*(v2 + 48));
  if ((*(v3 + 16) & 4) != 0)
  {
    if (ValueWidth == 2)
    {
      v9 = sub_195209B88(this);
      do
      {
        v6 = v9;
        if (!*(this + 2))
        {
          break;
        }

        v10 = utext_char32At((this + 488), v9 - 1);
        v11 = utext_char32At((this + 488), v6);
        if (v11 == -1 || v10 == -1)
        {
          break;
        }

        if (*(this + 2) == 1)
        {
          v19 = 0;
          if (uscript_getScript(v11, &v19) != 18 || uscript_getScript(v10, &v19) != 18)
          {
            return v6;
          }
        }

        else if (!u_isalpha(v11) || !u_isalpha(v10))
        {
          return v6;
        }

        v9 = sub_195209B88(this);
      }

      while (v9 > v6);
    }

    else
    {
      v15 = sub_195209F14(this);
      do
      {
        v6 = v15;
        if (!*(this + 2))
        {
          break;
        }

        v16 = utext_char32At((this + 488), v15 - 1);
        v17 = utext_char32At((this + 488), v6);
        if (v17 == -1 || v16 == -1)
        {
          break;
        }

        if (*(this + 2) == 1)
        {
          v19 = 0;
          if (uscript_getScript(v17, &v19) != 18 || uscript_getScript(v16, &v19) != 18)
          {
            return v6;
          }
        }

        else if (!u_isalpha(v17) || !u_isalpha(v16))
        {
          return v6;
        }

        v15 = sub_195209F14(this);
      }

      while (v15 > v6);
    }
  }

  else if (ValueWidth == 2)
  {
    v5 = sub_19520A2A0(this);
    do
    {
      v6 = v5;
      if (!*(this + 2))
      {
        break;
      }

      v7 = utext_char32At((this + 488), v5 - 1);
      v8 = utext_char32At((this + 488), v6);
      if (v8 == -1 || v7 == -1)
      {
        break;
      }

      if (*(this + 2) == 1)
      {
        v19 = 0;
        if (uscript_getScript(v8, &v19) != 18 || uscript_getScript(v7, &v19) != 18)
        {
          return v6;
        }
      }

      else if (!u_isalpha(v8) || !u_isalpha(v7))
      {
        return v6;
      }

      v5 = sub_19520A2A0(this);
    }

    while (v5 > v6);
  }

  else
  {
    v12 = sub_19520A62C(this);
    do
    {
      v6 = v12;
      if (!*(this + 2))
      {
        break;
      }

      v13 = utext_char32At((this + 488), v12 - 1);
      v14 = utext_char32At((this + 488), v6);
      if (v14 == -1 || v13 == -1)
      {
        break;
      }

      if (*(this + 2) == 1)
      {
        v19 = 0;
        if (uscript_getScript(v14, &v19) != 18 || uscript_getScript(v13, &v19) != 18)
        {
          return v6;
        }
      }

      else if (!u_isalpha(v14) || !u_isalpha(v13))
      {
        return v6;
      }

      v12 = sub_19520A62C(this);
    }

    while (v12 > v6);
  }

  return v6;
}

int64_t icu::RuleBasedBreakIterator::handleNextInternal(icu::RuleBasedBreakIterator *this)
{
  v2 = *(this + 79);
  v3 = *(v2 + 8);
  ValueWidth = ucptrie_getValueWidth(*(v2 + 48));
  if ((*(v3 + 16) & 4) != 0)
  {
    if (ValueWidth == 2)
    {

      return sub_195209B88(this);
    }

    else
    {

      return sub_195209F14(this);
    }
  }

  else if (ValueWidth == 2)
  {

    return sub_19520A2A0(this);
  }

  else
  {

    return sub_19520A62C(this);
  }
}

int64_t sub_195209B88(uint64_t a1)
{
  v2 = *(*(a1 + 632) + 8);
  v37 = v2[1];
  v35 = v2[2];
  *(a1 + 672) = 0;
  *(a1 + 712) = 0;
  v3 = *(a1 + 668);
  v4 = v3 - *(a1 + 520);
  if (v4 < 0 || v4 >= *(a1 + 516) || *(*(a1 + 536) + 2 * v4) >> 10 > 0x36u)
  {
    utext_setNativeIndex((a1 + 488), v3);
    LODWORD(v4) = *(a1 + 528);
  }

  else
  {
    *(a1 + 528) = v4;
  }

  if (v4 >= *(a1 + 532) || (v5 = *(*(a1 + 536) + 2 * v4), v5 >> 11 > 0x1A))
  {
    v5 = utext_next32((a1 + 488));
    if (v5 == -1)
    {
      *(a1 + 760) = 1;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(a1 + 528) = v4 + 1;
  }

  v31 = v3;
  v32 = v3;
  v6 = v2 + 5;
  v7 = v2[4] & 2;
  v8 = (v2[4] & 2) == 0;
  v9 = v2 + 23;
  v36 = v3;
  v10 = v37;
  v11 = v37;
LABEL_11:
  v33 = v5 & 0x3F;
  v34 = v5 >> 6;
  v12 = v5;
  while (1)
  {
    if (v12 == -1)
    {
      if (v8 == 2)
      {
        break;
      }

      v14 = 0;
      v8 = 2;
      v7 = 1;
    }

    else if (v8 == 1)
    {
      if (v12 <= 255 && (v13 = *(a1 + 648)) != 0)
      {
        v7 = *(v13 + 2 * v12);
      }

      else
      {
        v15 = *(a1 + 664);
        if (v15 < 1)
        {
LABEL_24:
          v17 = *(*(a1 + 632) + 48);
          v18 = *(v17 + 8);
          if (WORD1(v12))
          {
            if (WORD1(v12) > 0x10u)
            {
              v19 = *(v17 + 20) - 1;
            }

            else if (*(v17 + 24) <= v12)
            {
              v19 = *(v17 + 20) - 2;
            }

            else
            {
              v19 = ucptrie_internalSmallIndex(v17, v12);
              v10 = v37;
            }
          }

          else
          {
            v19 = v33 + *(*v17 + 2 * v34);
          }

          v7 = *(v18 + v19);
          v20 = *(a1 + 712);
          if (v35 <= v7)
          {
            ++v20;
          }

          *(a1 + 712) = v20;
        }

        else
        {
          v16 = (*(a1 + 656) + 4);
          while (v12 != *(v16 - 1))
          {
            v16 += 4;
            if (!--v15)
            {
              goto LABEL_24;
            }
          }

          v7 = *v16;
        }
      }

      v14 = 1;
      v8 = 1;
    }

    else
    {
      v14 = 0;
    }

    v21 = v9[v11 + v7];
    v11 = (v10 * v21);
    v22 = v6 + v11;
    if (*(v6 + v11))
    {
      if (*(v6 + v11) == 1)
      {
        if (v8)
        {
          v23 = *(a1 + 528);
          if (v23 <= *(a1 + 516))
          {
            v36 = *(a1 + 520) + v23;
          }

          else
          {
            v24 = (*(*(a1 + 544) + 64))(a1 + 488);
            v10 = v37;
            v36 = v24;
          }
        }

        *(a1 + 672) = v22[2];
      }

      else
      {
        v25 = *(*(a1 + 768) + 4 * *(v6 + v11));
        if ((v25 & 0x80000000) == 0)
        {
          *(a1 + 672) = v22[2];
          *(a1 + 668) = v25;
          return v25;
        }
      }
    }

    v26 = v22[1];
    if (v26 >= 2)
    {
      v27 = *(a1 + 528);
      if (v27 <= *(a1 + 516))
      {
        v28 = *(a1 + 520) + v27;
      }

      else
      {
        LODWORD(v28) = (*(*(a1 + 544) + 64))(a1 + 488);
        v10 = v37;
      }

      *(*(a1 + 768) + 4 * v26) = v28;
    }

    if (!v21)
    {
      break;
    }

    if (v14)
    {
      v29 = *(a1 + 528);
      if (v29 >= *(a1 + 532) || (v5 = *(*(a1 + 536) + 2 * v29), v5 >> 11 > 0x1A))
      {
        v5 = utext_next32((a1 + 488));
        v10 = v37;
        v8 = 1;
      }

      else
      {
        *(a1 + 528) = v29 + 1;
        v8 = 1;
      }

      goto LABEL_11;
    }

    if (v8 <= 1)
    {
      v8 = 1;
    }
  }

  result = v36;
  if (v36 == v31)
  {
    utext_setNativeIndex((a1 + 488), v32);
    utext_next32((a1 + 488));
    result = utext_getNativeIndex((a1 + 488));
    *(a1 + 672) = 0;
  }

  *(a1 + 668) = result;
  return result;
}

int64_t sub_195209F14(uint64_t a1)
{
  v2 = *(*(a1 + 632) + 8);
  v37 = v2[1];
  v35 = v2[2];
  *(a1 + 672) = 0;
  *(a1 + 712) = 0;
  v3 = *(a1 + 668);
  v4 = v3 - *(a1 + 520);
  if (v4 < 0 || v4 >= *(a1 + 516) || *(*(a1 + 536) + 2 * v4) >> 10 > 0x36u)
  {
    utext_setNativeIndex((a1 + 488), v3);
    LODWORD(v4) = *(a1 + 528);
  }

  else
  {
    *(a1 + 528) = v4;
  }

  if (v4 >= *(a1 + 532) || (v5 = *(*(a1 + 536) + 2 * v4), v5 >> 11 > 0x1A))
  {
    v5 = utext_next32((a1 + 488));
    if (v5 == -1)
    {
      *(a1 + 760) = 1;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(a1 + 528) = v4 + 1;
  }

  v31 = v3;
  v32 = v3;
  v6 = v2 + 5;
  v7 = v2[4] & 2;
  v8 = (v2[4] & 2) == 0;
  v9 = v2 + 23;
  v36 = v3;
  v10 = v37;
  v11 = v37;
LABEL_11:
  v33 = v5 & 0x3F;
  v34 = v5 >> 6;
  v12 = v5;
  while (1)
  {
    if (v12 == -1)
    {
      if (v8 == 2)
      {
        break;
      }

      v14 = 0;
      v8 = 2;
      v7 = 1;
    }

    else if (v8 == 1)
    {
      if (v12 <= 255 && (v13 = *(a1 + 648)) != 0)
      {
        v7 = *(v13 + 2 * v12);
      }

      else
      {
        v15 = *(a1 + 664);
        if (v15 < 1)
        {
LABEL_24:
          v17 = *(*(a1 + 632) + 48);
          v18 = *(v17 + 8);
          if (WORD1(v12))
          {
            if (WORD1(v12) > 0x10u)
            {
              v19 = *(v17 + 20) - 1;
            }

            else if (*(v17 + 24) <= v12)
            {
              v19 = *(v17 + 20) - 2;
            }

            else
            {
              v19 = ucptrie_internalSmallIndex(v17, v12);
              v10 = v37;
            }
          }

          else
          {
            v19 = v33 + *(*v17 + 2 * v34);
          }

          v7 = *(v18 + 2 * v19);
          v20 = *(a1 + 712);
          if (v35 <= v7)
          {
            ++v20;
          }

          *(a1 + 712) = v20;
        }

        else
        {
          v16 = (*(a1 + 656) + 4);
          while (v12 != *(v16 - 1))
          {
            v16 += 4;
            if (!--v15)
            {
              goto LABEL_24;
            }
          }

          v7 = *v16;
        }
      }

      v14 = 1;
      v8 = 1;
    }

    else
    {
      v14 = 0;
    }

    v21 = v9[v11 + v7];
    v11 = (v10 * v21);
    v22 = v6 + v11;
    if (*(v6 + v11))
    {
      if (*(v6 + v11) == 1)
      {
        if (v8)
        {
          v23 = *(a1 + 528);
          if (v23 <= *(a1 + 516))
          {
            v36 = *(a1 + 520) + v23;
          }

          else
          {
            v24 = (*(*(a1 + 544) + 64))(a1 + 488);
            v10 = v37;
            v36 = v24;
          }
        }

        *(a1 + 672) = v22[2];
      }

      else
      {
        v25 = *(*(a1 + 768) + 4 * *(v6 + v11));
        if ((v25 & 0x80000000) == 0)
        {
          *(a1 + 672) = v22[2];
          *(a1 + 668) = v25;
          return v25;
        }
      }
    }

    v26 = v22[1];
    if (v26 >= 2)
    {
      v27 = *(a1 + 528);
      if (v27 <= *(a1 + 516))
      {
        v28 = *(a1 + 520) + v27;
      }

      else
      {
        LODWORD(v28) = (*(*(a1 + 544) + 64))(a1 + 488);
        v10 = v37;
      }

      *(*(a1 + 768) + 4 * v26) = v28;
    }

    if (!v21)
    {
      break;
    }

    if (v14)
    {
      v29 = *(a1 + 528);
      if (v29 >= *(a1 + 532) || (v5 = *(*(a1 + 536) + 2 * v29), v5 >> 11 > 0x1A))
      {
        v5 = utext_next32((a1 + 488));
        v10 = v37;
        v8 = 1;
      }

      else
      {
        *(a1 + 528) = v29 + 1;
        v8 = 1;
      }

      goto LABEL_11;
    }

    if (v8 <= 1)
    {
      v8 = 1;
    }
  }

  result = v36;
  if (v36 == v31)
  {
    utext_setNativeIndex((a1 + 488), v32);
    utext_next32((a1 + 488));
    result = utext_getNativeIndex((a1 + 488));
    *(a1 + 672) = 0;
  }

  *(a1 + 668) = result;
  return result;
}

int64_t sub_19520A2A0(uint64_t a1)
{
  v2 = *(*(a1 + 632) + 8);
  v37 = v2[1];
  v35 = v2[2];
  *(a1 + 672) = 0;
  *(a1 + 712) = 0;
  v3 = *(a1 + 668);
  v4 = v3 - *(a1 + 520);
  if (v4 < 0 || v4 >= *(a1 + 516) || *(*(a1 + 536) + 2 * v4) >> 10 > 0x36u)
  {
    utext_setNativeIndex((a1 + 488), v3);
    LODWORD(v4) = *(a1 + 528);
  }

  else
  {
    *(a1 + 528) = v4;
  }

  if (v4 >= *(a1 + 532) || (v5 = *(*(a1 + 536) + 2 * v4), v5 >> 11 > 0x1A))
  {
    v5 = utext_next32((a1 + 488));
    if (v5 == -1)
    {
      *(a1 + 760) = 1;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(a1 + 528) = v4 + 1;
  }

  v31 = v3;
  v32 = v3;
  v6 = v2 + 5;
  v7 = v2[4] & 2;
  v8 = (v2[4] & 2) == 0;
  v9 = v2 + 26;
  v36 = v3;
  v10 = v37;
  v11 = v37;
LABEL_11:
  v33 = v5 & 0x3F;
  v34 = v5 >> 6;
  v12 = v5;
  while (1)
  {
    if (v12 == -1)
    {
      if (v8 == 2)
      {
        break;
      }

      v14 = 0;
      v8 = 2;
      v7 = 1;
    }

    else if (v8 == 1)
    {
      if (v12 <= 255 && (v13 = *(a1 + 648)) != 0)
      {
        v7 = *(v13 + 2 * v12);
      }

      else
      {
        v15 = *(a1 + 664);
        if (v15 < 1)
        {
LABEL_24:
          v17 = *(*(a1 + 632) + 48);
          v18 = *(v17 + 8);
          if (WORD1(v12))
          {
            if (WORD1(v12) > 0x10u)
            {
              v19 = *(v17 + 20) - 1;
            }

            else if (*(v17 + 24) <= v12)
            {
              v19 = *(v17 + 20) - 2;
            }

            else
            {
              v19 = ucptrie_internalSmallIndex(v17, v12);
              v10 = v37;
            }
          }

          else
          {
            v19 = v33 + *(*v17 + 2 * v34);
          }

          v7 = *(v18 + v19);
          v20 = *(a1 + 712);
          if (v35 <= v7)
          {
            ++v20;
          }

          *(a1 + 712) = v20;
        }

        else
        {
          v16 = (*(a1 + 656) + 4);
          while (v12 != *(v16 - 1))
          {
            v16 += 4;
            if (!--v15)
            {
              goto LABEL_24;
            }
          }

          v7 = *v16;
        }
      }

      v14 = 1;
      v8 = 1;
    }

    else
    {
      v14 = 0;
    }

    v21 = *&v9[2 * v7 + v11];
    v11 = (v10 * v21);
    v22 = v6 + v11;
    if (*(v6 + v11))
    {
      if (*(v6 + v11) == 1)
      {
        if (v8)
        {
          v23 = *(a1 + 528);
          if (v23 <= *(a1 + 516))
          {
            v36 = *(a1 + 520) + v23;
          }

          else
          {
            v24 = (*(*(a1 + 544) + 64))(a1 + 488);
            v10 = v37;
            v36 = v24;
          }
        }

        *(a1 + 672) = *(v22 + 2);
      }

      else
      {
        v25 = *(*(a1 + 768) + 4 * *(v6 + v11));
        if ((v25 & 0x80000000) == 0)
        {
          *(a1 + 672) = *(v22 + 2);
          *(a1 + 668) = v25;
          return v25;
        }
      }
    }

    v26 = *(v22 + 1);
    if (v26 >= 2)
    {
      v27 = *(a1 + 528);
      if (v27 <= *(a1 + 516))
      {
        v28 = *(a1 + 520) + v27;
      }

      else
      {
        LODWORD(v28) = (*(*(a1 + 544) + 64))(a1 + 488);
        v10 = v37;
      }

      *(*(a1 + 768) + 4 * v26) = v28;
    }

    if (!v21)
    {
      break;
    }

    if (v14)
    {
      v29 = *(a1 + 528);
      if (v29 >= *(a1 + 532) || (v5 = *(*(a1 + 536) + 2 * v29), v5 >> 11 > 0x1A))
      {
        v5 = utext_next32((a1 + 488));
        v10 = v37;
        v8 = 1;
      }

      else
      {
        *(a1 + 528) = v29 + 1;
        v8 = 1;
      }

      goto LABEL_11;
    }

    if (v8 <= 1)
    {
      v8 = 1;
    }
  }

  result = v36;
  if (v36 == v31)
  {
    utext_setNativeIndex((a1 + 488), v32);
    utext_next32((a1 + 488));
    result = utext_getNativeIndex((a1 + 488));
    *(a1 + 672) = 0;
  }

  *(a1 + 668) = result;
  return result;
}

int64_t sub_19520A62C(uint64_t a1)
{
  v2 = *(*(a1 + 632) + 8);
  v37 = v2[1];
  v35 = v2[2];
  *(a1 + 672) = 0;
  *(a1 + 712) = 0;
  v3 = *(a1 + 668);
  v4 = v3 - *(a1 + 520);
  if (v4 < 0 || v4 >= *(a1 + 516) || *(*(a1 + 536) + 2 * v4) >> 10 > 0x36u)
  {
    utext_setNativeIndex((a1 + 488), v3);
    LODWORD(v4) = *(a1 + 528);
  }

  else
  {
    *(a1 + 528) = v4;
  }

  if (v4 >= *(a1 + 532) || (v5 = *(*(a1 + 536) + 2 * v4), v5 >> 11 > 0x1A))
  {
    v5 = utext_next32((a1 + 488));
    if (v5 == -1)
    {
      *(a1 + 760) = 1;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(a1 + 528) = v4 + 1;
  }

  v31 = v3;
  v32 = v3;
  v6 = v2 + 5;
  v7 = v2[4] & 2;
  v8 = (v2[4] & 2) == 0;
  v9 = v2 + 26;
  v36 = v3;
  v10 = v37;
  v11 = v37;
LABEL_11:
  v33 = v5 & 0x3F;
  v34 = v5 >> 6;
  v12 = v5;
  while (1)
  {
    if (v12 == -1)
    {
      if (v8 == 2)
      {
        break;
      }

      v14 = 0;
      v8 = 2;
      v7 = 1;
    }

    else if (v8 == 1)
    {
      if (v12 <= 255 && (v13 = *(a1 + 648)) != 0)
      {
        v7 = *(v13 + 2 * v12);
      }

      else
      {
        v15 = *(a1 + 664);
        if (v15 < 1)
        {
LABEL_24:
          v17 = *(*(a1 + 632) + 48);
          v18 = *(v17 + 8);
          if (WORD1(v12))
          {
            if (WORD1(v12) > 0x10u)
            {
              v19 = *(v17 + 20) - 1;
            }

            else if (*(v17 + 24) <= v12)
            {
              v19 = *(v17 + 20) - 2;
            }

            else
            {
              v19 = ucptrie_internalSmallIndex(v17, v12);
              v10 = v37;
            }
          }

          else
          {
            v19 = v33 + *(*v17 + 2 * v34);
          }

          v7 = *(v18 + 2 * v19);
          v20 = *(a1 + 712);
          if (v35 <= v7)
          {
            ++v20;
          }

          *(a1 + 712) = v20;
        }

        else
        {
          v16 = (*(a1 + 656) + 4);
          while (v12 != *(v16 - 1))
          {
            v16 += 4;
            if (!--v15)
            {
              goto LABEL_24;
            }
          }

          v7 = *v16;
        }
      }

      v14 = 1;
      v8 = 1;
    }

    else
    {
      v14 = 0;
    }

    v21 = *&v9[2 * v7 + v11];
    v11 = (v10 * v21);
    v22 = v6 + v11;
    if (*(v6 + v11))
    {
      if (*(v6 + v11) == 1)
      {
        if (v8)
        {
          v23 = *(a1 + 528);
          if (v23 <= *(a1 + 516))
          {
            v36 = *(a1 + 520) + v23;
          }

          else
          {
            v24 = (*(*(a1 + 544) + 64))(a1 + 488);
            v10 = v37;
            v36 = v24;
          }
        }

        *(a1 + 672) = *(v22 + 2);
      }

      else
      {
        v25 = *(*(a1 + 768) + 4 * *(v6 + v11));
        if ((v25 & 0x80000000) == 0)
        {
          *(a1 + 672) = *(v22 + 2);
          *(a1 + 668) = v25;
          return v25;
        }
      }
    }

    v26 = *(v22 + 1);
    if (v26 >= 2)
    {
      v27 = *(a1 + 528);
      if (v27 <= *(a1 + 516))
      {
        v28 = *(a1 + 520) + v27;
      }

      else
      {
        LODWORD(v28) = (*(*(a1 + 544) + 64))(a1 + 488);
        v10 = v37;
      }

      *(*(a1 + 768) + 4 * v26) = v28;
    }

    if (!v21)
    {
      break;
    }

    if (v14)
    {
      v29 = *(a1 + 528);
      if (v29 >= *(a1 + 532) || (v5 = *(*(a1 + 536) + 2 * v29), v5 >> 11 > 0x1A))
      {
        v5 = utext_next32((a1 + 488));
        v10 = v37;
        v8 = 1;
      }

      else
      {
        *(a1 + 528) = v29 + 1;
        v8 = 1;
      }

      goto LABEL_11;
    }

    if (v8 <= 1)
    {
      v8 = 1;
    }
  }

  result = v36;
  if (v36 == v31)
  {
    utext_setNativeIndex((a1 + 488), v32);
    utext_next32((a1 + 488));
    result = utext_getNativeIndex((a1 + 488));
    *(a1 + 672) = 0;
  }

  *(a1 + 668) = result;
  return result;
}

uint64_t icu::RuleBasedBreakIterator::handleSafePrevious(icu::RuleBasedBreakIterator *this, int a2)
{
  v4 = *(this + 79);
  v5 = *(v4 + 16);
  ValueWidth = ucptrie_getValueWidth(*(v4 + 48));
  v7 = *(*(this + 79) + 16);
  v8 = a2 - *(this + 65);
  if ((*(v5 + 16) & 4) != 0)
  {
    if (ValueWidth != 2)
    {
      if (v8 < 0 || (v12 = *(this + 129), v8 >= v12) || *(*(this + 67) + 2 * v8) >> 10 > 0x36u)
      {
        utext_setNativeIndex((this + 488), a2);
        if (!*(this + 79))
        {
          return 0xFFFFFFFFLL;
        }

        LODWORD(v8) = *(this + 132);
        LODWORD(v12) = *(this + 129);
      }

      else
      {
        *(this + 132) = v8;
      }

      if (v8 <= v12)
      {
        if (!(*(this + 65) + v8))
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (!(*(*(this + 68) + 64))(this + 488))
      {
        return 0xFFFFFFFFLL;
      }

      v23 = *(this + 132);
      if (v23 < 1 || (v24 = *(this + 67), *(v24 + 2 * v23 - 2) >> 11 > 0x1Au))
      {
        v16 = utext_previous32((this + 488));
        if (v16 == -1)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v25 = v23 - 1;
        *(this + 132) = v25;
        v16 = *(v24 + 2 * v25);
      }

      v60 = *(v7 + 4);
      do
      {
        v61 = *(*(this + 79) + 48);
        v62 = *(v61 + 8);
        if (WORD1(v16))
        {
          if (WORD1(v16) > 0x10u)
          {
            v63 = *(v61 + 20) - 1;
          }

          else if (*(v61 + 24) <= v16)
          {
            v63 = *(v61 + 20) - 2;
          }

          else
          {
            v63 = ucptrie_internalSmallIndex(v61, v16);
          }
        }

        else
        {
          v63 = (v16 & 0x3F) + *(*v61 + 2 * (v16 >> 6));
        }

        v64 = *(v62 + 2 * v63);
        v65 = v7 + 23 + v60;
        v66 = *(v65 + v64);
        if (!*(v65 + v64))
        {
          break;
        }

        v67 = *(v7 + 4);
        v68 = *(this + 132);
        if (v68 < 1 || (v69 = *(this + 67), *(v69 + 2 * v68 - 2) >> 11 > 0x1Au))
        {
          v16 = utext_previous32((this + 488));
        }

        else
        {
          v70 = v68 - 1;
          *(this + 132) = v70;
          v16 = *(v69 + 2 * v70);
        }

        v60 = v67 * v66;
      }

      while (v16 != -1);
      goto LABEL_120;
    }

    if (v8 < 0 || (v10 = *(this + 129), v8 >= v10) || *(*(this + 67) + 2 * v8) >> 10 > 0x36u)
    {
      utext_setNativeIndex((this + 488), a2);
      if (!*(this + 79))
      {
        return 0xFFFFFFFFLL;
      }

      LODWORD(v8) = *(this + 132);
      LODWORD(v10) = *(this + 129);
    }

    else
    {
      *(this + 132) = v8;
    }

    if (v8 <= v10)
    {
      if (!(*(this + 65) + v8))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (!(*(*(this + 68) + 64))(this + 488))
    {
      return 0xFFFFFFFFLL;
    }

    v17 = *(this + 132);
    if (v17 < 1 || (v18 = *(this + 67), *(v18 + 2 * v17 - 2) >> 11 > 0x1Au))
    {
      v16 = utext_previous32((this + 488));
      if (v16 == -1)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v19 = v17 - 1;
      *(this + 132) = v19;
      v16 = *(v18 + 2 * v19);
    }

    v38 = *(v7 + 4);
    do
    {
      v39 = *(*(this + 79) + 48);
      v40 = *(v39 + 8);
      if (WORD1(v16))
      {
        if (WORD1(v16) > 0x10u)
        {
          v41 = *(v39 + 20) - 1;
        }

        else if (*(v39 + 24) <= v16)
        {
          v41 = *(v39 + 20) - 2;
        }

        else
        {
          v41 = ucptrie_internalSmallIndex(v39, v16);
        }
      }

      else
      {
        v41 = (v16 & 0x3F) + *(*v39 + 2 * (v16 >> 6));
      }

      v42 = *(v40 + v41);
      v43 = v7 + 23 + v38;
      v44 = *(v43 + v42);
      if (!*(v43 + v42))
      {
        break;
      }

      v45 = *(v7 + 4);
      v46 = *(this + 132);
      if (v46 < 1 || (v47 = *(this + 67), *(v47 + 2 * v46 - 2) >> 11 > 0x1Au))
      {
        v16 = utext_previous32((this + 488));
      }

      else
      {
        v48 = v46 - 1;
        *(this + 132) = v48;
        v16 = *(v47 + 2 * v48);
      }

      v38 = v45 * v44;
    }

    while (v16 != -1);
    goto LABEL_120;
  }

  if (ValueWidth != 2)
  {
    if (v8 < 0 || (v11 = *(this + 129), v8 >= v11) || *(*(this + 67) + 2 * v8) >> 10 > 0x36u)
    {
      utext_setNativeIndex((this + 488), a2);
      if (!*(this + 79))
      {
        return 0xFFFFFFFFLL;
      }

      LODWORD(v8) = *(this + 132);
      LODWORD(v11) = *(this + 129);
    }

    else
    {
      *(this + 132) = v8;
    }

    if (v8 <= v11)
    {
      if (!(*(this + 65) + v8))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (!(*(*(this + 68) + 64))(this + 488))
    {
      return 0xFFFFFFFFLL;
    }

    v20 = *(this + 132);
    if (v20 < 1 || (v21 = *(this + 67), *(v21 + 2 * v20 - 2) >> 11 > 0x1Au))
    {
      v16 = utext_previous32((this + 488));
      if (v16 == -1)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v22 = v20 - 1;
      *(this + 132) = v22;
      v16 = *(v21 + 2 * v22);
    }

    v49 = *(v7 + 4);
    do
    {
      v50 = *(*(this + 79) + 48);
      v51 = *(v50 + 8);
      if (WORD1(v16))
      {
        if (WORD1(v16) > 0x10u)
        {
          v52 = *(v50 + 20) - 1;
        }

        else if (*(v50 + 24) <= v16)
        {
          v52 = *(v50 + 20) - 2;
        }

        else
        {
          v52 = ucptrie_internalSmallIndex(v50, v16);
        }
      }

      else
      {
        v52 = (v16 & 0x3F) + *(*v50 + 2 * (v16 >> 6));
      }

      v53 = *(v51 + 2 * v52);
      v54 = v7 + 26 + v49;
      v55 = *(v54 + 2 * v53);
      if (!*(v54 + 2 * v53))
      {
        break;
      }

      v56 = *(v7 + 4);
      v57 = *(this + 132);
      if (v57 < 1 || (v58 = *(this + 67), *(v58 + 2 * v57 - 2) >> 11 > 0x1Au))
      {
        v16 = utext_previous32((this + 488));
      }

      else
      {
        v59 = v57 - 1;
        *(this + 132) = v59;
        v16 = *(v58 + 2 * v59);
      }

      v49 = v56 * v55;
    }

    while (v16 != -1);
    goto LABEL_120;
  }

  if (v8 < 0 || (v9 = *(this + 129), v8 >= v9) || *(*(this + 67) + 2 * v8) >> 10 > 0x36u)
  {
    utext_setNativeIndex((this + 488), a2);
    if (!*(this + 79))
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(v8) = *(this + 132);
    LODWORD(v9) = *(this + 129);
  }

  else
  {
    *(this + 132) = v8;
  }

  if (v8 > v9)
  {
    if (!(*(*(this + 68) + 64))(this + 488))
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_41;
  }

  if (!(*(this + 65) + v8))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_41:
  v13 = *(this + 132);
  if (v13 >= 1)
  {
    v14 = *(this + 67);
    if (*(v14 + 2 * v13 - 2) >> 11 <= 0x1Au)
    {
      v15 = v13 - 1;
      *(this + 132) = v15;
      v16 = *(v14 + 2 * v15);
      goto LABEL_58;
    }
  }

  v16 = utext_previous32((this + 488));
  if (v16 != -1)
  {
LABEL_58:
    v27 = *(v7 + 4);
    do
    {
      v28 = *(*(this + 79) + 48);
      v29 = *(v28 + 8);
      if (WORD1(v16))
      {
        if (WORD1(v16) > 0x10u)
        {
          v30 = *(v28 + 20) - 1;
        }

        else if (*(v28 + 24) <= v16)
        {
          v30 = *(v28 + 20) - 2;
        }

        else
        {
          v30 = ucptrie_internalSmallIndex(v28, v16);
        }
      }

      else
      {
        v30 = (v16 & 0x3F) + *(*v28 + 2 * (v16 >> 6));
      }

      v31 = *(v29 + v30);
      v32 = v7 + 26 + v27;
      v33 = *(v32 + 2 * v31);
      if (!*(v32 + 2 * v31))
      {
        break;
      }

      v34 = *(v7 + 4);
      v35 = *(this + 132);
      if (v35 < 1 || (v36 = *(this + 67), *(v36 + 2 * v35 - 2) >> 11 > 0x1Au))
      {
        v16 = utext_previous32((this + 488));
      }

      else
      {
        v37 = v35 - 1;
        *(this + 132) = v37;
        v16 = *(v36 + 2 * v37);
      }

      v27 = v34 * v33;
    }

    while (v16 != -1);
  }

LABEL_120:
  v71 = *(this + 132);
  if (v71 <= *(this + 129))
  {
    return *(this + 65) + v71;
  }

  else
  {
    return (*(*(this + 68) + 64))(this + 488, v16);
  }
}

uint64_t icu::RuleBasedBreakIterator::getRuleStatusVec(icu::RuleBasedBreakIterator *this, int *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v6 = *(*(this + 79) + 32);
  result = *(v6 + 4 * *(this + 168));
  v7 = result;
  if (result > a3)
  {
    *a4 = U_BUFFER_OVERFLOW_ERROR;
    v7 = a3;
  }

  if (v7 >= 1)
  {
    v8 = 0;
    v9 = v6 + 4;
    do
    {
      a2[v8] = *(v9 + 4 * (v8 + *(this + 168)));
      ++v8;
    }

    while (v7 != v8);
  }

  return result;
}

unint64_t icu::RuleBasedBreakIterator::tokenize(uint64_t a1, int a2, char *a3, void *a4)
{
  if (*(a1 + 760))
  {
    return 0;
  }

  v25 = v4;
  v26 = v5;
  v8 = a3;
  if (a2 < 1)
  {
    return (v8 - a3) >> 4;
  }

  v11 = &a3[16 * a2];
  v12 = *(a1 + 668);
  v13 = a3;
  while (1)
  {
    v14 = v12;
    *v24 = 0;
    if (icu::RuleBasedBreakIterator::DictionaryCache::following(*(a1 + 688), v12, &v24[1], v24))
    {
      goto LABEL_6;
    }

    Internal = icu::RuleBasedBreakIterator::handleNextInternal(a1);
    v24[1] = Internal;
    if (Internal == -1)
    {
      break;
    }

    v12 = Internal;
    *(a1 + 668) = Internal;
    v15 = *(a1 + 672);
    if (!*(a1 + 712))
    {
      goto LABEL_7;
    }

    icu::RuleBasedBreakIterator::DictionaryCache::populateDictionary(*(a1 + 688), v14, Internal, v15, *(a1 + 672));
    if (!icu::RuleBasedBreakIterator::DictionaryCache::following(*(a1 + 688), v14, &v24[1], v24))
    {
      v15 = *(a1 + 672);
      v12 = *(a1 + 668);
      goto LABEL_7;
    }

LABEL_6:
    v15 = v24[0];
    v12 = v24[1];
    *(a1 + 668) = v24[1];
    *(a1 + 672) = v15;
LABEL_7:
    v16 = *(*(a1 + 632) + 32);
    v17 = (v16 + 4 * v15);
    v18 = *v17;
    v19 = v17[v18];
    if (v19 == -1)
    {
      v8 = v13;
    }

    else
    {
      v8 = v13 + 16;
      *v13 = v14;
      *(v13 + 1) = v12 - v14;
      if (a4)
      {
        if (v18 >= 2)
        {
          v20 = (v16 + 4 * v18 + 4 * v15 - 4);
          v21 = v18 + 1;
          do
          {
            v22 = *v20--;
            v19 |= v22;
            --v21;
          }

          while (v21 > 2);
        }

        *a4++ = v19;
      }
    }

    v13 = v8;
    if (v8 >= v11)
    {
      return (v8 - a3) >> 4;
    }
  }

  v8 = v13;
  return (v8 - a3) >> 4;
}

uint64_t icu::RuleBasedBreakIterator::getBinaryRules(icu::RuleBasedBreakIterator *this, unsigned int *a2)
{
  *a2 = 0;
  v2 = *(this + 79);
  if (!v2)
  {
    return 0;
  }

  result = *v2;
  *a2 = *(*v2 + 8);
  return result;
}

uint64_t icu::RuleBasedBreakIterator::createBufferClone(icu::RuleBasedBreakIterator *this, void *a2, int *a3, UErrorCode *a4)
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

uint64_t sub_19520B32C()
{
  if (qword_1EAEC97D0)
  {
    (*(*qword_1EAEC97D0 + 8))(qword_1EAEC97D0);
  }

  qword_1EAEC97D0 = 0;
  if (qword_1EAEC97D8)
  {
    (*(*qword_1EAEC97D8 + 8))(qword_1EAEC97D8);
  }

  qword_1EAEC97D8 = 0;
  atomic_store(0, &dword_1EAEC97E8);
  atomic_store(0, &unk_1EAEC97F0);
  return 1;
}

int *sub_19520B3CC(int *result)
{
  if (*result <= 0)
  {
    v1 = result;
    if (atomic_load_explicit(&dword_1EAEC97E8, memory_order_acquire) != 2)
    {
      result = icu::umtx_initImplPreInit(&dword_1EAEC97E8);
      if (result)
      {
        sub_19520B464();
      }
    }

    if (dword_1EAEC97EC >= 1)
    {
      *v1 = dword_1EAEC97EC;
    }
  }

  return result;
}

void *icu::RuleBasedBreakIterator::getLanguageBreakEngine(icu::RuleBasedBreakIterator *this, uint64_t a2, const char *a3)
{
  v16 = U_ZERO_ERROR;
  v6 = *(this + 87);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 8);
  while (1)
  {
    v8 = __OFSUB__(v7--, 1);
    if (v7 < 0 != v8)
    {
      break;
    }

    v9 = icu::UVector::elementAt(*(this + 87), v7);
    if ((*(*v9 + 24))(v9, a2, a3))
    {
      return v9;
    }
  }

  v17 = 0;
  sub_19520B3CC(&v17);
  if (v17 <= 0)
  {
    v11 = *(qword_1EAEC97D0 + 8);
    while (1)
    {
      v8 = __OFSUB__(v11--, 1);
      if (v11 < 0 != v8)
      {
        break;
      }

      v12 = icu::UVector::elementAt(qword_1EAEC97D0, v11);
      v13 = (*(*v12 + 16))(v12, a2, a3);
      if (v13)
      {
        v9 = v13;
        v14 = *(this + 87);
        if (*(v14 + 24))
        {
          icu::UVector::adoptElement(v14, v9, &v16);
        }

        else
        {
          icu::UVector::addElement(v14, v9, &v16);
        }

        return v9;
      }
    }
  }

  v10 = *(this + 88);
  if (!v10)
  {
    operator new();
  }

  (*(*v10 + 40))(v10, a2);
  return *(this + 88);
}

int *icu::RuleBasedBreakIterator::registerExternalBreakEngine(int *result, int *a2)
{
  v3 = result;
  v4 = *a2;
  if (result || v4 > 0)
  {
    if (v4 <= 0 && (result = sub_19520B3CC(a2), *a2 <= 0))
    {
      v6 = *(*qword_1EAEC97E0 + 24);

      return v6();
    }

    else if (v3)
    {
      v5 = *(*v3 + 8);

      return v5(v3);
    }
  }

  else
  {
    *a2 = 7;
  }

  return result;
}

uint64_t icu::RuleBasedBreakIterator::getRules(icu::RuleBasedBreakIterator *this)
{
  v2 = *(this + 79);
  if (v2)
  {

    return sub_195210998(v2);
  }

  else
  {
    if (atomic_load_explicit(dword_1EAEC97F0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1EAEC97F0))
    {
      sub_19520B970();
    }

    return qword_1EAEC97D8;
  }
}

BOOL sub_19520B9EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t sub_19520BA40(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ***sub_19520BA6C(void ***a1)
{
  v2 = *a1;
  if (v2)
  {
    icu::RuleBasedBreakIterator::DictionaryCache::~DictionaryCache(v2);
    MEMORY[0x19A8B2600]();
  }

  return a1;
}

void icu::RuleBasedBreakIterator57::RuleBasedBreakIterator57(uint64_t a1)
{
  *icu::BreakIterator::BreakIterator(a1) = &unk_1F0932DB0;
  status = U_ZERO_ERROR;
  *(a1 + 488) = utext_openUChars(0, 0, 0, &status);
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 532) = 1;
  *(a1 + 536) = 0;
  *(a1 + 576) = 1;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  operator new();
}

{
  *icu::BreakIterator::BreakIterator(a1) = &unk_1F0932DB0;
  status = U_ZERO_ERROR;
  *(a1 + 488) = utext_openUChars(0, 0, 0, &status);
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 532) = 1;
  *(a1 + 536) = 0;
  *(a1 + 576) = 1;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  operator new();
}

double icu::RuleBasedBreakIterator57::init(icu::RuleBasedBreakIterator57 *this)
{
  status = U_ZERO_ERROR;
  *(this + 61) = utext_openUChars(0, 0, 0, &status);
  result = 0.0;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 132) = 0;
  *(this + 532) = 1;
  *(this + 134) = 0;
  *(this + 144) = 1;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  return result;
}

icu::RuleBasedBreakIterator57 *icu::RuleBasedBreakIterator57::RuleBasedBreakIterator57(icu::RuleBasedBreakIterator57 *this, const icu::UnicodeString *a2, UParseError *a3, UErrorCode *a4)
{
  *icu::BreakIterator::BreakIterator(this) = &unk_1F0932DB0;
  status = U_ZERO_ERROR;
  *(this + 61) = utext_openUChars(0, 0, 0, &status);
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 132) = 0;
  *(this + 532) = 1;
  *(this + 134) = 0;
  *(this + 144) = 1;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  if (*a4 <= 0)
  {
    v8 = sub_19521263C(a2, a3, a4);
    if (*a4 <= 0)
    {
      v9 = v8;
      icu::RuleBasedBreakIterator57::operator=(this, v8);
      (*(*v9 + 8))(v9);
    }
  }

  return this;
}

uint64_t icu::RuleBasedBreakIterator57::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    (*(*a1 + 200))(a1);
    *(a1 + 576) = *(a2 + 576);
    v4 = *(a1 + 560);
    if (v4)
    {
      (*(*v4 + 8))(v4);
      *(a1 + 560) = 0;
    }

    status = U_ZERO_ERROR;
    *(a1 + 488) = utext_clone(*(a1 + 488), *(a2 + 488), 0, 1, &status);
    v5 = *(a1 + 496);
    if (v5 != *(a1 + 504) && v5 && v5 != *(a1 + 512))
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 496) = 0;
    v6 = *(a2 + 496);
    if (v6)
    {
      *(a1 + 496) = (*(*v6 + 64))(v6);
    }

    v7 = *(a1 + 520);
    if (v7)
    {
      sub_195211068(v7);
      *(a1 + 520) = 0;
    }

    v8 = *(a2 + 520);
    if (v8)
    {
      *(a1 + 520) = sub_1952110BC(v8);
    }
  }

  return a1;
}

icu::RuleBasedBreakIterator57 *icu::RuleBasedBreakIterator57::RuleBasedBreakIterator57(icu::RuleBasedBreakIterator57 *this)
{
  *icu::BreakIterator::BreakIterator(this) = &unk_1F0932DB0;
  status = U_ZERO_ERROR;
  *(this + 61) = utext_openUChars(0, 0, 0, &status);
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 132) = 0;
  *(this + 532) = 1;
  *(this + 134) = 0;
  *(this + 144) = 1;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  return this;
}

uint64_t icu::RuleBasedBreakIterator57::RuleBasedBreakIterator57(icu::RuleBasedBreakIterator57 *this, const icu::RuleBasedBreakIterator57 *a2)
{
  *icu::BreakIterator::BreakIterator(this, a2) = &unk_1F0932DB0;
  status = U_ZERO_ERROR;
  *(this + 61) = utext_openUChars(0, 0, 0, &status);
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 132) = 0;
  *(this + 532) = 1;
  *(this + 134) = 0;
  *(this + 144) = 1;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  return icu::RuleBasedBreakIterator57::operator=(this, a2);
}

void icu::RuleBasedBreakIterator57::~RuleBasedBreakIterator57(icu::RuleBasedBreakIterator57 *this)
{
  *this = &unk_1F0932DB0;
  v3 = *(this + 62);
  v2 = *(this + 63);
  if (v3 != v2 && v3 && v3 != *(this + 64))
  {
    (*(*v3 + 8))(v3);
    v2 = *(this + 63);
  }

  *(this + 62) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 62) = 0;
  v5 = *(this + 64);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 64) = 0;
  utext_close(*(this + 61));
  v6 = *(this + 65);
  if (v6)
  {
    sub_195211068(v6);
    *(this + 65) = 0;
  }

  v7 = *(this + 68);
  if (v7)
  {
    free(v7);
    *(this + 68) = 0;
  }

  v8 = *(this + 70);
  if (v8)
  {
    (*(*v8 + 8))(v8);
    *(this + 70) = 0;
  }

  v9 = *(this + 71);
  if (v9)
  {
    (*(*v9 + 8))(v9);
    *(this + 71) = 0;
  }

  icu::BreakIterator::~BreakIterator(this);
}

{
  icu::RuleBasedBreakIterator57::~RuleBasedBreakIterator57(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::RuleBasedBreakIterator57::operator==(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    if (*(a2 + 8) == *(a1 + 8))
    {
      result = utext_equals(*(a1 + 488), *(a2 + 488));
      if (!result)
      {
        return result;
      }

      v5 = *(a2 + 520);
      v6 = *(a1 + 520);
      if (v5 == v6 || v5 && v6 && sub_1952108D4(v5, v6))
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t icu::RuleBasedBreakIterator57::hashCode(icu::RuleBasedBreakIterator57 *this)
{
  result = *(this + 65);
  if (result)
  {
    return sub_195210928(result);
  }

  return result;
}

uint64_t icu::RuleBasedBreakIterator57::setText(uint64_t this, UText *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    (*(*this + 200))(this);
    *(v5 + 488) = utext_clone(*(v5 + 488), a2, 0, 1, a3);
    v6 = *(v5 + 512);
    if (!v6)
    {
      operator new();
    }

    v7 = *(v5 + 496);
    if (v7 != *(v5 + 504) && v7 != 0 && v7 != v6)
    {
      (*(*v7 + 8))(v7);
      v6 = *(v5 + 512);
    }

    *(v5 + 496) = v6;
    return (*(*v5 + 80))(v5);
  }

  return this;
}

uint64_t icu::RuleBasedBreakIterator57::adoptText(icu::RuleBasedBreakIterator57 *this, icu::CharacterIterator *a2)
{
  v4 = *(this + 62);
  if (v4 != *(this + 63) && v4 && v4 != *(this + 64))
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 62) = a2;
  status = U_ZERO_ERROR;
  (*(*this + 200))(this);
  if (a2 && !*(a2 + 4))
  {
    v7.n128_f64[0] = utext_openCharacterIterator(*(this + 61), a2, &status);
  }

  else
  {
    v6 = utext_openUChars(*(this + 61), 0, 0, &status);
  }

  *(this + 61) = v6;
  return (*(*this + 80))(this, v7);
}

uint64_t icu::RuleBasedBreakIterator57::setText(icu::RuleBasedBreakIterator57 *this, UChar **a2)
{
  status = U_ZERO_ERROR;
  (*(*this + 200))(this);
  *(this + 61) = utext_openConstUnicodeString(*(this + 61), a2, &status);
  v4 = *(this + 63);
  if (!v4)
  {
    operator new();
  }

  icu::StringCharacterIterator::setText(v4, a2);
  v5 = *(this + 63);
  v6 = *(this + 62);
  if (v6 != v5 && v6 && v6 != *(this + 64))
  {
    (*(*v6 + 8))(*(this + 62));
    v5 = *(this + 63);
  }

  *(this + 62) = v5;
  return (*(*this + 80))(this);
}

const UText **icu::RuleBasedBreakIterator57::refreshInputText(const UText **this, UText *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (!a2 || (NativeIndex = utext_getNativeIndex(this[61]), v7 = utext_clone(this[61], a2, 0, 1, a3), this[61] = v7, *a3 <= 0) && (utext_setNativeIndex(v7, NativeIndex), utext_getNativeIndex(this[61]) != NativeIndex))
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return this;
}

uint64_t icu::RuleBasedBreakIterator57::first(icu::RuleBasedBreakIterator57 *this)
{
  (*(*this + 200))(this);
  *(this + 132) = 0;
  *(this + 532) = 1;
  utext_setNativeIndex(*(this + 61), 0);
  return 0;
}

int64_t icu::RuleBasedBreakIterator57::last(UText **this)
{
  ((*this)[1].pFuncs)(this);
  v2 = this[61];
  if (v2)
  {
    *(this + 532) = 0;
    v3 = utext_nativeLength(v2);
    utext_setNativeIndex(this[61], v3);
  }

  else
  {
    *(this + 132) = 0;
    *(this + 532) = 1;
    return 0xFFFFFFFFLL;
  }

  return v3;
}

uint64_t icu::RuleBasedBreakIterator57::next(icu::RuleBasedBreakIterator57 *this, int a2)
{
  result = (*(*this + 112))(this);
  if (a2 < 1)
  {
    if (a2 < 0)
    {
      do
      {
        result = (*(*this + 96))(this);
      }

      while (!__CFADD__(a2++, 1));
    }
  }

  else
  {
    v5 = a2 + 1;
    do
    {
      result = (*(*this + 104))(this);
      --v5;
    }

    while (v5 > 1);
  }

  return result;
}

uint64_t icu::RuleBasedBreakIterator57::next(icu::RuleBasedBreakIterator57 *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    v3 = *(this + 139);
    if (v3 < *(this + 138) - 1)
    {
      v4 = v3 + 1;
      *(this + 139) = v4;
      v5 = *(v2 + 4 * v4);
      utext_setNativeIndex(*(this + 61), v5);
      return v5;
    }

    (*(*this + 200))(this);
  }

  v6 = (*(*this + 112))(this);
  *(this + 134) = 0;
  v7 = icu::RuleBasedBreakIterator57::handleNext(this, *(*(this + 65) + 8));
  do
  {
    v5 = v7;
    if (!*(this + 2))
    {
      break;
    }

    v8 = utext_char32At(*(this + 61), v7 - 1);
    v9 = utext_char32At(*(this + 61), v5);
    if (v9 == -1 || v8 == -1)
    {
      break;
    }

    if (!u_isalpha(v9))
    {
      break;
    }

    if (!u_isalpha(v8))
    {
      break;
    }

    v7 = icu::RuleBasedBreakIterator57::handleNext(this, *(*(this + 65) + 8));
  }

  while (v7 > v5);
  if (!*(this + 134))
  {
    return v5;
  }

  return icu::RuleBasedBreakIterator57::checkDictionary(this, v6, v5, 0);
}

uint64_t icu::RuleBasedBreakIterator57::handleNext(uint64_t a1, uint64_t a2)
{
  v55 = 0;
  v54 = 0u;
  memset(v53, 0, sizeof(v53));
  v52 = *(a2 + 4);
  *(a1 + 532) = 1;
  *(a1 + 528) = 0;
  v4 = *(a1 + 488);
  chunkOffset = v4->chunkOffset;
  if (chunkOffset <= v4->nativeIndexingLimit)
  {
    v6 = v4->chunkNativeStart + chunkOffset;
  }

  else
  {
    v6 = (v4->pFuncs->mapOffsetToNative)();
    v4 = *(a1 + 488);
    LODWORD(chunkOffset) = v4->chunkOffset;
  }

  if (chunkOffset >= v4->chunkLength || (v7 = v4->chunkContents[chunkOffset], v7 >> 11 > 0x1A))
  {
    v7 = utext_next32(v4);
  }

  else
  {
    v4->chunkOffset = chunkOffset + 1;
  }

  v8 = 0xFFFFFFFFLL;
  if (!*(a1 + 520) || v7 == -1)
  {
    return v8;
  }

  v9 = 0;
  v10 = *(a2 + 8) & 2;
  v11 = v10 == 0;
  v50 = a2 + 24;
  v51 = a2 + 16;
  v45 = v6;
  v48 = a2 + 26;
  v49 = v6;
  v12 = v52;
LABEL_11:
  if ((v7 & 0xFC00) == 0xD800)
  {
    v13 = 320;
  }

  else
  {
    v13 = 0;
  }

  v46 = v13 + (v7 >> 5);
  v47 = v7 & 0x1F;
  while (1)
  {
    if (v7 == -1)
    {
      if (v11 == 2)
      {
        goto LABEL_71;
      }

      v14 = 0;
      v16 = *(v48 + v12);
      v12 = (v52 * v16);
      v17 = (v51 + v12);
      v18 = *(v51 + v12);
      v10 = 1;
      v11 = 2;
      if (v18 == 0xFFFF)
      {
        goto LABEL_33;
      }

      goto LABEL_38;
    }

    v14 = v11 == 1;
    if (v11 == 1)
    {
      v15 = *(a1 + 520);
      if (HIWORD(v7))
      {
        if (HIWORD(v7) > 0x10u)
        {
          v10 = *(v15 + 96);
          if ((v10 & 0x4000) != 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v19 = (*(v15 + 80))(*(*(v15 + 64) + 2 * (((v7 >> 10) & 0x1F) + 4 * *(*(v15 + 64) + 2 * (((v7 >> 10) + 55232) >> 5)))));
          v20 = *(a1 + 520);
          if (v19 < 1)
          {
            v10 = *(v20 + 96);
          }

          else
          {
            v10 = *(*(v20 + 64) + 2 * (v47 + 4 * *(*(v20 + 64) + 2 * (v19 + ((v7 >> 5) & 0x1F)))));
          }

          if ((v10 & 0x4000) != 0)
          {
LABEL_30:
            ++*(a1 + 536);
            v10 &= ~0x4000u;
          }
        }
      }

      else
      {
        v10 = *(*(v15 + 64) + 2 * (v47 + 4 * *(*(v15 + 64) + 2 * v46)));
        if ((v10 & 0x4000) != 0)
        {
          goto LABEL_30;
        }
      }
    }

    v16 = *(v50 + v12 + 2 * v10);
    v12 = (v52 * v16);
    v17 = (v51 + v12);
    v18 = *(v51 + v12);
    if (v18 == 0xFFFF)
    {
      if (v11)
      {
LABEL_33:
        v21 = *(a1 + 488);
        v22 = *(v21 + 40);
        if (v22 > *(v21 + 28))
        {
          v49 = (*(*(v21 + 56) + 64))();
          v18 = *v17;
LABEL_37:
          *(a1 + 528) = v17[2];
          goto LABEL_38;
        }

        v49 = *(v21 + 32) + v22;
      }

      v18 = 0xFFFF;
      goto LABEL_37;
    }

LABEL_38:
    if (v18 >= 1 && v9 >= 1)
    {
      v24 = v9;
      v25 = &v54 + 2;
      v26 = v53 + 1;
      while (1)
      {
        v27 = *v25++;
        if (v27 == v18)
        {
          break;
        }

        ++v26;
        if (!--v24)
        {
          goto LABEL_47;
        }
      }

      v8 = *v26;
      if ((v8 & 0x80000000) == 0)
      {
        *(a1 + 528) = v17[2];
        v39 = *(a1 + 488);
        v43 = v8 - v39->chunkNativeStart;
        if (v43 < 0 || v43 >= v39->nativeIndexingLimit || v39->chunkContents[v43] >> 10 > 0x36u)
        {
          v42 = v8;
          goto LABEL_92;
        }

LABEL_87:
        v39->chunkOffset = v43;
        return v8;
      }
    }

LABEL_47:
    v28 = v17[1];
    if (!v17[1])
    {
      goto LABEL_61;
    }

    v29 = *(a1 + 488);
    v30 = *(v29 + 40);
    if (v30 <= *(v29 + 28))
    {
      v31 = *(v29 + 32) + v30;
    }

    else
    {
      LODWORD(v31) = (*(*(v29 + 56) + 64))();
    }

    if (v9 >= 1)
    {
      break;
    }

    v9 = 0;
LABEL_57:
    if (v9 >= 7)
    {
      v36 = 7;
    }

    else
    {
      v36 = v9;
    }

    *(&v54 + v36 + 2) = v28;
    *(v53 + v36 + 1) = v31;
    v9 = v36 + 1;
LABEL_61:
    if (!v16)
    {
      goto LABEL_71;
    }

LABEL_62:
    if (v14)
    {
      v37 = *(a1 + 488);
      v38 = v37->chunkOffset;
      if (v38 >= v37->chunkLength || (v7 = v37->chunkContents[v38], v7 >> 11 > 0x1A))
      {
        v7 = utext_next32(v37);
        v11 = 1;
      }

      else
      {
        v37->chunkOffset = v38 + 1;
        v11 = 1;
      }

      goto LABEL_11;
    }

    if (v11 <= 1)
    {
      v11 = 1;
    }
  }

  v32 = v9;
  v33 = &v54 + 2;
  v34 = v53 + 1;
  while (1)
  {
    v35 = *v33++;
    if (v35 == v28)
    {
      break;
    }

    ++v34;
    if (!--v32)
    {
      goto LABEL_57;
    }
  }

  *v34 = v31;
  if (v16)
  {
    goto LABEL_62;
  }

LABEL_71:
  v39 = *(a1 + 488);
  v8 = v49;
  if (v49 == v45)
  {
    v40 = v45 - v39->chunkNativeStart;
    if (v40 < 0 || v40 >= v39->nativeIndexingLimit || v39->chunkContents[v40] >> 10 > 0x36u)
    {
      utext_setNativeIndex(v39, v45);
      v39 = *(a1 + 488);
      LODWORD(v40) = v39->chunkOffset;
    }

    else
    {
      v39->chunkOffset = v40;
    }

    if (v40 >= v39->chunkLength || v39->chunkContents[v40] >> 11 > 0x1Au)
    {
      utext_next32(v39);
      v39 = *(a1 + 488);
      v41 = v39->chunkOffset;
    }

    else
    {
      v41 = v40 + 1;
      v39->chunkOffset = v41;
    }

    if (v41 <= v39->nativeIndexingLimit)
    {
      v8 = v39->chunkNativeStart + v41;
    }

    else
    {
      v8 = (v39->pFuncs->mapOffsetToNative)();
      v39 = *(a1 + 488);
    }
  }

  v42 = v8;
  v43 = v8 - v39->chunkNativeStart;
  if (v43 >= 0 && v43 < v39->nativeIndexingLimit && v39->chunkContents[v43] >> 10 <= 0x36u)
  {
    goto LABEL_87;
  }

LABEL_92:
  utext_setNativeIndex(v39, v42);
  return v8;
}

uint64_t icu::RuleBasedBreakIterator57::checkDictionary(UText **this, uint64_t a2, uint64_t a3, int a4)
{
  ((*this)[1].pFuncs)(this);
  if (a3 - a2 <= 1)
  {
    if (a4)
    {
      return a2;
    }

    else
    {
      return a3;
    }
  }

  if (a4)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  utext_setNativeIndex(this[61], v9);
  if (a4)
  {
    v10 = this[61];
    chunkOffset = v10->chunkOffset;
    if (chunkOffset < 1 || v10->chunkContents[chunkOffset - 1] >> 11 > 0x1Au)
    {
      utext_previous32(v10);
    }

    else
    {
      v10->chunkOffset = chunkOffset - 1;
    }
  }

  v96 = U_ZERO_ERROR;
  v94 = 0u;
  v95 = 0u;
  icu::UVector32::UVector32(&v94, &v96);
  v12 = utext_current32(this[61]);
  v13 = v12;
  if (!WORD1(v12))
  {
    v14 = this[65];
    pExtra = v14->pExtra;
    if ((v12 & 0xFC00) == 0xD800)
    {
      v16 = 320;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16 + (v12 >> 5);
    goto LABEL_21;
  }

  if (WORD1(v12) > 0x10u)
  {
    v14 = this[65];
  }

  else
  {
    v18 = (this[65]->p)(*(this[65]->pExtra + 4 * *(this[65]->pExtra + (((v12 >> 10) + 55232) >> 5)) + ((v12 >> 10) & 0x1F)));
    v14 = this[65];
    if (v18 >= 1)
    {
      pExtra = v14->pExtra;
      v17 = v18 + ((v13 >> 5) & 0x1F);
LABEL_21:
      r = pExtra[4 * pExtra[v17] + (v13 & 0x1F)];
      goto LABEL_24;
    }
  }

  r = v14->r;
LABEL_24:
  v20 = a3;
  LODWORD(v21) = a2;
  if ((r & 0x4000) == 0)
  {
    goto LABEL_75;
  }

  if (!a4)
  {
    while (1)
    {
      v32 = this[61];
      v33 = v32->chunkOffset;
      if (v33 >= 1)
      {
        chunkContents = v32->chunkContents;
        if (chunkContents[v33 - 1] >> 11 <= 0x1Au)
        {
          break;
        }
      }

      v37 = utext_previous32(v32);
      v36 = v37;
      if (!HIWORD(v37))
      {
        v14 = this[65];
        goto LABEL_46;
      }

      if (HIWORD(v37) > 0x10u)
      {
        v14 = this[65];
      }

      else
      {
        v42 = (this[65]->p)(*(this[65]->pExtra + 4 * *(this[65]->pExtra + (((v37 >> 10) + 55232) >> 5)) + ((v37 >> 10) & 0x1F)));
        v14 = this[65];
        if (v42 >= 1)
        {
          v38 = v14->pExtra;
          v40 = v42 + ((v36 >> 5) & 0x1F);
LABEL_50:
          v41 = v38[4 * v38[v40] + (v36 & 0x1F)];
          goto LABEL_56;
        }
      }

      v41 = v14->r;
LABEL_56:
      if (v36 == -1 || (v41 & 0x4000) == 0)
      {
        v43 = this[61];
        if (v36 != -1)
        {
          utext_next32(v43);
          v43 = this[61];
        }

        v13 = utext_current32(v43);
        v44 = this[61];
        v45 = v44->chunkOffset;
        if (v45 <= v44->nativeIndexingLimit)
        {
          v21 = v44->chunkNativeStart + v45;
        }

        else
        {
          LODWORD(v21) = (v44->pFuncs->mapOffsetToNative)();
        }

        v20 = a3;
        goto LABEL_69;
      }
    }

    v35 = v33 - 1;
    v32->chunkOffset = v35;
    v36 = chunkContents[v35];
LABEL_46:
    v38 = v14->pExtra;
    if ((v36 & 0xFC00) == 0xD800)
    {
      v39 = 320;
    }

    else
    {
      v39 = 0;
    }

    v40 = v39 + (v36 >> 5);
    goto LABEL_50;
  }

  do
  {
    utext_next32(this[61]);
    v22 = utext_current32(this[61]);
    v23 = v22;
    if (HIWORD(v22))
    {
      if (HIWORD(v22) > 0x10u)
      {
        v28 = this[65];
LABEL_36:
        v29 = v28->r;
        continue;
      }

      v27 = (this[65]->p)(*(this[65]->pExtra + 4 * *(this[65]->pExtra + (((v22 >> 10) + 55232) >> 5)) + ((v22 >> 10) & 0x1F)));
      v28 = this[65];
      if (v27 < 1)
      {
        goto LABEL_36;
      }

      v24 = v28->pExtra;
      v26 = v27 + ((v23 >> 5) & 0x1F);
    }

    else
    {
      v24 = this[65]->pExtra;
      if ((v22 & 0xFC00) == 0xD800)
      {
        v25 = 320;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25 + (v22 >> 5);
    }

    v29 = v24[4 * v24[v26] + (v23 & 0x1F)];
  }

  while (v23 != -1 && (v29 & 0x4000) != 0);
  v30 = this[61];
  v31 = v30->chunkOffset;
  if (v31 <= v30->nativeIndexingLimit)
  {
    v20 = v30->chunkNativeStart + v31;
  }

  else
  {
    v20 = (v30->pFuncs->mapOffsetToNative)();
  }

  v46 = this[61];
  v47 = v46->chunkOffset;
  if (v47 >= 1)
  {
    v48 = v46->chunkContents;
    if (v48[v47 - 1] >> 11 < 0x1Bu)
    {
      v49 = v47 - 1;
      v46->chunkOffset = v49;
      v13 = v48[v49];
      LODWORD(v21) = a2;
      goto LABEL_70;
    }
  }

  v13 = utext_previous32(v46);
  LODWORD(v21) = a2;
LABEL_69:
  if (v13 >= 0x10000)
  {
    if (WORD1(v13) > 0x10u)
    {
      v60 = this[65];
    }

    else
    {
      v59 = (this[65]->p)(*(this[65]->pExtra + 4 * *(this[65]->pExtra + (((v13 >> 10) + 55232) >> 5)) + ((v13 >> 10) & 0x1F)));
      v60 = this[65];
      if (v59 >= 1)
      {
        v50 = v60->pExtra;
        v52 = v59 + ((v13 >> 5) & 0x1F);
        goto LABEL_74;
      }
    }

    r = v60->r;
    if (a4)
    {
      goto LABEL_76;
    }
  }

  else
  {
LABEL_70:
    v50 = this[65]->pExtra;
    if ((v13 & 0xFC00) == 0xD800)
    {
      v51 = 320;
    }

    else
    {
      v51 = 0;
    }

    v52 = v51 + (v13 >> 5);
LABEL_74:
    r = v50[4 * v50[v52] + (v13 & 0x1F)];
LABEL_75:
    if (a4)
    {
LABEL_76:
      utext_setNativeIndex(this[61], v21);
      v53 = utext_current32(this[61]);
      v13 = v53;
      if (WORD1(v53))
      {
        if (WORD1(v53) > 0x10u)
        {
          v58 = this[65];
        }

        else
        {
          v57 = (this[65]->p)(*(this[65]->pExtra + 4 * *(this[65]->pExtra + (((v53 >> 10) + 55232) >> 5)) + ((v53 >> 10) & 0x1F)));
          v58 = this[65];
          if (v57 >= 1)
          {
            v54 = v58->pExtra;
            v56 = v57 + ((v13 >> 5) & 0x1F);
            goto LABEL_84;
          }
        }

        r = v58->r;
      }

      else
      {
        v54 = this[65]->pExtra;
        if ((v53 & 0xFC00) == 0xD800)
        {
          v55 = 320;
        }

        else
        {
          v55 = 0;
        }

        v56 = v55 + (v53 >> 5);
LABEL_84:
        r = v54[4 * v54[v56] + (v13 & 0x1F)];
      }
    }
  }

  if (v96 > U_ZERO_ERROR)
  {
LABEL_91:
    if (a4)
    {
      v8 = a2;
    }

    else
    {
      v8 = a3;
    }

    utext_setNativeIndex(this[61], v8);
    goto LABEL_95;
  }

  v62 = 0;
  while (2)
  {
    while (2)
    {
      v63 = this[61];
      v64 = v63->chunkOffset;
      if (v64 <= v63->nativeIndexingLimit)
      {
        v65 = v63->chunkNativeStart + v64;
      }

      else
      {
        v65 = (v63->pFuncs->mapOffsetToNative)();
      }

      if (v20 > v65 && (r & 0x4000) == 0)
      {
        utext_next32(this[61]);
        v67 = utext_current32(this[61]);
        v13 = v67;
        if (!WORD1(v67))
        {
          v68 = this[65]->pExtra;
          if ((v67 & 0xFC00) == 0xD800)
          {
            v69 = 320;
          }

          else
          {
            v69 = 0;
          }

          v70 = v69 + (v67 >> 5);
          goto LABEL_114;
        }

        if (WORD1(v67) > 0x10u)
        {
          v72 = this[65];
        }

        else
        {
          v71 = (this[65]->p)(*(this[65]->pExtra + 4 * *(this[65]->pExtra + (((v67 >> 10) + 55232) >> 5)) + ((v67 >> 10) & 0x1F)));
          v72 = this[65];
          if (v71 >= 1)
          {
            v68 = v72->pExtra;
            v70 = v71 + ((v13 >> 5) & 0x1F);
LABEL_114:
            r = v68[4 * v68[v70] + (v13 & 0x1F)];
            continue;
          }
        }

        r = v72->r;
        continue;
      }

      break;
    }

    if (v20 <= v65)
    {
      break;
    }

    LanguageBreakEngine = icu::RuleBasedBreakIterator57::getLanguageBreakEngine(this, v13);
    if (LanguageBreakEngine)
    {
      v62 += (*(*LanguageBreakEngine + 32))(LanguageBreakEngine, this[61], v65, v20, &v94, 0, &v96);
    }

    v74 = utext_current32(this[61]);
    v13 = v74;
    if (WORD1(v74))
    {
      if (WORD1(v74) > 0x10u)
      {
        v79 = this[65];
      }

      else
      {
        v78 = (this[65]->p)(*(this[65]->pExtra + 4 * *(this[65]->pExtra + (((v74 >> 10) + 55232) >> 5)) + ((v74 >> 10) & 0x1F)));
        v79 = this[65];
        if (v78 >= 1)
        {
          v75 = v79->pExtra;
          v77 = v78 + ((v13 >> 5) & 0x1F);
          goto LABEL_128;
        }
      }

      r = v79->r;
    }

    else
    {
      v75 = this[65]->pExtra;
      if ((v74 & 0xFC00) == 0xD800)
      {
        v76 = 320;
      }

      else
      {
        v76 = 0;
      }

      v77 = v76 + (v74 >> 5);
LABEL_128:
      r = v75[4 * v75[v77] + (v13 & 0x1F)];
    }

    if (v96 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      continue;
    }

    break;
  }

  if (v62 < 1)
  {
    goto LABEL_91;
  }

  if (SDWORD2(v94) <= 0)
  {
    v81 = 0;
    v80 = a2 >> 31;
  }

  else
  {
    v80 = **(&v95 + 1) > a2;
    v81 = *(*(&v95 + 1) + 4 * DWORD2(v94) - 4);
  }

  v82 = v80 + v62;
  v83 = v81 >= a3 ? v82 : v82 + 1;
  v84 = malloc_type_malloc(4 * v83, 0x100004052888210uLL);
  this[68] = v84;
  if (!v84)
  {
    goto LABEL_91;
  }

  *(this + 138) = v83;
  if (SDWORD2(v94) < 1)
  {
    v85 = 0;
  }

  else
  {
    v85 = **(&v95 + 1);
  }

  if (v85 <= a2)
  {
    v86 = 0;
  }

  else
  {
    v84->magic = a2;
    v86 = 1;
  }

  v87 = 0;
  v88 = *(&v95 + 1);
  do
  {
    if (v87 >= SDWORD2(v94))
    {
      v89 = 0;
    }

    else
    {
      v89 = *(v88 + 4 * v87);
    }

    v90 = v86 + 1;
    *(&v84->magic + v86) = v89;
    ++v87;
    ++v86;
  }

  while (v62 != v87);
  v91 = &v84->magic + v90;
  if (*(v91 - 1) < a3)
  {
    *v91 = a3;
  }

  v92 = *this;
  if (a4)
  {
    v93 = (v92->privA)(this, a3);
  }

  else
  {
    v93 = (*&v92->b)(this, a2);
  }

  v8 = v93;
LABEL_95:
  icu::UVector32::~UVector32(&v94);
  return v8;
}

uint64_t icu::RuleBasedBreakIterator57::previous(icu::RuleBasedBreakIterator57 *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    v3 = *(this + 139);
    v4 = __OFSUB__(v3, 1);
    v5 = v3 - 1;
    if (v5 < 0 == v4)
    {
      *(this + 139) = v5;
      if (!v5)
      {
        *(this + 532) = 0;
      }

      v6 = *(v2 + 4 * v5);
      utext_setNativeIndex(*(this + 61), v6);
      return v6;
    }

    (*(*this + 200))(this);
  }

  if (!*(this + 61) || (v7 = (*(*this + 112))(this), !v7))
  {
    *(this + 132) = 0;
    *(this + 532) = 1;
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = *(this + 65);
  if (!v9[4] && !v9[3])
  {
    v15 = (*(*this + 112))(this);
    v16 = *(this + 61);
    chunkOffset = v16->chunkOffset;
    if (chunkOffset < 1 || v16->chunkContents[chunkOffset - 1] >> 11 > 0x1Au)
    {
      utext_previous32(v16);
    }

    else
    {
      v16->chunkOffset = chunkOffset - 1;
    }

    v6 = icu::RuleBasedBreakIterator57::handlePrevious(this, *(*(this + 65) + 16));
    if (v6 == -1)
    {
      utext_setNativeIndex(*(this + 61), 0);
      v6 = 0;
    }

    v18 = (*(*this + 104))(this);
    if (v18 != -1 && v18 < v15)
    {
      do
      {
        v6 = v18;
        v20 = *(this + 132);
        v18 = (*(*this + 104))(this);
      }

      while (v18 != -1 && v18 < v15);
      v21 = 1;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    utext_setNativeIndex(*(this + 61), v6);
    *(this + 132) = v20;
    *(this + 532) = v21;
    return v6;
  }

  v10 = icu::RuleBasedBreakIterator57::handlePrevious(this, v9[2]);
  do
  {
    v6 = v10;
    if (!*(this + 2))
    {
      break;
    }

    v11 = utext_char32At(*(this + 61), v10 - 1);
    v12 = utext_char32At(*(this + 61), v6);
    if (v12 == -1 || v11 == -1)
    {
      break;
    }

    if (!u_isalpha(v12))
    {
      break;
    }

    if (!u_isalpha(v11))
    {
      break;
    }

    v10 = icu::RuleBasedBreakIterator57::handlePrevious(this, *(*(this + 65) + 16));
  }

  while (v10 < v6);
  if (!*(this + 134))
  {
    return v6;
  }

  return icu::RuleBasedBreakIterator57::checkDictionary(this, v6, v8, 1);
}

uint64_t icu::RuleBasedBreakIterator57::handlePrevious(uint64_t a1, uint64_t a2)
{
  v62 = 0;
  v61 = 0u;
  memset(v60, 0, sizeof(v60));
  *(a1 + 532) = 0;
  *(a1 + 528) = 0;
  v3 = *(a1 + 488);
  if (!v3 || !*(a1 + 520))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(v3 + 40);
  if (v4 > *(v3 + 28))
  {
    if ((*(*(v3 + 56) + 64))())
    {
      goto LABEL_5;
    }

    return 0xFFFFFFFFLL;
  }

  if (!(*(v3 + 32) + v4))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_5:
  v5 = *(a1 + 488);
  chunkOffset = v5->chunkOffset;
  if (chunkOffset <= v5->nativeIndexingLimit)
  {
    v7 = v5->chunkNativeStart + chunkOffset;
  }

  else
  {
    v7 = (v5->pFuncs->mapOffsetToNative)();
    v5 = *(a1 + 488);
    LODWORD(chunkOffset) = v5->chunkOffset;
  }

  v54 = v7;
  v9 = chunkOffset - 1;
  if (chunkOffset < 1 || (chunkContents = v5->chunkContents, chunkContents[chunkOffset - 1] >> 11 > 0x1Au))
  {
    v11 = utext_previous32(v5);
  }

  else
  {
    v5->chunkOffset = v9;
    v11 = chunkContents[v9];
  }

  v12 = 0;
  v13 = *(a2 + 4);
  v14 = ((*(a2 + 8) & 2u) >> 1) ^ 1;
  if ((*(a2 + 8) & 2) != 0)
  {
    LOWORD(v15) = 2;
  }

  else
  {
    LOWORD(v15) = 3;
  }

  v58 = a2 + 16;
  v57 = v54;
LABEL_18:
  if ((v11 & 0xFC00) == 0xD800)
  {
    v16 = 320;
  }

  else
  {
    v16 = 0;
  }

  v55 = v16 + (v11 >> 5);
  v56 = v11 & 0x1F;
  while (v11 != -1)
  {
    if (v14 == 1)
    {
      v17 = *(a1 + 520);
      if (HIWORD(v11))
      {
        if (HIWORD(v11) > 0x10u)
        {
          v15 = *(v17 + 96);
          if ((v15 & 0x4000) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v19 = (*(v17 + 80))(*(*(v17 + 64) + 2 * (((v11 >> 10) & 0x1F) + 4 * *(*(v17 + 64) + 2 * (((v11 >> 10) + 55232) >> 5)))));
          v20 = *(a1 + 520);
          if (v19 < 1)
          {
            v15 = *(v20 + 96);
          }

          else
          {
            LOWORD(v15) = *(*(v20 + 64) + 2 * (v56 + 4 * *(*(v20 + 64) + 2 * (v19 + ((v11 >> 5) & 0x1F)))));
          }

          if ((v15 & 0x4000) == 0)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        LOWORD(v15) = *(*(v17 + 64) + 2 * (v56 + 4 * *(*(v17 + 64) + 2 * v55)));
        if ((v15 & 0x4000) == 0)
        {
          goto LABEL_38;
        }
      }

      ++*(a1 + 536);
      LOWORD(v15) = v15 & 0xBFFF;
LABEL_38:
      v18 = 1;
      v14 = 1;
      goto LABEL_39;
    }

    v18 = 0;
LABEL_39:
    v21 = *(a2 + 24 + v13 + 2 * v15);
    v13 = (*(a2 + 4) * v21);
    v22 = (v58 + v13);
    v23 = *(v58 + v13);
    if (v23 == 0xFFFF)
    {
      v24 = *(a1 + 488);
      v25 = *(v24 + 40);
      if (v25 <= *(v24 + 28))
      {
        v57 = *(v24 + 32) + v25;
        v23 = 0xFFFF;
      }

      else
      {
        v57 = (*(*(v24 + 56) + 64))();
        v23 = *v22;
      }
    }

    if (v23 >= 1 && v12 >= 1)
    {
      v27 = v12;
      v28 = &v61 + 2;
      v29 = v60 + 1;
      while (1)
      {
        v30 = *v28++;
        if (v30 == v23)
        {
          break;
        }

        ++v29;
        if (!--v27)
        {
          goto LABEL_52;
        }
      }

      v8 = *v29;
      if ((v8 & 0x80000000) == 0)
      {
        v46 = *(a1 + 488);
        v49 = v8 - v46->chunkNativeStart;
        if (v49 < 0 || v49 >= v46->nativeIndexingLimit || v46->chunkContents[v49] >> 10 > 0x36u)
        {
          v50 = *v29;
          goto LABEL_110;
        }

LABEL_109:
        v46->chunkOffset = v49;
        return v8;
      }
    }

LABEL_52:
    v31 = v22[1];
    if (!v31)
    {
      goto LABEL_66;
    }

    v32 = *(a1 + 488);
    v33 = *(v32 + 40);
    if (v33 <= *(v32 + 28))
    {
      v34 = *(v32 + 32) + v33;
    }

    else
    {
      LODWORD(v34) = (*(*(v32 + 56) + 64))();
    }

    if (v12 < 1)
    {
      v12 = 0;
LABEL_62:
      if (v12 >= 7)
      {
        v39 = 7;
      }

      else
      {
        v39 = v12;
      }

      *(&v61 + v39 + 2) = v31;
      *(v60 + v39 + 1) = v34;
      v12 = v39 + 1;
LABEL_66:
      if (!v21)
      {
        goto LABEL_76;
      }

      goto LABEL_67;
    }

    v35 = v12;
    v36 = &v61 + 2;
    v37 = v60 + 1;
    while (1)
    {
      v38 = *v36++;
      if (v38 == v31)
      {
        break;
      }

      ++v37;
      if (!--v35)
      {
        goto LABEL_62;
      }
    }

    *v37 = v34;
    if (!v21)
    {
LABEL_76:
      v44 = v54;
      v45 = v57;
      goto LABEL_77;
    }

LABEL_67:
    if (v18)
    {
      v40 = *(a1 + 488);
      v41 = v40->chunkOffset;
      if (v41 < 1 || (v42 = v40->chunkContents, v42[v41 - 1] >> 11 > 0x1Au))
      {
        v11 = utext_previous32(v40);
        v14 = 1;
      }

      else
      {
        v43 = v41 - 1;
        v40->chunkOffset = v43;
        v11 = v42[v43];
        v14 = 1;
      }

      goto LABEL_18;
    }

    if (v14 <= 1)
    {
      v14 = 1;
    }
  }

  if (v14 != 2)
  {
    v18 = 0;
    LOWORD(v15) = 1;
    v14 = 2;
    goto LABEL_39;
  }

  v44 = v54;
  v45 = v57;
  if (v57 == v54)
  {
    v47 = *(a1 + 488);
    v48 = v54 - v47->chunkNativeStart;
    if (v48 < 0 || v48 >= v47->nativeIndexingLimit || v47->chunkContents[v48] >> 10 > 0x36u)
    {
      utext_setNativeIndex(v47, v54);
      v47 = *(a1 + 488);
      LODWORD(v48) = v47->chunkOffset;
    }

    else
    {
      v47->chunkOffset = v48;
    }

    if (v48 < 1 || v47->chunkContents[v48 - 1] >> 11 > 0x1Au)
    {
      utext_previous32(v47);
    }

    else
    {
      v47->chunkOffset = v48 - 1;
    }

    v46 = *(a1 + 488);
    goto LABEL_94;
  }

LABEL_77:
  v46 = *(a1 + 488);
  v8 = v45;
  if (v45 != v44)
  {
    goto LABEL_106;
  }

LABEL_94:
  v51 = v44 - v46->chunkNativeStart;
  if (v51 < 0 || v51 >= v46->nativeIndexingLimit || v46->chunkContents[v51] >> 10 > 0x36u)
  {
    utext_setNativeIndex(v46, v44);
    v46 = *(a1 + 488);
    LODWORD(v51) = v46->chunkOffset;
  }

  else
  {
    v46->chunkOffset = v51;
  }

  v52 = v51 - 1;
  if (v51 < 1 || v46->chunkContents[v51 - 1] >> 11 > 0x1Au)
  {
    utext_previous32(v46);
    v46 = *(a1 + 488);
    v52 = v46->chunkOffset;
  }

  else
  {
    v46->chunkOffset = v52;
  }

  if (v52 <= v46->nativeIndexingLimit)
  {
    v8 = v46->chunkNativeStart + v52;
  }

  else
  {
    v8 = (v46->pFuncs->mapOffsetToNative)();
    v46 = *(a1 + 488);
  }

LABEL_106:
  v50 = v8;
  v49 = v8 - v46->chunkNativeStart;
  if (v49 >= 0 && v49 < v46->nativeIndexingLimit && v46->chunkContents[v49] >> 10 <= 0x36u)
  {
    goto LABEL_109;
  }

LABEL_110:
  utext_setNativeIndex(v46, v50);
  return v8;
}

uint64_t icu::RuleBasedBreakIterator57::following(icu::RuleBasedBreakIterator57 *this, int a2)
{
  v3 = *(this + 61);
  if (!v3 || utext_nativeLength(v3) <= a2)
  {
    (*(*this + 88))(this);
LABEL_11:
    v10 = *(*this + 104);
    v11 = this;

    return v10(v11);
  }

  if (a2 < 0)
  {
    v10 = *(*this + 80);
    v11 = this;

    return v10(v11);
  }

  utext_setNativeIndex(*(this + 61), a2);
  NativeIndex = utext_getNativeIndex(*(this + 61));
  v6 = NativeIndex;
  v7 = *(this + 68);
  if (v7)
  {
    if (*v7 <= NativeIndex && v7[*(this + 138) - 1] > NativeIndex)
    {
      v8 = 0;
      do
      {
        *(this + 139) = v8;
        v9 = v7[v8++];
      }

      while (v9 <= NativeIndex);
      utext_setNativeIndex(*(this + 61), v9);
      return v9;
    }

    (*(*this + 200))(this);
  }

  v13 = *(this + 65);
  if (!*(v13 + 32))
  {
    v17 = *(v13 + 24);
    utext_setNativeIndex(*(this + 61), v6);
    if (v17)
    {
      v18 = *(this + 61);
      chunkOffset = v18->chunkOffset;
      if (chunkOffset < 1 || v18->chunkContents[chunkOffset - 1] >> 11 > 0x1Au)
      {
        utext_previous32(v18);
      }

      else
      {
        v18->chunkOffset = chunkOffset - 1;
      }

      icu::RuleBasedBreakIterator57::handleNext(this, *(*(this + 65) + 24));
      v20 = (*(*this + 96))(this);
      while (1)
      {
        v21 = *this;
        if (v20 <= v6)
        {
          break;
        }

        v9 = v20;
        v20 = (*(v21 + 96))(this);
        if (v20 <= v6)
        {
          return v9;
        }
      }

      v16 = (*(v21 + 104))(this);
      if (v16 > v6)
      {
        return v16;
      }
    }

    else if (v6 && (v6 != 1 || utext_getNativeIndex(*(this + 61))))
    {
      v22 = (*(*this + 96))(this);
      v9 = v22;
      if (v22 == -1 || v22 > v6)
      {
        return v9;
      }

      do
      {
        v16 = (*(*this + 104))(this);
      }

      while (v16 != -1 && v16 <= v6);
      return v16;
    }

    goto LABEL_11;
  }

  utext_setNativeIndex(*(this + 61), v6);
  v14 = *(this + 61);
  v15 = v14->chunkOffset;
  if (v15 >= v14->chunkLength || v14->chunkContents[v15] >> 11 > 0x1Au)
  {
    utext_next32(v14);
  }

  else
  {
    v14->chunkOffset = v15 + 1;
  }

  icu::RuleBasedBreakIterator57::handlePrevious(this, *(*(this + 65) + 32));
  do
  {
    v16 = (*(*this + 104))(this);
  }

  while (v16 <= v6);
  return v16;
}