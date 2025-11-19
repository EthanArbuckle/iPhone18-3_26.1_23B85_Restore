uint64_t utf8_Utf8CharTo16bit(unsigned __int8 *a1, uint64_t a2)
{
  v2 = UTF8_TRAILING_BYTES[*a1];
  if (utf8_Utf8ToUtf16(a1, v2 + 1, 0, a2, 1u, 0, 0) >= 0)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t utf8_Utf8CharTo32bit(unsigned __int8 *a1, uint64_t a2)
{
  v2 = UTF8_TRAILING_BYTES[*a1];
  if (utf8_Utf8ToUtf32(a1, v2 + 1, 0, a2, 1u, 0, 0) >= 0)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t utf8_Utf8ToUtf32(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, unsigned int a5, _DWORD *a6, unsigned int *a7)
{
  LODWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  LODWORD(v10) = 0;
  if (a2 && a5)
  {
    v7 = 0;
    v11 = 0;
    v9 = -1950342907;
    v12 = a5;
    while (1)
    {
      v13 = *(a1 + v11);
      v14 = UTF8_TRAILING_BYTES[*(a1 + v11)];
      if (v11 + v14 > a2)
      {
        v8 = 0;
        *(a4 + 4 * v7) = 0;
        v9 = 197140487;
        goto LABEL_38;
      }

      if ((UTF8_BYTE_INDICATOR_TEST[v14] & v13) != UTF8_BYTE_INDICATOR[v14])
      {
        break;
      }

      if (a7)
      {
        *a7 = v11;
        a7[1] = v11;
        a7 += 2;
        v13 = *(a1 + v11);
      }

      v10 = v11 + 1;
      if (v14 > 1)
      {
        if (v14 == 2)
        {
          v17 = *(a1 + v10);
          if (v13 == 237)
          {
            if (v17 >= 0xA0)
            {
              goto LABEL_35;
            }
          }

          else if (v13 == 224 && v17 < 0xA0)
          {
LABEL_35:
            *(a4 + 4 * v7) = 0;
            v8 = 1;
            goto LABEL_39;
          }

          if ((v17 & 0xC0) != 0x80)
          {
            goto LABEL_35;
          }

          v18 = *(a1 + v11 + 2);
          if ((v18 & 0xC0) != 0x80)
          {
            goto LABEL_35;
          }

          v11 += 3;
          v13 = (v17 << 6) + (v13 << 12) + v18;
        }

        else
        {
          if (v14 != 3)
          {
            goto LABEL_35;
          }

          v16 = *(a1 + v10);
          if (v13 == 244)
          {
            if (v16 >= 0x90)
            {
              goto LABEL_35;
            }
          }

          else if (v13 == 240 && v16 < 0x90)
          {
            goto LABEL_35;
          }

          if ((v16 & 0xC0) != 0x80)
          {
            goto LABEL_35;
          }

          v19 = *(a1 + v11 + 2);
          if ((v19 & 0xC0) != 0x80)
          {
            goto LABEL_35;
          }

          v20 = *(a1 + v11 + 3);
          if ((v20 & 0xC0) != 0x80)
          {
            goto LABEL_35;
          }

          v11 += 4;
          v13 = v20 + (((v16 << 6) + (v13 << 12) + v19) << 6);
        }
      }

      else if (v14)
      {
        v15 = *(a1 + v10);
        if ((v15 & 0xC0) != 0x80)
        {
          goto LABEL_35;
        }

        v11 += 2;
        v13 = v15 + (v13 << 6);
      }

      else
      {
        ++v11;
      }

      *(a4 + 4 * v7++) = v13 - UTF8_OFFSETS[v14];
      if (v11 >= a2 || v7 >= v12)
      {
        v8 = 0;
        v9 = 0;
        goto LABEL_38;
      }
    }

    *(a4 + 4 * v7) = 0;
    v8 = 1;
LABEL_38:
    LODWORD(v10) = v11;
  }

LABEL_39:
  if (a3)
  {
    *a3 = v10;
  }

  if (a6)
  {
    *a6 = v7;
  }

  if (v10 == a2)
  {
    v21 = 1;
  }

  else
  {
    v21 = v8;
  }

  if (v21)
  {
    return v9;
  }

  else
  {
    return 2344624137;
  }
}

uint64_t utf8_utf8stolh_u16(const char *a1, uint64_t a2)
{
  v6 = 0;
  v4 = cstdlib_strlen(a1);
  utf8_Utf8ToUtf16(a1, v4 + 1, 0, a2, 0xFFFFFFFF, &v6, 0);
  return v6;
}

uint64_t utf8_Utf8ToUtf32_Tolerant(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  LODWORD(v5) = 0;
  if (a2 && a4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(a1 + v6);
      v8 = UTF8_TRAILING_BYTES[*(a1 + v6++)];
      v9 = v7 & ~UTF8_BYTE_INDICATOR[v8];
      if (v7 >= 0xC2)
      {
        if (v8 <= 1)
        {
          LODWORD(v8) = 1;
        }

        do
        {
          v9 <<= 6;
          if (v6 < a2)
          {
            v10 = *(a1 + v6++);
            v9 |= v10 & 0x3F;
          }

          LODWORD(v8) = v8 - 1;
        }

        while (v8);
      }

      *(a3 + 4 * v5++) = v9;
    }

    while (v6 < a2 && v5 < a4);
  }

  if (a5)
  {
    *a5 = v5;
  }

  return 0;
}

uint64_t Utf32SymToUtf8Sym(unsigned int a1, _BYTE *a2, unsigned int a3)
{
  result = 2344624137;
  if (a3 >= 5)
  {
    if (a1 <= 0x7F)
    {
      result = 0;
      *a2 = a1;
      a2[1] = 0;
      return result;
    }

    if (a1 <= 0x7FF)
    {
      result = 0;
      a2[2] = 0;
      a2[1] = a1 & 0x3F | 0x80;
      v5 = (a1 >> 6) | 0xC0;
LABEL_10:
      *a2 = v5;
      return result;
    }

    if (!HIWORD(a1))
    {
      result = 0;
      a2[3] = 0;
      a2[2] = a1 & 0x3F | 0x80;
      a2[1] = (a1 >> 6) & 0x3F | 0x80;
      v5 = (a1 >> 12) | 0xE0;
      goto LABEL_10;
    }

    if (HIWORD(a1) <= 0x10u)
    {
      result = 0;
      a2[4] = 0;
      a2[3] = a1 & 0x3F | 0x80;
      a2[2] = (a1 >> 6) & 0x3F | 0x80;
      a2[1] = (a1 >> 12) & 0x3F | 0x80;
      v5 = (a1 >> 18) | 0xF0;
      goto LABEL_10;
    }

    *a2 = 0;
    return 2344624389;
  }

  return result;
}

uint64_t utf8_Utf32ToUtf8(uint64_t a1, int a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  *a5 = 0;
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  result = 2344624137;
  while (1)
  {
    v9 = *(a1 + 4 * v6);
    if (v9 > 0x7F)
    {
      break;
    }

    v14 = *(a1 + 4 * v6);
    v10 = 1;
LABEL_11:
    if (v10 + v7 > a4)
    {
      return result;
    }

    v11 = v10;
    v12 = &v14;
    do
    {
      v13 = *v12++;
      *(a3 + v7++) = v13;
      --v11;
    }

    while (v11);
    *a5 += v10;
    if (++v6 == a2)
    {
      return 0;
    }
  }

  if (v9 <= 0x7FF)
  {
    v15 = v9 & 0x3F | 0x80;
    v14 = (v9 >> 6) | 0xC0;
    v10 = 2;
    goto LABEL_11;
  }

  if (!HIWORD(v9))
  {
    v16 = v9 & 0x3F | 0x80;
    v15 = (v9 >> 6) & 0x3F | 0x80;
    v14 = (v9 >> 12) | 0xE0;
    v10 = 3;
    goto LABEL_11;
  }

  if (HIWORD(v9) <= 0x10u)
  {
    v17 = v9 & 0x3F | 0x80;
    v16 = (v9 >> 6) & 0x3F | 0x80;
    v15 = (v9 >> 12) & 0x3F | 0x80;
    v14 = (v9 >> 18) | 0xF0;
    v10 = 4;
    goto LABEL_11;
  }

  return 2344624389;
}

uint64_t utf8_utf8stolh_u32(const char *a1, uint64_t a2)
{
  v6 = 0;
  v4 = cstdlib_strlen(a1);
  utf8_Utf8ToUtf32(a1, v4 + 1, 0, a2, 0xFFFFFFFF, &v6, 0);
  return v6;
}

uint64_t utf8_determineUTF8CharLength(unsigned int a1)
{
  result = 0;
  if (a1 <= 0xF5 && a1 - 194 <= 0xFFFFFFFD)
  {
    return UTF8_TRAILING_BYTES[a1] + 1;
  }

  return result;
}

uint64_t utf8_getUTF8Char(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  v3 = *(a1 + a2);
  if (v3 > 0xF5 || v3 - 194 > 0xFFFFFFFD)
  {
    return 2344624389;
  }

  v6 = UTF8_TRAILING_BYTES[*(a1 + a2)];
  v7 = v6 + 1;
  v8 = a3;
  do
  {
    *v8++ = *(a1 + a2++);
    --v7;
  }

  while (v7);
  result = 0;
  a3[v6 + 1] = 0;
  return result;
}

uint64_t utf8_GetWCharFromUtf8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *MEMORY[0x277D85DE8];
  utf8_GetUtf8Symbol(a1, a2, a3, __s);
  if (Utf8_Utf8NbrOfSymbols(__s) > 2)
  {
    return 0;
  }

  v4 = 0;
  utf8_Utf8ToUtf16(__s, UTF8_TRAILING_BYTES[__s[0]] + 1, 0, &v4, 1u, 0, 0);
  return v4;
}

uint64_t utf8_GetUtf8Symbol(uint64_t result, unsigned int a2, unsigned int a3, char *__s)
{
  *__s = 0;
  if (result)
  {
    v4 = result;
    result = 0;
    if (a2 < a3)
    {
      LOBYTE(v5) = *v4;
      if (*v4)
      {
        if (a2)
        {
          while (v4[a2] <= -65)
          {
            if (!--a2)
            {
              goto LABEL_7;
            }
          }

          LOBYTE(v5) = v4[a2];
          if (!v5)
          {
            return 1;
          }
        }

        else
        {
LABEL_7:
          a2 = 0;
          result = 0;
          if (v5 < -64)
          {
            return result;
          }

          if (!*v4)
          {
            return 1;
          }
        }

        v7 = 0;
        v8 = a2 + 1;
        while (1)
        {
          v9 = &__s[v7];
          *v9 = v5;
          v9[1] = 0;
          v10 = cstdlib_strlen(__s);
          if (utf8_CheckValid(__s, v10))
          {
            break;
          }

          v11 = v7 + 1;
          if (v7 <= 7)
          {
            v5 = v4[v8 + v7++];
            if (v5)
            {
              continue;
            }
          }

          return (v11 + 1);
        }

        v11 = v7;
        return (v11 + 1);
      }
    }
  }

  return result;
}

uint64_t utf8_GetU32FromUtf8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *MEMORY[0x277D85DE8];
  utf8_GetUtf8Symbol(a1, a2, a3, __s);
  if (Utf8_Utf8NbrOfSymbols(__s) > 2)
  {
    return 0;
  }

  v4 = 0;
  utf8_Utf8ToUtf32(__s, UTF8_TRAILING_BYTES[__s[0]] + 1, 0, &v4, 1u, 0, 0);
  return v4;
}

size_t utf8_GetNextUtf8Offset(char *__s, int a2)
{
  if (!__s || !*__s)
  {
    return 0;
  }

  LODWORD(v3) = a2;
  v4 = cstdlib_strlen(__s);
  if (v4 > v3)
  {
    v5 = (v4 - 1) - v3;
    v6 = &__s[v3 + 1];
    while (v5)
    {
      v7 = *v6++;
      --v5;
      v3 = (v3 + 1);
      if (v7 >= -64)
      {
        return v3;
      }
    }
  }

  return v4;
}

uint64_t utf8_GetNextUtf8OffsetLimit(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !*a1)
  {
    return 1;
  }

  if (a2 < a3)
  {
    v3 = (a3 - 1) - a2;
    v4 = &a1[a2 + 1];
    while (v3)
    {
      v5 = *v4++;
      --v3;
      a2 = (a2 + 1);
      if (v5 >= -64)
      {
        return a2;
      }
    }
  }

  return a3;
}

uint64_t utf8_GetPreviousValidUtf8Offset(uint64_t result, unsigned int *a2)
{
  for (i = *a2; i; *a2 = --i)
  {
    if (*(result + i) > -65)
    {
      break;
    }
  }

  return result;
}

uint64_t utf8_GetPreviousUtf8Offset(uint64_t __s, unsigned int a2)
{
  if (__s)
  {
    v2 = __s;
    if (*__s)
    {
      v4 = cstdlib_strlen(__s);
      if (v4 >= a2)
      {
        v5 = a2;
      }

      else
      {
        v5 = v4;
      }

      if (!v5)
      {
        return 0xFFFFFFFFLL;
      }

      while (*(v2 + v5) < -64)
      {
        if (!--v5)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v6 = v5 - 1;
      while (v6)
      {
        v7 = *(v2 + v6--);
        if (v7 >= -64)
        {
          return v6 + 1;
        }
      }
    }

    return 0;
  }

  return __s;
}

uint64_t utf8_GetPreviousUtf8OffsetLimit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (result)
  {
    if (*result)
    {
      v3 = a3 - 1;
      if (a2 < a3)
      {
        v3 = a2;
      }

      if (!v3)
      {
        return 0xFFFFFFFFLL;
      }

      while (*(result + v3) < -64)
      {
        if (!--v3)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v4 = v3 - 1;
      while (v4)
      {
        v5 = *(result + v4--);
        if (v5 >= -64)
        {
          return v4 + 1;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t utf8_GetCurrentUtf8Offset(unint64_t __s, unsigned int a2)
{
  if (__s)
  {
    v2 = __s;
    if (*__s)
    {
      LODWORD(__s) = cstdlib_strlen(__s);
      if (__s >= a2)
      {
        __s = a2;
      }

      else
      {
        __s = __s;
      }

      for (; __s; __s = (__s - 1))
      {
        if (v2[__s] > -65)
        {
          break;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return __s;
}

uint64_t utf8_BelongsToSet(unsigned int a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a1 == 4)
  {
    v8 = (a2 + a3);
    if (!cstdlib_strncmp(v8, "﻿", 3uLL) || a3 <= a4 && !*v8)
    {
      return 1;
    }
  }

  else if (a1 == 3)
  {
    if (a3 <= a4 && !*(a2 + a3))
    {
      return 1;
    }
  }

  else if (a1 == 2 && !cstdlib_strncmp((a2 + a3), "﻿", 3uLL))
  {
    return 1;
  }

  result = Utf8_GetWCharClassifier(a1);
  if (result)
  {
    v10 = result;
    result = utf8_GetWCharFromUtf8(a2, a3, a4);
    if (result)
    {

      return v10();
    }
  }

  return result;
}

BOOL utf8_ToLower(const char *a1, unsigned int a2, uint64_t a3)
{
  v6 = cstdlib_strlen(a1);
  WCharFromUtf8 = utf8_GetWCharFromUtf8(a1, a2, v6);
  WCharClassifier = Utf8_GetWCharClassifier(0x12u);
  if (WCharClassifier && (WCharClassifier)(WCharFromUtf8))
  {
    goto LABEL_5;
  }

  v9 = Utf8_GetWCharClassifier(0x15u);
  if (v9)
  {
    if ((v9)(WCharFromUtf8))
    {
      goto LABEL_5;
    }
  }

  v13 = Utf8_GetWCharClassifier(0x18u);
  if (v13 && (v13)(WCharFromUtf8))
  {
    if (WCharFromUtf8 == 304)
    {
      LOWORD(v10) = -199;
    }

    else
    {
      if (WCharFromUtf8 != 376)
      {
        v11 = 1;
        LOWORD(v10) = 1;
        goto LABEL_7;
      }

      LOWORD(v10) = -121;
    }

    goto LABEL_6;
  }

  v14 = Utf8_GetWCharClassifier(0x1Bu);
  if (v14 && (v14)(WCharFromUtf8))
  {
    if ((WCharFromUtf8 - 902) < 0xA)
    {
      LOWORD(v10) = asc_26ECC8D94[(WCharFromUtf8 - 902)];
      goto LABEL_6;
    }

LABEL_5:
    LOWORD(v10) = 32;
LABEL_6:
    v11 = 1;
    goto LABEL_7;
  }

  v10 = Utf8_GetWCharClassifier(0x1Eu);
  if (v10)
  {
    v15 = (v10)(WCharFromUtf8);
    if (((WCharFromUtf8 - 1040) & 0xFFE0) != 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = 32;
    }

    if ((WCharFromUtf8 & 0xFFF0) == 0x400)
    {
      v17 = 80;
    }

    else
    {
      v17 = v16;
    }

    v11 = v15 != 0;
    if (v15)
    {
      LOWORD(v10) = v17;
    }

    else
    {
      LOWORD(v10) = 0;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_7:
  v18[0] = v10 + WCharFromUtf8;
  v18[1] = 0;
  utf8_16bitToUtf8(v18, a3);
  return v11;
}

char *utf8_strchr(char *a1, const char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (v3 > 0xF5 || v3 - 194 > 0xFFFFFFFD)
  {
    v5 = 0;
  }

  else
  {
    v5 = UTF8_TRAILING_BYTES[*a2] + 1;
  }

  cstdlib_strncpy(__dst, a2, v5);
  __dst[v5] = 0;
  return cstdlib_strstr(a1, __dst);
}

BOOL utf8_IsChineseLetter(const char *a1)
{
  v5 = 0;
  v2 = cstdlib_strlen(a1);
  v4 = 0;
  utf8_Utf8ToUtf32_Tolerant(a1, v2, &v5, 1u, &v4);
  return v4 && wchar_IsChineseLetter(v5) != 0;
}

uint64_t utf8_GetMaxChineseDCTWordUTFLen(uint64_t a1, unsigned int a2, int a3, _WORD *a4)
{
  v4 = 0;
  v5 = 0;
  do
  {
    if (v4 >= a2)
    {
      LOWORD(a3) = v5;
      goto LABEL_13;
    }

    v6 = *(a1 + v4);
    if (v6 > 0xF5 || v6 - 194 > 0xFFFFFFFD)
    {
      v8 = 0;
    }

    else
    {
      v8 = UTF8_TRAILING_BYTES[*(a1 + v4)] + 1;
    }

    v4 += v8;
    ++v5;
  }

  while (a3 != v5);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_13:
  v4 = a2;
LABEL_14:
  *a4 = a3;
  return v4;
}

uint64_t utf8_GetChineseUTFCharNum(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + v2);
      if (v4 > 0xF5 || v4 - 194 > 0xFFFFFFFD)
      {
        v6 = 0;
      }

      else
      {
        v6 = UTF8_TRAILING_BYTES[*(a1 + v2)] + 1;
      }

      ++v3;
      v2 = (v6 + v2);
    }

    while (v2 < a2);
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t utf8_strdupFromUtf16(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v3 = *a2;
  if (*a2)
  {
    v4 = (a2 + 2);
    LODWORD(a2) = 1;
    do
    {
      if (v3 < 0x800)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      if (v3 < 0x80)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      a2 = (v6 + a2);
      v7 = *v4++;
      v3 = v7;
    }

    while (v7);
  }

  else
  {
    a2 = 1;
  }

  v8 = heap_Calloc(a1, a2, 1);
  if (v8)
  {
    utf8_16bitToUtf8(v2, v8);
  }

  return v8;
}

uint64_t utf8_countNbrOfPhonWords(uint64_t a1, unsigned int a2, _WORD *a3, _WORD *a4)
{
  *a3 = 0;
  *a4 = a2;
  if (!a2)
  {
    v9 = -1;
LABEL_8:
    v10 = v9;
    do
    {
      if (!utf8_BelongsToSet(0, a1, v10, a2))
      {
        break;
      }

      --*a4;
      --v10;
    }

    while (v10);
    goto LABEL_11;
  }

  for (i = 0; i != a2; ++i)
  {
    if (!utf8_BelongsToSet(0, a1, i, a2))
    {
      break;
    }

    ++*a3;
  }

  v9 = a2 - 1;
  if (a2 != 1)
  {
    goto LABEL_8;
  }

LABEL_11:
  v11 = *a3;
  v12 = *a4;
  if (v11 >= v12)
  {
    return 0;
  }

  else
  {
    v13 = 0;
    v14 = 95;
    do
    {
      v15 = *(a1 + v11);
      if (v15 == 35 || v15 == 95)
      {
        if (v14 != 35 && v14 != 95)
        {
          ++v13;
        }
      }

      else if (v15 == 92)
      {
        v16 = v11 + 1;
        if (v16 < v12 && *(a1 + v16) == 84)
        {
          for (j = v11 + 2; j < v12; j += v20)
          {
            v18 = *(a1 + j);
            if (v18 == 92)
            {
              break;
            }

            if (v18 > 0xF5 || v18 - 194 > 0xFFFFFFFD)
            {
              v20 = 0;
            }

            else
            {
              v20 = UTF8_TRAILING_BYTES[*(a1 + j)] + 1;
            }
          }

          if (*(a1 + j) == 92)
          {
            v11 = j;
          }
        }
      }

      if (!utf8_BelongsToSet(0, a1, v11, a2))
      {
        v14 = *(a1 + v11);
      }

      ++v11;
      v12 = *a4;
    }

    while (v12 > v11);
    if (v14 == 95)
    {
      v21 = v13;
    }

    else
    {
      v21 = v13 + 1;
    }

    if (v14 == 35)
    {
      return v13;
    }

    else
    {
      return v21;
    }
  }
}

uint64_t wchar_IsChineseLetter(unsigned int a1)
{
  v1 = vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_26ECC8DC0, vaddq_s32(vdupq_n_s32(a1), xmmword_26ECC8DB0))));
  v3 = (a1 - 173824) >> 4 < 0x27B || a1 - 194560 < 0x21E;
  return v1 & 1 | (a1 - 0x20000 < 0xA6D7) | v3;
}

uint64_t (*Utf8_GetWCharClassifier(unsigned int a1))()
{
  if (a1 > 0x24)
  {
    return 0;
  }

  else
  {
    return off_287EE97D0[a1];
  }
}

BOOL wchar_IsBlank(unsigned int a1)
{
  if (LH_wcschr(&szBLANKS, a1))
  {
    return 1;
  }

  if (a1 < 0xA0)
  {
    return 0;
  }

  v3 = 0;
  v4 = 24;
  while (1)
  {
    v5 = (v3 + v4) / 2;
    v6 = wchar_IsBlank_wisspaceList[v5];
    if (v6 <= a1)
    {
      break;
    }

    v4 = v5 - 1;
LABEL_9:
    if (v3 > v4)
    {
      return 0;
    }
  }

  if (v6 < a1)
  {
    v3 = v5 + 1;
    goto LABEL_9;
  }

  return v5 != 0xFFFF;
}

uint64_t wchar_IsWordChar(unsigned int a1)
{
  v1 = 1;
  if ((a1 - 162 > 0x1C || ((1 << (a1 + 94)) & 0x1D8BD1AB) == 0) && (a1 - 36 > 0x3A || ((1 << (a1 - 36)) & 0x400000012000087) == 0) && a1 != 126)
  {
    v3 = vcgt_u16(vadd_s16(vdup_n_s16(a1), 0xFF40FF9FFFBFFFD0), 0xFFBAFFF9FFF8FFF0);
    v3.i16[0] = vmaxv_u16(v3);
    LODWORD(v1) = (((a1 - 8304) >> 4) < 0xFF9u) & ~v3.i32[0];
    if (((a1 + 16) >> 6) >= 0x3F9u || (a1 & 0xFFC0) == 12288)
    {
      return 0;
    }

    else
    {
      return v1;
    }
  }

  return v1;
}

uint64_t wchar_IsPunctuation(unsigned int a1)
{
  v1 = vmaxv_u16(vcgt_u16(0x4500060007000FLL, vadd_s16(vdup_n_s16(a1), 0xFF85FFA5FFC6FFDFLL)));
  v3 = (a1 + 464) < 0x1C0u || (a1 & 0xFFC0) == 12288;
  return v1 & 1 | (a1 - 0x2000 < 0x70) | v3;
}

uint64_t wchar_IsLatinExtendedACapitalLetter(int a1)
{
  v1 = (a1 - 256) <= 0x36 && (a1 & 1) == 0;
  if (v1 || (a1 - 328) >= 0xFFFFFFF1 && (a1 & 1) != 0 || (a1 - 330) <= 0x2E && (a1 & 1) == 0)
  {
    return 1;
  }

  if ((a1 - 377) >= 5)
  {
    return 0;
  }

  return a1 & 1;
}

uint64_t wchar_IsGreekCapitalLetter(int a1)
{
  if (a1 - 902) < 7 && ((0x5Du >> (a1 + 122)))
  {
    return 1;
  }

  v2 = (a1 - 913) < 0x11u || (a1 - 931) < 9;
  return (a1 & 0xFFFE) == 0x38E || v2;
}

BOOL wchar_IsCyrillicCapitalLetter(int a1)
{
  if ((a1 - 1024) < 0x30 || (a1 - 1120) <= 0x20 && (a1 & 1) == 0)
  {
    return 1;
  }

  if ((a1 - 1164) <= 0x32)
  {
    goto LABEL_8;
  }

  v1 = ((a1 - 1217) >> 1) | ((a1 - 1217) << 15);
  if (v1 < 6u && ((0x2Bu >> v1) & 1) != 0)
  {
    return 1;
  }

  if ((a1 - 1232) <= 0x24)
  {
LABEL_8:
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  return a1 == 1272;
}

char *LH_MapModuleNameToId(char *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      v2 = &word_279DA9CB8;
      v3 = 254;
      while (LH_stricmp(v1, *(v2 - 1)))
      {
        v2 += 8;
        if (!--v3)
        {
          return 0;
        }
      }

      return *v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t LH_MapModuleNamesToIds(char *a1, char *a2, unsigned int a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 18;
  }

  v5 = a1;
  *a2 = 0;
  if (!a1 || !*a1)
  {
    v5 = "all";
  }

  if (LH_stricmp(v5, "all"))
  {
    if (!LH_strnicmp(v5, "skip", 4uLL))
    {
      snprintf(a2, a3, "skip");
    }

    for (i = v5; ; ++i)
    {
      v7 = *i;
      v8 = v7 > 0x3B;
      v9 = (1 << v7) & 0x800100100000001;
      if (v8 || v9 == 0)
      {
        continue;
      }

      v11 = i - v5;
      if ((i - v5 - 1) <= 0x3E)
      {
        cstdlib_strncpy(__dst, v5, v11);
        __dst[v11] = 0;
        if (__dst[0] - 48 > 9)
        {
          v12 = LH_MapModuleNameToId(__dst);
          if (v12)
          {
LABEL_18:
            if (*a2 && cstdlib_strlen(a2) + 1 < a3)
            {
              cstdlib_strcat(a2, " ");
            }

            __sprintf_chk(__dst, 0, 0x40uLL, "%d", v12);
            v13 = cstdlib_strlen(a2);
            if (cstdlib_strlen(__dst) + v13 < a3)
            {
              cstdlib_strcat(a2, __dst);
            }
          }
        }

        else
        {
          v12 = LH_atoi(__dst);
          if (v12)
          {
            goto LABEL_18;
          }
        }
      }

      if (!*i)
      {
        return 0;
      }

      v5 = ++i;
    }
  }

  snprintf(a2, a3, "%s", v5);
  return 0;
}

uint64_t base64_encode(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a3 && a4)
  {
    v5 = 0;
    v6 = 0;
    *a4 = 0;
    v7 = a2;
    while (2)
    {
      v8 = 0;
      v9 = 0;
      v10 = 16;
      while (1)
      {
        v11 = *(a1 + v5 + v8);
        v12 = v9 | v11;
        if (v8 == 2)
        {
          break;
        }

        v9 = (v12 << 8);
        ++v8;
        v10 -= 8;
        if (v7 - v5 == v8)
        {
          v15 = (v9 << v10);
          v16 = (a3 + v6);
          *v16 = base64_alphabet_[v15 >> 18];
          v16[1] = base64_alphabet_[(v15 >> 12) & 0x3F];
          v17 = 61;
          if (v8 != 1)
          {
            v17 = base64_alphabet_[(v15 >> 6) & 0x3CLL];
          }

          *(a3 + (v6 | 2)) = v17;
          v6 += 4;
          v16[3] = 61;
          goto LABEL_15;
        }
      }

      v13 = (a3 + v6);
      *v13 = base64_alphabet_[v9 >> 18];
      v13[1] = base64_alphabet_[(v9 >> 12) & 0x3F];
      v13[2] = base64_alphabet_[(v12 >> 6) & 0x3F];
      v6 += 4;
      v13[3] = base64_alphabet_[v11 & 0x3F];
      v14 = ~v5 + v7;
      v5 += v8 + 1;
      if (v14 != v8)
      {
        continue;
      }

      break;
    }

LABEL_15:
    v4 = 0;
    *a4 = v6;
  }

  return v4;
}

uint64_t base64_decode(unsigned __int8 *a1, _BYTE *a2, _DWORD *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *a1;
  LODWORD(v7) = a1;
  if (v6)
  {
    v7 = a1;
    do
    {
      if (v6 != 61 && base64_member_[v6] != 1 && !cstdlib_isspace(v6))
      {
        break;
      }

      v8 = *++v7;
      v6 = v8;
    }

    while (v8);
  }

  result = 0xFFFFFFFFLL;
  if (a2 && a3)
  {
    *a3 = 0;
    v10 = v7 - a1;
    if (v7 == a1)
    {
      v14 = 0;
      v13 = 0;
      v12 = 0;
      LODWORD(v11) = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        v15 = a1[v11];
        if (v15 == 61)
        {
          break;
        }

        if (base64_member_[v15])
        {
          v16 = v13 + base64_decoder_[v15];
          if (++v14 == 4)
          {
            v14 = 0;
            v13 = 0;
            a2[v12] = BYTE2(v16);
            v17 = v12 + 2;
            a2[v12 + 1] = BYTE1(v16);
            v12 += 3;
            a2[v17] = v16;
          }

          else
          {
            v13 = v16 << 6;
          }
        }

        if (v10 == ++v11)
        {
          goto LABEL_22;
        }
      }
    }

    if (v11 == v10)
    {
LABEL_22:
      if (v14)
      {
LABEL_23:
        *a2 = 0;
        return 0xFFFFFFFFLL;
      }

      goto LABEL_30;
    }

    switch(v14)
    {
      case 1:
        goto LABEL_23;
      case 2:
        v19 = 1;
        v20 = 10;
        v18 = v12;
        break;
      case 3:
        v18 = v12 + 1;
        a2[v12] = BYTE2(v13);
        v19 = 2;
        v20 = 8;
        break;
      default:
LABEL_30:
        result = 0;
        *a3 = v12;
        return result;
    }

    v12 += v19;
    a2[v18] = v13 >> v20;
    goto LABEL_30;
  }

  return result;
}

uint64_t cstdlib_abs(uint64_t result)
{
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return -result;
  }
}

uint64_t cstdlib_labs(uint64_t result)
{
  if (result < 0)
  {
    return -result;
  }

  return result;
}

uint64_t cstdlib_atol(unsigned __int8 *a1)
{
  do
  {
    v2 = *a1++;
  }

  while (cstdlib_isspace(v2));
  v3 = *(a1 - 1);
  if (v3 == 43 || v3 == 45)
  {
    v5 = *a1++;
    v4 = v5;
  }

  else
  {
    v4 = *(a1 - 1);
  }

  v6 = 0;
  if (cstdlib_isdigit(v4))
  {
    do
    {
      v6 = 10 * v6 + v4 - 48;
      v7 = *a1++;
      v4 = v7;
    }

    while (cstdlib_isdigit(v7));
  }

  if (v3 == 45)
  {
    return -v6;
  }

  else
  {
    return v6;
  }
}

unint64_t strtoxl(unsigned __int8 *a1, unsigned __int8 **a2, unsigned int a3, int a4)
{
  v8 = a1;
  do
  {
    v10 = *v8++;
    v9 = v10;
  }

  while (cstdlib_isspace(v10));
  if (v9 == 43)
  {
    goto LABEL_6;
  }

  if (v9 == 45)
  {
    a4 |= 2u;
LABEL_6:
    v11 = *v8++;
    v9 = v11;
  }

  if (a3 <= 0x24 && a3 != 1)
  {
    if (!a3)
    {
      if (v9 != 48)
      {
        a3 = 10;
LABEL_23:
        v13 = 0;
        v14 = a3;
        v15 = 0xFFFFFFFFFFFFFFFFLL / a3;
        for (i = v8 - 1; ; ++i)
        {
          if (cstdlib_isdigit(v9))
          {
            v17 = v9 - 48;
          }

          else
          {
            if (!cstdlib_isalpha(v9))
            {
              break;
            }

            v17 = cstdlib_toupper(v9) - 55;
          }

          if (v17 >= v14)
          {
            break;
          }

          if (v13 < v15 || v13 == v15 && ~(v15 * v14) >= v17)
          {
            a4 |= 8u;
            v13 = v17 + v13 * v14;
          }

          else
          {
            a4 |= 0xCu;
          }

          v18 = i[1];
          LOBYTE(v9) = v18;
        }

        if ((a4 & 8) == 0)
        {
          v13 = 0;
          if (!a2)
          {
            goto LABEL_51;
          }

          i = a1;
          goto LABEL_50;
        }

        if ((a4 & 4) != 0)
        {
          if (a4)
          {
            v13 = -1;
            if (!a2)
            {
LABEL_51:
              if ((a4 & 2) != 0)
              {
                return -v13;
              }

              else
              {
                return v13;
              }
            }

LABEL_50:
            *a2 = i;
            goto LABEL_51;
          }
        }

        else if ((a4 & 1) != 0 || ((a4 & 2) == 0 || v13 <= 0x8000000000000000) && ((a4 & 2) != 0 || (v13 & 0x8000000000000000) == 0))
        {
LABEL_49:
          if (!a2)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        if ((a4 & 2) != 0)
        {
          v13 = 0x8000000000000000;
        }

        else
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        goto LABEL_49;
      }

      if (((*v8 - 88) & 0xDF) != 0)
      {
        a3 = 8;
      }

      else
      {
        a3 = 16;
      }
    }

    if (a3 == 16 && v9 == 48)
    {
      if ((*v8 | 0x20) == 0x78)
      {
        LOBYTE(v9) = v8[1];
        v8 += 2;
      }

      else
      {
        LOBYTE(v9) = 48;
      }

      a3 = 16;
    }

    goto LABEL_23;
  }

  result = 0;
  if (a2)
  {
    *a2 = a1;
  }

  return result;
}

uint64_t cstdlib_toupper(uint64_t result)
{
  if ((_ssft_pctype[result] & 2) != 0)
  {
    return (result - 32);
  }

  else
  {
    return result;
  }
}

uint64_t cstdlib_strtod(unsigned __int8 *a1, unsigned __int8 **a2)
{
  v3 = a1;
  v4 = a1 - 1;
  do
  {
    v5 = *++v4;
  }

  while (cstdlib_isspace(v5));
  v6 = 0;
  v7 = *v4;
  v8 = v7 == 45 || v7 == 43;
  v9 = v8;
  if (v8)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = v4;
  }

  v11 = -1;
  while (1)
  {
    v12 = v10[v6];
    result = cstdlib_isdigit(v12);
    if (result)
    {
      goto LABEL_17;
    }

    if (v12 != 46 || (v11 & 0x80000000) == 0)
    {
      break;
    }

    v11 = v6;
LABEL_17:
    ++v6;
  }

  v14 = ~v11;
  v15 = ~v11 >> 31;
  if (v11 < 0)
  {
    v11 = v6;
  }

  v16 = v6 + (v14 >> 31);
  if (v16 <= 18)
  {
    v16 = 18;
  }

  v17 = v15 + v6;
  if (v15 + v6)
  {
    v18 = &v4[v9];
    if (v17 >= 18)
    {
      v19 = 18;
    }

    else
    {
      v19 = v15 + v6;
    }

    if (v17 < 10)
    {
      if (v17 >= 1)
      {
        v23 = &v4[v9];
        goto LABEL_38;
      }
    }

    else
    {
      v20 = 0;
      v21 = v15 + v6;
      if (v15 + v6 >= 18)
      {
        v21 = 18;
      }

      v22 = v21 + 1;
      v23 = &v4[v9];
      do
      {
        v24 = *v23;
        if (v24 == 46)
        {
          LOBYTE(v24) = v23[1];
          v23 += 2;
        }

        else
        {
          ++v23;
        }

        v20 = 10 * v20 + v24 - 48;
        --v22;
      }

      while (v22 > 10);
      v19 = 9;
LABEL_38:
      v25 = 0;
      v26 = v19 + 1;
      do
      {
        v27 = *v23;
        if (v27 == 46)
        {
          LOBYTE(v27) = v23[1];
          v23 += 2;
        }

        else
        {
          ++v23;
        }

        v25 = 10 * v25 + v27 - 48;
        --v26;
      }

      while (v26 > 1);
    }

    if ((v18[v6] | 0x20) == 0x65)
    {
      v28 = &v4[v9 + v6];
      v29 = v28 + 2;
      v32 = v28[1];
      v30 = v28 + 1;
      v31 = v32;
      v33 = v32 != 45;
      if (v32 == 45)
      {
        v30 = v29;
      }

      v34 = v31 == 43 || v33;
      if (v31 == 43)
      {
        v3 = v29;
      }

      else
      {
        v3 = v30;
      }

      result = cstdlib_isdigit(*v3);
      for (i = 0; result; result = cstdlib_isdigit(v36))
      {
        i = *v3 + 10 * i - 48;
        v36 = *++v3;
      }

      v37 = v6 + v15;
      if (v6 + v15 <= 18)
      {
        v37 = 18;
      }

      v38 = v11 - i + v37 - v15 - v6 - 18;
      v39 = v11 + v37 + i - v15 - v6 - 18;
      if (v34)
      {
        v38 = v39;
      }
    }

    else
    {
      v38 = v11 + v16 - (v14 >> 31) - v6 - 18;
      v3 = &v18[v6];
    }

    if (v38)
    {
      if (v38 >= 0)
      {
        v40 = v38;
      }

      else
      {
        v40 = -v38;
      }

      if (v40 >= 0x1FF)
      {
        v40 = 511;
      }

      v41 = 1.0;
      v42 = &powersOf10;
      do
      {
        if (v40)
        {
          v41 = v41 * *v42;
        }

        ++v42;
        v43 = v40 > 1;
        v40 >>= 1;
      }

      while (v43);
    }
  }

  if (a2)
  {
    *a2 = v3;
  }

  return result;
}

unint64_t ssft_bsearch(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v5 = (a3 - 1) * a4;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v10 = a2 + v5;
    v11 = -a4;
    do
    {
      if (a3 >= 2)
      {
        v16 = a3 >> 1;
        v17 = (a3 & 1) + (a3 >> 1) - 1;
        v18 = v8 + v17 * a4;
        v19 = a5(a1, v18);
        if (!v19)
        {
          v8 += v17 * a4;
          return v8;
        }

        v13 = v18 + a4;
        v14 = v18 + v11;
        v15 = v19 >= 0;
        if (v19 < 0)
        {
          a3 = v17;
        }

        else
        {
          a3 = v16;
        }
      }

      else
      {
        if (!a3)
        {
          return 0;
        }

        v12 = a5(a1, v8);
        if (!v12)
        {
          return v8;
        }

        v13 = v8 + a4;
        v14 = v10 + v11;
        v15 = v12 >= 0;
        a3 = 1;
      }

      if (v15)
      {
        v8 = v13;
      }

      else
      {
        v10 = v14;
      }
    }

    while (v8 <= v10);
  }

  return 0;
}

uint64_t ssft_qsort(uint64_t result, unint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v35 = result;
  if (a2 < 2)
  {
    return result;
  }

  v5 = a3;
  v6 = a2 >> 1;
  v7 = result + (a2 >> 1) * a3;
  v33 = -a3;
  do
  {
    v8 = 0;
    v9 = a2 - 1;
    v30 = a2 - 1;
    v31 = a2;
    while (1)
    {
      v36 = v9;
      v10 = v8 - 2;
      v11 = v8 - 1;
      v12 = v35 + v5 * (v8 - 1);
      v13 = v35 + v5 * v8;
      do
      {
        v14 = v11;
        v15 = a4(v13, v7);
        ++v10;
        v12 += v5;
        v13 += v5;
        v11 = v14 + 1;
      }

      while (v15 < 0);
      v16 = 0;
      v34 = v10 - v6;
      v17 = v6 - 1;
      v18 = v5 * v36;
      v19 = v35 + v5;
      v20 = v7;
      v21 = a4;
      v22 = v19 + v18;
      v23 = v35 + v18;
      do
      {
        result = v21(v23, v20);
        ++v16;
        ++v14;
        ++v17;
        v22 += v33;
        v23 += v33;
      }

      while (result > 0);
      v24 = v21;
      v9 = v36 - v16 + 1;
      v8 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v25 = v20;
        v5 = a3;
        if (a3 >= 1)
        {
          v26 = 0;
          do
          {
            v27 = *(v12 + v26);
            *(v12 + v26) = *(v22 + v26);
            *(v22 + v26++) = v27;
          }

          while (a3 != v26);
        }

        if (v36 == v17)
        {
          v28 = v10 + 1;
        }

        else
        {
          v28 = v6;
        }

        if (v36 == v17)
        {
          v29 = v12;
        }

        else
        {
          v29 = v25;
        }

        v8 = v10 + 2;
        if (v34 == -1)
        {
          v6 = v36 - v16 + 1;
        }

        else
        {
          v6 = v28;
        }

        if (v34 == -1)
        {
          v7 = v22;
        }

        else
        {
          v7 = v29;
        }

        v9 = v36 - v16;
        goto LABEL_27;
      }

      v7 = v20;
      v5 = a3;
      if (v36 == v14)
      {
        break;
      }

LABEL_27:
      a4 = v24;
      if (v8 >= v9)
      {
        if (!v9)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    v8 = v10 + 2;
    v9 = v10;
    a4 = v24;
    if (v10)
    {
LABEL_29:
      result = ssft_qsort(v35, v9 + 1, v5, a4);
    }

LABEL_30:
    if (v8 >= v30)
    {
      break;
    }

    a2 = v31 - v8;
    v6 = (v31 - v8) >> 1;
    v35 += v8 * v5;
    v7 = v35 + v6 * v5;
  }

  while (v31 - v8 > 1);
  return result;
}

uint64_t LH_stricmp(char *a1, char *a2)
{
  v4 = cstdlib_tolower(*a1);
  if (v4 == cstdlib_tolower(*a2))
  {
    v5 = 1;
    v6 = a1;
    while (1)
    {
      v7 = v5;
      if (!*v6)
      {
        return 0;
      }

      v6 = &a1[v5];
      v8 = cstdlib_tolower(*v6);
      v9 = cstdlib_tolower(a2[v7]);
      v5 = v7 + 1;
      if (v8 != v9)
      {
        v10 = v7;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v10 = 0;
LABEL_7:
    v11 = cstdlib_tolower(a1[v10]);
    return v11 - cstdlib_tolower(a2[v10]);
  }
}

uint64_t LH_strnicmp(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  if (a3)
  {
    v7 = 1;
    do
    {
      v8 = cstdlib_tolower(*(a1 + v6));
      if (v8 != cstdlib_tolower(*(a2 + v6)))
      {
        break;
      }

      if (!*(a1 + v6))
      {
        break;
      }

      if (!*(a2 + v6))
      {
        break;
      }

      v6 = v7++;
    }

    while (v6 < a3);
  }

  if (v6 == a3)
  {
    return 0;
  }

  v10 = cstdlib_tolower(*(a1 + v6));
  return v10 - cstdlib_tolower(*(a2 + v6));
}

char *LH_itoa(unsigned int a1, char *a2, unsigned int a3)
{
  if (a1)
  {
    if (a3 - 37 >= 0xFFFFFFDD)
    {
      if ((a1 & 0x80000000) != 0 && a3 == 10)
      {
        *a2 = 45;
        v3 = a2 + 1;
        a1 = -a1;
      }

      else
      {
        v3 = a2;
      }

      v4 = v3 - 1;
      do
      {
        if (a1 % a3 >= 0xA)
        {
          v5 = a1 % a3 + 87;
        }

        else
        {
          v5 = (a1 % a3) | 0x30;
        }

        *++v4 = v5;
        v6 = a1 >= a3;
        a1 /= a3;
      }

      while (v6);
      v4[1] = 0;
      if (v4 > v3)
      {
        v7 = (v3 + 1);
        do
        {
          v8 = *v4;
          *v4-- = *(v7 - 1);
          *(v7 - 1) = v8;
        }

        while (v4 > v7++);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *a2 = 48;
  }

  return a2;
}

const char *LH_atoi(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = cstdlib_strlen(result);
    if (v2 < 1)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      v3 = 0;
      while (1)
      {
        v4 = v1[v3];
        if (v4 != 32 && v4 != 9)
        {
          break;
        }

        if ((v2 & 0x7FFFFFFF) == ++v3)
        {
          return 0;
        }
      }
    }

    LODWORD(v6) = v3;
    if (v3 < v2 - 1)
    {
      v7 = v1[v3];
      if (v7 == 45 || (LODWORD(v6) = v3, v7 == 43))
      {
        LODWORD(v6) = v3 + 1;
      }
    }

    if (v6 < v2)
    {
      v8 = &v1[v6];
      while (1)
      {
        v9 = *v8++;
        if ((v9 - 48) > 9)
        {
          break;
        }

        LODWORD(v6) = v6 + 1;
        if (v2 == v6)
        {
          LODWORD(v6) = v2;
          break;
        }
      }
    }

    if (v6 <= v3)
    {
      return 0;
    }

    else
    {
      result = 0;
      v6 = v6;
      v10 = 1;
      do
      {
        v11 = v1[v6 - 1];
        if ((v11 - 48) > 9)
        {
          if (v3 + 1 != v6)
          {
            return 0;
          }

          if (v11 != 43)
          {
            if (v11 != 45)
            {
              return 0;
            }

            result = -result;
          }
        }

        else
        {
          result = (result + v10 * (v11 - 48));
          v10 *= 10;
        }

        --v6;
      }

      while (v6 > v3);
    }
  }

  return result;
}

char *LH_utoa(unsigned int a1, char *a2, unsigned int a3)
{
  if (a1)
  {
    v3 = a2 - 1;
    do
    {
      if (a1 % a3 >= 0xA)
      {
        v4 = a1 % a3 + 87;
      }

      else
      {
        v4 = (a1 % a3) | 0x30;
      }

      *++v3 = v4;
      v5 = a1 >= a3;
      a1 /= a3;
    }

    while (v5);
    v3[1] = 0;
    if (v3 > a2)
    {
      v6 = a2 + 1;
      do
      {
        v7 = *v3;
        *v3-- = *(v6 - 1);
        *(v6 - 1) = v7;
      }

      while (v3 > v6++);
    }
  }

  else
  {
    *a2 = 48;
  }

  return a2;
}

const char *LH_atou(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = cstdlib_strlen(result);
    if (v2 < 1)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      v3 = 0;
      while (1)
      {
        v4 = v1[v3];
        if (v4 != 32 && v4 != 9)
        {
          break;
        }

        if ((v2 & 0x7FFFFFFF) == ++v3)
        {
          return 0;
        }
      }
    }

    LODWORD(v6) = v3;
    if (v3 < v2 - 1)
    {
      if (v1[v3] == 43)
      {
        LODWORD(v6) = v3 + 1;
      }

      else
      {
        LODWORD(v6) = v3;
      }
    }

    if (v6 < v2)
    {
      v7 = &v1[v6];
      while (1)
      {
        v8 = *v7++;
        if ((v8 - 48) > 9)
        {
          break;
        }

        LODWORD(v6) = v6 + 1;
        if (v2 == v6)
        {
          LODWORD(v6) = v2;
          break;
        }
      }
    }

    if (v6 > v3)
    {
      v9 = 0;
      v6 = v6;
      v10 = 1;
      while (1)
      {
        v11 = v1[v6 - 1];
        if ((v11 - 48) > 9)
        {
          result = 0;
          if (v3 + 1 != v6 || v11 != 43)
          {
            return result;
          }
        }

        else
        {
          v9 = (v9 + v10 * (v11 - 48));
          v10 *= 10;
        }

        --v6;
        result = v9;
        if (v6 <= v3)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

char *LH_stristr(char *a1, char *__s)
{
  result = 0;
  if (a1 && __s)
  {
    if (*a1 && *__s && (v5 = cstdlib_strlen(__s), v6 = cstdlib_tolower(*__s), (v7 = *a1) != 0))
    {
      v8 = v6;
      while (cstdlib_tolower(v7) != v8 || LH_strnicmp(a1, __s, v5))
      {
        v9 = *++a1;
        v7 = v9;
        if (!v9)
        {
          return 0;
        }
      }

      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_DWORD *extstdlib_wcsncat(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
    ;
  }

  if (a3)
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = *(a2 + v6 * 4);
      v4[v6 - 1] = v8;
      if (!v8)
      {
        break;
      }

      ++v6;
      if (!--v7)
      {
        return a1;
      }
    }

    if (v7 != 1)
    {
      bzero(&v4[v6], 4 * a3 - v6 * 4 - 4);
    }
  }

  return a1;
}

_DWORD *extstdlib_wcscat(_DWORD *result, int *a2)
{
  v2 = result;
    ;
  }

  v4 = *a2;
  *(v2 - 1) = *a2;
  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = a2[v5 + 1];
      v2[v5++] = v6;
    }

    while (v6);
  }

  return result;
}

int *extstdlib_wcscpy(int *result, int *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    v3 = result + 1;
    v4 = a2 + 1;
    do
    {
      v5 = *v4++;
      *v3++ = v5;
    }

    while (v5);
  }

  return result;
}

uint64_t extstdlib_wcschr(uint64_t a1, int a2)
{
  v2 = a1 - 4;
  do
  {
    v4 = *(v2 + 4);
    v2 += 4;
    v3 = v4;
    if (v4)
    {
      v5 = v3 == a2;
    }

    else
    {
      v5 = 1;
    }
  }

  while (!v5);
  if (v3 == a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

int *extstdlib_wcsstr(int *result, int *a2)
{
  if (*a2)
  {
    v2 = *result;
    if (*result)
    {
      while (1)
      {
        v3 = 1;
        v4 = a2;
        while (1)
        {
          v5 = *v4;
          if (v2 != *v4)
          {
            break;
          }

          ++v4;
          v2 = result[v3++];
          if (!v2)
          {
            v5 = *v4;
            break;
          }
        }

        if (!v5)
        {
          break;
        }

        v6 = result[1];
        ++result;
        v2 = v6;
        if (!v6)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t extstdlib_wcscmp(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 != *a2;
  if (*a1 == *a2 && v3 != 0)
  {
    v6 = a2 + 1;
    v7 = a1 + 1;
    do
    {
      v8 = *v7++;
      v2 = v8;
      v9 = *v6++;
      v3 = v9;
      v4 = v2 != v9;
    }

    while (v2 == v9 && v3 != 0);
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4;
  }
}

uint64_t extstdlib_wcslen(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = *(a1 + v1);
    v1 += 4;
  }

  while (v2);
  return (v1 >> 2) - 1;
}

uint64_t extstdlib_wcsncpy(uint64_t a1, int *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = 4 * a3 - 4;
    for (i = (a1 + 4); ; ++i)
    {
      v7 = *a2;
      *(i - 1) = *a2;
      if (!v7)
      {
        break;
      }

      ++a2;
      v5 -= 4;
      if (!--a3)
      {
        return a1;
      }
    }

    if (a3 != 1)
    {
      bzero(i, v5);
    }
  }

  return a1;
}

char *extstdlib_strtok_r(char *__s, char *__charset, const char **a3)
{
  v5 = __s;
  if (!__s)
  {
    v5 = *a3;
  }

  v6 = &v5[cstdlib_strspn(v5, __charset)];
  if (!*v6)
  {
    return 0;
  }

  v7 = cstdlib_strpbrk(v6, __charset);
  if (v7)
  {
    *v7 = 0;
    v8 = v7 + 1;
  }

  else
  {
    v8 = cstdlib_strchr(v6, 0);
  }

  *a3 = v8;
  return v6;
}

uint64_t depes_tolower(uint64_t result)
{
  if ((result - 65) <= 0x19)
  {
    return result | 0x20;
  }

  if (result > 145)
  {
    if (result > 153)
    {
      if (result == 154)
      {
        return 129;
      }

      else if (result == 165)
      {
        return 164;
      }
    }

    else if (result == 146)
    {
      return 145;
    }

    else if (result == 153)
    {
      return 148;
    }
  }

  else if (result > 142)
  {
    if (result == 143)
    {
      return 134;
    }

    else if (result == 144)
    {
      return 130;
    }
  }

  else if (result == 128)
  {
    return 135;
  }

  else if (result == 142)
  {
    return 132;
  }

  return result;
}

uint64_t ssft_tolower(int a1)
{
  switch(a1)
  {
    case 138:
      return a1 | 0x10u;
    case 159:
      return -1;
    case 140:
      return a1 | 0x10u;
    default:
      v3 = (a1 + 64) < 0x17u || (a1 - 65) < 0x1Au || (a1 & 0xF8) == 216;
      v1 = a1 + 32;
      if (!v3)
      {
        return a1;
      }

      break;
  }

  return v1;
}

uint64_t ssft_towlower(int a1)
{
  v1 = 32;
  if ((a1 - 216) < 7 || (a1 - 65) < 0x1Au || (a1 - 192) < 0x17u)
  {
    return (v1 + a1);
  }

  if (a1 - 256) <= 0x36 && (a1 & 1) == 0 || (a1 - 328) >= 0xFFF1u && (a1 & 1) != 0 || (a1 - 330) <= 0x2E && (a1 & 1) == 0 || (a1 - 382) >= 0xFFFBu && (a1)
  {
    if (a1 == 376)
    {
      v1 = -121;
    }

    else
    {
      v1 = 1;
    }

    v2 = a1 == 304;
    v3 = -199;
    goto LABEL_16;
  }

  if (a1 - 902) < 7 && ((0x5Du >> (a1 + 122)))
  {
    v1 = asc_26ECC9280[(a1 - 902)];
    return (v1 + a1);
  }

  if ((a1 - 931) >= 9 && (a1 & 0xFFFE) != 0x38E && (a1 - 913) > 0x10u)
  {
    if (a1 - 1024) >= 0x30 && ((a1 - 1120) > 0x20 || (a1))
    {
      if ((a1 - 1164) <= 0x32)
      {
LABEL_29:
        if (a1)
        {
LABEL_30:
          v1 = 0;
          return (v1 + a1);
        }

        goto LABEL_34;
      }

      if ((((a1 - 1217) >> 1) | ((a1 - 1217) << 15)) > 5u || ((1 << ((a1 - 1217) >> 1)) & 0x2B) == 0)
      {
        if ((a1 - 1232) > 0x24)
        {
          if (a1 != 1272)
          {
            goto LABEL_30;
          }

LABEL_38:
          if (((a1 - 1040) & 0xFFE0) != 0)
          {
            v1 = 1;
          }

          else
          {
            v1 = 32;
          }

          return (v1 + a1);
        }

        goto LABEL_29;
      }
    }

LABEL_34:
    if ((a1 & 0xFFF0) == 0x400)
    {
      v1 = 80;
      return (v1 + a1);
    }

    goto LABEL_38;
  }

  v2 = (a1 & 0x3BE) == 910;
  v1 = 32;
  v3 = 63;
LABEL_16:
  if (v2)
  {
    v1 = v3;
  }

  return (v1 + a1);
}

const char *TxtEncodingGetName(int a1)
{
  v2 = &dword_279DAAC98;
  v3 = 128;
  result = "default";
  while (*v2 != a1)
  {
    v2 += 8;
    if (!--v3)
    {
      return result;
    }
  }

  return *(v2 - 1);
}

uint64_t TxtEncodingGetId(unsigned __int8 *a1)
{
  v1 = 0;
  while (1)
  {
    v2 = &(&TXTENC_EncodingTable)[4 * v1];
    v3 = *v2;
    v4 = a1;
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = v6 | 0x20;
      if ((v6 - 65) < 0x1A)
      {
        v5 = v7;
      }

      v9 = *v3++;
      v8 = v9;
      v10 = v9 | 0x20;
      if ((v9 - 65) < 0x1A)
      {
        v8 = v10;
      }

      if (v5)
      {
        v11 = v5 == v8;
      }

      else
      {
        v11 = 0;
      }
    }

    while (v11);
    if (v5 == v8)
    {
      break;
    }

    if (++v1 == 128)
    {
      return 0;
    }
  }

  return *(v2 + 2);
}

uint64_t TxtEncodingGetMap(int a1, int a2)
{
  v2 = 128;
  for (i = &qword_279DAACA0; *(i - 2) != a1; i += 4)
  {
    if (!--v2)
    {
      return 0;
    }
  }

  if (!a2)
  {
    ++i;
  }

  return *i;
}

uint64_t TxtEncodingCharToWChar(uint64_t result, _DWORD *a2)
{
  if (a2)
  {
    if (a2 == BuckToWChar)
    {
      LODWORD(result) = BuckToWChar[result];
    }

    else if ((result & 0x80) != 0)
    {
      LODWORD(result) = a2[result & 0x7F];
    }
  }

  return result;
}

uint64_t TxtEncodingWCharToChar(uint64_t result, __int16 *a2)
{
  if (!a2 || result <= 0x7F && a2 != WCharToBuck)
  {
    return result;
  }

  v2 = 0;
  if (a2 == WCharToBuck)
  {
    v3 = 94;
  }

  else
  {
    v3 = 127;
  }

  while (1)
  {
    v4 = a2[2 * ((v3 + v2) / 2)];
    if (v4 <= result)
    {
      break;
    }

    v3 = (v3 + v2) / 2 - 1;
LABEL_12:
    if (v2 > v3)
    {
      return 0;
    }
  }

  if (v4 != result)
  {
    v2 = (v3 + v2) / 2 + 1;
    goto LABEL_12;
  }

  return LOBYTE(a2[2 * ((v3 + v2 + ((v3 + v2) >> 31)) >> 1) + 1]);
}

uint64_t TxtEncodingCharUTF8ToUTF16(unsigned __int8 *a1)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v1 = *a1;
  if (*a1 < 0)
  {
    v2 = a1[1];
    if ((v1 - 194) <= 0x1D)
    {
      v3 = v2 + (v1 << 6);
      v4 = -12416;
LABEL_11:
      LOWORD(v1) = v3 + v4;
      return v1;
    }

    if (a1[1])
    {
      v5 = a1[2];
      if ((v1 & 0xF0) != 0xE0)
      {
        if (a1[2])
        {
          v6 = a1[3] - 128;
          v5 <<= 6;
          goto LABEL_13;
        }

LABEL_12:
        v6 = -128;
LABEL_13:
        if ((v1 - 240) <= 4)
        {
          LOWORD(v1) = v5 + (v2 << 12) + v6 - 0x2000;
          return v1;
        }

LABEL_15:
        LOWORD(v1) = 0;
        return v1;
      }
    }

    else
    {
      v5 = 0;
      if ((v1 & 0xF0) != 0xE0)
      {
        goto LABEL_12;
      }
    }

    v3 = (v2 << 6) + (v1 << 12);
    v4 = v5 - 8320;
    goto LABEL_11;
  }

  return v1;
}

uint64_t TxtEncodingCharUTF16ToUTF8(unsigned int a1, uint64_t a2)
{
  *a2 = 0;
  if (a1 > 0x7F)
  {
    if (a1 > 0x7FE)
    {
      if (a1 != 0xFFFF)
      {
        *a2 = (a1 >> 12) | 0xE0;
        *(a2 + 1) = (a1 >> 6) & 0x3F | 0x80;
        *(a2 + 2) = a1 & 0x3F | 0x80;
      }
    }

    else
    {
      *a2 = (a1 >> 6) | 0xC0;
      *(a2 + 1) = a1 & 0x3F | 0x80;
    }
  }

  else
  {
    *a2 = a1;
  }

  return a2;
}

char *TxtEncodingConvert(uint64_t a1, int a2, int a3, char *a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t *a8)
{
  v9 = a6;
  v11 = a4;
  v128 = *MEMORY[0x277D85DE8];
  v126 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  if (!a4)
  {
    return 0;
  }

  switch(a2)
  {
    case 65001:
      switch(a3)
      {
        case 1200:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 1;
          v20 = 6;
          goto LABEL_35;
        case 1201:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v20 = 9;
          v14 = 1;
          goto LABEL_26;
        case 65001:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v20 = 1;
          goto LABEL_26;
      }

      v14 = 0;
      v15 = 0;
      v19 = 0;
      v16 = 0;
      v23 = 0;
      v17 = 1;
      v20 = 6;
LABEL_31:
      v22 = 1;
      v21 = 1;
      v18 = 1;
      goto LABEL_38;
    case 1201:
      switch(a3)
      {
        case 1200:
LABEL_23:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 1;
          v20 = 10;
LABEL_35:
          v22 = 1;
          goto LABEL_36;
        case 1201:
LABEL_24:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 1;
          v20 = 2;
          goto LABEL_35;
        case 65001:
          v14 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v20 = 8;
          v15 = 1;
LABEL_26:
          v19 = 1;
          goto LABEL_35;
      }

      v14 = 0;
      v15 = 0;
      v19 = 0;
      v16 = 0;
      v23 = 0;
      v17 = 1;
      v20 = 10;
      goto LABEL_31;
    case 1200:
      if (a3 != 1200)
      {
        if (a3 != 1201)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 1;
          if (a3 == 65001)
          {
            v20 = 7;
          }

          else
          {
            v20 = 5;
          }

          goto LABEL_35;
        }

        goto LABEL_23;
      }

      goto LABEL_24;
  }

  if (a3 == 1200)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
    v20 = 4;
    goto LABEL_35;
  }

  if (a3 == 1201)
  {
    v14 = 0;
    v15 = 0;
    v19 = 0;
    v16 = 0;
    v22 = 0;
    v18 = 0;
    v17 = 1;
    v20 = 4;
LABEL_36:
    v21 = 1;
    goto LABEL_37;
  }

  if (a3 != 65001)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
    v20 = 3;
    goto LABEL_35;
  }

  v14 = 0;
  v15 = 0;
  v19 = 0;
  v21 = 0;
  v18 = 0;
  v16 = 1;
  v20 = 4;
  v17 = 1;
  v22 = 1;
LABEL_37:
  v23 = 1;
LABEL_38:
  if (!(a1 | a6))
  {
    return 0;
  }

  if (v20 <= 5)
  {
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        if (v19)
        {
          if (a6)
          {
            v50 = 0;
            if (a5)
            {
              while (a4[v50])
              {
                if (a5 == ++v50)
                {
                  v50 = a5;
                  break;
                }
              }
            }

            if (v50 >= a7)
            {
              v51 = a7;
            }

            else
            {
              v51 = v50;
            }
          }

          else
          {
            v51 = 0;
            if (a5)
            {
              while (a4[v51])
              {
                if (a5 == ++v51)
                {
                  v51 = a5;
                  break;
                }
              }
            }

            v9 = heap_Alloc(a1, (v51 + 1));
            if (!v9)
            {
              return v9;
            }
          }

          v63 = &qword_279DAACA8;
          v64 = 128;
          while (*(v63 - 4) != a3)
          {
            v63 += 4;
            if (!--v64)
            {
              v65 = 0;
              goto LABEL_198;
            }
          }

          v65 = *v63;
LABEL_198:
          v66 = &qword_279DAACA0;
          v67 = 128;
          while (*(v66 - 2) != a2)
          {
            v66 += 4;
            if (!--v67)
            {
              v68 = 0;
              goto LABEL_203;
            }
          }

          v68 = *v66;
LABEL_203:
          v69 = 0;
          if (v51)
          {
            v70 = v9;
            do
            {
              v72 = *v11++;
              v71 = v72;
              if (v68)
              {
                if (v68 == BuckToWChar)
                {
                  v71 = BuckToWChar[v71];
                }

                else if ((v71 & 0x80) != 0)
                {
                  v71 = v68[v71 & 0x7F];
                }
              }

              if (!v71)
              {
                break;
              }

              v73 = TxtEncodingWCharToChar(v71, v65);
              *v70 = v73;
              if (v73)
              {
                v9[v69++] = v73;
              }

              ++v70;
              --v51;
            }

            while (v51);
          }

          if (a8)
          {
            *a8 = v69;
          }

          v9[v69] = 0;
          return v9;
        }

        return 0;
      }

      if (v20 == 4)
      {
        v25 = v16 ^ 1;
        if (a6)
        {
          v25 = 1;
        }

        if (v25)
        {
          if ((v22 & v17 & v21 & 1) == 0)
          {
            __s[0] = 0;
            v26 = a6;
            if (a6)
            {
              goto LABEL_324;
            }

            if (a5)
            {
              v27 = 0;
              while (a4[v27])
              {
                if (a5 == ++v27)
                {
                  LODWORD(v27) = a5;
                  break;
                }
              }

              v28 = a7;
              v29 = (2 * v27 + 2);
            }

            else
            {
              v28 = a7;
              v29 = 2;
            }

            v26 = heap_Alloc(a1, v29);
            a7 = v28;
            if (v26)
            {
LABEL_324:
              v105 = &qword_279DAACA0;
              v106 = 128;
              while (*(v105 - 2) != a2)
              {
                v105 += 4;
                if (!--v106)
                {
                  v107 = 0;
                  goto LABEL_329;
                }
              }

              v107 = *v105;
LABEL_329:
              if (a5)
              {
                v108 = 0;
                v109 = 0;
                v110 = 2;
                v123 = v107;
                v125 = v26;
                while (1)
                {
                  v111 = v11[v109];
                  if (v107)
                  {
                    if (v107 == BuckToWChar)
                    {
                      v111 = BuckToWChar[v11[v109]];
                    }

                    else if ((v111 & 0x80) != 0)
                    {
                      v111 = v107[v111 & 0x7F];
                    }
                  }

                  if (!v111)
                  {
                    break;
                  }

                  v112 = bswap32(v111) >> 16;
                  if (v22)
                  {
                    v113 = v111;
                  }

                  else
                  {
                    v113 = v112;
                  }

                  if (v16)
                  {
                    *__s = 0;
                    v114 = a7;
                    if (v113 > 0x7Fu)
                    {
                      if (v113 > 0x7FEu)
                      {
                        if (v113 != 0xFFFF)
                        {
                          __s[0] = (v113 >> 12) | 0xE0;
                          __s[1] = (v113 >> 6) & 0x3F | 0x80;
                          __s[2] = v113 & 0x3F | 0x80;
                        }
                      }

                      else
                      {
                        __s[0] = (v113 >> 6) | 0xC0;
                        __s[1] = v113 & 0x3F | 0x80;
                      }
                    }

                    else
                    {
                      __s[0] = v113;
                    }

                    v115 = cstdlib_strlen(__s);
                    v110 = 1;
                    a7 = v114;
                    v107 = v123;
                    v26 = v125;
                  }

                  else
                  {
                    v115 = 1;
                  }

                  if (!v9)
                  {
                    goto LABEL_352;
                  }

                  v116 = v115 + v108;
                  if (v115 + v108 >= a7 / v110)
                  {
                    break;
                  }

                  if (v110 != 2)
                  {
                    v117 = (v26 + v108);
                    v118 = a7;
                    v119 = v110;
                    cstdlib_memcpy(v117, __s, v115);
                    v110 = v119;
                    v107 = v123;
                    v26 = v125;
                    a7 = v118;
                    v108 = v116;
                  }

                  else
                  {
LABEL_352:
                    *(v26 + 2 * v108++) = v113;
                  }

                  if (a5 == ++v109)
                  {
                    v109 = a5;
                    break;
                  }
                }

                v120 = v110 == 1;
              }

              else
              {
                v109 = 0;
                v108 = 0;
                v120 = 0;
              }

              if (a8)
              {
                *a8 = v109;
              }

              if (v120)
              {
                *(v26 + v108) = 0;
              }

              else
              {
                *(v26 + 2 * v108) = 0;
              }
            }

            return v26;
          }

          return 0;
        }

        goto LABEL_169;
      }

      if (!v19)
      {
        return 0;
      }

      if (a6)
      {
        v52 = 0;
        if (a5)
        {
          while (*&a4[2 * v52])
          {
            if (a5 == ++v52)
            {
              v52 = a5;
              break;
            }
          }
        }

        v53 = a7 - 1;
        if (v52 < a7 - 1)
        {
          v53 = v52;
        }

        if (a7 == 1)
        {
          v53 = 0;
        }

        if (a7)
        {
          v54 = v53;
        }

        else
        {
          v54 = v52;
        }
      }

      else
      {
        v54 = 0;
        if (a5)
        {
          while (*&a4[2 * v54])
          {
            if (a5 == ++v54)
            {
              v54 = a5;
              break;
            }
          }
        }

        v9 = heap_Alloc(a1, (v54 + 1));
        if (!v9)
        {
          return v9;
        }
      }

      v74 = &qword_279DAACA8;
      v75 = 128;
      while (*(v74 - 4) != a3)
      {
        v74 += 4;
        if (!--v75)
        {
          v76 = 0;
          goto LABEL_227;
        }
      }

      v76 = *v74;
LABEL_227:
      for (i = 0; v54; --v54)
      {
        v77 = *v11;
        v11 += 2;
        v78 = TxtEncodingWCharToChar(v77, v76);
        if (v78)
        {
          v9[i++] = v78;
        }
      }

      goto LABEL_316;
    }

    if (v20 == 1)
    {
      if (!v19)
      {
        return 0;
      }

      if (a6)
      {
        if (a5)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          while (1)
          {
            v40 = v11[v38];
            if (!v11[v38])
            {
              goto LABEL_300;
            }

            if ((v40 & 0x80) == 0)
            {
              break;
            }

            if ((v40 - 194) < 0x1E)
            {
              v41 = 2;
              goto LABEL_91;
            }

            if ((v40 & 0xF0) == 0xE0)
            {
              v41 = 3;
              goto LABEL_91;
            }

            if ((v40 - 245) >= 0xFFFFFFFB)
            {
              v41 = 4;
              goto LABEL_91;
            }

            v42 = a7;
            v41 = 1;
LABEL_93:
            if (++v39 < a5)
            {
              v38 += v41;
              a7 = v42;
              if (v38 < a5)
              {
                continue;
              }
            }

            goto LABEL_300;
          }

          v41 = 1;
LABEL_91:
          v43 = v41 + v37;
          if (v41 + v37 >= a7)
          {
            goto LABEL_300;
          }

          v42 = a7;
          cstdlib_memcpy(&v9[v37], &v11[v38], v41);
          v37 = v43;
          goto LABEL_93;
        }

        v39 = 0;
        v37 = 0;
LABEL_300:
        v9[v37] = 0;
        if (!a8)
        {
          return v9;
        }
      }

      else
      {
        if (a5)
        {
          v79 = 0;
          v39 = 0;
          while (1)
          {
            v80 = v11[v79];
            if (!v11[v79])
            {
              break;
            }

            if ((v80 & 0x80) != 0)
            {
              if ((v80 - 194) >= 0x1E)
              {
                v82 = v80 & 0xF0;
                if ((v80 - 245) < 0xFFFFFFFB)
                {
                  v81 = 1;
                }

                else
                {
                  v81 = 4;
                }

                if (v82 == 224)
                {
                  v81 = 3;
                }
              }

              else
              {
                v81 = 2;
              }
            }

            else
            {
              v81 = 1;
            }

            v79 += v81;
            if (a5 == ++v39)
            {
              v39 = a5;
              break;
            }
          }
        }

        else
        {
          v39 = 0;
          v79 = 0;
        }

        v104 = strhelper_StringAppend(a1, 0, v11, v79, &v126, 0x100uLL);
        v9 = v104;
        if (!a8 || !v104)
        {
          return v9;
        }
      }

LABEL_321:
      *a8 = v39;
      return v9;
    }

    if (!v19)
    {
      return 0;
    }

    if (!a6)
    {
      v83 = TxtwStringAppend(a1, a4, a5, &v126);
      v9 = v83;
      if (a8 && v83)
      {
        *a8 = LH_wcslen(v83);
      }

      return v9;
    }

    v55 = 0;
    if (a5)
    {
      while (*&a4[2 * v55])
      {
        if (a5 == ++v55)
        {
          v55 = a5;
          break;
        }
      }
    }

    v56 = (a7 >> 1) - 1;
    if (v55 < v56)
    {
      v56 = v55;
    }

    if (a7 == 1)
    {
      v56 = 0;
    }

    if (a7)
    {
      v57 = v56;
    }

    else
    {
      v57 = v55;
    }

    LH_wcsncpy(a6, a4, v57);
    *&v9[2 * v57] = 0;
    if (!a8)
    {
      return v9;
    }

    goto LABEL_168;
  }

  if (v20 > 8)
  {
    if (v20 != 9)
    {
      if (!v19)
      {
        if (!v18)
        {
          return 0;
        }

        if (a6)
        {
          v60 = 0;
          if (a5)
          {
            while (*&a4[2 * v60])
            {
              if (a5 == ++v60)
              {
                v60 = a5;
                break;
              }
            }
          }

          v61 = a7 - 1;
          if (v60 < a7 - 1)
          {
            v61 = v60;
          }

          if (a7 == 1)
          {
            v61 = 0;
          }

          if (a7)
          {
            v62 = v61;
          }

          else
          {
            v62 = v60;
          }
        }

        else
        {
          v62 = 0;
          if (a5)
          {
            while (*&a4[2 * v62])
            {
              if (a5 == ++v62)
              {
                v62 = a5;
                break;
              }
            }
          }

          v9 = heap_Alloc(a1, (v62 + 1));
          if (!v9)
          {
            return v9;
          }
        }

        v99 = &qword_279DAACA8;
        v100 = 128;
        while (*(v99 - 4) != a3)
        {
          v99 += 4;
          if (!--v100)
          {
            v101 = 0;
            goto LABEL_312;
          }
        }

        v101 = *v99;
LABEL_312:
        for (i = 0; v62; --v62)
        {
          v102 = *v11;
          v11 += 2;
          v103 = TxtEncodingWCharToChar(bswap32(v102) >> 16, v101);
          if (v103)
          {
            v9[i++] = v103;
          }
        }

LABEL_316:
        v9[i] = 0;
        if (!a8)
        {
          return v9;
        }

LABEL_317:
        *a8 = i;
        return v9;
      }

      if (!a6)
      {
        v39 = 0;
        if (a5)
        {
          while (*&a4[2 * v39])
          {
            if (a5 == ++v39)
            {
              v39 = a5;
              break;
            }
          }
        }

        v9 = heap_Alloc(a1, (2 * v39 + 2));
        if (!v9)
        {
          return v9;
        }

        TXTENC_swab(v11, v9, 2 * v39 + 2);
        if (!a8)
        {
          return v9;
        }

        goto LABEL_321;
      }

      v58 = 0;
      if (a5)
      {
        while (*&a4[2 * v58])
        {
          if (a5 == ++v58)
          {
            v58 = a5;
            break;
          }
        }
      }

      v59 = (a7 >> 1) - 1;
      if (v58 < v59)
      {
        v59 = v58;
      }

      if (a7 == 1)
      {
        v59 = 0;
      }

      if (a7)
      {
        v57 = v59;
      }

      else
      {
        v57 = v58;
      }

      TXTENC_swab(a4, a6, 2 * v57 + 2);
      if (!a8)
      {
        return v9;
      }

LABEL_168:
      *a8 = v57;
      return v9;
    }

    goto LABEL_97;
  }

  if ((v20 - 7) >= 2)
  {
LABEL_97:
    if (v17 & v23)
    {
      return 0;
    }

    v124 = v14;
    if (a6)
    {
      goto LABEL_262;
    }

    if (!a5)
    {
      v49 = a7;
      LODWORD(v45) = 0;
      goto LABEL_258;
    }

    v44 = 0;
    v45 = 0;
    while (1)
    {
      v46 = a4[v44];
      if (!a4[v44])
      {
        v49 = a7;
LABEL_258:
        v84 = (v45 + 1);
        v85 = (2 * v45 + 2);
        if (v23)
        {
          v86 = v85;
        }

        else
        {
          v86 = v84;
        }

        v9 = heap_Alloc(a1, v86);
        a7 = v49;
        if (!v9)
        {
          return v9;
        }

LABEL_262:
        v87 = &qword_279DAACA8;
        v88 = 128;
        while (*(v87 - 4) != a3)
        {
          v87 += 4;
          if (!--v88)
          {
            v122 = 0;
            goto LABEL_267;
          }
        }

        v122 = *v87;
LABEL_267:
        v89 = 0;
        if (!a5)
        {
LABEL_294:
          if (a8)
          {
            *a8 = v89;
          }

          if (v18)
          {
            v9[v89] = 0;
          }

          else
          {
            *&v9[2 * v89] = 0;
          }

          return v9;
        }

        v90 = 0;
        v91 = 0;
        v92 = a7 - 1;
        v121 = (a7 - 1) >> 1;
        while (2)
        {
          v93 = v11[v90];
          if (!v11[v90])
          {
            goto LABEL_294;
          }

          if ((v93 & 0x80) == 0)
          {
            v94 = 1;
            goto LABEL_279;
          }

          if ((v93 - 194) < 0x1E)
          {
            v94 = 2;
            goto LABEL_279;
          }

          if ((v93 & 0xF0) == 0xE0)
          {
            v94 = 3;
            goto LABEL_279;
          }

          if ((v93 - 245) <= 0xFFFFFFFA)
          {
            ++v90;
            goto LABEL_293;
          }

          v94 = 4;
LABEL_279:
          cstdlib_strncpy(__s, &v11[v90], v94);
          __s[v94] = 0;
          LODWORD(v95) = TxtEncodingCharUTF8ToUTF16(__s);
          v96 = __rev16(v95);
          if (v124)
          {
            v95 = v96;
          }

          else
          {
            v95 = v95;
          }

          if (v18)
          {
            if (v89 >= v92)
            {
              goto LABEL_294;
            }

            v97 = TxtEncodingWCharToChar(v95, v122);
            if (v97)
            {
              v9[v89] = v97;
              goto LABEL_288;
            }
          }

          else
          {
            if (v89 >= v121)
            {
              goto LABEL_294;
            }

            *&v9[2 * v89] = v95;
LABEL_288:
            ++v89;
          }

          v98 = v94 + v90;
          if (v90 < v94 + v90)
          {
            while (v11[v90])
            {
              ++v90;
              if (!--v94)
              {
                v90 = v98;
                break;
              }
            }
          }

LABEL_293:
          if (++v91 == a5)
          {
            goto LABEL_294;
          }

          continue;
        }
      }

      if ((v46 & 0x80) == 0)
      {
        v47 = 1;
        goto LABEL_111;
      }

      if ((v46 - 194) < 0x1E)
      {
        v47 = 2;
        goto LABEL_111;
      }

      if ((v46 & 0xF0) == 0xE0)
      {
        break;
      }

      if ((v46 - 245) >= 0xFFFFFFFB)
      {
        v47 = 4;
LABEL_111:
        v48 = v47 + v44;
        if (v44 < v47 + v44)
        {
          while (a4[v44])
          {
            ++v44;
            if (!--v47)
            {
              v44 = v48;
              goto LABEL_115;
            }
          }
        }

        goto LABEL_115;
      }

      ++v44;
LABEL_115:
      if (++v45 == a5)
      {
        v49 = a7;
        LODWORD(v45) = a5;
        goto LABEL_258;
      }
    }

    v47 = 3;
    goto LABEL_111;
  }

  if (!v19)
  {
    return 0;
  }

  if (a6)
  {
    if (a5)
    {
      v30 = 0;
      i = 0;
      v32 = a7 - 1;
      while (1)
      {
        v33 = *&v11[2 * i];
        if (!*&v11[2 * i])
        {
          break;
        }

        v34 = __rev16(v33);
        if (v15)
        {
          v33 = v34;
        }

        *__s = 0;
        if (v33 > 0x7F)
        {
          if (v33 > 0x7FE)
          {
            if (v33 != 0xFFFF)
            {
              __s[0] = (v33 >> 12) | 0xE0;
              __s[1] = (v33 >> 6) & 0x3F | 0x80;
              __s[2] = v33 & 0x3F | 0x80;
            }
          }

          else
          {
            __s[0] = (v33 >> 6) | 0xC0;
            __s[1] = v33 & 0x3F | 0x80;
          }
        }

        else
        {
          __s[0] = v33;
        }

        v35 = cstdlib_strlen(__s);
        v36 = v35 + v30;
        if (v35 + v30 >= v32)
        {
          break;
        }

        if (v35)
        {
          cstdlib_strncpy(&v9[v30], __s, v35);
        }

        ++i;
        v30 = v36;
        if (a5 == i)
        {
          i = a5;
          v30 = v36;
          break;
        }
      }
    }

    else
    {
      i = 0;
      v30 = 0;
    }

    v9[v30] = 0;
    if (!a8)
    {
      return v9;
    }

    goto LABEL_317;
  }

LABEL_169:

  return ToUTF8(a1, a4, a5, a2, a8);
}

_WORD *TxtwStringAppend(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = a3;
  if (a3 == -1)
  {
    v5 = LH_wcslen(a2);
  }

  *a4 = v5 + 257;
  v8 = heap_Alloc(a1, 2 * ((v5 + 257) & 0x7FFFFFFF));
  v9 = v8;
  if (v8)
  {
    *v8 = 0;
    v10 = LH_wcslen(v8);
    LH_wcsncpy(&v9[v10], a2, v5);
    v9[v5] = 0;
  }

  return v9;
}

char *TXTENC_swab(char *result, _BYTE *a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if ((a3 & 0xE) != 0)
  {
    v4 = v3 - 1;
    do
    {
      v5 = *result;
      v6 = result + 2;
      v7 = a2 + 2;
      *a2 = result[1];
      a2[1] = v5;
      a2 += 2;
      result += 2;
    }

    while (v4-- & 7);
    v3 += -(a3 >> 1) | 0xFFFFFFFFFFFFFFF8;
    result = v6;
    a2 = v7;
  }

  if (v3)
  {
    v9 = v3 >> 3;
    do
    {
      v10 = *result;
      *a2 = result[1];
      a2[1] = v10;
      v11 = result[2];
      a2[2] = result[3];
      a2[3] = v11;
      v12 = result[4];
      a2[4] = result[5];
      a2[5] = v12;
      v13 = result[6];
      a2[6] = result[7];
      a2[7] = v13;
      v14 = result[8];
      a2[8] = result[9];
      a2[9] = v14;
      v15 = result[10];
      a2[10] = result[11];
      a2[11] = v15;
      v16 = result[12];
      a2[12] = result[13];
      a2[13] = v16;
      v17 = result[14];
      a2[14] = result[15];
      a2[15] = v17;
      a2 += 16;
      result += 16;
      --v9;
    }

    while (v9);
  }

  return result;
}

char *ToUTF8(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v10 = a4 & 0xFFFFFFFE;
  if ((a4 & 0xFFFFFFFE) == 0x4B0)
  {
    if (a3)
    {
      v11 = 0;
      while (*(a2 + 2 * v11))
      {
        if (a3 == ++v11)
        {
          goto LABEL_11;
        }
      }

      goto LABEL_13;
    }
  }

  else if (a3)
  {
    v11 = 0;
    while (*(a2 + v11))
    {
      if (a3 == ++v11)
      {
LABEL_11:
        v11 = a3;
        goto LABEL_13;
      }
    }

    goto LABEL_13;
  }

  v11 = 0;
LABEL_13:
  v12 = v11 / 0x14;
  if (v12 <= 0x100)
  {
    v12 = 256;
  }

  v29 = v12;
  v13 = heap_Alloc(a1, v12);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  v15 = &qword_279DAACA0;
  v16 = 128;
  v30 = a1;
  v27 = a5;
  while (*(v15 - 2) != a4)
  {
    v15 += 4;
    if (!--v16)
    {
      v28 = 0;
      goto LABEL_22;
    }
  }

  v28 = *v15;
LABEL_22:
  v17 = 0;
  v18 = 0;
  v19 = 0;
  do
  {
    __src[0] = 0;
    if (v10 == 1200)
    {
      if (v18 < a3)
      {
        LODWORD(v20) = *(a2 + 2 * v18);
        if (*(a2 + 2 * v18))
        {
          goto LABEL_42;
        }
      }
    }

    else if (v18 < a3)
    {
      v20 = *(a2 + v18);
      if (*(a2 + v18))
      {
        if (v28)
        {
          if (v28 == BuckToWChar)
          {
            LODWORD(v20) = BuckToWChar[v20];
          }

          else if ((v20 & 0x80) != 0)
          {
            LODWORD(v20) = v28[v20 & 0x7F];
          }
        }

LABEL_42:
        v25 = bswap32(v20) >> 16;
        if (a4 == 1201)
        {
          LODWORD(v20) = v25;
        }

        *__src = 0;
        if (v20 > 0x7Fu)
        {
          if (v20 > 0x7FEu)
          {
            if (v20 != 0xFFFF)
            {
              __src[0] = (v20 >> 12) | 0xE0;
              __src[1] = (v20 >> 6) & 0x3F | 0x80;
              __src[2] = v20 & 0x3F | 0x80;
            }
          }

          else
          {
            __src[0] = (v20 >> 6) | 0xC0;
            __src[1] = v20 & 0x3F | 0x80;
          }
        }

        else
        {
          __src[0] = v20;
        }

        v21 = cstdlib_strlen(__src);
        v22 = 0;
        ++v18;
        if (v21 + v19 < v29)
        {
          goto LABEL_36;
        }

        goto LABEL_34;
      }
    }

    v21 = 0;
    v22 = 1;
LABEL_34:
    v14[v19] = 0;
    v23 = v30;
    v24 = strhelper_StringAppend(v30, v17, v14, 0xFFFFFFFFFFFFFFFFLL, &v31, 0x100uLL);
    if (!v24)
    {
      heap_Free(v30, v17);
      v17 = 0;
      goto LABEL_56;
    }

    v19 = 0;
    v17 = v24;
LABEL_36:
    if (v21 && !v22)
    {
      cstdlib_memcpy(&v14[v19], __src, v21);
      v19 += v21;
    }
  }

  while (!v22);
  if (v27)
  {
    *v27 = v18;
  }

  v23 = v30;
LABEL_56:
  heap_Free(v23, v14);
  return v17;
}

size_t TxtEncodingGetOutputBytesRequired(char *__s, size_t a2, int a3, int a4, void *a5)
{
  v7 = a2;
  v9 = 128;
  v10 = &qword_279DAACA0;
  do
  {
    if (*(v10 - 2) == a3)
    {
      v11 = *v10;
      if (__s)
      {
        goto LABEL_7;
      }

      return 0;
    }

    v10 += 4;
    --v9;
  }

  while (v9);
  v11 = 0;
  if (!__s)
  {
    return 0;
  }

LABEL_7:
  v13 = a4 & 0xFFFFFFFE;
  if ((a3 - 1200) < 2)
  {
    if (a4 == 65001)
    {
      if (a2 == -1)
      {
        v14 = -1;
      }

      else
      {
        v14 = a2 >> 1;
      }

      if (v14)
      {
        v15 = 0;
        v12 = 0;
        while (1)
        {
          v16 = *&__s[2 * v15];
          if (!*&__s[2 * v15])
          {
            break;
          }

          v17 = __rev16(v16);
          if (a3 == 1201)
          {
            v16 = v17;
          }

          *__sa = 0;
          if (v16 > 0x7F)
          {
            if (v16 > 0x7FE)
            {
              if (v16 != 0xFFFF)
              {
                __sa[0] = (v16 >> 12) | 0xE0;
                __sa[1] = (v16 >> 6) & 0x3F | 0x80;
                __sa[2] = v16 & 0x3F | 0x80;
              }
            }

            else
            {
              __sa[0] = (v16 >> 6) | 0xC0;
              __sa[1] = v16 & 0x3F | 0x80;
            }
          }

          else
          {
            __sa[0] = v16;
          }

          v12 += cstdlib_strlen(__sa);
          if (v14 == ++v15)
          {
            v15 = v14;
            break;
          }
        }
      }

      else
      {
        v12 = 0;
        v15 = 0;
      }

      if (a5)
      {
        *a5 = v15;
      }

      return v12;
    }

    if (a2 == -1)
    {
      v23 = LH_wcslen(__s);
      if (a5)
      {
LABEL_45:
        *a5 = v23;
      }
    }

    else
    {
      v23 = a2 >> 1;
      if (a5)
      {
        goto LABEL_45;
      }
    }

    return v23 << (v13 == 1200);
  }

  if (a3 == 65001)
  {
    if (a2)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v20 = __s[v19];
        if (!__s[v19])
        {
          break;
        }

        if ((v20 & 0x80) != 0)
        {
          if ((v20 - 194) >= 0x1E)
          {
            if ((v20 & 0xF0) == 0xE0)
            {
              v21 = 3;
            }

            else
            {
              v21 = 4 * ((v20 - 245) > 0xFFFFFFFA);
            }
          }

          else
          {
            v21 = 2;
          }
        }

        else
        {
          v21 = 1;
        }

        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        v19 += v22;
        if (v21)
        {
          ++v18;
        }
      }

      while (v19 < a2);
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    if (a5)
    {
      *a5 = v18;
    }

    v27 = v18 << (v13 == 1200);
    if (a4 == 65001)
    {
      return v19;
    }

    else
    {
      return v27;
    }
  }

  if (a4 != 65001)
  {
    if (a2 == -1)
    {
      v7 = cstdlib_strlen(__s);
    }

    if (a5)
    {
      *a5 = v7;
    }

    return v7 << (v13 == 1200);
  }

  if (a2)
  {
    v24 = 0;
    v12 = 0;
    while (1)
    {
      v25 = __s[v24];
      if (!__s[v24])
      {
        goto LABEL_83;
      }

      if (v11)
      {
        if (v11 == BuckToWChar)
        {
          v26 = BuckToWChar[v25];
        }

        else
        {
          if ((v25 & 0x80) == 0)
          {
            v29 = 0;
            goto LABEL_59;
          }

          v26 = v11[v25 & 0x7F];
        }
      }

      else
      {
        v26 = __s[v24];
      }

      v29 = 0;
      LOBYTE(v25) = v26;
      if (v26 > 0x7Fu)
      {
        if (v26 > 0x7FEu)
        {
          if (v26 != 0xFFFF)
          {
            LOBYTE(v29) = (v26 >> 12) | 0xE0;
            BYTE1(v29) = (v26 >> 6) & 0x3F | 0x80;
            BYTE2(v29) = v26 & 0x3F | 0x80;
          }
        }

        else
        {
          LOBYTE(v29) = (v26 >> 6) | 0xC0;
          BYTE1(v29) = v26 & 0x3F | 0x80;
        }

        goto LABEL_64;
      }

LABEL_59:
      LOBYTE(v29) = v25;
LABEL_64:
      v12 += cstdlib_strlen(&v29);
      if (v7 == ++v24)
      {
        v24 = v7;
        goto LABEL_83;
      }
    }
  }

  v12 = 0;
  v24 = 0;
LABEL_83:
  if (a5)
  {
    *a5 = v24;
  }

  return v12;
}

uint64_t TxtEncodingDetect(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (!a2)
  {
    return 65001;
  }

  v5 = *a1;
  if (v5 != 239)
  {
    if (v5 == 254)
    {
      v8 = a1[1];
      if (v8 == 255)
      {
        result = 1201;
      }

      else
      {
        result = 28591;
      }

      if (!a3 || v8 != 255)
      {
        return result;
      }

      *a3 = 2;
    }

    else
    {
      if (v5 == 255)
      {
        v6 = a1[1];
        if (v6 == 254)
        {
          result = 1200;
        }

        else
        {
          result = 28591;
        }

        if (a3 && v6 == 254)
        {
          *a3 = 2;
          return 1200;
        }

        return result;
      }

      v11 = a2 - 1;
      if (a2 == 1)
      {
        return 65001;
      }

      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      if (a2 >= 0xFA00)
      {
        v16 = 64000;
      }

      else
      {
        v16 = a2;
      }

      while (2)
      {
        while (2)
        {
          v17 = 0;
          v18 = v12;
          while (1)
          {
            v19 = a1[v15 + v17];
            if ((v19 - 127) < 0xFFFFFF82)
            {
              break;
            }

            ++v17;
            if (v15 + v17 >= a2)
            {
              goto LABEL_74;
            }
          }

          v20 = v15 + v17;
          if (v15 + v17 < v11 && (v19 & 0xE0) == 0xC0 && (a1[v15 + 1 + v17] & 0xC0) == 0x80)
          {
            v27 = 2;
          }

          else if (v20 < a2 - 2 && (v19 & 0xF0) == 0xE0 && (v21 = &a1[v15 + v17], (v21[1] & 0xC0) == 0x80) && (v21[2] & 0xC0) == 0x80)
          {
            v27 = 3;
          }

          else if (v20 < a2 - 3 && (v19 & 0xF8) == 0xF0 && (v22 = &a1[v15 + v17], (v22[1] & 0xC0) == 0x80) && (v22[2] & 0xC0) == 0x80 && (a1[v15 + 3 + v17] & 0xC0) == 0x80)
          {
            v27 = 4;
          }

          else if (v20 < a2 - 4 && (v19 & 0xFC) == 0xF8 && (v23 = &a1[v15 + v17], (v23[1] & 0xC0) == 0x80) && (v23[2] & 0xC0) == 0x80 && (v24 = &a1[v15 + v17], (v24[3] & 0xC0) == 0x80) && (v24[4] & 0xC0) == 0x80)
          {
            v27 = 5;
          }

          else
          {
            if (v20 >= a2 - 5 || (v19 & 0xFE) != 0xFC || (v25 = &a1[v15 + v17], (v25[1] & 0xC0) != 0x80) || (v25[2] & 0xC0) != 0x80 || (v26 = &a1[v15 + v17], (v26[3] & 0xC0) != 0x80) || (v26[4] & 0xC0) != 0x80 || (a1[v15 + 5 + v17] & 0xC0) != 0x80)
            {
              v12 = v18 + v17;
              ++v13;
              v15 += v17 + 1;
              if (v15 < a2)
              {
                continue;
              }

LABEL_74:
              v12 = v18 + v17;
              goto LABEL_75;
            }

            v27 = 6;
          }

          break;
        }

        v15 += v27 + v17;
        ++v14;
        v12 = v18 + v17;
        if (v15 < a2)
        {
          continue;
        }

        break;
      }

LABEL_75:
      if (v13)
      {
        v28 = 1;
      }

      else
      {
        v28 = v14 == 0;
      }

      result = 65001;
      if (!v28 || v12 == a2)
      {
        return result;
      }

      v51 = (a2 & 1) == 0 && (!v12 || 10 * a2 / v12 > 0xA);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v52 = v16;
      if (v16 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v16;
      }

      do
      {
        if (cstdlib_strchr("\xAF\xB3\xB9\x9F\xE6\xD0\xFD", a1[v34]))
        {
          ++v29;
        }

        if (cstdlib_strchr("\xF0\xD0\xFDvocalizer", a1[v34]))
        {
          ++v30;
        }

        v36 = a1[v34];
        v33 += v36;
        v32 += (v34 << 63 >> 63) & v36;
        if (v34)
        {
          v36 = 0;
        }

        v31 += v36;
        ++v34;
      }

      while (v35 != v34);
      v37 = v33 / v52;
      v38 = v33 / v52;
      v39 = v33 / v52;
      if (a2 != 2)
      {
        v38 = v32 / (v52 >> 1);
        v39 = v31 / (v52 >> 1);
      }

      v40 = v38 < 4 && v51;
      if (v40 && v39 > 0x32)
      {
        return 1200;
      }

      v41 = v39 < 4 && v51;
      if (!v41 || v38 <= 0x32)
      {
        if (!v51)
        {
          goto LABEL_120;
        }

        v42 = 0;
        v43 = 0;
        v44 = 0;
        for (i = 0; i != v35; ++i)
        {
          v46 = a1[i];
          v44 += ((v46 - v37) * (v46 - v37));
          v47 = ((v46 - v38) * (v46 - v38));
          v43 += (i << 63 >> 63) & v47;
          if (i)
          {
            v47 = 0;
          }

          v42 += v47;
        }

        if (a2 <= 0x20)
        {
          goto LABEL_120;
        }

        v48 = v44 / v52;
        v49 = v43 / (v52 >> 1);
        if (cstdlib_abs((v44 / v52) - v49) > 1000)
        {
          return 1200;
        }

        v50 = v42 / (v52 >> 1);
        if (cstdlib_abs((v50 - v48)) > 1000 || cstdlib_abs((v50 - v49)) > 1000)
        {
          return 1200;
        }

        result = 1200;
        if (v49 <= 2 * v48 && 2 * v49 >= v50 && 2 * v50 >= v48)
        {
LABEL_120:
          if (v37 <= 0x80)
          {
            if (v30 <= 5)
            {
              if (v29 <= 0xA)
              {
                return 28591;
              }

              else
              {
                return 28592;
              }
            }

            else
            {
              return 28599;
            }
          }

          else
          {
            return 28597;
          }
        }

        return result;
      }
    }

    return 1201;
  }

  if (a2 < 3)
  {
    return 28591;
  }

  v9 = a1[1];
  result = 28591;
  if (v9 == 187)
  {
    v10 = a1[2];
    result = v10 == 191 ? 65001 : 28591;
    if (a3 && v10 == 191)
    {
      *a3 = 3;
      return 65001;
    }
  }

  return result;
}

uint64_t txtlog_ObjOpen(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4)
{
  v4 = 2226135046;
  if (a4)
  {
    *a4 = 0;
    v9 = heap_Calloc(*(a1 + 8), 1, 552);
    if (v9)
    {
      v10 = v9;
      *v9 = a1;
      cstdlib_strncpy((v9 + 8), a2, 0x100uLL);
      *(v10 + 263) = 0;
      cstdlib_strcpy((v10 + 264), "");
      *(v10 + 520) = a3;
      *(v10 + 528) = 0;
      *(v10 + 536) = 0;
      *(v10 + 544) = 0;
      txtlog_resetLogFileName(v10);
      v4 = 0;
      *a4 = v10;
    }

    else
    {
      return 2226135050;
    }
  }

  return v4;
}

uint64_t txtlog_resetLogFileName(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  strcpy(v4, "vocalizer");
  v1 = a1 + 8;
  v2 = "";
  if (*(a1 + 8))
  {
    v2 = "/";
  }

  result = __sprintf_chk((a1 + 264), 0, 0x100uLL, "%s%s%s_%lu.txt", (a1 + 8), v2, v4, *(a1 + 536));
  ++*(v1 + 528);
  return result;
}

uint64_t txtlog_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2226135046;
  }

  heap_Free(*(*a1 + 8), a1);
  return 0;
}

uint64_t txtlog_startSession(uint64_t *a1)
{
  if (!a1)
  {
    return 2226135046;
  }

  if ((filespi_fopen(*(*a1 + 64), *(*a1 + 8), (a1 + 33), "w", a1 + 68) & 0x80000000) != 0)
  {
    FileSize = 0;
  }

  else
  {
    FileSize = filespi_GetFileSize(a1[68]);
  }

  result = 0;
  a1[66] = FileSize;
  return result;
}

uint64_t txtlog_stopSession(uint64_t a1)
{
  if (!a1)
  {
    return 2226135046;
  }

  result = *(a1 + 544);
  if (result)
  {
    result = filespi_fclose(result);
    *(a1 + 544) = 0;
  }

  return result;
}

uint64_t txtlog_recordEntry(uint64_t *a1, char *__s)
{
  if (!a1)
  {
    return 2226135046;
  }

  v4 = cstdlib_strlen(__s);
  v5 = a1[65];
  v6 = v5 >= v4;
  v7 = v5 - v4;
  if (v6 && a1[66] <= v7)
  {
    result = 0;
  }

  else
  {
    result = txtlog_switchLogFiles(a1);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v9 = a1[68];
  if (v9)
  {
    if (filespi_fwrite(__s, 1, v4, v9))
    {
      result = filespi_fflush(a1[68]);
      a1[66] += v4;
    }

    else
    {
      return 2226135045;
    }
  }

  return result;
}

uint64_t txtlog_switchLogFiles(uint64_t *a1)
{
  v2 = a1 + 68;
  v3 = a1[68];
  if (!v3 || (result = filespi_fclose(v3), *v2 = 0, (result & 0x80000000) == 0))
  {
    txtlog_resetLogFileName(a1);
    LODWORD(result) = filespi_fopen(*(*a1 + 64), *(*a1 + 8), (a1 + 33), "w", v2);
    if (result >= 0)
    {
      result = result;
    }

    else
    {
      result = 2226135043;
    }

    a1[66] = 0;
  }

  return result;
}

uint64_t txtlog_changeDirectory(uint64_t a1, const char *a2)
{
  if (!a1 || !a2)
  {
    return 2226135046;
  }

  cstdlib_strncpy((a1 + 8), a2, 0x100uLL);
  *(a1 + 263) = 0;
  cstdlib_strcpy((a1 + 264), "");
  *(a1 + 536) = 0;

  return txtlog_switchLogFiles(a1);
}

uint64_t txtfmt_printEntry(uint64_t a1, char *__str, size_t __size)
{
  v3 = __size;
  v6 = *(a1 + 128);
  v7 = *(a1 + 136);
  v8 = *(v6 + 64);
  if (*(a1 + 148))
  {
    snprintf(__str, __size, "%s|%hu|%s|%s|%lu|%p|SEVERE|%lu|%s", a1, v8, v6, (v6 + 32), 0, v7, *(a1 + 148), *(a1 + 152));
    if (*(a1 + 164))
    {
      v9 = 0;
      do
      {
        cstdlib_strcat(__str, "|");
        cstdlib_strcat(__str, *(*(a1 + 168) + 8 * v9));
        cstdlib_strcat(__str, "=");
        cstdlib_strcat(__str, *(*(a1 + 176) + 8 * v9++));
      }

      while (v9 < *(a1 + 164));
    }

    cstdlib_strcat(__str, "\n");
  }

  else
  {
    snprintf(__str, __size, "%s|%hu|%s|%s|%lu|%p|%d|%s\n", a1, v8, v6, (v6 + 32), 0, v7, *(a1 + 144), *(a1 + 152));
  }

  __str[v3 - 1] = 0;
  return 0;
}

uint64_t txtfmt_vsprintFormattedEntry_v(char *a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, _BYTE *a8, va_list a9)
{
  v33 = *MEMORY[0x277D85DE8];
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  if (a8)
  {
    bzero(&v29, 0x800uLL);
    v16 = *a8;
    if (*a8)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        __str[v17 + 2046] = v16;
        v19 = v18 + 1;
        if (v16 == 37)
        {
          v20 = v18 + 2;
          if (a8[v19] == 108)
          {
            LODWORD(v19) = v20;
          }
        }

        v16 = a8[v19];
        ++v17;
        v21 = v19 > 0x7FF || v16 == 0;
        v18 = v19;
      }

      while (!v21);
      v17 = v17;
    }

    else
    {
      v17 = 0;
    }

    __str[v17 + 2046] = v16;
    vsnprintf(__str, 0x800uLL, &v29, a9);
    __str[2047] = 0;
    v27 = __str;
    v22 = a3;
    v23 = a4;
    v24 = a5;
    v25 = a6;
    a7 = 0;
  }

  else
  {
    v22 = a3;
    v23 = a4;
    v24 = a5;
    v25 = a6;
    v27 = 0;
  }

  txtfmt_fillLogEntry(v31, v22, v23, v24, v25, a7, v27);
  txtfmt_printEntry(v31, a1, a2);
  return 0;
}

size_t txtfmt_fillLogEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, const char *a7)
{
  v20 = 0;
  cstdlib_memset(a1, 0, 0xB8uLL);
  osspi_time(*(a2 + 64), &v20);
  osspi_ctime(*(a2 + 64), &v20, 128, a1);
  v14 = cstdlib_strlen(a1);
  v15 = v14;
  if (v14)
  {
    v16 = a1 - 1;
    do
    {
      v17 = *(v16 + v15);
      if (v17 != 13 && v17 != 10)
      {
        break;
      }

      *(v16 + v15--) = 0;
    }

    while (v15);
  }

  *(a1 + 128) = a4;
  *(a1 + 136) = a3;
  *(a1 + 144) = a5;
  *(a1 + 148) = a6;
  *(a1 + 152) = a7;
  if (a7)
  {
    result = cstdlib_strlen(a7);
  }

  else
  {
    result = 0;
  }

  *(a1 + 160) = result;
  return result;
}

uint64_t logsub_logfile_GetInterface(unsigned int a1, void *a2)
{
  if (a1 > 1)
  {
    return 2226135041;
  }

  result = 0;
  *a2 = &ITxtWriter;
  return result;
}

uint64_t txtwriter_ClassOpen(_WORD *a1, int a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = 2226135040;
  v20 = 0;
  if (!a3)
  {
    return 2226135046;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  if ((InitRsrcFunction(a1, a2, &v20) & 0x80000000) != 0)
  {
    return 2226135047;
  }

  v5 = heap_Calloc(*(v20 + 8), 1, 464);
  if (!v5)
  {
    return 2226135050;
  }

  v6 = v5;
  v7 = v20;
  *v5 = v20;
  updated = critsec_ObjOpen(*(v7 + 16), *(v7 + 8), v5 + 53);
  if ((updated & 0x80000000) != 0)
  {
    goto LABEL_35;
  }

  v9 = *(v20 + 40);
  if (!v9)
  {
    v3 = 2226135046;
    goto LABEL_38;
  }

  if ((__src[0] = 0, (paramc_ParamGetStr(v9, "logfile.enabled", __src) & 0x80000000) != 0) && (__src[0] = "0", updated = paramc_ParamSetStr(v9, "logfile.enabled", "0"), (updated & 0x80000000) != 0) || (updated = txtwriter_UpdateEnabled(v6, __src[0]), (updated & 0x80000000) != 0))
  {
LABEL_35:
    v3 = updated;
    goto LABEL_38;
  }

  if (__src[0])
  {
    paramc_ParamRelease(v9);
  }

  __src[0] = 0;
  if ((paramc_ParamGetStr(v9, "logfile.filter.level", __src) & 0x80000000) != 0)
  {
    __src[0] = "0";
    if ((paramc_ParamSetStr(v9, "logfile.filter.level", "0") & 0x80000000) != 0)
    {
      goto LABEL_38;
    }
  }

  v10 = cstdlib_atoi(__src[0]);
  if ((v10 & 0x80000000) == 0)
  {
    *(v6 + 280) = v10;
    if (__src[0])
    {
      paramc_ParamRelease(v9);
    }

    v21 = 0;
    bzero(__src, 0x400uLL);
    if ((paramc_ParamGetStr(v9, "logfile.filter.modules", &v21) & 0x80000000) != 0)
    {
      v21 = "";
      LH_MapModuleNamesToIds("", __src, 0x400u);
      v21 = __src;
      if ((paramc_ParamSetStr(v9, "logfile.filter.modules", __src) & 0x80000000) != 0)
      {
        goto LABEL_38;
      }
    }

    v11 = v21;
    updated = txtwriter_UpdateModules(v6, v21);
    if ((updated & 0x80000000) == 0)
    {
      if (v11 != "")
      {
        paramc_ParamRelease(v9);
      }

      __src[0] = 0;
      if ((paramc_ParamGetStr(v9, "logfile.filename.1", __src) & 0x80000000) == 0 || (__src[0] = "", (paramc_ParamSetStr(v9, "logfile.filename.1", "") & 0x80000000) == 0))
      {
        v12 = __src[0];
        cstdlib_strcpy((v6 + 12), __src[0]);
        txtlog_changeDirectory(*(v6 + 432), v12);
        if (__src[0] != "")
        {
          paramc_ParamRelease(v9);
        }

        __src[0] = 0;
        if ((paramc_ParamGetStr(v9, "logfile.max_size", __src) & 0x80000000) == 0 || (__src[0] = "0", (paramc_ParamSetStr(v9, "logfile.max_size", "0") & 0x80000000) == 0))
        {
          v13 = LH_atou(__src[0]);
          *(v6 + 272) = v13;
          if (__src[0] != "0")
          {
            paramc_ParamRelease(v9);
            v13 = *(v6 + 272);
          }

          v3 = txtlog_ObjOpen(*v6, (v6 + 12), v13, (v6 + 432));
          if ((v3 & 0x80000000) == 0 && *(v6 + 8) == 1)
          {
            txtlog_startSession(*(v6 + 432));
          }
        }
      }

      goto LABEL_38;
    }

    goto LABEL_35;
  }

  v3 = 2226135047;
LABEL_38:
  cstdlib_memset((v6 + 440), 0, 0x18uLL);
  *(v6 + 440) = v6;
  *(v6 + 448) = txtwriter_ParamCheckChange;
  *(v6 + 456) = txtwriter_ParamLearnChange;
  v14 = *(v20 + 40);
  *__src = *(v6 + 440);
  v23 = txtwriter_ParamLearnChange;
  paramc_ListenerAdd(v14, "logfile.enabled", __src);
  v15 = *(v20 + 40);
  *__src = *(v6 + 440);
  v23 = *(v6 + 456);
  paramc_ListenerAdd(v15, "logfile.filter.level", __src);
  v16 = *(v20 + 40);
  *__src = *(v6 + 440);
  v23 = *(v6 + 456);
  paramc_ListenerAdd(v16, "logfile.filter.modules", __src);
  v17 = *(v20 + 40);
  *__src = *(v6 + 440);
  v23 = *(v6 + 456);
  paramc_ListenerAdd(v17, "logfile.filename.1", __src);
  v18 = *(v20 + 40);
  *__src = *(v6 + 440);
  v23 = *(v6 + 456);
  paramc_ListenerAdd(v18, "logfile.max_size", __src);
  *a3 = v6;
  *(a3 + 8) = 472934;
  if ((v3 & 0x80000000) != 0)
  {
    txtwriter_ClassClose(v6, *(a3 + 8));
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return v3;
}

uint64_t txtwriter_ClassClose(uint64_t a1, int a2)
{
  v3 = safeh_HandleCheck(a1, a2, 472934, 464);
  v4 = v3;
  if ((v3 & 0x80000000) != 0)
  {
    return v3 & 0x1FFF | 0x84B02000;
  }

  v5 = *a1;
  v6 = *(a1 + 432);
  if (v6)
  {
    if (*(a1 + 8))
    {
      txtlog_stopSession(v6);
      v6 = *(a1 + 432);
    }

    txtlog_ObjClose(v6);
  }

  v7 = *(v5 + 40);
  v15 = *(a1 + 440);
  v16 = *(a1 + 456);
  paramc_ListenerRemove(v7, "logfile.enabled", &v15);
  v8 = *(v5 + 40);
  v15 = *(a1 + 440);
  v16 = *(a1 + 456);
  paramc_ListenerRemove(v8, "logfile.filter.level", &v15);
  v9 = *(v5 + 40);
  v15 = *(a1 + 440);
  v16 = *(a1 + 456);
  paramc_ListenerRemove(v9, "logfile.filter.modules", &v15);
  v10 = *(v5 + 40);
  v15 = *(a1 + 440);
  v16 = *(a1 + 456);
  paramc_ListenerRemove(v10, "logfile.filename.1", &v15);
  v11 = *(v5 + 40);
  v15 = *(a1 + 440);
  v16 = *(a1 + 456);
  paramc_ListenerRemove(v11, "logfile.max_size", &v15);
  v12 = *(a1 + 424);
  if (v12)
  {
    v13 = critsec_ObjClose(v12);
  }

  else
  {
    v13 = v4;
  }

  heap_Free(*(*a1 + 8), a1);
  return v13;
}

uint64_t txtwriter_ObjOpen(uint64_t a1, int a2, void *a3)
{
  v5 = safeh_HandleCheck(a1, a2, 472934, 464);
  v6 = v5;
  if ((v5 & 0x80000000) != 0)
  {
    return v5 & 0x1FFF | 0x84B02000;
  }

  if (!a3)
  {
    return 2226135046;
  }

  *a3 = 0;
  v7 = heap_Calloc(*(*a1 + 8), 1, 8);
  if (!v7)
  {
    return 2226135050;
  }

  *v7 = a1;
  *a3 = v7;
  return v6;
}

uint64_t txtwriter_ObjClose(uint64_t a1)
{
  if (!a1)
  {
    return 2226135046;
  }

  heap_Free(*(**a1 + 8), a1);
  return 0;
}

uint64_t txtwriter_OutText(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, _BYTE *a5, va_list a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = 2226135046;
  if (a1 && a2 && a5)
  {
    v10 = *a1;
    if (*(*a1 + 8) && *(v10 + 280) >= a3 && txtwriter_IsModuleEnabled(a1, *(a2 + 64)))
    {
      v13 = txtfmt_vsprintFormattedEntry_v(__s, 0xC00uLL, *v10, a1, a2, a3, 0, a5, a6);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      v13 = critsec_Enter(*(v10 + 424));
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      else
      {
        v6 = txtlog_recordEntry(*(v10 + 432), __s);
        critsec_Leave(*(v10 + 424));
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t txtwriter_OutPublic(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = 2226135046;
  if (a1 && a2)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    memset(__b, 0, sizeof(__b));
    v9 = *a1;
    if (*(*a1 + 8))
    {
      v20 = 0;
      cstdlib_memset(__b, 0, 0xB8uLL);
      osspi_time((*v9)[8], &v20);
      osspi_ctime((*v9)[8], &v20, 128, __b);
      v14 = cstdlib_strlen(__b);
      v15 = v14;
      if (v14)
      {
        do
        {
          v16 = __str[v15 + 3071];
          if (v16 != 13 && v16 != 10)
          {
            break;
          }

          __str[v15-- + 3071] = 0;
        }

        while (v15);
      }

      *&v23 = a2;
      *(&v23 + 1) = a1;
      LODWORD(v24) = 0;
      DWORD1(v24) = a3;
      *(&v24 + 1) = "";
      LODWORD(v25) = 0;
      DWORD1(v25) = a4;
      *(&v25 + 1) = a5;
      v26 = a6;
      v18 = txtfmt_printEntry(__b, __str, 0xC00uLL);
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v18 = critsec_Enter(v9[53]);
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      else
      {
        v6 = txtlog_recordEntry(v9[54], __str);
        critsec_Leave(v9[53]);
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t txtwriter_GetLogLevel(uint64_t result)
{
  if (result)
  {
    if (*(*result + 8))
    {
      return *(*result + 280);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t txtwriter_IsModuleEnabled(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (*(*result + 288) == 1)
    {
      v3 = *(v2 + 420);
      if (*(v2 + 420))
      {
        v4 = (v2 + 292);
        while (1)
        {
          v5 = *v4++;
          if (v5 == a2)
          {
            break;
          }

          if (!--v3)
          {
            return 1;
          }
        }

        return 0;
      }

      return 1;
    }

    if (*(v2 + 284) == 1)
    {
      return 1;
    }

    v6 = *(v2 + 420);
    if (!*(v2 + 420))
    {
      return 0;
    }

    if (*(v2 + 292) == a2)
    {
      return 1;
    }

    v7 = (v2 + 294);
    v8 = 1;
    do
    {
      v9 = v8;
      if (v6 == v8)
      {
        break;
      }

      v10 = *v7++;
      ++v8;
    }

    while (v10 != a2);
    return v9 < v6;
  }

  return result;
}

uint64_t txtwriter_ParamCheckChange(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a4)
  {
    *a4 = 1;
  }

  return 0;
}

uint64_t txtwriter_ParamLearnChange(uint64_t a1, char *__s1, _BYTE *a3)
{
  if (a3 && *a3)
  {
    v6 = &off_287EE9980;
    v7 = 5;
    while (cstdlib_strcmp(__s1, *(v6 - 1)))
    {
      v6 += 2;
      if (!--v7)
      {
        return 0;
      }
    }

    critsec_Enter(*(a1 + 424));
    (*v6)(a1, a3);
    critsec_Leave(*(a1 + 424));
  }

  return 0;
}

uint64_t txtwriter_UpdateEnabled(uint64_t a1, unsigned __int8 *a2)
{
  result = 2226135047;
  if (a2 && *a2)
  {
    v5 = cstdlib_atoi(a2) > 0 || ((*a2 - 84) & 0xDF) == 0;
    result = 0;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t txtwriter_UpdateLevel(uint64_t a1, unsigned __int8 *a2)
{
  v3 = cstdlib_atoi(a2);
  if (v3 < 0)
  {
    return 2226135047;
  }

  v4 = v3;
  result = 0;
  *(a1 + 280) = v4;
  return result;
}

uint64_t txtwriter_UpdateModules(uint64_t a1, unsigned __int8 *a2)
{
  if (!*a2)
  {
    return 0;
  }

  v2 = (a1 + 284);
  *(a1 + 284) = 1;
  *(a1 + 420) = 0;
  v3 = *a2;
  v4 = 0;
  if (!*a2)
  {
    v5 = 1;
LABEL_34:
    if (v4)
    {
      *v2 = 0;
      if (!v5)
      {
        return 2226135047;
      }
    }

    return 0;
  }

  v5 = 1;
  while (1)
  {
    while (v3 <= 0x52u)
    {
      if (v3 != 32)
      {
        if (v3 != 65)
        {
          goto LABEL_21;
        }

        goto LABEL_11;
      }

      v9 = *++a2;
      v3 = v9;
    }

    if (v3 == 83)
    {
      goto LABEL_8;
    }

    if (v3 != 97)
    {
      if (v3 != 115)
      {
        goto LABEL_21;
      }

LABEL_8:
      v6 = a2[1];
LABEL_16:
      if ((v6 | 0x20) == 0x6B && (a2[2] | 0x20) == 0x69 && (a2[3] | 0x20) == 0x70 && (a2[4] | 0x20) == 0x20)
      {
        *(a1 + 288) = 1;
        v3 = a2[4];
        a2 += 4;
      }

      goto LABEL_21;
    }

LABEL_11:
    v6 = a2[1];
    if ((v6 | 0x20) == 0x6C && (a2[2] | 0x20) == 0x6C && (a2[3] | 0x20) == 0x20)
    {
      *v2 = 1;
      a2 += 3;
      goto LABEL_29;
    }

    if (v3 == 83)
    {
      goto LABEL_16;
    }

LABEL_21:
    if ((v3 - 48) > 9u)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0;
      do
      {
        v7 = 10 * v7 + (v3 - 48);
        v8 = *++a2;
        v3 = v8;
      }

      while ((v8 - 48) < 0xA);
    }

    if ((v3 | 0x20) == 0x20 && v5)
    {
      *(a1 + 292 + 2 * v4) = v7;
      v4 = *(a1 + 420) + 1;
      *(a1 + 420) = v4;
      v5 = v4 < 0x40u;
      goto LABEL_29;
    }

    if ((v3 & 0xDF) != 0)
    {
      break;
    }

LABEL_29:
    v3 = *a2;
    if (!*a2)
    {
      goto LABEL_34;
    }
  }

  result = 2226135047;
  if (v4)
  {
    *v2 = 0;
  }

  return result;
}

uint64_t txtwriter_UpdateDirectory(uint64_t a1, const char *a2)
{
  cstdlib_strcpy((a1 + 12), a2);
  txtlog_changeDirectory(*(a1 + 432), a2);
  return 0;
}

uint64_t featextract_closeStreams(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = (a2 + 16 * v4);
    if (*v8)
    {
      v9 = (*(a1 + 72))(*v8, v8[1]);
      *v8 = safeh_GetNullHandle();
      v8[1] = v10;
      if (v5 > -1 && v9 < 0)
      {
        v5 = v9;
      }

      else
      {
        v5 = v5;
      }
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  return v5;
}

uint64_t featextract_logFeatures(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 10);
  if (log_GetLogLevel(*(a1 + 32)) >= 8)
  {
    v5 = v4 & ~(v4 >> 31);
    LH_itoa(0x4Eu, v12, 0xAu);
    v6 = 0;
    while (v6 != 4)
    {
      if (v6 == 3)
      {
        v7 = "application/x-realspeak-usdurs;version=4.0";
        goto LABEL_9;
      }

      if (v6 == 2)
      {
        v11 = 5;
        v10 = 0;
        log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v12, "text/x-realspeak-usphonemes;charset=tts", &v11, 1u, 0);
        log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v12, "text/x-realspeak-usphonemes;charset=tts", *(a2 + 8 * v6 + 16), v5, 0);
        log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v12, "text/x-realspeak-usphonemes;charset=tts", &v10, 1u, 0);
      }

LABEL_13:
      if (++v6 == 218)
      {
        return 0;
      }
    }

    v7 = "application/x-realspeak-usplosives;version=4.0";
LABEL_9:
    v8 = *(*a2 + v6 + 2748);
    if (v8 == 2)
    {
      log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v12, v7, *(a2 + 8 * v6 + 1760), 2 * v5, 0);
    }

    else if (v8 == 1)
    {
      log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v12, v7, *(a2 + 8 * v6 + 16), v5, 0);
    }

    goto LABEL_13;
  }

  return 0;
}

uint64_t featextract_writeFeatures(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v173 = 0;
  v10 = (*(a2 + 112))(*(a3 + 16), *(a3 + 24), &v173, 864 * *(a5 + 5));
  if ((v10 & 0x80000000) != 0)
  {
    v171 = v10;
LABEL_300:
    log_OutPublic(*(a1 + 32), "FEATEXTRACT", 55008, "%s%s%s%x", v11, v12, v13, v14, "contentType");
    return v171;
  }

  LODWORD(v15) = *(a5 + 5);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      for (i = 12; i != 50; ++i)
      {
        v173[i] = 0;
      }

      v19 = 0;
      *(v173 + 25) = 0;
      do
      {
        v20 = v173;
        v21 = &v173[4 * v19];
        *(v21 + 18) = 0;
        *(v21 + 89) = 0;
        v20[v19++ + 640] = 0;
      }

      while (v19 != 71);
      v22 = v173 + 712;
      *(v173 + 712) = 0u;
      v22[1] = 0u;
      v22[2] = 0u;
      v22[3] = 0u;
      for (j = 778; j != 863; ++j)
      {
        v173[j] = 0;
      }

      cstdlib_memset(v173 + 52, 0, 8uLL);
      cstdlib_memset(v173 + 60, 0, 9uLL);
      v24 = a5[225];
      if (v24)
      {
        *v173 = *(v24 + 2 * v17);
      }

      v25 = a5[4];
      if (v25)
      {
        v173[2] = *(v25 + v17);
      }

      v26 = *(a4 + 3578);
      if (*(a4 + 3578))
      {
        v27 = a5[451];
        v28 = v173;
        *(v173 + 1) = *(v27 + 4 * v17 * v26);
        *(v28 + 2) = *(v27 + 4 * (v26 + v17 * v26) - 4);
      }

      v29 = a5[212];
      if (v29)
      {
        v173[776] = *(v29 + v17);
      }

      v30 = a5[213];
      if (v30)
      {
        v173[777] = *(v30 + v17);
      }

      if (*(a4 + 2966))
      {
        break;
      }

LABEL_111:
      if (*(a5[9] + v17))
      {
        v173[19] = *(a5[9] + v17);
      }

      v71 = a5[10];
      if (v71)
      {
        v173[20] = *(v71 + v17);
      }

      v72 = a5[6];
      if (v72)
      {
        v173[12] = *(v72 + v17);
      }

      v73 = a5[223];
      if (v73)
      {
        *(v173 + 25) = *(v73 + 2 * v17);
      }

      v74 = *(a4 + 3360);
      if (*(a4 + 3360))
      {
        v75 = v173 + 744;
        v76 = v16 * *(*a5 + 3360);
        v77 = (a5[449] + v76);
        v78 = (a5[448] + v76);
        do
        {
          v79 = *v78++;
          *(v75 - 8) = v79;
          v80 = *v77++;
          *v75++ = v80;
          --v74;
        }

        while (v74);
      }

      v81 = a5[444];
      if (v81)
      {
        *(v173 + 52) = *(v81 + 8 * v17);
      }

      if (*(a4 + 2560))
      {
        v82 = v173;
        v83 = a5[445] + 9 * v17;
        v84 = *(v83 + 8);
        *(v173 + 60) = *v83;
        v82[68] = v84;
      }

      v85 = a5[125];
      if (v85)
      {
        v173[778] = *(v85 + v17);
      }

      v86 = a5[4];
      if (v86)
      {
        v173[779] = *(v86 + v17);
      }

      v87 = a5[126];
      if (v87)
      {
        v173[780] = *(v87 + v17);
      }

      v88 = a5[75];
      if (v88)
      {
        v173[781] = *(v88 + v17);
      }

      v89 = a5[9];
      if (v89)
      {
        v173[782] = *(v89 + v17);
      }

      v90 = a5[10];
      if (v90)
      {
        v173[783] = *(v90 + v17);
      }

      v91 = a5[70];
      if (v91)
      {
        v173[784] = *(v91 + v17);
      }

      v92 = a5[14];
      if (v92)
      {
        v173[785] = *(v92 + v17);
      }

      v93 = a5[23];
      if (v93)
      {
        v173[786] = *(v93 + v17);
      }

      v94 = a5[38];
      if (v94)
      {
        v173[787] = *(v94 + v17);
      }

      v95 = a5[36];
      if (v95)
      {
        v173[788] = *(v95 + v17);
      }

      v96 = a5[39];
      if (v96)
      {
        v173[789] = *(v96 + v17);
      }

      v97 = a5[37];
      if (v97)
      {
        v173[790] = *(v97 + v17);
      }

      v98 = a5[16];
      if (v98)
      {
        v173[791] = *(v98 + v17);
      }

      v99 = a5[12];
      if (v99)
      {
        v173[792] = *(v99 + v17);
      }

      v100 = a5[13];
      if (v100)
      {
        v173[793] = *(v100 + v17);
      }

      v101 = a5[18];
      if (v101)
      {
        v173[794] = *(v101 + v17);
      }

      v102 = a5[24];
      if (v102)
      {
        v173[795] = *(v102 + v17);
      }

      v103 = a5[68];
      if (v103)
      {
        v173[796] = *(v103 + v17);
      }

      v104 = a5[76];
      if (v104)
      {
        v173[797] = *(v104 + v17);
      }

      v105 = a5[21];
      if (v105)
      {
        v173[798] = *(v105 + v17);
      }

      v106 = a5[31];
      if (v106)
      {
        v173[799] = *(v106 + v17);
      }

      v107 = a5[15];
      if (v107)
      {
        v173[800] = *(v107 + v17);
      }

      v108 = a5[17];
      if (v108)
      {
        v173[801] = *(v108 + v17);
      }

      v109 = a5[22];
      if (v109)
      {
        v173[802] = *(v109 + v17);
      }

      v110 = a5[33];
      if (v110)
      {
        v173[803] = *(v110 + v17);
      }

      v111 = a5[34];
      if (v111)
      {
        v173[804] = *(v111 + v17);
      }

      v112 = a5[77];
      if (v112)
      {
        v173[805] = *(v112 + v17);
      }

      v113 = a5[78];
      if (v113)
      {
        v173[806] = *(v113 + v17);
      }

      v114 = a5[71];
      if (v114)
      {
        v173[807] = *(v114 + v17);
      }

      v115 = a5[72];
      if (v115)
      {
        v173[808] = *(v115 + v17);
      }

      v116 = a5[73];
      if (v116)
      {
        v173[809] = *(v116 + v17);
      }

      v117 = a5[74];
      if (v117)
      {
        v173[810] = *(v117 + v17);
      }

      v118 = a5[19];
      if (v118)
      {
        v173[811] = *(v118 + v17);
      }

      v119 = a5[11];
      if (v119)
      {
        v173[812] = *(v119 + v17);
      }

      v120 = a5[20];
      if (v120)
      {
        v173[813] = *(v120 + v17);
      }

      v121 = a5[69];
      if (v121)
      {
        v173[814] = *(v121 + v17);
      }

      v122 = a5[57];
      if (v122)
      {
        v173[815] = *(v122 + v17);
      }

      v123 = a5[123];
      if (v123)
      {
        v173[816] = *(v123 + v17);
      }

      v124 = a5[124];
      if (v124)
      {
        v173[817] = *(v124 + v17);
      }

      v125 = a5[125];
      if (v125)
      {
        v173[818] = *(v125 + v17);
      }

      v126 = a5[126];
      if (v126)
      {
        v173[819] = *(v126 + v17);
      }

      v127 = a5[127];
      if (v127)
      {
        v173[820] = *(v127 + v17);
      }

      v128 = a5[128];
      if (v128)
      {
        v173[821] = *(v128 + v17);
      }

      v129 = a5[129];
      if (v129)
      {
        v173[822] = *(v129 + v17);
      }

      v130 = a5[130];
      if (v130)
      {
        v173[823] = *(v130 + v17);
      }

      v131 = a5[131];
      if (v131)
      {
        v173[824] = *(v131 + v17);
      }

      v132 = a5[132];
      if (v132)
      {
        v173[825] = *(v132 + v17);
      }

      v133 = a5[133];
      if (v133)
      {
        v173[826] = *(v133 + v17);
      }

      v134 = a5[134];
      if (v134)
      {
        v173[827] = *(v134 + v17);
      }

      v135 = a5[135];
      if (v135)
      {
        v173[828] = *(v135 + v17);
      }

      v136 = a5[136];
      if (v136)
      {
        v173[829] = *(v136 + v17);
      }

      v137 = a5[137];
      if (v137)
      {
        v173[830] = *(v137 + v17);
      }

      v138 = a5[138];
      if (v138)
      {
        v173[831] = *(v138 + v17);
      }

      v139 = a5[139];
      if (v139)
      {
        v173[832] = *(v139 + v17);
      }

      v140 = a5[140];
      if (v140)
      {
        v173[833] = *(v140 + v17);
      }

      v141 = a5[141];
      if (v141)
      {
        v173[834] = *(v141 + v17);
      }

      v142 = a5[142];
      v143 = v173;
      if (v142)
      {
        v173[835] = *(v142 + v17);
      }

      v144 = a5[143];
      if (v144)
      {
        v143[836] = *(v144 + v17);
      }

      v145 = a5[145];
      if (v145)
      {
        v143[837] = *(v145 + v17);
      }

      v146 = a5[144];
      if (v146)
      {
        v143[838] = *(v146 + v17);
      }

      v147 = a5[146];
      if (v147)
      {
        v143[839] = *(v147 + v17);
      }

      v148 = a5[147];
      if (v148)
      {
        v143[840] = *(v148 + v17);
      }

      v149 = a5[148];
      if (v149)
      {
        v143[841] = *(v149 + v17);
      }

      v150 = a5[149];
      if (v150)
      {
        v143[842] = *(v150 + v17);
      }

      v151 = a5[150];
      if (v151)
      {
        v143[843] = *(v151 + v17);
      }

      v152 = a5[151];
      if (v152)
      {
        v143[844] = *(v152 + v17);
      }

      v153 = a5[152];
      if (v153)
      {
        v143[845] = *(v153 + v17);
      }

      v154 = a5[153];
      if (v154)
      {
        v143[846] = *(v154 + v17);
      }

      v155 = a5[154];
      if (v155)
      {
        v143[847] = *(v155 + v17);
      }

      v156 = a5[155];
      if (v156)
      {
        v143[848] = *(v156 + v17);
      }

      v157 = a5[156];
      if (v157)
      {
        v143[849] = *(v157 + v17);
      }

      v158 = a5[157];
      if (v158)
      {
        v143[850] = *(v158 + v17);
      }

      v159 = a5[158];
      if (v159)
      {
        v143[851] = *(v159 + v17);
      }

      v160 = a5[159];
      if (v160)
      {
        v143[852] = *(v160 + v17);
      }

      v161 = a5[160];
      if (v161)
      {
        v143[853] = *(v161 + v17);
      }

      v162 = a5[161];
      if (v162)
      {
        v143[854] = *(v162 + v17);
      }

      v163 = a5[162];
      if (v163)
      {
        v143[855] = *(v163 + v17);
      }

      v164 = a5[163];
      if (v164)
      {
        v143[856] = *(v164 + v17);
      }

      v165 = a5[164];
      if (v165)
      {
        v143[857] = *(v165 + v17);
      }

      v166 = a5[165];
      if (v166)
      {
        v143[860] = *(v166 + v17);
      }

      v167 = a5[166];
      if (v167)
      {
        v143[861] = *(v167 + v17);
      }

      v168 = a5[167];
      if (v168)
      {
        v143[862] = *(v168 + v17);
      }

      v169 = a5[173];
      if (v169)
      {
        v143[858] = *(v169 + v17);
      }

      v170 = a5[174];
      if (v170)
      {
        v143[859] = *(v170 + v17);
      }

      v173 = v143 + 864;
      ++v17;
      v15 = *(a5 + 5);
      v16 += 4;
      if (v17 >= v15)
      {
        goto LABEL_297;
      }
    }

    v31 = 0;
    v32 = 0;
    while (1)
    {
      v33 = v17 * *(*a5 + 2966);
      v34 = v173;
      v35 = &v173[4 * v32];
      *(v35 + 18) = *(a5[446] + 4 * (v32 + v33));
      *(v35 + 89) = *(a5[447] + 4 * (v32 + v33));
      v34[v32 + 640] = *(a5[450] + v33 + v32);
      switch(*(*(a4 + 2968) + v31))
      {
        case 5:
          v52 = a5[27];
          if (v52)
          {
            v173[22] = *(v52 + v17);
          }

          v53 = a5[28];
          if (v53)
          {
            v173[23] = *(v53 + v17);
          }

          v54 = a5[214];
          if (!v54)
          {
            v55 = v173;
LABEL_100:
            *(v55 + 22) = 0;
            goto LABEL_110;
          }

          v55 = v173;
          if (!a5[215])
          {
            goto LABEL_100;
          }

          v173[44] = *(v54 + v17);
          v55[45] = *(a5[215] + v17);
LABEL_110:
          ++v32;
          v31 += 32;
          if (v32 >= *(a4 + 2966))
          {
            goto LABEL_111;
          }

          break;
        case 6:
          v56 = a5[29];
          if (v56)
          {
            v173[24] = *(v56 + v17);
          }

          v57 = a5[30];
          if (v57)
          {
            v173[25] = *(v57 + v17);
          }

          v58 = a5[216];
          if (!v58)
          {
            v59 = v173;
LABEL_102:
            *(v59 + 23) = 0;
            goto LABEL_110;
          }

          v59 = v173;
          if (!a5[217])
          {
            goto LABEL_102;
          }

          v173[46] = *(v58 + v17);
          v59[47] = *(a5[217] + v17);
          goto LABEL_110;
        case 7:
          v49 = a5[19];
          if (v49)
          {
            v173[13] = *(v49 + v17);
          }

          goto LABEL_110;
        case 8:
          v64 = a5[20];
          if (v64)
          {
            v173[14] = *(v64 + v17);
          }

          goto LABEL_110;
        case 9:
          v65 = a5[22];
          if (v65)
          {
            v173[15] = *(v65 + v17);
          }

          goto LABEL_110;
        case 0xA:
          v50 = a5[23];
          if (v50)
          {
            v173[16] = *(v50 + v17);
          }

          goto LABEL_110;
        case 0xB:
          v60 = a5[31];
          if (v60)
          {
            v173[17] = *(v60 + v17);
          }

          goto LABEL_110;
        case 0xC:
        case 0x13:
          v36 = a5[18];
          if (v36)
          {
            v173[18] = *(v36 + v17);
          }

          goto LABEL_110;
        case 0xD:
        case 0x14:
          v37 = a5[11];
          if (v37)
          {
            v173[21] = *(v37 + v17);
          }

          goto LABEL_110;
        case 0xE:
          v48 = a5[33];
          if (v48)
          {
            v173[26] = *(v48 + v17);
          }

          goto LABEL_110;
        case 0xF:
          v45 = a5[34];
          if (v45)
          {
            v173[27] = *(v45 + v17);
          }

          goto LABEL_110;
        case 0x10:
          v40 = a5[21];
          if (v40)
          {
            v173[28] = *(v40 + v17);
          }

          goto LABEL_110;
        case 0x12:
          v61 = a5[35];
          if (v61)
          {
            v173[29] = *(v61 + v17);
          }

          goto LABEL_110;
        case 0x1E:
          v62 = a5[67];
          if (v62)
          {
            v173[30] = *(v62 + v17);
          }

          else
          {
            v173[30] = 0;
          }

          goto LABEL_110;
        case 0x1F:
          v67 = a5[68];
          if (v67)
          {
            v173[31] = *(v67 + v17);
          }

          else
          {
            v173[31] = 0;
          }

          goto LABEL_110;
        case 0x20:
          v66 = a5[69];
          if (v66)
          {
            v173[32] = *(v66 + v17);
          }

          else
          {
            v173[32] = 0;
          }

          goto LABEL_110;
        case 0x21:
          v38 = a5[70];
          if (v38)
          {
            v173[33] = *(v38 + v17);
          }

          else
          {
            v173[33] = 0;
          }

          goto LABEL_110;
        case 0x22:
          v46 = a5[71];
          if (v46)
          {
            v173[34] = *(v46 + v17);
          }

          else
          {
            v173[34] = 0;
          }

          goto LABEL_110;
        case 0x23:
          v68 = a5[72];
          if (v68)
          {
            v173[35] = *(v68 + v17);
          }

          else
          {
            v173[35] = 0;
          }

          goto LABEL_110;
        case 0x24:
          v39 = a5[79];
          if (v39)
          {
            v173[36] = *(v39 + v17);
          }

          else
          {
            v173[36] = 0;
          }

          goto LABEL_110;
        case 0x25:
          v44 = a5[74];
          if (v44)
          {
            v173[37] = *(v44 + v17);
          }

          else
          {
            v173[37] = 0;
          }

          goto LABEL_110;
        case 0x26:
          v42 = a5[75];
          if (v42)
          {
            v173[38] = *(v42 + v17);
          }

          else
          {
            v173[38] = 0;
          }

          goto LABEL_110;
        case 0x27:
          v51 = a5[76];
          if (v51)
          {
            v173[39] = *(v51 + v17);
          }

          else
          {
            v173[39] = 0;
          }

          goto LABEL_110;
        case 0x28:
          v41 = a5[77];
          if (v41)
          {
            v173[40] = *(v41 + v17);
          }

          goto LABEL_110;
        case 0x29:
          v70 = a5[78];
          if (v70)
          {
            v173[41] = *(v70 + v17);
          }

          else
          {
            v173[41] = 0;
          }

          goto LABEL_110;
        case 0x2B:
          v69 = a5[173];
          if (v69)
          {
            v173[42] = *(v69 + v17);
          }

          else
          {
            v173[42] = 0;
          }

          goto LABEL_110;
        case 0x2C:
          v43 = a5[174];
          if (v43)
          {
            v173[43] = *(v43 + v17);
          }

          else
          {
            v173[43] = 0;
          }

          goto LABEL_110;
        case 0x45:
          v47 = a5[218];
          if (v47)
          {
            v173[48] = *(v47 + v17);
          }

          else
          {
            v173[48] = 0;
          }

          goto LABEL_110;
        case 0x46:
          v63 = a5[219];
          if (v63)
          {
            v173[49] = *(v63 + v17);
          }

          else
          {
            v173[49] = 0;
          }

          goto LABEL_110;
        default:
          goto LABEL_110;
      }
    }
  }

LABEL_297:
  v171 = (*(a2 + 120))(*(a3 + 16), *(a3 + 24), 864 * v15);
  if ((v171 & 0x80000000) != 0)
  {
    goto LABEL_300;
  }

  return v171;
}

uint64_t featextract_adjustSilAudioOrder(uint64_t result)
{
  v1 = *(result + 3512);
  if (v1)
  {
    if (*(result + 3520))
    {
      v2 = *(result + 1800);
      v3 = *v2;
      if (*v2)
      {
        v4 = 0;
        while (*v1 != 26)
        {
          ++v4;
          v1 += 8;
          if (v3 == v4)
          {
            return result;
          }
        }

        if (v3 <= v4)
        {
          goto LABEL_15;
        }

        v5 = 0;
        v6 = v3 - v4;
        do
        {
          v7 = *v1;
          v1 += 8;
          if (v7 == 8)
          {
            v5 = 1;
          }

          --v6;
        }

        while (v6);
        if (!v5)
        {
LABEL_15:
          v2[1] += v3 - v4;
          *v2 = v4;
        }
      }
    }
  }

  return result;
}

uint64_t MapProsodyValue_Scaling(int a1, int a2, int a3, int a4, int a5)
{
  v5 = ((2 * a4 * a5) | 1) / (2 * a2);
  if (v5 <= a1)
  {
    v5 = a1;
  }

  if (v5 >= a3)
  {
    return a3;
  }

  else
  {
    return v5;
  }
}

uint64_t betX_CreateRegularBrokerString(uint64_t a1, int a2, char *a3, size_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  __s = 0;
  *a3 = 0;
  if ((a2 & 0xFFFFFFFD) != 0)
  {
    return 2364547079;
  }

  if (a2)
  {
    v9 = "synth";
  }

  else
  {
    v9 = "select";
  }

  result = strhelper_SafeCat(a3, v9, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((result & 0x80000000) == 0)
  {
    result = paramc_ParamGetStr(*(a1 + 40), "voice", &__s);
    if ((result & 0x80000000) == 0)
    {
      result = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4);
      if ((result & 0x80000000) == 0)
      {
        result = strhelper_SafeCat(a3, __s, 0xFFFFFFFFFFFFFFFFLL, a4);
        if ((result & 0x80000000) == 0)
        {
          result = paramc_ParamGetStr(*(a1 + 40), "voicemodel", &__s);
          if ((result & 0x80000000) == 0)
          {
            result = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4);
            if ((result & 0x80000000) == 0)
            {
              result = strhelper_SafeCat(a3, __s, 0xFFFFFFFFFFFFFFFFLL, a4);
              if ((result & 0x80000000) == 0)
              {
                result = paramc_ParamGetStr(*(a1 + 40), "reduction", &__s);
                if ((result & 0x80000000) == 0)
                {
                  result = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4);
                  if ((result & 0x80000000) == 0)
                  {
                    result = strhelper_SafeCat(a3, __s, 0xFFFFFFFFFFFFFFFFLL, a4);
                    if ((result & 0x80000000) == 0)
                    {
                      if (a2 != 2 || (result = paramc_ParamGetStr(*(a1 + 40), "coder", &__s), (result & 0x80000000) == 0) && (result = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4), (result & 0x80000000) == 0) && (result = strhelper_SafeCat(a3, __s, 0xFFFFFFFFFFFFFFFFLL, a4), (result & 0x80000000) == 0))
                      {
                        result = paramc_ParamGetInt(*(a1 + 40), "frequencyhz", &v13);
                        if ((result & 0x80000000) == 0)
                        {
                          result = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4);
                          if ((result & 0x80000000) == 0)
                          {
                            result = strhelper_SafeCat(a3, "f", 0xFFFFFFFFFFFFFFFFLL, a4);
                            if ((result & 0x80000000) == 0)
                            {
                              v10 = v13;
                              v11 = cstdlib_strlen(a3);
                              LH_itoa(v10 / 1000, &a3[v11], 0xAu);
                              result = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__s);
                              if ((result & 0x80000000) == 0 && __s && *__s)
                              {
                                result = brokeraux_ComposeBrokerString(a1, a3, 0, 0, 0, 0, 0, v14, a4);
                                if ((result & 0x80000000) == 0)
                                {
                                  *a3 = 0;
                                  return strhelper_SafeCat(a3, v14, 0xFFFFFFFFFFFFFFFFLL, a4);
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
          }
        }
      }
    }
  }

  return result;
}

uint64_t betX_CreateVAOBrokerString(uint64_t a1, int a2, char *a3, size_t a4, int a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = 0;
  v5 = 2364547079;
  __s = 0;
  v30 = 0;
  v28 = 0;
  *a3 = 0;
  if ((a2 & 0xFFFFFFFD) != 1)
  {
    return v5;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voiceaddon", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v12 = *(a1 + 8);
  v13 = cstdlib_strlen("voiceaddonbaseuri.");
  v14 = cstdlib_strlen(__s);
  v15 = heap_Calloc(v12, 1, v13 + v14 + 1);
  if (!v15)
  {
    return 2364547082;
  }

  v16 = v15;
  cstdlib_strcpy(v15, "voiceaddonbaseuri.");
  cstdlib_strcat(v16, __s);
  v17 = paramc_ParamGetStr(*(a1 + 40), v16, &v30);
  heap_Free(*(a1 + 8), v16);
  if ((v17 & 0x80000000) != 0)
  {
    return v17;
  }

  if (v30 && *v30)
  {
    Str = strhelper_SafeCat(a3, v30, 0xFFFFFFFFFFFFFFFFLL, a4);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    v18 = 0;
    v19 = "_";
  }

  else
  {
    v19 = "/";
    v18 = 1;
  }

  if (a2 == 1)
  {
    v20 = "selectvao";
  }

  else
  {
    v20 = "synthvao";
  }

  Str = strhelper_SafeCat(a3, v20, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &v30);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, v19, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v21 = cstdlib_strlen(a3);
  if (v30)
  {
    if (cstdlib_strlen(v30) + v21 >= a4)
    {
      return 2364547081;
    }

    if (cstdlib_strlen(v30))
    {
      v22 = 0;
      do
      {
        v23 = v21 + 1;
        a3[v21++] = cstdlib_tolower(v30[v22++]);
      }

      while (v22 < cstdlib_strlen(v30));
    }

    else
    {
      v23 = v21;
    }

    a3[v23] = 0;
  }

  Str = strhelper_SafeCat(a3, v19, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, __s, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voicemodel", &v30);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, v19, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, v30, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, v19, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, "vao", 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = strhelper_SafeCat(a3, v19, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  if (a2 == 3)
  {
    Str = paramc_ParamGetStr(*(a1 + 40), "coder", &v30);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a3, v30, 0xFFFFFFFFFFFFFFFFLL, a4);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }

    Str = strhelper_SafeCat(a3, v19, 0xFFFFFFFFFFFFFFFFLL, a4);
    if ((Str & 0x80000000) != 0)
    {
      return Str;
    }
  }

  Str = paramc_ParamGetInt(*(a1 + 40), "frequencyhz", &v31);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v5 = strhelper_SafeCat(a3, "f", 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((v5 & 0x80000000) == 0)
  {
    v24 = v31;
    v25 = cstdlib_strlen(a3);
    LH_itoa(v24 / 1000, &a3[v25], 0xAu);
    if (v18)
    {
      if (!a5 && v30)
      {
        if (*v30)
        {
          Str = brokeraux_ComposeBrokerString(a1, a3, 0, 0, 0, 0, 0, v32, a4);
          if ((Str & 0x80000000) == 0)
          {
            *a3 = 0;
            return strhelper_SafeCat(a3, v32, 0xFFFFFFFFFFFFFFFFLL, a4);
          }

          return Str;
        }

        return v5;
      }

      if (!a5)
      {
        return v5;
      }
    }

    else
    {
      v26 = strhelper_SafeCat(a3, ".dat", 0xFFFFFFFFFFFFFFFFLL, a4);
      v5 = v26;
      if (!a5 || (v26 & 0x80000000) != 0)
      {
        return v5;
      }
    }

    if (!cupreader_IsCupInTheScope(a1, &v28))
    {
      return v5;
    }

    return cupreader_PrependCupName(a3, v28, a4);
  }

  return v5;
}

uint64_t betX_CreateAddonListParamName(uint64_t a1, char **a2)
{
  __s = 0;
  v16 = 0;
  __s2 = 0;
  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &v16);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voiceoperatingpoint", &__s);
  if ((Str & 0x80000000) != 0)
  {
    return Str;
  }

  v5 = paramc_ParamGetStr(*(a1 + 40), "vopversion", &__s2);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = cstdlib_strlen(__s);
    if (__s2)
    {
      v7 = cstdlib_strlen(__s2);
    }

    else
    {
      v7 = 0;
    }

    v8 = cstdlib_strlen(v16);
    v9 = heap_Calloc(*(a1 + 8), 1, v7 + v6 + v8 + 15);
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      cstdlib_strcpy(v9, "voiceaddons.");
      if (v8)
      {
        v12 = 0;
        do
        {
          v10[v12 + 12] = cstdlib_tolower(v16[v12]);
          ++v12;
        }

        while (v11 != v12);
      }

      cstdlib_strcat(v10, ".");
      cstdlib_strcat(v10, __s);
      if (__s2)
      {
        cstdlib_strcat(v10, ".");
        cstdlib_strcat(v10, __s2);
      }

      *a2 = v10;
    }

    else
    {
      return 2364547082;
    }
  }

  return v5;
}

uint64_t betX_GetVAOName(const char *a1, size_t *a2, char *a3, size_t a4)
{
  v5 = *a2;
  *a3 = 0;
  if (a1)
  {
    while (a1[v5] == 59)
    {
      ++v5;
    }

    if (!a1[v5])
    {
      return 0;
    }

    v11 = cstdlib_strchr(&a1[v5], 59);
    if (v11)
    {
      v10 = v11 - a1 + 1;
    }

    else
    {
      v10 = cstdlib_strlen(a1);
    }

    *a3 = 0;
    if (a1[v10 - 1] == 59)
    {
      v12 = ~v5;
    }

    else
    {
      v12 = -v5;
    }

    strhelper_SafeCat(a3, &a1[v5], v10 + v12, a4);
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  return 1;
}

uint64_t nnfeatex_Init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 7;
  if (a3 && a2 && a1 && a5)
  {
    v11 = heap_Alloc(*(a5 + 8), 56);
    if (v11)
    {
      v12 = v11;
      result = 0;
      *v12 = a5;
      *(v12 + 8) = a2;
      *(v12 + 16) = a3;
      *(v12 + 24) = a4;
      *(v12 + 48) = 0;
      *(v12 + 32) = 0;
      *(v12 + 38) = 0;
      *a1 = v12;
      *(a1 + 8) = -28879052;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t nnfeatex_DeInit(uint64_t *a1)
{
  if ((safeh_HandleCheck(*a1, a1[1], -28879052, 56) & 0x80000000) != 0)
  {
    return 8;
  }

  heap_Free(*(**a1 + 8), *a1);
  result = 0;
  *a1 = 0;
  *(a1 + 2) = 0;
  return result;
}

uint64_t nnfeatex_ProcessStart(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  if ((safeh_HandleCheck(*a1, a1[1], -28879052, 56) & 0x80000000) != 0)
  {
    return 8;
  }

  v10 = *a1;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v11 = *(v10 + 8);
  v12 = (*(v11 + 104))(a2, a3, 1, 0, &v26 + 2);
  if ((v12 & 0x80000000) != 0)
  {
    return v12;
  }

  inited = (*(*(v10 + 8) + 152))(a2, a3, 2, BYTE2(v26), &v26);
  if ((inited & 0x80000000) == 0)
  {
    v14 = v26;
    if (v26)
    {
      v15 = 1;
      while (1)
      {
        inited = (*(*(v10 + 8) + 120))(a2, a3, v14, &v26);
        if ((inited & 0x80000000) != 0)
        {
          break;
        }

        v14 = v26;
        if (!v26)
        {
          goto LABEL_11;
        }

        if (__CFADD__(v15++, 1))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v15 = 0;
LABEL_11:
      if (((*(v11 + 184))(a2, a3, HIWORD(v26), 1, &v25) & 0x80000000) == 0 && v25 == 1)
      {
        inited = (*(v11 + 176))(a2, a3, HIWORD(v26), 1, &v24, &v23);
        if ((inited & 0x80000000) != 0)
        {
          return inited;
        }

        v17 = v23;
        if (v23)
        {
          v18 = v24;
          do
          {
            v19 = *v18;
            v18 += 8;
            v20 = (1 << v19) & 0x270F0100;
            if (v19 <= 0x1D && v20 != 0)
            {
              v15 += 3;
            }

            --v17;
          }

          while (v17);
        }
      }

      if (!v15 || (inited = Init_WrdRec(*v10, (v10 + 32), v15), (inited & 0x80000000) == 0))
      {
        *(v10 + 48) = v15;
        if (!inited)
        {
          inited = Lingdb2NnWordRec(*v10, 0, *(v10 + 8), a2, a3, a4, a5, *(v10 + 32), (v10 + 40), (v10 + 42), (v10 + 44));
          if ((inited & 0x80000000) != 0)
          {
            if (*(v10 + 48))
            {
              Free_WrdRec(*v10, *(v10 + 32), *(v10 + 48));
            }
          }
        }
      }
    }
  }

  return inited;
}

uint64_t nnfeatex_Process(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, _DWORD *a8, int a9)
{
  if ((safeh_HandleCheck(*a1, a1[1], -28879052, 56) & 0x80000000) != 0)
  {
    return 8;
  }

  v14 = *a1;
  if (a9)
  {
    v20 = 0;
    v21 = 0;
    v15 = v14[2];
    if (*(v15 + 895))
    {
      v16 = 1;
    }

    else
    {
      v16 = *(v15 + 3578);
    }

    if (nnextract_Allocate(*v14, &v20, v14[4], *(v14 + 22), *(v14 + 20), *(v14 + 21)))
    {
      return 10;
    }

    v17 = nnextract_Process2Buff(*v14, v20, 1u, v16, 0, v14[3], &v21, 0, v14[2] + 2400, (v14[2] + 268), a7, a8);
    v18 = v21;
    if (!v17)
    {
      v17 = nnfeatex_CheckFeatures(v14, v21, a4);
    }

    nnextract_Deallocate(*v14, v20, 1, v18, v16);
  }

  else
  {
    v21 = 0;
    if (nnextract_Allocate(*v14, &v21, v14[4], *(v14 + 22), *(v14 + 20), *(v14 + 21)))
    {
      return 10;
    }

    v17 = nnextract_Rolled(*v14, v21, 1u, *(v14[2] + 3578), 0, v14[3], a6, 0, v14[2] + 2400, (v14[2] + 268));
    if (!v17)
    {
      return nnfeatex_CheckFeatures(v14, *a6, a4);
    }
  }

  return v17;
}

uint64_t nnfeatex_ProcessEnd(uint64_t *a1, uint64_t *a2, _DWORD *a3)
{
  if ((safeh_HandleCheck(*a1, a1[1], -28879052, 56) & 0x80000000) != 0)
  {
    return 8;
  }

  v6 = *a1;
  if (*(v6 + 12))
  {
    Free_WrdRec(*v6, v6[4], *(v6 + 12));
  }

  heap_Free(*(*v6 + 8), *a2);
  result = 0;
  *a2 = 0;
  *a3 = 0;
  *(v6 + 38) = 0;
  v6[4] = 0;
  return result;
}

uint64_t nnfeatex_CheckFeatures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a2 && a3)
  {
    v5 = *(a1 + 16);
    v6 = *(v5 + 3580);
    if (v6)
    {
      if (v6 != 1 || *(a2 + 4024) == *(a3 + 10))
      {
        return 0;
      }
    }

    else if (*(a2 + 4024) / *(v5 + 3578) == *(a3 + 10))
    {
      return 0;
    }

    return 21;
  }

  return result;
}

uint64_t NNFX_logMsg(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return log_OutPublic(*(result + 32), "NNFEATEXTRACT", 0, 0, a5, a6, a7, a8, v8);
  }

  return result;
}

uint64_t Init_WrdRec(void *a1, uint64_t *a2, unsigned int a3)
{
  v6 = a3;
  v7 = heap_Calloc(a1[1], a3, 144);
  *a2 = v7;
  if (v7)
  {
    if (!a3)
    {
      return 0;
    }

    v13 = 0;
    v14 = 144 * v6;
    while (1)
    {
      v15 = *a2 + v13;
      *v15 = 4;
      *(v15 + 4) = 0;
      *(v15 + 20) = 0;
      *(v15 + 12) = 0;
      v16 = heap_Alloc(a1[1], 100);
      *(*a2 + v13 + 32) = v16;
      if (!v16)
      {
        break;
      }

      **(*a2 + v13 + 32) = 0;
      v17 = heap_Alloc(a1[1], 100);
      *(*a2 + v13 + 40) = v17;
      if (!v17)
      {
        break;
      }

      **(*a2 + v13 + 40) = 0;
      v18 = heap_Alloc(a1[1], 100);
      *(*a2 + v13 + 48) = v18;
      if (!v18)
      {
        break;
      }

      **(*a2 + v13 + 48) = 0;
      v19 = heap_Alloc(a1[1], 100);
      *(*a2 + v13 + 56) = v19;
      if (!v19)
      {
        break;
      }

      **(*a2 + v13 + 56) = 0;
      v20 = heap_Alloc(a1[1], 100);
      *(*a2 + v13 + 64) = v20;
      if (!v20)
      {
        break;
      }

      **(*a2 + v13 + 64) = 0;
      v21 = heap_Alloc(a1[1], 100);
      *(*a2 + v13 + 72) = v21;
      if (!v21)
      {
        break;
      }

      **(*a2 + v13 + 72) = 0;
      v22 = heap_Alloc(a1[1], 100);
      *(*a2 + v13 + 80) = v22;
      if (!v22)
      {
        break;
      }

      **(*a2 + v13 + 80) = 0;
      v23 = heap_Alloc(a1[1], 100);
      *(*a2 + v13 + 88) = v23;
      if (!v23)
      {
        break;
      }

      **(*a2 + v13 + 88) = 0;
      v24 = heap_Alloc(a1[1], 100);
      *(*a2 + v13 + 96) = v24;
      if (!v24)
      {
        break;
      }

      **(*a2 + v13 + 96) = 0;
      v25 = heap_Alloc(a1[1], 100);
      *(*a2 + v13 + 104) = v25;
      if (!v25)
      {
        break;
      }

      **(*a2 + v13 + 104) = 0;
      v26 = heap_Alloc(a1[1], 100);
      *(*a2 + v13 + 112) = v26;
      if (!v26)
      {
        break;
      }

      **(*a2 + v13 + 112) = 0;
      *(*a2 + v13 + 120) = 78;
      v27 = heap_Alloc(a1[1], 512);
      *(*a2 + v13 + 136) = v27;
      if (!v27)
      {
        break;
      }

      **(*a2 + v13 + 136) = 0;
      v28 = heap_Alloc(a1[1], 512);
      *(*a2 + v13 + 128) = v28;
      if (!v28)
      {
        break;
      }

      **(*a2 + v13 + 128) = 0;
      v13 += 144;
      if (v14 == v13)
      {
        return 0;
      }
    }
  }

  NNFX_logMsg(a1, 0, "::ldbrec::memory allocation", v8, v9, v10, v11, v12);
  Free_WrdRec(a1, *a2, a3);
  return 2364547082;
}

void *Free_WrdRec(void *result, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v4 = result;
    if (a3)
    {
      v5 = a3;
      v6 = (a2 + 72);
      do
      {
        v7 = *(v6 - 5);
        if (v7)
        {
          heap_Free(v4[1], v7);
        }

        v8 = *(v6 - 4);
        if (v8)
        {
          heap_Free(v4[1], v8);
        }

        v9 = *(v6 - 3);
        if (v9)
        {
          heap_Free(v4[1], v9);
        }

        v10 = *(v6 - 2);
        if (v10)
        {
          heap_Free(v4[1], v10);
        }

        v11 = *(v6 - 1);
        if (v11)
        {
          heap_Free(v4[1], v11);
        }

        if (*v6)
        {
          heap_Free(v4[1], *v6);
        }

        v12 = v6[1];
        if (v12)
        {
          heap_Free(v4[1], v12);
        }

        v13 = v6[3];
        if (v13)
        {
          heap_Free(v4[1], v13);
        }

        v14 = v6[2];
        if (v14)
        {
          heap_Free(v4[1], v14);
        }

        v15 = v6[4];
        if (v15)
        {
          heap_Free(v4[1], v15);
        }

        v16 = v6[5];
        if (v16)
        {
          heap_Free(v4[1], v16);
        }

        v17 = v6[7];
        if (v17)
        {
          heap_Free(v4[1], v17);
        }

        v18 = v6[8];
        if (v18)
        {
          heap_Free(v4[1], v18);
        }

        v6 += 18;
        --v5;
      }

      while (v5);
    }

    v19 = v4[1];

    return heap_Free(v19, a2);
  }

  return result;
}

uint64_t InitFromWrdRec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && a3)
  {
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 120) = *(a2 + 120);
    cstdlib_memcpy(*(a3 + 32), *(a2 + 32), 0x64uLL);
    cstdlib_memcpy(*(a3 + 40), *(a2 + 40), 0x64uLL);
    cstdlib_memcpy(*(a3 + 48), *(a2 + 48), 0x64uLL);
    cstdlib_memcpy(*(a3 + 56), *(a2 + 56), 0x64uLL);
    cstdlib_memcpy(*(a3 + 64), *(a2 + 64), 0x64uLL);
    cstdlib_memcpy(*(a3 + 72), *(a2 + 72), 0x64uLL);
    cstdlib_memcpy(*(a3 + 80), *(a2 + 80), 0x64uLL);
    cstdlib_memcpy(*(a3 + 88), *(a2 + 88), 0x64uLL);
    cstdlib_memcpy(*(a3 + 96), *(a2 + 96), 0x64uLL);
    cstdlib_memcpy(*(a3 + 104), *(a2 + 104), 0x64uLL);
    cstdlib_memcpy(*(a3 + 112), *(a2 + 112), 0x64uLL);
    cstdlib_memcpy(*(a3 + 128), *(a2 + 128), 0x200uLL);
    cstdlib_memcpy(*(a3 + 136), *(a2 + 136), 0x200uLL);
    return 0;
  }

  else
  {
    NNFX_logMsg(a1, 0, "::ldbrec::null pointer", a4, a5, a6, a7, a8);
    return 2364547079;
  }
}

uint64_t Compile_SntWrdRec(uint64_t a1, _DWORD *a2, unsigned int a3, unsigned int a4, unsigned int a5, uint64_t *a6)
{
  v12 = heap_Calloc(*(a1 + 8), 1, 80);
  *a6 = v12;
  if (!v12 || (*(v12 + 8) = a4, (v18 = heap_Calloc(*(a1 + 8), a4, 8)) == 0) || (v19 = v18, **a6 = v18, *(*a6 + 24) = a5, (v20 = heap_Calloc(*(a1 + 8), a5, 8)) == 0))
  {
    NNFX_logMsg(a1, 0, "::ldbrec::memory allocation", v13, v14, v15, v16, v17);
    v26 = 2364547082;
    goto LABEL_15;
  }

  v21 = v20;
  *(*a6 + 16) = v20;
  if (!a3)
  {
LABEL_13:
    v26 = 0;
    v27 = *a6;
    *(v27 + 72) = 0;
    *(v27 + 64) = 0;
    v28 = *a6;
    *(v28 + 56) = 0;
    *(v28 + 48) = 0;
    v29 = *a6;
    *(v29 + 40) = 0;
    a6 = (v29 + 32);
    goto LABEL_17;
  }

  v22 = 0;
  v23 = 0;
  v24 = a3;
  while (1)
  {
    if ((*a2 - 5) < 3)
    {
      goto LABEL_12;
    }

    if (*a2 != 15)
    {
      break;
    }

    v25 = Copy_WrdRec(a1, a2, (v21 + 8 * v22));
    if ((v25 & 0x80000000) != 0)
    {
      goto LABEL_19;
    }

    ++v22;
LABEL_12:
    a2 += 36;
    if (!--v24)
    {
      goto LABEL_13;
    }
  }

  v25 = Copy_WrdRec(a1, a2, (v19 + 8 * v23));
  if ((v25 & 0x80000000) == 0)
  {
    ++v23;
    goto LABEL_12;
  }

LABEL_19:
  v26 = v25;
  if (v23)
  {
    v31 = 8 * v23;
    v32 = v19 - 8;
    do
    {
      v33 = *(v32 + v31);
      if (v33)
      {
        heap_Free(*(a1 + 8), v33);
      }

      v31 -= 8;
    }

    while (v31);
  }

  if (v22)
  {
    v34 = 8 * v22;
    v35 = v21 - 8;
    do
    {
      v36 = *(v35 + v34);
      if (v36)
      {
        heap_Free(*(a1 + 8), v36);
      }

      v34 -= 8;
    }

    while (v34);
  }

LABEL_15:
  if (*a6)
  {
    *(*a6 + 16) = 0;
    **a6 = 0;
    heap_Free(*(a1 + 8), *a6);
LABEL_17:
    *a6 = 0;
  }

  return v26;
}

uint64_t Copy_WrdRec(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 2364547079;
  if (a2)
  {
    v7 = heap_Calloc(*(a1 + 8), 1, 144);
    *a3 = v7;
    if (v7)
    {
      v13 = v7;
      *v7 = *a2;
      *(v7 + 16) = *(a2 + 16);
      *(v7 + 24) = *(a2 + 24);
      *(v7 + 120) = *(a2 + 120);
      v14 = DupWrdRecField(a1, (v7 + 32), 100, *(a2 + 32));
      if ((v14 & 0x80000000) == 0)
      {
        v14 = DupWrdRecField(a1, v13 + 5, 100, *(a2 + 40));
        if ((v14 & 0x80000000) == 0)
        {
          v14 = DupWrdRecField(a1, v13 + 6, 100, *(a2 + 48));
          if ((v14 & 0x80000000) == 0)
          {
            v14 = DupWrdRecField(a1, v13 + 7, 100, *(a2 + 56));
            if ((v14 & 0x80000000) == 0)
            {
              v14 = DupWrdRecField(a1, v13 + 8, 100, *(a2 + 64));
              if ((v14 & 0x80000000) == 0)
              {
                v14 = DupWrdRecField(a1, v13 + 9, 100, *(a2 + 72));
                if ((v14 & 0x80000000) == 0)
                {
                  v14 = DupWrdRecField(a1, v13 + 10, 100, *(a2 + 80));
                  if ((v14 & 0x80000000) == 0)
                  {
                    v14 = DupWrdRecField(a1, v13 + 11, 100, *(a2 + 88));
                    if ((v14 & 0x80000000) == 0)
                    {
                      v14 = DupWrdRecField(a1, v13 + 12, 100, *(a2 + 96));
                      if ((v14 & 0x80000000) == 0)
                      {
                        v14 = DupWrdRecField(a1, v13 + 13, 100, *(a2 + 104));
                        if ((v14 & 0x80000000) == 0)
                        {
                          v14 = DupWrdRecField(a1, v13 + 14, 100, *(a2 + 112));
                          if ((v14 & 0x80000000) == 0)
                          {
                            v14 = DupWrdRecField(a1, v13 + 17, 512, *(a2 + 136));
                            if ((v14 & 0x80000000) == 0)
                            {
                              v14 = DupWrdRecField(a1, v13 + 16, 512, *(a2 + 128));
                              if ((v14 & 0x80000000) == 0)
                              {
                                return 0;
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
        }
      }

      v3 = v14;
    }

    else
    {
      NNFX_logMsg(a1, 0, "::ldbrec::memory allocation", v8, v9, v10, v11, v12);
      v3 = 2364547082;
    }

    v15 = *a3;
    if (*a3)
    {
      v16 = v15[4];
      if (v16)
      {
        heap_Free(*(a1 + 8), v16);
      }

      v15[4] = 0;
      v17 = v15[5];
      if (v17)
      {
        heap_Free(*(a1 + 8), v17);
      }

      v15[5] = 0;
      v18 = v15[6];
      if (v18)
      {
        heap_Free(*(a1 + 8), v18);
      }

      v15[6] = 0;
      v19 = v15[7];
      if (v19)
      {
        heap_Free(*(a1 + 8), v19);
      }

      v15[7] = 0;
      v20 = v15[8];
      if (v20)
      {
        heap_Free(*(a1 + 8), v20);
      }

      v15[8] = 0;
      v21 = v15[9];
      if (v21)
      {
        heap_Free(*(a1 + 8), v21);
      }

      v15[9] = 0;
      v22 = v15[10];
      if (v22)
      {
        heap_Free(*(a1 + 8), v22);
      }

      v15[10] = 0;
      v23 = v15[11];
      if (v23)
      {
        heap_Free(*(a1 + 8), v23);
      }

      v15[11] = 0;
      v24 = v15[12];
      if (v24)
      {
        heap_Free(*(a1 + 8), v24);
      }

      v15[12] = 0;
      v25 = v15[13];
      if (v25)
      {
        heap_Free(*(a1 + 8), v25);
      }

      v15[13] = 0;
      v26 = v15[14];
      if (v26)
      {
        heap_Free(*(a1 + 8), v26);
      }

      v15[14] = 0;
      v27 = v15[17];
      if (v27)
      {
        heap_Free(*(a1 + 8), v27);
      }

      v15[17] = 0;
      v28 = v15[16];
      if (v28)
      {
        heap_Free(*(a1 + 8), v28);
      }

      v15[16] = 0;
      heap_Free(*(a1 + 8), *a3);
    }

    *a3 = 0;
  }

  return v3;
}

void *MakeSilWord(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  if (!a6)
  {
    v40 = "::ldbrec:: in MakeSilWord. nullTag parameter is not defined.\n";
    goto LABEL_32;
  }

  v10 = a5;
  v11 = a4;
  v14 = heap_Alloc(*(a1 + 8), 200);
  v20 = v14;
  if (v14)
  {
    *(v14 + 140) = a2;
    *(v14 + 144) = 1;
    *(v14 + 192) = 1;
    *(v14 + 136) = 78;
    *v14 = 0;
    *(v14 + 4) = a3;
    *(v14 + 20) = 0;
    *(v14 + 24) = 0;
    *(v14 + 12) = 0;
    *(v14 + 16) = v11;
    *(v14 + 8) = a3;
    v21 = stringdup(a1, "");
    v20[4] = v21;
    if (!v21)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold (empty) ortho.\n";
      goto LABEL_32;
    }

    v22 = stringdup(a1, "");
    v20[5] = v22;
    if (!v22)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold (empty) SPR.\n";
      goto LABEL_32;
    }

    v23 = stringdup(a1, "");
    v20[6] = v23;
    if (!v23)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold (empty) tnTag.\n";
      goto LABEL_32;
    }

    v24 = stringdup(a1, "");
    v20[7] = v24;
    if (!v24)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold (empty) POS.\n";
      goto LABEL_32;
    }

    v25 = stringdup(a1, "");
    v20[8] = v25;
    if (!v25)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold (empty) CGN.\n";
      goto LABEL_32;
    }

    v26 = stringdup(a1, "");
    v20[9] = v26;
    if (!v26)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold (empty) lang.\n";
      goto LABEL_32;
    }

    v27 = stringdup(a1, "");
    v20[10] = v27;
    if (!v27 || (v28 = stringdup(a1, ""), (v20[11] = v28) == 0))
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold (empty) nluPOS.\n";
      goto LABEL_32;
    }

    v29 = stringdup(a1, "");
    v20[12] = v29;
    if (!v29)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold (empty) nluCLS.\n";
      goto LABEL_32;
    }

    v30 = stringdup(a1, "");
    v20[14] = v30;
    if (!v30)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold (empty) nluPNC.\n";
      goto LABEL_32;
    }

    v31 = stringdup(a1, "");
    v20[13] = v31;
    if (!v31)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold (empty) nluCMP.\n";
      goto LABEL_32;
    }

    v32 = stringdup(a1, "");
    v20[15] = v32;
    if (!v32)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold (empty) nluBDS.\n";
      goto LABEL_32;
    }

    v33 = stringdup(a1, "");
    v20[16] = v33;
    if (!v33)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold (empty) nluCPS.\n";
      goto LABEL_32;
    }

    v34 = heap_Alloc(*(a1 + 8), 2);
    v20[19] = v34;
    if (!v34)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold phones.\n";
      goto LABEL_32;
    }

    *v34 = v10;
    *(v20[19] + 1) = 0;
    v35 = heap_Alloc(*(a1 + 8), 2);
    v20[20] = v35;
    if (!v35)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold differentiators.\n";
      goto LABEL_32;
    }

    *v35 = 32;
    *(v20[20] + 1) = 0;
    v36 = heap_Alloc(*(a1 + 8), 4);
    v20[22] = v36;
    if (!v36)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold lexStressSeq.\n";
      goto LABEL_32;
    }

    *v36 = 0;
    v37 = heap_Alloc(*(a1 + 8), 4);
    v20[23] = v37;
    if (!v37)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold syllBdrySeq.\n";
      goto LABEL_32;
    }

    *v37 = 1;
    v38 = heap_Alloc(*(a1 + 8), 8);
    v20[21] = v38;
    if (!v38)
    {
      v40 = "::ldbrec:: in MakeSilWord() allocating memory to hold phone tags.\n";
      goto LABEL_32;
    }

    v39 = stringdup(a1, a6);
    *v20[21] = v39;
    if (!v39)
    {
      v40 = "::ldbrec:: in MakeSilWord() copying (null) phone tag.\n";
LABEL_32:
      NNFX_logMsg(a1, 0, v40, a4, a5, a6, a7, a8);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, "::ldbrec:: in MakeSilWord() while allocating memory.\n", v15, v16, v17, v18, v19);
  }

  return v20;
}

void *FillProsWords(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v13 = 2;
  *a4 = 2;
  if (a3)
  {
    v14 = 0;
    v13 = 2;
    do
    {
      v15 = *(a2 + 8 * v14);
      if (*(v15 + 2))
      {
        v16 = 0;
        v17 = *v15;
        do
        {
          *a4 = v13 + 1;
          if (*(*(v17 + 8 * v16) + 16))
          {
            v13 += 2;
            *a4 = v13;
          }

          else
          {
            ++v13;
          }

          ++v16;
        }

        while (v16 < *(v15 + 2));
      }

      else
      {
        LODWORD(v16) = 0;
      }

      ++v14;
    }

    while (v14 != a3);
    if (!v13)
    {
      v18 = "::ldbrec:: in FillProsWords. Number of prosodic words is %d.\n";
LABEL_14:
      v19 = a1;
      goto LABEL_176;
    }
  }

  else
  {
    LODWORD(v16) = 0;
  }

  v20 = a1;
  v133 = heap_Alloc(*(a1 + 8), 8 * v13);
  if (!v133)
  {
    v18 = "::ldbrec:: in FillProsWords while allocating memory to hold ppPWRI\n";
    goto LABEL_144;
  }

  if (**(***a2 + 136) != 35)
  {
    v20 = a1;
    SilWord = MakeSilWord(a1, 0, 0, 200, 35, v8, a7, a8);
    *v133 = SilWord;
    if (SilWord)
    {
      v21 = 1;
      if (a3)
      {
        goto LABEL_19;
      }

LABEL_135:
      v105 = 0;
      v27 = 0xFFFFFFFFLL;
      v25 = v21;
      v26 = a1;
      goto LABEL_136;
    }

    v18 = "::ldbrec:: in FillProsWords while creating initial silence.\n";
LABEL_144:
    v19 = v20;
    goto LABEL_176;
  }

  v21 = 0;
  if (!a3)
  {
    goto LABEL_135;
  }

LABEL_19:
  v22 = 0;
  v23 = 0;
  v118 = 0;
  v24 = 0;
  v112 = a3;
  v120 = 32;
  v25 = v21;
  v26 = a1;
  while (1)
  {
    v130 = v22;
    if (v23)
    {
      heap_Free(*(v26 + 8), v23);
    }

    v23 = stringdup(v26, v8);
    if (!v23)
    {
      v18 = "::ldbrec:: in FillProsWords resetting active-tag value.\n";
      goto LABEL_175;
    }

    v27 = v130;
    v28 = *(a2 + 8 * v130);
    if (*(v28 + 8))
    {
      break;
    }

    LODWORD(v16) = 0;
LABEL_130:
    v22 = v27 + 1;
    if (v27 + 1 == v112)
    {
      v105 = v23;
LABEL_136:
      if (!InsertSilWord(v26, a2, v133, v27, (v16 - 1), (v21 - 1), v25, *v10, v8))
      {
        return 0;
      }

      v107 = v25 + 1;
      if ((v21 + 1) < *v10)
      {
        v108 = heap_Realloc(*(a1 + 8), v133, 8 * (v21 + 1));
        if (v108)
        {
          *v10 = v21 + 1;
          v133 = v108;
        }
      }

      if (v105)
      {
        heap_Free(*(a1 + 8), v105);
      }

      *v9 = v107;
      return v133;
    }
  }

  v113 = v23;
  v110 = v9;
  v16 = 0;
  v117 = v8;
  while (1)
  {
    v129 = cstdlib_strlen(*(*(*v28 + 8 * v16) + 136));
    v29 = v129 + 1;
    v30 = heap_Alloc(*(v26 + 8), v29);
    if (!v30)
    {
      v18 = "::ldbrec:: in FillProsWords allocating memory to hold phone sequences.\n";
      goto LABEL_175;
    }

    v125 = v30;
    v31 = heap_Alloc(*(v26 + 8), v29);
    if (!v31)
    {
      v18 = "::ldbrec:: in FillProsWords allocating memory to hold differentiator sequences.\n";
      goto LABEL_175;
    }

    v124 = v31;
    v121 = heap_Calloc(*(v26 + 8), v29, 4);
    if (!v121)
    {
      v18 = "::ldbrec:: in FillProsWrods allocating memory to hold lexical stress.\n";
      goto LABEL_175;
    }

    v123 = heap_Calloc(*(v26 + 8), v29, 4);
    if (!v123)
    {
      v18 = "::ldbrec:: in FillProsWords allocating memory to hold syllable boundaries.\n";
      goto LABEL_175;
    }

    v119 = v21;
    v131 = heap_Alloc(*(v26 + 8), 8 * v29);
    if (!v131)
    {
      v18 = "::ldbrec:: in FillProsWords allocating memory to hold phone tags.\n";
      goto LABEL_175;
    }

    v128 = v25;
    if (v129 == -1)
    {
      break;
    }

    bzero(v131, 8 * v29);
    v32 = v129;
    a4 = v130;
    v33 = v24;
    if (v129)
    {
      goto LABEL_34;
    }

LABEL_122:
    v118 = *(*(**(a2 + 8 * a4) + 8 * v16) + 16);
    heap_Free(*(v26 + 8), v121);
    heap_Free(*(v26 + 8), v125);
    heap_Free(*(v26 + 8), v124);
    heap_Free(*(v26 + 8), v123);
    v8 = v117;
    if (v129 != -1)
    {
      v104 = v131;
      do
      {
        if (*v104)
        {
          heap_Free(*(v26 + 8), *v104);
          *v104 = 0;
        }

        ++v104;
        --v29;
      }

      while (v29);
    }

    heap_Free(*(v26 + 8), v131);
    ++v16;
    v27 = v130;
    v28 = *(a2 + 8 * v130);
    v25 = v128;
    if (v16 >= *(v28 + 8))
    {
      v9 = v110;
      v23 = v113;
      goto LABEL_130;
    }
  }

  v32 = v129;
  a4 = v130;
  v33 = v24;
LABEL_34:
  v34 = 0;
  v35 = 0;
  v36 = v32;
  v37 = 1;
  v122 = v16;
LABEL_35:
  for (i = v35; i < v36; ++i)
  {
    v39 = *(*(**(a2 + 8 * a4) + 8 * v16) + 136);
    v40 = *(v39 + i);
    if (!*(v39 + i))
    {
      break;
    }

    v41 = *(v39 + i);
    if (v41 == 92)
    {
      v111 = v37;
      v115 = v34;
      v54 = i + 1;
      v55 = cstdlib_strchr((v39 + (i + 1)), 92);
      if (!v55)
      {
        NNFX_logMsg(a1, 1, "::ldbrec:: in FillProsWords. End of SPR reached without finding closing tag.", v56, v57, v58, v59, v60);
        goto LABEL_77;
      }

      v54 = v55 - *(*(**(a2 + 8 * v130) + 8 * v16) + 136);
      if ((v54 - i + 1) <= 2)
      {
        NNFX_logMsg(a1, 1, "::ldbrec:: empty tag in FillProsWords.", v56, v57, v58, v59, v60);
        if (v54 + 1 == i)
        {
          v61 = 1;
        }

        else
        {
          v61 = v54 - i;
        }

        v54 = v61 + i;
        goto LABEL_77;
      }

      heap_Free(*(a1 + 8), v113);
      v62 = heap_Alloc(*(a1 + 8), (v54 - i));
      if (!v62)
      {
        v18 = "::ldbrec:: in FillProsWords allocating memory when updating tag value.\n";
        goto LABEL_14;
      }

      v63 = 0;
      v64 = (~i + v54);
      a4 = v130;
      do
      {
        v62[v63] = *(*(*(**(a2 + 8 * v130) + 8 * v16) + 136) + (i + v63 + 1));
        ++v63;
      }

      while (v63 < v64);
      v62[v64] = 0;
      if (*v62 == 47)
      {
        heap_Free(*(a1 + 8), v62);
        v65 = stringdup(a1, v117);
        if (!v65)
        {
          v18 = "::ldbrec:: in FillProsWords resetting active-tag value.\n";
          goto LABEL_14;
        }

        v113 = v65;
LABEL_77:
        a4 = v130;
      }

      else
      {
        v113 = v62;
      }

      v37 = v111;
      v33 = v33;
      v34 = v115;
      v32 = v129;
      v35 = v54 + 1;
      if (v54 + 1 < v129)
      {
        goto LABEL_35;
      }

      break;
    }

    if ((v40 & 0xF7) == 0x25)
    {
      v33 = 0;
      v37 = 1;
    }

    else
    {
      if (*(v39 + i) > 0x29u)
      {
        if (v41 == 42)
        {
          continue;
        }

        if (v41 == 96)
        {
          v33 = 2;
          continue;
        }
      }

      else
      {
        if (v41 == 34)
        {
          v33 = 1;
          continue;
        }

        if (v41 == 39)
        {
          v33 = 3;
          continue;
        }
      }

      if (!a7 || (v42 = v34, v114 = v36, v43 = v37, v44 = cstdlib_strchr(a7, v40), v37 = v43, v36 = v114, v32 = v129, a4 = v130, v34 = v42, v16 = v122, !v44))
      {
        if (v34 >= v32)
        {
          v18 = "::ldbrec:: in FillProsWords. Trying to write information for phone at index %d in buffer of length %d.";
          goto LABEL_14;
        }

        if (*(a8 + v40) == 255)
        {
          v47 = v34;
          v48 = v36;
          v49 = v37;
          NNFX_logMsg(a1, 1, "::ldbrec:: in FillProsWords unvalid phoneme %c.\n", a4, a5, a6, a7, a8);
          v37 = v49;
          v36 = v48;
          v32 = v129;
          a4 = v130;
          v34 = v47;
        }

        else
        {
          *(v125 + v34) = v40;
          *(v121 + 4 * v34) = v33;
          *(v124 + v34) = 32;
          if (v34)
          {
            v45 = (v34 - 1);
            *(v124 + v45) = v120;
            *(v123 + 4 * v34) = 0;
            if (v37 == 1)
            {
              v46 = 1;
              goto LABEL_60;
            }
          }

          else
          {
            v46 = 0;
            v45 = 0;
LABEL_60:
            *(v123 + 4 * v45) = v46;
          }

          v50 = v34;
          v51 = v33;
          v52 = v34;
          v53 = stringdup(a1, v113);
          *(v131 + v52) = v53;
          if (!v53)
          {
            v18 = "::ldbrec:: in FillProsWords copying phone tag for phone %c.\n";
            goto LABEL_14;
          }

          v37 = 0;
          v34 = (v50 + 1);
          v120 = 32;
          v32 = v129;
          a4 = v130;
          v33 = v51;
        }

        v16 = v122;
        continue;
      }

      v120 = v40;
    }
  }

  if (v34 > v32)
  {
    v18 = "::ldbrec:: in FillProsWords. Trying to null-terminate string at index %d in a buffer of length %d.\n";
    goto LABEL_14;
  }

  v26 = a1;
  if (v32)
  {
    v21 = v119;
    v66 = v128;
    if (v118)
    {
      v24 = v33;
      if (v128 >= 2)
      {
        v67 = v16;
        v68 = v34;
        if (!InsertSilWord(a1, a2, v133, a4, (v67 - 1), (v119 - 1), v128, *v10, v117))
        {
          return 0;
        }

        v21 = (v119 + 1);
        v66 = v128 + 1;
        a4 = v130;
        LODWORD(v34) = v68;
        v16 = v122;
      }
    }

    else
    {
      v24 = v33;
    }
  }

  else
  {
    v24 = v33;
    v21 = v119;
    v66 = v128;
  }

  v128 = v66;
  if (!v34)
  {
    goto LABEL_122;
  }

  *(v125 + v34) = 0;
  v69 = v34 - 1;
  *(v124 + (v34 - 1)) = v120;
  *(v124 + v34) = 0;
  if (v21 >= *v10)
  {
    v18 = "::ldbrec:: in FillProsWords trying to allocate for %d-th prosodic word while expecting %d";
  }

  else
  {
    v116 = v34;
    v70 = heap_Alloc(*(a1 + 8), 200);
    v133[v21] = v70;
    if (v70)
    {
      v71 = *(**(a2 + 8 * v130) + 8 * v16);
      *v70 = *v71;
      *(v70 + 16) = *(v71 + 16);
      *(v70 + 24) = *(v71 + 24);
      *(v70 + 136) = *(v71 + 120);
      v72 = stringdup(a1, *(v71 + 128));
      *(v133[v21] + 32) = v72;
      if (v72)
      {
        v73 = stringdup(a1, *(*(**(a2 + 8 * v130) + 8 * v16) + 136));
        *(v133[v21] + 40) = v73;
        if (v73)
        {
          v74 = stringdup(a1, *(*(**(a2 + 8 * v130) + 8 * v16) + 32));
          *(v133[v21] + 48) = v74;
          if (v74)
          {
            v75 = stringdup(a1, *(*(**(a2 + 8 * v130) + 8 * v16) + 40));
            *(v133[v21] + 56) = v75;
            if (v75)
            {
              v76 = stringdup(a1, *(*(**(a2 + 8 * v130) + 8 * v16) + 48));
              *(v133[v21] + 64) = v76;
              if (v76)
              {
                v77 = stringdup(a1, *(*(**(a2 + 8 * v130) + 8 * v16) + 56));
                *(v133[v21] + 72) = v77;
                if (v77)
                {
                  v78 = stringdup(a1, *(*(**(a2 + 8 * v130) + 8 * v16) + 64));
                  *(v133[v21] + 80) = v78;
                  if (v78)
                  {
                    v79 = stringdup(a1, *(*(**(a2 + 8 * v130) + 8 * v16) + 72));
                    *(v133[v21] + 88) = v79;
                    if (v79)
                    {
                      v80 = stringdup(a1, *(*(**(a2 + 8 * v130) + 8 * v16) + 80));
                      *(v133[v21] + 96) = v80;
                      if (v80)
                      {
                        v81 = stringdup(a1, *(*(**(a2 + 8 * v130) + 8 * v16) + 96));
                        *(v133[v21] + 112) = v81;
                        if (v81)
                        {
                          v82 = stringdup(a1, *(*(**(a2 + 8 * v130) + 8 * v16) + 88));
                          *(v133[v21] + 104) = v82;
                          if (v82)
                          {
                            v83 = stringdup(a1, *(*(**(a2 + 8 * v130) + 8 * v16) + 104));
                            *(v133[v21] + 120) = v83;
                            if (v83)
                            {
                              v84 = stringdup(a1, *(*(**(a2 + 8 * v130) + 8 * v16) + 112));
                              *(v133[v21] + 128) = v84;
                              if (v84)
                              {
                                *(v123 + 4 * v69) = 1;
                                v85 = v133[v21];
                                v85[35] = v66;
                                v85[36] = v116;
                                v86 = (*(*(a2 + 8 * v130) + 8) - 1);
                                v85[48] = 0;
                                v85[49] = v16 == v86;
                                v87 = heap_Calloc(*(a1 + 8), v116, 4);
                                *(v133[v21] + 176) = v87;
                                if (v87)
                                {
                                  v128 = v66 + v116;
                                  v88 = *(v133[v21] + 176);
                                  v89 = v116;
                                  v90 = v121;
                                  do
                                  {
                                    v91 = *v90++;
                                    *v88++ = v91;
                                    --v89;
                                  }

                                  while (v89);
                                  v92 = heap_Alloc(*(a1 + 8), v116 + 1);
                                  *(v133[v21] + 152) = v92;
                                  if (v92)
                                  {
                                    for (j = 0; j != v116; ++j)
                                    {
                                      *(*(v133[v21] + 152) + j) = *(v125 + j);
                                    }

                                    *(*(v133[v21] + 152) + v116) = 0;
                                    v94 = heap_Alloc(*(a1 + 8), v116 + 1);
                                    *(v133[v21] + 160) = v94;
                                    if (v94)
                                    {
                                      for (k = 0; k != v116; ++k)
                                      {
                                        *(*(v133[v21] + 160) + k) = *(v124 + k);
                                      }

                                      *(*(v133[v21] + 160) + v116) = 0;
                                      v96 = heap_Calloc(*(a1 + 8), v116, 4);
                                      *(v133[v21] + 184) = v96;
                                      if (v96)
                                      {
                                        v97 = *(v133[v21] + 184);
                                        v98 = v116;
                                        v99 = v123;
                                        do
                                        {
                                          v100 = *v99++;
                                          *v97++ = v100;
                                          --v98;
                                        }

                                        while (v98);
                                        v101 = heap_Alloc(*(a1 + 8), 8 * v116);
                                        *(v133[v21] + 168) = v101;
                                        if (v101)
                                        {
                                          v102 = 0;
                                          while (1)
                                          {
                                            v103 = stringdup(a1, *(v131 + v102));
                                            *(*(v133[v21] + 168) + 8 * v102) = v103;
                                            if (!v103)
                                            {
                                              break;
                                            }

                                            if (v116 == ++v102)
                                            {
                                              v24 = 0;
                                              v21 = (v21 + 1);
                                              v120 = 32;
                                              a4 = v130;
                                              goto LABEL_122;
                                            }
                                          }

                                          v18 = "::ldbrec:: in FillProsWords allocating mem to hold phone-tag sequence for phone %d in pros word %d";
                                        }

                                        else
                                        {
                                          v18 = "::ldbrec:: in FillProsWords allocating mem to hold phone-tag sequences for pros word %d\n";
                                        }
                                      }

                                      else
                                      {
                                        v18 = "::ldbrec:: in FillProsWords allocating mem to hold syll bdry sequence for pros word %d\n";
                                      }
                                    }

                                    else
                                    {
                                      v18 = "::ldbrec:: in FillProsWords allocating mem to hold differentiators sequence for pros word %d\n";
                                    }
                                  }

                                  else
                                  {
                                    v18 = "::ldbrec:: in FillProsWords allocating mem to hold phone sequence for pros word %d\n";
                                  }
                                }

                                else
                                {
                                  v18 = "::ldbrec:: in FillProsWords allocating mem to hold lex stress sequence for pros word %d\n";
                                }
                              }

                              else
                              {
                                v18 = "::ldbrec:: in FillProsWord creating nluCPS field.\n";
                              }
                            }

                            else
                            {
                              v18 = "::ldbrec:: in FillProsWord creating nluBDS field.\n";
                            }
                          }

                          else
                          {
                            v18 = "::ldbrec:: in FillProsWord creating nluCMP field.\n";
                          }
                        }

                        else
                        {
                          v18 = "::ldbrec:: in FillProsWord creating nluPNC field.\n";
                        }
                      }

                      else
                      {
                        v18 = "::ldbrec:: in FillProsWord creating nluCLS field.\n";
                      }
                    }

                    else
                    {
                      v18 = "::ldbrec:: in FillProsWord creating nluPHR field.\n";
                    }
                  }

                  else
                  {
                    v18 = "::ldbrec:: in FillProsWord creating nluPOS field.\n";
                  }
                }

                else
                {
                  v18 = "::ldbrec:: in FillProsWord creating lang field.\n";
                }
              }

              else
              {
                v18 = "::ldbrec:: in FillProsWord creating CGN field.\n";
              }
            }

            else
            {
              v18 = "::ldbrec:: in FillProsWord creating POS field.\n";
            }
          }

          else
          {
            v18 = "::ldbrec:: in FillProsWord creating tnTag field.\n";
          }
        }

        else
        {
          v18 = "::ldbrec:: in FillProsWord creating SPR field.\n";
        }
      }

      else
      {
        v18 = "::ldbrec:: in FillProsWord creating ortho field.\n";
      }
    }

    else
    {
      v18 = "::ldbrec:: in FillProsWords allocating ppPWRI for record %d\n";
    }
  }

LABEL_175:
  v19 = v26;
LABEL_176:
  NNFX_logMsg(v19, 0, v18, a4, a5, a6, a7, a8);
  return 0;
}