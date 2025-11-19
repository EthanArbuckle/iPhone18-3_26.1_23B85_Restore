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
  v7 = *MEMORY[0x1E69E9840];
  utf8_GetUtf8Symbol(a1, a2, a3, __s);
  if (Utf8_Utf8NbrOfSymbols(__s) <= 2)
  {
    v5 = 0;
    utf8_Utf8ToUtf16(__s, UTF8_TRAILING_BYTES[__s[0]] + 1, 0, &v5, 1u, 0, 0);
    result = v5;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
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
          v10 = strlen(__s);
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
  v7 = *MEMORY[0x1E69E9840];
  utf8_GetUtf8Symbol(a1, a2, a3, __s);
  if (Utf8_Utf8NbrOfSymbols(__s) <= 2)
  {
    v5 = 0;
    utf8_Utf8ToUtf32(__s, UTF8_TRAILING_BYTES[__s[0]] + 1, 0, &v5, 1u, 0, 0);
    result = v5;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

size_t utf8_GetNextUtf8Offset(char *__s, int a2)
{
  if (!__s || !*__s)
  {
    return 0;
  }

  LODWORD(v3) = a2;
  v4 = strlen(__s);
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
      v4 = strlen(__s);
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
      LODWORD(__s) = strlen(__s);
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
  switch(a1)
  {
    case 4u:
      v7 = (a2 + a3);
      if (*v7 == 239)
      {
LABEL_10:
        if (v7[1] != 187 || v7[2] != 191)
        {
          break;
        }

        return 1;
      }

      if (a3 <= a4 && !*v7)
      {
        return 1;
      }

      break;
    case 3u:
      if (a3 <= a4 && !*(a2 + a3))
      {
        return 1;
      }

      break;
    case 2u:
      v7 = (a2 + a3);
      if (*v7 != 239)
      {
        break;
      }

      goto LABEL_10;
    default:
      break;
  }

  result = Utf8_GetWCharClassifier(a1);
  if (result)
  {
    v9 = result;
    result = utf8_GetWCharFromUtf8(a2, a3, a4);
    if (result)
    {

      return v9();
    }
  }

  return result;
}

BOOL utf8_ToLower(const char *a1, unsigned int a2, uint64_t a3)
{
  v6 = strlen(a1);
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
      LOWORD(v10) = asc_1C37ABEBC[(WCharFromUtf8 - 902)];
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

char *utf8_strchr(char *a1, unsigned __int8 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (v3 > 0xF5 || v3 - 194 > 0xFFFFFFFD)
  {
    v5 = 0;
  }

  else
  {
    v5 = UTF8_TRAILING_BYTES[*a2] + 1;
  }

  __strncpy_chk();
  __s2[v5] = 0;
  result = strstr(a1, __s2);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL utf8_IsChineseLetter(const char *a1)
{
  v5 = 0;
  v2 = strlen(a1);
  v4 = 0;
  utf8_Utf8ToUtf32_Tolerant(a1, v2, &v5, 1u, &v4);
  return v4 && wchar_IsChineseLetter(v5) != 0;
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
  v1 = vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_1C37ABEE0, vaddq_s32(vdupq_n_s32(a1), xmmword_1C37ABED0))));
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
    return off_1F42D0B00[a1];
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
      v2 = &word_1E81A1870;
      v3 = 239;
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
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a1;
    *a2 = 0;
    if (!a1 || !*a1)
    {
      v5 = "all";
    }

    if (LH_stricmp(v5, "all"))
    {
      for (i = v5; ; ++i)
      {
        v7 = *i;
        v8 = v7 > 0x3B;
        v9 = (1 << v7) & 0x800100100000001;
        if (v8 || v9 == 0)
        {
          continue;
        }

        if ((i - v5 - 1) <= 0x3E)
        {
          __strncpy_chk();
          __s[i - v5] = 0;
          if (__s[0] - 48 > 9)
          {
            v11 = LH_MapModuleNameToId(__s);
            if (v11)
            {
LABEL_16:
              if (*a2 && strlen(a2) + 1 < a3)
              {
                *&a2[strlen(a2)] = 32;
              }

              __sprintf_chk(__s, 0, 0x40uLL, "%d", v11);
              v12 = strlen(a2);
              if (strlen(__s) + v12 < a3)
              {
                strcat(a2, __s);
              }
            }
          }

          else
          {
            v11 = LH_atoi(__s);
            if (v11)
            {
              goto LABEL_16;
            }
          }
        }

        if (!*i)
        {
          goto LABEL_26;
        }

        LODWORD(v5) = i++ + 1;
      }
    }

    snprintf(a2, a3, "%s", v5);
LABEL_26:
    result = 0;
  }

  else
  {
    result = 18;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
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
  v4 = *a1;
  v5 = __tolower(*a1);
  v6 = __tolower(*a2);
  if (v5 != v6)
  {
    return (v5 - v6);
  }

  v7 = v4;
  v8 = 1;
  while (v7)
  {
    v7 = a1[v8];
    v5 = __tolower(v7);
    v6 = __tolower(a2[v8++]);
    if (v5 != v6)
    {
      return (v5 - v6);
    }
  }

  return 0;
}

uint64_t LH_strnicmp(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = 0;
  if (a3)
  {
    v7 = 1;
    do
    {
      v8 = *(a1 + v6);
      v9 = __tolower(v8);
      v10 = *(a2 + v6);
      v11 = __tolower(v10);
      if (v10)
      {
        v12 = v8 == 0;
      }

      else
      {
        v12 = 1;
      }

      if (v12 || v9 != v11)
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

  v15 = __tolower(*(a1 + v6));
  return (v15 - __tolower(*(a2 + v6)));
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
    v2 = strlen(result);
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
    v2 = strlen(result);
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

size_t wcslen(const __int32 *a1)
{
  v1 = 0;
    ;
  }

  return ((v1 * 4) >> 2) - 1;
}

char *__cdecl strtok_r(char *__str, const char *__sep, char **__lasts)
{
  v5 = __str;
  if (!__str)
  {
    v5 = *__lasts;
  }

  v6 = &v5[strspn(v5, __sep)];
  if (!*v6)
  {
    return 0;
  }

  v7 = strpbrk(v6, __sep);
  if (v7)
  {
    *v7 = 0;
    v8 = v7 + 1;
  }

  else
  {
    v8 = &v6[strlen(v6)];
  }

  *__lasts = v8;
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

const char *TxtEncodingGetName(int a1)
{
  v2 = &dword_1E81A2760;
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
  for (i = &qword_1E81A2768; *(i - 2) != a1; i += 4)
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
  v130 = *MEMORY[0x1E69E9840];
  v128 = 0;
  if (a8)
  {
    *a8 = 0;
  }

  if (!a4)
  {
    goto LABEL_39;
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
    goto LABEL_39;
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

            if (v51 >= a7)
            {
              v52 = a7;
            }

            else
            {
              v52 = v51;
            }
          }

          else
          {
            v52 = 0;
            if (a5)
            {
              while (a4[v52])
              {
                if (a5 == ++v52)
                {
                  v52 = a5;
                  break;
                }
              }
            }

            v9 = heap_Alloc(a1, (v52 + 1));
            if (!v9)
            {
              goto LABEL_40;
            }
          }

          v65 = &qword_1E81A2770;
          v66 = 128;
          while (*(v65 - 4) != a3)
          {
            v65 += 4;
            if (!--v66)
            {
              v67 = 0;
              goto LABEL_198;
            }
          }

          v67 = *v65;
LABEL_198:
          v68 = &qword_1E81A2768;
          v69 = 128;
          while (*(v68 - 2) != a2)
          {
            v68 += 4;
            if (!--v69)
            {
              v70 = 0;
              goto LABEL_203;
            }
          }

          v70 = *v68;
LABEL_203:
          v71 = 0;
          if (v52)
          {
            v72 = v9;
            do
            {
              v74 = *v11++;
              v73 = v74;
              if (v70)
              {
                if (v70 == BuckToWChar)
                {
                  v73 = BuckToWChar[v73];
                }

                else if ((v73 & 0x80) != 0)
                {
                  v73 = v70[v73 & 0x7F];
                }
              }

              if (!v73)
              {
                break;
              }

              v75 = TxtEncodingWCharToChar(v73, v67);
              *v72 = v75;
              if (v75)
              {
                v9[v71++] = v75;
              }

              ++v72;
              --v52;
            }

            while (v52);
          }

          if (a8)
          {
            *a8 = v71;
          }

          v9[v71] = 0;
LABEL_40:
          v24 = *MEMORY[0x1E69E9840];
          return v9;
        }

LABEL_39:
        v9 = 0;
        goto LABEL_40;
      }

      if (v20 == 4)
      {
        v26 = v16 ^ 1;
        if (a6)
        {
          v26 = 1;
        }

        if (v26)
        {
          if ((v22 & v17 & v21 & 1) == 0)
          {
            __s[0] = 0;
            v27 = a6;
            if (a6)
            {
              goto LABEL_324;
            }

            if (a5)
            {
              v28 = 0;
              while (a4[v28])
              {
                if (a5 == ++v28)
                {
                  LODWORD(v28) = a5;
                  break;
                }
              }

              v29 = a7;
              v30 = (2 * v28 + 2);
            }

            else
            {
              v29 = a7;
              v30 = 2;
            }

            v27 = heap_Alloc(a1, v30);
            a7 = v29;
            if (v27)
            {
LABEL_324:
              v107 = &qword_1E81A2768;
              v108 = 128;
              while (*(v107 - 2) != a2)
              {
                v107 += 4;
                if (!--v108)
                {
                  v109 = 0;
                  goto LABEL_329;
                }
              }

              v109 = *v107;
LABEL_329:
              if (a5)
              {
                v110 = 0;
                v111 = 0;
                v112 = 2;
                v125 = v109;
                v127 = v27;
                while (1)
                {
                  v113 = v11[v111];
                  if (v109)
                  {
                    if (v109 == BuckToWChar)
                    {
                      v113 = BuckToWChar[v11[v111]];
                    }

                    else if ((v113 & 0x80) != 0)
                    {
                      v113 = v109[v113 & 0x7F];
                    }
                  }

                  if (!v113)
                  {
                    break;
                  }

                  v114 = bswap32(v113) >> 16;
                  if (v22)
                  {
                    v115 = v113;
                  }

                  else
                  {
                    v115 = v114;
                  }

                  if (v16)
                  {
                    *__s = 0;
                    v116 = a7;
                    if (v115 > 0x7Fu)
                    {
                      if (v115 > 0x7FEu)
                      {
                        if (v115 != 0xFFFF)
                        {
                          __s[0] = (v115 >> 12) | 0xE0;
                          __s[1] = (v115 >> 6) & 0x3F | 0x80;
                          __s[2] = v115 & 0x3F | 0x80;
                        }
                      }

                      else
                      {
                        __s[0] = (v115 >> 6) | 0xC0;
                        __s[1] = v115 & 0x3F | 0x80;
                      }
                    }

                    else
                    {
                      __s[0] = v115;
                    }

                    v117 = strlen(__s);
                    v112 = 1;
                    a7 = v116;
                    v109 = v125;
                    v27 = v127;
                  }

                  else
                  {
                    v117 = 1;
                  }

                  if (!v9)
                  {
                    goto LABEL_352;
                  }

                  v118 = v117 + v110;
                  if (v117 + v110 >= a7 / v112)
                  {
                    break;
                  }

                  if (v112 != 2)
                  {
                    v119 = (v27 + v110);
                    v120 = a7;
                    v121 = v112;
                    memcpy(v119, __s, v117);
                    v112 = v121;
                    v109 = v125;
                    v27 = v127;
                    a7 = v120;
                    v110 = v118;
                  }

                  else
                  {
LABEL_352:
                    *(v27 + 2 * v110++) = v115;
                  }

                  if (a5 == ++v111)
                  {
                    v111 = a5;
                    break;
                  }
                }

                v122 = v112 == 1;
              }

              else
              {
                v111 = 0;
                v110 = 0;
                v122 = 0;
              }

              if (a8)
              {
                *a8 = v111;
              }

              if (v122)
              {
                *(v27 + v110) = 0;
              }

              else
              {
                *(v27 + 2 * v110) = 0;
              }
            }

            v9 = v27;
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        goto LABEL_169;
      }

      if (!v19)
      {
        goto LABEL_39;
      }

      if (a6)
      {
        v53 = 0;
        if (a5)
        {
          while (*&a4[2 * v53])
          {
            if (a5 == ++v53)
            {
              v53 = a5;
              break;
            }
          }
        }

        v54 = a7 - 1;
        if (v53 < a7 - 1)
        {
          v54 = v53;
        }

        if (a7 == 1)
        {
          v54 = 0;
        }

        if (a7)
        {
          v55 = v54;
        }

        else
        {
          v55 = v53;
        }
      }

      else
      {
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

        v9 = heap_Alloc(a1, (v55 + 1));
        if (!v9)
        {
          goto LABEL_40;
        }
      }

      v76 = &qword_1E81A2770;
      v77 = 128;
      while (*(v76 - 4) != a3)
      {
        v76 += 4;
        if (!--v77)
        {
          v78 = 0;
          goto LABEL_227;
        }
      }

      v78 = *v76;
LABEL_227:
      for (i = 0; v55; --v55)
      {
        v79 = *v11;
        v11 += 2;
        v80 = TxtEncodingWCharToChar(v79, v78);
        if (v80)
        {
          v9[i++] = v80;
        }
      }

      goto LABEL_316;
    }

    if (v20 == 1)
    {
      if (!v19)
      {
        goto LABEL_39;
      }

      if (a6)
      {
        if (a5)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          while (1)
          {
            v41 = v11[v39];
            if (!v11[v39])
            {
              goto LABEL_300;
            }

            if ((v41 & 0x80) == 0)
            {
              break;
            }

            if ((v41 - 194) < 0x1E)
            {
              v42 = 2;
              goto LABEL_91;
            }

            if ((v41 & 0xF0) == 0xE0)
            {
              v42 = 3;
              goto LABEL_91;
            }

            if ((v41 - 245) >= 0xFFFFFFFB)
            {
              v42 = 4;
              goto LABEL_91;
            }

            v43 = a7;
            v42 = 1;
LABEL_93:
            if (++v40 < a5)
            {
              v39 += v42;
              a7 = v43;
              if (v39 < a5)
              {
                continue;
              }
            }

            goto LABEL_300;
          }

          v42 = 1;
LABEL_91:
          v44 = v42 + v38;
          if (v42 + v38 >= a7)
          {
            goto LABEL_300;
          }

          v43 = a7;
          memcpy(&v9[v38], &v11[v39], v42);
          v38 = v44;
          goto LABEL_93;
        }

        v40 = 0;
        v38 = 0;
LABEL_300:
        v9[v38] = 0;
        if (!a8)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (a5)
        {
          v81 = 0;
          v40 = 0;
          while (1)
          {
            v82 = v11[v81];
            if (!v11[v81])
            {
              break;
            }

            if ((v82 & 0x80) != 0)
            {
              if ((v82 - 194) >= 0x1E)
              {
                v84 = v82 & 0xF0;
                if ((v82 - 245) < 0xFFFFFFFB)
                {
                  v83 = 1;
                }

                else
                {
                  v83 = 4;
                }

                if (v84 == 224)
                {
                  v83 = 3;
                }
              }

              else
              {
                v83 = 2;
              }
            }

            else
            {
              v83 = 1;
            }

            v81 += v83;
            if (a5 == ++v40)
            {
              v40 = a5;
              break;
            }
          }
        }

        else
        {
          v40 = 0;
          v81 = 0;
        }

        v106 = strhelper_StringAppend(a1, 0, v11, v81, &v128, 0x100uLL);
        v9 = v106;
        if (!a8 || !v106)
        {
          goto LABEL_40;
        }
      }

LABEL_321:
      *a8 = v40;
      goto LABEL_40;
    }

    if (!v19)
    {
      goto LABEL_39;
    }

    if (!a6)
    {
      v85 = TxtwStringAppend(a1, a4, a5, &v128);
      v9 = v85;
      if (a8 && v85)
      {
        *a8 = LH_wcslen(v85);
      }

      goto LABEL_40;
    }

    v56 = 0;
    if (a5)
    {
      while (*&a4[2 * v56])
      {
        if (a5 == ++v56)
        {
          v56 = a5;
          break;
        }
      }
    }

    v57 = (a7 >> 1) - 1;
    if (v56 < v57)
    {
      v57 = v56;
    }

    if (a7 == 1)
    {
      v57 = 0;
    }

    if (a7)
    {
      v58 = v57;
    }

    else
    {
      v58 = v56;
    }

    LH_wcsncpy(a6, a4, v58);
    *&v9[2 * v58] = 0;
    if (!a8)
    {
      goto LABEL_40;
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
          goto LABEL_39;
        }

        if (a6)
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

          v63 = a7 - 1;
          if (v62 < a7 - 1)
          {
            v63 = v62;
          }

          if (a7 == 1)
          {
            v63 = 0;
          }

          if (a7)
          {
            v64 = v63;
          }

          else
          {
            v64 = v62;
          }
        }

        else
        {
          v64 = 0;
          if (a5)
          {
            while (*&a4[2 * v64])
            {
              if (a5 == ++v64)
              {
                v64 = a5;
                break;
              }
            }
          }

          v9 = heap_Alloc(a1, (v64 + 1));
          if (!v9)
          {
            goto LABEL_40;
          }
        }

        v101 = &qword_1E81A2770;
        v102 = 128;
        while (*(v101 - 4) != a3)
        {
          v101 += 4;
          if (!--v102)
          {
            v103 = 0;
            goto LABEL_312;
          }
        }

        v103 = *v101;
LABEL_312:
        for (i = 0; v64; --v64)
        {
          v104 = *v11;
          v11 += 2;
          v105 = TxtEncodingWCharToChar(bswap32(v104) >> 16, v103);
          if (v105)
          {
            v9[i++] = v105;
          }
        }

LABEL_316:
        v9[i] = 0;
        if (!a8)
        {
          goto LABEL_40;
        }

LABEL_317:
        *a8 = i;
        goto LABEL_40;
      }

      if (!a6)
      {
        v40 = 0;
        if (a5)
        {
          while (*&a4[2 * v40])
          {
            if (a5 == ++v40)
            {
              v40 = a5;
              break;
            }
          }
        }

        v9 = heap_Alloc(a1, (2 * v40 + 2));
        if (!v9)
        {
          goto LABEL_40;
        }

        TXTENC_swab(v11, v9, 2 * v40 + 2);
        if (!a8)
        {
          goto LABEL_40;
        }

        goto LABEL_321;
      }

      v59 = 0;
      if (a5)
      {
        while (*&a4[2 * v59])
        {
          if (a5 == ++v59)
          {
            v59 = a5;
            break;
          }
        }
      }

      v60 = (a7 >> 1) - 1;
      if (v59 < v60)
      {
        v60 = v59;
      }

      if (a7 == 1)
      {
        v60 = 0;
      }

      if (a7)
      {
        v58 = v60;
      }

      else
      {
        v58 = v59;
      }

      TXTENC_swab(a4, a6, 2 * v58 + 2);
      if (!a8)
      {
        goto LABEL_40;
      }

LABEL_168:
      *a8 = v58;
      goto LABEL_40;
    }

    goto LABEL_97;
  }

  if ((v20 - 7) >= 2)
  {
LABEL_97:
    if (v17 & v23)
    {
      goto LABEL_39;
    }

    v126 = v14;
    if (a6)
    {
      goto LABEL_262;
    }

    if (!a5)
    {
      v50 = a7;
      LODWORD(v46) = 0;
      goto LABEL_258;
    }

    v45 = 0;
    v46 = 0;
    while (1)
    {
      v47 = a4[v45];
      if (!a4[v45])
      {
        v50 = a7;
LABEL_258:
        v86 = (v46 + 1);
        v87 = (2 * v46 + 2);
        if (v23)
        {
          v88 = v87;
        }

        else
        {
          v88 = v86;
        }

        v9 = heap_Alloc(a1, v88);
        a7 = v50;
        if (!v9)
        {
          goto LABEL_40;
        }

LABEL_262:
        v89 = &qword_1E81A2770;
        v90 = 128;
        while (*(v89 - 4) != a3)
        {
          v89 += 4;
          if (!--v90)
          {
            v124 = 0;
            goto LABEL_267;
          }
        }

        v124 = *v89;
LABEL_267:
        v91 = 0;
        if (!a5)
        {
LABEL_294:
          if (a8)
          {
            *a8 = v91;
          }

          if (v18)
          {
            v9[v91] = 0;
          }

          else
          {
            *&v9[2 * v91] = 0;
          }

          goto LABEL_40;
        }

        v92 = 0;
        v93 = 0;
        v94 = a7 - 1;
        v123 = (a7 - 1) >> 1;
        while (2)
        {
          v95 = v11[v92];
          if (!v11[v92])
          {
            goto LABEL_294;
          }

          if ((v95 & 0x80) == 0)
          {
            v96 = 1;
            goto LABEL_279;
          }

          if ((v95 - 194) < 0x1E)
          {
            v96 = 2;
            goto LABEL_279;
          }

          if ((v95 & 0xF0) == 0xE0)
          {
            v96 = 3;
            goto LABEL_279;
          }

          if ((v95 - 245) <= 0xFFFFFFFA)
          {
            ++v92;
            goto LABEL_293;
          }

          v96 = 4;
LABEL_279:
          __strncpy_chk();
          __s[v96] = 0;
          LODWORD(v97) = TxtEncodingCharUTF8ToUTF16(__s);
          v98 = __rev16(v97);
          if (v126)
          {
            v97 = v98;
          }

          else
          {
            v97 = v97;
          }

          if (v18)
          {
            if (v91 >= v94)
            {
              goto LABEL_294;
            }

            v99 = TxtEncodingWCharToChar(v97, v124);
            if (v99)
            {
              v9[v91] = v99;
              goto LABEL_288;
            }
          }

          else
          {
            if (v91 >= v123)
            {
              goto LABEL_294;
            }

            *&v9[2 * v91] = v97;
LABEL_288:
            ++v91;
          }

          v100 = v96 + v92;
          if (v92 < v96 + v92)
          {
            while (v11[v92])
            {
              ++v92;
              if (!--v96)
              {
                v92 = v100;
                break;
              }
            }
          }

LABEL_293:
          if (++v93 == a5)
          {
            goto LABEL_294;
          }

          continue;
        }
      }

      if ((v47 & 0x80) == 0)
      {
        v48 = 1;
        goto LABEL_111;
      }

      if ((v47 - 194) < 0x1E)
      {
        v48 = 2;
        goto LABEL_111;
      }

      if ((v47 & 0xF0) == 0xE0)
      {
        break;
      }

      if ((v47 - 245) >= 0xFFFFFFFB)
      {
        v48 = 4;
LABEL_111:
        v49 = v48 + v45;
        if (v45 < v48 + v45)
        {
          while (a4[v45])
          {
            ++v45;
            if (!--v48)
            {
              v45 = v49;
              goto LABEL_115;
            }
          }
        }

        goto LABEL_115;
      }

      ++v45;
LABEL_115:
      if (++v46 == a5)
      {
        v50 = a7;
        LODWORD(v46) = a5;
        goto LABEL_258;
      }
    }

    v48 = 3;
    goto LABEL_111;
  }

  if (!v19)
  {
    goto LABEL_39;
  }

  if (a6)
  {
    if (a5)
    {
      v31 = 0;
      i = 0;
      v33 = a7 - 1;
      while (1)
      {
        v34 = *&v11[2 * i];
        if (!*&v11[2 * i])
        {
          break;
        }

        v35 = __rev16(v34);
        if (v15)
        {
          v34 = v35;
        }

        *__s = 0;
        if (v34 > 0x7F)
        {
          if (v34 > 0x7FE)
          {
            if (v34 != 0xFFFF)
            {
              __s[0] = (v34 >> 12) | 0xE0;
              __s[1] = (v34 >> 6) & 0x3F | 0x80;
              __s[2] = v34 & 0x3F | 0x80;
            }
          }

          else
          {
            __s[0] = (v34 >> 6) | 0xC0;
            __s[1] = v34 & 0x3F | 0x80;
          }
        }

        else
        {
          __s[0] = v34;
        }

        v36 = strlen(__s);
        v37 = v36 + v31;
        if (v36 + v31 >= v33)
        {
          break;
        }

        if (v36)
        {
          strncpy(&v9[v31], __s, v36);
        }

        ++i;
        v31 = v37;
        if (a5 == i)
        {
          i = a5;
          v31 = v37;
          break;
        }
      }
    }

    else
    {
      i = 0;
      v31 = 0;
    }

    v9[v31] = 0;
    if (!a8)
    {
      goto LABEL_40;
    }

    goto LABEL_317;
  }

LABEL_169:
  v61 = *MEMORY[0x1E69E9840];

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
  v34 = *MEMORY[0x1E69E9840];
  v32 = 0;
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

  v30 = v12;
  v13 = heap_Alloc(a1, v12);
  if (!v13)
  {
    v17 = 0;
    goto LABEL_57;
  }

  v14 = v13;
  v15 = &qword_1E81A2768;
  v16 = 128;
  v31 = a1;
  v28 = a5;
  while (*(v15 - 2) != a4)
  {
    v15 += 4;
    if (!--v16)
    {
      v29 = 0;
      goto LABEL_22;
    }
  }

  v29 = *v15;
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
        if (v29)
        {
          if (v29 == BuckToWChar)
          {
            LODWORD(v20) = BuckToWChar[v20];
          }

          else if ((v20 & 0x80) != 0)
          {
            LODWORD(v20) = v29[v20 & 0x7F];
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

        v21 = strlen(__src);
        v22 = 0;
        ++v18;
        if (v21 + v19 < v30)
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
    v23 = v31;
    v24 = strhelper_StringAppend(v31, v17, v14, 0xFFFFFFFFFFFFFFFFLL, &v32, 0x100uLL);
    if (!v24)
    {
      heap_Free(v31, v17);
      v17 = 0;
      goto LABEL_56;
    }

    v19 = 0;
    v17 = v24;
LABEL_36:
    if (v21 && !v22)
    {
      memcpy(&v14[v19], __src, v21);
      v19 += v21;
    }
  }

  while (!v22);
  if (v28)
  {
    *v28 = v18;
  }

  v23 = v31;
LABEL_56:
  heap_Free(v23, v14);
LABEL_57:
  v26 = *MEMORY[0x1E69E9840];
  return v17;
}

size_t TxtEncodingGetOutputBytesRequired(char *__s, size_t a2, int a3, int a4, void *a5)
{
  v7 = a2;
  v9 = 128;
  v10 = &qword_1E81A2768;
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

          v12 += strlen(__sa);
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
      v7 = strlen(__s);
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
      v12 += strlen(&v29);
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

      v55 = (a2 & 1) == 0 && (!v12 || 10 * a2 / v12 > 0xA);
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v56 = v16;
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
        v36 = a1[v34];
        if (memchr("\xAF\xB3\xB9\x9F\xE6\xD0\xFD", a1[v34], 6uLL))
        {
          ++v29;
        }

        if (memchr("\xF0\xD0\xFDvocalizer", v36, 4uLL))
        {
          ++v30;
        }

        v33 += v36;
        v32 += (v34 << 63 >> 63) & v36;
        if (v34)
        {
          v37 = 0;
        }

        else
        {
          v37 = v36;
        }

        v31 += v37;
        ++v34;
      }

      while (v35 != v34);
      v38 = v33 / v56;
      v39 = v33 / v56;
      v40 = v33 / v56;
      if (a2 != 2)
      {
        v39 = v32 / (v56 >> 1);
        v40 = v31 / (v56 >> 1);
      }

      v41 = v39 < 4 && v55;
      if (v41 && v40 > 0x32)
      {
        return 1200;
      }

      v42 = v40 < 4 && v55;
      if (!v42 || v39 <= 0x32)
      {
        if (!v55)
        {
          goto LABEL_127;
        }

        v43 = 0;
        v44 = 0;
        v45 = 0;
        for (i = 0; i != v35; ++i)
        {
          v47 = a1[i];
          v45 += ((v47 - v38) * (v47 - v38));
          v48 = ((v47 - v39) * (v47 - v39));
          v44 += (i << 63 >> 63) & v48;
          if (i)
          {
            v48 = 0;
          }

          v43 += v48;
        }

        if (a2 <= 0x20)
        {
          goto LABEL_127;
        }

        v49 = v45 / v56;
        v50 = v44 / (v56 >> 1);
        v51 = v45 / v56 - v50;
        if (v51 < 0)
        {
          v51 = v50 - v45 / v56;
        }

        if (v51 > 0x3E8)
        {
          return 1200;
        }

        v52 = v43 / (v56 >> 1);
        v53 = v52 - v49;
        if (v52 - v49 < 0)
        {
          v53 = v49 - v52;
        }

        if (v53 > 0x3E8)
        {
          return 1200;
        }

        v54 = v52 - v50;
        if (v52 - v50 < 0)
        {
          v54 = v50 - v52;
        }

        if (v54 > 0x3E8)
        {
          return 1200;
        }

        result = 1200;
        if (v50 <= 2 * v49 && 2 * v50 >= v52 && 2 * v52 >= v49)
        {
LABEL_127:
          if (v38 <= 0x80)
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
      strncpy((v9 + 8), a2, 0x100uLL);
      *(v10 + 263) = 0;
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
  v6 = *MEMORY[0x1E69E9840];
  strcpy(v5, "vocalizer");
  v1 = a1 + 8;
  v2 = "";
  if (*(a1 + 8))
  {
    v2 = "/";
  }

  result = __sprintf_chk((a1 + 264), 0, 0x100uLL, "%s%s%s_%lu.txt", (a1 + 8), v2, v5, *(a1 + 536));
  ++*(v1 + 528);
  v4 = *MEMORY[0x1E69E9840];
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

  v4 = strlen(__s);
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

  strncpy((a1 + 8), a2, 0x100uLL);
  *(a1 + 263) = 0;
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
        *&__str[strlen(__str)] = 124;
        v10 = strcat(__str, *(*(a1 + 168) + 8 * v9));
        *&__str[strlen(v10)] = 61;
        strcat(__str, *(*(a1 + 176) + 8 * v9++));
      }

      while (v9 < *(a1 + 164));
    }

    *&__str[strlen(__str)] = 10;
  }

  else
  {
    snprintf(__str, __size, "%s|%hu|%s|%s|%lu|%p|%d|%s\n", a1, v8, v6, (v6 + 32), 0, v7, *(a1 + 144), *(a1 + 152));
  }

  __str[v3 - 1] = 0;
  return 0;
}

uint64_t txtfmt_vsprintFormattedEntry_v(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, va_list a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  v21 = v20;
  v22 = v9;
  v42 = *MEMORY[0x1E69E9840];
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  if (v15)
  {
    v23 = v15;
    bzero(&v38, 0x800uLL);
    v24 = *v23;
    if (*v23)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        __str[v25 + 2046] = v24;
        v27 = v26 + 1;
        if (v24 == 37)
        {
          v28 = v26 + 2;
          if (v23[v27] == 108)
          {
            LODWORD(v27) = v28;
          }
        }

        v24 = v23[v27];
        ++v25;
        v29 = v27 > 0x7FF || v24 == 0;
        v26 = v27;
      }

      while (!v29);
      v25 = v25;
    }

    else
    {
      v25 = 0;
    }

    __str[v25 + 2046] = v24;
    vsnprintf(__str, 0x800uLL, &v38, a9);
    __str[2047] = 0;
    v35 = __str;
    v30 = v19;
    v31 = v18;
    v32 = v17;
    v33 = v16;
    v34 = 0;
  }

  else
  {
    v30 = v10;
    v31 = v11;
    v32 = v12;
    v33 = v13;
    v34 = v14;
    v35 = 0;
  }

  txtfmt_fillLogEntry(v40, v30, v31, v32, v33, v34, v35);
  txtfmt_printEntry(v40, v22, v21);
  v36 = *MEMORY[0x1E69E9840];
  return 0;
}

size_t txtfmt_fillLogEntry(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, const char *a7)
{
  v20 = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  osspi_time(*(a2 + 64), &v20);
  osspi_ctime(*(a2 + 64), &v20, 128, a1);
  v14 = strlen(a1);
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
    result = strlen(a7);
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
  v36 = *MEMORY[0x1E69E9840];
  v3 = 2226135040;
  v32 = 0;
  if (!a3)
  {
    v3 = 2226135046;
    goto LABEL_54;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  if ((InitRsrcFunction(a1, a2, &v32) & 0x80000000) != 0)
  {
    v3 = 2226135047;
    goto LABEL_54;
  }

  v5 = heap_Calloc(*(v32 + 8), 1, 464);
  if (!v5)
  {
    v3 = 2226135050;
    goto LABEL_54;
  }

  v6 = v5;
  v7 = v32;
  *v5 = v32;
  updated = critsec_ObjOpen(*(v7 + 16), *(v7 + 8), v5 + 53);
  if ((updated & 0x80000000) != 0)
  {
    goto LABEL_49;
  }

  v9 = *(v32 + 40);
  if (!v9)
  {
    v3 = 2226135046;
    goto LABEL_52;
  }

  if ((v34[0] = 0, (paramc_ParamGetStr(v9, "logfile.enabled", v34) & 0x80000000) != 0) && ((v10 = getenv("TTS_FILELOG_ENABLE")) != 0 ? (v11 = v10) : (v11 = "0"), v34[0] = v11, updated = paramc_ParamSetStr(v9, "logfile.enabled", v11), (updated & 0x80000000) != 0) || (v12 = v34[0], updated = txtwriter_UpdateEnabled(v6, v34[0]), (updated & 0x80000000) != 0))
  {
LABEL_49:
    v3 = updated;
    goto LABEL_52;
  }

  if (v12)
  {
    paramc_ParamRelease(v9);
  }

  v34[0] = 0;
  if ((paramc_ParamGetStr(v9, "logfile.filter.level", v34) & 0x80000000) != 0)
  {
    v13 = getenv("TTS_FILELOG_LEVEL");
    v14 = v13 ? v13 : "0";
    v34[0] = v14;
    if ((paramc_ParamSetStr(v9, "logfile.filter.level", v14) & 0x80000000) != 0)
    {
      goto LABEL_52;
    }
  }

  v15 = v34[0];
  v16 = atoi(v34[0]);
  if ((v16 & 0x80000000) == 0)
  {
    *(v6 + 280) = v16;
    if (v15)
    {
      paramc_ParamRelease(v9);
    }

    v33 = 0;
    bzero(v34, 0x400uLL);
    if ((paramc_ParamGetStr(v9, "logfile.filter.modules", &v33) & 0x80000000) != 0)
    {
      v17 = getenv("TTS_FILELOG_MODULES");
      if (!v17)
      {
        v17 = "";
      }

      v33 = v17;
      LH_MapModuleNamesToIds(v17, v34, 0x400u);
      v33 = v34;
      if ((paramc_ParamSetStr(v9, "logfile.filter.modules", v34) & 0x80000000) != 0)
      {
        goto LABEL_52;
      }
    }

    v18 = v33;
    updated = txtwriter_UpdateModules(v6, v33);
    if ((updated & 0x80000000) == 0)
    {
      if (v18 != "")
      {
        paramc_ParamRelease(v9);
      }

      v34[0] = 0;
      if ((paramc_ParamGetStr(v9, "logfile.filename.1", v34) & 0x80000000) == 0 || ((v19 = getenv("TTS_FILELOG_DIRECTORY")) != 0 ? (v20 = v19) : (v20 = ""), v34[0] = v20, (paramc_ParamSetStr(v9, "logfile.filename.1", v20) & 0x80000000) == 0))
      {
        v21 = v34[0];
        __strcpy_chk();
        txtlog_changeDirectory(*(v6 + 432), v21);
        if (v34[0] != "")
        {
          paramc_ParamRelease(v9);
        }

        v34[0] = 0;
        if ((paramc_ParamGetStr(v9, "logfile.max_size", v34) & 0x80000000) == 0 || ((v22 = getenv("TTS_FILELOG_MAXSIZE")) != 0 ? (v23 = v22) : (v23 = "0"), v34[0] = v23, (paramc_ParamSetStr(v9, "logfile.max_size", v23) & 0x80000000) == 0))
        {
          v24 = LH_atou(v34[0]);
          *(v6 + 272) = v24;
          if (v34[0] != "0")
          {
            paramc_ParamRelease(v9);
            v24 = *(v6 + 272);
          }

          v3 = txtlog_ObjOpen(*v6, (v6 + 12), v24, (v6 + 432));
          if ((v3 & 0x80000000) == 0 && *(v6 + 8) == 1)
          {
            txtlog_startSession(*(v6 + 432));
          }
        }
      }

      goto LABEL_52;
    }

    goto LABEL_49;
  }

  v3 = 2226135047;
LABEL_52:
  *(v6 + 440) = 0;
  *(v6 + 448) = 0;
  *(v6 + 440) = v6;
  *(v6 + 448) = txtwriter_ParamCheckChange;
  *(v6 + 456) = 0;
  *(v6 + 456) = txtwriter_ParamLearnChange;
  v25 = *(v32 + 40);
  *v34 = *(v6 + 440);
  v35 = txtwriter_ParamLearnChange;
  paramc_ListenerAdd(v25, "logfile.enabled", v34);
  v26 = *(v32 + 40);
  *v34 = *(v6 + 440);
  v35 = *(v6 + 456);
  paramc_ListenerAdd(v26, "logfile.filter.level", v34);
  v27 = *(v32 + 40);
  *v34 = *(v6 + 440);
  v35 = *(v6 + 456);
  paramc_ListenerAdd(v27, "logfile.filter.modules", v34);
  v28 = *(v32 + 40);
  *v34 = *(v6 + 440);
  v35 = *(v6 + 456);
  paramc_ListenerAdd(v28, "logfile.filename.1", v34);
  v29 = *(v32 + 40);
  *v34 = *(v6 + 440);
  v35 = *(v6 + 456);
  paramc_ListenerAdd(v29, "logfile.max_size", v34);
  *a3 = v6;
  *(a3 + 8) = 472934;
  if ((v3 & 0x80000000) != 0)
  {
    txtwriter_ClassClose(v6, *(a3 + 8));
    *a3 = 0;
    *(a3 + 8) = 0;
  }

LABEL_54:
  v30 = *MEMORY[0x1E69E9840];
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

uint64_t txtwriter_OutText(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, va_list a6)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = 2226135046;
  if (a1 && a2 && a5)
  {
    v7 = *a1;
    if (!*(*a1 + 8) || *(v7 + 280) < a3)
    {
      goto LABEL_6;
    }

    if (*(v7 + 284) == 1)
    {
      goto LABEL_15;
    }

    v10 = *(v7 + 416);
    if (!*(v7 + 416))
    {
      goto LABEL_6;
    }

    v11 = *(a2 + 64);
    if (*(v7 + 288) == v11)
    {
      goto LABEL_15;
    }

    v12 = (v7 + 290);
    v13 = 1;
    do
    {
      v14 = v13;
      if (v10 == v13)
      {
        break;
      }

      v15 = *v12++;
      ++v13;
    }

    while (v15 != v11);
    if (v14 < v10)
    {
LABEL_15:
      v16 = txtfmt_vsprintFormattedEntry_v(__s, 3072, *v7, a1, a2, a3, 0, a5, a6);
      if ((v16 & 0x80000000) != 0 || (v16 = critsec_Enter(*(v7 + 424)), (v16 & 0x80000000) != 0))
      {
        v6 = v16;
      }

      else
      {
        v6 = txtlog_recordEntry(*(v7 + 432), __s);
        critsec_Leave(*(v7 + 424));
      }
    }

    else
    {
LABEL_6:
      v6 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t txtwriter_OutPublic(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = 2226135046;
  if (a1 && a2)
  {
    v9 = *a1;
    if (*(*a1 + 8))
    {
      v21 = 0;
      memset(__s, 0, sizeof(__s));
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      osspi_time((*v9)[8], &v21);
      osspi_ctime((*v9)[8], &v21, 128, __s);
      v14 = strlen(__s);
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

      *&v24 = a2;
      *(&v24 + 1) = a1;
      LODWORD(v25) = 0;
      DWORD1(v25) = a3;
      *(&v25 + 1) = "";
      LODWORD(v26) = 0;
      DWORD1(v26) = a4;
      *(&v26 + 1) = a5;
      v27 = a6;
      v18 = txtfmt_printEntry(__s, __str, 0xC00uLL);
      if ((v18 & 0x80000000) != 0 || (v18 = critsec_Enter(v9[53]), (v18 & 0x80000000) != 0))
      {
        v6 = v18;
      }

      else
      {
        v6 = txtlog_recordEntry(v9[54], __str);
        critsec_Leave(v9[53]);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
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
    if (*(*result + 284) == 1)
    {
      return 1;
    }

    v3 = v2[208];
    if (v2[208])
    {
      if (v2[144] == a2)
      {
        return 1;
      }

      v4 = v2 + 145;
      v5 = 1;
      do
      {
        v6 = v5;
        if (v3 == v5)
        {
          break;
        }

        v7 = *v4++;
        ++v5;
      }

      while (v7 != a2);
      return v6 < v3;
    }

    else
    {
      return 0;
    }
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

uint64_t txtwriter_ParamLearnChange(uint64_t a1, char *__s1, char *a3)
{
  if (a3 && *a3)
  {
    v6 = &off_1F42D0CB0;
    v7 = 5;
    while (strcmp(__s1, *(v6 - 1)))
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

uint64_t txtwriter_UpdateEnabled(uint64_t a1, char *a2)
{
  result = 2226135047;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = atoi(a2);
      result = 0;
      v7 = ((v4 - 84) & 0xDF) == 0 || v5 > 0;
      *(a1 + 8) = v7;
    }
  }

  return result;
}

uint64_t txtwriter_UpdateLevel(uint64_t a1, char *a2)
{
  v3 = atoi(a2);
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

  v2 = 0;
  *(a1 + 284) = 1;
  *(a1 + 416) = 0;
LABEL_3:
  v3 = a2;
  while (1)
  {
    v4 = *v3;
    if (!*v3)
    {
      break;
    }

    v3 += 3;
    while (v4 == 32)
    {
      v4 = *(v3 - 2);
      ++v3;
    }

    if (v4 != 65 && v4 != 97)
    {
      a2 = v3 - 3;
      if ((v4 - 48) > 9u)
      {
LABEL_18:
        v7 = 0;
      }

      else
      {
        v7 = 0;
        do
        {
          v7 = 10 * v7 + (v4 - 48);
          v8 = *++a2;
          v4 = v8;
        }

        while ((v8 - 48) < 0xA);
      }

      v6 = (v4 & 0xDF) == 0;
      if ((v4 | 0x20) == 0x20 && v2 <= 0x3Fu)
      {
        *(a1 + 288 + 2 * v2) = v7;
        v2 = *(a1 + 416) + 1;
        *(a1 + 416) = v2;
        *(a1 + 284) = 0;
        goto LABEL_3;
      }

      v5 = 0;
      v3 = a2;
      goto LABEL_22;
    }

    a2 = v3 - 3;
    if ((*(v3 - 2) | 0x20) != 0x6C || (*(v3 - 1) | 0x20) != 0x6C || (*v3 | 0x20) != 0x20)
    {
      goto LABEL_18;
    }

    v5 = 1;
    v6 = 1;
LABEL_22:
    *(a1 + 284) = v5;
    if (!v6)
    {
      return 2226135047;
    }
  }

  if (v2 <= 0x3Fu)
  {
    return 0;
  }

  return 2226135047;
}

uint64_t txtwriter_UpdateDirectory(uint64_t a1, const char *a2)
{
  __strcpy_chk();
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
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 10);
  if (log_GetLogLevel(*(a1 + 32)) >= 8)
  {
    v5 = v4 & ~(v4 >> 31);
    LH_itoa(0x4Eu, v13, 0xAu);
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
        v12 = 5;
        v11 = 0;
        log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v13, "text/x-realspeak-usphonemes;charset=tts", &v12, 1u, 0);
        log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v13, "text/x-realspeak-usphonemes;charset=tts", *(a2 + 8 * v6 + 16), v5, 0);
        log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v13, "text/x-realspeak-usphonemes;charset=tts", &v11, 1u, 0);
      }

LABEL_13:
      if (++v6 == 218)
      {
        goto LABEL_14;
      }
    }

    v7 = "application/x-realspeak-usplosives;version=4.0";
LABEL_9:
    v8 = *(*a2 + v6 + 2748);
    if (v8 == 2)
    {
      log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v13, v7, *(a2 + 8 * v6 + 1760), 2 * v5, 0);
    }

    else if (v8 == 1)
    {
      log_OutBinary(*(a1 + 32), "FEATEXTRACT", 99, 0, v13, v7, *(a2 + 8 * v6 + 16), v5, 0);
    }

    goto LABEL_13;
  }

LABEL_14:
  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t featextract_writeFeatures(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v173 = 0;
  v10 = (*(a2 + 112))(*(a3 + 16), *(a3 + 24), &v173, 864 * *(a5 + 10));
  if ((v10 & 0x80000000) != 0)
  {
    v171 = v10;
    goto LABEL_301;
  }

  v15 = *(a5 + 10);
  if (v15 < 1)
  {
    goto LABEL_298;
  }

  v16 = 0;
  v17 = 0;
  do
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
    *(v173 + 712) = 0uLL;
    v22[1] = 0uLL;
    v22[2] = 0uLL;
    v22[3] = 0uLL;
    for (j = 778; j != 863; ++j)
    {
      v173[j] = 0;
    }

    v24 = v173;
    *(v173 + 60) = 0;
    *(v24 + 52) = 0;
    v24[68] = 0;
    v25 = *(a5 + 1800);
    if (v25)
    {
      *v24 = *(v25 + 2 * v17);
    }

    v26 = *(a5 + 32);
    if (v26)
    {
      v24[2] = *(v26 + v17);
    }

    v27 = *(a4 + 3578);
    if (*(a4 + 3578))
    {
      v28 = *(a5 + 3608);
      *(v24 + 1) = *(v28 + 4 * v17 * v27);
      *(v24 + 2) = *(v28 + 4 * (v27 + v17 * v27) - 4);
    }

    v29 = *(a5 + 1696);
    if (v29)
    {
      v24[776] = *(v29 + v17);
    }

    v30 = *(a5 + 1704);
    if (v30)
    {
      v24[777] = *(v30 + v17);
    }

    if (*(a4 + 2966))
    {
      v31 = 0;
      v32 = 0;
      while (1)
      {
        v33 = v17 * *(*a5 + 2966);
        v34 = v173;
        v35 = &v173[4 * v32];
        *(v35 + 18) = *(*(a5 + 3568) + 4 * (v32 + v33));
        *(v35 + 89) = *(*(a5 + 3576) + 4 * (v32 + v33));
        v34[v32 + 640] = *(*(a5 + 3600) + v33 + v32);
        switch(*(*(a4 + 2968) + v31))
        {
          case 5:
            v52 = *(a5 + 216);
            if (v52)
            {
              v173[22] = *(v52 + v17);
            }

            v53 = *(a5 + 224);
            if (v53)
            {
              v173[23] = *(v53 + v17);
            }

            v54 = *(a5 + 1712);
            if (!v54)
            {
              v55 = v173;
LABEL_100:
              *(v55 + 22) = 0;
              goto LABEL_110;
            }

            v55 = v173;
            if (!*(a5 + 1720))
            {
              goto LABEL_100;
            }

            v173[44] = *(v54 + v17);
            v55[45] = *(*(a5 + 1720) + v17);
LABEL_110:
            ++v32;
            v31 += 32;
            if (v32 >= *(a4 + 2966))
            {
              goto LABEL_111;
            }

            break;
          case 6:
            v56 = *(a5 + 232);
            if (v56)
            {
              v173[24] = *(v56 + v17);
            }

            v57 = *(a5 + 240);
            if (v57)
            {
              v173[25] = *(v57 + v17);
            }

            v58 = *(a5 + 1728);
            if (!v58)
            {
              v59 = v173;
LABEL_102:
              *(v59 + 23) = 0;
              goto LABEL_110;
            }

            v59 = v173;
            if (!*(a5 + 1736))
            {
              goto LABEL_102;
            }

            v173[46] = *(v58 + v17);
            v59[47] = *(*(a5 + 1736) + v17);
            goto LABEL_110;
          case 7:
            v49 = *(a5 + 152);
            if (v49)
            {
              v173[13] = *(v49 + v17);
            }

            goto LABEL_110;
          case 8:
            v64 = *(a5 + 160);
            if (v64)
            {
              v173[14] = *(v64 + v17);
            }

            goto LABEL_110;
          case 9:
            v65 = *(a5 + 176);
            if (v65)
            {
              v173[15] = *(v65 + v17);
            }

            goto LABEL_110;
          case 0xA:
            v50 = *(a5 + 184);
            if (v50)
            {
              v173[16] = *(v50 + v17);
            }

            goto LABEL_110;
          case 0xB:
            v60 = *(a5 + 248);
            if (v60)
            {
              v173[17] = *(v60 + v17);
            }

            goto LABEL_110;
          case 0xC:
          case 0x13:
            v36 = *(a5 + 144);
            if (v36)
            {
              v173[18] = *(v36 + v17);
            }

            goto LABEL_110;
          case 0xD:
          case 0x14:
            v37 = *(a5 + 88);
            if (v37)
            {
              v173[21] = *(v37 + v17);
            }

            goto LABEL_110;
          case 0xE:
            v48 = *(a5 + 264);
            if (v48)
            {
              v173[26] = *(v48 + v17);
            }

            goto LABEL_110;
          case 0xF:
            v45 = *(a5 + 272);
            if (v45)
            {
              v173[27] = *(v45 + v17);
            }

            goto LABEL_110;
          case 0x10:
            v40 = *(a5 + 168);
            if (v40)
            {
              v173[28] = *(v40 + v17);
            }

            goto LABEL_110;
          case 0x12:
            v61 = *(a5 + 280);
            if (v61)
            {
              v173[29] = *(v61 + v17);
            }

            goto LABEL_110;
          case 0x1E:
            v62 = *(a5 + 536);
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
            v67 = *(a5 + 544);
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
            v66 = *(a5 + 552);
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
            v38 = *(a5 + 560);
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
            v46 = *(a5 + 568);
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
            v68 = *(a5 + 576);
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
            v39 = *(a5 + 632);
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
            v44 = *(a5 + 592);
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
            v42 = *(a5 + 600);
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
            v51 = *(a5 + 608);
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
            v41 = *(a5 + 616);
            if (v41)
            {
              v173[40] = *(v41 + v17);
            }

            goto LABEL_110;
          case 0x29:
            v70 = *(a5 + 624);
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
            v69 = *(a5 + 1384);
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
            v43 = *(a5 + 1392);
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
            v47 = *(a5 + 1744);
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
            v63 = *(a5 + 1752);
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

LABEL_111:
    if (*(*(a5 + 72) + v17))
    {
      v173[19] = *(*(a5 + 72) + v17);
    }

    v71 = *(a5 + 80);
    if (v71)
    {
      v173[20] = *(v71 + v17);
    }

    v72 = *(a5 + 48);
    if (v72)
    {
      v173[12] = *(v72 + v17);
    }

    v73 = *(a5 + 1784);
    if (v73)
    {
      *(v173 + 25) = *(v73 + 2 * v17);
    }

    v74 = *(a4 + 3360);
    if (*(a4 + 3360))
    {
      v75 = v173 + 744;
      v76 = v16 * *(*a5 + 3360);
      v77 = (*(a5 + 3592) + v76);
      v78 = (*(a5 + 3584) + v76);
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

    v81 = *(a5 + 3552);
    if (v81)
    {
      *(v173 + 52) = *(v81 + 8 * v17);
    }

    if (*(a4 + 2560))
    {
      v82 = v173;
      v83 = *(a5 + 3560) + 9 * v17;
      v84 = *(v83 + 8);
      *(v173 + 60) = *v83;
      v82[68] = v84;
    }

    v85 = *(a5 + 1000);
    if (v85)
    {
      v173[778] = *(v85 + v17);
    }

    v86 = *(a5 + 32);
    if (v86)
    {
      v173[779] = *(v86 + v17);
    }

    v87 = *(a5 + 1008);
    if (v87)
    {
      v173[780] = *(v87 + v17);
    }

    v88 = *(a5 + 600);
    if (v88)
    {
      v173[781] = *(v88 + v17);
    }

    v89 = *(a5 + 72);
    if (v89)
    {
      v173[782] = *(v89 + v17);
    }

    v90 = *(a5 + 80);
    if (v90)
    {
      v173[783] = *(v90 + v17);
    }

    v91 = *(a5 + 560);
    if (v91)
    {
      v173[784] = *(v91 + v17);
    }

    v92 = *(a5 + 112);
    if (v92)
    {
      v173[785] = *(v92 + v17);
    }

    v93 = *(a5 + 184);
    if (v93)
    {
      v173[786] = *(v93 + v17);
    }

    v94 = *(a5 + 304);
    if (v94)
    {
      v173[787] = *(v94 + v17);
    }

    v95 = *(a5 + 288);
    if (v95)
    {
      v173[788] = *(v95 + v17);
    }

    v96 = *(a5 + 312);
    if (v96)
    {
      v173[789] = *(v96 + v17);
    }

    v97 = *(a5 + 296);
    if (v97)
    {
      v173[790] = *(v97 + v17);
    }

    v98 = *(a5 + 128);
    if (v98)
    {
      v173[791] = *(v98 + v17);
    }

    v99 = *(a5 + 96);
    if (v99)
    {
      v173[792] = *(v99 + v17);
    }

    v100 = *(a5 + 104);
    if (v100)
    {
      v173[793] = *(v100 + v17);
    }

    v101 = *(a5 + 144);
    if (v101)
    {
      v173[794] = *(v101 + v17);
    }

    v102 = *(a5 + 192);
    if (v102)
    {
      v173[795] = *(v102 + v17);
    }

    v103 = *(a5 + 544);
    if (v103)
    {
      v173[796] = *(v103 + v17);
    }

    v104 = *(a5 + 608);
    if (v104)
    {
      v173[797] = *(v104 + v17);
    }

    v105 = *(a5 + 168);
    if (v105)
    {
      v173[798] = *(v105 + v17);
    }

    v106 = *(a5 + 248);
    if (v106)
    {
      v173[799] = *(v106 + v17);
    }

    v107 = *(a5 + 120);
    if (v107)
    {
      v173[800] = *(v107 + v17);
    }

    v108 = *(a5 + 136);
    if (v108)
    {
      v173[801] = *(v108 + v17);
    }

    v109 = *(a5 + 176);
    if (v109)
    {
      v173[802] = *(v109 + v17);
    }

    v110 = *(a5 + 264);
    if (v110)
    {
      v173[803] = *(v110 + v17);
    }

    v111 = *(a5 + 272);
    if (v111)
    {
      v173[804] = *(v111 + v17);
    }

    v112 = *(a5 + 616);
    if (v112)
    {
      v173[805] = *(v112 + v17);
    }

    v113 = *(a5 + 624);
    if (v113)
    {
      v173[806] = *(v113 + v17);
    }

    v114 = *(a5 + 568);
    if (v114)
    {
      v173[807] = *(v114 + v17);
    }

    v115 = *(a5 + 576);
    if (v115)
    {
      v173[808] = *(v115 + v17);
    }

    v116 = *(a5 + 584);
    if (v116)
    {
      v173[809] = *(v116 + v17);
    }

    v117 = *(a5 + 592);
    if (v117)
    {
      v173[810] = *(v117 + v17);
    }

    v118 = *(a5 + 152);
    if (v118)
    {
      v173[811] = *(v118 + v17);
    }

    v119 = *(a5 + 88);
    if (v119)
    {
      v173[812] = *(v119 + v17);
    }

    v120 = *(a5 + 160);
    if (v120)
    {
      v173[813] = *(v120 + v17);
    }

    v121 = *(a5 + 552);
    if (v121)
    {
      v173[814] = *(v121 + v17);
    }

    v122 = *(a5 + 456);
    if (v122)
    {
      v173[815] = *(v122 + v17);
    }

    v123 = *(a5 + 984);
    if (v123)
    {
      v173[816] = *(v123 + v17);
    }

    v124 = *(a5 + 992);
    if (v124)
    {
      v173[817] = *(v124 + v17);
    }

    v125 = *(a5 + 1000);
    if (v125)
    {
      v173[818] = *(v125 + v17);
    }

    v126 = *(a5 + 1008);
    if (v126)
    {
      v173[819] = *(v126 + v17);
    }

    v127 = *(a5 + 1016);
    if (v127)
    {
      v173[820] = *(v127 + v17);
    }

    v128 = *(a5 + 1024);
    if (v128)
    {
      v173[821] = *(v128 + v17);
    }

    v129 = *(a5 + 1032);
    if (v129)
    {
      v173[822] = *(v129 + v17);
    }

    v130 = *(a5 + 1040);
    if (v130)
    {
      v173[823] = *(v130 + v17);
    }

    v131 = *(a5 + 1048);
    if (v131)
    {
      v173[824] = *(v131 + v17);
    }

    v132 = *(a5 + 1056);
    if (v132)
    {
      v173[825] = *(v132 + v17);
    }

    v133 = *(a5 + 1064);
    if (v133)
    {
      v173[826] = *(v133 + v17);
    }

    v134 = *(a5 + 1072);
    if (v134)
    {
      v173[827] = *(v134 + v17);
    }

    v135 = *(a5 + 1080);
    if (v135)
    {
      v173[828] = *(v135 + v17);
    }

    v136 = *(a5 + 1088);
    if (v136)
    {
      v173[829] = *(v136 + v17);
    }

    v137 = *(a5 + 1096);
    if (v137)
    {
      v173[830] = *(v137 + v17);
    }

    v138 = *(a5 + 1104);
    if (v138)
    {
      v173[831] = *(v138 + v17);
    }

    v139 = *(a5 + 1112);
    if (v139)
    {
      v173[832] = *(v139 + v17);
    }

    v140 = *(a5 + 1120);
    if (v140)
    {
      v173[833] = *(v140 + v17);
    }

    v141 = *(a5 + 1128);
    if (v141)
    {
      v173[834] = *(v141 + v17);
    }

    v142 = *(a5 + 1136);
    v143 = v173;
    if (v142)
    {
      v173[835] = *(v142 + v17);
    }

    v144 = *(a5 + 1144);
    if (v144)
    {
      v143[836] = *(v144 + v17);
    }

    v145 = *(a5 + 1160);
    if (v145)
    {
      v143[837] = *(v145 + v17);
    }

    v146 = *(a5 + 1152);
    if (v146)
    {
      v143[838] = *(v146 + v17);
    }

    v147 = *(a5 + 1168);
    if (v147)
    {
      v143[839] = *(v147 + v17);
    }

    v148 = *(a5 + 1176);
    if (v148)
    {
      v143[840] = *(v148 + v17);
    }

    v149 = *(a5 + 1184);
    if (v149)
    {
      v143[841] = *(v149 + v17);
    }

    v150 = *(a5 + 1192);
    if (v150)
    {
      v143[842] = *(v150 + v17);
    }

    v151 = *(a5 + 1200);
    if (v151)
    {
      v143[843] = *(v151 + v17);
    }

    v152 = *(a5 + 1208);
    if (v152)
    {
      v143[844] = *(v152 + v17);
    }

    v153 = *(a5 + 1216);
    if (v153)
    {
      v143[845] = *(v153 + v17);
    }

    v154 = *(a5 + 1224);
    if (v154)
    {
      v143[846] = *(v154 + v17);
    }

    v155 = *(a5 + 1232);
    if (v155)
    {
      v143[847] = *(v155 + v17);
    }

    v156 = *(a5 + 1240);
    if (v156)
    {
      v143[848] = *(v156 + v17);
    }

    v157 = *(a5 + 1248);
    if (v157)
    {
      v143[849] = *(v157 + v17);
    }

    v158 = *(a5 + 1256);
    if (v158)
    {
      v143[850] = *(v158 + v17);
    }

    v159 = *(a5 + 1264);
    if (v159)
    {
      v143[851] = *(v159 + v17);
    }

    v160 = *(a5 + 1272);
    if (v160)
    {
      v143[852] = *(v160 + v17);
    }

    v161 = *(a5 + 1280);
    if (v161)
    {
      v143[853] = *(v161 + v17);
    }

    v162 = *(a5 + 1288);
    if (v162)
    {
      v143[854] = *(v162 + v17);
    }

    v163 = *(a5 + 1296);
    if (v163)
    {
      v143[855] = *(v163 + v17);
    }

    v164 = *(a5 + 1304);
    if (v164)
    {
      v143[856] = *(v164 + v17);
    }

    v165 = *(a5 + 1312);
    if (v165)
    {
      v143[857] = *(v165 + v17);
    }

    v166 = *(a5 + 1320);
    if (v166)
    {
      v143[860] = *(v166 + v17);
    }

    v167 = *(a5 + 1328);
    if (v167)
    {
      v143[861] = *(v167 + v17);
    }

    v168 = *(a5 + 1336);
    if (v168)
    {
      v143[862] = *(v168 + v17);
    }

    v169 = *(a5 + 1384);
    if (v169)
    {
      v143[858] = *(v169 + v17);
    }

    v170 = *(a5 + 1392);
    if (v170)
    {
      v143[859] = *(v170 + v17);
    }

    v173 = v143 + 864;
    ++v17;
    v16 += 4;
  }

  while (v17 < *(a5 + 10));
  LOWORD(v15) = *(a5 + 10);
LABEL_298:
  v171 = (*(a2 + 120))(*(a3 + 16), *(a3 + 24), 864 * v15);
  if ((v171 & 0x80000000) != 0)
  {
LABEL_301:
    log_OutPublic(*(a1 + 32), "FEATEXTRACT", 55008, "%s%s%s%x", v11, v12, v13, v14, "contentType");
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
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  __s = 0;
  *a3 = 0;
  if ((a2 & 0xFFFFFFFD) != 0)
  {
    result = 2364547079;
  }

  else
  {
    if (a2)
    {
      v10 = "synth";
    }

    else
    {
      v10 = "select";
    }

    result = strhelper_SafeCat(a3, v10, 0xFFFFFFFFFFFFFFFFLL, a4);
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
                                v11 = strlen(a3);
                                LH_itoa(v13 / 1000, &a3[v11], 0xAu);
                                result = paramc_ParamGetStr(*(a1 + 40), "datapackagename", &__s);
                                if ((result & 0x80000000) == 0)
                                {
                                  if (__s)
                                  {
                                    if (*__s)
                                    {
                                      result = brokeraux_ComposeBrokerString(a1, a3, 0, 0, 0, 0, 0, v14, a4);
                                      if ((result & 0x80000000) == 0)
                                      {
                                        *a3 = 0;
                                        result = strhelper_SafeCat(a3, v14, 0xFFFFFFFFFFFFFFFFLL, a4);
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
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t betX_CreateVAOBrokerString(uint64_t a1, int a2, char *a3, size_t a4, int a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v5 = 2364547079;
  __s = 0;
  v30 = 0;
  v28 = 0;
  *a3 = 0;
  if ((a2 & 0xFFFFFFFD) != 1)
  {
    goto LABEL_55;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voiceaddon", &__s);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  v12 = strlen(__s);
  v13 = heap_Calloc(*(a1 + 8), 1, v12 + 19);
  if (!v13)
  {
    v5 = 2364547082;
    goto LABEL_55;
  }

  v14 = v13;
  strcpy(v13, "voiceaddonbaseuri.");
  strcat(v13, __s);
  v15 = paramc_ParamGetStr(*(a1 + 40), v14, &v30);
  heap_Free(*(a1 + 8), v14);
  if ((v15 & 0x80000000) != 0)
  {
    v5 = v15;
    goto LABEL_55;
  }

  if (v30 && *v30)
  {
    Str = strhelper_SafeCat(a3, v30, 0xFFFFFFFFFFFFFFFFLL, a4);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_54;
    }

    Str = strhelper_SafeCat(a3, "/", 0xFFFFFFFFFFFFFFFFLL, a4);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_54;
    }

    v16 = 0;
    v17 = "_";
  }

  else
  {
    v17 = "/";
    v16 = 1;
  }

  if (a2 == 1)
  {
    v18 = "selectvao";
  }

  else
  {
    v18 = "synthvao";
  }

  Str = strhelper_SafeCat(a3, v18, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voice", &v30);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  Str = strhelper_SafeCat(a3, v17, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  v19 = v30;
  if (v30)
  {
    v20 = strlen(a3);
    if (strlen(v30) + v20 >= a4)
    {
      v5 = 2364547081;
      goto LABEL_55;
    }

    v27 = v16;
    if (*v30)
    {
      v21 = 0;
      do
      {
        v22 = v20 + 1;
        a3[v20] = __tolower(v19[v21++]);
        v19 = v30;
        ++v20;
      }

      while (v21 < strlen(v30));
    }

    else
    {
      v22 = v20;
    }

    a3[v22] = 0;
    v16 = v27;
  }

  Str = strhelper_SafeCat(a3, v17, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  Str = strhelper_SafeCat(a3, __s, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  Str = paramc_ParamGetStr(*(a1 + 40), "voicemodel", &v30);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  Str = strhelper_SafeCat(a3, v17, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  Str = strhelper_SafeCat(a3, v30, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  Str = strhelper_SafeCat(a3, v17, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  Str = strhelper_SafeCat(a3, "vao", 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  Str = strhelper_SafeCat(a3, v17, 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  if (a2 == 3)
  {
    Str = paramc_ParamGetStr(*(a1 + 40), "coder", &v30);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_54;
    }

    Str = strhelper_SafeCat(a3, v30, 0xFFFFFFFFFFFFFFFFLL, a4);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_54;
    }

    Str = strhelper_SafeCat(a3, v17, 0xFFFFFFFFFFFFFFFFLL, a4);
    if ((Str & 0x80000000) != 0)
    {
      goto LABEL_54;
    }
  }

  Str = paramc_ParamGetInt(*(a1 + 40), "frequencyhz", &v31);
  if ((Str & 0x80000000) != 0)
  {
    goto LABEL_54;
  }

  v5 = strhelper_SafeCat(a3, "f", 0xFFFFFFFFFFFFFFFFLL, a4);
  if ((v5 & 0x80000000) == 0)
  {
    v23 = strlen(a3);
    LH_itoa(v31 / 1000, &a3[v23], 0xAu);
    if (v16)
    {
      if (!a5 && v30)
      {
        if (*v30)
        {
          Str = brokeraux_ComposeBrokerString(a1, a3, 0, 0, 0, 0, 0, v32, a4);
          if ((Str & 0x80000000) == 0)
          {
            *a3 = 0;
            Str = strhelper_SafeCat(a3, v32, 0xFFFFFFFFFFFFFFFFLL, a4);
          }

          goto LABEL_54;
        }

        goto LABEL_55;
      }

      if (!a5)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v24 = strhelper_SafeCat(a3, ".dat", 0xFFFFFFFFFFFFFFFFLL, a4);
      v5 = v24;
      if (!a5 || (v24 & 0x80000000) != 0)
      {
        goto LABEL_55;
      }
    }

    if (!cupreader_IsCupInTheScope(a1, &v28))
    {
      goto LABEL_55;
    }

    Str = cupreader_PrependCupName(a3, v28, a4);
LABEL_54:
    v5 = Str;
  }

LABEL_55:
  v25 = *MEMORY[0x1E69E9840];
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
    v6 = strlen(__s);
    if (__s2)
    {
      v7 = strlen(__s2);
    }

    else
    {
      v7 = 0;
    }

    v8 = strlen(v16);
    v9 = heap_Calloc(*(a1 + 8), 1, v7 + v6 + v8 + 15);
    if (v9)
    {
      v10 = v9;
      strcpy(v9, "voiceaddons.");
      v11 = v8;
      if (v8)
      {
        v12 = 0;
        do
        {
          v10[v12 + 12] = __tolower(v16[v12]);
          ++v12;
        }

        while (v11 != v12);
      }

      *&v10[strlen(v10)] = 46;
      strcat(v10, __s);
      if (__s2)
      {
        *&v10[strlen(v10)] = 46;
        strcat(v10, __s2);
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

    v11 = strchr(&a1[v5], 59);
    if (v11)
    {
      v10 = v11 - a1 + 1;
    }

    else
    {
      v10 = strlen(a1);
    }

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

    v17 = nnextract_Process2Buff(*v14, v20, 1u, v16, 0, v14[3], &v21, 0, (v14[2] + 300), (v14[2] + 268), a7, a8);
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

    v17 = nnextract_Rolled(*v14, v21, 1u, *(v14[2] + 3578), 0, v14[3], a6, 0, (v14[2] + 300), (v14[2] + 268));
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
    v10 = *(a3 + 32);
    v11 = *(a2 + 32);
    v13 = v11[4];
    v12 = v11[5];
    v14 = v11[3];
    *(v10 + 96) = *(v11 + 24);
    *(v10 + 64) = v13;
    *(v10 + 80) = v12;
    *(v10 + 48) = v14;
    v15 = *v11;
    v16 = v11[2];
    *(v10 + 16) = v11[1];
    *(v10 + 32) = v16;
    *v10 = v15;
    v17 = *(a3 + 40);
    v18 = *(a2 + 40);
    v20 = v18[4];
    v19 = v18[5];
    v21 = v18[3];
    *(v17 + 96) = *(v18 + 24);
    *(v17 + 64) = v20;
    *(v17 + 80) = v19;
    *(v17 + 48) = v21;
    v22 = *v18;
    v23 = v18[2];
    *(v17 + 16) = v18[1];
    *(v17 + 32) = v23;
    *v17 = v22;
    v24 = *(a3 + 48);
    v25 = *(a2 + 48);
    v27 = v25[4];
    v26 = v25[5];
    v28 = v25[3];
    *(v24 + 96) = *(v25 + 24);
    *(v24 + 64) = v27;
    *(v24 + 80) = v26;
    *(v24 + 48) = v28;
    v29 = *v25;
    v30 = v25[2];
    *(v24 + 16) = v25[1];
    *(v24 + 32) = v30;
    *v24 = v29;
    v31 = *(a3 + 56);
    v32 = *(a2 + 56);
    v34 = v32[4];
    v33 = v32[5];
    v35 = v32[3];
    *(v31 + 96) = *(v32 + 24);
    *(v31 + 64) = v34;
    *(v31 + 80) = v33;
    *(v31 + 48) = v35;
    v36 = *v32;
    v37 = v32[2];
    *(v31 + 16) = v32[1];
    *(v31 + 32) = v37;
    *v31 = v36;
    v38 = *(a3 + 64);
    v39 = *(a2 + 64);
    v41 = v39[4];
    v40 = v39[5];
    v42 = v39[3];
    *(v38 + 96) = *(v39 + 24);
    *(v38 + 64) = v41;
    *(v38 + 80) = v40;
    *(v38 + 48) = v42;
    v43 = *v39;
    v44 = v39[2];
    *(v38 + 16) = v39[1];
    *(v38 + 32) = v44;
    *v38 = v43;
    v45 = *(a3 + 72);
    v46 = *(a2 + 72);
    v48 = v46[4];
    v47 = v46[5];
    v49 = v46[3];
    *(v45 + 96) = *(v46 + 24);
    *(v45 + 64) = v48;
    *(v45 + 80) = v47;
    *(v45 + 48) = v49;
    v50 = *v46;
    v51 = v46[2];
    *(v45 + 16) = v46[1];
    *(v45 + 32) = v51;
    *v45 = v50;
    v52 = *(a3 + 80);
    v53 = *(a2 + 80);
    v55 = v53[4];
    v54 = v53[5];
    v56 = v53[3];
    *(v52 + 96) = *(v53 + 24);
    *(v52 + 64) = v55;
    *(v52 + 80) = v54;
    *(v52 + 48) = v56;
    v57 = *v53;
    v58 = v53[2];
    *(v52 + 16) = v53[1];
    *(v52 + 32) = v58;
    *v52 = v57;
    v59 = *(a3 + 88);
    v60 = *(a2 + 88);
    v62 = v60[4];
    v61 = v60[5];
    v63 = v60[3];
    *(v59 + 96) = *(v60 + 24);
    *(v59 + 64) = v62;
    *(v59 + 80) = v61;
    *(v59 + 48) = v63;
    v64 = *v60;
    v65 = v60[2];
    *(v59 + 16) = v60[1];
    *(v59 + 32) = v65;
    *v59 = v64;
    v66 = *(a3 + 96);
    v67 = *(a2 + 96);
    v69 = v67[4];
    v68 = v67[5];
    v70 = v67[3];
    *(v66 + 96) = *(v67 + 24);
    *(v66 + 64) = v69;
    *(v66 + 80) = v68;
    *(v66 + 48) = v70;
    v71 = *v67;
    v72 = v67[2];
    *(v66 + 16) = v67[1];
    *(v66 + 32) = v72;
    *v66 = v71;
    v73 = *(a3 + 104);
    v74 = *(a2 + 104);
    v76 = v74[4];
    v75 = v74[5];
    v77 = v74[3];
    *(v73 + 96) = *(v74 + 24);
    *(v73 + 64) = v76;
    *(v73 + 80) = v75;
    *(v73 + 48) = v77;
    v78 = *v74;
    v79 = v74[2];
    *(v73 + 16) = v74[1];
    *(v73 + 32) = v79;
    *v73 = v78;
    v80 = *(a3 + 112);
    v81 = *(a2 + 112);
    v83 = v81[4];
    v82 = v81[5];
    v84 = v81[3];
    *(v80 + 96) = *(v81 + 24);
    *(v80 + 64) = v83;
    *(v80 + 80) = v82;
    *(v80 + 48) = v84;
    v85 = *v81;
    v86 = v81[2];
    *(v80 + 16) = v81[1];
    *(v80 + 32) = v86;
    *v80 = v85;
    memcpy(*(a3 + 128), *(a2 + 128), 0x200uLL);
    memcpy(*(a3 + 136), *(a2 + 136), 0x200uLL);
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

void *FillProsWords(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v14 = 2;
  *a4 = 2;
  if (a3)
  {
    v15 = 0;
    v14 = 2;
    do
    {
      v16 = *(a2 + 8 * v15);
      if (*(v16 + 2))
      {
        v17 = 0;
        v18 = *v16;
        do
        {
          *a4 = v14 + 1;
          if (*(*(v18 + 8 * v17) + 16))
          {
            v14 += 2;
            *a4 = v14;
          }

          else
          {
            ++v14;
          }

          ++v17;
        }

        while (v17 < *(v16 + 2));
      }

      else
      {
        LODWORD(v17) = 0;
      }

      ++v15;
    }

    while (v15 != a3);
    if (!v14)
    {
      v19 = "::ldbrec:: in FillProsWords. Number of prosodic words is %d.\n";
LABEL_14:
      v20 = a1;
      goto LABEL_177;
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  __s = a7;
  v26 = heap_Alloc(*(a1 + 8), 8 * v14);
  if (!v26)
  {
    NNFX_logMsg(a1, 0, "::ldbrec:: in FillProsWords while allocating memory to hold ppPWRI\n", v21, v22, v23, v24, v25);
    return v26;
  }

  if (**(***a2 + 136) != 35)
  {
    SilWord = MakeSilWord(a1, 0, 0, 200, 35, v9, v24, v25);
    *v26 = SilWord;
    if (!SilWord)
    {
      v19 = "::ldbrec:: in FillProsWords while creating initial silence.\n";
      v20 = a1;
      goto LABEL_177;
    }

    v27 = 1;
    if (a3)
    {
      goto LABEL_19;
    }

LABEL_137:
    v114 = 0;
    v32 = 0xFFFFFFFFLL;
    v30 = v27;
    v31 = a1;
    goto LABEL_138;
  }

  v27 = 0;
  if (!a3)
  {
    goto LABEL_137;
  }

LABEL_19:
  v28 = 0;
  v29 = 0;
  v127 = 0;
  v138 = 0;
  v124 = a3;
  v130 = 32;
  v145 = v27;
  v30 = v27;
  v31 = a1;
  while (1)
  {
    v142 = v28;
    if (v29)
    {
      heap_Free(*(v31 + 8), v29);
    }

    v29 = stringdup(v31, v9);
    if (!v29)
    {
      v19 = "::ldbrec:: in FillProsWords resetting active-tag value.\n";
      goto LABEL_176;
    }

    v32 = v142;
    v33 = *(a2 + 8 * v142);
    if (*(v33 + 8))
    {
      break;
    }

    LODWORD(v17) = 0;
LABEL_132:
    v28 = v32 + 1;
    if (v32 + 1 == v124)
    {
      v114 = v29;
      LODWORD(v27) = v145;
LABEL_138:
      v116 = (v17 - 1);
      v117 = v30;
      v118 = v30;
      v119 = v27;
      if (!InsertSilWord(v31, a2, v26, v32, v116, (v27 - 1), v117, *v11, v9))
      {
        return 0;
      }

      if ((v119 + 1) < *v11)
      {
        v120 = heap_Realloc(*(a1 + 8), v26, 8 * (v119 + 1));
        if (v120)
        {
          *v11 = v119 + 1;
          v26 = v120;
        }
      }

      if (v114)
      {
        heap_Free(*(a1 + 8), v114);
      }

      *v10 = v118 + 1;
      return v26;
    }
  }

  v125 = v9;
  v126 = v29;
  v122 = v10;
  v17 = 0;
  v128 = v8;
  v129 = v26;
  while (1)
  {
    v141 = v17;
    v34 = strlen(*(*(*v33 + 8 * v17) + 136));
    v35 = v34 + 1;
    v36 = heap_Alloc(*(v31 + 8), v35);
    if (!v36)
    {
      v19 = "::ldbrec:: in FillProsWords allocating memory to hold phone sequences.\n";
      goto LABEL_176;
    }

    v135 = v36;
    v37 = heap_Alloc(*(v31 + 8), v35);
    if (!v37)
    {
      v19 = "::ldbrec:: in FillProsWords allocating memory to hold differentiator sequences.\n";
      goto LABEL_176;
    }

    v134 = v37;
    v131 = heap_Calloc(*(v31 + 8), v35, 4);
    if (!v131)
    {
      v19 = "::ldbrec:: in FillProsWrods allocating memory to hold lexical stress.\n";
      goto LABEL_176;
    }

    v133 = heap_Calloc(*(v31 + 8), v35, 4);
    if (!v133)
    {
      v19 = "::ldbrec:: in FillProsWords allocating memory to hold syllable boundaries.\n";
      goto LABEL_176;
    }

    v143 = heap_Alloc(*(v31 + 8), 8 * v35);
    if (!v143)
    {
      v19 = "::ldbrec:: in FillProsWords allocating memory to hold phone tags.\n";
      goto LABEL_176;
    }

    v136 = v30;
    if (v34 == -1)
    {
      break;
    }

    bzero(v143, 8 * v35);
    v38 = v17;
    a4 = v142;
    v39 = v138;
    if (v34)
    {
      goto LABEL_34;
    }

    v26 = v129;
LABEL_124:
    v127 = *(*(**(a2 + 8 * a4) + 8 * v38) + 16);
    heap_Free(*(v31 + 8), v131);
    heap_Free(*(v31 + 8), v135);
    heap_Free(*(v31 + 8), v134);
    heap_Free(*(v31 + 8), v133);
    v8 = v128;
    if (v35)
    {
      v113 = v143;
      do
      {
        if (*v113)
        {
          heap_Free(*(v31 + 8), *v113);
          *v113 = 0;
        }

        ++v113;
        --v35;
      }

      while (v35);
    }

    heap_Free(*(v31 + 8), v143);
    v32 = v142;
    v17 = v141 + 1;
    v33 = *(a2 + 8 * v142);
    v30 = v136;
    if (v141 + 1 >= *(v33 + 8))
    {
      v10 = v122;
      v9 = v125;
      v29 = v126;
      goto LABEL_132;
    }
  }

  v38 = v17;
  a4 = v142;
  v39 = v138;
LABEL_34:
  v40 = 0;
  v41 = 0;
  v132 = v34;
  v42 = v34;
  v43 = 1;
LABEL_35:
  for (i = v41; i < v42; ++i)
  {
    v45 = *(*(**(a2 + 8 * a4) + 8 * v38) + 136);
    v46 = *(v45 + i);
    if (!v46)
    {
      break;
    }

    v47 = *(v45 + i);
    if (v47 == 92)
    {
      v123 = v40;
      v140 = v39;
      v62 = i + 1;
      v63 = strchr((v45 + (i + 1)), 92);
      if (v63)
      {
        v69 = v63 - v45;
      }

      else
      {
        v69 = i;
      }

      if (!v63)
      {
        NNFX_logMsg(a1, 1, "::ldbrec:: in FillProsWords. End of SPR reached without finding closing tag.", v64, v65, v66, v67, v68);
        goto LABEL_80;
      }

      if ((v69 - i + 1) <= 2)
      {
        NNFX_logMsg(a1, 1, "::ldbrec:: empty tag in FillProsWords.", v64, v65, v66, v67, v68);
        if (v69 + 1 == i)
        {
          v70 = 1;
        }

        else
        {
          v70 = v69 - i;
        }

        v62 = v70 + i;
        goto LABEL_80;
      }

      heap_Free(*(a1 + 8), v126);
      v71 = heap_Alloc(*(a1 + 8), (v69 - i));
      if (!v71)
      {
        v19 = "::ldbrec:: in FillProsWords allocating memory when updating tag value.\n";
        goto LABEL_14;
      }

      v72 = 0;
      v73 = (~i + v69);
      v38 = v141;
      a4 = v142;
      do
      {
        v71[v72] = *(*(*(**(a2 + 8 * v142) + 8 * v141) + 136) + (i + v72 + 1));
        ++v72;
      }

      while (v72 < v73);
      v71[v73] = 0;
      if (*v71 == 47)
      {
        heap_Free(*(a1 + 8), v71);
        v74 = stringdup(a1, v125);
        if (!v74)
        {
          v19 = "::ldbrec:: in FillProsWords resetting active-tag value.\n";
          goto LABEL_14;
        }

        v126 = v74;
        v62 = v69;
LABEL_80:
        v38 = v141;
        a4 = v142;
      }

      else
      {
        v126 = v71;
        v62 = v69;
      }

      v39 = v140;
      v40 = v123;
      v41 = v62 + 1;
      if (v62 + 1 < v132)
      {
        goto LABEL_35;
      }

      break;
    }

    if ((v46 & 0xF7) == 0x25)
    {
      v39 = 0;
      v43 = 1;
    }

    else
    {
      if (*(v45 + i) > 0x29u)
      {
        if (v47 == 42)
        {
          continue;
        }

        if (v47 == 96)
        {
          v39 = 2;
          continue;
        }
      }

      else
      {
        if (v47 == 34)
        {
          v39 = 1;
          continue;
        }

        if (v47 == 39)
        {
          v39 = 3;
          continue;
        }
      }

      if (!__s)
      {
        goto LABEL_53;
      }

      v48 = *(v45 + i);
      v49 = v39;
      v139 = v42;
      v50 = v43;
      v51 = v40;
      v52 = strchr(__s, v48);
      v40 = v51;
      v43 = v50;
      v42 = v139;
      v38 = v141;
      v39 = v49;
      a4 = v142;
      if (!v52)
      {
LABEL_53:
        if (v40 >= v132)
        {
          v19 = "::ldbrec:: in FillProsWords. Trying to write information for phone at index %d in buffer of length %d.";
          goto LABEL_14;
        }

        if (*(v128 + v46) == 255)
        {
          v55 = v39;
          v56 = v42;
          v57 = v43;
          v58 = v40;
          NNFX_logMsg(a1, 1, "::ldbrec:: in FillProsWords unvalid phoneme %c.\n", a4, a5, a6, a7, a8);
          v38 = v141;
          a4 = v142;
          v40 = v58;
          v43 = v57;
          v42 = v56;
        }

        else
        {
          *(v135 + v40) = v47;
          *(v131 + 4 * v40) = v39;
          *(v134 + v40) = 32;
          if (v40)
          {
            v53 = (v40 - 1);
            *(v134 + v53) = v130;
            *(v133 + 4 * v40) = 0;
            if (v43 == 1)
            {
              v54 = 1;
              goto LABEL_60;
            }
          }

          else
          {
            v54 = 0;
            v53 = 0;
LABEL_60:
            *(v133 + 4 * v53) = v54;
          }

          v59 = v40;
          v55 = v39;
          v60 = v40;
          v61 = stringdup(a1, v126);
          *(v143 + v60) = v61;
          if (!v61)
          {
            v19 = "::ldbrec:: in FillProsWords copying phone tag for phone %c.\n";
            goto LABEL_14;
          }

          v43 = 0;
          v40 = (v59 + 1);
          v130 = 32;
          v38 = v141;
          a4 = v142;
        }

        v39 = v55;
        continue;
      }

      v130 = v47;
    }
  }

  v75 = v145;
  if (v40 > v132)
  {
    v19 = "::ldbrec:: in FillProsWords. Trying to null-terminate string at index %d in a buffer of length %d.\n";
    goto LABEL_14;
  }

  v31 = a1;
  v138 = v39;
  if (v132)
  {
    v26 = v129;
    if (v127)
    {
      a7 = v136;
      if (v136 >= 2)
      {
        v76 = v40;
        if (!InsertSilWord(a1, a2, v129, a4, (v38 - 1), (v145 - 1), v136, *v11, v125))
        {
          return 0;
        }

        ++v136;
        v75 = (v145 + 1);
        v38 = v141;
        a4 = v142;
        LODWORD(v40) = v76;
      }
    }
  }

  else
  {
    v26 = v129;
  }

  v145 = v75;
  if (!v40)
  {
    goto LABEL_124;
  }

  *(v135 + v40) = 0;
  v77 = v40 - 1;
  *(v134 + (v40 - 1)) = v130;
  *(v134 + v40) = 0;
  if (v75 >= *v11)
  {
    v19 = "::ldbrec:: in FillProsWords trying to allocate for %d-th prosodic word while expecting %d";
  }

  else
  {
    v78 = v40;
    v79 = heap_Alloc(*(a1 + 8), 200);
    v26[v145] = v79;
    if (v79)
    {
      v80 = *(**(a2 + 8 * v142) + 8 * v141);
      *v79 = *v80;
      *(v79 + 16) = *(v80 + 16);
      *(v79 + 24) = *(v80 + 24);
      *(v79 + 136) = *(v80 + 120);
      v81 = stringdup(a1, *(v80 + 128));
      *(v26[v145] + 32) = v81;
      if (v81)
      {
        v82 = stringdup(a1, *(*(**(a2 + 8 * v142) + 8 * v141) + 136));
        *(v26[v145] + 40) = v82;
        if (v82)
        {
          v83 = stringdup(a1, *(*(**(a2 + 8 * v142) + 8 * v141) + 32));
          *(v26[v145] + 48) = v83;
          if (v83)
          {
            v84 = stringdup(a1, *(*(**(a2 + 8 * v142) + 8 * v141) + 40));
            *(v26[v145] + 56) = v84;
            if (v84)
            {
              v85 = stringdup(a1, *(*(**(a2 + 8 * v142) + 8 * v141) + 48));
              *(v26[v145] + 64) = v85;
              if (v85)
              {
                v86 = stringdup(a1, *(*(**(a2 + 8 * v142) + 8 * v141) + 56));
                *(v26[v145] + 72) = v86;
                if (v86)
                {
                  v87 = stringdup(a1, *(*(**(a2 + 8 * v142) + 8 * v141) + 64));
                  *(v26[v145] + 80) = v87;
                  if (v87)
                  {
                    v88 = stringdup(a1, *(*(**(a2 + 8 * v142) + 8 * v141) + 72));
                    *(v26[v145] + 88) = v88;
                    if (v88)
                    {
                      v89 = stringdup(a1, *(*(**(a2 + 8 * v142) + 8 * v141) + 80));
                      *(v26[v145] + 96) = v89;
                      if (v89)
                      {
                        v90 = stringdup(a1, *(*(**(a2 + 8 * v142) + 8 * v141) + 96));
                        *(v26[v145] + 112) = v90;
                        if (v90)
                        {
                          v91 = stringdup(a1, *(*(**(a2 + 8 * v142) + 8 * v141) + 88));
                          *(v26[v145] + 104) = v91;
                          if (v91)
                          {
                            v92 = stringdup(a1, *(*(**(a2 + 8 * v142) + 8 * v141) + 104));
                            *(v26[v145] + 120) = v92;
                            if (v92)
                            {
                              v93 = stringdup(a1, *(*(**(a2 + 8 * v142) + 8 * v141) + 112));
                              *(v26[v145] + 128) = v93;
                              if (v93)
                              {
                                *(v133 + 4 * v77) = 1;
                                v94 = v26[v145];
                                v94[35] = v136;
                                v94[36] = v78;
                                v95 = v141 == *(*(a2 + 8 * v142) + 8) - 1;
                                v94[48] = 0;
                                v94[49] = v95;
                                v96 = heap_Calloc(*(a1 + 8), v78, 4);
                                *(v26[v145] + 176) = v96;
                                if (v96)
                                {
                                  v97 = *(v26[v145] + 176);
                                  v98 = v78;
                                  v99 = v131;
                                  do
                                  {
                                    v100 = *v99++;
                                    *v97++ = v100;
                                    --v98;
                                  }

                                  while (v98);
                                  v101 = heap_Alloc(*(a1 + 8), v78 + 1);
                                  *(*(v129 + 8 * v145) + 152) = v101;
                                  if (v101)
                                  {
                                    v136 += v78;
                                    for (j = 0; j != v78; ++j)
                                    {
                                      *(*(*(v129 + 8 * v145) + 152) + j) = *(v135 + j);
                                    }

                                    *(*(*(v129 + 8 * v145) + 152) + v78) = 0;
                                    v103 = heap_Alloc(*(a1 + 8), v78 + 1);
                                    *(*(v129 + 8 * v145) + 160) = v103;
                                    if (v103)
                                    {
                                      v26 = v129;
                                      for (k = 0; k != v78; ++k)
                                      {
                                        *(*(*(v129 + 8 * v145) + 160) + k) = *(v134 + k);
                                      }

                                      *(*(*(v129 + 8 * v145) + 160) + v78) = 0;
                                      v105 = heap_Calloc(*(a1 + 8), v78, 4);
                                      *(*(v129 + 8 * v145) + 184) = v105;
                                      if (v105)
                                      {
                                        v106 = *(*(v129 + 8 * v145) + 184);
                                        v107 = v78;
                                        v108 = v133;
                                        do
                                        {
                                          v109 = *v108++;
                                          *v106++ = v109;
                                          --v107;
                                        }

                                        while (v107);
                                        v110 = heap_Alloc(*(a1 + 8), 8 * v78);
                                        *(*(v129 + 8 * v145) + 168) = v110;
                                        if (v110)
                                        {
                                          v111 = 0;
                                          while (1)
                                          {
                                            v112 = stringdup(a1, *(v143 + v111));
                                            *(*(*(v129 + 8 * v145) + 168) + 8 * v111) = v112;
                                            if (!v112)
                                            {
                                              break;
                                            }

                                            if (v78 == ++v111)
                                            {
                                              v138 = 0;
                                              v145 = (v145 + 1);
                                              v130 = 32;
                                              v38 = v141;
                                              a4 = v142;
                                              goto LABEL_124;
                                            }
                                          }

                                          v19 = "::ldbrec:: in FillProsWords allocating mem to hold phone-tag sequence for phone %d in pros word %d";
                                        }

                                        else
                                        {
                                          v19 = "::ldbrec:: in FillProsWords allocating mem to hold phone-tag sequences for pros word %d\n";
                                        }
                                      }

                                      else
                                      {
                                        v19 = "::ldbrec:: in FillProsWords allocating mem to hold syll bdry sequence for pros word %d\n";
                                      }
                                    }

                                    else
                                    {
                                      v19 = "::ldbrec:: in FillProsWords allocating mem to hold differentiators sequence for pros word %d\n";
                                    }
                                  }

                                  else
                                  {
                                    v19 = "::ldbrec:: in FillProsWords allocating mem to hold phone sequence for pros word %d\n";
                                  }
                                }

                                else
                                {
                                  v19 = "::ldbrec:: in FillProsWords allocating mem to hold lex stress sequence for pros word %d\n";
                                }
                              }

                              else
                              {
                                v19 = "::ldbrec:: in FillProsWord creating nluCPS field.\n";
                              }
                            }

                            else
                            {
                              v19 = "::ldbrec:: in FillProsWord creating nluBDS field.\n";
                            }
                          }

                          else
                          {
                            v19 = "::ldbrec:: in FillProsWord creating nluCMP field.\n";
                          }
                        }

                        else
                        {
                          v19 = "::ldbrec:: in FillProsWord creating nluPNC field.\n";
                        }
                      }

                      else
                      {
                        v19 = "::ldbrec:: in FillProsWord creating nluCLS field.\n";
                      }
                    }

                    else
                    {
                      v19 = "::ldbrec:: in FillProsWord creating nluPHR field.\n";
                    }
                  }

                  else
                  {
                    v19 = "::ldbrec:: in FillProsWord creating nluPOS field.\n";
                  }
                }

                else
                {
                  v19 = "::ldbrec:: in FillProsWord creating lang field.\n";
                }
              }

              else
              {
                v19 = "::ldbrec:: in FillProsWord creating CGN field.\n";
              }
            }

            else
            {
              v19 = "::ldbrec:: in FillProsWord creating POS field.\n";
            }
          }

          else
          {
            v19 = "::ldbrec:: in FillProsWord creating tnTag field.\n";
          }
        }

        else
        {
          v19 = "::ldbrec:: in FillProsWord creating SPR field.\n";
        }
      }

      else
      {
        v19 = "::ldbrec:: in FillProsWord creating ortho field.\n";
      }
    }

    else
    {
      v19 = "::ldbrec:: in FillProsWords allocating ppPWRI for record %d\n";
    }
  }

LABEL_176:
  v20 = v31;
LABEL_177:
  NNFX_logMsg(v20, 0, v19, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t InsertSilWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v9 = a6;
  if (a6 >= a8)
  {
    v21 = "::ldbrec:: in FillProsWords trying to allocate for %d-th prosodic (silence) word while expecting %d max";
LABEL_13:
    NNFX_logMsg(a1, 0, v21, a4, a5, a6, a7, a8);
    return 0;
  }

  v11 = a5;
  v12 = a4;
  v15 = *(**(a2 + 8 * a4) + 8 * a5);
  SilWord = MakeSilWord(a1, a7, *(v15 + 8), *(v15 + 16), 35, a9, a7, a8);
  *(a3 + 8 * (v9 + 1)) = SilWord;
  if (!SilWord)
  {
    v21 = "::ldbrec:: in FillProsWords while creating silence word after phone %d.\n";
    goto LABEL_13;
  }

  v17 = *(a3 + 8 * v9);
  v18 = *(*(a2 + 8 * v12) + 8) - 1;
  if (*(v17 + 144))
  {
    v19 = v18 == v11;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    *(v17 + 196) = 0;
  }

  v20 = 1;
  if (v18 == v11)
  {
    *(SilWord + 49) = 1;
  }

  return v20;
}

void *freepWRI(uint64_t a1, void *a2)
{
  v4 = a2[16];
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
  }

  v5 = a2[17];
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
  }

  v6 = a2[4];
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
  }

  v7 = a2[5];
  if (v7)
  {
    heap_Free(*(a1 + 8), v7);
  }

  v8 = a2[6];
  if (v8)
  {
    heap_Free(*(a1 + 8), v8);
  }

  v9 = a2[7];
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
  }

  v10 = a2[8];
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
  }

  v11 = a2[9];
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
  }

  v12 = a2[10];
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
  }

  v13 = a2[12];
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
  }

  v14 = a2[11];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
  }

  v15 = a2[13];
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
  }

  v16 = a2[14];
  if (v16)
  {
    heap_Free(*(a1 + 8), v16);
  }

  v17 = *(a1 + 8);

  return heap_Free(v17, a2);
}

void *freepSRI(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*a2 + 8 * i);
      if (v6)
      {
        freepWRI(a1, v6);
        *(*a2 + 8 * i) = 0;
        v4 = *(a2 + 8);
      }
    }
  }

  if (*a2)
  {
    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    for (j = 0; j < v7; ++j)
    {
      v9 = *(*(a2 + 16) + 8 * j);
      if (v9)
      {
        freepWRI(a1, v9);
        *(*(a2 + 16) + 8 * j) = 0;
        v7 = *(a2 + 24);
      }
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a2 + 16) = 0;
  }

  v11 = *(a2 + 40);
  if (v11)
  {
    for (k = 0; k < v11; ++k)
    {
      v13 = *(*(a2 + 32) + 8 * k);
      if (v13)
      {
        freepWRI(a1, v13);
        *(*(a2 + 32) + 8 * k) = 0;
        v11 = *(a2 + 40);
      }
    }
  }

  v14 = *(a2 + 32);
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    *(a2 + 32) = 0;
  }

  v15 = *(a2 + 56);
  if (v15)
  {
    for (m = 0; m < v15; ++m)
    {
      v17 = *(*(a2 + 48) + 8 * m);
      if (v17)
      {
        freepWRI(a1, v17);
        *(*(a2 + 48) + 8 * m) = 0;
        v15 = *(a2 + 56);
      }
    }
  }

  v18 = *(a2 + 48);
  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
    *(a2 + 48) = 0;
  }

  v19 = *(a2 + 72);
  if (v19)
  {
    for (n = 0; n < v19; ++n)
    {
      v21 = *(*(a2 + 64) + 8 * n);
      if (v21)
      {
        freepWRI(a1, v21);
        *(*(a2 + 64) + 8 * n) = 0;
        v19 = *(a2 + 72);
      }
    }
  }

  v22 = *(a2 + 64);
  if (v22)
  {
    heap_Free(*(a1 + 8), v22);
    *(a2 + 64) = 0;
  }

  v23 = *(a1 + 8);

  return heap_Free(v23, a2);
}

void *freepPWRI(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    *(a2 + 32) = 0;
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
    *(a2 + 40) = 0;
  }

  v6 = *(a2 + 48);
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
    *(a2 + 48) = 0;
  }

  v7 = *(a2 + 56);
  if (v7)
  {
    heap_Free(*(a1 + 8), v7);
    *(a2 + 56) = 0;
  }

  v8 = *(a2 + 64);
  if (v8)
  {
    heap_Free(*(a1 + 8), v8);
    *(a2 + 64) = 0;
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
    *(a2 + 72) = 0;
  }

  v10 = *(a2 + 88);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a2 + 88) = 0;
  }

  v11 = *(a2 + 80);
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
    *(a2 + 80) = 0;
  }

  v12 = *(a2 + 96);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
    *(a2 + 96) = 0;
  }

  v13 = *(a2 + 112);
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
    *(a2 + 112) = 0;
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    *(a2 + 104) = 0;
  }

  v15 = *(a2 + 120);
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
    *(a2 + 120) = 0;
  }

  v16 = *(a2 + 128);
  if (v16)
  {
    heap_Free(*(a1 + 8), v16);
    *(a2 + 128) = 0;
  }

  v17 = *(a2 + 152);
  if (v17)
  {
    heap_Free(*(a1 + 8), v17);
    *(a2 + 152) = 0;
  }

  v18 = *(a2 + 160);
  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
    *(a2 + 160) = 0;
  }

  v19 = *(a2 + 176);
  if (v19)
  {
    heap_Free(*(a1 + 8), v19);
    *(a2 + 176) = 0;
  }

  v20 = *(a2 + 184);
  if (v20)
  {
    heap_Free(*(a1 + 8), v20);
    *(a2 + 184) = 0;
  }

  v21 = *(a2 + 144);
  if (v21)
  {
    for (i = 0; i < v21; ++i)
    {
      v23 = *(*(a2 + 168) + 8 * i);
      if (v23)
      {
        heap_Free(*(a1 + 8), v23);
        *(*(a2 + 168) + 8 * i) = 0;
        v21 = *(a2 + 144);
      }
    }
  }

  v24 = *(a2 + 168);
  if (v24)
  {
    heap_Free(*(a1 + 8), v24);
    *(a2 + 168) = 0;
  }

  v25 = *(a1 + 8);

  return heap_Free(v25, a2);
}