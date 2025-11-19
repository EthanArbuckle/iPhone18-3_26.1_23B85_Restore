uint64_t uset_getItem(icu::UnicodeSet *a1, int a2, _DWORD *a3, _DWORD *a4, UChar *a5, int a6, int *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  v22[9] = v7;
  v22[10] = v8;
  if (a2 < 0)
  {
    v20 = 1;
  }

  else
  {
    RangeCount = icu::UnicodeSet::getRangeCount(a1);
    v18 = a2 - RangeCount;
    if (a2 < RangeCount)
    {
      *a3 = icu::UnicodeSet::getRangeStart(a1, a2);
      RangeEnd = icu::UnicodeSet::getRangeEnd(a1, a2);
      result = 0;
      *a4 = RangeEnd;
      return result;
    }

    if (v18 < icu::UnicodeSet::stringsSize(a1))
    {
      String = icu::UnicodeSet::getString(a1, v18);
      v22[0] = a5;
      return icu::UnicodeString::extract(String, v22, a6, a7);
    }

    v20 = 8;
  }

  *a7 = v20;
  return 0xFFFFFFFFLL;
}

uint64_t uset_serialize(icu::UnicodeSet *a1, unsigned __int16 *a2, int a3, UErrorCode *a4)
{
  if (a4 && *a4 <= 0)
  {
    return icu::UnicodeSet::serialize(a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t uset_getSerializedSet(uint64_t a1, __int16 *a2, int a3)
{
  if (a1)
  {
    if (a2 && a3 > 0)
    {
      v3 = (a2 + 1);
      v4 = *a2;
      if (*a2 < 0)
      {
        v4 &= 0x7FFFu;
        if (v4 + 2 <= a3)
        {
          v3 = (a2 + 2);
          *(a1 + 8) = a2[1];
          goto LABEL_11;
        }
      }

      else if (v4 < a3)
      {
        *(a1 + 8) = v4;
LABEL_11:
        *a1 = v3;
        v5 = 1;
        goto LABEL_12;
      }
    }

    v4 = 0;
    v5 = 0;
    *(a1 + 8) = 0;
LABEL_12:
    *(a1 + 12) = v4;
    return v5;
  }

  return 0;
}

uint64_t uset_setSerializedToOne(uint64_t result, unsigned int a2)
{
  if (result && a2 <= 0x10FFFF)
  {
    *result = result + 16;
    if (a2 > 0xFFFE)
    {
      if (a2 == 0xFFFF)
      {
        *(result + 8) = 0x300000001;
        *(result + 16) = 0x1FFFF;
        *(result + 20) = 0;
      }

      else
      {
        *(result + 8) = 0;
        if (a2 >= 0x10FFFF)
        {
          *(result + 12) = 0xFFFF001000000002;
        }

        else
        {
          *(result + 12) = 4;
          *(result + 16) = HIWORD(a2);
          *(result + 18) = a2;
          *(result + 20) = (a2 + 1) >> 16;
          *(result + 22) = a2 + 1;
        }
      }
    }

    else
    {
      *(result + 8) = 0x200000002;
      *(result + 16) = a2;
      *(result + 18) = a2 + 1;
    }
  }

  return result;
}

uint64_t uset_serializedContains(unsigned __int16 **a1, unsigned int a2)
{
  v2 = 0;
  if (a1)
  {
    v3 = HIWORD(a2);
    if (HIWORD(a2) <= 0x10u)
    {
      v4 = *a1;
      if (v3)
      {
        v6 = *(a1 + 2);
        v7 = *(a1 + 3);
        v8 = v7 - 2 - v6;
        v9 = &v4[v6];
        v10 = *v9;
        if (v3 < v10 || v3 == v10 && v9[1] > a2)
        {
          v8 = 0;
        }

        else
        {
          v12 = v4[v7 - 2];
          if (v3 < v12 || v3 == v12 && v4[v7 - 1] > a2)
          {
            v13 = (v8 >> 1) & 0xFFFFFFFE;
            if (v13)
            {
              for (i = 0; i != v13; v13 = ((v8 + i) >> 1) & 0xFFFFFFFE)
              {
                v15 = &v4[(v13 + v6)];
                v16 = *v15;
                if (v3 < v16 || v3 == v16 && a2 < v15[1])
                {
                  v8 = v13;
                }

                else
                {
                  i = v13;
                }
              }
            }
          }

          else
          {
            v8 = v7 - v6;
          }
        }

        return (v6 + (v8 >> 1)) & 1;
      }

      else
      {
        if (*v4 <= a2)
        {
          v5 = *(a1 + 2);
          v11 = v5 - 1;
          if (v4[v5 - 1] > a2)
          {
            if (v11 >= 2)
            {
              v17 = 0;
              v18 = v11 >> 1;
              --v5;
              do
              {
                if (v4[v18] <= a2)
                {
                  v17 = v18;
                }

                else
                {
                  v5 = v18;
                }

                v18 = (v17 + v5) >> 1;
              }

              while (v18 != v17);
            }

            else
            {
              LOBYTE(v5) = v5 - 1;
            }
          }
        }

        else
        {
          LOBYTE(v5) = 0;
        }

        return v5 & 1;
      }
    }
  }

  return v2;
}

uint64_t uset_getSerializedRangeCount(uint64_t result)
{
  if (result)
  {
    return ((*(result + 8) + (*(result + 12) - *(result + 8)) / 2 + 1) / 2);
  }

  return result;
}

uint64_t uset_getSerializedRange(uint64_t *a1, int a2, int *a3, int *a4)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0 && a3 && a4)
  {
    v6 = *a1;
    v7 = *(a1 + 3);
    v8 = *(a1 + 2);
    v9 = 2 * a2;
    if (2 * a2 >= v8)
    {
      v13 = 2 * (v9 - v8);
      v14 = v7 - v8;
      if (v13 >= v14)
      {
        return 0;
      }

      v15 = v6 + 2 * v8;
      v16 = (v15 + 2 * v13);
      *a3 = *(v15 + 2 * v13 + 2) | (*v16 << 16);
      v17 = v13 + 2;
      if (v17 < v14)
      {
        v18 = *(v15 + 2 * v17);
        v19 = v16[3];
LABEL_13:
        v12 = v19 | (v18 << 16);
        goto LABEL_14;
      }
    }

    else
    {
      v10 = v9 | 1;
      v11 = (v6 + 2 * v9);
      *a3 = *v11;
      if (v10 < v8)
      {
        v12 = *(v6 + 2 * v10);
LABEL_14:
        v20 = v12 - 1;
LABEL_17:
        *a4 = v20;
        return 1;
      }

      if (v10 < v7)
      {
        v18 = *(v6 + 2 * v10);
        v19 = v11[2];
        goto LABEL_13;
      }
    }

    v20 = 1114111;
    goto LABEL_17;
  }

  return result;
}

void uset_openPattern(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  v2 = a1;
  icu::UnicodeString::UnicodeString(v3, a2 == -1, &v2);
  operator new();
}

void uset_openPatternOptions(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  v2 = a1;
  icu::UnicodeString::UnicodeString(v3, a2 == -1, &v2);
  operator new();
}

uint64_t uset_applyPattern(icu::UnicodeSet *a1, uint64_t a2, uint64_t a3, unsigned int a4, UErrorCode *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a5 && *a5 <= 0)
  {
    if (a1)
    {
      memset(v14, 0, sizeof(v14));
      icu::UnicodeString::UnicodeString(v14, a2, a3);
      v12 = &unk_1F0932C70;
      v13 = 0xFFFFFFFF00000000;
      icu::UnicodeSet::applyPattern(a1, v14, &v12, a4, 0, a5);
      v6 = v13;
      icu::ParsePosition::~ParsePosition(&v12);
      icu::UnicodeString::~UnicodeString(v11, v14);
    }

    else
    {
      v6 = 0;
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void *uset_applyPropertyAlias(icu::UnicodeSet *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, UErrorCode *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  icu::UnicodeString::UnicodeString(v15, a2, a3);
  memset(v14, 0, sizeof(v14));
  icu::UnicodeString::UnicodeString(v14, a4, a5);
  icu::UnicodeSet::applyPropertyAlias(a1, v15, v14, a6);
  icu::UnicodeString::~UnicodeString(v10, v14);
  result = icu::UnicodeString::~UnicodeString(v11, v15);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL uset_resemblesPattern(uint64_t a1, uint64_t a2, const icu::UnicodeString *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  icu::UnicodeString::UnicodeString(&v11, a1, a2);
  v4 = a3 + 1;
  if (SWORD4(v11) < 0)
  {
    v5 = HIDWORD(v11);
    if (v4 < SHIDWORD(v11))
    {
      goto LABEL_5;
    }

LABEL_11:
    v8 = icu::UnicodeSet::resemblesPattern(&v11, a3);
    goto LABEL_12;
  }

  if (v4 >= WORD4(v11) >> 5)
  {
    goto LABEL_11;
  }

  v5 = WORD4(v11) >> 5;
LABEL_5:
  if (v5 <= a3)
  {
    goto LABEL_11;
  }

  v6 = (BYTE8(v11) & 2) != 0 ? &v11 | 0xA : *(&v12 + 1);
  v7 = *(v6 + 2 * a3);
  if (v7 != 91)
  {
    goto LABEL_11;
  }

  v8 = 1;
LABEL_12:
  icu::UnicodeString::~UnicodeString(v7, &v11);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t uset_toPattern(icu::UnicodeSet *a1, UChar *a2, int a3, const icu::UnicodeString *a4, int *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v17 = 0;
  v16 = 0u;
  v13 = &unk_1F0935D00;
  LOWORD(v14) = 2;
  icu::UnicodeSet::toPattern(a1, &v13, a4);
  v12 = a2;
  v8 = icu::UnicodeString::extract(&v13, &v12, a3, a5);
  v11 = v12;
  icu::UnicodeString::~UnicodeString(&v11, &v13);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

icu::UnicodeSetIterator *icu::UnicodeSetIterator::UnicodeSetIterator(icu::UnicodeSetIterator *this, const icu::UnicodeSet *a2)
{
  *this = &unk_1F09367F0;
  *(this + 7) = 0;
  *(this + 3) = a2;
  icu::UnicodeSetIterator::reset(this);
  return this;
}

{
  *this = &unk_1F09367F0;
  *(this + 7) = 0;
  *(this + 3) = a2;
  icu::UnicodeSetIterator::reset(this);
  return this;
}

icu::UnicodeSetIterator *icu::UnicodeSetIterator::UnicodeSetIterator(icu::UnicodeSetIterator *this)
{
  *this = &unk_1F09367F0;
  *(this + 3) = 0;
  *(this + 7) = 0;
  icu::UnicodeSetIterator::reset(this);
  return this;
}

{
  *this = &unk_1F09367F0;
  *(this + 3) = 0;
  *(this + 7) = 0;
  icu::UnicodeSetIterator::reset(this);
  return this;
}

icu::UnicodeSet *icu::UnicodeSetIterator::reset(icu::UnicodeSetIterator *this)
{
  result = *(this + 3);
  if (result)
  {
    *(this + 8) = icu::UnicodeSet::getRangeCount(result) - 1;
    result = icu::UnicodeSet::stringsSize(*(this + 3));
    v3 = *(this + 8);
    *(this + 13) = result;
    *(this + 36) = 0xFFFFFFFF00000000;
    *(this + 11) = 0;
    if ((v3 & 0x80000000) == 0)
    {
      *(this + 11) = icu::UnicodeSet::getRangeStart(*(this + 3), 0);
      result = icu::UnicodeSet::getRangeEnd(*(this + 3), 0);
      *(this + 10) = result;
    }
  }

  else
  {
    *(this + 13) = 0;
    *&v4 = 0xFFFFFFFFLL;
    *(&v4 + 1) = 0xFFFFFFFFLL;
    *(this + 2) = v4;
  }

  *(this + 12) = 0;
  *(this + 2) = 0;
  return result;
}

void icu::UnicodeSetIterator::~UnicodeSetIterator(icu::UnicodeSetIterator *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::UObject::~UObject(this);
}

{
  icu::UnicodeSetIterator::~UnicodeSetIterator(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::UnicodeSetIterator::next(icu::UnicodeSetIterator *this)
{
  v2 = *(this + 11);
  if (v2 <= *(this + 10))
  {
    v6 = 0;
    *(this + 11) = v2 + 1;
    *(this + 2) = v2;
    *(this + 3) = v2;
    goto LABEL_5;
  }

  v3 = *(this + 9);
  if (v3 < *(this + 8))
  {
    v4 = v3 + 1;
    *(this + 9) = v3 + 1;
    *(this + 11) = icu::UnicodeSet::getRangeStart(*(this + 3), v3 + 1);
    RangeEnd = icu::UnicodeSet::getRangeEnd(*(this + 3), v4);
    v6 = 0;
    v7 = *(this + 11);
    *(this + 10) = RangeEnd;
    *(this + 11) = v7 + 1;
    *(this + 2) = v7;
    *(this + 3) = v7;
LABEL_5:
    *(this + 2) = v6;
    return 1;
  }

  v9 = *(this + 12);
  if (v9 < *(this + 13))
  {
    *(this + 2) = -1;
    v10 = *(*(this + 3) + 80);
    *(this + 12) = v9 + 1;
    v6 = icu::UVector::elementAt(v10, v9);
    goto LABEL_5;
  }

  return 0;
}

uint64_t icu::UnicodeSetIterator::loadRange(icu::UnicodeSetIterator *this, int a2)
{
  *(this + 11) = icu::UnicodeSet::getRangeStart(*(this + 3), a2);
  result = icu::UnicodeSet::getRangeEnd(*(this + 3), a2);
  *(this + 10) = result;
  return result;
}

uint64_t icu::UnicodeSetIterator::nextRange(icu::UnicodeSetIterator *this)
{
  *(this + 2) = 0;
  v3 = *(this + 10);
  v2 = *(this + 11);
  if (v2 <= v3)
  {
    *(this + 2) = v2;
    *(this + 3) = v3;
    v7 = v3 + 1;
    goto LABEL_5;
  }

  v4 = *(this + 9);
  if (v4 < *(this + 8))
  {
    v5 = v4 + 1;
    *(this + 9) = v4 + 1;
    *(this + 11) = icu::UnicodeSet::getRangeStart(*(this + 3), v4 + 1);
    RangeEnd = icu::UnicodeSet::getRangeEnd(*(this + 3), v5);
    *(this + 2) = *(this + 11);
    *(this + 3) = RangeEnd;
    v7 = RangeEnd + 1;
    *(this + 10) = RangeEnd;
LABEL_5:
    *(this + 11) = v7;
    return 1;
  }

  v9 = *(this + 12);
  if (v9 < *(this + 13))
  {
    *(this + 2) = -1;
    v10 = *(*(this + 3) + 80);
    *(this + 12) = v9 + 1;
    *(this + 2) = icu::UVector::elementAt(v10, v9);
    return 1;
  }

  return 0;
}

uint64_t icu::UnicodeSetIterator::getString(icu::UnicodeSetIterator *this)
{
  result = *(this + 2);
  if (!result)
  {
    v3 = *(this + 7);
    if (!v3)
    {
      operator new();
    }

    v4 = *(this + 2);
    icu::UnicodeString::unBogus(v3);
    if (*(v3 + 8) < 0)
    {
      v5 = *(v3 + 12);
    }

    else
    {
      v5 = *(v3 + 8) >> 5;
    }

    icu::UnicodeString::replace(v3, 0, v5, v4);
    result = *(this + 7);
    *(this + 2) = result;
  }

  return result;
}

uint64_t u_shapeArabic(UChar *src, uint64_t count, UChar *dest, int a4, int a5, int *a6)
{
  v88 = *MEMORY[0x1E69E9840];
  if (!a6 || *a6 > 0)
  {
    v7 = 0;
LABEL_18:
    v17 = *MEMORY[0x1E69E9840];
    return v7;
  }

  v8 = src;
  if (!src)
  {
    goto LABEL_16;
  }

  v7 = count;
  if (count < -1)
  {
    goto LABEL_16;
  }

  v11 = dest || a4 == 0;
  v12 = !v11;
  if (a4 < 0)
  {
    goto LABEL_16;
  }

  if (v12)
  {
    goto LABEL_16;
  }

  v14 = a5 & 0x18;
  v15 = a5 & 0xE0000;
  if ((a5 & 0xE0000) != 0 && v14 == 24)
  {
    goto LABEL_16;
  }

  v19 = v15 && v14 == 16;
  v20 = v19;
  if ((a5 & 0x200) != 0)
  {
    goto LABEL_16;
  }

  if (v20)
  {
    goto LABEL_16;
  }

  v21 = a5 & 0xE0;
  if (v21 == 160 || (a5 & 0x1001B) != 0x18 && (a5 & 0x4000) != 0)
  {
    goto LABEL_16;
  }

  v22 = a5 & 0x10003;
  if ((a5 & 0x10003u) >= 4 && v22 != 0x10000)
  {
    goto LABEL_16;
  }

  if (v15 >> 17 > 6 || ((1 << (v15 >> 17)) & 0x5D) == 0)
  {
    goto LABEL_16;
  }

  if (count == -1)
  {
    v7 = u_strlen(src);
  }

  if (v7 > 0)
  {
    if (!dest || (v8 > dest || &v8[v7] <= dest) && (dest > v8 || &dest[a4] <= v8))
    {
      if ((a5 & 0x8000000) != 0)
      {
        v23 = -397;
      }

      else
      {
        v23 = 8203;
      }

      if (v14)
      {
        v74 = v23;
        bzero(desta, 0x258uLL);
        v86 = 0;
        v73 = v21;
        if ((a5 & 0x4000) != 0)
        {
          v72 = v22;
          if ((a5 & 4) != 0)
          {
            v26 = -1;
          }

          else
          {
            v26 = 1;
          }

          if ((a5 & 4) != 0)
          {
            v27 = -1;
          }

          else
          {
            v27 = v7;
          }

          v28 = malloc_type_malloc((4 * v7), 0x1000040BDFB0063uLL);
          if (!v28)
          {
            v38 = 0;
            v51 = 7;
LABEL_124:
            *a6 = v51;
LABEL_125:
            v7 = v38;
            goto LABEL_18;
          }

          v78 = v28;
          if ((a5 & 4) != 0)
          {
            v29 = v7;
          }

          else
          {
            v29 = -1;
          }

          v30 = 2 * v7;
          if ((a5 & 4) == 0)
          {
            v30 = -1;
          }

          v82 = v30;
          v7 = 0;
          v31 = v27 - (v29 + v26);
          if (v31)
          {
            v76 = 0;
            v32 = &v8[v29 + v26];
            v77 = v26;
            v75 = 2 * v26;
            v80 = 0;
            v81 = 1;
            do
            {
              v33 = *v32;
              v34 = sub_195295764(v33);
              if ((a5 & 0x4018) == 0x4018 && v81 && ((v34 | v80) & 0xC0) == 0xC0)
              {
                v35 = v76;
                if (v76 >= v33)
                {
                  v35 = v33;
                }

                v36 = v35 - 2542;
                v78[v82] = v36;
                v34 = sub_195295764(v36);
                v81 = 0;
                v37 = v77;
              }

              else
              {
                v37 = v77;
                v78[v82 + v77] = v33;
                v76 = *v32;
                v7 = (v7 + 1);
                v81 = 1;
                v82 += v77;
              }

              v32 = (v32 + v75);
              v80 = v34;
              v31 -= v37;
            }

            while (v31);
          }

          v24 = v78;
          v8 = &v78[v82 & (a5 << 29 >> 31)];
          v22 = v72;
        }

        else
        {
          v24 = 0;
        }

        if (!v22 || (v38 = v7, v15 == 0x80000))
        {
          v39 = v24;
          v40 = sub_195295800(v8, v7, a5);
          v24 = v39;
          v38 = v40;
        }

        if (v38 > a4)
        {
          *a6 = 15;
          if (v24)
          {
            free(v24);
          }

          goto LABEL_125;
        }

        v79 = v24;
        if (v7 > v38)
        {
          LODWORD(v38) = v7;
        }

        if (v38 >= 301)
        {
          v42 = malloc_type_malloc((2 * v38), 0x1000040BDFB0063uLL);
          if (!v42)
          {
            *a6 = 7;
            if (v79)
            {
              free(v79);
            }

            v38 = 0;
            goto LABEL_125;
          }

          v41 = v42;
        }

        else
        {
          LODWORD(v38) = 300;
          v41 = desta;
        }

        u_memcpy(v41, v8, v7);
        if (v79)
        {
          free(v79);
        }

        if (v38 > v7)
        {
          bzero(&v41[v7], 2 * (v38 - v7));
        }

        if ((a5 & 4) == 0)
        {
          sub_195295954(v41, v7, &v86 + 1, &v86);
          v43 = SHIDWORD(v86);
          LODWORD(v44) = v7 + ~v86;
          if (v44 <= SHIDWORD(v86))
          {
            goto LABEL_99;
          }

          v44 = v44;
          do
          {
            v45 = v41[v43];
            v41[v43] = v41[v44];
            v41[v44] = v45;
            ++v43;
            --v44;
          }

          while (v43 < v44);
        }

        if ((~a5 & 0x4000004) == 0)
        {
          v46 = 2;
          v47 = 3;
          v48 = 393216;
          v49 = 0x40000;
          v50 = 1;
          goto LABEL_100;
        }

LABEL_99:
        v50 = 0;
        v46 = 3;
        v47 = 2;
        v48 = 0x40000;
        v49 = 393216;
LABEL_100:
        v38 = v14 >> 3;
        if (v14 >> 3 > 1)
        {
          if (v38 == 2)
          {
            LODWORD(v83) = v74;
            *(&v83 + 4) = __PAIR64__(v47, v46);
            HIDWORD(v83) = v48;
            v84 = v49;
            v85 = v50;
            v52 = sub_195296220(v41, v7, a5, a6, &v83);
LABEL_115:
            v38 = v52;
LABEL_116:
            if ((a5 & 4) == 0)
            {
              sub_195295954(v41, v38, &v86 + 1, &v86);
              v58 = SHIDWORD(v86);
              LODWORD(v59) = v38 + ~v86;
              if (v59 > SHIDWORD(v86))
              {
                v59 = v59;
                do
                {
                  v60 = v41[v58];
                  v41[v58] = v41[v59];
                  v41[v59] = v60;
                  ++v58;
                  --v59;
                }

                while (v58 < v59);
              }
            }

            v61 = uprv_min(v38, a4);
            u_memcpy(dest, v41, v61);
            if (v41 != desta)
            {
              free(v41);
            }

            if (v38 > a4)
            {
              v51 = 15;
              goto LABEL_124;
            }

            v21 = v73;
LABEL_127:
            if (v21)
            {
              if ((a5 & 0x100) != 0)
              {
                v62 = 1776;
              }

              else
              {
                v62 = 1632;
              }

              v63 = (v21 - 32) >> 5;
              if (v63 <= 1)
              {
                if (v63)
                {
                  if (v38 >= 1)
                  {
                    if ((a5 & 0x100) != 0)
                    {
                      v64 = -1728;
                    }

                    else
                    {
                      v64 = -1584;
                    }

                    v65 = v38;
                    v66 = dest;
                    do
                    {
                      v67 = *v66;
                      if ((v67 - v62) <= 9)
                      {
                        *v66 = v64 + v67;
                      }

                      ++v66;
                      --v65;
                    }

                    while (v65);
                  }
                }

                else if (v38 >= 1)
                {
                  v69 = v38;
                  v70 = dest;
                  do
                  {
                    v71 = *v70;
                    if ((v71 - 48) <= 9)
                    {
                      *v70 = v62 - 48 + v71;
                    }

                    ++v70;
                    --v69;
                  }

                  while (v69);
                }

                goto LABEL_153;
              }

              if (v63 == 2)
              {
                v68 = 0;
                goto LABEL_152;
              }

              if (v63 == 3)
              {
                v68 = 1;
LABEL_152:
                sub_1952963E8(dest, v38, v62, (a5 & 4) == 0, v68);
              }
            }

LABEL_153:
            v7 = u_terminateUChars(dest, a4, v38, a6);
            goto LABEL_18;
          }

          LODWORD(v83) = v74;
          *(&v83 + 4) = __PAIR64__(v47, v46);
          HIDWORD(v83) = v48;
          v84 = v49;
          v85 = v50;
          v53 = v41;
          v54 = v7;
          v55 = a5;
          v56 = a6;
          v57 = 0;
        }

        else
        {
          if (!v38)
          {
            goto LABEL_116;
          }

          if (!v15 || v15 == 786432)
          {
            LODWORD(v83) = v74;
            *(&v83 + 4) = __PAIR64__(v47, v46);
            HIDWORD(v83) = v48;
            v84 = v49;
            v85 = v50;
            v38 = sub_1952959E0(v41, v7, a5, a6, 1, &v83);
            if (v15 == 786432)
            {
              sub_195296140(v41, v38);
            }

            goto LABEL_116;
          }

          LODWORD(v83) = v74;
          *(&v83 + 4) = __PAIR64__(v47, v46);
          HIDWORD(v83) = v48;
          v84 = v49;
          v85 = v50;
          v53 = v41;
          v54 = v7;
          v55 = a5;
          v56 = a6;
          v57 = 2;
        }

        v52 = sub_1952959E0(v53, v54, v55, v56, v57, &v83);
        goto LABEL_115;
      }

      if (v7 <= a4)
      {
        u_memcpy(dest, v8, v7);
        v38 = v7;
        goto LABEL_127;
      }

      v16 = 15;
LABEL_17:
      *a6 = v16;
      goto LABEL_18;
    }

LABEL_16:
    v7 = 0;
    v16 = 1;
    goto LABEL_17;
  }

  v25 = *MEMORY[0x1E69E9840];

  return u_terminateUChars(dest, a4, 0, a6);
}

uint64_t sub_195295764(int a1)
{
  if ((a1 - 1570) <= 0xB1)
  {
    return word_195480DAC[a1 - 1570];
  }

  if (a1 == 8205)
  {
    return 3;
  }

  if ((a1 - 8301) < 3)
  {
    return 4;
  }

  if ((a1 + 1200) <= 0x112u)
  {
    v2 = a1 - 64336;
    v3 = &unk_195480F10;
    return v3[v2];
  }

  if ((a1 + 400) <= 0x8Cu)
  {
    v2 = a1 - 65136;
    v3 = &unk_195481023;
    return v3[v2];
  }

  return 0;
}

uint64_t sub_195295800(__int16 *a1, uint64_t a2, int a3)
{
  v3 = (a3 & 0x1000B) == 8 || (a3 & 0xE0018) == 524296;
  v4 = a2;
  if (v3)
  {
    v5 = (a2 - 1);
    if ((a3 & 4) == 0)
    {
      if (a2 >= 1)
      {
        v6 = 0;
        v4 = a2;
        while (1)
        {
          v7 = a1[v6];
          if (v7 != 1604 || v6 >= v5)
          {
            if ((v7 & 0xFFF0) != 0xFE70)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v9 = a1[v6 + 1] - 1570;
            v10 = v9 > 5;
            v11 = (1 << v9) & 0x2B;
            if (v10 || v11 == 0)
            {
              goto LABEL_21;
            }
          }

          v4 = (v4 - 1);
LABEL_21:
          if (a2 == ++v6)
          {
            goto LABEL_22;
          }
        }
      }

      return a2;
    }

    if (a2 < 1)
    {
      return a2;
    }

    v15 = 0;
    v4 = a2;
    while (1)
    {
      v16 = a1[v15];
      v17 = (v16 - 1570) > 5 || ((1 << (v16 - 34)) & 0x2B) == 0;
      if (!v17 && v15 < v5)
      {
        break;
      }

      if ((v16 & 0xFFF0) == 0xFE70)
      {
        goto LABEL_41;
      }

LABEL_42:
      if (a2 == ++v15)
      {
        goto LABEL_22;
      }
    }

    if (a1[v15 + 1] != 1604)
    {
      goto LABEL_42;
    }

LABEL_41:
    v4 = (v4 - 1);
    goto LABEL_42;
  }

LABEL_22:
  if ((a3 & 0x1001B) == 0x10 && a2 >= 1)
  {
    v13 = a2;
    do
    {
      v14 = *a1++;
      if ((v14 + 267) >= 8u)
      {
        v4 = v4;
      }

      else
      {
        v4 = (v4 + 1);
      }

      --v13;
    }

    while (v13);
  }

  return v4;
}

_WORD *sub_195295954(_WORD *result, int a2, _DWORD *a3, _DWORD *a4)
{
  v4 = a2 > 0;
  if (*result != 32 || a2 < 1)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = result[++v6];
      v4 = v6 < a2;
    }

    while (v7 == 32 && v6 < a2);
  }

  if (v4)
  {
    if (result[a2 - 1] == 32)
    {
      v4 = 0;
      v9 = &result[a2 - 2];
      do
      {
        ++v4;
        v10 = *v9--;
      }

      while (v10 == 32);
    }

    else
    {
      v4 = 0;
    }
  }

  *a3 = v6;
  *a4 = v4;
  return result;
}

uint64_t sub_1952959E0(UChar *a1, unsigned int a2, int a3, _DWORD *a4, int a5, __int128 *a6)
{
  if ((a3 & 0x8000) == 0 && a2 >= 1)
  {
    v7 = a2;
    v8 = a1;
    while (1)
    {
      v9 = *v8;
      if ((v9 + 1200) <= 0xAFu)
      {
        break;
      }

      if ((v9 + 400) <= 0x8Cu)
      {
        LOWORD(v9) = word_195481214[v9 - 65136];
LABEL_9:
        *v8 = v9;
      }

LABEL_10:
      ++v8;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    v9 = word_1954810B4[v9 - 64336];
    if (!v9)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_11:
  if (!a2)
  {
    return 0;
  }

  v10 = a2 - 1;
  v11 = sub_195295764(a1[a2 - 1]);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v86 = 0;
  v15 = 0;
  v90 = 0;
  v16 = -2;
  v17 = v10;
  while (1)
  {
    while (1)
    {
      if (v11 <= 0xFF && (sub_195295764(a1[v10]) & 4) == 0)
      {
        v18 = v10;
        goto LABEL_67;
      }

      if ((v16 & 0x80000000) == 0)
      {
LABEL_23:
        if ((v11 & 0x20) == 0)
        {
          goto LABEL_30;
        }

LABEL_24:
        if ((v13 & 0x10) != 0)
        {
          v21 = a1[v10] - 1570;
          if (v21 <= 5 && ((0x2Bu >> v21) & 1) != 0)
          {
            v22 = word_19548139A[(a1[v10] - 1570)];
            a1[v10] = -1;
            v10 = v17;
            a1[v17] = v22;
          }

          else
          {
            v22 = 0;
          }

          v11 = sub_195295764(v22);
          HIDWORD(v86) = 1;
          v13 = v14;
        }

        goto LABEL_30;
      }

      v19 = v10 - 1;
      while (v19 != -1)
      {
        v20 = sub_195295764(a1[v19]);
        if ((v20 & 4) == 0)
        {
          v16 = v19;
        }

        v19 -= (v20 & 4) >> 2;
        if ((v16 & 0x80000000) == 0)
        {
          v12 = v20;
          goto LABEL_23;
        }
      }

      v12 = 0;
      v16 = 3000;
      if ((v11 & 0x20) != 0)
      {
        goto LABEL_24;
      }

LABEL_30:
      v18 = v10;
      if (v10 < 1)
      {
        if (v10)
        {
          goto LABEL_42;
        }

        v24 = *a1;
      }

      else
      {
        v23 = &a1[v10];
        if (*(v23 - 1) != 32)
        {
          goto LABEL_42;
        }

        v24 = *v23;
      }

      v25 = v24 - 1591;
      if (v24 == 1574)
      {
        v26 = 1;
      }

      else
      {
        v26 = v15;
      }

      v27 = (v25 != -5) & __CFADD__(v25, 5);
      v28 = v90;
      if (v27)
      {
        v28 = 1;
      }

      v90 = v28;
      if (!v27)
      {
        v15 = v26;
      }

LABEL_42:
      v29 = byte_19548132E[16 * (v12 & 3) + 4 * (v13 & 3) + (v11 & 3)];
      if ((v11 & 3) == 1)
      {
        v29 &= 1u;
        v30 = v10;
        v31 = a1[v10];
      }

      else
      {
        v30 = v10;
        v32 = &a1[v10];
        v31 = *v32;
        if (v31 - 1619 >= 0xFFFFFFF8)
        {
          if (v13 & 2) != 0 && a5 == 1 && (v12)
          {
            if ((v31 & 0x65E) == 0x64C)
            {
              v29 = 0;
            }

            else
            {
              v29 = (v12 & 0x20) == 0;
              if ((v13 & 0x10) == 0)
              {
                v29 = 1;
              }
            }
          }

          else
          {
            v29 = 0;
            if (a5 == 2 && v31 == 1617)
            {
              LOWORD(v29) = 1;
              goto LABEL_58;
            }
          }
        }
      }

      if ((v31 ^ 0x600) > 0xFF)
      {
        goto LABEL_67;
      }

      v32 = &a1[v30];
      if (v31 - 1619 >= 0xFFFFFFF8)
      {
        if (a5 == 2 && v31 != 1617)
        {
          *v32 = -2;
          LODWORD(v86) = 1;
          goto LABEL_67;
        }

LABEL_58:
        v33 = byte_19548136E[v31 - 1611];
        LOWORD(v29) = v29 - 400;
LABEL_66:
        *v32 = v29 + v33;
        goto LABEL_67;
      }

      if ((v11 & 8) != 0)
      {
        v29 += v11 >> 8;
        v33 = -1200;
        goto LABEL_66;
      }

      if (v11 >= 0x100 && (v11 & 4) == 0)
      {
        v29 += v11 >> 8;
        v33 = -400;
        goto LABEL_66;
      }

LABEL_67:
      if ((v11 & 4) == 0)
      {
        v17 = v18;
        v14 = v13;
        v13 = v11;
      }

      v10 = v18 - 1;
      if (v18 - 1 != v16)
      {
        break;
      }

      v16 = -2;
      v11 = v12;
      if (!v18)
      {
        goto LABEL_76;
      }
    }

    if (!v18)
    {
      break;
    }

    v11 = sub_195295764(a1[v10]);
  }

LABEL_76:
  v34 = (v90 | v15) != 0;
  if (v86)
  {
    v35 = *(a6 + 1);
    v36 = *(a6 + 2);
    v37 = *(a6 + 3);
    v38 = *(a6 + 4);
    v39 = *(a6 + 5);
    v40 = 2 * a2;
    v41 = v40 + 2;
    v42 = malloc_type_malloc(v41, 0x1000040BDFB0063uLL);
    if (v42)
    {
      v43 = v42;
      v87 = v39;
      v89 = v36;
      v91 = v38;
      v44 = a3 & 0xE0000;
      v45 = a3 & 0x10003;
      if ((a3 & 0x10003) == 0 || (v46 = a2, v44 == 0x80000))
      {
        bzero(v42, v41);
        if (a2 < 1)
        {
          v47 = 0;
          v57 = 0;
LABEL_106:
          bzero(v43 + v57 - (2 * v47), 2 * (v47 + 1));
        }

        else
        {
          v47 = 0;
          v48 = 0;
          v49 = a1;
          v50 = a2;
          do
          {
            v51 = *v49++;
            v52 = v51;
            v53 = v44 == 0x80000 && v52 == 65534;
            v54 = v53;
            if ((v52 != 0xFFFF || v45 != 0) && v54 == 0)
            {
              v43[v48++] = v52;
            }

            else
            {
              ++v47;
            }

            --v50;
          }

          while (v50);
          if ((v47 & 0x80000000) == 0)
          {
            v57 = 2 * a2;
            goto LABEL_106;
          }
        }

        u_memcpy(a1, v43, a2);
        v46 = u_strlen(a1);
      }

      if (v45 == 1)
      {
        if (a2 >= 1)
        {
          v59 = a2;
          v60 = a1;
          do
          {
            if (*v60 == -1)
            {
              *v60 = 32;
            }

            ++v60;
            --v59;
          }

          while (v59);
          v46 = a2;
          goto LABEL_115;
        }

        v46 = a2;
        v53 = v35 == 1;
        v58 = a2;
        if (!v53)
        {
LABEL_164:
          if (v44 == v37)
          {
            v62 = 0;
            v61 = 1;
            goto LABEL_119;
          }

          goto LABEL_136;
        }
      }

      else
      {
LABEL_115:
        v53 = v45 == v35;
        v58 = a2;
        if (!v53 && (v45 != 0x10000 || v87 != 1))
        {
          goto LABEL_164;
        }
      }

      v61 = v44 == v37;
      v62 = 1;
LABEL_119:
      bzero(v43, v41);
      if ((v58 & 0x80000000) == 0)
      {
        v63 = 0;
        v64 = &a1[v58];
        v65 = v58 + 1;
        v66 = v58;
        do
        {
          v67 = *v64--;
          v68 = v67;
          if (v67 == 0xFFFF)
          {
            v69 = v62;
          }

          else
          {
            v69 = 0;
          }

          v70 = v68 == 65534 && v61;
          if ((v69 & 1) != 0 || v70)
          {
            ++v63;
          }

          else
          {
            v43[v66--] = v68;
          }

          v27 = v65-- <= 1;
        }

        while (!v27);
        if (v63 >= 1)
        {
          memset_pattern16(v43, asc_1954813B0, (2 * v63));
        }
      }

      u_memcpy(a1, v43, v58);
      v46 = v58;
LABEL_136:
      if (v45 == v89 || v45 == 0x10000 && !v87)
      {
        v71 = v44 == v91;
        v72 = 1;
        goto LABEL_140;
      }

      if (v44 == v91)
      {
        v72 = 0;
        v71 = 1;
LABEL_140:
        bzero(v43, v41);
        if (v58 < 1)
        {
          v73 = 0;
          v40 = 0;
        }

        else
        {
          v73 = 0;
          v74 = 0;
          v75 = a1;
          v76 = v58;
          do
          {
            v77 = *v75++;
            v78 = v77;
            if (v77 == 0xFFFF)
            {
              v79 = v72;
            }

            else
            {
              v79 = 0;
            }

            v80 = v78 == 65534 && v71;
            if ((v79 & 1) != 0 || v80)
            {
              ++v73;
            }

            else
            {
              v43[v74++] = v78;
            }

            --v76;
          }

          while (v76);
          if (v73 < 0)
          {
LABEL_157:
            u_memcpy(a1, v43, v58);
            v46 = v58;
            goto LABEL_158;
          }
        }

        memset_pattern16(v43 + v40 - (2 * v73), asc_1954813B0, 2 * (v73 + 1));
        goto LABEL_157;
      }

LABEL_158:
      free(v43);
      if (v34)
      {
LABEL_159:
        v92 = *a6;
        v93 = *(a6 + 2);
        return sub_1952964FC(a1, v58, v46, a3, a4, 0, &v92);
      }
    }

    else
    {
      v46 = 0;
      *a4 = 7;
      v58 = a2;
      if (v34)
      {
        goto LABEL_159;
      }
    }
  }

  else
  {
    v58 = a2;
    v46 = a2;
    if (v90 | v15)
    {
      goto LABEL_159;
    }

    return a2;
  }

  return v46;
}

uint64_t sub_195296140(_WORD *a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    for (i = a2; i; --i)
    {
      v3 = *a1;
      if ((v3 & 0xFFF0) == 0xFE70)
      {
        if (v3 != 65139 && v3 != 65141)
        {
          if (v3 == 65149)
          {
            goto LABEL_19;
          }

          if ((0xAA82uLL >> (v3 & 0xF)))
          {
            LOWORD(v3) = 1600;
            goto LABEL_19;
          }

          if (v3 != 65139 && v3 != 65141)
          {
            v5 = 1 - byte_19548138A[v3 & 0xF];
            goto LABEL_16;
          }
        }
      }

      else if ((v3 + 782) < 3u)
      {
        LOWORD(v3) = -387;
        goto LABEL_19;
      }

      v5 = (v3 + 930) < 6u;
LABEL_16:
      if (v3 == 65148 || !v5)
      {
        goto LABEL_20;
      }

      LOWORD(v3) = 32;
LABEL_19:
      *a1 = v3;
LABEL_20:
      ++a1;
    }
  }

  return a2;
}

uint64_t sub_195296220(UChar *a1, uint64_t a2, int a3, _DWORD *a4, __int128 *a5)
{
  v7 = (a2 - 1);
  if (a2 < 1)
  {
    return a2;
  }

  v20 = v5;
  v21 = v6;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = a1[v8];
    if ((v10 + 1200) > 0xAFu)
    {
      if ((a3 & 0x3800000) == 0x1000000 && (v10 == 65152 || v10 == 1569) && v8 < v7)
      {
        v12 = &a1[v8];
        v13 = v12[1];
        if ((v13 - 65263) < 2 || v13 == 1609)
        {
          LOWORD(v10) = 32;
          a1[v8] = 32;
          v12[1] = 1574;
          goto LABEL_27;
        }
      }

      if (a3 & 0x700000) != 0x200000 || (v10 != 8203 ? (v14 = v10 == 65139) : (v14 = 1), v14 ? (v15 = v8 >= v7) : (v15 = 1), v15 || (v16 = a1[v8 + 1], (v16 + 335) > 0xDu) || ((0xCCCuLL >> (v16 + 79))))
      {
        if ((v10 + 400) > 0x84u)
        {
          goto LABEL_27;
        }

        LOWORD(v10) = word_195481214[v10 - 65136];
      }

      else
      {
        LOWORD(v10) = 32;
      }

      a1[v8] = v10;
    }

    else
    {
      v11 = word_1954810B4[v10 - 64336];
      if (v11)
      {
        a1[v8] = v11;
        LOWORD(v10) = v11;
      }
    }

LABEL_27:
    if ((v10 + 259) >= 0xFFF8u)
    {
      v9 = 1;
    }

    ++v8;
  }

  while (a2 != v8);
  if (v9)
  {
    v18 = *a5;
    v19 = *(a5 + 2);
    return sub_1952964FC(a1, a2, a2, a3, a4, 1, &v18);
  }

  return a2;
}

uint64_t sub_1952963E8(uint64_t result, int a2, __int16 a3, int a4, unsigned __int8 a5)
{
  v5 = result;
  v6 = a5;
  v7 = a3 - 48;
  if (a4)
  {
    if (a2 >= 1)
    {
      v8 = a2;
      do
      {
        v9 = *v5;
        result = ubidi_getClass(v9);
        if (result < 2)
        {
          v6 = 0;
        }

        else if (result == 2)
        {
          if (v6)
          {
            if (v9 - 48 <= 9)
            {
              *v5 = v9 + v7;
            }

            v6 = 1;
          }
        }

        else if (result == 13)
        {
          v6 = 1;
        }

        ++v5;
        --v8;
      }

      while (v8);
    }
  }

  else if (a2 >= 1)
  {
    v10 = a2 + 1;
    v11 = (result + 2 * a2 - 2);
    do
    {
      v12 = *v11;
      result = ubidi_getClass(v12);
      if (result < 2)
      {
        v6 = 0;
      }

      else if (result == 2)
      {
        if (v6)
        {
          if (v12 - 48 <= 9)
          {
            *v11 = v12 + v7;
          }

          v6 = 1;
        }
      }

      else if (result == 13)
      {
        v6 = 1;
      }

      --v10;
      --v11;
    }

    while (v10 > 1);
  }

  return result;
}

uint64_t sub_1952964FC(UChar *a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, int a6, uint64_t a7)
{
  v14 = a4 & 0x10003;
  if ((a4 & 0x10003) == 0x10000 && a6 == 1)
  {
    if (*(a7 + 20))
    {
      v19 = sub_195296ADC(a1, a2, a5);
      if (*a5 == 20)
      {
        *a5 = 0;
        v20 = sub_195296904(a1, a2, a5);
        goto LABEL_17;
      }
    }

    else
    {
      v19 = sub_195296904(a1, a2, a5);
      if (*a5 == 20)
      {
        *a5 = 0;
        v20 = sub_195296ADC(a1, a2, a5);
LABEL_17:
        a3 = v20;
        if (*a5 != 20)
        {
          goto LABEL_27;
        }

        *a5 = 0;
        a3 = a2;
        if (a2 < 1)
        {
          goto LABEL_27;
        }

        v21 = a2;
        v22 = a1 + 1;
        do
        {
          v23 = *v22;
          if ((v23 + 259) >= 0xFFF8u)
          {
            if (*(v22 - 1) == 32)
            {
              *v22 = 1604;
              *(v22 - 1) = word_195481376[v23 - 65269];
            }

            else
            {
              *a5 = 20;
            }
          }

          ++v22;
          --v21;
        }

        while (v21);
        a3 = a2;
        goto LABEL_5;
      }
    }

    a3 = v19;
    goto LABEL_27;
  }

LABEL_5:
  if (a6 != 1)
  {
    v16 = (a4 & 0x3800000) == 0x1000000;
    if (a6)
    {
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v17 = (a4 & 0x700000) == 0x200000;
    }

    if (a6)
    {
      v18 = 1;
    }

    else
    {
      v18 = (a4 & 0x700000) != 0x200000;
    }

    goto LABEL_32;
  }

LABEL_27:
  if (v14 == *(a7 + 8))
  {
    a3 = sub_195296904(a1, a2, a5);
  }

  if (v14 == *(a7 + 4))
  {
    a3 = sub_195296ADC(a1, a2, a5);
  }

  v16 = 0;
  v17 = 0;
  v18 = 1;
LABEL_32:
  v24 = v14 == 1 && a6 == 1;
  v25 = v24;
  if (v24 || v16 || v17)
  {
    a3 = a2;
    if (a2 >= 1)
    {
      v26 = 0;
      v27 = *a7;
      v28 = a1;
      while (1)
      {
        if (v18 || (*v28 + 335) > 0xDu || ((0xCCCuLL >> (*v28 + 79)) & 1) != 0)
        {
          if (v16 && (v29 = *v28, (v29 + 373) >= 0xFFFEu))
          {
            if (!v26 || *(v28 - 1) != 32)
            {
              goto LABEL_58;
            }

            *v28 = word_195481386[v29 - 65161];
            *(v28 - 1) = -384;
          }

          else
          {
            if (!v25)
            {
              goto LABEL_59;
            }

            v30 = v28[1];
            if ((v30 + 259) < 0xFFF8u)
            {
              goto LABEL_59;
            }

            if (*v28 != 32)
            {
LABEL_58:
              *a5 = 20;
              goto LABEL_59;
            }

            v28[1] = 1604;
            *v28 = word_195481376[v30 - 65269];
          }
        }

        else
        {
          if (!v26 || *(v28 - 1) != 32)
          {
            goto LABEL_58;
          }

          *(v28 - 1) = v27;
        }

LABEL_59:
        --v26;
        ++v28;
        if (-a2 == v26)
        {
          a3 = a2;
          break;
        }
      }
    }
  }

  if (!v14 && a6 == 1)
  {
    a3 = sub_195295800(a1, a2, a4);
    v31 = 2 * a3 + 2;
    v32 = malloc_type_malloc(v31, 0x1000040BDFB0063uLL);
    if (v32)
    {
      v33 = v32;
      bzero(v32, v31);
      if (a3 >= 1)
      {
        v34 = 0;
        v35 = 1;
        v36 = a1;
        do
        {
          v38 = *v36++;
          v37 = v38;
          if ((v38 + 259) >= 0xFFF8u)
          {
            v33[v34++] = word_195481376[v37 - 65269];
            LOWORD(v37) = 1604;
          }

          v33[v34] = v37;
          if (v35 >= a3)
          {
            break;
          }

          ++v34;
          ++v35;
        }

        while (v34 < a3);
      }

      u_memcpy(a1, v33, a3);
      free(v33);
    }

    else
    {
      a3 = 0;
      *a5 = 7;
    }
  }

  return a3;
}

uint64_t sub_195296904(UChar *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v6 = 2 * a2 + 2;
  v7 = malloc_type_malloc(v6, 0x1000040BDFB0063uLL);
  if (v7)
  {
    v8 = v7;
    bzero(v7, v6);
    if (a1[v4 - 1] == 32)
    {
      v9 = 0;
      v10 = &a1[v4 - 2];
      do
      {
        ++v9;
        v11 = *v10--;
      }

      while (v11 == 32);
    }

    else
    {
      v9 = 0;
    }

    v12 = (~v9 + v4);
    v13 = v4 - 1;
    if ((v12 & 0x80000000) == 0 && v4 >= 1)
    {
      v14 = v4 - 1;
      while (1)
      {
        if (v9 < 1)
        {
          v15 = a1[v12];
          if (!v9 && (v15 + 259) >= 0xFFF8u)
          {
            *a3 = 20;
          }
        }

        else
        {
          v15 = a1[v12];
          if ((v15 + 259) >= 0xFFF8u)
          {
            v16 = &v8[v14];
            *v16 = 1604;
            *(v16 - 1) = word_195481376[a1[v12] - 65269];
            --v14;
            --v9;
            goto LABEL_18;
          }
        }

        v8[v14] = v15;
LABEL_18:
        if (v12 >= 1)
        {
          --v12;
          if (v14-- > 0)
          {
            continue;
          }
        }

        break;
      }
    }

    if (v9 >= 1)
    {
      u_memmove(v8, &v8[v9], v4);
      if (u_strlen(v8) < v4)
      {
        v18 = v4 - v9;
        if (v4 - v9 >= v13)
        {
          v18 = v4 - 1;
        }

        memset_pattern16(&v8[v4 - (v13 - v18) - 1], asc_1954813B0, 2 * (v13 - v18) + 2);
      }
    }

    u_memcpy(a1, v8, v4);
    free(v8);
  }

  else
  {
    v4 = 0;
    *a3 = 7;
  }

  return v4;
}

uint64_t sub_195296ADC(UChar *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a2;
  v6 = 2 * a2 + 2;
  v7 = malloc_type_malloc(v6, 0x1000040BDFB0063uLL);
  if (v7)
  {
    v8 = v7;
    bzero(v7, v6);
    if (*a1 == 32)
    {
      v9 = 0;
      do
      {
        v10 = a1[v9 + 1];
        v9 = (v9 + 1);
      }

      while (v10 == 32);
    }

    else
    {
      LODWORD(v9) = 0;
    }

    v11 = (v4 - 1);
    if (v4 >= 1)
    {
      v12 = v4 - 1;
      while (1)
      {
        v13 = v9 - 1;
        if (v9 < 1)
        {
          v14 = a1[v11];
          if (!v9 && (v14 + 259) >= 0xFFF8u)
          {
            *a3 = 20;
          }
        }

        else
        {
          v14 = a1[v11];
          if ((v14 + 259) >= 0xFFF8u)
          {
            v9 = &v8[v12];
            *v9 = 1604;
            *(v9 - 1) = word_195481376[a1[v11] - 65269];
            --v12;
            LODWORD(v9) = v13;
            goto LABEL_17;
          }
        }

        v8[v12] = v14;
LABEL_17:
        v15 = v11-- < 1;
        if (!v15)
        {
          v15 = v12-- <= 0;
          if (!v15)
          {
            continue;
          }
        }

        break;
      }
    }

    u_memcpy(a1, v8, v4);
    free(v8);
  }

  else
  {
    v4 = 0;
    *a3 = 7;
  }

  return v4;
}

uint64_t usprep_open(char *a1, const char *a2, int *a3)
{
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9AE0, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9AE0))
  {
    if (dword_1EAEC9AE4 >= 1)
    {
      v4 = 0;
      *a3 = dword_1EAEC9AE4;
      return v4;
    }
  }

  else
  {
    sub_195297D6C(a3);
    dword_1EAEC9AE4 = *a3;
    icu::umtx_initImplPostInit(&dword_1EAEC9AE0);
  }

  if (*a3 > 0)
  {
    return 0;
  }

  v33[0] = a2;
  v33[1] = a1;
  umtx_lock(&unk_1EAEC9AF0);
  v8 = uhash_get(qword_1EAEC9AD8, v33);
  if (v8)
  {
    v4 = v8;
    ++*(v8 + 120);
    umtx_unlock(&unk_1EAEC9AF0);
    return v4;
  }

  umtx_unlock(&unk_1EAEC9AF0);
  v9 = malloc_type_malloc(0x80uLL, 0x10F004046DCA3FCuLL);
  v10 = v9;
  if (!v9)
  {
    *a3 = 7;
LABEL_20:
    free(v10);
    return 0;
  }

  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v36 = 0;
  *__dst = 0u;
  v35 = 0u;
  if (*a3 > 0)
  {
    goto LABEL_20;
  }

  v11 = udata_openChoice(a1, "spp", a2, sub_195297F80, 0, a3);
  if (*a3 > 0)
  {
    goto LABEL_20;
  }

  v12 = v11;
  LODWORD(versionArray) = 0;
  Memory = udata_getMemory(v11);
  utrie_unserialize(__dst, (Memory + 64), *Memory, a3);
  *&v35 = nullsub_21;
  if (*a3 > 0)
  {
    goto LABEL_23;
  }

  umtx_lock(&unk_1EAEC9AF0);
  v14 = v10[14];
  if (v14)
  {
    Memory = udata_getMemory(v14);
  }

  else
  {
    v10[14] = v12;
    v15 = *Memory;
    v16 = *(Memory + 16);
    v17 = *(Memory + 48);
    *(v10 + 2) = *(Memory + 32);
    *(v10 + 3) = v17;
    *v10 = v15;
    *(v10 + 1) = v16;
    v18 = v35;
    *(v10 + 4) = *__dst;
    *(v10 + 5) = v18;
    v10[12] = v36;
    v12 = 0;
  }

  umtx_unlock(&unk_1EAEC9AF0);
  v10[13] = Memory + *v10 + 64;
  u_getUnicodeVersion(&versionArray);
  if (*a3 > 0)
  {
LABEL_23:
    udata_close(v12);
    goto LABEL_20;
  }

  v19 = bswap32(versionArray);
  if (v19 < bswap32(dword_1EAEC9AE8) && v19 < *(v10 + 2) && (*(v10 + 28) & 1) != 0)
  {
    *a3 = 3;
    goto LABEL_23;
  }

  *(v10 + 124) = 1;
  if (v12)
  {
    udata_close(v12);
    if (!*(v10 + 124) || *a3 > 0)
    {
      goto LABEL_20;
    }
  }

  v20 = *(v10 + 28);
  *(v10 + 125) = v20 & 1;
  *(v10 + 126) = (v20 & 2) != 0;
  __dst[0] = 0;
  versionArray = 0;
  v21 = malloc_type_malloc(0x10uLL, 0x10040B8F86A93uLL);
  v22 = v21;
  if (v21 && (*v21 = 0, v21[1] = 0, v23 = strlen(a2), sub_195297CE0(__dst, (v23 + 1), 0)) && (!a1 || (v24 = strlen(a1), sub_195297CE0(&versionArray, (v24 + 1), 0))))
  {
    umtx_lock(&unk_1EAEC9AF0);
    v25 = uhash_get(qword_1EAEC9AD8, v33);
    if (v25)
    {
      v26 = v25;
      ++*(v25 + 120);
      udata_close(v10[14]);
      v27 = v10;
      v10 = v26;
    }

    else
    {
      v30 = __dst[0];
      __dst[0] = 0;
      *v22 = v30;
      strcpy(v30, a2);
      if (a1)
      {
        v31 = versionArray;
        versionArray = 0;
        v22[1] = v31;
        strcpy(v31, a1);
      }

      *(v10 + 30) = 1;
      uhash_put(qword_1EAEC9AD8, v22, v10, a3);
      v27 = 0;
      v22 = 0;
    }

    v28 = v10;
    umtx_unlock(&unk_1EAEC9AF0);
    v29 = 1;
    v10 = v27;
  }

  else
  {
    *a3 = 7;
    udata_close(v10[14]);
    v28 = 0;
    v29 = 0;
  }

  free(versionArray);
  free(__dst[0]);
  free(v22);
  free(v10);
  v4 = v28;
  if (!v29)
  {
    return 0;
  }

  return v4;
}

uint64_t usprep_openByType(unsigned int a1, int *a2)
{
  if (!a2 || *a2 > 0)
  {
    return 0;
  }

  if (a1 >= 0xE)
  {
    *a2 = 1;
    return 0;
  }

  return usprep_open(0, off_1E740B878[a1], a2);
}

void usprep_close(uint64_t a1)
{
  if (a1)
  {
    umtx_lock(&unk_1EAEC9AF0);
    v2 = *(a1 + 120);
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v4 < 0 == v3)
    {
      *(a1 + 120) = v4;
    }

    umtx_unlock(&unk_1EAEC9AF0);
  }
}

UChar *uprv_syntaxError(UChar *result, int a2, int a3, uint64_t a4)
{
  if (a4)
  {
    v7 = result;
    *a4 = 0;
    *(a4 + 4) = a2;
    v8 = a2 - 15;
    if (a2 < 16)
    {
      v8 = 0;
    }

    v9 = a4 + 8;
    v10 = a2 - v8;
    result = u_memcpy((a4 + 8), &result[v8], a2 - v8);
    *(v9 + 2 * v10) = 0;
    v11 = a2 + 15;
    if (a2 + 15 >= a3)
    {
      v11 = a3;
    }

    if (a2 >= a3)
    {
      v13 = v11 - a2;
    }

    else
    {
      v12 = &v7[a2];
      v13 = v11 - a2;
      result = u_memcpy((a4 + 40), v12, v13);
    }

    *(a4 + 2 * v13 + 40) = 0;
  }

  return result;
}

uint64_t usprep_prepare(uint64_t a1, UChar *s, int a3, UChar *a4, int a5, char a6, uint64_t a7, int *a8)
{
  v67 = *MEMORY[0x1E69E9840];
  if (*a8 > 0)
  {
    v8 = 0;
    goto LABEL_32;
  }

  if (!a1)
  {
    goto LABEL_31;
  }

  v15 = a3;
  if (s)
  {
    if (a3 < -1)
    {
      goto LABEL_31;
    }
  }

  else if (a3)
  {
    goto LABEL_31;
  }

  if (!a4)
  {
    if (!a5)
    {
      goto LABEL_10;
    }

LABEL_31:
    v8 = 0;
    *a8 = 1;
    goto LABEL_32;
  }

  if (a5 < 0)
  {
    goto LABEL_31;
  }

LABEL_10:
  if (a3 < 0)
  {
    v15 = u_strlen(s);
  }

  v63 = 0u;
  v66 = 0;
  v65 = 0u;
  v64 = 0u;
  v62 = &unk_1F0935D00;
  LOWORD(v63) = 2;
  Buffer = icu::UnicodeString::getBuffer(&v62, v15);
  if (!Buffer)
  {
    goto LABEL_33;
  }

  if ((v63 & 2) != 0)
  {
    v18 = 27;
  }

  else
  {
    v18 = DWORD2(v63);
  }

  v19 = sub_19529775C(a1, s, v15, Buffer, v18, a6, a7, a8);
  v20 = v19;
  if (*a8 <= 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  icu::UnicodeString::releaseBuffer(&v62, v21);
  v23 = *a8;
  if (v23 != 15)
  {
    goto LABEL_28;
  }

  v24 = icu::UnicodeString::getBuffer(&v62, v20);
  if (!v24)
  {
LABEL_33:
    v8 = 0;
    v23 = 7;
    *a8 = 7;
    goto LABEL_42;
  }

  *a8 = 0;
  if ((v63 & 2) != 0)
  {
    v25 = 27;
  }

  else
  {
    v25 = DWORD2(v63);
  }

  v26 = sub_19529775C(a1, s, v15, v24, v25, a6, a7, a8);
  if (*a8 <= 0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  icu::UnicodeString::releaseBuffer(&v62, v27);
  v23 = *a8;
LABEL_28:
  if (v23 > 0)
  {
    v8 = 0;
    goto LABEL_42;
  }

  v58 = 0u;
  v61 = 0;
  v60 = 0u;
  v59 = 0u;
  v57 = &unk_1F0935D00;
  LOWORD(v58) = 2;
  if (*(a1 + 125))
  {
    v56[0] = &unk_1F0931F08;
    v56[1] = icu::Normalizer2::getNFKCInstance(a8, v22);
    v56[2] = sub_19527C23C(a8);
    if (*a8 > 0)
    {
      icu::FilteredNormalizer2::~FilteredNormalizer2(v56);
LABEL_40:
      v8 = 0;
      goto LABEL_41;
    }

    icu::FilteredNormalizer2::normalize(v56, &v62, &v57, a8);
    icu::FilteredNormalizer2::~FilteredNormalizer2(v56);
  }

  else
  {
    icu::UnicodeString::fastCopyFrom(&v57, &v62);
  }

  v30 = *a8;
  if (v30 > 0)
  {
    goto LABEL_40;
  }

  if ((v58 & 0x11) != 0)
  {
    v31 = 0;
  }

  else if ((v58 & 2) != 0)
  {
    v31 = &v58 + 1;
  }

  else
  {
    v31 = v59;
  }

  if ((v58 & 0x8000u) == 0)
  {
    v32 = v58 >> 5;
  }

  else
  {
    v32 = DWORD1(v58);
  }

  if (v32 < 1)
  {
    goto LABEL_100;
  }

  v33 = 0;
  v34 = 23;
  v52 = -1;
  v53 = 0;
  v48 = -1;
  v49 = 0;
  v35 = 23;
  v51 = v31;
  v50 = v32;
  do
  {
    v36 = v33 + 1;
    v37 = v31[v33];
    v38 = (v37 & 0xFC00) != 0xD800 || v36 == v32;
    if (v38 || (v39 = v31[v36], (v39 & 0xFC00) != 0xDC00))
    {
      if ((v37 & 0xFC00) == 0xD800)
      {
        v42 = 320;
      }

      else
      {
        v42 = 0;
      }

      v41 = *(*(a1 + 64) + 2 * ((v37 & 0x1F) + 4 * *(*(a1 + 64) + 2 * (v42 + (v37 >> 5)))));
      v43 = -1;
      ++v33;
    }

    else
    {
      v33 += 2;
      v37 = v39 + (v37 << 10) - 56613888;
      if (v37 >= 0x110000)
      {
        v41 = *(a1 + 96);
        v43 = -2;
      }

      else
      {
        v40 = (*(a1 + 80))(*(*(a1 + 64) + 2 * (((v37 >> 10) & 0x1F) + 4 * *(*(a1 + 64) + 2 * (((v37 >> 10) + 55232) >> 5)))));
        if (v40 < 1)
        {
          v41 = *(a1 + 96);
        }

        else
        {
          v41 = *(*(a1 + 64) + 2 * ((v39 & 0x1F) + 4 * *(*(a1 + 64) + 2 * (v40 + ((v39 >> 5) & 0x1F)))));
        }

        v43 = -2;
        v31 = v51;
        v32 = v50;
      }
    }

    if (v41)
    {
      if (v41 >> 4 <= 0xFFE)
      {
        if (v41)
        {
LABEL_93:
          *a8 = 66560;
          v47 = v33 + v43;
LABEL_94:
          uprv_syntaxError(v31, v47, v32, a7);
          goto LABEL_40;
        }
      }

      else if (v41 == 65522)
      {
        goto LABEL_93;
      }
    }

    if (*(a1 + 126))
    {
      Class = ubidi_getClass(v37);
      v35 = Class;
      if (v34 == 23)
      {
        v34 = Class;
      }

      if (Class)
      {
        v45 = v53;
      }

      else
      {
        v45 = 1;
      }

      v46 = v52;
      if (!Class)
      {
        v46 = v33 - 1;
      }

      v52 = v46;
      v53 = v45;
      if (Class == 13 || Class == 1)
      {
        v48 = v33 - 1;
        v49 = 1;
      }

      v31 = v51;
      v32 = v50;
    }
  }

  while (v33 < v32);
  if (!*(a1 + 126))
  {
    goto LABEL_100;
  }

  if (v53 && v49)
  {
    *a8 = 66562;
    if (v48 <= v52)
    {
      v47 = v52;
    }

    else
    {
      v47 = v48;
    }

    goto LABEL_94;
  }

  if (v49 && (v34 != 13 && v34 != 1 || v35 != 1 && v35 != 13))
  {
    *a8 = 66562;
    v47 = v48;
    goto LABEL_94;
  }

LABEL_100:
  v55 = a4;
  v8 = icu::UnicodeString::extract(&v57, &v55, a5, a8);
  v54 = v55;
  v30 = &v54;
LABEL_41:
  icu::UnicodeString::~UnicodeString(v30, &v57);
LABEL_42:
  icu::UnicodeString::~UnicodeString(v23, &v62);
LABEL_32:
  v28 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_19529775C(uint64_t a1, UChar *a2, int a3, uint64_t a4, int a5, char a6, uint64_t a7, int *a8)
{
  if (a3 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = a6 & 1;
    v36 = v15;
    while (1)
    {
      v16 = v14 + 1;
      v17 = a2[v14];
      v18 = (v17 & 0xFC00) != 0xD800 || v16 == a3;
      if (v18 || (v19 = a2[v16], (v19 & 0xFC00) != 0xDC00))
      {
        v22 = (v17 & 0xFC00) == 0xD800 ? 320 : 0;
        LOWORD(v21) = *(*(a1 + 64) + 2 * ((v17 & 0x1F) + 4 * *(*(a1 + 64) + 2 * (v22 + (v17 >> 5)))));
        v23 = -1;
        ++v14;
      }

      else
      {
        v14 += 2;
        v17 = v19 + (v17 << 10) - 56613888;
        if (v17 >= 0x110000)
        {
          v21 = *(a1 + 96);
          v23 = -2;
        }

        else
        {
          v20 = (*(a1 + 80))(*(*(a1 + 64) + 2 * (((v17 >> 10) & 0x1F) + 4 * *(*(a1 + 64) + 2 * (((v17 >> 10) + 55232) >> 5)))), 4238353408);
          if (v20 < 1)
          {
            v21 = *(a1 + 96);
          }

          else
          {
            LOWORD(v21) = *(*(a1 + 64) + 2 * ((v19 & 0x1F) + 4 * *(*(a1 + 64) + 2 * (v20 + ((v19 >> 5) & 0x1F)))));
          }

          v23 = -2;
          v15 = v36;
        }
      }

      v24 = v21;
      if (!v21)
      {
        break;
      }

      if (v21 >> 4 >= 0xFFFu)
      {
        v25 = v21 - 65520;
LABEL_23:
        LOWORD(v26) = 0;
        v27 = 0;
        goto LABEL_24;
      }

      v26 = v21 >> 2;
      if ((v24 & 2) != 0)
      {
        LOWORD(v26) = v24 >> 2;
      }

      if ((v24 & 0xFFFC) == 0xFEFC)
      {
        v25 = 3;
        goto LABEL_23;
      }

      v27 = (v24 & 2) >> 1;
      v25 = 1;
LABEL_24:
      if (!(v25 | v15))
      {
        uprv_syntaxError(a2, v14 + v23, a3, a7);
        *a8 = 66561;
        return 0;
      }

      if (v25 != 3)
      {
        if (v25 != 1)
        {
          goto LABEL_34;
        }

        v28 = v26;
        if (!v27)
        {
          v17 -= v26;
LABEL_34:
          if (v17 >= 0x10000)
          {
            v31 = v13 + 1;
            if (v31 < a5)
            {
              *(a4 + 2 * v13) = (v17 >> 10) - 10304;
              *(a4 + 2 * v31) = v17 & 0x3FF | 0xDC00;
            }

            v13 = (v13 + 2);
          }

          else
          {
            if (v13 < a5)
            {
              *(a4 + 2 * v13) = v17;
            }

            v13 = (v13 + 1);
          }

          goto LABEL_55;
        }

        v29 = *(a1 + 16);
        if (*(a1 + 12) <= v26 && v29 > v26)
        {
          v30 = 1;
          goto LABEL_51;
        }

        v32 = *(a1 + 20);
        if (v29 <= v26 && v32 > v26)
        {
          v30 = 2;
          goto LABEL_51;
        }

        if (v32 <= v26 && *(a1 + 24) > v26)
        {
          v30 = 3;
          goto LABEL_51;
        }

        v30 = *(*(a1 + 104) + 2 * v26);
        if (v30)
        {
          ++v28;
LABEL_51:
          v13 = v13;
          v33 = 2 * v28;
          do
          {
            if (v13 < a5)
            {
              *(a4 + 2 * v13) = *(*(a1 + 104) + v33);
            }

            ++v13;
            v33 += 2;
            --v30;
          }

          while (v30);
        }
      }

LABEL_55:
      if (v14 >= a3)
      {
        goto LABEL_58;
      }
    }

    v25 = 4;
    goto LABEL_23;
  }

  v13 = 0;
LABEL_58:

  return u_terminateUChars(a4, a5, v13, a8);
}

uint64_t usprep_swap(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v42 = *MEMORY[0x1E69E9840];
  v13 = udata_swapDataHeader(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a5 && *a5 <= 0)
  {
    v21 = *(a2 + 12);
    if (__PAIR64__(*(a2 + 13), v21) != 0x5000000053 || *(a2 + 14) != 82 || *(a2 + 15) != 80 || *(a2 + 16) != 3)
    {
      v39 = *(a2 + 15);
      v40 = *(a2 + 16);
      v38 = *(a2 + 14);
      udata_printError(a1, "usprep_swap(): data format %02x.%02x.%02x.%02x (format version %02x) is not recognized as StringPrep .spp data\n", v14, v15, v16, v17, v18, v19, v21);
      result = 0;
      v24 = 16;
LABEL_15:
      *a5 = v24;
      goto LABEL_16;
    }

    v22 = v13;
    if (a4)
    {
      v23 = (a4 + v13);
    }

    else
    {
      v23 = 0;
    }

    if ((v10 & 0x80000000) == 0)
    {
      v10 = (v10 - v13);
      if (v10 <= 63)
      {
        udata_printError(a1, "usprep_swap(): too few bytes (%d after header) for StringPrep .spp data\n", v14, v15, v16, v17, v18, v19, v10);
LABEL_22:
        result = 0;
        v24 = 8;
        goto LABEL_15;
      }
    }

    v26 = 0;
    v27 = (a2 + v13);
    memset(v41, 0, sizeof(v41));
    do
    {
      *(v41 + v26 * 4) = udata_readInt32(a1, v27[v26]);
      ++v26;
    }

    while (v26 != 16);
    v34 = DWORD1(v41[0]);
    v35 = v41[0];
    v36 = SLODWORD(v41[0]) + 64;
    v37 = v36 + DWORD1(v41[0]);
    if ((v10 & 0x80000000) == 0)
    {
      if (v10 < v37)
      {
        udata_printError(a1, "usprep_swap(): too few bytes (%d after header) for all of StringPrep .spp data\n", v28, v29, v30, v31, v32, v33, v10);
        goto LABEL_22;
      }

      if (v27 != v23)
      {
        memcpy(v23, v27, v37);
      }

      (*(a1 + 56))(a1, v27, 64, v23, a5);
      utrie_swap(a1, v27 + 16, v35, (v23 + 16), a5);
      (*(a1 + 48))(a1, v27 + v36, v34, v23 + v36, a5);
    }

    result = (v37 + v22);
    goto LABEL_16;
  }

  result = 0;
LABEL_16:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

const void *sub_195297CE0(const void **a1, size_t size, int a3)
{
  if (size < 1)
  {
    return 0;
  }

  v4 = size;
  v6 = malloc_type_malloc(size, 0x100004077774924uLL);
  v7 = v6;
  if (v6)
  {
    if (a3 >= 1)
    {
      if (a3 >= v4)
      {
        v8 = v4;
      }

      else
      {
        v8 = a3;
      }

      memcpy(v6, *a1, v8);
    }

    free(*a1);
    *a1 = v7;
  }

  return v7;
}

void sub_195297D6C(int *a1)
{
  v2 = uhash_open(sub_195297DF0, sub_195297E2C, 0, a1);
  if (*a1 >= 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  qword_1EAEC9AD8 = v3;

  sub_1952376A4(1u, sub_195297E78);
}

uint64_t sub_195297DF0(const char **a1)
{
  v1 = a1[1];
  v2 = uhash_hashChars(*a1);
  return v2 + 37 * uhash_hashChars(v1);
}

uint64_t sub_195297E2C(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = uhash_compareChars(*a1, *a2);
  return uhash_compareChars(v2, v3) & v4;
}

BOOL sub_195297E78()
{
  if (qword_1EAEC9AD8)
  {
    v8 = -1;
    umtx_lock(&unk_1EAEC9AF0);
    if (qword_1EAEC9AD8)
    {
      v0 = uhash_nextElement(qword_1EAEC9AD8, &v8);
      if (v0)
      {
        v1 = v0;
        do
        {
          v3 = *(v1 + 8);
          v2 = *(v1 + 16);
          uhash_removeElement(qword_1EAEC9AD8, v1);
          udata_close(v3[14]);
          if (*v2)
          {
            free(*v2);
            *v2 = 0;
          }

          v4 = *(v2 + 8);
          if (v4)
          {
            free(v4);
            *(v2 + 8) = 0;
          }

          free(v3);
          free(v2);
          v1 = uhash_nextElement(qword_1EAEC9AD8, &v8);
        }

        while (v1);
      }
    }

    umtx_unlock(&unk_1EAEC9AF0);
    v5 = qword_1EAEC9AD8;
    if (qword_1EAEC9AD8)
    {
      v6 = uhash_count(qword_1EAEC9AD8);
      v5 = qword_1EAEC9AD8;
      if (!v6)
      {
        uhash_close(qword_1EAEC9AD8);
        v5 = 0;
        qword_1EAEC9AD8 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  atomic_store(0, &dword_1EAEC9AE0);
  return v5 == 0;
}

uint64_t sub_195297F80(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4)
{
  if (*a4 < 0x14u || *(a4 + 4) || *(a4 + 5) || *(a4 + 8) != 83 || *(a4 + 9) != 80 || *(a4 + 10) != 82 || *(a4 + 11) != 80 || *(a4 + 12) != 3 || *(a4 + 14) != 5 || *(a4 + 15) != 2)
  {
    return 0;
  }

  dword_1EAEC9AE8 = *(a4 + 4);
  return 1;
}

void *icu::UStack::UStack(icu::UStack *this, UErrorCode *a2)
{
  result = icu::UVector::UVector(this, a2);
  *result = &unk_1F0936830;
  return result;
}

{
  result = icu::UVector::UVector(this, a2);
  *result = &unk_1F0936830;
  return result;
}

void *icu::UStack::UStack(icu::UStack *this, int a2, UErrorCode *a3)
{
  result = icu::UVector::UVector(this, a2, a3);
  *result = &unk_1F0936830;
  return result;
}

{
  result = icu::UVector::UVector(this, a2, a3);
  *result = &unk_1F0936830;
  return result;
}

void *icu::UStack::UStack(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  result = icu::UVector::UVector(a1, a2, a3, a4);
  *result = &unk_1F0936830;
  return result;
}

{
  result = icu::UVector::UVector(a1, a2, a3, a4);
  *result = &unk_1F0936830;
  return result;
}

void *icu::UStack::UStack(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5)
{
  result = icu::UVector::UVector(a1, a2, a3, a4, a5);
  *result = &unk_1F0936830;
  return result;
}

{
  result = icu::UVector::UVector(a1, a2, a3, a4, a5);
  *result = &unk_1F0936830;
  return result;
}

void icu::UStack::~UStack(void **this)
{
  icu::UVector::~UVector(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::UStack::pop(icu::UStack *this)
{
  v1 = *(this + 2);
  if (v1 < 1)
  {
    return 0;
  }

  else
  {
    return icu::UVector::orphanElementAt(this, v1 - 1);
  }
}

uint64_t icu::UStack::popi(icu::UStack *this)
{
  v1 = *(this + 2);
  v2 = v1 - 1;
  if (v1 < 1)
  {
    return 0;
  }

  v4 = icu::UVector::elementAti(this, v1 - 1);
  icu::UVector::removeElementAt(this, v2);
  return v4;
}

uint64_t icu::UStack::search(icu::UStack *this, uint64_t a2)
{
  result = icu::UVector::indexOf(this, a2, 0);
  if ((result & 0x80000000) == 0)
  {
    return (*(this + 2) - result);
  }

  return result;
}

uint64_t u_getDefaultConverter(UErrorCode *a1)
{
  umtx_lock(0);
  v2 = qword_1EAEC9B48;
  if (qword_1EAEC9B48)
  {
    qword_1EAEC9B48 = 0;
    umtx_unlock(0);
  }

  else
  {
    umtx_unlock(0);
    v3 = ucnv_open(0, a1);
    v2 = v3;
    if (*a1 >= 1)
    {
      ucnv_close(v3);
      return 0;
    }
  }

  return v2;
}

void u_releaseDefaultConverter(void *a1)
{
  umtx_lock(0);
  if (qword_1EAEC9B48)
  {
    goto LABEL_5;
  }

  umtx_unlock(0);
  if (a1)
  {
    ucnv_reset(a1);
  }

  ucnv_enableCleanup();
  umtx_lock(0);
  if (qword_1EAEC9B48)
  {
LABEL_5:
    umtx_unlock(0);
    if (a1)
    {

      ucnv_close(a1);
    }
  }

  else
  {
    qword_1EAEC9B48 = a1;

    umtx_unlock(0);
  }
}

void u_flushDefaultConverter()
{
  if (qword_1EAEC9B48)
  {
    umtx_lock(0);
    v0 = qword_1EAEC9B48;
    if (qword_1EAEC9B48)
    {
      qword_1EAEC9B48 = 0;
      umtx_unlock(0);

      ucnv_close(v0);
    }

    else
    {

      umtx_unlock(0);
    }
  }
}

UChar *__cdecl u_uastrncpy(UChar *dst, const char *src, int32_t n)
{
  v14 = dst;
  v15 = src;
  v13 = 0;
  DefaultConverter = u_getDefaultConverter(&v13);
  v7 = v13 > 0 || DefaultConverter == 0;
  v8 = dst;
  if (v7)
  {
    goto LABEL_18;
  }

  v9 = DefaultConverter;
  ucnv_reset(DefaultConverter);
  v10 = 0;
  if (n && src)
  {
    v10 = 0;
    while (src[v10])
    {
      if (n == ++v10)
      {
        LODWORD(v10) = n;
        break;
      }
    }

    v10 = v10;
  }

  ucnv_toUnicode(v9, &v14, &dst[n], &v15, &src[v10], 0, 1, &v13);
  ucnv_reset(v9);
  u_releaseDefaultConverter(v9);
  if (v13 >= 1 && v13 != 15)
  {
    *dst = 0;
  }

  v8 = v14;
  if (v14 < &dst[n])
  {
LABEL_18:
    *v8 = 0;
  }

  return dst;
}

UChar *__cdecl u_uastrcpy(UChar *dst, const char *src)
{
  v9 = 0;
  DefaultConverter = u_getDefaultConverter(&v9);
  v5 = v9 > 0 || DefaultConverter == 0;
  if (v5 || (v6 = DefaultConverter, v7 = strlen(src), ucnv_toUChars(v6, dst, 0xFFFFFFF, src, v7, &v9), u_releaseDefaultConverter(v6), v9 >= 1))
  {
    *dst = 0;
  }

  return dst;
}

char *__cdecl u_austrncpy(char *dst, const UChar *src, int32_t n)
{
  v14 = dst;
  v15 = src;
  v13 = 0;
  DefaultConverter = u_getDefaultConverter(&v13);
  v7 = v13 > 0 || DefaultConverter == 0;
  v8 = dst;
  if (v7)
  {
    goto LABEL_18;
  }

  v9 = DefaultConverter;
  ucnv_reset(DefaultConverter);
  v10 = 0;
  if (n && src)
  {
    v10 = 0;
    while (src[v10])
    {
      if (n == ++v10)
      {
        LODWORD(v10) = n;
        break;
      }
    }

    v10 = v10;
  }

  ucnv_fromUnicode(v9, &v14, &dst[n], &v15, &src[v10], 0, 1, &v13);
  ucnv_reset(v9);
  u_releaseDefaultConverter(v9);
  if (v13 >= 1 && v13 != 15)
  {
    *dst = 0;
  }

  v8 = v14;
  if (v14 < &dst[n])
  {
LABEL_18:
    *v8 = 0;
  }

  return dst;
}

char *__cdecl u_austrcpy(char *dst, const UChar *src)
{
  v10 = 0;
  DefaultConverter = u_getDefaultConverter(&v10);
  v5 = v10 > 0 || DefaultConverter == 0;
  v6 = dst;
  if (!v5)
  {
    v7 = DefaultConverter;
    v8 = ucnv_fromUChars(DefaultConverter, dst, 0xFFFFFFF, src, -1, &v10);
    u_releaseDefaultConverter(v7);
    v6 = &dst[v8];
  }

  *v6 = 0;
  return dst;
}

void sub_195298780(icu::BreakIterator *a1)
{
  icu::BreakIterator::~BreakIterator(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952987D8(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    *a3 = 16;
  }

  return 0;
}

uint64_t sub_1952987F4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2;
  v4 = v2 >> 5;
  if (v3 < 0)
  {
    v4 = *(a2 + 12);
  }

  *(result + 484) = v4;
  return result;
}

int64_t sub_195298814(int64_t result, UText *ut, int *a3)
{
  if (*a3 <= 0)
  {
    v4 = result;
    result = utext_nativeLength(ut);
    if (result > 0x7FFFFFFF)
    {
      *a3 = 8;
    }

    else
    {
      *(v4 + 484) = result;
    }
  }

  return result;
}

uint64_t sub_1952988C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    *a4 = 16;
  }

  return 0;
}

void sub_1952988E4(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    *a3 = 16;
  }
}

_DWORD *sub_195298900(icu::Locale *a1, const char *a2, char a3, _DWORD *a4, void *a5, UErrorCode *a6)
{
  v17[28] = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    v6 = 0;
    goto LABEL_24;
  }

  v6 = a4;
  v9 = a3 & 0xE0;
  if ((a3 & 0xE0) != 0 && a4)
  {
    v6 = 0;
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_24;
  }

  if (a4)
  {
    goto LABEL_24;
  }

  if (v9 == 64)
  {
    if (a1)
    {
      icu::Locale::Locale(v17, a1);
    }

    else
    {
      icu::Locale::Locale(v17, a2, 0, 0, 0);
    }

    SentenceInstance = icu::BreakIterator::createSentenceInstance(v17, a6, v12, v13);
    goto LABEL_20;
  }

  if (v9 == 32)
  {
    operator new();
  }

  if ((a3 & 0xE0) == 0)
  {
    if (a1)
    {
      icu::Locale::Locale(v17, a1);
    }

    else
    {
      icu::Locale::Locale(v17, a2, 0, 0, 0);
    }

    SentenceInstance = icu::BreakIterator::createWordInstance(v17, a6, v10, v11);
LABEL_20:
    v6 = SentenceInstance;
    icu::Locale::~Locale(v17);
    goto LABEL_21;
  }

  v6 = 0;
  *a6 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_21:
  if (*a5)
  {
    (*(**a5 + 8))(*a5);
  }

  *a5 = v6;
LABEL_24:
  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t icu::CaseMap::toTitle(char *a1, uint64_t a2, _DWORD *a3, UChar *a4, uint64_t a5, unint64_t a6, uint64_t a7, icu::Edits *a8, UErrorCode *a9)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v16 = sub_195298900(0, a1, a2, a3, &v24, a9);
  if (v16)
  {
    v17 = v16;
    memset(v25, 0, sizeof(v25));
    v23 = a4;
    icu::UnicodeString::UnicodeString(v25, a5 >> 31, &v23);
    (*(*v17 + 56))(v17, v25);
    v18 = sub_19529B410(a1);
    v19 = sub_19529A898(v18, a2, v17, a6, a7, a4, a5, sub_195298FD8, a8, a9);
    icu::UnicodeString::~UnicodeString(v20, v25);
  }

  else
  {
    v19 = 0;
  }

  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t ucasemap_toTitle(uint64_t *a1, unint64_t a2, uint64_t a3, UChar *a4, uint64_t a5, UErrorCode *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    if (!*a1)
    {
      *&v17[0] = 0;
      if (!sub_195298900(0, a1 + 8, *(a1 + 11), 0, v17, a6))
      {
        if (*&v17[0])
        {
          (*(**&v17[0] + 8))();
        }

        goto LABEL_2;
      }

      *a1 = *&v17[0];
    }

    memset(v17, 0, sizeof(v17));
    v16 = a4;
    icu::UnicodeString::UnicodeString(v17, a5 >> 31, &v16);
    (*(**a1 + 56))(*a1, v17);
    v6 = sub_19529A898(*(a1 + 10), *(a1 + 11), *a1, a2, a3, a4, a5, sub_195298FD8, 0, a6);
    icu::UnicodeString::~UnicodeString(v13, v17);
    goto LABEL_7;
  }

LABEL_2:
  v6 = 0;
LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

__int32 *__cdecl u_strToWCS(__int32 *dest, int32_t destCapacity, int32_t *pDestLength, const UChar *src, int32_t srcLength, UErrorCode *pErrorCode)
{
  if (!pErrorCode || *pErrorCode > 0)
  {
    return 0;
  }

  if (src)
  {
    v6 = 1;
  }

  else
  {
    v6 = srcLength == 0;
  }

  v7 = !v6;
  if (destCapacity < 0 || srcLength < -1 || (v7 & 1) != 0 || !dest && destCapacity)
  {
    *pErrorCode = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }

  return u_strToUTF32(dest, destCapacity, pDestLength, src, srcLength, pErrorCode);
}

UChar *__cdecl u_strFromWCS(UChar *dest, int32_t destCapacity, int32_t *pDestLength, const __int32 *src, int32_t srcLength, UErrorCode *pErrorCode)
{
  if (!pErrorCode || *pErrorCode > 0)
  {
    return 0;
  }

  if (src)
  {
    v6 = 1;
  }

  else
  {
    v6 = srcLength == 0;
  }

  v7 = !v6;
  if (destCapacity < 0 || srcLength < -1 || (v7 & 1) != 0 || !dest && destCapacity)
  {
    *pErrorCode = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }

  return u_strFromUTF32(dest, destCapacity, pDestLength, src, srcLength, pErrorCode);
}

uint64_t sub_195298FD8(int a1, int a2, uint64_t *a3, uint64_t a4, int a5, uint64_t a6, int a7, icu::Edits *a8, UErrorCode *a9)
{
  if (*a9 > 0)
  {
    return 0;
  }

  v10 = a2;
  if ((~a2 & 0x600) == 0)
  {
    result = 0;
    *a9 = U_ILLEGAL_ARGUMENT_ERROR;
    return result;
  }

  v70 = 0;
  v68[0] = a6;
  v68[1] = 0;
  v69 = a7;
  if (a7 < 1)
  {
    count = 0;
LABEL_136:
    if (count <= a5)
    {
      if (a8)
      {
        icu::Edits::copyErrorTo(a8, a9);
      }

      return count;
    }

    v59 = 15;
LABEL_141:
    *a9 = v59;
    return count;
  }

  v13 = a3;
  LODWORD(v14) = 0;
  count = 0;
  v15 = 1;
  while (2)
  {
    v16 = v14;
    v17 = *v13;
    if (v15)
    {
      v18 = (*(v17 + 80))(v13);
    }

    else
    {
      v18 = (*(v17 + 104))(v13);
    }

    if (v18 >= a7)
    {
      v19 = a7;
    }

    else
    {
      v19 = v18;
    }

    if (v18 == -1)
    {
      v14 = a7;
    }

    else
    {
      v14 = v19;
    }

    if (v16 >= v14)
    {
      goto LABEL_127;
    }

    v20 = v16 + 1;
    v21 = (a6 + 2 * v16);
    v22 = *v21;
    if ((v22 & 0xFC00) != 0xD800 || v20 == v14)
    {
      if ((v10 & 0x200) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v26 = *(a6 + 2 * v20);
      v27 = (v26 & 0xFC00) == 56320;
      v28 = (v22 << 10) - 56613888 + v26;
      if (v27)
      {
        v20 = (v16 + 2);
      }

      else
      {
        v20 = v20;
      }

      if (v27)
      {
        v22 = v28;
      }

      if ((v10 & 0x200) != 0)
      {
LABEL_23:
        v24 = v16;
        v25 = v20;
        goto LABEL_55;
      }
    }

    v24 = v16;
    while (1)
    {
      v25 = v20;
      v29 = v22;
      if ((v10 & 0x400) == 0)
      {
        v30 = u_charType(v22);
        if (((1 << v30) & 0xF020E2E) != 0)
        {
          goto LABEL_45;
        }

        if (v30 != 4)
        {
          goto LABEL_37;
        }

        v29 = v22;
      }

      if (ucase_getType(v29))
      {
        goto LABEL_45;
      }

LABEL_37:
      if (v25 == v14)
      {
        break;
      }

      v20 = v25 + 1;
      v22 = *(a6 + 2 * v25);
      v31 = (v22 & 0xFC00) != 0xD800 || v20 == v14;
      v24 = v25;
      if (!v31)
      {
        v32 = *(a6 + 2 * v20);
        v24 = v25;
        if ((v32 & 0xFC00) == 0xDC00)
        {
          v20 = (v25 + 2);
          v22 = (v22 << 10) - 56613888 + v32;
          v24 = v25;
        }
      }
    }

    v25 = v14;
    v24 = v14;
LABEL_45:
    v33 = __OFSUB__(v24, v16);
    v34 = v24 - v16;
    if (!((v34 < 0) ^ v33 | (v34 == 0)))
    {
      if (v34 < 1)
      {
        goto LABEL_53;
      }

      if (a8)
      {
        icu::Edits::addUnchanged(a8, v34);
      }

      if ((v10 & 0x4000) != 0)
      {
LABEL_53:
        v35 = count;
        goto LABEL_54;
      }

      if ((count ^ 0x7FFFFFFF) < v34)
      {
        goto LABEL_140;
      }

      v35 = v34 + count;
      if ((v34 + count) <= a5)
      {
        u_memcpy((a4 + 2 * count), v21, v34);
      }

LABEL_54:
      count = v35;
      if ((v35 & 0x80000000) != 0)
      {
        goto LABEL_140;
      }
    }

LABEL_55:
    if (v25 <= v24)
    {
      goto LABEL_126;
    }

    HIDWORD(v69) = v24;
    LODWORD(v70) = v25;
    *v67 = 0;
    v36 = a1;
    v37 = ucase_toFullTitle(v22, sub_1952996B8, v68, v67, a1);
    v38 = sub_1952997B8(a4, count, a5, v37, *v67, v25 - v24, v10, a8);
    if (v38 < 0)
    {
LABEL_140:
      count = 0;
      v59 = 8;
      goto LABEL_141;
    }

    v39 = v38;
    if (a1 != 5 || (v40 = v24 + 1, v40 >= v14) || (v41 = v37 ^ (v37 >> 31), v41 != 205) && v41 != 73)
    {
      v44 = v38;
      goto LABEL_110;
    }

    v25 = v24 + 2;
    v42 = (a6 + 2 * v40);
    v43 = *v42;
    if (v41 == 73)
    {
      if (v43 == 769)
      {
        if (v25 == v14)
        {
          v44 = v38;
          v25 = v24 + 1;
          goto LABEL_110;
        }

        v43 = *(a6 + 2 * v25);
        v46 = 1;
        v25 = (v24 + 3);
        v45 = 1;
      }

      else
      {
        v46 = 0;
        v45 = 0;
      }
    }

    else
    {
      v45 = 0;
      v46 = 1;
    }

    if (v43 != 106)
    {
      if (v43 == 74)
      {
        v47 = 0;
        ++v45;
        if (!v46)
        {
          goto LABEL_77;
        }

LABEL_74:
        if (v25 != v14 && *(a6 + 2 * v25) == 769)
        {
          v25 = (v25 + 1);
          v45 += v47 ^ 1;
          v46 = v47;
          goto LABEL_77;
        }
      }

      goto LABEL_83;
    }

    v47 = 1;
    if (v46)
    {
      goto LABEL_74;
    }

LABEL_77:
    counta = v46;
    if (v25 < v14)
    {
      v48 = *(a6 + 2 * v25);
      if ((v48 & 0xFC00) == 0xD800)
      {
        v49 = v25 + 1;
        if (v49 != v14)
        {
          v50 = *(a6 + 2 * v49);
          if ((v50 & 0xFC00) == 0xDC00)
          {
            v48 = (v48 << 10) - 56613888 + v50;
          }
        }
      }

      v51 = u_charType(v48);
      v42 = (a6 + 2 * v40);
      if (((1 << v51) & 0x1C0) != 0)
      {
LABEL_83:
        v44 = v39;
        v25 = v24 + 1;
        v36 = a1;
        goto LABEL_110;
      }
    }

    if (v45)
    {
      v52 = v42;
      if (a8)
      {
        icu::Edits::addUnchanged(a8, v45);
      }

      if ((v10 & 0x4000) == 0)
      {
        if ((v39 ^ 0x7FFFFFFFu) >= v45)
        {
          if ((v45 + v39) <= a5)
          {
            v53 = (a4 + 2 * v39);
            v39 += v45;
            u_memcpy(v53, v52, v45);
          }

          else
          {
            v39 += v45;
          }
        }

        else
        {
          v39 = -1;
        }
      }
    }

    v54 = v45 + v40;
    if (v47)
    {
      v36 = a1;
      v55 = counta;
      if (v39 < a5)
      {
        *(a4 + 2 * v39) = 74;
        goto LABEL_99;
      }

      if (v39 == 0x7FFFFFFF)
      {
        v39 = -1;
      }

      else
      {
LABEL_99:
        ++v39;
      }

      if (a8)
      {
        icu::Edits::addReplace(a8, 1, 1);
      }

      ++v54;
    }

    else
    {
      v36 = a1;
      v55 = counta;
    }

    if (!v55)
    {
      goto LABEL_109;
    }

    if (a8)
    {
      icu::Edits::addUnchanged(a8, v55);
    }

    if ((v10 & 0x4000) != 0)
    {
LABEL_109:
      v44 = v39;
    }

    else if ((v39 ^ 0x7FFFFFFFu) >= v55)
    {
      v44 = v39 + v55;
      if ((v39 + v55) <= a5)
      {
        u_memcpy((a4 + 2 * v39), (a6 + 2 * v54), v55);
      }
    }

    else
    {
      v44 = -1;
    }

LABEL_110:
    v56 = v14 - v25;
    if (v14 <= v25)
    {
      goto LABEL_125;
    }

    if ((v10 & 0x100) != 0)
    {
      if (v56 < 1)
      {
        goto LABEL_124;
      }

      if (a8)
      {
        icu::Edits::addUnchanged(a8, v14 - v25);
      }

      if ((v10 & 0x4000) != 0)
      {
LABEL_124:
        if (v44 < 0)
        {
          goto LABEL_140;
        }
      }

      else
      {
        if ((v44 ^ 0x7FFFFFFFu) < v56)
        {
          goto LABEL_140;
        }

        v58 = v44;
        v44 += v56;
        if (v44 <= a5)
        {
          u_memcpy((a4 + 2 * v58), (a6 + 2 * v25), v14 - v25);
        }
      }

LABEL_125:
      count = v44;
LABEL_126:
      v13 = a3;
      goto LABEL_127;
    }

    if (a4)
    {
      v57 = a4 + 2 * v44;
    }

    else
    {
      v57 = 0;
    }

    count = sub_195299954(v36, v10, v57, a5 - v44, a6, v68, v25, v14, a8, a9) + v44;
    if (*a9 == U_BUFFER_OVERFLOW_ERROR)
    {
      *a9 = U_ZERO_ERROR;
      goto LABEL_126;
    }

    v13 = a3;
    if (*a9 <= 0)
    {
LABEL_127:
      v15 = 0;
      if (v14 >= a7)
      {
        if (*a9 > 0)
        {
          return count;
        }

        goto LABEL_136;
      }

      continue;
    }

    return count;
  }
}

uint64_t sub_1952996B8(uint64_t *a1, int a2)
{
  if (a2 < 0)
  {
    v2 = *(a1 + 5);
    *(a1 + 3) = v2;
    *(a1 + 28) = a2;
  }

  else
  {
    if (a2)
    {
      v2 = *(a1 + 6);
      *(a1 + 3) = v2;
      *(a1 + 28) = a2;
      goto LABEL_14;
    }

    v2 = *(a1 + 3);
    if ((*(a1 + 28) & 0x80000000) == 0)
    {
LABEL_14:
      v10 = *(a1 + 4);
      if (v2 < v10)
      {
        v11 = *a1;
        v12 = v2 + 1;
        *(a1 + 3) = v12;
        v6 = *(v11 + 2 * v2);
        if ((v6 & 0xFC00) == 0xD800 && v12 != v10)
        {
          v14 = *(v11 + 2 * v12);
          if ((v14 & 0xFC00) == 0xDC00)
          {
            *(a1 + 3) = v2 + 2;
            v9 = v14 + (v6 << 10);
            return (v9 - 56613888);
          }
        }

        return v6;
      }

      return 0xFFFFFFFFLL;
    }
  }

  v3 = *(a1 + 2);
  if (v3 >= v2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a1;
  v5 = v2 - 1;
  *(a1 + 3) = v5;
  v6 = *(v4 + 2 * v5);
  if (v5 > v3 && (v6 & 0xFC00) == 56320)
  {
    v8 = *(v4 + 2 * v2 - 4);
    if ((v8 & 0xFC00) == 0xD800)
    {
      *(a1 + 3) = v2 - 2;
      v9 = v6 + (v8 << 10);
      return (v9 - 56613888);
    }
  }

  return v6;
}

uint64_t sub_1952997B8(uint64_t a1, uint64_t a2, int a3, unsigned int a4, __int16 *a5, unsigned int a6, __int16 a7, icu::Edits *this)
{
  v10 = a4;
  if ((a4 & 0x80000000) != 0)
  {
    if (this)
    {
      icu::Edits::addUnchanged(this, a6);
    }

    if ((a7 & 0x4000) != 0)
    {
      return a2;
    }

    v14 = ~v10;
    if (a2 < a3 && v10 >= 0xFFFF0000)
    {
      goto LABEL_25;
    }

    v10 = a6;
    goto LABEL_20;
  }

  if (a4 < 0x20)
  {
    v14 = -1;
    if (!this)
    {
      goto LABEL_20;
    }

LABEL_19:
    icu::Edits::addReplace(this, a6, v10);
    goto LABEL_20;
  }

  if (a2 >= a3 || HIWORD(a4))
  {
    v14 = a4;
    if (a4 < 0x10000)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    if (this)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (v10 > (a2 ^ 0x7FFFFFFF))
    {
      return 0xFFFFFFFFLL;
    }

    if (a2 >= a3)
    {
      return (v10 + a2);
    }

    if ((v14 & 0x80000000) == 0)
    {
      if (!HIWORD(v14))
      {
LABEL_25:
        v16 = (a2 + 1);
        *(a1 + 2 * a2) = v14;
        return v16;
      }

      if (HIWORD(v14) <= 0x10u)
      {
        v20 = a2 + 1;
        if (v20 < a3)
        {
          *(a1 + 2 * a2) = (v14 >> 10) - 10304;
          v16 = (a2 + 2);
          *(a1 + 2 * v20) = v14 & 0x3FF | 0xDC00;
          return v16;
        }
      }

      return (v10 + a2);
    }

    v16 = (v10 + a2);
    if (v16 > a3)
    {
      return v16;
    }

    if (v10 >= 1)
    {
      v17 = (a1 + 2 * a2);
      v18 = v10 + 1;
      do
      {
        v19 = *a5++;
        *v17++ = v19;
        --v18;
      }

      while (v18 > 1);
      return v16;
    }

    return a2;
  }

  v16 = (a2 + 1);
  *(a1 + 2 * a2) = a4;
  if (this)
  {
    icu::Edits::addReplace(this, a6, 1);
  }

  return v16;
}

uint64_t sub_195299954(int a1, __int16 a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, icu::Edits *a9, _DWORD *a10)
{
  if (a1 == 1)
  {
    goto LABEL_4;
  }

  if (a1 < 0)
  {
    if ((a2 & 7) == 0)
    {
      goto LABEL_4;
    }
  }

  else if ((a1 & 0x7FFFFFFE) != 2)
  {
LABEL_4:
    v13 = &unk_19544D724;
    goto LABEL_7;
  }

  v13 = &unk_19544D8A4;
LABEL_7:
  v37 = v13;
  v36 = sub_19522DE48();
  v14 = 0;
  LODWORD(v15) = a7;
  while (2)
  {
    if (v15 >= a8)
    {
      v23 = 0;
      goto LABEL_43;
    }

    while (1)
    {
      v16 = *(a5 + 2 * v15);
      if (v16 <= 0x17E)
      {
        v17 = v37[v16];
        if (v17 == -128)
        {
          break;
        }

        v15 = (v15 + 1);
        v18 = v15;
        if (v37[v16])
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      if (v16 >> 11 > 0x1A)
      {
        break;
      }

      v19 = *(*v36 + 4 * *(*v36 + ((v16 >> 4) & 0xFFE)) + (v16 & 0x1F));
      if ((v19 & 8) != 0)
      {
        break;
      }

      v15 = (v15 + 1);
      if (v19 >= 0x80 && (v19 & 2) != 0)
      {
        v17 = v19 >> 7;
        v18 = v15;
LABEL_21:
        v21 = v18 + ~a7;
        if (v21 < 1)
        {
          goto LABEL_28;
        }

        if (a9)
        {
          icu::Edits::addUnchanged(a9, v18 + ~a7);
        }

        if ((a2 & 0x4000) != 0)
        {
LABEL_28:
          v22 = v14;
        }

        else
        {
          if ((v14 ^ 0x7FFFFFFF) < v21)
          {
            goto LABEL_72;
          }

          v22 = v21 + v14;
          if (v21 + v14 <= a4)
          {
            u_memcpy((a3 + 2 * v14), (a5 + 2 * a7), v21);
          }
        }

        if (v22 < 0)
        {
          goto LABEL_72;
        }

        LOWORD(v16) = v17 + v16;
        if (v22 < a4)
        {
          *(a3 + 2 * v22) = v16;
          goto LABEL_35;
        }

        if (v22 == 0x7FFFFFFF)
        {
          v14 = 0xFFFFFFFFLL;
          if (!a9)
          {
LABEL_37:
            LODWORD(v15) = v18;
            if ((v14 & 0x80000000) != 0)
            {
              goto LABEL_72;
            }

            goto LABEL_38;
          }
        }

        else
        {
LABEL_35:
          v14 = (v22 + 1);
          if (!a9)
          {
            goto LABEL_37;
          }
        }

        icu::Edits::addReplace(a9, 1, 1);
        goto LABEL_37;
      }

LABEL_20:
      v18 = a7;
LABEL_38:
      a7 = v18;
      if (v15 >= a8)
      {
        goto LABEL_42;
      }
    }

    v18 = a7;
LABEL_42:
    v23 = v16;
    a7 = v18;
LABEL_43:
    v24 = v15;
    if (v15 < a8)
    {
      v15 = (v15 + 1);
      if ((v23 & 0xFC00) == 0xD800 && v15 < a8)
      {
        v25 = *(a5 + 2 * v15);
        if ((v25 & 0xFC00) == 0xDC00)
        {
          v23 = v25 + (v23 << 10) - 56613888;
          v15 = (v24 + 2);
        }
      }

      *v40 = 0;
      if (a1 < 0)
      {
        v26 = ucase_toFullFolding(v23, v40, a2);
      }

      else
      {
        *(a6 + 20) = v24;
        *(a6 + 24) = v15;
        v26 = ucase_toFullLower(v23, sub_1952996B8, a6, v40, a1);
      }

      v27 = v26;
      if ((v26 & 0x80000000) == 0)
      {
        v28 = v24 - a7;
        if (v24 - a7 < 1)
        {
          goto LABEL_59;
        }

        if (a9)
        {
          icu::Edits::addUnchanged(a9, v24 - a7);
        }

        if ((a2 & 0x4000) != 0)
        {
LABEL_59:
          v29 = v14;
          goto LABEL_60;
        }

        if ((v14 ^ 0x7FFFFFFF) < v28)
        {
          goto LABEL_72;
        }

        v29 = v14 + v28;
        if (v29 <= a4)
        {
          u_memcpy((a3 + 2 * v14), (a5 + 2 * a7), v24 - a7);
        }

LABEL_60:
        if ((v29 & 0x80000000) != 0)
        {
          goto LABEL_72;
        }

        v14 = sub_1952997B8(a3, v29, a4, v27, *v40, v15 - v24, a2, a9);
        a7 = v15;
        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_72;
        }
      }

      continue;
    }

    break;
  }

  v30 = v15 - a7;
  if (v15 - a7 < 1)
  {
    goto LABEL_70;
  }

  if (a9)
  {
    icu::Edits::addUnchanged(a9, v15 - a7);
  }

  if ((a2 & 0x4000) != 0)
  {
LABEL_70:
    v31 = v14;
  }

  else
  {
    if ((v14 ^ 0x7FFFFFFF) < v30)
    {
      goto LABEL_72;
    }

    v31 = v14 + v30;
    if (v31 <= a4)
    {
      u_memcpy((a3 + 2 * v14), (a5 + 2 * a7), v15 - a7);
    }
  }

  if ((v31 & 0x80000000) != 0)
  {
LABEL_72:
    v31 = 0;
    *a10 = 8;
  }

  return v31;
}

uint64_t sub_195299D08(unsigned int a1)
{
  if (a1 - 8487 < 0xFFFFE249 || (a1 - 1024) >> 8 < 0x1B)
  {
    return 0;
  }

  if (a1 <= 0x3FF)
  {
    return word_1954813F0[a1 - 880];
  }

  if (!(a1 >> 13))
  {
    return word_195481510[a1 - 7936];
  }

  if (a1 == 8486)
  {
    return 5033;
  }

  return 0;
}

uint64_t sub_195299D80(int a1)
{
  result = 0x4000;
  if (a1 <= 771)
  {
    if ((a1 - 768) >= 4)
    {
      return 0;
    }
  }

  else
  {
    v3 = (a1 - 772);
    if (v3 > 0x3F)
    {
LABEL_10:
      if (a1 == 836)
      {
        return 81920;
      }

      if (a1 == 837)
      {
        return 0x2000;
      }

      return 0;
    }

    if (((1 << (a1 - 4)) & 0x8000000000018005) != 0)
    {
      return 0x20000;
    }

    if (((1 << (a1 - 4)) & 0x4000000000002000) == 0)
    {
      if (v3 == 4)
      {
        return 0x10000;
      }

      goto LABEL_10;
    }
  }

  return result;
}

BOOL sub_195299E20(uint64_t a1, int a2, int a3)
{
  while (a2 < a3)
  {
    v5 = a2 + 1;
    v6 = *(a1 + 2 * a2);
    if ((v6 & 0xFC00) == 0xD800 && v5 != a3)
    {
      v8 = *(a1 + 2 * v5);
      v9 = (v8 & 0xFC00) == 56320;
      v10 = v8 + (v6 << 10) - 56613888;
      if (v9)
      {
        LODWORD(v5) = a2 + 2;
      }

      if (v9)
      {
        v6 = v10;
      }
    }

    TypeOrIgnorable = ucase_getTypeOrIgnorable(v6);
    a2 = v5;
    if ((TypeOrIgnorable & 4) == 0)
    {
      return TypeOrIgnorable != 0;
    }
  }

  return 0;
}

uint64_t sub_195299EC4(__int16 a1, uint64_t a2, int a3, uint64_t a4, int a5, icu::Edits *a6, _DWORD *a7)
{
  if (a5 >= 1)
  {
    v7 = a5;
    v10 = 0;
    v11 = 0;
    LODWORD(v12) = 0;
    v14 = (a1 & 0x4000) == 0 && a6 == 0;
    v59 = v14;
    v65 = a5;
    while (1)
    {
      v15 = v12;
      v16 = v12 + 1;
      v17 = *(a4 + 2 * v12);
      v18 = (v17 & 0xFC00) != 0xD800 || v16 == v7;
      LODWORD(v12) = v12 + 1;
      if (!v18)
      {
        v19 = *(a4 + 2 * v16);
        v20 = (v19 & 0xFC00) == 56320;
        v21 = v19 + (v17 << 10) - 56613888;
        LODWORD(v12) = v20 ? v15 + 2 : v16;
        if (v20)
        {
          v17 = v21;
        }
      }

      v64 = v15;
      TypeOrIgnorable = ucase_getTypeOrIgnorable(v17);
      v23 = v11;
      v24 = v11 & 1;
      v25 = TypeOrIgnorable != 0;
      if ((TypeOrIgnorable & 4) != 0)
      {
        v25 = v11 & 1;
      }

      v63 = v25;
      v26 = sub_195299D08(v17);
      if (!v26)
      {
        *v66 = 0;
        v34 = ucase_toFullUpper(v17, 0, 0, v66, 4);
        result = sub_1952997B8(a2, v10, a3, v34, *v66, v12 - v64, a1, a6);
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_116;
        }

        v11 = v63;
        goto LABEL_109;
      }

      v27 = v26;
      v28 = v26 & 0x3FF;
      if ((v26 & 0x1000) != 0 && (v23 & 6) != 0 && (v28 == 933 || v28 == 921))
      {
        if ((v23 & 4) != 0)
        {
          v29 = 0x8000;
        }

        else
        {
          v29 = 0x10000;
        }

        v27 = v26 | v29;
      }

      v30 = (v27 >> 13) & 1;
      if (v12 >= v7)
      {
        v32 = v27;
      }

      else
      {
        v31 = v26 & 0x3FF;
        v12 = v12;
        v32 = v27;
        while (1)
        {
          v33 = sub_195299D80(*(a4 + 2 * v12));
          if (!v33)
          {
            break;
          }

          v32 |= v33;
          v30 += (v33 >> 13) & 1;
          if (v65 == ++v12)
          {
            LODWORD(v12) = v65;
            break;
          }
        }

        v28 = v31;
      }

      if ((v27 & 0x4000) != 0)
      {
        v36 = 4;
      }

      else
      {
        v36 = 2;
      }

      if ((v32 & 0xD000) == 0x5000)
      {
        v37 = v36;
      }

      else
      {
        v37 = 0;
      }

      if (v28 != 919 || (v32 & 0x4000) == 0 || v30 || v24 || (v38 = v28, v39 = v37, v40 = sub_195299E20(a4, v12, a5), v37 = v39, v28 = v38, v40))
      {
        if ((v32 & 0x8000) != 0)
        {
          v43 = v64;
          v44 = v63;
          if (v28 == 933)
          {
            v32 = 0;
            v41 = 0;
            LOBYTE(v42) = 1;
            v28 = 939;
          }

          else if (v28 == 921)
          {
            v32 = 0;
            v41 = 0;
            LOBYTE(v42) = 1;
            v28 = 938;
          }

          else
          {
            v41 = 0;
            LOBYTE(v42) = 1;
          }

          goto LABEL_58;
        }

        v41 = 0;
        LOBYTE(v42) = 1;
        v43 = v64;
      }

      else
      {
        v42 = (v27 & 0x4000) >> 14;
        if ((v27 & 0x4000) != 0)
        {
          v28 = 905;
        }

        else
        {
          v28 = 919;
        }

        v43 = v64;
        v41 = (v27 & 0x4000) == 0;
      }

      v44 = v63;
LABEL_58:
      v11 = v37 | v44;
      if (!v59)
      {
        v46 = v28 != *(a4 + 2 * v43) || v30 > 0;
        if ((v32 & 0x18000) != 0)
        {
          v47 = v16 >= v12 || *(a4 + 2 * v16) != 776;
          v46 |= v47;
          LODWORD(v16) = v43 + 2;
        }

        if ((v42 & 1) == 0)
        {
          v48 = v16 >= v12 || *(a4 + 2 * v16) != 769;
          v46 |= v48;
          LODWORD(v16) = v16 + 1;
        }

        v49 = v12 - v43;
        v50 = v16 - v43 + v30;
        if (v12 - v43 == v50)
        {
          v51 = v46;
        }

        else
        {
          v51 = 1;
        }

        if (v51)
        {
          if (a6)
          {
            v52 = v28;
            icu::Edits::addReplace(a6, v49, v50);
            LOWORD(v28) = v52;
          }
        }

        else
        {
          if (a6)
          {
            v53 = v28;
            icu::Edits::addUnchanged(a6, v49);
            LOWORD(v28) = v53;
          }

          if ((a1 & 0x4000) != 0)
          {
            result = v10;
            goto LABEL_109;
          }
        }
      }

      if (v10 >= a3)
      {
        if (v10 == 0x7FFFFFFF)
        {
          goto LABEL_116;
        }
      }

      else
      {
        *(a2 + 2 * v10) = v28;
      }

      result = (v10 + 1);
      if (v10 >= -1 && (v32 & 0x18000) != 0)
      {
        if (result >= a3)
        {
          if (v10 == 2147483646)
          {
            goto LABEL_116;
          }
        }

        else
        {
          *(a2 + 2 * result) = 776;
        }

        result = (v10 + 2);
      }

      v54 = !v41;
      if (result < 0)
      {
        v54 = 1;
      }

      if ((v54 & 1) == 0)
      {
        if (result >= a3)
        {
          if (result == 0x7FFFFFFF)
          {
            goto LABEL_116;
          }
        }

        else
        {
          *(a2 + 2 * result) = 769;
        }

        result = (result + 1);
      }

      if ((result & 0x80000000) != 0 || v30 < 1)
      {
        if ((result & 0x80000000) != 0)
        {
LABEL_116:
          result = 0;
          *a7 = 8;
          return result;
        }
      }

      else
      {
        v55 = (a2 + 2 * result);
        v56 = v30 + 1;
        do
        {
          if (result >= a3)
          {
            if (result == 0x7FFFFFFF)
            {
              goto LABEL_116;
            }
          }

          else
          {
            *v55 = 921;
          }

          result = (result + 1);
          ++v55;
          --v56;
        }

        while (v56 > 1);
      }

LABEL_109:
      v10 = result;
      v7 = a5;
      if (v12 >= a5)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_19529A36C(int a1, __int16 a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7, icu::Edits *a8, UErrorCode *a9)
{
  v14[3] = 0;
  v14[0] = a6;
  v14[1] = 0;
  v14[2] = a7;
  v11 = sub_195299954(a1, a2, a4, a5, a6, v14, 0, a7, a8, a9);
  v12 = v11;
  if (*a9 <= 0)
  {
    if (v11 <= a5)
    {
      if (a8)
      {
        icu::Edits::copyErrorTo(a8, a9);
      }
    }

    else
    {
      *a9 = U_BUFFER_OVERFLOW_ERROR;
    }
  }

  return v12;
}

uint64_t sub_19529A40C(int a1, __int16 a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, icu::Edits *a8, UErrorCode *a9)
{
  v12 = a5;
  v13 = a9;
  if (a1 == 4)
  {
    v14 = sub_195299EC4(a2, a4, a5, a6, a7, a8, a9);
    goto LABEL_56;
  }

  v41 = 0;
  v39[0] = a6;
  v39[1] = 0;
  v40 = a7;
  v15 = &unk_19544DA24;
  if (a1 == 2)
  {
    v15 = &unk_19544DBA4;
  }

  v36 = v15;
  v35 = sub_19522DE48();
  v16 = 0;
  v17 = 0;
  v18 = 0;
  while (1)
  {
    if (v18 < a7)
    {
      while (1)
      {
        v19 = *(a6 + 2 * v18);
        if (v19 > 0x17E)
        {
          break;
        }

        v20 = v36[v19];
        if (v20 == -128)
        {
          goto LABEL_39;
        }

        ++v18;
        if (v36[v19])
        {
          goto LABEL_19;
        }

LABEL_36:
        if (v18 >= a7)
        {
          LODWORD(v19) = v19;
          goto LABEL_39;
        }
      }

      if (v19 >> 11 > 0x1A)
      {
        goto LABEL_39;
      }

      v21 = *(*v35 + 4 * *(*v35 + ((v19 >> 4) & 0xFFE)) + (v19 & 0x1F));
      if ((v21 & 8) != 0)
      {
        goto LABEL_39;
      }

      ++v18;
      if (v21 < 0x80 || (v21 & 3) != 1)
      {
        goto LABEL_36;
      }

      v20 = v21 >> 7;
LABEL_19:
      v23 = v18 + ~v17;
      if (v23 < 1)
      {
        goto LABEL_26;
      }

      if (a8)
      {
        icu::Edits::addUnchanged(a8, v18 + ~v17);
      }

      if ((a2 & 0x4000) != 0)
      {
LABEL_26:
        v24 = v16;
      }

      else
      {
        if ((v16 ^ 0x7FFFFFFF) < v23)
        {
          goto LABEL_55;
        }

        v24 = v23 + v16;
        if (v23 + v16 <= a5)
        {
          u_memcpy((a4 + 2 * v16), (a6 + 2 * v17), v23);
        }
      }

      if (v24 < 0)
      {
        goto LABEL_55;
      }

      LOWORD(v19) = v20 + v19;
      if (v24 >= a5)
      {
        if (v24 == 0x7FFFFFFF)
        {
          v16 = 0xFFFFFFFFLL;
          if (!a8)
          {
LABEL_35:
            v17 = v18;
            if ((v16 & 0x80000000) != 0)
            {
              goto LABEL_55;
            }

            goto LABEL_36;
          }

LABEL_34:
          icu::Edits::addReplace(a8, 1, 1);
          goto LABEL_35;
        }
      }

      else
      {
        *(a4 + 2 * v24) = v19;
      }

      v16 = (v24 + 1);
      if (!a8)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    LODWORD(v19) = 0;
LABEL_39:
    v25 = v18;
    if (v18 >= a7)
    {
      break;
    }

    ++v18;
    HIDWORD(v40) = v25;
    if ((v19 & 0xFC00) == 0xD800 && v18 < a7)
    {
      v26 = *(a6 + 2 * v18);
      if ((v26 & 0xFC00) == 0xDC00)
      {
        LODWORD(v19) = v26 + (v19 << 10) - 56613888;
        v18 = v25 + 2;
      }
    }

    LODWORD(v41) = v18;
    *v42 = 0;
    v27 = ucase_toFullUpper(v19, sub_1952996B8, v39, v42, a1);
    if ((v27 & 0x80000000) == 0)
    {
      v28 = v27;
      v29 = v25 - v17;
      if (v25 - v17 < 1)
      {
        goto LABEL_52;
      }

      if (a8)
      {
        icu::Edits::addUnchanged(a8, v25 - v17);
      }

      if ((a2 & 0x4000) != 0)
      {
LABEL_52:
        v30 = v16;
      }

      else
      {
        if ((v16 ^ 0x7FFFFFFF) < v29)
        {
          goto LABEL_55;
        }

        v30 = v29 + v16;
        if (v30 <= a5)
        {
          u_memcpy((a4 + 2 * v16), (a6 + 2 * v17), v25 - v17);
        }
      }

      if ((v30 & 0x80000000) != 0 || (v16 = sub_1952997B8(a4, v30, a5, v28, *v42, v18 - v25, a2, a8), v17 = v18, (v16 & 0x80000000) != 0))
      {
LABEL_55:
        v14 = 0;
        v13 = a9;
        *a9 = U_INDEX_OUTOFBOUNDS_ERROR;
        v12 = a5;
        goto LABEL_56;
      }
    }
  }

  v32 = v18 - v17;
  if (v18 - v17 < 1)
  {
    v14 = v16;
    v13 = a9;
    v12 = a5;
    goto LABEL_71;
  }

  v13 = a9;
  v12 = a5;
  if (a8)
  {
    icu::Edits::addUnchanged(a8, v32);
  }

  if ((a2 & 0x4000) != 0)
  {
    v14 = v16;
    goto LABEL_71;
  }

  if ((v16 ^ 0x7FFFFFFF) < v32)
  {
    goto LABEL_72;
  }

  v14 = v32 + v16;
  if (v14 <= a5)
  {
    u_memcpy((a4 + 2 * v16), (a6 + 2 * v17), v32);
  }

LABEL_71:
  if ((v14 & 0x80000000) != 0)
  {
LABEL_72:
    v14 = 0;
    *v13 = U_INDEX_OUTOFBOUNDS_ERROR;
  }

LABEL_56:
  if (*v13 <= 0)
  {
    if (v14 <= v12)
    {
      if (a8)
      {
        icu::Edits::copyErrorTo(a8, v13);
      }
    }

    else
    {
      *v13 = U_BUFFER_OVERFLOW_ERROR;
    }
  }

  return v14;
}

uint64_t sub_19529A804(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, icu::Edits *a8, UErrorCode *a9)
{
  v11 = sub_195299954(-1, a2, a4, a5, a6, 0, 0, a7, a8, a9);
  v12 = v11;
  if (*a9 <= 0)
  {
    if (v11 <= a5)
    {
      if (a8)
      {
        icu::Edits::copyErrorTo(a8, a9);
      }
    }

    else
    {
      *a9 = U_BUFFER_OVERFLOW_ERROR;
    }
  }

  return v12;
}

uint64_t sub_19529A898(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, UChar *s, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, UChar *, uint64_t, icu::Edits *, int *), icu::Edits *a9, int *a10)
{
  if (*a10 > 0)
  {
    return 0;
  }

  if ((a5 & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  if (a5 && a4 == 0)
  {
    goto LABEL_16;
  }

  if (!s)
  {
    goto LABEL_16;
  }

  v14 = a7;
  if (a7 <= -2)
  {
    goto LABEL_16;
  }

  if (a7 == -1)
  {
    v14 = u_strlen(s);
  }

  if (a4 && (s >= a4 && a4 + 2 * a5 > s || a4 >= s && &s[v14] > a4))
  {
LABEL_16:
    *a10 = 1;
    return 0;
  }

  if ((a2 & 0x2000) == 0 && a9)
  {
    icu::Edits::reset(a9);
  }

  v20 = a8(a1, a2, a3, a4, a5, s, v14, a9, a10);

  return u_terminateUChars(a4, a5, v20, a10);
}

UChar *sub_19529A9F0(uint64_t a1, uint64_t a2, uint64_t a3, UChar *a4, uint64_t a5, UChar *s, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, UChar *, uint64_t, UChar *, uint64_t, void, int *), int *a9)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a9 <= 0)
  {
    if ((a5 & 0x80000000) != 0 || (a5 ? (v12 = a4 == 0) : (v12 = 0), v12 || !s || (v14 = a7, a7 <= -2)))
    {
      result = 0;
      v20 = 1;
    }

    else
    {
      if (a7 == -1)
      {
        v14 = u_strlen(s);
      }

      bzero(v24, 0x258uLL);
      if (!a4 || (s < a4 || &a4[a5] <= s) && (a4 < s || &s[v14] <= a4))
      {
        v21 = a8(a1, a2, a3, a4, a5, s, v14, 0, a9);
LABEL_30:
        result = u_terminateUChars(a4, a5, v21, a9);
        goto LABEL_31;
      }

      if (a5 < 0x12D)
      {
        v19 = v24;
        goto LABEL_23;
      }

      result = malloc_type_malloc((2 * a5), 0x1000040BDFB0063uLL);
      v19 = result;
      if (result)
      {
LABEL_23:
        v22 = a8(a1, a2, a3, v19, a5, s, v14, 0, a9);
        v21 = v22;
        if (v19 != a4)
        {
          if (*a9 <= 0 && v22 >= 1 && v22 <= a5)
          {
            u_memmove(a4, v19, v22);
          }

          if (v19 != v24)
          {
            free(v19);
          }
        }

        goto LABEL_30;
      }

      v20 = 7;
    }

    *a9 = v20;
    goto LABEL_31;
  }

  result = 0;
LABEL_31:
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t u_caseInsensitivePrefixMatch_0(UChar *a1, int a2, UChar *a3, int a4, __int16 a5, _DWORD *a6, _DWORD *a7, int *a8)
{
  v67[5] = *MEMORY[0x1E69E9840];
  src = 0;
  memset(v67, 0, 32);
  v66 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v62 = 0u;
  v63 = 0u;
  *v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  *dest = 0u;
  v57 = 0u;
  if (*a8 > 0)
  {
    result = 0;
    goto LABEL_129;
  }

  if (a6)
  {
    *a6 = 0;
    *a7 = 0;
  }

  v45 = 0;
  v46 = a1;
  v52 = 0;
  v9 = 0;
  v10 = 0;
  if (a2 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = &a1[a2];
  }

  if (a4 == -1)
  {
    v12 = 0;
  }

  else
  {
    v12 = &a3[a4];
  }

  v13 = a3;
  v14 = a1;
  v15 = a1;
  v16 = a3;
  v51 = a3;
  v53 = a5;
LABEL_12:
  v17 = -1;
LABEL_17:
  while (1)
  {
    if (v14 != v11)
    {
      v19 = *v14;
      v20 = (a5 & 0x1000) != 0 || v11 == 0;
      v21 = !v20;
      if (*v14 || v21)
      {
        break;
      }
    }

    if (!v9)
    {
      v19 = -1;
      goto LABEL_28;
    }

    v18 = &v67[3 * v9];
    do
    {
      v15 = *(v18 - 5);
      --v9;
      v18 -= 3;
    }

    while (!v15);
    v14 = *(v18 - 1);
    v11 = *v18;
  }

  ++v14;
  if ((v17 & 0x80000000) != 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
LABEL_47:
    if (v19 == v17)
    {
      if ((v19 & 0x80000000) != 0)
      {
        result = 0;
        goto LABEL_126;
      }

      v35 = v14;
      if (v9)
      {
        v17 = -1;
        v35 = v45;
        if (v14 != v11)
        {
          goto LABEL_17;
        }
      }

      v17 = -1;
      if (!v35)
      {
        goto LABEL_17;
      }

      v39 = v52;
      if (v13 != v12)
      {
        v39 = 0;
      }

      if (!v10)
      {
        v39 = v13;
      }

      v40 = v46;
      if (v39)
      {
        v40 = v35;
      }

      v46 = v40;
      v41 = v51;
      if (v39)
      {
        v41 = v39;
      }

      v51 = v41;
      goto LABEL_12;
    }

    if ((v19 & 0x80000000) != 0)
    {
      result = 0xFFFFFFFFLL;
LABEL_126:
      v43 = a6;
      v42 = a7;
      goto LABEL_127;
    }

    if ((v17 & 0x80000000) != 0)
    {
      result = 1;
      goto LABEL_126;
    }

    v54 = v11;
    v25 = v19;
    if ((v19 & 0x7FFFF800) == 0xD800)
    {
      if ((v19 & 0x400) != 0)
      {
        v25 = v19;
        if (v15 <= v14 - 2)
        {
          v27 = *(v14 - 2);
          v25 = v19;
          if ((v27 & 0xFC00) == 0xD800)
          {
            v25 = v19 - 56613888 + (v27 << 10);
          }
        }
      }

      else
      {
        v25 = v19;
        if (v14 != v11)
        {
          v26 = *v14;
          v25 = v19;
          if ((v26 & 0xFC00) == 0xDC00)
          {
            v25 = (v19 << 10) - 56613888 + v26;
          }
        }
      }
    }

    v28 = v17;
    if ((v17 & 0x7FFFF800) == 0xD800)
    {
      if ((v17 & 0x400) != 0)
      {
        v28 = v17;
        if (v16 <= v13 - 2)
        {
          v30 = *(v13 - 2);
          v28 = v17;
          if ((v30 & 0xFC00) == 0xD800)
          {
            v28 = v17 - 56613888 + (v30 << 10);
          }
        }
      }

      else
      {
        v28 = v17;
        if (v13 != v12)
        {
          v29 = *v13;
          v28 = v17;
          if ((v29 & 0xFC00) == 0xDC00)
          {
            v28 = (v17 << 10) - 56613888 + v29;
          }
        }
      }
    }

    if (!v9)
    {
      v31 = ucase_toFullFolding(v25, &src, a5);
      a5 = v53;
      if ((v31 & 0x80000000) == 0)
      {
        if ((v19 & 0x7FFFF800) == 0xD800)
        {
          v36 = v54;
          if ((v19 & 0x400) != 0)
          {
            v17 = *(v13 - 2);
            --v13;
            --v51;
          }

          else
          {
            ++v14;
          }
        }

        else
        {
          v36 = v54;
        }

        *&v66 = v15;
        *(&v66 + 1) = v14;
        v67[0] = v36;
        v45 = v14;
        if (v31 > 0x1F)
        {
          if (HIWORD(v31))
          {
            v60[0] = (v31 >> 10) - 10304;
            v60[1] = v31 & 0x3FF | 0xDC00;
            v38 = 2;
          }

          else
          {
            v60[0] = v31;
            v38 = 1;
          }
        }

        else
        {
          v37 = v31;
          u_memcpy(v60, src, v31);
          a5 = v53;
          v38 = v37;
        }

        v14 = v60;
        v11 = &v60[v38];
        v9 = 1;
        v15 = v60;
        goto LABEL_17;
      }
    }

    if (v10)
    {
      break;
    }

    v32 = ucase_toFullFolding(v28, &src, a5);
    a5 = v53;
    if ((v32 & 0x80000000) != 0)
    {
      break;
    }

    v33 = v32;
    if ((v17 & 0x7FFFF800) == 0xD800)
    {
      if ((v17 & 0x400) != 0)
      {
        v19 = *(v14 - 2);
        --v14;
        --v51;
      }

      else
      {
        ++v13;
      }
    }

    *&v64 = v16;
    *(&v64 + 1) = v13;
    v65[0] = v12;
    v52 = v13;
    if (v32 > 0x1F)
    {
      if (HIWORD(v32))
      {
        dest[0] = (v32 >> 10) - 10304;
        dest[1] = v32 & 0x3FF | 0xDC00;
        v34 = 2;
      }

      else
      {
        dest[0] = v32;
        v34 = 1;
      }
    }

    else
    {
      u_memcpy(dest, src, v32);
      a5 = v53;
      v34 = v33;
    }

    v11 = v54;
    v13 = dest;
    v12 = &dest[v34];
    v17 = -1;
    v10 = 1;
    v16 = dest;
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_17;
    }

LABEL_28:
    if ((v17 & 0x80000000) != 0)
    {
LABEL_35:
      while (1)
      {
        if (v13 != v12)
        {
          v17 = *v13;
          v23 = (a5 & 0x1000) != 0 || v12 == 0;
          v24 = !v23;
          if (*v13 || v24)
          {
            break;
          }
        }

        if (!v10)
        {
          v17 = -1;
          goto LABEL_47;
        }

        v22 = &v65[3 * v10];
        do
        {
          v16 = *(v22 - 5);
          --v10;
          v22 -= 3;
        }

        while (!v16);
        v13 = *(v22 - 1);
        v12 = *v22;
      }

      ++v13;
    }
  }

  if (a5 < 0 && v19 >> 11 >= 0x1B && v17 >> 11 >= 0x1B)
  {
    if ((v19 >> 10 > 0x36 || v14 == v54 || (*v14 & 0xFC00) != 0xDC00) && ((v19 & 0x7FFFFC00) != 0xDC00 || v15 == v14 - 1 || (*(v14 - 2) & 0xFC00) != 0xD800))
    {
      v19 -= 10240;
    }

    if ((v17 >> 10 > 0x36 || v13 == v12 || (*v13 & 0xFC00) != 0xDC00) && ((v17 & 0x7FFFFC00) != 0xDC00 || v16 == v13 - 1 || (*(v13 - 2) & 0xFC00) != 0xD800))
    {
      v17 -= 10240;
    }
  }

  v43 = a6;
  v42 = a7;
  result = v19 - v17;
LABEL_127:
  if (v43)
  {
    *v43 = (v46 - a1) >> 1;
    *v42 = (v51 - a3) >> 1;
  }

LABEL_129:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

int32_t u_strCaseCompare(const UChar *s1, int32_t length1, const UChar *s2, int32_t length2, uint32_t options, UErrorCode *pErrorCode)
{
  if (pErrorCode && *pErrorCode <= 0)
  {
    if (s1 && length1 >= -1 && s2 && length2 > -2)
    {
      return u_caseInsensitivePrefixMatch_0(s1, length1, s2, length2, options, 0, 0, pErrorCode);
    }

    *pErrorCode = U_ILLEGAL_ARGUMENT_ERROR;
  }

  return 0;
}

uint64_t sub_19529B410(unsigned __int8 *Default)
{
  if (!Default)
  {
    Default = uloc_getDefault(0);
  }

  if (!*Default)
  {
    return 1;
  }

  return sub_19522ECD0(Default);
}

uint64_t icu::StringEnumeration::StringEnumeration(uint64_t this)
{
  *this = &unk_1F0936950;
  *(this + 8) = &unk_1F0935D00;
  *(this + 16) = 2;
  *(this + 104) = this + 72;
  *(this + 112) = 32;
  return this;
}

void icu::StringEnumeration::~StringEnumeration(icu::StringEnumeration *this)
{
  *this = &unk_1F0936950;
  v2 = *(this + 13);
  if (v2)
  {
    v3 = v2 == this + 72;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    free(v2);
  }

  icu::UnicodeString::~UnicodeString((this + 8));

  icu::UObject::~UObject(this);
}

UChar *icu::StringEnumeration::next(UChar **this, int *a2, UErrorCode *a3)
{
  v6 = (*(*this + 7))(this, a3);
  if (*a3 > 0 || v6 == 0)
  {
    return 0;
  }

  icu::UnicodeString::operator=(this + 1, v6);
  v8 = *(this + 8);
  v9 = (v8 & 0x8000) != 0 ? *(this + 5) : v8 >> 5;
  icu::StringEnumeration::ensureCharsCapacity(this, v9 + 1, a3);
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2)
  {
    if (this[2] < 0)
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = *(this + 8) >> 5;
    }

    *a2 = v11;
  }

  icu::UnicodeString::extract((this + 1), 0, 0x7FFFFFFFLL, this[13], *(this + 28));
  return this[13];
}

void *icu::StringEnumeration::ensureCharsCapacity(void *this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v3 = this;
    v4 = *(this + 28);
    if (v4 < a2)
    {
      v6 = v4 + v4 / 2;
      if (v6 <= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = v6;
      }

      v8 = this[13];
      if (v8 != (v3 + 9))
      {
        free(v8);
      }

      this = malloc_type_malloc(v7, 0x100004077774924uLL);
      v3[13] = this;
      if (this)
      {
        *(v3 + 28) = v7;
      }

      else
      {
        v3[13] = v3 + 9;
        *(v3 + 28) = 32;
        *a3 = U_MEMORY_ALLOCATION_ERROR;
      }
    }
  }

  return this;
}

uint64_t icu::StringEnumeration::unext(UChar **this, int *a2, UErrorCode *a3)
{
  v6 = (*(*this + 7))(this, a3);
  if (*a3 > 0 || v6 == 0)
  {
    return 0;
  }

  icu::UnicodeString::operator=(this + 1, v6);
  if (a2)
  {
    if (this[2] < 0)
    {
      v9 = *(this + 5);
    }

    else
    {
      v9 = *(this + 8) >> 5;
    }

    *a2 = v9;
  }

  return icu::UnicodeString::getTerminatedBuffer((this + 1));
}

char *icu::StringEnumeration::snext(icu::StringEnumeration *this, UErrorCode *a2)
{
  v6 = 0;
  v4 = (*(*this + 40))(this, &v6, a2);
  return icu::StringEnumeration::setChars(this, v4, v6, a2);
}

char *icu::StringEnumeration::setChars(icu::StringEnumeration *this, const char *__s, int32_t a3, UErrorCode *a4)
{
  v4 = 0;
  if (__s && *a4 <= 0)
  {
    v6 = a3;
    if (a3 < 0)
    {
      v6 = strlen(__s);
    }

    v4 = this + 8;
    Buffer = icu::UnicodeString::getBuffer((this + 8), v6 + 1);
    if (Buffer)
    {
      v10 = Buffer;
      u_charsToUChars(__s, Buffer, v6);
      v10[v6] = 0;
      icu::UnicodeString::releaseBuffer(v4, v6);
    }

    else
    {
      v4 = 0;
      *a4 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  return v4;
}

BOOL icu::StringEnumeration::operator==(void *a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v3 = *(*a1 - 8);
  v4 = *(*a2 - 8);

  return sub_19520B9EC(v3, v4);
}

uint64_t icu::UStringEnumeration::fromUEnumeration(void **a1, int *a2)
{
  if (*a2 < 1)
  {
    operator new();
  }

  uenum_close(a1);
  return 0;
}

uint64_t icu::UStringEnumeration::UStringEnumeration(uint64_t result, uint64_t a2)
{
  *(result + 8) = &unk_1F0935D00;
  *(result + 16) = 2;
  *(result + 104) = result + 72;
  *(result + 112) = 32;
  *result = &unk_1F09369B8;
  *(result + 120) = a2;
  return result;
}

{
  *(result + 8) = &unk_1F0935D00;
  *(result + 16) = 2;
  *(result + 104) = result + 72;
  *(result + 112) = 32;
  *result = &unk_1F09369B8;
  *(result + 120) = a2;
  return result;
}

void icu::UStringEnumeration::~UStringEnumeration(void ***this)
{
  *this = &unk_1F09369B8;
  uenum_close(this[15]);

  icu::StringEnumeration::~StringEnumeration(this);
}

{
  *this = &unk_1F09369B8;
  uenum_close(this[15]);

  icu::StringEnumeration::~StringEnumeration(this);
}

{
  *this = &unk_1F09369B8;
  uenum_close(this[15]);
  icu::StringEnumeration::~StringEnumeration(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::UStringEnumeration::snext(icu::UStringEnumeration *this, UErrorCode *a2)
{
  v10 = 0;
  v4 = uenum_unext(*(this + 15), &v10, a2);
  if (v4)
  {
    v5 = *a2 <= U_ZERO_ERROR;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    return 0;
  }

  v7 = v4;
  v8 = v10;
  icu::UnicodeString::unBogus(this + 8);
  if (*(this + 8) < 0)
  {
    v9 = *(this + 5);
  }

  else
  {
    v9 = *(this + 8) >> 5;
  }

  return icu::UnicodeString::doReplace(this + 8, 0, v9, v7, 0, v8);
}

_OWORD *uenum_openFromStringEnumeration(uint64_t a1, int *a2)
{
  if (a1 && *a2 <= 0)
  {
    result = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
    if (result)
    {
      v5 = *&off_1F0936A20;
      *result = xmmword_1F0936A10;
      result[1] = v5;
      result[2] = xmmword_1F0936A30;
      *(result + 6) = off_1F0936A40;
      *(result + 1) = a1;
      return result;
    }

    *a2 = 7;
  }

  else if (!a1)
  {
    return 0;
  }

  (*(*a1 + 8))(a1);
  return 0;
}

_OWORD *uenum_openCharStringsEnumeration(uint64_t a1, int a2, int *a3)
{
  result = 0;
  if ((a2 & 0x80000000) == 0 && *a3 <= 0)
  {
    if (a1 || !a2)
    {
      result = malloc_type_malloc(0x40uLL, 0x1080040A4124F16uLL);
      if (result)
      {
        v7 = *&off_1F0936A58;
        *result = xmmword_1F0936A48;
        result[1] = v7;
        result[2] = xmmword_1F0936A68;
        *(result + 6) = off_1F0936A78;
        *(result + 1) = a1;
        *(result + 14) = 0;
        *(result + 15) = a2;
      }

      else
      {
        *a3 = 7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_OWORD *uenum_openUCharStringsEnumeration(uint64_t a1, int a2, int *a3)
{
  result = 0;
  if ((a2 & 0x80000000) == 0 && *a3 <= 0)
  {
    if (a1 || !a2)
    {
      result = malloc_type_malloc(0x40uLL, 0x1080040A4124F16uLL);
      if (result)
      {
        v7 = *&off_1F0936A90;
        *result = xmmword_1F0936A80;
        result[1] = v7;
        result[2] = xmmword_1F0936AA0;
        *(result + 6) = off_1F0936AB0;
        *(result + 1) = a1;
        *(result + 14) = 0;
        *(result + 15) = a2;
      }

      else
      {
        *a3 = 7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_19529C084(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  free(a1);
}

uint64_t sub_19529C190(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 56);
  if (v2 >= *(a1 + 60))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  *(a1 + 56) = v2 + 1;
  v4 = *(v3 + 8 * v2);
  if (a2)
  {
    *a2 = strlen(*(v3 + 8 * v2));
  }

  return v4;
}

uint64_t sub_19529C1F4(uint64_t a1, int32_t *a2)
{
  v2 = *(a1 + 56);
  if (v2 >= *(a1 + 60))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  *(a1 + 56) = v2 + 1;
  v4 = *(v3 + 8 * v2);
  if (a2)
  {
    *a2 = u_strlen(*(v3 + 8 * v2));
  }

  return v4;
}

uint64_t uprv_itou(__int16 *a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v7 = a1;
  v8 = 0;
  do
  {
    if ((a3 % a4) >= 10)
    {
      v9 = 55;
    }

    else
    {
      v9 = 48;
    }

    ++v8;
    *a1++ = v9 + a3 % a4;
    if (a3 < a4)
    {
      break;
    }

    a3 /= a4;
  }

  while (v8 < a2);
  if (v8 >= a5)
  {
    result = v8;
  }

  else
  {
    memset_pattern16(a1, a00000000aBEF, 2 * (~v8 + a5) + 2);
    result = a5;
  }

  if (result < a2)
  {
    v7[result] = 0;
  }

  if (result >= 2)
  {
    if (a5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = a5;
    }

    v12 = &v7[v11 - 1];
    v13 = v11 >> 1;
    do
    {
      v14 = *v12;
      *v12-- = *v7;
      *v7++ = v14;
      --v13;
    }

    while (v13);
  }

  return result;
}

UChar *__cdecl u_strFindFirst(const UChar *s, int32_t length, const UChar *substring, int32_t subLength)
{
  if (!substring || subLength < -1)
  {
    return s;
  }

  v6 = 0;
  if (!s || length < -1)
  {
    return v6;
  }

  if ((subLength & length) < 0 != __OFSUB__(length, -1))
  {
    v14 = *substring;
    if (*substring)
    {
      if (v14 >> 11 == 27 || substring[1])
      {
        v25 = *s;
        if (!*s)
        {
          return 0;
        }

        v26 = s;
        while (1)
        {
          v6 = v26++;
          if (v14 == v25)
          {
            v27 = v26;
            v28 = substring + 2;
            v29 = substring[1];
            if (substring[1])
            {
              while (1)
              {
                if (!*v27)
                {
                  return 0;
                }

                if (*v27 != v29)
                {
                  break;
                }

                ++v27;
                v30 = *v28++;
                v29 = v30;
                if (!v30)
                {
                  goto LABEL_47;
                }
              }
            }

            else
            {
LABEL_47:
              if ((v6 == s || (v14 & 0xFC00) != 0xDC00 || (*(v6 - 1) & 0xFC00) != 0xD800) && ((*(v27 - 1) & 0xFC00) != 0xD800 || (*v27 & 0xFC00) != 0xDC00))
              {
                return v6;
              }
            }
          }

          v6 = 0;
          v25 = *v26;
          if (!*v26)
          {
            return v6;
          }
        }
      }

LABEL_19:

      return u_strchr(s, v14);
    }

    return s;
  }

  if (subLength < 0)
  {
    subLength = -1;
    v8 = substring;
    do
    {
      v9 = *v8++;
      ++subLength;
    }

    while (v9);
  }

  if (!subLength)
  {
    return s;
  }

  v12 = *substring;
  v10 = substring + 1;
  v11 = v12;
  v13 = subLength - 1;
  if (subLength == 1 && (v11 & 0xF800) != 0xD800)
  {
    LOWORD(v14) = v11;
    if ((length & 0x80000000) == 0)
    {

      return u_memchr(s, v11, length);
    }

    goto LABEL_19;
  }

  v16 = v13;
  v17 = 2 * v13;
  if ((length & 0x80000000) == 0)
  {
    if (subLength <= length)
    {
      v18 = &s[length];
      v19 = &v18[-v16];
      if (v19 != s)
      {
        v20 = s;
        while (1)
        {
          v6 = v20;
          v21 = *v20++;
          if (v21 == v11)
          {
            v22 = v20;
            v23 = v17;
            v24 = v10;
            if (v16)
            {
              while (*v22 == *v24)
              {
                ++v22;
                ++v24;
                v23 -= 2;
                if (!v23)
                {
                  goto LABEL_32;
                }
              }
            }

            else
            {
LABEL_32:
              if ((v6 == s || (v11 & 0xFC00) != 0xDC00 || (*(v6 - 1) & 0xFC00) != 0xD800) && (v22 == v18 || (*(v22 - 1) & 0xFC00) != 0xD800 || (*v22 & 0xFC00) != 0xDC00))
              {
                return v6;
              }
            }
          }

          v6 = 0;
          if (v20 == v19)
          {
            return v6;
          }
        }
      }
    }

    return 0;
  }

  v31 = *s;
  if (!*s)
  {
    return 0;
  }

  v32 = s;
  while (1)
  {
    v6 = v32++;
    if (v11 == v31)
    {
      break;
    }

LABEL_62:
    v6 = 0;
    v31 = *v32;
    if (!*v32)
    {
      return v6;
    }
  }

  v33 = v32;
  v34 = v17;
  v35 = v10;
  if (!v16)
  {
LABEL_61:
    if (sub_19529C6A0(s, v6, v33, 0))
    {
      return v6;
    }

    goto LABEL_62;
  }

  while (*v33)
  {
    if (*v33 != *v35)
    {
      goto LABEL_62;
    }

    ++v33;
    ++v35;
    v34 -= 2;
    if (!v34)
    {
      goto LABEL_61;
    }
  }

  return 0;
}

UChar *__cdecl u_strchr(UChar *s, UChar c)
{
  substring = c;
  if ((c & 0xF800) == 0xD800)
  {
    return u_strFindFirst(s, -1, &substring, 1);
  }

  for (i = *s; i != c; i = v3)
  {
    if (!i)
    {
      return 0;
    }

    v3 = s[1];
    ++s;
  }

  return s;
}

int32_t u_strlen(const UChar *s)
{
  result = -1;
  do
  {
    v3 = *s++;
    ++result;
  }

  while (v3);
  return result;
}

UChar *__cdecl u_memchr(UChar *s, UChar c, int32_t count)
{
  substring = c;
  if (count < 1)
  {
    return 0;
  }

  if ((c & 0xF800) == 0xD800)
  {
    return u_strFindFirst(s, count, &substring, 1);
  }

  v3 = 2 * count;
  while (*s != c)
  {
    ++s;
    v3 -= 2;
    if (!v3)
    {
      return 0;
    }
  }

  return s;
}

UChar *__cdecl u_strchr32(UChar *s, UChar32 c)
{
  if (!HIWORD(c))
  {
    return u_strchr(s, c);
  }

  if (HIWORD(c) > 0x10u)
  {
    return 0;
  }

  v2 = *s;
  if (!*s)
  {
    return 0;
  }

  v3 = s;
  while (1)
  {
    v5 = v3[1];
    ++v3;
    v4 = v5;
    if ((c >> 10) + 55232 == v2 && (c & 0x3FF | 0xDC00) == v4)
    {
      break;
    }

    v2 = v4;
    s = v3;
    if (!v4)
    {
      return 0;
    }
  }

  return s;
}

UChar *__cdecl u_memchr32(const UChar *s, UChar32 c, int32_t count)
{
  if (!HIWORD(c))
  {
    return u_memchr(s, c, count);
  }

  v4 = 0;
  if (HIWORD(c) <= 0x10u && count >= 2)
  {
    v5 = 2 * count - 2;
    while ((c >> 10) + 55232 != *s || (c & 0x3FF | 0xDC00) != s[1])
    {
      ++s;
      v5 -= 2;
      if (!v5)
      {
        return 0;
      }
    }

    return s;
  }

  return v4;
}

UChar *__cdecl u_strFindLast(const UChar *s, int32_t length, const UChar *substring, int32_t subLength)
{
  if (!substring || subLength < -1)
  {
    return s;
  }

  v4 = 0;
  if (!s)
  {
    return v4;
  }

  v5 = length;
  if (length < -1)
  {
    return v4;
  }

  if (subLength < 0)
  {
    subLength = -1;
    v6 = substring;
    do
    {
      v7 = *v6++;
      ++subLength;
    }

    while (v7);
  }

  if (!subLength)
  {
    return s;
  }

  v8 = &substring[subLength];
  v11 = *(v8 - 1);
  v10 = v8 - 1;
  v9 = v11;
  v12 = subLength - 1;
  if (subLength != 1 || (v9 & 0xF800) == 0xD800)
  {
    if (v5 < 0)
    {
      v5 = -1;
      v14 = s;
      do
      {
        v15 = *v14++;
        ++v5;
      }

      while (v15);
    }

    if (v5 >= subLength && v12 != v5)
    {
      v16 = &s[v5];
      v17 = &s[v12];
      v18 = 2 * subLength;
      v19 = v16;
      while (1)
      {
        v20 = v19;
        v21 = *--v19;
        if (v21 == v9)
        {
          v22 = v9;
          v4 = v19;
          v23 = v18;
          if (v10 == substring)
          {
LABEL_27:
            if ((v4 == s || (v22 & 0xFC00) != 0xDC00 || (*(v4 - 1) & 0xFC00) != 0xD800) && (v20 == v16 || (v9 & 0xFC00) != 0xD800 || (*v20 & 0xFC00) != 0xDC00))
            {
              return v4;
            }
          }

          else
          {
            while (1)
            {
              v24 = *--v4;
              v22 = v24;
              if (v24 != *(substring + v23 - 4))
              {
                break;
              }

              v23 -= 2;
              if (v23 == 2)
              {
                goto LABEL_27;
              }
            }
          }
        }

        v4 = 0;
        if (v17 == v19)
        {
          return v4;
        }
      }
    }

    return 0;
  }

  if (v5 < 0)
  {
    return u_strrchr(s, v9);
  }

  else
  {
    return u_memrchr(s, v9, v5);
  }
}

UChar *__cdecl u_strrchr(const UChar *s, UChar c)
{
  substring = c;
  if ((c & 0xF800) == 0xD800)
  {
    return u_strFindLast(s, -1, &substring, 1);
  }

  v2 = 0;
  v3 = s;
  do
  {
    v5 = *v3++;
    v4 = v5;
    if (v5 == c)
    {
      v2 = s;
    }

    s = v3;
  }

  while (v4);
  return v2;
}

UChar *__cdecl u_memrchr(const UChar *s, UChar c, int32_t count)
{
  substring = c;
  if (count < 1)
  {
    return 0;
  }

  if ((c & 0xF800) == 0xD800)
  {
    return u_strFindLast(s, count, &substring, 1);
  }

  result = &s[count - 1];
  v4 = -2 * count;
  while (*result != c)
  {
    --result;
    v4 += 2;
    if (!v4)
    {
      return 0;
    }
  }

  return result;
}

UChar *__cdecl u_strrchr32(const UChar *s, UChar32 c)
{
  if (!HIWORD(c))
  {
    return u_strrchr(s, c);
  }

  if (HIWORD(c) > 0x10u)
  {
    return 0;
  }

  v3 = *s;
  if (!*s)
  {
    return 0;
  }

  v4 = 0;
  v5 = s;
  do
  {
    v7 = v5[1];
    ++v5;
    v6 = v7;
    if ((c & 0x3FF | 0xDC00) == v7 && (c >> 10) + 55232 == v3)
    {
      v4 = s;
    }

    s = v5;
    v3 = v6;
  }

  while (v6);
  return v4;
}

UChar *__cdecl u_memrchr32(const UChar *s, UChar32 c, int32_t count)
{
  if (!HIWORD(c))
  {
    return u_memrchr(s, c, count);
  }

  result = 0;
  if (HIWORD(c) <= 0x10u && count >= 2)
  {
    result = &s[count - 2];
    v5 = 2 - 2 * count;
    while ((c & 0x3FF | 0xDC00) != result[1] || (c >> 10) + 55232 != *result)
    {
      --result;
      v5 += 2;
      if (!v5)
      {
        return 0;
      }
    }
  }

  return result;
}

UChar *__cdecl u_strpbrk(const UChar *string, const UChar *matchSet)
{
  v3 = sub_19529CBDC(string, matchSet, 1);
  if (v3 < 0)
  {
    return 0;
  }

  else
  {
    return &string[v3];
  }
}

uint64_t sub_19529CBDC(_WORD *a1, uint64_t a2, int a3)
{
  v3 = 0;
  do
  {
    v4 = *(a2 + 2 * v3++);
    if (v4)
    {
      v5 = (v4 & 0xF800) == 55296;
    }

    else
    {
      v5 = 1;
    }
  }

  while (!v5);
  v6 = v3;
    ;
  }

  v8 = *a1;
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  v10 = v3 - 1;
  v11 = v6 - 2;
  while (1)
  {
    v12 = (v9 + 1);
    if ((v8 & 0xF800) == 0xD800)
    {
      if ((v8 & 0x400) == 0)
      {
        v13 = a1[v12];
        if ((v13 & 0xFC00) == 0xDC00)
        {
          v12 = (v9 + 2);
          v8 = (v8 << 10) - 56613888 + v13;
        }
      }

      v14 = v10;
      if (!a3)
      {
        while (v14 < v11)
        {
          v22 = v14 + 1;
          v23 = *(a2 + 2 * v14);
          if ((v23 & 0xFC00) == 0xD800 && v14 + 3 != v6)
          {
            v25 = *(a2 + 2 * v22);
            v26 = (v25 & 0xFC00) == 56320;
            v27 = v14 + 2;
            v28 = (v23 << 10) - 56613888 + v25;
            if (v26)
            {
              LODWORD(v22) = v27;
            }

            if (v26)
            {
              v23 = v28;
            }
          }

          v14 = v22;
          if (v8 == v23)
          {
            goto LABEL_47;
          }
        }

LABEL_55:
        if (v8 >= 0x10000)
        {
          v31 = -2;
        }

        else
        {
          v31 = -1;
        }

        return (v31 + v12);
      }

      while (v14 < v11)
      {
        v15 = v14 + 1;
        v16 = *(a2 + 2 * v14);
        if ((v16 & 0xFC00) == 0xD800 && v14 + 3 != v6)
        {
          v18 = *(a2 + 2 * v15);
          v19 = (v18 & 0xFC00) == 56320;
          v20 = v14 + 2;
          v21 = (v16 << 10) - 56613888 + v18;
          if (v19)
          {
            LODWORD(v15) = v20;
          }

          if (v19)
          {
            v16 = v21;
          }
        }

        v14 = v15;
        if (v8 == v16)
        {
          goto LABEL_55;
        }
      }

      goto LABEL_47;
    }

    if (!a3)
    {
      if (v6 == 2)
      {
        return v9;
      }

      v30 = 0;
      while (v8 != *(a2 + 2 * v30))
      {
        if (v11 == ++v30)
        {
          return v9;
        }
      }

      goto LABEL_47;
    }

    if (v6 != 2)
    {
      break;
    }

LABEL_47:
    v9 = v12;
    v8 = a1[v12];
    if (!a1[v12])
    {
      return ~v12;
    }
  }

  v29 = 0;
  while (v8 != *(a2 + 2 * v29))
  {
    if (v11 == ++v29)
    {
      goto LABEL_47;
    }
  }

  return v9;
}

UChar *__cdecl u_strtok_r(UChar *src, const UChar *delim, UChar **saveState)
{
  if (src)
  {
    v5 = src;
    *saveState = src;
  }

  else
  {
    v5 = *saveState;
    if (!*saveState)
    {
      return v5;
    }
  }

  v6 = sub_19529CBDC(v5, delim, 0);
  v5 += v6 ^ (v6 >> 31);
  if (*v5)
  {
    v7 = sub_19529CBDC(v5, delim, 1);
    if (v7 < 0)
    {
      v9 = 0;
    }

    else
    {
      v8 = &v5[v7];
      *v8 = 0;
      v9 = v8 + 1;
    }
  }

  else
  {
    v9 = 0;
    v5 = 0;
  }

  *saveState = v9;
  return v5;
}

UChar *__cdecl u_strcat(UChar *dst, const UChar *src)
{
  v2 = 0;
    ;
  }

  v4 = v2 * 2 - 2;
  do
  {
    v5 = *src++;
    *(dst + v4) = v5;
    v4 += 2;
  }

  while (v5);
  return dst;
}

UChar *__cdecl u_strncat(UChar *dst, const UChar *src, int32_t n)
{
  if (n >= 1)
  {
    v3 = dst;
    do
    {
      v4 = v3;
    }

    while (*v3++);
    v6 = *src;
    *v4 = v6;
    if (v6)
    {
      v7 = 0;
      while (n - 1 != v7)
      {
        v8 = src[v7 + 1];
        v3[v7++] = v8;
        if (!v8)
        {
          return dst;
        }
      }

      v3[v7] = 0;
    }
  }

  return dst;
}

int32_t u_strcmp(const UChar *s1, const UChar *s2)
{
  do
  {
    v3 = *s1++;
    v2 = v3;
    v5 = *s2++;
    v4 = v5;
    if (v2)
    {
      v6 = v2 == v4;
    }

    else
    {
      v6 = 0;
    }
  }

  while (v6);
  return v2 - v4;
}

uint64_t sub_19529CF10(unsigned __int16 *a1, int a2, unsigned __int16 *a3, int a4, int a5, int a6)
{
  if ((a4 & a2) < 0 != v6)
  {
    if (a1 != a3)
    {
      v11 = *a1;
      v12 = *a3;
      if (v11 != v12)
      {
        v7 = 0;
        v16 = 0;
        i = a3;
        v9 = a1;
        if (!a6)
        {
          return v11 - v12;
        }

LABEL_44:
        if (v11 >> 11 >= 0x1B && v12 >> 11 >= 0x1B)
        {
          v25 = v9 + 1;
          v26 = v11 >> 10 > 0x36 || v25 == v7;
          if ((v26 || (*v25 & 0xFC00) != 0xDC00) && (v9 == a1 || (v11 & 0xFC00) != 0xDC00 || (*(v9 - 1) & 0xFC00) != 0xD800))
          {
            LOWORD(v11) = v11 - 10240;
          }

          if ((v12 >> 10 > 0x36 || i + 1 == v16 || (i[1] & 0xFC00) != 0xDC00) && (v12 >> 10 != 55 || i == a3 || (*(i - 1) & 0xFC00) != 0xD800))
          {
            LOWORD(v12) = v12 - 10240;
          }
        }

        return v11 - v12;
      }

      v9 = a1;
      i = a3;
      while (v11)
      {
        v14 = v9[1];
        ++v9;
        v11 = v14;
        v15 = i[1];
        ++i;
        v12 = v15;
        if (v11 != v15)
        {
          v7 = 0;
          v16 = 0;
          if (a6)
          {
            goto LABEL_44;
          }

          return v11 - v12;
        }
      }
    }

    return 0;
  }

  if (a5)
  {
    if (a1 != a3 && a2)
    {
      v7 = &a1[a2];
      v8 = 2 * a2 - 2;
      v9 = a1;
      i = a3;
      while (1)
      {
        v11 = *v9;
        v12 = *i;
        if (v11 != v12)
        {
          break;
        }

        ++v9;
        ++i;
        if (v11)
        {
          v13 = v8 == 0;
        }

        else
        {
          v13 = 1;
        }

        v8 -= 2;
        if (v13)
        {
          return 0;
        }
      }

      v16 = &a3[a2];
      if (!a6)
      {
        return v11 - v12;
      }

      goto LABEL_44;
    }

    return 0;
  }

  if (a2 < 0)
  {
    a2 = -1;
    v18 = a1;
    do
    {
      v19 = *v18++;
      ++a2;
    }

    while (v19);
  }

  if (a4 < 0)
  {
    a4 = -1;
    v20 = a3;
    do
    {
      v21 = *v20++;
      ++a4;
    }

    while (v21);
  }

  if (a2 >= a4)
  {
    v22 = a4;
  }

  else
  {
    v22 = a2;
  }

  if (a2 < a4)
  {
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    v17 = a2 != a4;
  }

  if (a1 != a3 && v22)
  {
    v23 = 2 * v22;
    v9 = a1;
    for (i = a3; ; ++i)
    {
      v11 = *v9;
      v12 = *i;
      if (v11 != v12)
      {
        break;
      }

      ++v9;
      v23 -= 2;
      if (!v23)
      {
        return v17;
      }
    }

    v7 = &a1[a2];
    v16 = &a3[a4];
    if (!a6)
    {
      return v11 - v12;
    }

    goto LABEL_44;
  }

  return v17;
}

int32_t u_strCompareIter(UCharIterator *iter1, UCharIterator *iter2, UBool codePointOrder)
{
  result = 0;
  if (iter1 != iter2 && iter1 && iter2)
  {
    v6 = codePointOrder;
    (iter1->move)(iter1, 0, 0);
    (iter2->move)(iter2, 0, 0);
    while (1)
    {
      v7 = (iter1->next)(iter1);
      v8 = (iter2->next)(iter2);
      if (v7 != v8)
      {
        break;
      }

      if (v7 == -1)
      {
        return 0;
      }
    }

    v9 = v8;
    if (v6)
    {
      if (v7 >= 55296 && v8 >= 55296)
      {
        if (v7 >> 10 > 0x36 || (iter1->current)(iter1) >> 10 != 55)
        {
          if ((v7 & 0x7FFFFC00) != 0xDC00 || ((iter1->previous)(iter1), (iter1->previous)(iter1) >> 10 != 54))
          {
            v7 -= 10240;
          }
        }

        if (v9 >> 10 > 0x36 || (iter2->current)(iter2) >> 10 != 55)
        {
          if ((v9 & 0x7FFFFC00) != 0xDC00 || ((iter2->previous)(iter2), (iter2->previous)(iter2) >> 10 != 54))
          {
            v9 -= 10240;
          }
        }
      }
    }

    return v7 - v9;
  }

  return result;
}

int32_t u_strCompare(const UChar *s1, int32_t length1, const UChar *s2, int32_t length2, UBool codePointOrder)
{
  if (s1 && length1 >= -1 && s2 && length2 >= -1)
  {
    return sub_19529CF10(s1, length1, s2, length2, 0, codePointOrder);
  }

  else
  {
    return 0;
  }
}

int32_t u_strncmp(const UChar *ucs1, const UChar *ucs2, int32_t n)
{
  v3 = n - 1;
  if (n < 1)
  {
    return 0;
  }

  v5 = *ucs1;
  result = v5 - *ucs2;
  if (v5)
  {
    v7 = v5 == *ucs2;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = ucs2 + 1;
    v9 = ucs1 + 1;
    while (v3)
    {
      v11 = *v9++;
      v10 = v11;
      v12 = *v8++;
      result = v10 - v12;
      --v3;
      if (v10)
      {
        v13 = result == 0;
      }

      else
      {
        v13 = 0;
      }

      if (!v13)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

UChar *__cdecl u_strcpy(UChar *dst, const UChar *src)
{
  v2 = 0;
  do
  {
    v3 = src[v2];
    dst[v2++] = v3;
  }

  while (v3);
  return dst;
}

UChar *__cdecl u_strncpy(UChar *dst, const UChar *src, int32_t n)
{
  if (n >= 1)
  {
    v3 = dst;
    do
    {
      v4 = *src++;
      *v3++ = v4;
      if (v4)
      {
        v5 = n > 1;
      }

      else
      {
        v5 = 0;
      }

      --n;
    }

    while (v5);
  }

  return dst;
}

int32_t u_countChar32(const UChar *s, int32_t length)
{
  result = 0;
  if (!s || length < -1)
  {
    return result;
  }

  if ((length & 0x80000000) == 0)
  {
    if (length)
    {
      result = 0;
      do
      {
        if (length != 1 && (*s & 0xFC00) == 0xD800 && (s[1] & 0xFC00) == 0xDC00)
        {
          v4 = -2;
          v5 = 4;
        }

        else
        {
          v4 = -1;
          v5 = 2;
        }

        s = (s + v5);
        ++result;
        length += v4;
      }

      while (length);
      return result;
    }

    return 0;
  }

  v6 = *s;
  if (!*s)
  {
    return 0;
  }

  result = 0;
  do
  {
    v7 = s + 1;
    if ((v6 & 0xFC00) == 0xD800)
    {
      v8 = s[1] & 0xFC00;
      v9 = s + 2;
      if (v8 == 56320)
      {
        v7 = v9;
      }
    }

    v6 = *v7;
    ++result;
    s = v7;
  }

  while (*v7);
  return result;
}

UBool u_strHasMoreChar32Than(const UChar *s, int32_t length, int32_t number)
{
  if (number < 0)
  {
    return 1;
  }

  v3 = 0;
  if (s && length >= -1)
  {
    if (length == -1)
    {
      v4 = *s;
      if (*s)
      {
        v5 = number + 1;
        while (--v5)
        {
          v6 = s + 1;
          if ((v4 & 0xFC00) == 0xD800 && (s[1] & 0xFC00) == 0xDC00)
          {
            v6 = s + 2;
          }

          v4 = *v6;
          s = v6;
          if (!*v6)
          {
            return 0;
          }
        }

        return 1;
      }
    }

    else
    {
      if (number < (length + 1) >> 1)
      {
        return 1;
      }

      v7 = length - number;
      if (length - number >= 1 && length)
      {
        v8 = number + 1;
        v9 = &s[length];
        while (--v8)
        {
          v10 = s + 1;
          v11 = (*s & 0xFC00) != 0xD800 || v10 == v9;
          if (!v11 && (*v10 & 0xFC00) == 0xDC00)
          {
            if (v7 < 2)
            {
              return 0;
            }

            v10 = s + 2;
            --v7;
          }

          v3 = 0;
          s = v10;
          if (v10 == v9)
          {
            return v3;
          }
        }

        return 1;
      }
    }

    return 0;
  }

  return v3;
}

UBool u_strIsWellFormed(const UChar *s, int32_t length)
{
  v2 = 0;
  v33 = *MEMORY[0x1E69E9840];
  if (s && length >= -1)
  {
    v24 = 0;
    v23 = 0;
    memset(v32, 0, sizeof(v32));
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v22 = 0;
    v25 = 0;
    v4 = 0;
    if (length < 0)
    {
      v13 = s;
      while (1)
      {
        v15 = *v13++;
        v14 = v15;
        if (!v15)
        {
          break;
        }

        if ((v14 & 0xFC00) == 0xD800)
        {
          v16 = *v13;
          v17 = (v16 & 0xFC00) == 56320;
          v18 = (v14 << 10) - 56613888 + v16;
          if (v17)
          {
            v13 = s + 2;
          }

          if (v17)
          {
            v14 = v18;
          }
        }

        v19 = sub_19529D730(v14, v4, &v24, &v23, &v25, &v22 + 1, &v22);
        s = v13;
        v4 = v14;
        if (!v19)
        {
LABEL_28:
          v2 = 0;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v5 = &s[length];
      while (s < v5)
      {
        v7 = s + 1;
        v6 = *s;
        if ((v6 & 0xFC00) == 0xD800 && v7 < v5)
        {
          v9 = *v7;
          v10 = (v9 & 0xFC00) == 56320;
          v11 = (v6 << 10) - 56613888 + v9;
          if (v10)
          {
            v7 = s + 2;
          }

          if (v10)
          {
            v6 = v11;
          }
        }

        v12 = sub_19529D730(v6, v4, &v24, &v23, &v25, &v22 + 1, &v22);
        s = v7;
        v4 = v6;
        if (!v12)
        {
          goto LABEL_28;
        }
      }
    }

    v2 = 1;
  }

LABEL_30:
  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

BOOL sub_19529D730(UChar32 c, unsigned int a2, _DWORD *a3, _BYTE *a4, uint64_t a5, int *a6, int *a7)
{
  if (*a4)
  {
    if (c == 917631)
    {
      *a4 = 0;
      return 1;
    }

    return (c - 917631) >= 0xFFFFFFA1;
  }

  if (c <= 767)
  {
    *a3 = 0;
    if (c != 10 && c != 13 && c != 133 && (c - 28) > 2)
    {
      return 1;
    }

    goto LABEL_17;
  }

  if ((c - 8233) < 6 || (c - 8294) < 4)
  {
    *a3 = 0;
    switch(c)
    {
      case 8297:
        if (*a7 >= 1)
        {
          v12 = *a6;
          do
          {
            if (v12 < 1)
            {
              break;
            }

            *a6 = v12 - 1;
            v13 = *(a5 + v12--);
          }

          while ((v13 & 0x80000000) == 0);
          --*a7;
        }

        return 1;
      case 8236:
        v11 = *a6;
        if (v11 >= 1 && (*(a5 + v11) & 0x80000000) == 0)
        {
          *a6 = v11 - 1;
        }

        return 1;
      case 8233:
LABEL_17:
        *a6 = 0;
        *a7 = 0;
        return 1;
    }

    v14 = *a6;
    v15 = *(a5 + v14);
    v16 = (v15 & 0x7F) + 1;
    v17 = c - 42;
    if ((c - 8234) > 0x3D)
    {
      goto LABEL_36;
    }

    if (((1 << v17) & 0x1000000000000009) != 0)
    {
      goto LABEL_34;
    }

    if (((1 << v17) & 0x2000000000000012) != 0)
    {
      if (*(a5 + v14))
      {
LABEL_35:
        v16 = (v15 & 0x7F) + 2;
        goto LABEL_36;
      }

      if (c == 8294 || c == 8237)
      {
LABEL_34:
        if ((*(a5 + v14) & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

LABEL_36:
    result = 0;
    if (v14 <= 125 && v16 <= 0x7D)
    {
      if ((c - 8294) <= 2)
      {
        LOBYTE(v16) = v16 | 0x80;
        ++*a7;
        LODWORD(v14) = *a6;
      }

      v18 = v14 + 1;
      *a6 = v18;
      *(a5 + v18) = v16;
      return 1;
    }

    return result;
  }

  if (c == 65039)
  {
    result = u_isEmoji(a2);
    if (result)
    {
      return 1;
    }
  }

  else
  {
    if ((c - 917536) > 0x5E)
    {
      if (c == 917631)
      {
        return 0;
      }

      v20 = u_charType(c);
      v21 = ((v20 >> 1) | (v20 << 7));
      if ((v21 - 3) < 2)
      {
        if (u_getCombiningClass(c))
        {
          v22 = (*a3)++;
          return v22 <= 29;
        }
      }

      else
      {
        result = 0;
        if (!v21 || v21 == 9)
        {
          return result;
        }
      }

      *a3 = 0;
      return 1;
    }

    result = u_isEmoji(a2);
    if (a2 == 65039 || result)
    {
      *a4 = 1;
      return 1;
    }
  }

  return result;
}

UChar *__cdecl u_memcpy(UChar *dest, const UChar *src, int32_t count)
{
  if (count >= 1)
  {
    return memcpy(dest, src, (2 * count));
  }

  return dest;
}

UChar *__cdecl u_memmove(UChar *dest, const UChar *src, int32_t count)
{
  if (count >= 1)
  {
    return memmove(dest, src, (2 * count));
  }

  return dest;
}

UChar *__cdecl u_memset(UChar *dest, UChar c, int32_t count)
{
  if (count >= 1)
  {
    v3 = 0;
    v4 = (dest + (2 * count));
    if (v4 <= dest + 1)
    {
      v4 = dest + 1;
    }

    v5 = (v4 + ~dest) >> 1;
    v6 = vdupq_n_s64(v5);
    v7 = (v5 & 0x7FFFFFFFFFFFFFF8) + 8;
    v8 = dest + 4;
    do
    {
      v9 = vdupq_n_s64(v3);
      v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_19544D5F0)));
      if (vuzp1_s8(vuzp1_s16(v10, *v6.i8), *v6.i8).u8[0])
      {
        *(v8 - 4) = c;
      }

      if (vuzp1_s8(vuzp1_s16(v10, *&v6), *&v6).i8[1])
      {
        *(v8 - 3) = c;
      }

      if (vuzp1_s8(vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_19544D5E0)))), *&v6).i8[2])
      {
        *(v8 - 2) = c;
        *(v8 - 1) = c;
      }

      v11 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_19547BF90)));
      if (vuzp1_s8(*&v6, vuzp1_s16(v11, *&v6)).i32[1])
      {
        *v8 = c;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(v11, *&v6)).i8[5])
      {
        v8[1] = c;
      }

      if (vuzp1_s8(*&v6, vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_19547BF80))))).i8[6])
      {
        v8[2] = c;
        v8[3] = c;
      }

      v3 += 8;
      v8 += 8;
    }

    while (v7 != v3);
  }

  return dest;
}

int32_t u_memcmp(const UChar *buf1, const UChar *buf2, int32_t count)
{
  if (count < 1)
  {
    return 0;
  }

  v3 = &buf1[count];
  while (1)
  {
    v4 = *buf1 - *buf2;
    if (v4)
    {
      break;
    }

    ++buf1;
    ++buf2;
    if (buf1 >= v3)
    {
      return 0;
    }
  }

  return v4;
}

UChar32 u_unescapeAt(UNESCAPE_CHAR_AT charAt, int32_t *offset, int32_t length, void *context)
{
  v5 = *offset;
  if ((v5 & 0x80000000) != 0 || v5 >= length)
  {
    goto LABEL_38;
  }

  *offset = v5 + 1;
  v7 = (charAt)(v5, context);
  v8 = v7;
  v9 = 4;
  if (v7 == 85)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v10 = 8;
    v30 = 1;
    v31 = 8;
    goto LABEL_15;
  }

  v10 = 4;
  if (v7 == 117)
  {
    goto LABEL_14;
  }

  if (v7 == 120)
  {
    if (*offset < length && (charAt)() == 123)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      ++*offset;
      v30 = 0;
      v31 = 1;
      v10 = 8;
      goto LABEL_15;
    }

    v10 = 2;
    v9 = 1;
LABEL_14:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v31 = v9;
    LOBYTE(v9) = 4;
    v30 = 1;
LABEL_15:
    if (*offset < length)
    {
      v14 = v13;
      do
      {
        v15 = (charAt)();
        v8 = v15;
        if (v11)
        {
          if ((v15 & 0xFFF8) != 0x30)
          {
            break;
          }

          v16 = v15 - 48;
          if (v15 - 48 < 0)
          {
            break;
          }
        }

        else
        {
          v16 = v15 - 48;
          if ((v15 - 48) > 9)
          {
            if ((v15 - 65) > 5)
            {
              if ((v15 - 97) > 5)
              {
                break;
              }

              v16 = v15 - 87;
              if (v15 - 87 < 0)
              {
                break;
              }

              goto LABEL_25;
            }

            v16 = v15 - 55;
          }

          if (v16 < 0)
          {
            break;
          }
        }

LABEL_25:
        v12 = v16 | (v12 << v9);
        v17 = *offset + 1;
        *offset = v17;
        v13 = ++v14;
      }

      while (v17 < length && v10 > v14);
    }

    if (v31 > v13)
    {
      goto LABEL_38;
    }

    if ((v30 & 1) == 0)
    {
      if (v8 != 125)
      {
LABEL_38:
        *offset = v5;
        return -1;
      }

      ++*offset;
    }

    if (HIWORD(v12) > 0x10u)
    {
      goto LABEL_38;
    }

    v20 = *offset;
    if (v20 < length && (v12 & 0x1FFC00) == 0xD800)
    {
      offseta = v20 + 1;
      v21 = (charAt)(v20, context);
      if (v21 != 92)
      {
LABEL_48:
        if (v21 >> 10 == 55)
        {
          *offset = offseta;
          return v21 + (v12 << 10) - 56613888;
        }

        return v12;
      }

      if (v20 + 1 < length)
      {
        if (v20 + 12 >= length)
        {
          v22 = length;
        }

        else
        {
          v22 = v20 + 12;
        }

        v21 = u_unescapeAt(charAt, &offseta, v22, context);
        goto LABEL_48;
      }
    }

    return v12;
  }

  if (v7 >= 0x30 && (v7 & 0xFFF8) == 0x30)
  {
    v12 = v7 - 48;
    v30 = 1;
    v31 = 1;
    LOBYTE(v9) = 3;
    v11 = 1;
    v10 = 3;
    v13 = 1;
    goto LABEL_15;
  }

  v23 = 0;
  v24 = &a00000000aBEF[9];
  do
  {
    v25 = *(v24 - 1);
    if (v7 == v25)
    {
      return *v24;
    }

    v26 = v7 < v25 || v23 >= 0xE;
    v23 += 2;
    v24 += 2;
  }

  while (!v26);
  if (v7 == 99)
  {
    if (*offset >= length)
    {
      return 99;
    }

    else
    {
      ++*offset;
      v27 = (charAt)();
      if ((v27 & 0xFC00) == 0xD800 && *offset < length)
      {
        v28 = (charAt)();
        if ((v28 & 0xFC00) == 0xDC00)
        {
          ++*offset;
          LOBYTE(v27) = v28;
        }
      }

      return v27 & 0x1F;
    }
  }

  else if ((v7 & 0xFC00) == 0xD800 && *offset < length)
  {
    v29 = (charAt)();
    if ((v29 & 0xFC00) == 0xDC00)
    {
      ++*offset;
      return v29 + (v8 << 10) - 56613888;
    }
  }

  return v8;
}

int32_t u_unescape(const char *src, UChar *dest, int32_t destCapacity)
{
  v6 = 0;
LABEL_2:
  for (i = 0; src[i]; ++i)
  {
    if (src[i] == 92)
    {
      offset = 0;
      if (i)
      {
        if (dest)
        {
          if (((destCapacity - v6) & ~((destCapacity - v6) >> 31)) >= i)
          {
            v8 = i;
          }

          else
          {
            v8 = (destCapacity - v6) & ~((destCapacity - v6) >> 31);
          }

          u_charsToUChars(src, &dest[v6], v8);
        }

        v6 += i;
      }

      v9 = strlen(&src[i + 1]);
      v10 = u_unescapeAt(sub_19529E108, &offset, v9, &src[i + 1]);
      v11 = offset;
      if (!offset)
      {
        v6 = 0;
        if (!dest || destCapacity < 1)
        {
          return v6;
        }

LABEL_36:
        *dest = 0;
        return v6;
      }

      if (dest && (v10 < 0x10000 ? (v12 = 1) : (v12 = 2), v12 <= destCapacity - v6))
      {
        if (HIWORD(v10))
        {
          v14 = &dest[v6];
          *v14 = (v10 >> 10) - 10304;
          v14[1] = v10 & 0x3FF | 0xDC00;
          v13 = 2;
        }

        else
        {
          dest[v6] = v10;
          v13 = 1;
        }
      }

      else if (v10 < 0x10000)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      src += v11 + i + 1;
      v6 += v13;
      goto LABEL_2;
    }
  }

  if (i)
  {
    if (dest)
    {
      if (((destCapacity - v6) & ~((destCapacity - v6) >> 31)) >= i)
      {
        v15 = i;
      }

      else
      {
        v15 = (destCapacity - v6) & ~((destCapacity - v6) >> 31);
      }

      u_charsToUChars(src, &dest[v6], v15);
    }

    v6 += i;
  }

  if (dest && v6 < destCapacity)
  {
    dest += v6;
    goto LABEL_36;
  }

  return v6;
}

uint64_t sub_19529E108(int a1, uint64_t a2)
{
  us = 0;
  u_charsToUChars((a2 + a1), &us, 1);
  return us;
}

uint64_t u_asciiToUpper(int a1)
{
  if ((a1 - 97) >= 0x1A)
  {
    return a1;
  }

  else
  {
    return (a1 - 32);
  }
}

uint64_t u_terminateUChars(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  if (a4)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v4 = *a4;
      if (*a4 <= 0)
      {
        if (a3 >= a2)
        {
          if (a3 == a2)
          {
            v5 = -124;
          }

          else
          {
            v5 = 15;
          }
        }

        else
        {
          v5 = 0;
          *(a1 + 2 * a3) = 0;
          if (v4 != -124)
          {
            return a3;
          }
        }

        *a4 = v5;
      }
    }
  }

  return a3;
}

uint64_t u_terminateChars(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  if (a4 && (a3 & 0x80000000) == 0 && *a4 <= 0)
  {
    if (a3 >= a2)
    {
      if (a3 == a2)
      {
        v4 = -124;
      }

      else
      {
        v4 = 15;
      }
    }

    else
    {
      v4 = 0;
      *(a1 + a3) = 0;
      if (*a4 != -124)
      {
        return a3;
      }
    }

    *a4 = v4;
  }

  return a3;
}

uint64_t u_terminateUChar32s(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  if (a4)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v4 = *a4;
      if (*a4 <= 0)
      {
        if (a3 >= a2)
        {
          if (a3 == a2)
          {
            v5 = -124;
          }

          else
          {
            v5 = 15;
          }
        }

        else
        {
          v5 = 0;
          *(a1 + 4 * a3) = 0;
          if (v4 != -124)
          {
            return a3;
          }
        }

        *a4 = v5;
      }
    }
  }

  return a3;
}

uint64_t u_terminateWChars(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  if (a4)
  {
    if ((a3 & 0x80000000) == 0)
    {
      v4 = *a4;
      if (*a4 <= 0)
      {
        if (a3 >= a2)
        {
          if (a3 == a2)
          {
            v5 = -124;
          }

          else
          {
            v5 = 15;
          }
        }

        else
        {
          v5 = 0;
          *(a1 + 4 * a3) = 0;
          if (v4 != -124)
          {
            return a3;
          }
        }

        *a4 = v5;
      }
    }
  }

  return a3;
}

uint64_t ustr_hashUCharsN(unsigned __int16 *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2 - 1;
  if (a2 < 1)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = &a1[a2];
  if (a2 >= 32)
  {
    v2 = a2 - 32;
  }

  v5 = 2 * (v2 >> 5) + 2;
  do
  {
    v3 = *a1 + 37 * v3;
    a1 = (a1 + v5);
  }

  while (a1 < v4);
  return v3;
}

uint64_t ustr_hashCharsN(unsigned __int8 *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2 - 1;
  if (a2 < 1)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = &a1[a2];
  if (a2 >= 32)
  {
    v2 = a2 - 32;
  }

  v5 = ((v2 >> 5) + 1);
  do
  {
    v3 = *a1 + 37 * v3;
    a1 += v5;
  }

  while (a1 < v4);
  return v3;
}

unsigned __int8 *ustr_hashICharsN(unsigned __int8 *result, int a2)
{
  if (result)
  {
    v2 = a2 - 1;
    if (a2 < 1)
    {
      return 0;
    }

    else
    {
      v3 = result;
      LODWORD(result) = 0;
      v4 = &v3[a2];
      if (a2 >= 32)
      {
        v2 = a2 - 32;
      }

      v5 = ((v2 >> 5) + 1);
      do
      {
        result = (37 * result + uprv_asciitolower(*v3));
        v3 += v5;
      }

      while (v3 < v4);
    }
  }

  return result;
}

UChar *__cdecl u_strFromUTF32WithSub(UChar *dest, int32_t destCapacity, int32_t *pDestLength, const UChar32 *src, int32_t srcLength, UChar32 subchar, int32_t *pNumSubstitutions, UErrorCode *pErrorCode)
{
  if (*pErrorCode > 0)
  {
    return 0;
  }

  if (src)
  {
    v9 = 1;
  }

  else
  {
    v9 = srcLength == 0;
  }

  v10 = !v9;
  if ((destCapacity & 0x80000000) == 0 && srcLength >= -1 && (v10 & 1) == 0)
  {
    v8 = dest;
    v11 = destCapacity && dest == 0;
    if (!v11 && subchar < 1114112 && (subchar & 0xFFFFF800) != 0xD800)
    {
      if (pNumSubstitutions)
      {
        *pNumSubstitutions = 0;
      }

      if (dest)
      {
        v12 = &dest[destCapacity];
      }

      else
      {
        v12 = 0;
      }

      if (srcLength < 0)
      {
        v23 = *src;
        if (!*src)
        {
          v13 = 0;
          v16 = 0;
          v15 = dest;
LABEL_64:
          v25 = v13 + ((v15 - dest) >> 1);
          if (pDestLength)
          {
            *pDestLength = v25;
          }

          if (pNumSubstitutions)
          {
            *pNumSubstitutions = v16;
          }

          u_terminateUChars(dest, destCapacity, v25, pErrorCode);
          return v8;
        }

        v13 = 0;
        v15 = dest;
        while (v23 >> 11 < 0x1B || (v23 & 0xFFFFE000) == 0xE000)
        {
          if (v15 >= v12)
          {
            ++v13;
          }

          else
          {
            *v15++ = v23;
          }

          v24 = src[1];
          ++src;
          v23 = v24;
          if (!v24)
          {
            goto LABEL_61;
          }
        }

        v14 = src;
        do
        {
          v26 = v14[1];
          ++v14;
        }

        while (v26);
      }

      else
      {
        v13 = 0;
        if (src)
        {
          v14 = &src[srcLength];
        }

        else
        {
          v14 = 0;
        }

        v15 = dest;
      }

      if (src >= v14)
      {
LABEL_61:
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v18 = subchar >> 11 < 0x1B || (subchar & 0xFFFFE000) == 57344;
        do
        {
          v20 = *src++;
          v19 = v20;
          if (v20 >> 11 < 0x1B || (v19 & 0xFFFFE000) == 0xE000)
          {
LABEL_41:
            if (v15 >= v12)
            {
              ++v13;
            }

            else
            {
              *v15++ = v19;
            }
          }

          else
          {
            while ((v19 - 0x10000) >> 20)
            {
              if (subchar < 0)
              {
                v8 = 0;
                v21 = U_INVALID_CHAR_FOUND;
                goto LABEL_51;
              }

              ++v16;
              v19 = subchar;
              if (v18)
              {
                LOWORD(v19) = subchar;
                goto LABEL_41;
              }
            }

            if (v15 && v15 + 2 <= v12)
            {
              *v15 = (v19 >> 10) - 10304;
              v15[1] = v19 & 0x3FF | 0xDC00;
              v15 += 2;
            }

            else
            {
              v13 += 2;
            }
          }
        }

        while (src < v14);
      }

      goto LABEL_64;
    }
  }

  v8 = 0;
  v21 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_51:
  *pErrorCode = v21;
  return v8;
}

UChar32 *__cdecl u_strToUTF32WithSub(UChar32 *dest, int32_t destCapacity, int32_t *pDestLength, const UChar *src, int32_t srcLength, UChar32 subchar, int32_t *pNumSubstitutions, UErrorCode *pErrorCode)
{
  if (*pErrorCode > 0)
  {
    return 0;
  }

  if (src)
  {
    v9 = 1;
  }

  else
  {
    v9 = srcLength == 0;
  }

  v10 = !v9;
  if (destCapacity < 0 || srcLength < -1 || (v10 & 1) != 0 || ((v8 = dest, destCapacity) ? (v11 = dest == 0) : (v11 = 0), v11 || subchar >= 1114112 || (subchar & 0xFFFFF800) == 0xD800))
  {
    v8 = 0;
    v16 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_29;
  }

  if (pNumSubstitutions)
  {
    *pNumSubstitutions = 0;
  }

  if (dest)
  {
    v12 = &dest[destCapacity];
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
  if (srcLength < 0)
  {
    v17 = *src;
    v18 = *src != 0;
    if (!*src || (v17 & 0xF800) == 0xD800)
    {
      v15 = dest;
    }

    else
    {
      v13 = 0;
      v15 = dest;
      do
      {
        if (v15 >= v12)
        {
          ++v13;
        }

        else
        {
          *v15++ = v17;
        }

        v19 = src[1];
        ++src;
        v17 = v19;
        v18 = v19 != 0;
        v20 = v19 & 0xF800;
        if (v19)
        {
          v21 = v20 == 55296;
        }

        else
        {
          v21 = 1;
        }
      }

      while (!v21);
    }

    if (!v18)
    {
LABEL_62:
      v26 = v13 + ((v15 - v8) >> 2);
      if (pDestLength)
      {
        *pDestLength = v26;
      }

      if (pNumSubstitutions)
      {
        *pNumSubstitutions = v18;
      }

      u_terminateUChar32s(v8, destCapacity, v26, pErrorCode);
      return v8;
    }

    v14 = src;
    do
    {
      v22 = v14[1];
      ++v14;
    }

    while (v22);
  }

  else
  {
    if (src)
    {
      v14 = &src[srcLength];
    }

    else
    {
      v14 = 0;
    }

    v15 = dest;
  }

  if (src >= v14)
  {
    v18 = 0;
    goto LABEL_62;
  }

  v18 = 0;
  while (1)
  {
    v24 = src + 1;
    v23 = *src;
    if ((v23 & 0xF800) != 0xD800)
    {
      ++src;
      goto LABEL_56;
    }

    if ((v23 & 0x400) != 0)
    {
      break;
    }

    if (v24 >= v14)
    {
      break;
    }

    v25 = *v24;
    if ((v25 & 0xFC00) != 0xDC00)
    {
      break;
    }

    src += 2;
    v23 = v25 + (v23 << 10) - 56613888;
LABEL_56:
    if (v15 >= v12)
    {
      ++v13;
    }

    else
    {
      *v15++ = v23;
    }

    if (src >= v14)
    {
      goto LABEL_62;
    }
  }

  if ((subchar & 0x80000000) == 0)
  {
    ++v18;
    ++src;
    v23 = subchar;
    goto LABEL_56;
  }

  v8 = 0;
  v16 = U_INVALID_CHAR_FOUND;
LABEL_29:
  *pErrorCode = v16;
  return v8;
}