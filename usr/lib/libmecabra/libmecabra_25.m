uint64_t sub_29931CB9C(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 24);
  if (v6 <= a2)
  {
    v7 = v6 + 0x2000;
    v8 = *(a1 + 32);
    v9 = *a1;
    v10 = 8 * v7;
    if (v8)
    {
      v11 = v8(v9, v10 + 16, *(a1 + 40));
      *a1 = v11;
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_7;
    }

    v11 = malloc_type_realloc(v9, v10 + 16, 0x1000040451B5BE8uLL);
    *a1 = v11;
    if (*(a1 + 80))
    {
      if (v11)
      {
LABEL_7:
        *(a1 + 8) = v11 + 16;
        if (!*(a1 + 32))
        {
          bzero(&v11[8 * *(a1 + 24) + 16], 8 * (v7 - *(a1 + 24)));
        }

        *(a1 + 24) = v7;
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 80) = 1;
      if (v11)
      {
        goto LABEL_7;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_10:
  if (*(a1 + 16) < a2)
  {
    *(a1 + 16) = a2;
  }

  result = 0;
  *(*(a1 + 8) + 8 * a2) = a3;
  return result;
}

uint64_t sub_29931CC8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = 1;
  while (1)
  {
    if (a3 == v4)
    {
      v7 = *(a1 + 8);
      if (v5 < v6)
      {
        v8 = 0;
        goto LABEL_14;
      }

      v8 = *(v7 + 8 * v6);
    }

    else
    {
      v9 = v5 >= v6 ? *(*(a1 + 8) + 8 * v6) + 1 : 1;
      v8 = v9 + *(a2 + v4);
    }

    if (v5 >= v8)
    {
      break;
    }

    if (v6)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_16:
    ++v4;
    v6 = v8;
    if (v4 > a3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v7 = *(a1 + 8);
LABEL_14:
  if (*(v7 + 8 * v8 + 4) != v6)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(v7 + 8 * v8) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  result = sub_29931CB9C(a1, v8, 0);
  if (result != -1)
  {
    v11 = sub_29931CD8C(a1, v8, 0);
    result = 0;
    if (v11 == -1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_29931CD8C(uint64_t a1, unsigned int a2, int a3)
{
  v6 = *(a1 + 24);
  if (v6 <= a2)
  {
    v7 = v6 + 0x2000;
    v8 = *(a1 + 32);
    v9 = *a1;
    v10 = 8 * v7;
    if (v8)
    {
      v11 = v8(v9, v10 + 16, *(a1 + 40));
      *a1 = v11;
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_7;
    }

    v11 = malloc_type_realloc(v9, v10 + 16, 0x1000040451B5BE8uLL);
    *a1 = v11;
    if (*(a1 + 80))
    {
      if (v11)
      {
LABEL_7:
        *(a1 + 8) = v11 + 16;
        if (!*(a1 + 32))
        {
          bzero(&v11[8 * *(a1 + 24) + 16], 8 * (v7 - *(a1 + 24)));
        }

        *(a1 + 24) = v7;
        goto LABEL_10;
      }
    }

    else
    {
      *(a1 + 80) = 1;
      if (v11)
      {
        goto LABEL_7;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_10:
  if (*(a1 + 16) < a2)
  {
    *(a1 + 16) = a2;
  }

  result = 0;
  *(*(a1 + 8) + 8 * a2 + 4) = a3;
  return result;
}

uint64_t sub_29931CE7C(uint64_t a1, unint64_t a2, void *a3, uint64_t *a4, uint64_t a5, unsigned int a6, int a7, uint64_t a8)
{
  v15 = *(a1 + 8);
  v16 = *(v15 + 8 * a6);
  if (a7)
  {
    v17 = (v15 + 8 * v16);
    if (v17[1] == a6)
    {
      v18 = *v17;
      if (v18 < 0)
      {
        if (*a3)
        {
          --*a3;
        }

        else if (a2)
        {
          v23 = *a4;
          v24 = a5 + 24 * *a4;
          *(v24 + 8) = -v18;
          *a4 = v23 + 1;
          *(v24 + 12) = a8;
          if (v23 + 1 >= a2)
          {
            return 1;
          }
        }

        else
        {
          ++*a4;
        }
      }
    }
  }

  v19 = (v16 + 1);
  v20 = 257;
  v21 = 1;
  while (*(*(a1 + 8) + 8 * v19 + 4) != a6 || !sub_29931CE7C(a1, a2, a3, a4, a5, v19, 1, a8 + 1))
  {
    v19 = (v19 + 1);
    if (--v20 <= 1)
    {
      return 0;
    }
  }

  return v21;
}

uint64_t sub_29931CFB0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 >= a2)
  {
    v4 = *(*(a1 + 8) + 8 * a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    if (v3 >= v4 + v5)
    {
      v7 = *(*(a1 + 8) + 8 * (v4 + v5) + 4);
    }

    else
    {
      v7 = 0;
    }

    if (v7 == a2)
    {
      *(a3 + 2 * v6++) = v5;
    }

    ++v5;
  }

  while (v5 != 257);
  return v6;
}

uint64_t sub_29931D01C(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unint64_t a5, __int16 a6, int a7, unsigned int *a8)
{
  v14 = *(a1 + 16);
  if (v14 >= a3)
  {
    v38 = *(*(a1 + 8) + 8 * a3);
    if (a7)
    {
LABEL_3:
      v15 = 0;
      *(a4 + 2 * a5) = a6;
      v16 = 1;
      do
      {
        v17 = v16 + *(a4 + 2 * v15);
        v18 = v14 >= v17 && *(*(a1 + 8) + 8 * v17 + 4) != 0;
        ++v15;
        v19 = v17 == 1 || v18;
        v16 += v19;
        if (v19)
        {
          v15 = 0;
        }
      }

      while (v15 < a5 + 1);
      goto LABEL_25;
    }
  }

  else
  {
    v38 = 0;
    if (a7)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  v16 = 1;
  do
  {
    v21 = v16 + *(a4 + 2 * v20);
    v22 = v14 >= v21 && *(*(a1 + 8) + 8 * v21 + 4) != 0;
    ++v20;
    v23 = v21 == 1 || v22;
    v16 += v23;
    if (v23)
    {
      v20 = 0;
    }
  }

  while (v20 < a5);
LABEL_25:
  result = sub_29931CB9C(a1, a3, v16);
  if (result != -1)
  {
    v37 = a8;
    if (a5)
    {
      v25 = 0;
      while (1)
      {
        v26 = *(a1 + 16);
        v27 = v26 >= a3 ? *(*(a1 + 8) + 8 * a3) : 0;
        v28 = *(a4 + 2 * v25);
        v29 = (v38 + v28);
        v30 = v26 >= v29 ? *(*(a1 + 8) + 8 * (v38 + v28)) : 0;
        v31 = v27 + v28;
        result = sub_29931CB9C(a1, v27 + v28, v30);
        if (result == -1)
        {
          break;
        }

        result = sub_29931CD8C(a1, v31, a3);
        if (result == -1)
        {
          break;
        }

        if (*(a1 + 16) >= v29 && *(*(a1 + 8) + 8 * v29) >= 1)
        {
          v32 = 0;
          do
          {
            v33 = *(a1 + 16);
            v34 = v33 >= v29 ? *(*(a1 + 8) + 8 * v29) : 0;
            v35 = v34 + v32;
            if (v34 + v32 > v33)
            {
              break;
            }

            if (*(*(a1 + 8) + 8 * v35 + 4) == v29)
            {
              result = sub_29931CD8C(a1, v35, v31);
              if (result == -1)
              {
                return result;
              }
            }
          }

          while (++v32 != 257);
        }

        result = sub_29931CB9C(a1, v29, 0);
        if (result == -1)
        {
          break;
        }

        result = sub_29931CD8C(a1, v29, 0);
        if (result == -1)
        {
          break;
        }

        ++v25;
        if (v29 == a2 && a2 != a3)
        {
          a2 = v31;
        }

        if (v25 == a5)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
LABEL_54:
      result = 0;
      *v37 = a2;
    }
  }

  return result;
}

uint64_t sub_29931D2D0(int a1, __CFDictionary *a2, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  if (result)
  {
    v6 = result;
    result = sub_299377154(result);
    if (result)
    {
      v7 = (*(*v6 + 48))(v6);
      v8 = MEMORY[0x29EDB8F00];
      if (v7 >= 2)
      {
        v9 = *MEMORY[0x29EDB8F00];
        CFDictionaryAddValue(a2, @"phraseCandidateAccepted", *MEMORY[0x29EDB8F00]);
        if ((*(*v6 + 288))(v6))
        {
          CFDictionaryAddValue(a2, @"dialectPhraseCandidateAccepted", v9);
        }
      }

      if ((*(*v6 + 96))(v6) == 76)
      {
        v10 = off_29EF10378;
      }

      else if ((*(*v6 + 96))(v6) == 85)
      {
        v10 = off_29EF10370;
      }

      else if ((*(*v6 + 96))(v6) == 65)
      {
        v10 = off_29EF10380;
      }

      else
      {
        if ((*(*v6 + 96))(v6) != 77)
        {
LABEL_17:
          if ((*(*v6 + 80))(v6))
          {
            CFDictionaryAddValue(a2, @"extensionCandidateAccepted", *v8);
          }

          if ((*(*v6 + 176))(v6))
          {
            CFDictionaryAddValue(a2, @"emojiCandidateAccepted", *v8);
          }

          if ((*(*v6 + 264))(v6))
          {
            CFDictionaryAddValue(a2, @"otaNonRegionalLexiconCandidateAccepted", *v8);
          }

          if ((*(*v6 + 272))(v6))
          {
            CFDictionaryAddValue(a2, @"otaRegionalLexiconCandidateAccepted", *v8);
          }

          if ((*(*v6 + 200))(v6))
          {
            CFDictionaryAddValue(a2, @"autocorrectionCandidateAccepted", *v8);
          }

          if (((*(*v6 + 416))(v6) & 0x400) != 0)
          {
            CFDictionaryAddValue(a2, @"fuzzyPinyinEnabled", *v8);
          }

          if ((*(*v6 + 192))(v6))
          {
            CFDictionaryAddValue(a2, @"fuzzyPinyinCandidateAccepted", *v8);
          }

          return 1;
        }

        v10 = off_29EF10330;
      }

      CFDictionaryAddValue(a2, *v10, *v8);
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_29931D718(uint64_t a1, uint64_t a2, void *a3, __int128 *a4)
{
  v5 = *(a1 + 84);
  if (a3)
  {
    v6 = 0;
    v7 = *a4;
    v8 = *(a4 + 1);
    v9 = *a4;
    v10 = 1;
    while (1)
    {
      v11 = *(*a3 + 80);
      if (v11 == 1)
      {
        if (v9 != v8)
        {
          v12 = v8 - 1;
          v13 = v8 - 1;
          do
          {
            v14 = v6;
            v15 = *v13--;
            *(&unk_2A1462168 + v10--) = v15;
            if (v6)
            {
              break;
            }

            v6 = 1;
            v16 = v12 == v9;
            v12 = v13;
          }

          while (!v16);
          goto LABEL_16;
        }

        v11 = 1;
      }

      else if (v5 == 1)
      {
        v17 = v11 - 1000;
        v18 = v17;
        v19 = (&unk_299421A3C + 2 * v17 - 28);
        v20 = &aXxxxxfffffyyyy[v17 - 428];
        if (v18 < 0x1AC)
        {
          v20 = v19;
        }

        v11 = *v20 + 1000;
      }

      *(&unk_2A1462168 + v10--) = v11;
      a3 = a3[1];
      v14 = v6;
LABEL_16:
      if (!v14)
      {
        v6 = 1;
        if (a3)
        {
          continue;
        }
      }

      v21 = v14 + 1;
      goto LABEL_20;
    }
  }

  v21 = 0;
  v10 = 1;
LABEL_20:
  v22 = *(a1 + 80);
  if (v5 == 1 && (v22 - 1) >= 2)
  {
    v24 = &aXxxxxfffffyyyy[(v22 - 1000) - 428];
    if ((v22 - 1000) < 0x1ACu)
    {
      v24 = (&unk_299421A3C + 2 * (v22 - 1000) - 28);
    }

    v22 = *v24 + 1000;
  }

  return (*(*a2 + 40))(a2, v22, &unk_2A1462168 + 4 * v10 + 4, v21);
}

BOOL sub_29931D86C(uint64_t a1)
{
  if ((*(*(a1 + 72) + 8) & 2) != 0)
  {
    return 1;
  }

  v2 = sub_2993A13A0();
  return *(a1 + 84) == 1 && sub_299223864(v2, (*(a1 + 72) + 2)) != 0;
}

void sub_29931D8CC(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = *(a1 + 84);
  if (v2 == 2)
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      v7 = *(v7 + 2);
    }

    v4 = 2 * v7;
    v5 = &off_29EF15F80;
    goto LABEL_13;
  }

  if (v2 != 1)
  {
    if (v2)
    {
      v8 = "";
      goto LABEL_15;
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      v3 = *(v3 + 2);
    }

    v4 = 2 * v3;
    v5 = &off_29EF13DA0;
LABEL_13:
    v8 = v5[v4];
LABEL_15:
    sub_2991C6CA8(a2, v8);
    return;
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    v6 = *(v6 + 2);
  }

  sub_299277B3C(*(&off_29EF19DC0 + 2 * v6), *(&off_29EF19DC0 + 2 * v6 + 1), a2);
}

uint64_t sub_29931D950(uint64_t a1, CFTypeRef cf, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = a8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a7;
  *a1 = &unk_2A1F70D30;
  if (cf)
  {
    *(a1 + 72) = CFRetain(cf);
    *(a1 + 80) = a4;
    v11 = LXCursorHash();
  }

  else
  {
    v11 = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = a4;
  }

  *(a1 + 112) = 0;
  *(a1 + 88) = v11;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (a3)
  {
    LXEntryGetProbability();
    *(a1 + 96) = v12;
    v13 = LXEntryCopyString();
    sub_299219AB4((a1 + 112), v13);
    *(a1 + 104) = LXEntryGetMetaFlags();
    *(a1 + 88) = sub_299279FBC(*(a1 + 112));
  }

  return a1;
}

void sub_29931DA5C(_Unwind_Exception *a1)
{
  sub_299235628((v1 + 72), 0);
  *v1 = v2;
  v4 = *(v1 + 32);
  if (v4)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_29931DAA4(void *a1)
{
  *a1 = &unk_2A1F70CA0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_29931DAF4(void *a1)
{
  *a1 = &unk_2A1F70CA0;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_29931DC14(uint64_t a1)
{
  sub_29931DDD4(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_29931DD44(_Unwind_Exception *a1)
{
  sub_299235628((v1 + 72), 0);
  *v1 = v3;
  v5 = *(v1 + 32);
  if (v5)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  MEMORY[0x29C29BFB0](v1, v2);
  _Unwind_Resume(a1);
}

_BYTE *sub_29931DDB8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    return sub_299278568(v2, a2);
  }

  else
  {
    return sub_2991C6CA8(a2, "");
  }
}

uint64_t sub_29931DDD4(uint64_t a1)
{
  *a1 = &unk_2A1F70D30;
  sub_299219AB4((a1 + 112), 0);
  sub_299235628((a1 + 72), 0);
  *a1 = &unk_2A1F70CA0;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  return a1;
}

__CFArray *sub_29931DE54(uint64_t *a1)
{
  v1 = *a1;
  EmojiTokensForString = CEMEmojiLocaleDataCreateEmojiTokensForString();
  if (!EmojiTokensForString)
  {
    return 0;
  }

  v3 = EmojiTokensForString;
  Count = CFArrayGetCount(EmojiTokensForString);
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], Count, MEMORY[0x29EDB9000]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(v3, i);
      String = CEMEmojiTokenGetString();
      v8 = sub_2992FDA94();
      v9 = sub_2992FDE24(v8, String);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = String;
      }

      CFArrayAppendValue(Mutable, v10);
    }
  }

  CFRelease(v3);
  return Mutable;
}

void sub_29931DF4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299229F00(va, 0);
  _Unwind_Resume(a1);
}

void sub_29931DF74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33[4] = *MEMORY[0x29EDCA608];
  *a3 = &unk_2A1F65118;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 1065353216;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 48) = 0;
  v4 = *(a1 + 16);
  if (v4 && ((*(*v4 + 48))(v4) & 1) != 0)
  {
    (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
    (*(**(a1 + 16) + 88))(*(a1 + 16));
    v6 = *(a1 + 24);
    v26 = xmmword_2994018E0;
    *&v27 = 10;
    DWORD2(v27) = 1077936128;
    v33[0] = &unk_2A1F70E00;
    v33[3] = v33;
    (*(*v6 + 16))(&v31);
    sub_29921F0A8(v33);
    *&v26 = 0;
    DWORD2(v26) = 0;
    v27 = 0u;
    v28 = 0u;
    *v29 = 0u;
    v30 = 0;
    v7 = v31;
    v8 = v32;
    if (v31 != v32)
    {
      do
      {
        v9 = *(v7 + 23);
        if (v9 < 0)
        {
          v10 = *v7;
          v9 = *(v7 + 8);
        }

        else
        {
          v10 = v7;
        }

        sub_299251274(v10, v9, &__p);
        v11 = v25;
        if ((v25 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v25 & 0x80u) == 0)
        {
          v13 = v25;
        }

        else
        {
          v13 = v24;
        }

        v14 = &p_p[2 * v13];
        if (*(v14 - 1) == 32)
        {
          v15 = -1;
        }

        else
        {
          v15 = 0;
        }

        if (&v14[2 * v15] != p_p)
        {
          v16 = 2 * v13 + 2 * v15;
          v17 = p_p;
          while (*v17 - 48 < 0xA)
          {
            v17 += 2;
            v16 -= 2;
            if (!v16)
            {
              goto LABEL_29;
            }
          }

          v18 = sub_2992BD2B0(a1, p_p, v13);
          v11 = v25;
          if (!v18)
          {
            if ((v25 & 0x80u) == 0)
            {
              v19 = &__p;
            }

            else
            {
              v19 = __p;
            }

            if ((v25 & 0x80u) == 0)
            {
              v20 = v25;
            }

            else
            {
              v20 = v24;
            }

            v21 = **(a1 + 8);
            sub_2992BD354(a1, &v26, v19, v20);
          }
        }

LABEL_29:
        if ((v11 & 0x80) != 0)
        {
          operator delete(__p);
        }

        v7 += 32;
      }

      while (v7 != v8);
      if (v29[0])
      {
        v29[1] = v29[0];
        operator delete(v29[0]);
      }
    }

    *&v26 = &v31;
    sub_29921EB1C(&v26);
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_29931E46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a11)
  {
    (*(*a11 + 16))(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    a25 = a24;
    operator delete(a24);
  }

  a18 = &a27;
  sub_29921EB1C(&a18);
  sub_29921D794(v30);
  _Unwind_Resume(a1);
}

void sub_29931E554(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = *MEMORY[0x29EDCA608];
  *a4 = &unk_2A1F65118;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 1065353216;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 48) = 0;
  v5 = *(a1 + 16);
  if (v5)
  {
    v8 = (*(*v5 + 48))(v5);
    v9 = a3 ? v8 : 0;
    if (v9)
    {
      (*(**(a1 + 16) + 40))(*(a1 + 16), a2);
      LODWORD(v30) = 1;
      HIDWORD(v30) = *(a3 + 96);
      v10 = (*(*a3 + 112))(a3);
      v11 = *(a3 + 32);
      v31 = v10;
      v12 = *(a3 + 55);
      if (v12 >= 0)
      {
        v13 = a3 + 32;
      }

      else
      {
        v13 = v11;
      }

      if (v12 >= 0)
      {
        v14 = *(a3 + 55);
      }

      else
      {
        v14 = *(a3 + 40);
      }

      v32 = v13;
      v33 = v14;
      v15 = *(a3 + 87);
      v16 = a3 + 64;
      if (v15 < 0)
      {
        v16 = *(a3 + 64);
      }

      if (v15 < 0)
      {
        v15 = *(a3 + 72);
      }

      v34 = v16;
      v35 = v15;
      __p[1] = 0;
      v37 = 0;
      __p[0] = 0;
      sub_29921E67C(*(a1 + 16));
      *__p = *v26;
      v37 = v27;
      if (sub_2992BD134(&v30, *(a1 + 16), 0))
      {
        v17 = *(a1 + 16);
        v40 = 0;
        v41 = 0;
        v42 = 0;
        sub_2991D82D0(&v40, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
        v26[0] = 0;
        v26[1] = 0;
        v27 = 0;
        sub_29921ED74(v26, &v40, &v43, 1uLL);
        (*(*v17 + 64))(v29, v17, v26, 1);
        if (v29[0])
        {
          v29[1] = v29[0];
          operator delete(v29[0]);
        }

        v38 = v26;
        sub_29920E060(&v38);
        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        (*(**(a1 + 16) + 96))(&v38);
        (*(*v38 + 3))(v38, *(__p[1] - 1));
        v18 = *(a1 + 24);
        *v26 = xmmword_2994018F0;
        v27 = 16;
        v28 = 1082130432;
        v39[0] = &unk_2A1F70E80;
        v39[3] = v39;
        (*(*v18 + 16))(&v40);
        sub_29921F0A8(v39);
        if (v40 != v41 && *(v40 + 6) >= -1.7)
        {
          v19 = *(v40 + 23);
          if (v19 < 0)
          {
            v20 = *v40;
            v19 = v40[1];
          }

          else
          {
            v20 = v40;
          }

          sub_299251274(v20, v19, v26);
          if (v27 >= 0)
          {
            v21 = v26;
          }

          else
          {
            v21 = v26[0];
          }

          if (v27 >= 0)
          {
            v22 = HIBYTE(v27);
          }

          else
          {
            v22 = v26[1];
          }

          v23 = **(a1 + 8);
          sub_2992BD354(a1, &v30, v21, v22);
        }

        v26[0] = &v40;
        sub_29921EB1C(v26);
        v24 = v38;
        v38 = 0;
        if (v24)
        {
          (*(*v24 + 1))(v24);
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  v25 = *MEMORY[0x29EDCA608];
}

void sub_29931EC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_29921F0A8(&a35);
  if (a30)
  {
    (*(*a30 + 8))(a30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_29921D794(v35);
  _Unwind_Resume(a1);
}

void *sub_29931ED94(void *a1)
{
  *a1 = &unk_2A1F65148;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_29931EE04(void *a1)
{
  *a1 = &unk_2A1F65148;
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_29931EF24(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F70E60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29931F000(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F70EE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29931F04C()
{
  if ((atomic_load_explicit(&qword_2A1462270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1462270))
  {
    operator new();
  }

  return qword_2A1462268;
}

void sub_29931F0C4(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v1, 0x20C400FA29667);
  __cxa_guard_abort(&qword_2A1462270);
  _Unwind_Resume(a1);
}

void sub_29931F0FC(void *a1)
{
  sub_2993EA664(a1);
  sub_2993EA8D4(a1 + 2);
  sub_2993EB0F0(a1 + 4);
  operator new();
}

void sub_29931F168(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x29C29BFB0](v3, 0x1020C40F89CB87BLL);
  v5 = v1[5];
  if (v5)
  {
    sub_2991A893C(v5);
  }

  v6 = v1[3];
  if (v6)
  {
    sub_2991A893C(v6);
  }

  v7 = v1[1];
  if (v7)
  {
    sub_2991A893C(v7);
  }

  _Unwind_Resume(a1);
}

void sub_29931F1CC(uint64_t *a1, const __CFString *a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v13 = *MEMORY[0x29EDCA608];
  if (!a2 || !a4)
  {
    goto LABEL_18;
  }

  if (a6 == 2)
  {
    v8 = a1[4];
    v7 = a1[5];
    if (!v7)
    {
      goto LABEL_7;
    }

LABEL_6:
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

  if (a6 != 1)
  {
    v8 = *a1;
    v7 = a1[1];
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = a1[2];
  v7 = a1[3];
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_299299EA4(v8);
  v9 = atomic_load((v8 + 40));
  if (v9 == 2 && *v8)
  {
    sub_299299EA4(v8);
    v10 = atomic_load((v8 + 40));
    if (v10 == 2)
    {
      v11 = *v8;
    }

    CFStringGetLength(a2);
    operator new();
  }

  if (v7)
  {
    sub_2991A893C(v7);
  }

LABEL_18:
  v12 = *MEMORY[0x29EDCA608];
}

void sub_29931F9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  operator delete(v26);
  operator delete(v25);
  sub_29931FCC8(&a16);
  sub_29931FE48(&a25);
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(a1);
}

void sub_29931FA60(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v4 >= 25)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    sub_299320894(&v21, *(v2 + 16), *(v2 + 8), *v2);
    v6 = 0;
    v7 = v2;
    do
    {
      v8 = v7 + 24 * v6 + 24;
      v9 = (2 * v6) | 1;
      v10 = 2 * v6 + 2;
      if (v10 < v5)
      {
        v11 = sub_299320B1C(v7 + 24 * v6 + 24, v7 + 24 * v6 + 48);
        v12 = v11 ? 24 : 0;
        v8 += v12;
        if (v11)
        {
          v9 = v10;
        }
      }

      *v7 = *v8;
      v13 = *(v8 + 16);
      *(v8 + 16) = 0;
      sub_299320950((v7 + 16), v13);
      v14 = *(v8 + 8);
      *(v8 + 8) = 0;
      sub_299219AB4((v7 + 8), v14);
      v7 = v8;
      v6 = v9;
    }

    while (v9 <= ((v5 - 2) >> 1));
    if (v8 == v3 - 24)
    {
      *v8 = v21;
      v19 = cf;
      cf = 0;
      sub_299320950((v8 + 16), v19);
      v20 = v22;
      v22 = 0;
      sub_299219AB4((v8 + 8), v20);
    }

    else
    {
      *v8 = *(v3 - 24);
      v15 = *(v3 - 8);
      *(v3 - 8) = 0;
      sub_299320950((v8 + 16), v15);
      v16 = *(v3 - 16);
      *(v3 - 16) = 0;
      sub_299219AB4((v8 + 8), v16);
      *(v3 - 24) = v21;
      v17 = cf;
      cf = 0;
      sub_299320950((v3 - 8), v17);
      v18 = v22;
      v22 = 0;
      sub_299219AB4((v3 - 16), v18);
      sub_2993209EC(v2, v8 + 24, 0xAAAAAAAAAAAAAAABLL * ((v8 + 24 - v2) >> 3));
    }

    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
    if (v22)
    {
      CFRelease(v22);
    }

    v3 = a1[1];
  }

  sub_299320988(a1, v3 - 24);
}

void sub_29931FC4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299320914(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29931FC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = a2;
  v7 = a3;
  v6 = a5;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, &v8, &v7, &v6, a4);
}

uint64_t sub_29931FCC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v4 = (a1 + 40);
    v3 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v2[v5 / 0xAA];
    v7 = *v6 + 24 * (v5 % 0xAA);
    v8 = v2[(*(a1 + 40) + v5) / 0xAA] + 24 * ((*(a1 + 40) + v5) % 0xAA);
    if (v7 != v8)
    {
      do
      {
        sub_299320950((v7 + 16), 0);
        sub_299219AB4((v7 + 8), 0);
        v7 += 24;
        if (v7 - *v6 == 4080)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 85;
    goto LABEL_14;
  }

  if (v10 == 2)
  {
    v11 = 170;
LABEL_14:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_29931FE48(uint64_t *a1)
{
  if (*a1)
  {
    sub_299320988(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_29931FE84(uint64_t *a1)
{
  v2 = *a1;
  sub_299299EA4(*a1);
  v3 = atomic_load((v2 + 40));
  if (v3 == 2 && *v2)
  {
    v4 = *a1;
    sub_299299EA4(*a1);
    v5 = atomic_load((v4 + 40));
    if (v5 == 2)
    {
      v6 = *v4;
    }

    else
    {
      v6 = 0;
    }

    sub_2993EB828(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      if (sub_2992C1E9C() && *v8)
      {
        v9 = a1[6];

        sub_2992CAB70(v9);
      }
    }
  }
}

void sub_29931FF38(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_299299EA4(v2);
  v3 = atomic_load((v2 + 40));
  if (v3 == 2 && *v2)
  {
    v4 = *(a1 + 32);
    sub_299299EA4(v4);
    v5 = atomic_load((v4 + 40));
    if (v5 == 2)
    {
      v6 = *v4;
    }

    else
    {
      v6 = 0;
    }

    sub_2993EB828(v6);
  }
}

uint64_t sub_29931FFC0(uint64_t *a1, CFStringRef theString)
{
  v12 = *MEMORY[0x29EDCA608];
  if (theString && CFStringGetLength(theString) && (v3 = *a1, sub_299299EA4(*a1), v4 = atomic_load((v3 + 40)), v4 == 2))
  {
    v5 = *v3;
    if (*v3)
    {
      v6 = *a1;
      sub_299299EA4(v6);
      v7 = atomic_load((v6 + 40));
      if (v7 == 2)
      {
        v8 = *v6;
      }

      v11 = 0;
      operator new();
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return v5 & 1;
}

void sub_2993200F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2993211E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29932010C(uint64_t a1, uint64_t a2, const __CFString *a3, int a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v19 = a2;
  if (a2)
  {
    v7 = *(a1 + 16);
    sub_299299EA4(v7);
    v8 = atomic_load((v7 + 40));
    if (v8 == 2)
    {
      if (*v7)
      {
        v9 = *(a1 + 16);
        sub_299299EA4(v9);
        v10 = atomic_load((v9 + 40));
        if (v10 == 2)
        {
          v11 = *v9;
        }

        v18 = 0;
        if (a4)
        {
          v14 = *MEMORY[0x29EDB8ED8];
          v21.length = CFStringGetLength(a3) - 1;
          v21.location = 1;
          v15 = CFStringCreateWithSubstring(v14, a3, v21);
        }

        else
        {
          v15 = CFRetain(a3);
          v14 = *MEMORY[0x29EDB8ED8];
        }

        v17 = v15;
        cf = CFStringCreateWithFormat(v14, 0, @"%@%@", v19, v15);
        operator new();
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2993202D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_299320328(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (sub_2992C1E9C() && *v3)
      {
        v6 = *(a1 + 48);

        sub_2992CABFC(v6, a2);
      }
    }
  }
}

void sub_2993203A0(uint64_t a1, const __CFArray *a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (sub_2992C1E9C() && *v3)
      {
        v6 = *(a1 + 48);

        sub_2992CAD08(v6, a2);
      }
    }
  }
}

uint64_t *sub_299320418(uint64_t *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v5 = result;
      result = sub_2992C1E9C();
      if (result)
      {
        if (*v3)
        {
          v6 = v5[6];

          return sub_2992CAF50(v6, a2);
        }
      }
    }
  }

  return result;
}

uint64_t sub_299320490(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (v2)
  {
    result = sub_2992C1E9C();
    if (!result)
    {
      return result;
    }

    if (*v2)
    {
      v5 = *(*(a1 + 48) + 16);
      if (v5)
      {
        return (*(v5 + 8) - 5) < 0x60;
      }
    }
  }

  return 0;
}

void sub_299320504(uint64_t a1, __int16 a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      if (sub_2992C1E9C())
      {
        if (*v6)
        {
          v20 = 0;
          v12 = *(a1 + 48);
          v13[0] = MEMORY[0x29EDCA5F8];
          v13[1] = 0x40000000;
          v13[2] = sub_2993205E8;
          v13[3] = &unk_29EF12EC8;
          v13[4] = a1;
          *&v13[5] = a4;
          *&v13[6] = a5;
          v14 = a2;
          v15 = a3;
          v16 = &v20;
          v17 = a1;
          v18 = 0;
          v19 = a2;
          sub_2992CB16C(v12, v13);
        }
      }
    }
  }
}

uint64_t sub_2993205E8(uint64_t result, float a2, uint64_t a3, _BYTE *a4)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(result + 40) <= a2)
  {
    v4 = *(result + 32);
    v5 = *(result + 48);
    v7 = *(result + 56);
    v8 = *(result + 72);
    operator new();
  }

  *a4 = 1;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993206FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_29924AA10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299320710(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = result;
      result = sub_2992C1E9C();
      if (result)
      {
        if (*v2)
        {
          v4 = *(v3 + 48);

          return sub_2992CAB70(v4);
        }
      }
    }
  }

  return result;
}

void *sub_299320774(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_29919600C();
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t sub_299320894(uint64_t a1, const void *a2, CFTypeRef cf, double a4)
{
  *a1 = a4;
  v6 = (a1 + 8);
  if (cf)
  {
    v7 = CFRetain(cf);
  }

  else
  {
    v7 = 0;
  }

  *v6 = v7;
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 16) = v8;
  return a1;
}

uint64_t sub_299320914(uint64_t a1)
{
  sub_299320950((a1 + 16), 0);
  sub_299219AB4((a1 + 8), 0);
  return a1;
}

void sub_299320950(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_299320988(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 24)
  {
    sub_299320950((i - 8), 0);
    sub_299219AB4((i - 16), 0);
  }

  *(a1 + 8) = a2;
}

void sub_2993209EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v5 = (a3 - 2) >> 1;
    v6 = (a1 + 24 * v5);
    v7 = (a2 - 24);
    if (sub_299320B1C(v6, a2 - 24))
    {
      sub_299320894(&v13, *(a2 - 8), *(a2 - 16), *(a2 - 24));
      do
      {
        v8 = v6;
        *v7 = *v6;
        v9 = v6[2];
        v6[2] = 0;
        sub_299320950(v7 + 2, v9);
        v10 = v6[1];
        v6[1] = 0;
        sub_299219AB4(v7 + 1, v10);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (a1 + 24 * v5);
        v7 = v8;
      }

      while (sub_299320B1C(v6, &v13));
      *v8 = v13;
      v11 = cf;
      cf = 0;
      sub_299320950(v8 + 2, v11);
      v12 = v14;
      v14 = 0;
      sub_299219AB4(v8 + 1, v12);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      if (v14)
      {
        CFRelease(v14);
      }
    }
  }
}

void sub_299320B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299320914(va);
  _Unwind_Resume(a1);
}

BOOL sub_299320B1C(uint64_t a1, uint64_t a2)
{
  Length = CFStringGetLength(*(a1 + 8));
  v5 = CFStringGetLength(*(a2 + 8));
  v6 = *a1;
  v7 = *a2;
  if (Length == v5 || vabdd_f64(v6, v7) > 0.3)
  {
    return v6 > v7;
  }

  else
  {
    return Length < v5;
  }
}

__n128 sub_299320C18(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F70F00;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void sub_299320C58(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v8[3] = *(a1 + 24);
  v4 = LXCursorCopyTraversedCharacters();
  v7 = CFStringGetLength(v4) > *(a1 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  LXCursorEnumerateEntries();
  CFRelease(v4);
  _Block_object_dispose(v8, 8);
}

uint64_t sub_299320D68(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F70F70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_299320DB4(uint64_t a1, const void *a2)
{
  MetaFlags = LXEntryGetMetaFlags();
  if ((MetaFlags & 2) == 0)
  {
    if ((MetaFlags & 0x84) != 0)
    {
      v5 = -1.0;
      if (*(a1 + 66))
      {
        return;
      }
    }

    else
    {
      v5 = 0.0;
    }

    LXEntryGetProbability();
    v7 = v5 + v6;
    if (v7 >= *(a1 + 40))
    {
      v8 = *(a1 + 48);
      if (v7 >= -3.8 || v8 >= 3)
      {
        v10 = *(*(*(a1 + 32) + 8) + 24);
        v11 = *v10;
        v12 = v10[1];
        if (0xAAAAAAAAAAAAAAABLL * ((v12 - *v10) >> 3) >= *(a1 + 64))
        {
          v13 = *v11;
          Length = CFStringGetLength(*(v11 + 8));
          if (v8 == Length || vabdd_f64(v7, v13) > 0.3)
          {
            if (v7 <= v13)
            {
              return;
            }
          }

          else if (v8 >= Length)
          {
            return;
          }

          v10 = *(*(*(a1 + 32) + 8) + 24);
          v12 = v10[1];
        }

        v15 = v10[2];
        if (v12 >= v15)
        {
          v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *v10) >> 3);
          if (v17 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_299212A8C();
          }

          v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *v10) >> 3);
          v19 = 2 * v18;
          if (2 * v18 <= v17 + 1)
          {
            v19 = v17 + 1;
          }

          if (v18 >= 0x555555555555555)
          {
            v20 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v20 = v19;
          }

          v33 = v10;
          if (v20)
          {
            if (v20 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_29919600C();
          }

          v29 = 0;
          v30 = 24 * v17;
          v31 = 24 * v17;
          v32 = 0;
          sub_299320894(24 * v17, a2, *(a1 + 56), v7);
          v31 = 24 * v17 + 24;
          v22 = *v10;
          v21 = v10[1];
          v34[0] = v10;
          v34[1] = &v36;
          v34[2] = &v37;
          v35 = 0;
          v23 = v30 + v22 - v21;
          v37 = v23;
          v36 = v23;
          if (v22 == v21)
          {
            v35 = 1;
          }

          else
          {
            v24 = v30 + v22 - v21;
            v25 = v22;
            do
            {
              sub_299320894(v24, *(v25 + 16), *(v25 + 8), *v25);
              v25 += 24;
              v24 = v37 + 24;
              v37 += 24;
            }

            while (v25 != v21);
            v35 = 1;
            do
            {
              sub_299320950((v22 + 16), 0);
              sub_299219AB4((v22 + 8), 0);
              v22 += 24;
            }

            while (v22 != v21);
          }

          sub_299321174(v34);
          v26 = *v10;
          *v10 = v23;
          v16 = v31;
          v29 = v26;
          v30 = v26;
          v10[1] = v31;
          v31 = v26;
          v27 = v10[2];
          v10[2] = v32;
          v32 = v27;
          sub_299321108(&v29);
        }

        else
        {
          sub_299320894(v12, a2, *(a1 + 56), v7);
          v16 = v12 + 24;
          v10[1] = v12 + 24;
        }

        v10[1] = v16;
        sub_2993209EC(*v10, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - *v10) >> 3));
        v28 = *(*(*(a1 + 32) + 8) + 24);
        if (0xAAAAAAAAAAAAAAABLL * ((v28[1] - *v28) >> 3) > *(a1 + 64))
        {
          sub_29931FA60(v28);
        }
      }
    }
  }
}

void sub_2993210D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299321108(va);
  _Unwind_Resume(a1);
}

uint64_t sub_299321108(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_299320950((i - 8), 0);
    sub_299219AB4((i - 16), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_299321174(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    for (i = *v3; v4 != i; v4 -= 24)
    {
      sub_299320950((v4 - 8), 0);
      sub_299219AB4((v4 - 16), 0);
    }
  }

  return a1;
}

uint64_t sub_2993211E4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2993212E0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F70F90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_299321318(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  return LXCursorEnumerateEntries();
}

uint64_t sub_299321398(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F70FF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2993213E4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(a1 + 56);
  if ((*(a1 + 32) & LXEntryGetMetaFlags()) != 0)
  {
    v6 = LXEntryCopyString();
    *v5 = CFStringCompare(v6, *(a1 + 40), 0) == kCFCompareEqualTo;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (*v5)
  {
    if (a3)
    {
      *a3 = 1;
    }

    **(a1 + 48) = 1;
  }
}

void sub_299321494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

__n128 sub_299321528(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F71010;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_299321560(int8x16_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = a1->i8[8];
  v4 = vextq_s8(a1[1], a1[1], 8uLL);
  return LXCursorEnumerateEntries();
}

uint64_t sub_2993215E8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F71070))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_299321634(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  if (CFStringHasPrefix(v5, **(a1 + 32)))
  {
    Length = CFStringGetLength(**(a1 + 32));
    v7 = *(a1 + 56);
    v8 = CFStringGetLength(v5);
    v9.location = Length + (v7 ^ 1);
    v9.length = v8 - v9.location;
    **(a1 + 40) = CFStringCreateWithSubstring(*MEMORY[0x29EDB8ED8], v5, v9);
    *a3 = 1;
    **(a1 + 48) = 1;
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_2993216F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

__n128 sub_299321790(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F71090;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2993217C8(uint64_t a1, uint64_t *a2, uint64_t *a3, double *a4, uint64_t a5)
{
  result = sub_29931FC64(*(*(a1 + 16) + 24), *a2, *a3, a5, *a4);
  ++**(a1 + 24);
  return result;
}

uint64_t sub_299321814(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F710F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_299321860(_BYTE *a1, uint64_t a2)
{
  v4 = sub_29933C17C(a1, a2);
  if (!v4 || (a1[184] & 1) != 0)
  {
    return v4;
  }

  v5 = (*(*a2 + 304))(a2);
  sub_2993219B0(&v13, *v5, v5[1]);
  v6 = (*(*a1 + 304))(a1);
  sub_2993219B0(&v11, *v6, v6[1]);
  v7 = v11;
  v8 = v13;
  if (v12 - v11 == v14 - v13)
  {
    v9 = memcmp(v11, v13, v12 - v11) == 0;
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = 0;
  if (v11)
  {
LABEL_7:
    v12 = v7;
    operator delete(v7);
    v8 = v13;
  }

LABEL_8:
  if (v8)
  {
    v14 = v8;
    operator delete(v8);
  }

  if (!v9)
  {
    return 0;
  }

  return v4;
}

void sub_299321994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993219B0(const void **a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = a2;
    v6 = 0;
    do
    {
      v7 = *(v4 + 24);
      v8 = a1[2];
      if (v6 >= v8)
      {
        v9 = *a1;
        v10 = v6 - *a1;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          sub_299212A8C();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          sub_2992F86B0(a1, v14);
        }

        *(4 * v11) = v7;
        v6 = (4 * v11 + 4);
        memcpy(0, v9, v10);
        v15 = *a1;
        *a1 = 0;
        a1[1] = v6;
        a1[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v6 = v7;
        v6 += 4;
      }

      a1[1] = v6;
      v4 += 40;
    }

    while (v4 != a3);
  }
}

void sub_299321ACC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_299321BCC(uint64_t a1)
{
  sub_299311FFC(a1, &off_2A1F71360);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_299321C14(int a1, void *a2, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v4 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  if (result)
  {
    v6 = result;
    result = sub_299377154(result);
    if (result)
    {
      (*(*v6 + 432))(&v24, v6, 1);
      v7 = (*(*v6 + 56))(v6);
      v9 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x29EDB8E00], v8, 0);
      v11 = v25;
      v12 = v24;
      if (v24 == v25)
      {
        v13 = 0;
        if (!v24)
        {
LABEL_28:
          if (v13)
          {
            objc_msgSend_addEntriesFromDictionary_(a2, v10, v13);
            return 1;
          }

          return 0;
        }

LABEL_27:
        v25 = v12;
        operator delete(v12);
        goto LABEL_28;
      }

      v13 = v9;
      LODWORD(v14) = 0;
      v15 = 0;
      v16 = 0;
      do
      {
        v14 = *v12 + v14;
        CharacterAtIndex = CFStringGetCharacterAtIndex(v7, v14 - 1);
        v18 = &word_29945D8BA;
        v19 = 10;
        while (*v18 != CharacterAtIndex)
        {
          ++v18;
          v19 -= 2;
          if (!v19)
          {
            v18 = &unk_29945D8C4;
            break;
          }
        }

        v20 = v18 == &unk_29945D8C4;
        if (v18 == &unk_29945D8C4)
        {
          v18 = 0;
        }

        v21 = v18 - &word_29945D8BA == -2 || v20;
        v16 |= v21;
        v15 |= v21 ^ 1;
        ++v12;
      }

      while (v12 != v11);
      v22 = v16 ^ 1;
      if ((v15 ^ 1) & 1) != 0 || (v22)
      {
        if ((v15 ^ 1 | v16))
        {
          if ((v15 | v22))
          {
            goto LABEL_26;
          }

          v23 = off_29EF10358;
        }

        else
        {
          v23 = off_29EF10350;
        }
      }

      else
      {
        v23 = off_29EF10360;
      }

      objc_msgSend_setObject_forKeyedSubscript_(v13, v10, MEMORY[0x29EDB8EB0], *v23);
LABEL_26:
      v12 = v24;
      if (!v24)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  return result;
}

void sub_299321E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_299321E94(uint64_t *a1, unsigned int a2)
{
  *a1 = 0;
  a1[1] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = sub_299277498(a2);
  CFDictionarySetValue(Mutable, *MEMORY[0x29EDC5790], v5);
  if (a2 - 1 <= 1)
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x29EDC57A0], *MEMORY[0x29EDB8F00]);
  }

  *a1 = LMLexiconCreate();
  CFRelease(Mutable);
  CFRelease(v5);
  if (*a1)
  {
    a1[1] = LMLexiconGetRootCursor();
  }

  return a1;
}

void *sub_299321F6C(void *a1)
{
  if (*a1)
  {
    LMLexiconRelease();
  }

  return a1;
}

uint64_t sub_299321FA0(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    LMLexiconResetCursors();
    v3 = *a1;
    result = LMLexiconGetRootCursor();
    a1[1] = result;
  }

  return result;
}

uint64_t sub_299321FD8(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = *a1;
  if (result)
  {
    v7 = a1[1];
    result = LMLexiconGetCursorByAdvancingWithCharacters();
    if (result)
    {
      v8 = *a1;
      result = LMLexiconCursorHasEntries();
      if (result)
      {
        if (a4)
        {
          v9 = *a1;
          *a4 = LMLexiconCursorFirstTokenID();
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_299322114(uint64_t a1, const __CFString *a2)
{
  if (a2)
  {
    sub_299276A84(a2);
  }

  return 0;
}

BOOL sub_2993221DC(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, void *a5, unint64_t a6, unint64_t *a7, uint64_t a8, uint8x8_t a9, int a10, uint64_t a11)
{
  if ((a2 & 3u) <= 1)
  {
    if ((a2 & 3) != 0)
    {
      v17 = (*(a1 + 16) + (a2 - 1));
      if (!a4)
      {
        if (a10)
        {
          v41 = v17[1];
          if (v41)
          {
            if (*a5)
            {
              --*a5;
              goto LABEL_4;
            }

            if (a6)
            {
              v59 = *a7;
              v60 = a8 + 24 * *a7;
              *(v60 + 12) = a3 - a11;
              *a7 = v59 + 1;
              *(v60 + 8) = v41;
              if (v59 + 1 >= a6)
              {
                return 1;
              }
            }

            else
            {
              ++*a7;
            }
          }
        }
      }

LABEL_4:
      v18 = *v17;
      if (v18 >= 5)
      {
        v19 = v17 + v18;
        v20 = (v17 + 2);
        v65 = a3 - a11;
        do
        {
          v23 = *v20;
          v21 = v20 + 1;
          v22 = v23;
          v24 = v23 >= a4;
          v25 = v23 > a4;
          if (!a10)
          {
            v24 = v25;
          }

          if (v24)
          {
            v26 = memcmp(v21, a3, a4);
            if (v26 > 0)
            {
              return 0;
            }

            if (!v26)
            {
              if (*a5)
              {
                --*a5;
              }

              else if (a6)
              {
                v27 = *a7;
                v28 = a8 + 24 * *a7;
                *(v28 + 12) = v65 + v22;
                v29 = *&v21[v22];
                *a7 = ++v27;
                *(v28 + 8) = v29;
                if (v27 >= a6)
                {
                  return 1;
                }
              }

              else
              {
                ++*a7;
              }
            }
          }

          v30 = &v21[v22];
          v20 = &v21[v22 + 4];
        }

        while (v30 < v19);
      }

      return 0;
    }

    return 0;
  }

  if ((a2 & 3) == 2)
  {
    v31 = (*(a1 + 8) + (a2 - 2));
    if (a4)
    {
      v32 = *a3;
      v33 = (v31 + 1);
      v34 = v32 >> 5;
      v35 = v31[(v32 >> 5) + 1];
      if (((v35 >> v32) & 1) == 0)
      {
        return 0;
      }

      v36 = v32 & 0x1F;
      v37 = v31 + 10;
      if (v32 >= 0x20)
      {
        v38 = 0;
        do
        {
          v56 = *v33++;
          a9 = vcnt_s8(v56);
          a9.i16[0] = vaddlv_u8(a9);
          v38 += a9.i32[0];
          --v34;
        }

        while (v34);
      }

      else
      {
        v38 = 0;
      }

      a9.i32[0] = v35 & ~(-1 << v36);
      v57 = vcnt_s8(a9);
      v57.i16[0] = vaddlv_u8(v57);
      v40 = sub_2993221DC(a1, v37[v38 + v57.i32[0]], a3 + 1, a4 - 1, a5, a6, a7, a8, 0, a11);
      return v40 != 0;
    }

    if (a10)
    {
      v42 = *v31;
      if (*v31)
      {
        if (*a5)
        {
          --*a5;
        }

        else if (a6)
        {
          v61 = *a7;
          v62 = a8 + 24 * *a7;
          *(v62 + 12) = a3 - a11;
          *a7 = v61 + 1;
          *(v62 + 8) = v42;
          if (v61 + 1 >= a6)
          {
            return 1;
          }
        }

        else
        {
          ++*a7;
        }
      }
    }

    v43 = 0;
    v44 = (v31 + 1);
    v45 = v31 + 10;
    while (1)
    {
      v46 = v44[v43 >> 5];
      if ((v46 >> v43))
      {
        if (v43 >= 0x20)
        {
          v47 = 0;
          v48 = v43 >> 5;
          v49 = v44;
          do
          {
            v50 = *v49++;
            a9 = vcnt_s8(v50);
            a9.i16[0] = vaddlv_u8(a9);
            v47 += a9.i32[0];
            --v48;
          }

          while (v48);
        }

        else
        {
          v47 = 0;
        }

        a9.i32[0] = v46 & ~(-1 << (v43 & 0x1F));
        v51 = vcnt_s8(a9);
        v51.i16[0] = vaddlv_u8(v51);
        v52 = 1;
        if (sub_2993221DC(a1, v45[v47 + v51.i32[0]], a3 + 1, 0, a5, a6, a7, a8, 1, a11))
        {
          break;
        }
      }

      if (++v43 == 256)
      {
        return 0;
      }
    }
  }

  else
  {
    v39 = (*(a1 + 8) + (a2 - 3));
    if (a4)
    {
      v40 = sub_2993221DC(a1, v39[*a3 + 1], a3 + 1, a4 - 1, a5, a6, a7, a8, 0, a11);
      return v40 != 0;
    }

    if (a10)
    {
      v53 = *v39;
      if (*v39)
      {
        if (*a5)
        {
          --*a5;
        }

        else if (a6)
        {
          v63 = *a7;
          v64 = a8 + 24 * *a7;
          *(v64 + 12) = a3 - a11;
          *a7 = v63 + 1;
          *(v64 + 8) = v53;
          if (v63 + 1 >= a6)
          {
            return 1;
          }
        }

        else
        {
          ++*a7;
        }
      }
    }

    v54 = 0;
    v55 = v39 + 1;
    while (1)
    {
      v52 = 1;
      if (sub_2993221DC(a1, v55[v54], a3 + 1, 0, a5, a6, a7, a8, 1, a11))
      {
        break;
      }

      if (++v54 == 256)
      {
        return 0;
      }
    }
  }

  return v52;
}

float sub_29932265C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = malloc_type_malloc(0x48uLL, 0x108004094C1867FuLL);
  if (v8)
  {
    LODWORD(v9) = 0;
    v8[1] = 0u;
    v8[2] = 0u;
    *v8 = 0u;
    *(v8 + 7) = a1;
    *(v8 + 8) = a2;
    *(v8 + 1) = a3;
    *(v8 + 5) = a4;
    *(v8 + 6) = 0;
    if (a3)
    {
      if (a4 >= 0x18)
      {
        *v8 = *(a3 + 4);
        *(v8 + 2) = a3 + *(a3 + 12);
        v9 = *(a3 + 16);
        *&v10 = v9;
        *(&v10 + 1) = HIDWORD(v9);
        *(v8 + 24) = v10;
      }
    }
  }

  return *&v9;
}

void sub_2993226F0(void **a1)
{
  if (a1)
  {
    if (*(a1 + 12))
    {
      free(a1[1]);
    }

    free(a1);
  }
}

uint64_t sub_29932273C(uint64_t a1, unsigned __int8 *__s2, unsigned int a3, uint8x8_t a4)
{
  v6 = a1;
  while (1)
  {
    v7 = *v6;
    v8 = *v6 & 3;
    if ((v7 & 3) == 3)
    {
      v9 = (*(a1 + 8) + v7 - 3);
      if (!a3)
      {
        return *v9;
      }

      v6 = &v9[4 * *__s2 + 4];
      goto LABEL_13;
    }

    if (v8 != 2)
    {
      break;
    }

    v9 = (*(a1 + 8) + v7 - 2);
    if (!a3)
    {
      return *v9;
    }

    v10 = *__s2;
    v11 = (v9 + 4);
    v12 = v10 >> 5;
    v13 = *&v9[4 * (v10 >> 5) + 4];
    if (((v13 >> v10) & 1) == 0)
    {
      return 0;
    }

    if (v10 >= 0x20)
    {
      v14 = 0;
      do
      {
        v15 = *v11++;
        a4 = vcnt_s8(v15);
        a4.i16[0] = vaddlv_u8(a4);
        v14 += a4.i32[0];
        --v12;
      }

      while (v12);
    }

    else
    {
      v14 = 0;
    }

    a4.i32[0] = v13 & ~(-1 << (v10 & 0x1F));
    a4 = vcnt_s8(a4);
    a4.i16[0] = vaddlv_u8(a4);
    v6 = &v9[4 * (v14 + a4.i32[0]) + 40];
LABEL_13:
    --a3;
    ++__s2;
  }

  if (!v8)
  {
    return v8;
  }

  v16 = (*(a1 + 16) + v7 - 1);
  if (!a3)
  {
    v9 = (v16 + 1);
    return *v9;
  }

  v17 = *v16;
  if (v17 >= 5)
  {
    v18 = v16 + v17;
    v19 = (v16 + 2);
    while (1)
    {
      v22 = *v19;
      v20 = v19 + 1;
      v21 = v22;
      v23 = v22 - a3;
      v24 = v22 >= a3 ? a3 : v21;
      v25 = memcmp(v20, __s2, v24);
      v26 = v25 ? v25 : v23;
      if ((v26 & 0x80000000) == 0)
      {
        break;
      }

      v27 = &v20[v21];
      v19 = &v20[v21 + 4];
      if (v27 >= v18)
      {
        return 0;
      }
    }

    if (!v26)
    {
      v9 = &v20[v21];
      return *v9;
    }
  }

  return 0;
}

BOOL sub_2993228BC(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, unint64_t a5, unint64_t *a6, uint64_t a7, __int16 a8, uint8x8_t a9)
{
  v14 = a2 & 3;
  if ((a2 & 3u) > 1)
  {
    if (v14 == 2)
    {
      v19 = (*(a1 + 8) + (a2 - 2));
      v20 = *v19;
      if (*v19)
      {
        if (!a5)
        {
          ++*a6;
          if (!a4)
          {
            return 0;
          }

          goto LABEL_32;
        }

        v21 = *a6;
        v22 = a7 + 24 * *a6;
        *(v22 + 12) = a3 - a8;
        *a6 = v21 + 1;
        *(v22 + 8) = v20;
        if (v21 + 1 >= a5)
        {
          return 1;
        }
      }

      if (!a4)
      {
        return 0;
      }

LABEL_32:
      v39 = *a3;
      v40 = (v19 + 1);
      v41 = v39 >> 5;
      v42 = v19[(v39 >> 5) + 1];
      if (((v42 >> v39) & 1) == 0)
      {
        return 0;
      }

      v43 = v39 & 0x1F;
      v44 = v19 + 10;
      if (v39 >= 0x20)
      {
        v45 = 0;
        do
        {
          v47 = *v40++;
          a9 = vcnt_s8(v47);
          a9.i16[0] = vaddlv_u8(a9);
          v45 += a9.i32[0];
          --v41;
        }

        while (v41);
      }

      else
      {
        v45 = 0;
      }

      a9.i32[0] = v42 & ~(-1 << v43);
      v48 = vcnt_s8(a9);
      v48.i16[0] = vaddlv_u8(v48);
      v49 = v44[v45 + v48.i32[0]];
      return sub_2993228BC() != 0;
    }

    v23 = (*(a1 + 8) + (a2 - 3));
    v24 = *v23;
    if (*v23)
    {
      if (!a5)
      {
        ++*a6;
        if (!a4)
        {
          return 0;
        }

        goto LABEL_36;
      }

      v25 = *a6;
      v26 = a7 + 24 * *a6;
      *(v26 + 12) = a3 - a8;
      *a6 = v25 + 1;
      *(v26 + 8) = v24;
      if (v25 + 1 >= a5)
      {
        return 1;
      }
    }

    if (!a4)
    {
      return 0;
    }

LABEL_36:
    v46 = v23[*a3 + 1];
    return sub_2993228BC() != 0;
  }

  if ((a2 & 3) != 0)
  {
    v15 = (*(a1 + 16) + (a2 - 1));
    v16 = v15[1];
    if (!v16)
    {
      goto LABEL_6;
    }

    if (a5)
    {
      v17 = *a6;
      v18 = a7 + 24 * *a6;
      *(v18 + 12) = a3 - a8;
      *a6 = v17 + 1;
      *(v18 + 8) = v16;
      if (v17 + 1 < a5)
      {
LABEL_6:
        if (!a4)
        {
          return 0;
        }

LABEL_20:
        v27 = *v15;
        if (v27 >= 5)
        {
          v28 = v15 + v27;
          v29 = a3 - a8;
          v30 = (v15 + 2);
          do
          {
            v33 = *v30;
            v31 = v30 + 1;
            v32 = v33;
            if (v33 <= a4)
            {
              v34 = memcmp(v31, a3, v32);
              if (v34 > 0)
              {
                return 0;
              }

              if (!v34)
              {
                if (a5)
                {
                  v35 = *a6;
                  v36 = a7 + 24 * *a6;
                  *(v36 + 12) = v29 + v32;
                  v37 = *&v31[v32];
                  *a6 = ++v35;
                  *(v36 + 8) = v37;
                  if (v35 >= a5)
                  {
                    return 1;
                  }
                }

                else
                {
                  ++*a6;
                }
              }
            }

            v38 = &v31[v32];
            v30 = &v31[v32 + 4];
          }

          while (v38 < v28);
        }

        return 0;
      }

      return 1;
    }

    ++*a6;
    if (a4)
    {
      goto LABEL_20;
    }

    return 0;
  }

  return v14;
}

BOOL sub_299322B7C(void *a1)
{
  v2 = sub_29936C2B8();
  v3 = sub_29936C3FC(v2, 2, off_2A145F738[0], off_2A145F6D8[0], 0);
  if (v3[23] < 0)
  {
    if (*(v3 + 1) > 0x400uLL)
    {
      return 0;
    }

    v3 = *v3;
  }

  v4 = open(v3, 0);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  if (fstat(v4, &v9) != -1)
  {
    v6 = mmap(0, v9.st_size, 1, 1, v5, 0);
    if (v6 != -1 && *v6 == -894645588)
    {
      st_size = v9.st_size;
      *a1 = v6;
      a1[1] = st_size;
    }
  }

  close(v5);
  return *a1 != 0;
}

uint64_t sub_299322C64(uint64_t *a1, _BYTE *a2, unint64_t a3)
{
  LOBYTE(v3) = 0;
  if (a2 && a3 - 6 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v4 = *a1;
    if (!*a1)
    {
      LOBYTE(v3) = 0;
      return v3 & 1;
    }

    v3 = a1[1];
    if (v3)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        if (v5)
        {
          v8 = a2[v5];
          if (v8 == 122)
          {
            v10 = 1;
LABEL_27:
            LOBYTE(v3) = v6 | v10;
            return v3 & 1;
          }

          LOBYTE(v9) = v8 - 97;
          if ((v8 - 97) > 0x19)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v9 = *a2 - 97;
          if (v9 > 0x19)
          {
            goto LABEL_25;
          }

          v7 = (v4 + *(v4 + 4 + 4 * (*a2 - 97)));
        }

        v10 = v9;
        v11 = *v7;
        v12 = (v11 >> 10) & 0x1F;
        v13 = v11 & 0x3FF;
        for (i = v12 >= v9; !i && v13 != 0; i = v12 >= v9)
        {
          v7 += v13;
          v11 = *v7;
          v12 = (v11 >> 10) & 0x1F;
          v13 = v11 & 0x3FF;
        }

        if (v12 != v9)
        {
LABEL_25:
          v10 = 0;
          goto LABEL_27;
        }

        if (a3 - 1 > v5)
        {
          if ((v11 & 0x8000) == 0)
          {
            goto LABEL_25;
          }

          ++v7;
        }

        v6 = ++v5 >= a3;
        if (v5 == a3)
        {
          goto LABEL_27;
        }
      }
    }
  }

  return v3 & 1;
}

void sub_299322D58(CFStringRef theString@<X0>, const __CFURL *a2@<X1>, const __CFString *a3@<X2>, _BYTE *a4@<X8>)
{
  if (!theString)
  {
    v7 = sub_299275654(a2);
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v7;
    Copy = sub_2992763EC(v7, a3);
    CFRelease(v8);
    if (!Copy)
    {
      goto LABEL_7;
    }

LABEL_6:
    sub_299278568(Copy, a4);
    CFRelease(Copy);
    return;
  }

  Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], theString);
  if (Copy)
  {
    goto LABEL_6;
  }

LABEL_7:
  a4[23] = 0;
  *a4 = 0;
}

void sub_299322DF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299322E10(unsigned int a1, int a2)
{
  v4 = a1 >> 18;
  v5 = a1 >> 5;
  v6 = a1 >> 8;
  v7 = sub_299322EB0(a1);
  if ((a1 & 0x80) != 0)
  {
    v8 = 802;
  }

  else
  {
    v8 = 34;
  }

  v9 = (2 * a1) & 0x400 | ((v6 & 1) << 12) | v8;
  if (((a2 | v7) & ((a1 & 0x10) >> 4)) != 0)
  {
    v9 |= 0x80u;
  }

  v10 = (a1 >> 6) & 0x40000 | ((v5 & 1) << 6) | v6 & 0x20000 | ((v4 & 1) << 20) | v9;
  if (v7)
  {
    return v10 | 0x80000;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_299322EB0(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_2A1462280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1462280))
  {
    qword_2A1462278 = sub_299237120();
    __cxa_guard_release(&qword_2A1462280);
  }

  return ((*qword_2A1462278 & 1) == 0) | (a1 >> 26) & 1;
}

uint64_t sub_299322F38(unsigned int a1, int a2)
{
  v4 = a1 >> 18;
  v5 = a1 >> 8;
  v6 = sub_299322EB0(a1);
  if ((a1 & 0x80) != 0)
  {
    v7 = 800;
  }

  else
  {
    v7 = 32;
  }

  v8 = (2 * a1) & 0x400 | ((v5 & 1) << 12) | v7;
  if (((a2 | v6) & ((a1 & 0x10) >> 4)) != 0)
  {
    v8 |= 0x80u;
  }

  v9 = (2 * a1) & 0x44 | (a1 >> 6) & 0x40000 | v5 & 0x20000 | ((v4 & 1) << 20) | v8;
  if (v6)
  {
    return v9 | 0x80000;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_299322FD4(const UniChar *a1, CFIndex a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2A1461038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461038))
  {
    sub_299255778(0);
    qword_2A1461030 = &qword_2A1461DC0;
    __cxa_guard_release(&qword_2A1461038);
  }

  if (a3)
  {
    if ((*(*a3 + 56))(a3))
    {
      if ((*(*a3 + 48))(a3))
      {
        v6 = (*(*a3 + 304))(a3);
        if (*v6 != v6[1])
        {
          v7 = *((*(*a3 + 304))(a3) + 8);
          if (*(v7 - 2) != 1 && !sub_299255E48(qword_2A1461030, *(v7 - 8)))
          {
            v9 = *MEMORY[0x29EDB8ED8];
            Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
            v11 = (*(*a3 + 56))(a3);
            Length = CFStringGetLength(v11);
            v13 = Length;
            if (Length >= *(v7 - 14))
            {
              v14 = *(v7 - 14);
            }

            else
            {
              v14 = Length;
            }

            v15 = (*(*a3 + 56))(a3);
            v20.location = v13 - v14;
            v20.length = v14;
            v16 = CFStringCreateWithSubstring(0, v15, v20);
            CFStringAppendFormat(Mutable, 0, @"%@\tF", v16);
            CFStringAppendCharacters(Mutable, word_2994171A8, 1);
            CFStringAppendFormat(Mutable, 0, @"\n");
            v17 = *(v7 - 10);
            v18 = *(v7 - 8);
            CFRelease(v16);
            v19 = CFStringCreateWithCharacters(v9, a1, a2);
            CFStringAppend(Mutable, v19);
            CFStringGetLength(Mutable);
            CFRelease(v19);
            CFStringAppendFormat(Mutable, 0, @"\nEOS");
            operator new();
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2993232FC(void *a1, BOOL *a2)
{
  v2 = a1[1];
  v3 = a1[2] - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = 0xCCCCCCCCCCCCCCCDLL * (v3 >> 3) - 1;
  v5 = *(a1[10] + 8 * v4);
  v6 = a1[4];
  if (v5 < (a1[5] - v6) >> 1)
  {
    v7 = (v6 + 2 * v5);
    v8 = *(v2 + 40 * v4 + 24);
    if (!v6)
    {
      v8 = 0;
    }

    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0;
  if (a2)
  {
LABEL_9:
    *a2 = v7[v8 - 1] == 32;
  }

LABEL_10:
  result = 0;
  if (v8 && v7)
  {
    v10 = v8 - 1;
    do
    {
      v11 = *v7++;
      v12 = (v11 & 0xFFFFFFDF) - 65;
      v13 = v11 != 32 && v12 >= 0x1A;
      result = !v13;
      v13 = v10-- != 0;
      v14 = v13;
    }

    while (result == 1 && (v14 & 1) != 0);
  }

  return result;
}

uint64_t sub_2993233BC(uint64_t *a1)
{
  if (!a1[1] || **a1 == 32)
  {
    return 0;
  }

  v3 = 0;
  v4 = MEMORY[0x29EDCA600];
  do
  {
    v5 = *(*a1 + 2 * v3);
    if (v5 <= 0x7F)
    {
      if ((*(v4 + 4 * v5 + 60) & 0x40000) == 0)
      {
        return 1;
      }
    }

    else if (!__maskrune(v5, 0x40000uLL))
    {
      return 1;
    }

    ++v3;
    v6 = a1[1];
  }

  while (v3 < v6);
  if (v6)
  {
    v7 = *a1;
    if (*a1)
    {
      do
      {
        v8 = *v7++;
        v9 = (v8 + 240);
        if ((v8 - 48) < 0xA || v9 < 0xA)
        {
          return 1;
        }
      }

      while (--v6);
    }
  }

  sub_299216DAC(a1, 0, 0, 0, v18);
  v11 = v19;
  if ((v19 & 0x80u) == 0)
  {
    v12 = v18;
  }

  else
  {
    v12 = v18[0];
  }

  if ((v19 & 0x80u) != 0)
  {
    v11 = v18[1];
  }

  if (!v11)
  {
    v2 = 0;
    if ((v19 & 0x80000000) == 0)
    {
      return v2;
    }

LABEL_35:
    operator delete(v18[0]);
    return v2;
  }

  v13 = 2 * v11 - 2;
  do
  {
    v14 = *v12;
    v12 = (v12 + 2);
    v15 = (v14 & 0xFFFFFFDF) - 65;
    v2 = v15 < 0x1A;
    v16 = v15 < 0x1A || v13 == 0;
    v13 -= 2;
  }

  while (!v16);
  if (v19 < 0)
  {
    goto LABEL_35;
  }

  return v2;
}

uint64_t sub_299323508(unsigned int a1, uint64_t a2, _BYTE *a3)
{
  v4 = ~a1 & 2;
  if (a1)
  {
    v4 |= 0x2000000u;
  }

  v5 = a1 & 0x1000000;
  if ((a1 & 0x100) != 0)
  {
    v5 = 32;
  }

  v6 = (a1 >> 12) & 4 | v5 | (a1 >> 2) & 0x11 | v4;
  if ((a1 & 8) == 0)
  {
    v7 = (a1 >> 12) & 4 | v5 | (a1 >> 2) & 0x11 | v4;
    goto LABEL_7;
  }

  v7 = v6 | 0x140;
  if ((a1 & 0x20000000) != 0 || (*a3 & 1) == 0)
  {
LABEL_7:
    if ((a1 & 0x20000000) != 0)
    {
      v8 = v7 | 0x4000000;
      v7 = v7 & 0xFBFFFFED | 0x4000002;
      if ((a1 & 1) == 0)
      {
        v7 = v8;
      }

      if ((((*&a1 & 0x400002) == 2) & *a3) != 0)
      {
        v7 |= 0x2000002u;
      }

      if ((*a3 & ((v7 & 0x2000000) >> 25)) != 0)
      {
        v7 |= 0x10000000u;
      }
    }

    goto LABEL_19;
  }

  if ((a1 & 0x100) == 0)
  {
    v7 = v6 | 0x3C0;
  }

LABEL_19:
  v9 = (a1 >> 19) & 8 | a1 & 0x40000000 | (a1 >> 26 << 31) | (a1 >> 7) & 0x100000 | v7;
  if (a2)
  {
    v10 = sub_299225D3C(a2, kMecabraContextOptionSuppressSensitiveWords);
    v11 = *MEMORY[0x29EDB8F00];
    if (v10 == *MEMORY[0x29EDB8F00])
    {
      LODWORD(v9) = v9 | 0x20000000;
    }

    if (sub_299225D3C(a2, kMecabraContextOptionHistorySimulation) == v11)
    {
      LODWORD(v9) = v9 | 0x10000000;
    }

    if (sub_299225D3C(a2, kMecabraContextOptionNoPruning) == v11)
    {
      LODWORD(v9) = v9 | 0x800000;
    }

    if (sub_299225D3C(a2, kMecabraContextOptionPrivateMode) == v11)
    {
      return v9 | 0x40000;
    }

    else
    {
      return v9;
    }
  }

  return v9;
}

uint64_t sub_2993236B4(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = a6;
  if ((*(*a1 + 24))(a1) == a6)
  {
LABEL_2:
    v12 = a5;
    return a3 == v12;
  }

  v14 = a3 - a4;
  v25 = a2;
LABEL_5:
  v15 = a2 + 2 * a5;
LABEL_6:
  result = (*(*a1 + 16))(a1, v6);
  if (!result)
  {
    return result;
  }

  v16 = 0;
  v27 = v6;
  do
  {
    v17 = (*(*a1 + 48))(a1, v6, v16);
    v19 = v18;
    v20 = (*(*a1 + 40))(a1, v6, v16);
    if (!v19)
    {
      v6 += v20;
      if ((*(*a1 + 24))(a1) == v6)
      {
        goto LABEL_2;
      }

      goto LABEL_6;
    }

    v26 = v20;
    if (a3 <= a5)
    {
      v23 = 0;
      v12 = a5;
      goto LABEL_24;
    }

    v21 = 0;
    while (1)
    {
      if (v14 > a5)
      {
        goto LABEL_16;
      }

      v22 = *(v17 + 2 * v21);
      if (v22 <= 0x7F)
      {
        break;
      }

      if (!__maskrune(v22, 0x100uLL))
      {
        goto LABEL_22;
      }

LABEL_16:
      if (*(v15 + 2 * v21) != *(v17 + 2 * v21))
      {
        v12 = a5 + v21;
        goto LABEL_23;
      }

      v23 = v21 + 1;
      v12 = v21 + 1 + a5;
      if (a5 + v21 + 1 < a3)
      {
        ++v21;
        if (v23 < v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    if ((*(MEMORY[0x29EDCA600] + 4 * v22 + 60) & 0x100) != 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    v12 = v21 + a5;
LABEL_23:
    v23 = v21;
LABEL_24:
    v24 = *a1;
    if (v23 == v19)
    {
      v6 = v26 + v27;
      a5 = v12;
      a2 = v25;
      if ((*(v24 + 24))(a1) == v26 + v27)
      {
        return a3 == v12;
      }

      goto LABEL_5;
    }

    ++v16;
    v6 = v27;
  }

  while (v16 < (*(v24 + 16))(a1, v27));
  return 0;
}

void sub_299323964(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X7>, void *a5@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      v5 = a3;
      if (a3)
      {
        v6 = a4;
        if (a4)
        {
          if ((atomic_load_explicit(&qword_2A1461040, memory_order_acquire) & 1) == 0)
          {
            if (__cxa_guard_acquire(&qword_2A1461040))
            {
              sub_299255778(0);
              word_2A1461028 = 1310;
              __cxa_guard_release(&qword_2A1461040);
            }
          }

          v10 = 0u;
          v11 = 0;
          v9 = 0u;
          WORD2(v10) = v6;
          WORD4(v10) = v5;
          v8 = 7;
          WORD6(v10) = word_2A1461028;
          WORD5(v10) = word_2A1461028;
          sub_2992B2EE8(&__p, 1uLL);
          operator new();
        }
      }
    }
  }

  *a5 = 0;
}

const void *sub_299323C14(uint64_t a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (!Length)
  {
    return 0;
  }

  v9.length = Length - 1;
  v9.location = 0;
  v5 = CFStringCreateWithSubstring(0, theString, v9);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_299323CAC(a1, v5);
  CFRelease(v6);
  return v7;
}

void sub_299323C94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299219AB4(va, 0);
  _Unwind_Resume(a1);
}

const void *sub_299323CAC(uint64_t a1, const void *a2)
{
  if (!CFDictionaryContainsKey(*(a1 + 40), a2))
  {
    return 0;
  }

  v4 = *(a1 + 40);

  return CFDictionaryGetValue(v4, a2);
}

CFIndex sub_299323D04(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  Length = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v5);
    if (CFStringGetLength(ValueAtIndex) > Length)
    {
      Length = CFStringGetLength(ValueAtIndex);
      v6 = v5;
    }

    ++v5;
  }

  while (v3 != v5);
  return v6;
}

uint64_t sub_299323D94(uint64_t a1, CFAllocatorRef allocator)
{
  *a1 = &unk_2A1F71950;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
  *(a1 + 24) = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
  *(a1 + 32) = CFArrayCreateMutable(allocator, 0, MEMORY[0x29EDB9000]);
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *(a1 + 48) = 0;
  *(a1 + 40) = Mutable;
  *(a1 + 56) = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0;
  if (allocator)
  {
    sub_299323F1C(v4, allocator);
  }

  return a1;
}

void sub_299323EA8(_Unwind_Exception *a1)
{
  sub_299229F00(v3, 0);
  sub_299274AE8(v2 + 5, 0);
  sub_2992530BC(v2 + 4, 0);
  sub_2992530BC(v2 + 3, 0);
  sub_2992530BC(v2 + 2, 0);
  sub_299325450(v1, 0);
  _Unwind_Resume(a1);
}

void sub_299323F1C(const void **a1, CFTypeRef cf)
{
  if (*a1 != cf)
  {
    CFRetain(cf);

    sub_299325450(a1, cf);
  }
}

uint64_t sub_299323F7C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F71950;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  v5 = *(a2 + 16);
  if (v5)
  {
    MutableCopy = CFArrayCreateMutableCopy(*(a2 + 8), 0, v5);
  }

  else
  {
    MutableCopy = 0;
  }

  *(a1 + 16) = MutableCopy;
  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = CFArrayCreateMutableCopy(*(a2 + 8), 0, v7);
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 24) = v8;
  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = CFArrayCreateMutableCopy(*(a2 + 8), 0, v9);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 32) = v10;
  v11 = *(a2 + 40);
  if (v11)
  {
    v12 = CFDictionaryCreateMutableCopy(*(a2 + 8), 0, v11);
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 40) = v12;
  v13 = *(a2 + 48);
  if (v13)
  {
    Copy = CFArrayCreateCopy(*(a2 + 8), v13);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 48) = Copy;
  v15 = *(a2 + 56);
  if (v15)
  {
    v16 = CFDictionaryCreateMutableCopy(*(a2 + 8), 0, v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 56) = v16;
  *(a1 + 64) = v17;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0;
  v18 = *(a2 + 8);
  if (v18)
  {
    sub_299323F1C(v4, v18);
  }

  v19 = *(a2 + 72);
  if (v19)
  {
    sub_299229BC0((a1 + 72), v19);
  }

  return a1;
}

void sub_2993240D4(_Unwind_Exception *a1)
{
  sub_299229F00(v1 + 6, 0);
  sub_299274AE8(v1 + 5, 0);
  sub_2992530BC(v1 + 4, 0);
  sub_2992530BC(v1 + 3, 0);
  sub_2992530BC(v1 + 2, 0);
  sub_299325450(v2, 0);
  _Unwind_Resume(a1);
}

const __CFString *sub_299324150(void *a1)
{
  result = sub_2992EED3C(a1);
  if (result)
  {
    result = MecabraCandidateGetSurface(a1, v3, v4);
    if (result)
    {
      return (CFStringGetLength(result) > 0);
    }
  }

  return result;
}

BOOL sub_299324190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
  }

  else
  {
    Count = 0;
  }

  result = 0;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v9 = a2 + a3;
    if (a2 + a3 <= Count)
    {
      if (a3 >= 1)
      {
        do
        {
          CFArrayRemoveValueAtIndex(*(a1 + 16), --v9);
        }

        while (v9 > a2);
      }

      v10 = *(a1 + 16);
      if (v10)
      {
        v10 = CFArrayGetCount(v10);
      }

      return v10 < Count;
    }
  }

  return result;
}

const void *sub_299324228(uint64_t a1, CFIndex idx)
{
  if (idx < 0)
  {
    return 0;
  }

  Count = *(a1 + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
    return 0;
  }

  v5 = *(a1 + 16);

  return CFArrayGetValueAtIndex(v5, idx);
}

BOOL sub_29932428C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Count = CFArrayGetCount(*(a1 + 32));
  result = 0;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v8 = a2 + a3;
    if (a2 + a3 <= Count)
    {
      if (a3 >= 1)
      {
        do
        {
          CFArrayRemoveValueAtIndex(*(a1 + 32), --v8);
        }

        while (v8 > a2);
      }

      return CFArrayGetCount(*(a1 + 32)) < Count;
    }
  }

  return result;
}

const void *sub_299324314(uint64_t a1, CFIndex a2)
{
  if (a2 < 0 || CFArrayGetCount(*(a1 + 32)) <= a2)
  {
    return 0;
  }

  v4 = *(a1 + 32);

  return CFArrayGetValueAtIndex(v4, a2);
}

void sub_299324374(uint64_t a1, const void *a2)
{
  sub_299219AB4((a1 + 88), 0);
  if (a2)
  {

    sub_299229BC0((a1 + 88), a2);
  }
}

__CFString *sub_2993243CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  Count = CFArrayGetCount(v2);
  if (!Count)
  {
    return 0;
  }

  v4 = Count;
  Mutable = CFStringCreateMutable(0, 0);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = sub_299324228(a1, i);
      Surface = MecabraCandidateGetSurface(v7, v8, v9);
      CFStringAppend(Mutable, Surface);
    }
  }

  return Mutable;
}

BOOL sub_299324458(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 32));
  v4.location = 0;
  v4.length = Count;
  CFArrayAppendArray(*(a1 + 16), *(a1 + 32), v4);
  CFArrayRemoveAllValues(*(a1 + 32));
  return Count > 0;
}

void sub_2993244A8(uint64_t a1, int a2, CFArrayRef theArray)
{
  if (theArray)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x29EDB8ED8], theArray);
  }

  else
  {
    Copy = 0;
  }

  sub_299229F00((a1 + 48), Copy);
}

void sub_299324500(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 32));
  sub_29932428C(a1, 0, Count);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = CFArrayGetCount(v3);
  }

  else
  {
    v4 = 0;
  }

  sub_299324190(a1, 0, v4);
  sub_299219AB4((a1 + 88), 0);
  CFDictionaryRemoveAllValues(*(a1 + 40));
  sub_299229F00((a1 + 48), 0);

  sub_299219AB4((a1 + 72), 0);
}

void sub_299324594(uint64_t a1, const void *a2)
{
  sub_299219AB4((a1 + 72), 0);
  if (a2)
  {

    sub_299229BC0((a1 + 72), a2);
  }
}

void sub_2993245EC(uint64_t a1)
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = sub_2993652F8(4u);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_38;
  }

  Mutable = CFStringCreateMutable(0, 0);
  v4 = CFStringCreateMutable(0, 0);
  v5 = CFStringCreateMutable(0, 0);
  for (i = 0; ; ++i)
  {
    Count = *(a1 + 16);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      break;
    }

    if (i)
    {
      CFStringAppend(Mutable, @" ");
    }

    v8 = sub_299324228(a1, i);
    if (sub_2992EED3C(v8))
    {
      v9 = sub_299324228(a1, i);
      v12 = sub_299324A0C(v9, v10, v11);
      CFStringAppend(Mutable, v12);
      CFRelease(v12);
    }
  }

  for (j = 0; j < CFArrayGetCount(*(a1 + 32)); ++j)
  {
    if (j)
    {
      CFStringAppend(v5, @" ");
    }

    v14 = sub_299324314(a1, j);
    if (sub_2992EED3C(v14))
    {
      v15 = sub_299324314(a1, j);
      v18 = sub_299324A0C(v15, v16, v17);
      CFStringAppend(v5, v18);
      CFRelease(v18);
    }
  }

  for (k = 0; k < CFArrayGetCount(*(a1 + 24)); ++k)
  {
    if (k)
    {
      CFStringAppend(v4, @" ");
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), k);
    if (sub_2992EED3C(ValueAtIndex))
    {
      v21 = CFArrayGetValueAtIndex(*(a1 + 24), k);
      v24 = sub_299324A0C(v21, v22, v23);
      CFStringAppend(v4, v24);
      CFRelease(v24);
    }
  }

  v25 = sub_2993652F8(4u);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v34 = Mutable;
    v35 = 2112;
    v36 = v5;
    v37 = 2112;
    v38 = v4;
    _os_log_debug_impl(&dword_29918C000, v25, OS_LOG_TYPE_DEBUG, "Candidates: [Left: %@] [Inline: %@] [Right: %@]", buf, 0x20u);
  }

  v26 = sub_2993652F8(4u);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(a1 + 72);
    *buf = 138412290;
    v34 = v30;
    _os_log_debug_impl(&dword_29918C000, v26, OS_LOG_TYPE_DEBUG, "App Context: %@", buf, 0xCu);
  }

  v27 = sub_2993652F8(4u);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v31 = *(a1 + 64);
    *buf = 67109120;
    LODWORD(v34) = v31;
    _os_log_debug_impl(&dword_29918C000, v27, OS_LOG_TYPE_DEBUG, "Text Content Type: %d", buf, 8u);
  }

  v28 = sub_2993652F8(4u);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v32 = *(a1 + 68);
    *buf = 67109120;
    LODWORD(v34) = v32;
    _os_log_debug_impl(&dword_29918C000, v28, OS_LOG_TYPE_DEBUG, "Shuangpin Type: %d", buf, 8u);
    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v5)
  {
LABEL_33:
    CFRelease(v5);
  }

LABEL_34:
  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_38:
  v29 = *MEMORY[0x29EDCA608];
}

void sub_299324984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef sub_299324A0C(void *a1, const char *a2, uint64_t a3)
{
  v4 = *MEMORY[0x29EDB8ED8];
  Surface = MecabraCandidateGetSurface(a1, a2, a3);
  if (a1)
  {
    v8 = objc_msgSend_rawCandidate(a1, v5, v6);
    v9 = (*(*v8 + 72))(v8);
  }

  else
  {
    v9 = 0;
  }

  return CFStringCreateWithFormat(v4, 0, @"%@:(%d)", Surface, v9);
}

void sub_299324AA0(uint64_t a1, const void *a2)
{
  sub_299219AB4((a1 + 80), 0);
  if (a2)
  {

    sub_299229BC0((a1 + 80), a2);
  }
}

void sub_299324AF8(uint64_t a1, const __CFArray *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  *(a1 + 96) = 0;
  sub_29927DB54(a1 + 104);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    v5 = Count;
    if (Count < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v18 = Count;
      do
      {
        v8 = *(CFArrayGetValueAtIndex(a2, v7) + 3);
        if (*v8 - 123 >= 0xFFFFFFE6)
        {
          ++v6;
          if (v7)
          {
            v19 = v6;
            for (i = 0; i != v7; ++i)
            {
              v10 = *(CFArrayGetValueAtIndex(a2, i) + 3);
              v11 = *v10;
              if ((v11 - 123) >= 0xFFFFFFE6)
              {
                v12 = hypotf((v10[1] + (v10[3] * 0.5)) - (v8[1] + (v8[3] * 0.5)), (v10[2] + (v10[4] * 0.5)) - (v8[2] + (v8[4] * 0.5)));
                v21 = v11;
                *buf = &v21;
                v13 = sub_29927DBF4((a1 + 104), &v21);
                v20 = *v8;
                *buf = &v20;
                *(sub_29927DEB8(v13 + 3, &v20) + 3) = v12;
                v21 = *v8;
                *buf = &v21;
                v14 = sub_29927DBF4((a1 + 104), &v21);
                v20 = *v10;
                *buf = &v20;
                *(sub_29927DEB8(v14 + 3, &v20) + 3) = v12;
              }
            }

            v5 = v18;
            v6 = v19;
          }
        }

        ++v7;
      }

      while (v7 != v5);
    }

    v15 = sub_2993652F8(4u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *&buf[4] = v5;
      v23 = 2048;
      v24 = v6;
      _os_log_debug_impl(&dword_29918C000, v15, OS_LOG_TYPE_DEBUG, "Input layout key count: %ld, valid layout key count: %ld", buf, 0x16u);
      if (!v6)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v6)
    {
LABEL_16:
      v16 = CFRetain(a2);
      sub_299229F00((a1 + 144), v16);
      *(a1 + 96) = 1;
    }
  }

LABEL_17:
  v17 = *MEMORY[0x29EDCA608];
}

CFIndex sub_299324D84(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 144);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v5 = result;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 144), i);
        v8 = *(a2 + 24);
        if (!v8)
        {
          sub_2991A2240();
        }

        result = (*(*v8 + 48))(v8, ValueAtIndex[3]);
      }
    }
  }

  return result;
}

double sub_299324E1C(uint64_t a1, int a2, int a3)
{
  v8 = a2;
  v7 = a3;
  v3 = 0.0;
  if (a2 != a3)
  {
    v4 = sub_299223864((a1 + 104), &v8);
    v3 = 150.0;
    if (v4)
    {
      v5 = sub_299223864(v4 + 3, &v7);
      if (v5)
      {
        return *(v5 + 3);
      }
    }
  }

  return v3;
}

unint64_t sub_299324E84(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  v5 = *(a1 + 144);
  if (!v5 || *(a1 + 96) != 1)
  {
    return 0;
  }

  Count = CFArrayGetCount(v5);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  __src = 0;
  v41 = 0;
  v42 = 0;
  if (Count < 1)
  {
    v32 = 0;
    v31 = 0;
  }

  else
  {
    v13 = Count;
    for (i = 0; i != v13; ++i)
    {
      v15 = *(CFArrayGetValueAtIndex(*(a1 + 144), i) + 3);
      v16 = *v15;
      if ((v16 - 97) <= 0x19)
      {
        v10.n128_f64[0] = (v15[1] + (v15[3] * 0.5)) - v11;
        v17 = (v15[2] + (v15[4] * 0.5)) - v12;
        v18 = v17 * v17 + v10.n128_f64[0] * v10.n128_f64[0];
        v19 = v41;
        if (v41 >= v42)
        {
          v21 = __src;
          v22 = v41 - __src;
          v23 = (v41 - __src) >> 4;
          v24 = v23 + 1;
          if ((v23 + 1) >> 60)
          {
            sub_299212A8C();
          }

          v25 = v42 - __src;
          if ((v42 - __src) >> 3 > v24)
          {
            v24 = v25 >> 3;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFF0)
          {
            v26 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            sub_29927C08C(&__src, v26);
          }

          v27 = (v41 - __src) >> 4;
          v28 = 16 * v23;
          *v28 = v16;
          *(v28 + 8) = v18;
          v20 = 16 * v23 + 16;
          v29 = (v28 - 16 * v27);
          memcpy(v29, v21, v22);
          v30 = __src;
          __src = v29;
          v41 = v20;
          v42 = 0;
          if (v30)
          {
            operator delete(v30);
          }
        }

        else
        {
          *v41 = v16;
          *(v19 + 1) = v18;
          v20 = (v19 + 16);
        }

        v41 = v20;
      }
    }

    v31 = __src;
    v32 = v41;
  }

  v33 = 126 - 2 * __clz(v32 - v31);
  v43 = &unk_2A1F71960;
  if (v32 == v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  sub_29927C0D4(v31, v32, &v43, v34, 1, v10);
  v35 = __src;
  if ((v41 - __src) >> 4 < a4)
  {
    a4 = (v41 - __src) >> 4;
  }

  if (a4)
  {
    v36 = __src;
    v37 = a4;
    do
    {
      v38 = *v36;
      v36 += 16;
      *a3++ = v38;
      --v37;
    }

    while (v37);
    goto LABEL_33;
  }

  if (__src)
  {
LABEL_33:
    v41 = v35;
    operator delete(v35);
  }

  return a4;
}

void sub_2993250CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFMutableArrayRef sub_299325108(const __CFString *a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 && *(a2 + 48))
    {
      CFArrayGetCount(*(a2 + 48));
      CFStringGetLength(a1);
      CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
      goto LABEL_8;
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    if (a1)
    {
LABEL_8:
      CFStringGetLength(a1);
      sub_299276B44();
    }
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    if (a1)
    {
      goto LABEL_8;
    }
  }

  return Mutable;
}

void sub_299325320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_2993182B8(&a9, 0);
  if (v9)
  {
    MEMORY[0x29C29BF70](v9, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(a1);
}

BOOL sub_299325370(uint64_t a1)
{
  Count = CFArrayGetCount(*(a1 + 32));
  if (Count < 1)
  {
    return 0;
  }

  else
  {
    v3 = Count;
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = sub_299324314(a1, v4);
      if (v6)
      {
        v9 = objc_msgSend_rawCandidate(v6, v7, v8);
        if ((*(*v9 + 96))(v9) == 89)
        {
          break;
        }
      }

      v5 = ++v4 < v3;
    }

    while (v3 != v4);
  }

  return v5;
}

void sub_299325418(uint64_t a1)
{
  sub_299325488(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299325450(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

uint64_t sub_299325488(uint64_t a1)
{
  *a1 = &unk_2A1F71950;
  v2 = (a1 + 8);
  sub_299229F00((a1 + 144), 0);
  sub_2992925AC(a1 + 104);
  sub_299219AB4((a1 + 88), 0);
  sub_299219AB4((a1 + 80), 0);
  sub_299219AB4((a1 + 72), 0);
  sub_299274AE8((a1 + 56), 0);
  sub_299229F00((a1 + 48), 0);
  sub_299274AE8((a1 + 40), 0);
  sub_2992530BC((a1 + 32), 0);
  sub_2992530BC((a1 + 24), 0);
  sub_2992530BC((a1 + 16), 0);
  sub_299325450(v2, 0);
  return a1;
}

void sub_299325558(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  (*(**(a1 + 24) + 16))(&v14);
  v5 = v14;
  if (v14 != v15)
  {
    if ((**(a1 + 16) & 0x40000) != 0)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }

    else
    {
      (*(**(a1 + 32) + 16))(&v11);
    }

    v7 = *(a2 + 48);
    v6 = *(a2 + 56);
    v8 = (v6 - v7) >> 3;
    if (v6 != v7)
    {
      if (!(v8 >> 60))
      {
        sub_299325D60(v8);
      }

      sub_299212A8C();
    }

    v9.n128_f64[0] = sub_299325DF0(0, 0, 0, 0, 0, v4);
    sub_299326908(0, 0, 0, 0, 0, v9);
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    v5 = v14;
  }

  if (v5)
  {
    v15 = v5;
    operator delete(v5);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_299325CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299325D60(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_29919600C();
}

void sub_299325DA8(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_29919600C();
}

double sub_299325DF0(__n128 *a1, unint64_t *a2, unint64_t a3, __n128 *a4, uint64_t a5, __n128 a6)
{
  if (a3 < 2)
  {
    return a6.n128_f64[0];
  }

  v7 = a1;
  if (a3 == 2)
  {
    a6.n128_u64[0] = *(a2 - 2);
    v8 = a1->n128_f64[0];
    if (a6.n128_f64[0] == a1->n128_f64[0])
    {
      v9 = 0;
    }

    else
    {
      v9 = -127;
    }

    if (a6.n128_f64[0] > a1->n128_f64[0])
    {
      v9 = 1;
    }

    if (a6.n128_f64[0] < a1->n128_f64[0])
    {
      v9 = -1;
    }

    if (v9 || ((v10 = *(a2 - 1), v11 = a1->n128_u64[1], v12 = v10 == v11, v10 < v11) ? (LOBYTE(v9) = -1) : (LOBYTE(v9) = 1), !v12))
    {
      if (v9 == 1)
      {
        a1->n128_u64[0] = a6.n128_u64[0];
        *(a2 - 2) = v8;
        v13 = a1->n128_u64[1];
        a1->n128_u64[1] = *(a2 - 1);
        *(a2 - 1) = v13;
      }
    }

    return a6.n128_f64[0];
  }

  if (a3 <= 0)
  {
    if (a1 == a2)
    {
      return a6.n128_f64[0];
    }

    n128_u64 = a1[1].n128_u64;
    if (&a1[1] == a2)
    {
      return a6.n128_f64[0];
    }

    v22 = 0;
    v23 = a1;
    while (1)
    {
      v24 = v23;
      v23 = n128_u64;
      a6.n128_u64[0] = *n128_u64;
      v25 = v24->n128_f64[0];
      v26 = *n128_u64 < v24->n128_f64[0];
      v27 = *n128_u64 <= v24->n128_f64[0];
      if (*n128_u64 == v24->n128_f64[0])
      {
        v28 = 0;
      }

      else
      {
        v28 = -127;
      }

      if (!v27)
      {
        v28 = 1;
      }

      if (v26)
      {
        v28 = -1;
      }

      if (v28 || ((v29 = v24[1].n128_u64[1], v30 = v24->n128_u64[1], v31 = v29 == v30, v29 < v30) ? (LOBYTE(v28) = -1) : (LOBYTE(v28) = 1), !v31))
      {
        if (v28 == 1)
        {
          v32 = v24[1].n128_u64[1];
          v33 = v22;
          while (1)
          {
            v34 = v33;
            v35 = (a1->n128_f64 + v33);
            v35[2] = v25;
            v35[3] = v35[1];
            if (!v34)
            {
              break;
            }

            v25 = *(v35 - 2);
            if (a6.n128_f64[0] == v25)
            {
              v36 = 0;
            }

            else
            {
              v36 = -127;
            }

            if (a6.n128_f64[0] > v25)
            {
              v36 = 1;
            }

            if (a6.n128_f64[0] < v25)
            {
              v36 = -1;
            }

            if (v36 || ((v37 = *(&a1->n128_u64[-1] + v34), v38 = v32 == v37, v32 < v37) ? (LOBYTE(v36) = -1) : (LOBYTE(v36) = 1), !v38))
            {
              v39 = v36;
              v33 = v34 - 16;
              if (v39 == 1)
              {
                continue;
              }
            }

            v40 = (a1 + v34);
            goto LABEL_57;
          }

          v40 = a1;
LABEL_57:
          v40->n128_u64[0] = a6.n128_u64[0];
          v40->n128_u64[1] = v32;
        }
      }

      n128_u64 = v23[1].n128_u64;
      v22 += 16;
      if (&v23[1] == a2)
      {
        return a6.n128_f64[0];
      }
    }
  }

  v16 = a4;
  v17 = a3 >> 1;
  n128_f64 = a1[a3 >> 1].n128_f64;
  v19 = a3 >> 1;
  if (a3 > a5)
  {
    sub_299325DF0(a1, n128_f64, v19, a4, a5);
    sub_299325DF0(&v7[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), v16, a5);

    a6.n128_f64[0] = sub_2993263F4(v7, &v7[2 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v16, a5, v20);
    return a6.n128_f64[0];
  }

  v41.n128_f64[0] = sub_29932612C(a1, n128_f64, v19, a4, a6);
  v42 = &v16[2 * v17];
  a6.n128_f64[0] = sub_29932612C(&v7[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), v42, v41);
  v43 = v42;
  v44 = &v16[2 * a3];
  while (v43 != v44)
  {
    a6.n128_u64[0] = *v16;
    if (v43->n128_f64[0] == *v16)
    {
      v45 = 0;
    }

    else
    {
      v45 = -127;
    }

    if (v43->n128_f64[0] > *v16)
    {
      v45 = 1;
    }

    if (v43->n128_f64[0] < *v16)
    {
      v46 = -1;
    }

    else
    {
      v46 = v45;
    }

    if (!v46)
    {
      v47 = v43->n128_u64[1];
      v48 = v16[1];
      v49 = v47 == v48;
      LOBYTE(v46) = v47 < v48 ? -1 : 1;
      if (v49)
      {
        goto LABEL_78;
      }
    }

    if (v46 != 1)
    {
      v47 = v16[1];
LABEL_78:
      *v7 = a6.n128_u64[0];
      v7[1] = v47;
      v16 += 2;
      goto LABEL_79;
    }

    *v7 = v43->n128_u64[0];
    v7[1] = v43->n128_u64[1];
    ++v43;
LABEL_79:
    v7 += 2;
    if (v16 == v42)
    {
      if (v43 != v44)
      {
        v50 = 0;
        do
        {
          v51 = &v43[v50 / 0x10];
          v52 = &v7[v50 / 8];
          a6.n128_u64[0] = v43[v50 / 0x10].n128_u64[0];
          *v52 = a6.n128_u64[0];
          v52[1] = v43[v50 / 0x10].n128_u64[1];
          v50 += 16;
        }

        while (&v51[1] != v44);
      }

      return a6.n128_f64[0];
    }
  }

  if (v16 != v42)
  {
    v53 = 0;
    do
    {
      v54 = &v16[v53];
      v55 = &v7[v53];
      a6.n128_u64[0] = v16[v53];
      *v55 = a6.n128_u64[0];
      v55[1] = v16[v53 + 1];
      v53 += 2;
    }

    while (&v54[1] != v42);
  }

  return a6.n128_f64[0];
}

double sub_29932612C(__n128 *a1, double *a2, unint64_t a3, __n128 *a4, __n128 a5)
{
  if (a3)
  {
    v5 = a4;
    v8 = a1;
    if (a3 == 2)
    {
      v9 = (a2 - 2);
      v10 = *(a2 - 2);
      if (v10 == a1->n128_f64[0])
      {
        v11 = 0;
      }

      else
      {
        v11 = -127;
      }

      if (v10 > a1->n128_f64[0])
      {
        v11 = 1;
      }

      if (v10 < a1->n128_f64[0])
      {
        v11 = -1;
      }

      if ((v11 || ((v12 = *(a2 - 1), v13 = a1->n128_u64[1], v14 = v12 == v13, v12 < v13) ? (LOBYTE(v11) = -1) : (LOBYTE(v11) = 1), !v14)) && v11 == 1)
      {
        *a4 = *v9;
        a5 = *a1;
      }

      else
      {
        *a4 = *a1;
        a5 = *v9;
      }

      a4[1] = a5;
    }

    else if (a3 == 1)
    {
      a5 = *a1;
      *a4 = *a1;
    }

    else if (a3 > 8)
    {
      v35 = &a1[a3 >> 1];
      sub_299325DF0(a1, v35, a3 >> 1, a4, a3 >> 1);
      sub_299325DF0(&v8[a3 >> 1], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v36 = &v8[a3 >> 1];
      while (v36 != a2)
      {
        if (v36->n128_f64[0] == v8->n128_f64[0])
        {
          v37 = 0;
        }

        else
        {
          v37 = -127;
        }

        if (v36->n128_f64[0] > v8->n128_f64[0])
        {
          v37 = 1;
        }

        if (v36->n128_f64[0] < v8->n128_f64[0])
        {
          v37 = -1;
        }

        if ((v37 || ((v38 = v36->n128_u64[1], v39 = v8->n128_u64[1], v40 = v38 == v39, v38 < v39) ? (LOBYTE(v37) = -1) : (LOBYTE(v37) = 1), !v40)) && v37 == 1)
        {
          v41 = *v36++;
          a5 = v41;
        }

        else
        {
          v42 = *v8++;
          a5 = v42;
        }

        *v5++ = a5;
        if (v8 == v35)
        {
          while (v36 != a2)
          {
            v44 = *v36++;
            a5.n128_u64[0] = v44.n128_u64[0];
            *v5++ = v44;
          }

          return a5.n128_f64[0];
        }
      }

      while (v8 != v35)
      {
        v43 = *v8++;
        a5.n128_u64[0] = v43.n128_u64[0];
        *v5++ = v43;
      }
    }

    else if (a1 != a2)
    {
      a5 = *a1;
      *a4 = *a1;
      n128_f64 = a1[1].n128_f64;
      if (&a1[1] != a2)
      {
        v16 = 0;
        v17 = a4;
        v18 = a4;
        do
        {
          v19 = *v18;
          v18 += 2;
          v20 = n128_f64;
          v21 = *n128_f64 < v19;
          v22 = *n128_f64 <= v19;
          if (*n128_f64 == v19)
          {
            v23 = 0;
          }

          else
          {
            v23 = -127;
          }

          if (!v22)
          {
            v23 = 1;
          }

          if (v21)
          {
            v23 = -1;
          }

          if ((v23 || ((v24 = v8[1].n128_u64[1], v25 = *(v17 + 1), v26 = v24 == v25, v24 < v25) ? (LOBYTE(v23) = -1) : (LOBYTE(v23) = 1), !v26)) && v23 == 1)
          {
            *v18 = *v17;
            v27 = a4;
            if (v17 != a4)
            {
              v28 = v16;
              while (1)
              {
                v29 = *(a4[-1].n128_f64 + v28);
                if (*v20 == v29)
                {
                  v30 = 0;
                }

                else
                {
                  v30 = -127;
                }

                if (*v20 > v29)
                {
                  v30 = 1;
                }

                if (*v20 < v29)
                {
                  v30 = -1;
                }

                if (!v30)
                {
                  v31 = v8[1].n128_u64[1];
                  v32 = *(&a4->n128_u64[-1] + v28);
                  v33 = v31 == v32;
                  LOBYTE(v30) = v31 < v32 ? -1 : 1;
                  if (v33)
                  {
                    break;
                  }
                }

                if (v30 != 1)
                {
                  v27 = (a4 + v28);
                  goto LABEL_57;
                }

                v17 -= 2;
                v34 = a4 + v28;
                *v34 = v29;
                *(v34 + 1) = *(&a4->n128_u64[-1] + v28);
                v28 -= 16;
                if (!v28)
                {
                  v27 = a4;
                  goto LABEL_57;
                }
              }

              v27 = v17;
            }

LABEL_57:
            a5.n128_f64[0] = *v20;
            v27->n128_f64[0] = *v20;
            v27->n128_u64[1] = v8[1].n128_u64[1];
          }

          else
          {
            a5 = *v20;
            *v18 = *v20;
          }

          n128_f64 = v20 + 2;
          v16 += 16;
          v17 = v18;
          v8 = v20;
        }

        while (v20 + 2 != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

double sub_2993263F4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7, __n128 a8)
{
  if (a5)
  {
    while (a4 > a7 && a5 > a7)
    {
      if (a4)
      {
        v10 = 0;
        a8.n128_u64[0] = *a2;
        v11 = -a4;
        while (1)
        {
          v12 = *&a1[v10 / 8];
          if (a8.n128_f64[0] == v12)
          {
            v13 = 0;
          }

          else
          {
            v13 = -127;
          }

          if (a8.n128_f64[0] > v12)
          {
            v13 = 1;
          }

          if (a8.n128_f64[0] < v12)
          {
            v13 = -1;
          }

          if (v13 || ((v14 = a2[1], v15 = a1[v10 / 8 + 1], v16 = v14 == v15, v14 < v15) ? (LOBYTE(v13) = -1) : (LOBYTE(v13) = 1), !v16))
          {
            if (v13 == 1)
            {
              break;
            }
          }

          v10 += 16;
          if (__CFADD__(v11++, 1))
          {
            return a8.n128_f64[0];
          }
        }

        v18 = -v11;
        if (-v11 >= a5)
        {
          if (v11 == -1)
          {
            v75 = &a1[v10 / 8];
            *v75 = a8.n128_u64[0];
            *a2 = v12;
            v76 = v75[1];
            v75[1] = a2[1];
            a2[1] = v76;
            return a8.n128_f64[0];
          }

          v30 = v18 / 2;
          v21 = &a1[2 * (v18 / 2) + v10 / 8];
          v20 = a2;
          if (a2 != a3)
          {
            v31 = *v21;
            v32 = v21[1];
            v33 = (a3 - a2) >> 4;
            v20 = a2;
            do
            {
              v34 = v33 >> 1;
              v35 = &v20[2 * (v33 >> 1)];
              if (*v35 == v31)
              {
                v36 = 0;
              }

              else
              {
                v36 = -127;
              }

              if (*v35 > v31)
              {
                v36 = 1;
              }

              if (*v35 < v31)
              {
                v36 = -1;
              }

              if (v36 || ((v37 = v35[1], v38 = v37 == v32, v37 < v32) ? (LOBYTE(v36) = -1) : (LOBYTE(v36) = 1), !v38))
              {
                if (v36 == 1)
                {
                  v20 = v35 + 2;
                  v34 = v33 + ~v34;
                }
              }

              v33 = v34;
            }

            while (v34);
          }

          v19 = (v20 - a2) >> 4;
        }

        else
        {
          v19 = a5 / 2;
          v20 = &a2[2 * (a5 / 2)];
          v21 = a2;
          if (a2 - a1 != v10)
          {
            v22 = *v20;
            v23 = v20[1];
            v24 = (a2 - a1 - v10) >> 4;
            v21 = &a1[v10 / 8];
            do
            {
              v25 = v24 >> 1;
              v26 = &v21[2 * (v24 >> 1)];
              if (*v26 == v22)
              {
                v27 = 0;
              }

              else
              {
                v27 = -127;
              }

              if (*v26 < v22)
              {
                v27 = 1;
              }

              if (*v26 > v22)
              {
                v27 = -1;
              }

              if (!v27 && ((v28 = v26[1], v29 = v28 == v23, v28 > v23) ? (LOBYTE(v27) = -1) : (LOBYTE(v27) = 1), v29) || v27 != 1)
              {
                v21 = v26 + 2;
                v25 = v24 + ~v25;
              }

              v24 = v25;
            }

            while (v25);
          }

          v30 = (v21 - a1 - v10) >> 4;
        }

        v39 = v20;
        if (v21 != a2)
        {
          v39 = v21;
          if (a2 != v20)
          {
            v40 = *v21;
            *v21 = a8.n128_u64[0];
            *a2 = v40;
            v41 = v21[1];
            v21[1] = a2[1];
            a2[1] = v41;
            v39 = v21 + 2;
            for (i = a2 + 2; i != v20; i += 2)
            {
              if (v39 == a2)
              {
                a2 = i;
              }

              v43 = *v39;
              *v39 = *i;
              *i = v43;
              v44 = v39[1];
              v39[1] = i[1];
              i[1] = v44;
              v39 += 2;
            }

            if (v39 != a2)
            {
              v45 = v39;
              v46 = a2;
              do
              {
                while (1)
                {
                  v47 = *v45;
                  *v45 = *v46;
                  *v46 = v47;
                  v48 = v45[1];
                  v45[1] = v46[1];
                  v46[1] = v48;
                  v45 += 2;
                  v46 += 2;
                  if (v46 == v20)
                  {
                    break;
                  }

                  if (v45 == a2)
                  {
                    a2 = v46;
                  }
                }

                v46 = a2;
              }

              while (v45 != a2);
            }
          }
        }

        a4 = -(v30 + v11);
        v49 = a5 - v19;
        if (v30 + v19 >= a5 - (v30 + v19) - v11)
        {
          v53 = v20;
          v54 = v30;
          v52 = a6;
          v55 = &a1[v10 / 8];
          v49 = v19;
          sub_2993263F4(v39, v53, a3, a4, a5 - v19, a6, a7);
          a1 = v55;
          v20 = v21;
          a4 = v54;
          a3 = v39;
        }

        else
        {
          v50 = v21;
          v51 = a3;
          v52 = a6;
          sub_2993263F4(&a1[v10 / 8], v50, v39, v30, v19, a6, a7);
          a3 = v51;
          a1 = v39;
        }

        a5 = v49;
        a2 = v20;
        a6 = v52;
        if (v49)
        {
          continue;
        }
      }

      return a8.n128_f64[0];
    }

    if (a4 > a5)
    {
      if (a2 == a3)
      {
        return a8.n128_f64[0];
      }

      v56 = 0;
      do
      {
        a8 = *&a2[v56];
        *&a6[v56] = a8;
        v56 += 2;
      }

      while (&a2[v56] != a3);
      v57 = (a3 - 1);
      v58 = &a6[v56];
      while (1)
      {
        if (a2 == a1)
        {
          while (v58 != a6)
          {
            v65 = *(v58 - 2);
            v58 -= 2;
            a8.n128_u64[0] = v65;
            *(v57 - 1) = v65;
            *v57 = v58[1];
            v57 -= 2;
          }

          return a8.n128_f64[0];
        }

        v59 = *(a2 - 2);
        a8.n128_u64[0] = *(v58 - 2);
        if (a8.n128_f64[0] == v59)
        {
          v60 = 0;
        }

        else
        {
          v60 = -127;
        }

        if (a8.n128_f64[0] > v59)
        {
          v60 = 1;
        }

        if (a8.n128_f64[0] < v59)
        {
          v61 = -1;
        }

        else
        {
          v61 = v60;
        }

        if (!v61)
        {
          v62 = *(v58 - 1);
          v63 = *(a2 - 1);
          v64 = v62 == v63;
          LOBYTE(v61) = v62 < v63 ? -1 : 1;
          if (v64)
          {
            goto LABEL_102;
          }
        }

        if (v61 != 1)
        {
          break;
        }

        *(v57 - 1) = v59;
        v62 = *(a2 - 1);
        a2 -= 2;
LABEL_103:
        *v57 = v62;
        v57 -= 2;
        if (v58 == a6)
        {
          return a8.n128_f64[0];
        }
      }

      v62 = *(v58 - 1);
LABEL_102:
      *(v57 - 1) = a8.n128_f64[0];
      v58 -= 2;
      goto LABEL_103;
    }

    if (a2 == a1)
    {
      return a8.n128_f64[0];
    }

    v66 = a6;
    v67 = a1;
    do
    {
      v68 = *v67;
      v67 += 2;
      *v66 = v68;
      v66 += 2;
    }

    while (v67 != a2);
    v69 = v66 - 2;
    while (1)
    {
      if (a2 == a3)
      {
        v77 = 0;
        do
        {
          v78 = &a1[v77];
          v79 = &a6[v77];
          a8.n128_u64[0] = a6[v77];
          *v78 = a8.n128_u64[0];
          v78[1] = a6[v77 + 1];
          v77 += 2;
        }

        while (v69 != v79);
        return a8.n128_f64[0];
      }

      a8.n128_u64[0] = *a6;
      if (*a2 == *a6)
      {
        v70 = 0;
      }

      else
      {
        v70 = -127;
      }

      if (*a2 > *a6)
      {
        v70 = 1;
      }

      if (*a2 < *a6)
      {
        v71 = -1;
      }

      else
      {
        v71 = v70;
      }

      if (!v71)
      {
        v72 = a2[1];
        v73 = a6[1];
        v74 = v72 == v73;
        LOBYTE(v71) = v72 < v73 ? -1 : 1;
        if (v74)
        {
          goto LABEL_129;
        }
      }

      if (v71 != 1)
      {
        break;
      }

      *a1 = *a2;
      a1[1] = a2[1];
      a2 += 2;
LABEL_130:
      a1 += 2;
      if (v66 == a6)
      {
        return a8.n128_f64[0];
      }
    }

    v72 = a6[1];
LABEL_129:
    *a1 = a8.n128_u64[0];
    a1[1] = v72;
    a6 += 2;
    goto LABEL_130;
  }

  return a8.n128_f64[0];
}

void sub_299326908(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      v8 = a2[-1].n128_i32[0];
      v9 = a1->n128_u32[0];
      v10 = -1;
      if (v8 >= a1->n128_u32[0])
      {
        v10 = 1;
      }

      if (v8 == v9)
      {
        v11 = a2[-1].n128_u64[1];
        v12 = a1->n128_u64[1];
        v13 = v11 >= v12;
        v14 = v11 == v12;
        v10 = -1;
        if (v13)
        {
          v10 = 1;
        }

        if (v14)
        {
          v10 = 0;
        }
      }

      if (v10 < 0)
      {
        a1->n128_u32[0] = v8;
        a2[-1].n128_u32[0] = v9;
        v15 = a1->n128_u64[1];
        a1->n128_u64[1] = a2[-1].n128_u64[1];
        a2[-1].n128_u64[1] = v15;
      }
    }

    else if (a3 <= 0)
    {
      if (a1 != a2)
      {
        v22 = a1 + 1;
        if (&a1[1] != a2)
        {
          v23 = 0;
          v24 = a1;
          do
          {
            v25 = v22;
            v26 = v22->n128_u32[0];
            v27 = v24->n128_u32[0];
            if (v26 >= v24->n128_u32[0])
            {
              v28 = 1;
            }

            else
            {
              v28 = -1;
            }

            if (v26 == v27)
            {
              v29 = v24[1].n128_u64[1];
              v30 = v24->n128_u64[1];
              v31 = v29 == v30;
              v28 = v29 >= v30 ? 1 : -1;
              if (v31)
              {
                v28 = 0;
              }
            }

            if (v28 < 0)
            {
              v32 = v24[1].n128_u64[1];
              v33 = v23;
              while (1)
              {
                v34 = a1 + v33;
                *(v34 + 4) = v27;
                *(v34 + 3) = *(&a1->n128_u64[1] + v33);
                if (!v33)
                {
                  break;
                }

                v27 = *(v34 - 4);
                if (v26 >= v27)
                {
                  v35 = 1;
                }

                else
                {
                  v35 = -1;
                }

                if (v26 == v27)
                {
                  v36 = *(&a1->n128_u64[-1] + v33);
                  v37 = v32 == v36;
                  v35 = v32 >= v36 ? 1 : -1;
                  if (v37)
                  {
                    v35 = 0;
                  }
                }

                v33 -= 16;
                if ((v35 & 0x80) == 0)
                {
                  v38 = &a1[1] + v33;
                  goto LABEL_46;
                }
              }

              v38 = a1;
LABEL_46:
              *v38 = v26;
              *(v38 + 8) = v32;
            }

            v22 = v25 + 1;
            v23 += 16;
            v24 = v25;
          }

          while (&v25[1] != a2);
        }
      }
    }

    else
    {
      v18 = a4;
      v19 = a3 >> 1;
      v20 = &a1[a3 >> 1];
      v21 = a3 >> 1;
      if (a3 <= a5)
      {
        v39.n128_f64[0] = sub_299326BFC(a1, v20, v21, a4, a6);
        v40 = &v18[v19];
        sub_299326BFC(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v40, v39);
        v41 = &v18[a3];
        v42 = v40;
        while (v42 != v41)
        {
          v43 = v42->n128_u32[0];
          if (v42->n128_u32[0] >= v18->n128_u32[0])
          {
            v44 = 1;
          }

          else
          {
            v44 = -1;
          }

          if (v43 == v18->n128_u32[0])
          {
            v45 = v42->n128_u64[1];
            v46 = v18->n128_u64[1];
            v47 = v45 == v46;
            v44 = v45 >= v46 ? 1 : -1;
            if (v47)
            {
              v44 = 0;
            }
          }

          if (v44 < 0)
          {
            v48 = v42;
          }

          else
          {
            v43 = v18->n128_u32[0];
            v48 = v18;
          }

          v49 = v48->n128_u64[1];
          if (v44 < 0)
          {
            ++v42;
          }

          else
          {
            ++v18;
          }

          v7->n128_u32[0] = v43;
          v7->n128_u64[1] = v49;
          ++v7;
          if (v18 == v40)
          {
            if (v42 != v41)
            {
              v50 = 0;
              do
              {
                v51 = &v42[v50];
                v52 = &v7[v50];
                v52->n128_u32[0] = v42[v50].n128_u32[0];
                v52->n128_u64[1] = v42[v50++].n128_u64[1];
              }

              while (&v51[1] != v41);
            }

            return;
          }
        }

        if (v18 != v40)
        {
          v53 = 0;
          do
          {
            v54 = &v18[v53];
            v55 = &v7[v53];
            v55->n128_u32[0] = v18[v53].n128_u32[0];
            v55->n128_u64[1] = v18[v53++].n128_u64[1];
          }

          while (&v54[1] != v40);
        }
      }

      else
      {
        sub_299326908(a1, v20, v21, a4, a5);
        sub_299326908(&v7[a3 >> 1], a2, a3 - (a3 >> 1), v18, a5);

        sub_299326E70(v7, &v7[a3 >> 1], a2, a3 >> 1, a3 - (a3 >> 1), v18, a5);
      }
    }
  }
}

double sub_299326BFC(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4, __n128 a5)
{
  if (a3)
  {
    v5 = a4;
    v8 = a1;
    if (a3 == 2)
    {
      v9 = a2 - 1;
      v10 = a2[-1].n128_i32[0];
      v11 = v10 == a1->n128_u32[0];
      if (v10 >= a1->n128_u32[0])
      {
        v12 = 1;
      }

      else
      {
        v12 = -1;
      }

      if (v11)
      {
        v13 = a2[-1].n128_u64[1];
        v14 = a1->n128_u64[1];
        v15 = v13 >= v14;
        v16 = v13 == v14;
        v12 = -1;
        if (v15)
        {
          v12 = 1;
        }

        if (v16)
        {
          v12 = 0;
        }
      }

      if (v12 < 0)
      {
        *a4 = *v9;
        a5 = *a1;
      }

      else
      {
        *a4 = *a1;
        a5 = *v9;
      }

      a4[1] = a5;
    }

    else if (a3 == 1)
    {
      a5 = *a1;
      *a4 = *a1;
    }

    else if (a3 > 8)
    {
      v36 = &a1[a3 >> 1];
      sub_299326908(a1, v36, a3 >> 1, a4, a3 >> 1);
      sub_299326908(&v8[a3 >> 1], a2, a3 - (a3 >> 1), &v5[a3 >> 1], a3 - (a3 >> 1));
      v37 = &v8[a3 >> 1];
      while (v37 != a2)
      {
        if (v37->n128_u32[0] >= v8->n128_u32[0])
        {
          v38 = 1;
        }

        else
        {
          v38 = -1;
        }

        if (v37->n128_u32[0] == v8->n128_u32[0])
        {
          v39 = v37->n128_u64[1];
          v40 = v8->n128_u64[1];
          v41 = v39 == v40;
          v38 = v39 >= v40 ? 1 : -1;
          if (v41)
          {
            v38 = 0;
          }
        }

        if (v38 < 0)
        {
          v43 = *v37++;
          a5 = v43;
        }

        else
        {
          v42 = *v8++;
          a5 = v42;
        }

        *v5++ = a5;
        if (v8 == v36)
        {
          while (v37 != a2)
          {
            v45 = *v37++;
            a5.n128_u64[0] = v45.n128_u64[0];
            *v5++ = v45;
          }

          return a5.n128_f64[0];
        }
      }

      while (v8 != v36)
      {
        v44 = *v8++;
        a5.n128_u64[0] = v44.n128_u64[0];
        *v5++ = v44;
      }
    }

    else if (a1 != a2)
    {
      a5 = *a1;
      *a4 = *a1;
      v17 = a1 + 1;
      if (&a1[1] != a2)
      {
        v18 = 0;
        v19 = a4;
        v20 = a4;
        do
        {
          v21 = v17;
          v22 = v20->n128_u32[0];
          ++v20;
          v23 = v17->n128_u32[0] == v22;
          if (v17->n128_u32[0] >= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = -1;
          }

          if (v23)
          {
            v25 = v8[1].n128_u64[1];
            v26 = v19->n128_u64[1];
            v27 = v25 == v26;
            v24 = v25 >= v26 ? 1 : -1;
            if (v27)
            {
              v24 = 0;
            }
          }

          if (v24 < 0)
          {
            a5 = *v19;
            *v20 = *v19;
            v28 = a4;
            if (v19 != a4)
            {
              v29 = v18;
              while (1)
              {
                v30 = *(a4[-1].n128_i32 + v29);
                if (v21->n128_u32[0] >= v30)
                {
                  v31 = 1;
                }

                else
                {
                  v31 = -1;
                }

                if (v21->n128_u32[0] == v30)
                {
                  v32 = v8[1].n128_u64[1];
                  v33 = *(&a4->n128_u64[-1] + v29);
                  v34 = v32 == v33;
                  if (v32 >= v33)
                  {
                    v31 = 1;
                  }

                  else
                  {
                    v31 = -1;
                  }

                  if (v34)
                  {
                    v31 = 0;
                  }
                }

                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v35 = a4 + v29;
                *v35 = v30;
                *(v35 + 1) = *(&a4->n128_u64[-1] + v29);
                v29 -= 16;
                if (!v29)
                {
                  v28 = a4;
                  goto LABEL_48;
                }
              }

              v28 = (a4 + v29);
            }

LABEL_48:
            v28->n128_u32[0] = v21->n128_u32[0];
            v28->n128_u64[1] = v8[1].n128_u64[1];
          }

          else
          {
            a5 = *v21;
            *v20 = *v21;
          }

          v17 = v21 + 1;
          v18 += 16;
          v19 = v20;
          v8 = v21;
        }

        while (&v21[1] != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

int *sub_299326E70(int *result, int *a2, char *a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7)
{
  if (a5)
  {
    while (a4 > a7 && a5 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v10 = 0;
      v11 = *a2;
      v12 = -a4;
      while (1)
      {
        v13 = *(v10 + result);
        if (v11 >= v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = -1;
        }

        if (v11 == v13)
        {
          v15 = *(a2 + 1);
          v16 = *(v10 + result + 8);
          v17 = v15 == v16;
          v14 = v15 >= v16 ? 1 : -1;
          if (v17)
          {
            v14 = 0;
          }
        }

        if (v14 < 0)
        {
          break;
        }

        v10 += 4;
        if (__CFADD__(v12++, 1))
        {
          return result;
        }
      }

      v19 = -v12;
      if (-v12 >= a5)
      {
        if (v12 == -1)
        {
          v80 = v10 + result;
          *v80 = v11;
          *a2 = v13;
          v81 = *(v80 + 8);
          *(v80 + 8) = *(a2 + 1);
          *(a2 + 1) = v81;
          return result;
        }

        v32 = v19 / 2;
        v22 = (&result[4 * (v19 / 2)] + v10);
        v21 = a2;
        if (a2 != a3)
        {
          v33 = *v22;
          v34 = *(v22 + 1);
          v35 = (a3 - a2) >> 4;
          v21 = a2;
          do
          {
            v36 = v35 >> 1;
            v37 = &v21[4 * (v35 >> 1)];
            if (*v37 >= v33)
            {
              v38 = 1;
            }

            else
            {
              v38 = -1;
            }

            if (*v37 == v33)
            {
              v39 = *(v37 + 1);
              v40 = v39 == v34;
              v38 = v39 >= v34 ? 1 : -1;
              if (v40)
              {
                v38 = 0;
              }
            }

            v41 = v37 + 4;
            v35 += ~v36;
            if (v38 < 0)
            {
              v21 = v41;
            }

            else
            {
              v35 = v36;
            }
          }

          while (v35);
        }

        v20 = (v21 - a2) >> 4;
      }

      else
      {
        v20 = a5 / 2;
        v21 = &a2[4 * (a5 / 2)];
        v22 = a2;
        if ((a2 - result) != v10)
        {
          v23 = *v21;
          v24 = *(v21 + 1);
          v25 = (a2 - result - v10) >> 4;
          v22 = (v10 + result);
          do
          {
            v26 = v25 >> 1;
            v27 = &v22[4 * (v25 >> 1)];
            if (*v27 <= v23)
            {
              v28 = 1;
            }

            else
            {
              v28 = -1;
            }

            if (*v27 == v23)
            {
              v29 = *(v27 + 1);
              v30 = v29 == v24;
              v28 = v29 <= v24 ? 1 : -1;
              if (v30)
              {
                v28 = 0;
              }
            }

            v31 = v27 + 4;
            v25 += ~v26;
            if (v28 < 0)
            {
              v25 = v26;
            }

            else
            {
              v22 = v31;
            }
          }

          while (v25);
        }

        v32 = (v22 - result - v10) >> 4;
      }

      v42 = v21;
      if (v22 != a2)
      {
        v42 = v22;
        if (a2 != v21)
        {
          v43 = *v22;
          *v22 = v11;
          *a2 = v43;
          v44 = *(v22 + 1);
          *(v22 + 1) = *(a2 + 1);
          *(a2 + 1) = v44;
          v42 = v22 + 4;
          for (i = a2 + 4; i != v21; i += 4)
          {
            if (v42 == a2)
            {
              a2 = i;
            }

            v46 = *v42;
            *v42 = *i;
            *i = v46;
            v47 = *(v42 + 1);
            *(v42 + 1) = *(i + 1);
            *(i + 1) = v47;
            v42 += 4;
          }

          if (v42 != a2)
          {
            v48 = v42;
            v49 = a2;
            do
            {
              while (1)
              {
                v50 = *v48;
                *v48 = *v49;
                *v49 = v50;
                v51 = *(v48 + 1);
                *(v48 + 1) = *(v49 + 1);
                *(v49 + 1) = v51;
                v48 += 4;
                v49 += 4;
                if (v49 == v21)
                {
                  break;
                }

                if (v48 == a2)
                {
                  a2 = v49;
                }
              }

              v49 = a2;
            }

            while (v48 != a2);
          }
        }
      }

      a4 = -v12 - v32;
      v52 = a5 - v20;
      if (v32 + v20 >= a5 - (v32 + v20) - v12)
      {
        v55 = v21;
        v56 = (v10 + result);
        sub_299326E70(v42, v55, a3, a4, a5 - v20, a6, a7);
        result = v56;
        v21 = v22;
        v52 = v20;
        a4 = v32;
        a3 = v42;
      }

      else
      {
        v53 = v22;
        v54 = a3;
        sub_299326E70(v10 + result, v53, v42, v32, v20, a6, a7);
        a3 = v54;
        result = v42;
      }

      a5 = v52;
      a2 = v21;
      if (!v52)
      {
        return result;
      }
    }

    if (a4 <= a5)
    {
      if (a2 != result)
      {
        v69 = a6;
        v70 = result;
        do
        {
          v71 = *v70++;
          *v69 = v71;
          v69 += 4;
        }

        while (v70 != a2);
        v72 = v69 - 4;
        while (a2 != a3)
        {
          v73 = *a2;
          if (*a2 >= *a6)
          {
            v74 = 1;
          }

          else
          {
            v74 = -1;
          }

          if (v73 == *a6)
          {
            v75 = *(a2 + 1);
            v76 = *(a6 + 1);
            v77 = v75 == v76;
            v74 = v75 >= v76 ? 1 : -1;
            if (v77)
            {
              v74 = 0;
            }
          }

          if (v74 < 0)
          {
            v78 = a2;
          }

          else
          {
            v73 = *a6;
            v78 = a6;
          }

          if (v74 < 0)
          {
            a2 += 4;
          }

          v79 = *(v78 + 1);
          if ((v74 & 0x80) == 0)
          {
            a6 += 4;
          }

          *result = v73;
          *(result + 1) = v79;
          result += 4;
          if (v69 == a6)
          {
            return result;
          }
        }

        v82 = 0;
        do
        {
          v83 = &result[v82];
          v84 = &a6[v82];
          *v83 = a6[v82];
          *(v83 + 1) = *&a6[v82 + 2];
          v82 += 4;
        }

        while (v72 != v84);
      }
    }

    else if (a2 != a3)
    {
      v57 = 0;
      do
      {
        *&a6[v57] = *&a2[v57];
        v57 += 4;
      }

      while (&a2[v57] != a3);
      v58 = (a3 - 8);
      v59 = &a6[v57];
      while (a2 != result)
      {
        v60 = *(a2 - 4);
        v61 = *(v59 - 4);
        if (v61 >= v60)
        {
          v62 = 1;
        }

        else
        {
          v62 = -1;
        }

        if (v61 == v60)
        {
          v63 = *(v59 - 1);
          v64 = *(a2 - 1);
          v65 = v63 == v64;
          v62 = v63 >= v64 ? 1 : -1;
          if (v65)
          {
            v62 = 0;
          }
        }

        if (v62 < 0)
        {
          v66 = a2;
        }

        else
        {
          v60 = *(v59 - 4);
          v66 = v59;
        }

        if (v62 < 0)
        {
          a2 -= 4;
        }

        v67 = *(v66 - 1);
        if ((v62 & 0x80) == 0)
        {
          v59 -= 4;
        }

        *(v58 - 2) = v60;
        *v58 = v67;
        v58 -= 4;
        if (v59 == a6)
        {
          return result;
        }
      }

      while (v59 != a6)
      {
        v68 = *(v59 - 4);
        v59 -= 4;
        *(v58 - 2) = v68;
        *v58 = *(v59 + 1);
        v58 -= 4;
      }
    }
  }

  return result;
}

uint64_t sub_29932732C(uint64_t a1, const __CFString *a2)
{
  *a1 = 10000;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  sub_2992157F8(a1 + 32, 0x2710uLL);
  v4 = *MEMORY[0x29EDB8ED8];
  *(a1 + 72) = CFLocaleCreate(*MEMORY[0x29EDB8ED8], a2);
  *(a1 + 80) = CFLocaleCreate(v4, @"en");
  v6.location = 0;
  v6.length = 0;
  *(a1 + 88) = CFStringTokenizerCreate(v4, 0, v6, 4uLL, *(a1 + 72));
  v7.location = 0;
  v7.length = 0;
  *(a1 + 96) = CFStringTokenizerCreate(v4, 0, v7, 1uLL, *(a1 + 72));
  return a1;
}

void sub_299327400(_Unwind_Exception *a1)
{
  sub_299253084((v1 + 72), 0);
  sub_2992751B4(v1 + 32);
  sub_2992740A4(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_299327448(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
  }

  sub_299253084((a1 + 80), 0);
  sub_299253084((a1 + 72), 0);
  sub_2992751B4(a1 + 32);
  sub_2992740A4((a1 + 8));
  return a1;
}

void sub_2993274B0(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  if (theString)
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      v10 = 0;
      v11.length = CFStringGetLength(theString);
      v11.location = 0;
      CFStringTokenizerSetString(v4, theString, v11);
      do
      {
        if (!CFStringTokenizerAdvanceToNextToken(*(a1 + 96)))
        {
          break;
        }

        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*(a1 + 96));
        if (CurrentTokenRange.location != -1)
        {
          v8 = CFStringCreateWithSubstring(0, theString, CurrentTokenRange);
          if (v8)
          {
            v9 = v8;
            (*(a3 + 16))(a3, v8, &v10);
            CFRelease(v9);
          }
        }
      }

      while (v10 != 1);
    }
  }
}

void sub_299327584(uint64_t a1@<X0>, const UniChar *a2@<X1>, CFIndex a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*(a1 + 88))
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v8 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x29EDB8ED8], a2, a3, *MEMORY[0x29EDB8EE8]);
    v9 = *(a1 + 88);
    v16.length = CFStringGetLength(v8);
    v16.location = 0;
    CFStringTokenizerSetString(v9, v8, v16);
    v10 = 0;
    while (CFStringTokenizerAdvanceToNextToken(*(a1 + 88)))
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*(a1 + 88));
      if (CurrentTokenRange.location != -1)
      {
        if (a2)
        {
          length = CurrentTokenRange.length;
        }

        else
        {
          length = 0;
        }

        v13 = v10;
        v14 = v10 >> 4;
        if (((v10 >> 4) + 1) >> 60)
        {
          a4[1] = v10;
          a4[2] = 0;
          *a4 = 0;
          sub_299212A8C();
        }

        if (v10 >> 4 != -1)
        {
          if (!(((v10 >> 4) + 1) >> 60))
          {
            operator new();
          }

          a4[1] = v10;
          a4[2] = 0;
          *a4 = 0;
          sub_29919600C();
        }

        v15 = (16 * v14);
        *v15 = &a2[CurrentTokenRange.location];
        v15[1] = length;
        v10 = 16 * v14 + 16;
        memcpy(0, 0, v13);
      }
    }

    a4[1] = v10;
    a4[2] = 0;
    *a4 = 0;
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void sub_299327748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_299219AB4(va, 0);
  if (v5)
  {
    *(v4 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

__CFArray *sub_2993277A4(uint64_t a1, CFStringRef theString)
{
  Mutable = 0;
  if (theString)
  {
    if (*(a1 + 88))
    {
      Length = CFStringGetLength(theString);
      Mutable = CFArrayCreateMutable(0, Length, MEMORY[0x29EDB9000]);
      if (Mutable)
      {
        v6 = *(a1 + 88);
        v11.length = CFStringGetLength(theString);
        v11.location = 0;
        CFStringTokenizerSetString(v6, theString, v11);
        while (CFStringTokenizerAdvanceToNextToken(*(a1 + 88)))
        {
          CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(*(a1 + 88));
          if (CurrentTokenRange.location != -1)
          {
            v8 = CFStringCreateWithSubstring(0, theString, CurrentTokenRange);
            if (v8)
            {
              v9 = v8;
              CFArrayAppendValue(Mutable, v8);
              CFRelease(v9);
            }
          }
        }
      }
    }
  }

  return Mutable;
}

uint64_t sub_299327878(uint64_t a1, const __CFString *a2)
{
  if (a2 && *(a1 + 88))
  {
    sub_299276A84(a2);
  }

  return 0;
}

void sub_299327AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    MEMORY[0x29C29BF70](v23, 0x1000C80BDFB0063);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (v22)
  {
    MEMORY[0x29C29BF70](v22, 0x1000C80BDFB0063);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299327B48(uint64_t a1, unsigned __int16 *a2)
{
  v3 = sub_2992742B4((a1 + 32), a2);
  if (*(a1 + 8) != *(v3 + 5))
  {
    operator new();
  }

  return *(v3 + 5) + 40;
}

void sub_299327C4C(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 88))
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {

    sub_299217DF0(a4, byte_29945C656);
  }

  else
  {
    sub_29925851C(__dst, a2, a3);
    if (sub_299327FD8((a1 + 32), __dst))
    {
      v9 = sub_299327B48(a1, __dst);
      if (*(v9 + 23) < 0)
      {
        sub_29922C89C(a4, *v9, *(v9 + 8));
      }

      else
      {
        v10 = *v9;
        *(a4 + 16) = *(v9 + 16);
        *a4 = v10;
      }
    }

    else
    {
      v28 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x29EDB8ED8], a2, a3, *MEMORY[0x29EDB8EE8]);
      v11 = *(a1 + 88);
      v33.length = CFStringGetLength(v28);
      v33.location = 0;
      CFStringTokenizerSetString(v11, v28, v33);
      sub_29927A740(&__p, 3 * a3);
      for (i = 0; ; i = v17)
      {
        if (!CFStringTokenizerAdvanceToNextToken(*(a1 + 88)))
        {
          sub_29925851C(a4, __p, i);
          sub_29927490C(a1, __dst, a4);
        }

        v13 = CFStringTokenizerCopyCurrentTokenAttribute(*(a1 + 88), 0x400000uLL);
        v14 = v13;
        cf = v13;
        if (!v13)
        {
          break;
        }

        Length = CFStringGetLength(v13);
        v16 = Length;
        v17 = Length + i;
        v18 = __p;
        v19 = v26;
        v20 = v26 - __p;
        if (Length + i > (v26 - __p) >> 1)
        {
          v21 = v17 - (v20 >> 1);
          if (v21 > (v27 - v26) >> 1)
          {
            if ((v17 & 0x8000000000000000) == 0)
            {
              if (v27 - __p <= v17)
              {
                v22 = Length + i;
              }

              else
              {
                v22 = v27 - __p;
              }

              if ((v27 - __p) >= 0x7FFFFFFFFFFFFFFELL)
              {
                v23 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v23 = v22;
              }

              sub_299212A48(&__p, v23);
            }

            sub_299212A8C();
          }

          bzero(v26, ((2 * v17 - v20 - 2) & 0xFFFFFFFFFFFFFFFELL) + 2);
          v26 = &v19[2 * v21];
        }

        v32.location = 0;
        v32.length = v16;
        CFStringGetCharacters(v14, v32, &v18[i]);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      sub_299217DF0(a4, byte_29945C656);
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }

      if (v28)
      {
        CFRelease(v28);
      }
    }

    if (v30 < 0)
    {
      operator delete(__dst[0]);
    }
  }
}

void sub_299327F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *__p, uint64_t a13, uint64_t a14, const void *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_299219AB4(&a11, 0);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  sub_299219AB4(&a15, 0);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

unsigned __int16 *sub_299327FD8(void *a1, unsigned __int16 *a2)
{
  v4 = sub_29923AF34(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v6 == v12)
    {
      if (sub_29923AF78(a1, i + 8, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_2993280D4(int a1, std::string *__str)
{
  sub_299278730(__str, &v3);
  v2 = sub_299333210(&v3);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  fprintf(*MEMORY[0x29EDCA610], "dictionary ID = %d\n", v2);
  operator new();
}

void sub_2993283C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  sub_2992AB338(va1);
  (*(*v11 + 8))(v11);
  _Unwind_Resume(a1);
}

void sub_299328434(void *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2993283A0);
}

void sub_299328464(uint64_t a1, unsigned int **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 48) + 56);
    v8 = (v5 + 8);
    v7 = *(v5 + 8);
    if (v3 >= (*(v5 + 16) - v7) >> 2)
    {
      sub_29920D17C(v8, v3 + 1);
      v7 = *v8;
    }

    if (!*(v7 + 4 * v3))
    {
      v9 = sub_299333454(*(a1 + 64), 0xAAAAAAAAAAAAAAABLL * ((v2 - v6) >> 2));
      v10 = *(v5 + 8);
      if (v3 >= (*(v5 + 16) - v10) >> 2)
      {
        sub_29920D17C(v8, v3 + 1);
        v10 = *v8;
      }

      *(v10 + 4 * v3) = v9;
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

void sub_299328548(void *a1)
{
  __cxa_begin_catch(a1);
  v5 = MEMORY[0x29EDCA610];
  v6 = *(v2 + 56);
  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  fprintf(*MEMORY[0x29EDCA610], "Error has occured when process word in %s ... \n", v6);
  fprintf(*v5, "Word ID = %d, token offset = %zu\n", v4, v3);
  *v1 = 1;

  __cxa_end_catch();
}

uint64_t ReverseDictionaryBuild(int a1, const char **a2)
{
  v83 = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  if (strcmp(v4, "build"))
  {
    if (strcmp(v4, "verify"))
    {
      fwrite("Incorrect commandline arguments!\n", 0x21uLL, 1uLL, *MEMORY[0x29EDCA610]);
      sub_299329100(*a2);
      exit(1);
    }

    v5 = 0;
    __s = 0;
    v6 = 0;
    v7 = MEMORY[0x29EDCA658];
    *MEMORY[0x29EDCA658] = 1;
    v8 = MEMORY[0x29EDCA650];
    do
    {
      while (1)
      {
        while (1)
        {
          LODWORD(v75) = 0;
          v9 = getopt_long(a1, a2, "s:i:d:", &off_2A145F4F8, &v75);
          if (v9 <= 104)
          {
            break;
          }

          if (v9 == 105)
          {
            v6 = *v8;
          }

          else if (v9 == 115)
          {
            v5 = *v8;
          }
        }

        if (v9 != 100)
        {
          break;
        }

        __s = *v8;
      }
    }

    while (v9 != -1);
    if (v5)
    {
      if (v6)
      {
        if (__s)
        {
          v10 = *v7;
          if (v10 - a1 == -2)
          {
            if (!strcmp(v5, "zh-Hans") || !strcmp(v5, "zh-Hant") || !strcmp(v5, "yue-Hant"))
            {
              v63 = a2[v10 + 1];
              v40 = objc_alloc(MEMORY[0x29EDBA0F8]);
              v42 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x29EDBA0F8], v41, v6, 4);
              v44 = objc_msgSend_initWithContentsOfFile_encoding_error_(v40, v43, v42, 4, 0);
              v46 = objc_msgSend_componentsSeparatedByString_(v44, v45, @"\n");
              v61 = v44;
              memset(v66, 0, sizeof(v66));
              v67 = 1065353216;
              *__p = 0u;
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v47, __p, &v75, 16);
              if (v50)
              {
                v51 = *v71;
                do
                {
                  for (i = 0; i != v50; ++i)
                  {
                    if (*v71 != v51)
                    {
                      objc_enumerationMutation(v46);
                    }

                    v53 = *(__p[1] + i);
                    if (objc_msgSend_length(v53, v48, v49))
                    {
                      v54 = objc_msgSend_rangeOfString_(v53, v48, @" ");
                      v56 = objc_msgSend_substringToIndex_(v53, v55, v54);
                      v58 = objc_msgSend_substringFromIndex_(v53, v57, v54 + 1);
                      objc_msgSend_getCString_maxLength_encoding_(v58, v59, v80, 100, 4);
                      v60 = atoi(v80);
                      sub_299278568(v56, v68);
                      v74 = v68;
                      *(sub_2992B705C(v66, v68) + 10) = v60;
                      if (v69 < 0)
                      {
                        operator delete(v68[0]);
                      }
                    }
                  }

                  v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(v46, v48, __p, &v75, 16);
                }

                while (v50);
              }

              sub_2991C6CA8(v80, v63);
              sub_2991C6CA8(__p, __s);
              v68[0] = 0;
              operator new();
            }

            fwrite("Locale can must be zh-Hans or zh-Hant or yue-Hant.\n", 0x33uLL, 1uLL, *MEMORY[0x29EDCA610]);
            goto LABEL_38;
          }

          v17 = *MEMORY[0x29EDCA610];
          v18 = "Incorrect number of arguments.\n";
          v19 = 31;
        }

        else
        {
          v17 = *MEMORY[0x29EDCA610];
          v18 = "Directory of source dictionaries is required.\n";
          v19 = 46;
        }
      }

      else
      {
        v17 = *MEMORY[0x29EDCA610];
        v18 = "Word-ID map is required.\n";
        v19 = 25;
      }
    }

    else
    {
      v17 = *MEMORY[0x29EDCA610];
      v18 = "Locale is required.\n";
      v19 = 20;
    }

LABEL_37:
    fwrite(v18, v19, 1uLL, v17);
    sub_299329100(*a2);
    goto LABEL_38;
  }

  v11 = 0;
  v12 = MEMORY[0x29EDCA658];
  *MEMORY[0x29EDCA658] = 1;
  v13 = MEMORY[0x29EDCA650];
  do
  {
    while (1)
    {
      LODWORD(v75) = 0;
      v14 = getopt_long(a1, a2, "l:", &off_2A145F4B8, &v75);
      if (v14 != 108)
      {
        break;
      }

      v11 = *v13;
    }
  }

  while (v14 != -1);
  v15 = *v12;
  v16 = ~v15 + a1;
  if (v16 <= 1)
  {
    v17 = *MEMORY[0x29EDCA610];
    v18 = "Too few arguments.\n";
    v19 = 19;
    goto LABEL_37;
  }

  if (!v11)
  {
    v17 = *MEMORY[0x29EDCA610];
    v18 = "Language is not specified.\n";
    v19 = 27;
    goto LABEL_37;
  }

  v20 = v16;
  v21 = &a2[v15];
  v22 = v21[v16];
  if (!strcmp("zh-Hans", v11))
  {
    __sa = v22;
    v25 = 1;
  }

  else if (!strcmp("zh-Hant", v11))
  {
    __sa = v22;
    v25 = 2;
  }

  else
  {
    if (strcmp("yue-Hant", v11))
    {
      v17 = *MEMORY[0x29EDCA610];
      v18 = "Language must be zh-Hans or zh-Hant. or yue-Hant.";
      v19 = 55;
      goto LABEL_37;
    }

    __sa = v22;
    v25 = 5;
  }

  v62 = v25;
  *v80 = 0;
  v81 = 0;
  v82 = 0;
  v26 = v20 - 1;
  if (v20 != 1)
  {
    v27 = (v21 + 1);
    do
    {
      sub_2991C6CA8(__p, *v27);
      v28 = v81;
      if (v81 >= v82)
      {
        v30 = 0xAAAAAAAAAAAAAAABLL * (&v81[-*v80] >> 3);
        v31 = v30 + 1;
        if (v30 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_299212A8C();
        }

        if (0x5555555555555556 * ((v82 - *v80) >> 3) > v31)
        {
          v31 = 0x5555555555555556 * ((v82 - *v80) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v82 - *v80) >> 3) >= 0x555555555555555)
        {
          v32 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v32 = v31;
        }

        v79 = v80;
        if (v32)
        {
          sub_299212AA4(v80, v32);
        }

        v33 = 8 * (&v81[-*v80] >> 3);
        v34 = *__p;
        *(v33 + 16) = v71;
        *v33 = v34;
        __p[1] = 0;
        *&v71 = 0;
        __p[0] = 0;
        v35 = 24 * v30 + 24;
        v36 = 24 * v30 - &v81[-*v80];
        memcpy((v33 - &v81[-*v80]), *v80, &v81[-*v80]);
        v37 = *v80;
        v38 = v82;
        *v80 = v36;
        v81 = v35;
        v82 = 0;
        v77 = v37;
        v78 = v38;
        v75 = v37;
        v76 = v37;
        sub_299212AFC(&v75);
        v81 = v35;
        if (SBYTE7(v71) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v29 = *__p;
        *(v81 + 2) = v71;
        *v28 = v29;
        v81 = v28 + 24;
      }

      ++v27;
      --v26;
    }

    while (v26);
  }

  sub_2991C6CA8(__p, __sa);
  LODWORD(v75) = v62;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  if (v81 != *v80)
  {
    sub_2993280D4(&v75, *v80);
  }

  v39 = sub_299333560(__p, &v76);
  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (SBYTE7(v71) < 0)
  {
    operator delete(__p[0]);
  }

  if (!v39)
  {
    fprintf(*MEMORY[0x29EDCA610], "Failed to build reverse dictionary %s.\n", __sa);
  }

  v75 = v80;
  sub_299212B90(&v75);
LABEL_38:
  v23 = *MEMORY[0x29EDCA608];
  return 0;
}

size_t sub_299329100(const char *a1)
{
  v2 = MEMORY[0x29EDCA610];
  fwrite("Usage:\n", 7uLL, 1uLL, *MEMORY[0x29EDCA610]);
  fprintf(*v2, "%s <command> [args] [DictionaryFileName+] ReverseDictionaryFileName\n", a1);
  fwrite("\tbuild:\n", 8uLL, 1uLL, *v2);
  fwrite("\tDictionaryFileName argument is required for build command.", 0x3BuLL, 1uLL, *v2);
  fwrite("\t\t-l|--language: zh-Hans or zh-Hant or yue-Hant.\n", 0x37uLL, 1uLL, *v2);
  fwrite("\tverify:\n", 9uLL, 1uLL, *v2);
  fwrite("\t\t-s|--locale: Locale.\n", 0x17uLL, 1uLL, *v2);
  fwrite("\t\t-i|--id: Word to word ID mapping file.\n", 0x29uLL, 1uLL, *v2);
  v3 = *v2;

  return fwrite("\t\t-d|--directory: Directory containing source dictionaries.\n", 0x3CuLL, 1uLL, v3);
}

uint64_t sub_299329210(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2993331BC(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

const void *sub_299329264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == -1 || v1 >= CFArrayGetCount(*(a1 + 8)))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(a1 + 16) = v4 + 1;

  return CFArrayGetValueAtIndex(v3, v4);
}

unint64_t sub_2993292CC(uint64_t a1, uint64_t *a2)
{
  for (result = CFArrayGetCount(*(a1 + 8)); a2 < result; result = CFArrayGetCount(*(a1 + 8)))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), a2);
    v8[0] = objc_msgSend_rawCandidate(ValueAtIndex, v6, v7);
    v8[2] = v8;
    sub_29932B4B0((a1 + 24), v8)[3] = a2;
    a2 = (a2 + 1);
  }

  return result;
}

void sub_299329364(uint64_t a1, CFComparisonResult (__cdecl *a2)(const void *, const void *, void *), int a3)
{
  v6 = *(a1 + 8);
  v8.length = CFArrayGetCount(v6);
  v8.location = 0;
  CFArraySortValues(v6, v8, a2, 0);
  if (a3)
  {

    sub_2993292CC(a1, 0);
  }
}

CFIndex sub_2993293E4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  do
  {
    result = CFArrayGetCount(*(a1 + 8));
    if (v4 >= result)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), v4);
    v7 = 0;
    result = (*(a2 + 16))(a2, ValueAtIndex, &v7);
    ++v4;
  }

  while (v7 != 1);
  return result;
}

void *sub_299329464(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    CFArrayRemoveAllValues(v2);
  }

  result = sub_299273BA0(a1 + 3);
  a1[2] = -1;
  return result;
}

CFIndex sub_2993294A0(uint64_t a1)
{
  sub_299273BA0((a1 + 24));
  result = CFArrayGetCount(*(a1 + 8));
  if (result)
  {
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t sub_2993294E4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  if (a2)
  {
    v8 = objc_msgSend_rawCandidate(a2, a2, a3);
    if ((*(*v8 + 72))(v8) == 6)
    {
LABEL_20:
      CFArrayAppendValue(*(a1 + 8), a2);
      return 1;
    }

    v11 = objc_msgSend_rawCandidate(a2, v9, v10);
    if ((*(*v11 + 72))(v11) == 5)
    {
      v12 = objc_msgSend_rawCandidate(a2, a2, a3);
      if ((*(*v12 + 96))(v12) == 89)
      {
        v28 = objc_msgSend_rawCandidate(a2, a2, a3);
        v13 = sub_29927363C((a1 + 24), &v28);
        if (!v13 || v13[3] == -1)
        {
          Count = CFArrayGetCount(*(a1 + 8));
          v27 = objc_msgSend_rawCandidate(a2, v15, v16);
LABEL_19:
          v28 = &v27;
          sub_29932B4B0((a1 + 24), &v27)[3] = Count;
          goto LABEL_20;
        }

        return 0;
      }
    }
  }

  v17 = sub_2992896C0(a2, a2, a3);
  result = (*(*v17 + 30))(v17);
  if (!result)
  {
    return result;
  }

  if ((*(*a1 + 24))(a1, v17))
  {
    return 0;
  }

  v28 = objc_msgSend_rawCandidate(a2, v19, v20);
  v21 = sub_29927363C((a1 + 24), &v28);
  if (!v21 || (v22 = v21[3], v22 == -1))
  {
    Count = CFArrayGetCount(*(a1 + 8));
    v27 = v17;
    goto LABEL_19;
  }

  if (v5 == 2)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), v22);
  v26 = sub_2992896C0(ValueAtIndex, v24, v25);
  if (!v5 || (result = (*(*a1 + 72))(a1, v26, v17), result))
  {
    v28 = v17;
    sub_2992AE1BC((a1 + 24), &v28);
    v27 = v17;
    v28 = &v27;
    sub_29932B4B0((a1 + 24), &v27)[3] = v22;
    CFArraySetValueAtIndex(*(a1 + 8), v22, a2);
    if (a4)
    {
      result = 0;
      *a4 = 1;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t sub_299329798(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 1;
  Count = CFArrayGetCount(*(a1 + 8));
  if (Count >= v4)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = Count;
  }

  if (v6 < 1)
  {
    return -1;
  }

  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), v7);
    if (MecabraCandidateIsMLTapTypingCandidate(ValueAtIndex, v9, v10))
    {
      break;
    }

    if (v6 == ++v7)
    {
      return -1;
    }
  }

  return v7;
}

CFIndex sub_29932980C(uint64_t a1)
{
  result = CFArrayGetCount(*(a1 + 8));
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), 0);
    v6 = *(*sub_2992896C0(ValueAtIndex, v4, v5) + 63);

    return v6();
  }

  return result;
}

CFIndex sub_29932989C(uint64_t a1, CFIndex a2, uint64_t a3)
{
  result = CFArrayGetCount(*(a1 + 8));
  if (a2 < result)
  {
    if (a2 + a3 >= result)
    {
      v7 = result;
    }

    else
    {
      v7 = a2 + a3;
    }

    if (a3 >= 1)
    {
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), a2);
        v11 = *sub_2992896C0(ValueAtIndex, v9, v10);
        result = (*(v11 + 63))();
        ++a2;
      }

      while (a2 < v7);
    }
  }

  return result;
}

uint64_t sub_299329948(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  result = objc_msgSend_rawCandidate(a2, a2, a3);
  if (!result)
  {
    return result;
  }

  if (CFArrayGetCount(*(a1 + 8)) <= a3)
  {
    return 0;
  }

  v14 = objc_msgSend_rawCandidate(a2, v7, v8);
  v9 = sub_29927363C((a1 + 24), &v14);
  if (!v9 || (v10 = v9[3], v10 == -1))
  {
    CFArrayInsertValueAtIndex(*(a1 + 8), a3, a2);
    goto LABEL_11;
  }

  if (v10 <= a3)
  {
    return 0;
  }

  CFArrayInsertValueAtIndex(*(a1 + 8), a3, a2);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), v10 + 1);
  v14 = objc_msgSend_rawCandidate(ValueAtIndex, v12, v13);
  sub_2992AE1BC((a1 + 24), &v14);
  CFArrayRemoveValueAtIndex(*(a1 + 8), v10 + 1);
LABEL_11:
  sub_2993292CC(a1, 0);
  return 1;
}

uint64_t sub_299329A44(uint64_t a1, CFArrayRef theArray, void *a3)
{
  if (CFArrayGetCount(theArray) != a3[2])
  {
    return 0;
  }

  if (CFArrayGetCount(theArray) >= 1)
  {
    v6 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      v24 = objc_msgSend_rawCandidate(ValueAtIndex, v8, v9);
      v10 = sub_29927363C((a1 + 24), &v24);
      if (v10)
      {
        if (v10[3] != -1)
        {
          return 0;
        }
      }
    }

    while (++v6 < CFArrayGetCount(theArray));
  }

  v13 = *a3;
  v11 = a3 + 1;
  v12 = v13;
  if (v13 != v11)
  {
    v14 = 0;
    do
    {
      v15 = v12[4];
      v16 = CFArrayGetValueAtIndex(theArray, v14);
      CFArrayInsertValueAtIndex(*(a1 + 8), v15, v16);
      v23 = objc_msgSend_rawCandidate(v16, v17, v18);
      v24 = &v23;
      sub_29932B4B0((a1 + 24), &v23)[3] = v15;
      v19 = v12[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v12[2];
          v21 = *v20 == v12;
          v12 = v20;
        }

        while (!v21);
      }

      ++v14;
      v12 = v20;
    }

    while (v20 != v11);
  }

  sub_2993292CC(a1, 0);
  return 1;
}

uint64_t sub_299329BC0(CFArrayRef *a1, void *a2, unint64_t a3)
{
  if (CFArrayGetCount(a1[1]) <= a3)
  {
    v7 = *(*a1 + 2);

    return v7(a1, a2);
  }

  else
  {

    return sub_299329948(a1, a2, a3);
  }
}

void *sub_299329C64(uint64_t a1)
{
  result = sub_299329464(a1);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

CFIndex sub_299329C90(uint64_t a1)
{
  result = sub_2993294A0(a1);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  return result;
}

void *sub_299329CBC(uint64_t a1)
{
  while (1)
  {
    v2 = *(a1 + 16);
    if (v2 == -1 || v2 >= CFArrayGetCount(*(a1 + 8)))
    {
      break;
    }

    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    *(a1 + 16) = v4 + 1;
    ValueAtIndex = CFArrayGetValueAtIndex(v3, v4);
    if (MecabraCandidateIsAutocorrectionCandidate(ValueAtIndex, v6, v7))
    {
      v8 = *(a1 + 72) + 1;
      *(a1 + 72) = v8;
      if ((*(a1 + 80) & (v8 > 5)) != 0)
      {
        ValueAtIndex = 0;
      }
    }

    else if ((*(a1 + 80) & 1) == 0)
    {
      *(a1 + 80) = 1;
    }

    if (ValueAtIndex)
    {
      return ValueAtIndex;
    }
  }

  return 0;
}

BOOL sub_299329D60(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v6 = (*(*a3 + 104))(a3);
  v7 = 1;
  if ((v6 & 0x10) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if ((v6 & 4) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = (*(*a2 + 104))(a2);
  if ((v10 & 0x10) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if ((v10 & 4) != 0)
  {
    v11 = 0;
  }

  if (v9 >= v11)
  {
    if (v9 > v11 || (v12 = (*(*a3 + 112))(a3), v13 = (*(*a2 + 112))(a2), v12 > v13))
    {
LABEL_15:
      v7 = 0;
      goto LABEL_16;
    }

    v16 = *a3;
    if (v12 == v13)
    {
      v17 = (*(v16 + 56))(a3);
      v18 = (*(*a2 + 56))(a2);
      if (!v17)
      {
        v23 = sub_2993652F8(3u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          v24 = (*(*a3 + 24))(a3);
          v27 = 138412290;
          v28 = v24;
          _os_log_fault_impl(&dword_29918C000, v23, OS_LOG_TYPE_FAULT, "Failed to create analysis string for [%@].", &v27, 0xCu);
        }

        goto LABEL_15;
      }

      if (v18)
      {
        v19 = (*(*a3 + 56))(a3);
        Length = CFStringGetLength(v19);
        v21 = (*(*a2 + 56))(a2);
        v7 = Length > CFStringGetLength(v21);
        goto LABEL_16;
      }

      v25 = sub_2993652F8(3u);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        v26 = (*(*a2 + 24))(a2);
        v27 = 138412290;
        v28 = v26;
        _os_log_fault_impl(&dword_29918C000, v25, OS_LOG_TYPE_FAULT, "Failed to create analysis string for [%@].", &v27, 0xCu);
      }
    }

    else if (((*(v16 + 416))(a3) & 0x800) == 0)
    {
      if ((*(*a3 + 256))(a3))
      {
        v22 = *(*(a1 + 64) + 64);
        if ((!v22 || (*(*v22 + 24))(v22)) && ((*(*a2 + 48))(a2) < 2 || (*(*a3 + 48))(a3) != 1))
        {
          goto LABEL_15;
        }
      }
    }

    v7 = 1;
  }

LABEL_16:
  v14 = *MEMORY[0x29EDCA608];
  return v7;
}

void sub_29932A170(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3002000000;
  v15 = sub_29932A38C;
  v16 = sub_29932A39C;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  v5 = 0;
  v6 = &v5;
  v7 = 0x4002000000;
  v8 = sub_29932A3A8;
  v11[0] = 0;
  v11[1] = 0;
  v9 = sub_29932A3E4;
  v10 = v11;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2000000000;
  v4[3] = 0;
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v3[3] = 1;
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = sub_29932A3F0;
  v2[3] = &unk_29EF12FA0;
  v2[7] = &v5;
  v2[8] = a1;
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = &v12;
  sub_2993293E4(a1, v2);
  if (CFArrayGetCount(v13[5]) >= 1)
  {
    sub_299329A44(a1, v13[5], v6 + 5);
  }

  _Block_object_dispose(v3, 8);
  _Block_object_dispose(v4, 8);
  _Block_object_dispose(&v5, 8);
  sub_29921B8CC(&v10, v11[0]);
  _Block_object_dispose(&v12, 8);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_29932A338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  sub_29921B8CC(v34 + 40, a33);
  _Block_object_dispose((v35 - 80), 8);
  sub_2992530BC((v33 + 40), 0);
  _Unwind_Resume(a1);
}

uint64_t sub_29932A38C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

void *sub_29932A3A8(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void sub_29932A3F0(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1[8];
  v5 = sub_2992896C0(a2, a2, a3);
  v6 = *(*(v3[5] + 8) + 24);
  theArray = *(*(v3[6] + 8) + 40);
  v34 = *(v3[4] + 8);
  v32 = *(v3[7] + 8);
  v7 = **(v4 + 64);
  v8 = (*(*v5 + 3))(v5);
  v9 = (*(*v5 + 29))(v5);
  v10 = sub_2992F2800(v7, 0, v8, v9);
  if (v10)
  {
    v11 = v10;
    Count = CFArrayGetCount(v10);
    if (Count <= 0)
    {
      CFRelease(v11);
    }

    else
    {
      v13 = Count;
      v30 = v3;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v31 = (v32 + 48);
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, v16);
        v18 = (*(*v5 + 67))(v5, ValueAtIndex);
        if (!v18)
        {
          break;
        }

        v19 = v18;
        v20 = (*(*v5 + 14))(v5);
        (*(*v19 + 480))(v19, v20);
        v21 = v6 <= 1 && v14 <= 0;
        v22 = !v21;
        (*(*v19 + 504))(v19, v22);
        v23 = sub_29928A270(v19);
        v35 = objc_msgSend_rawCandidate(v23, v24, v25);
        if (sub_29927363C((v4 + 24), &v35))
        {
        }

        else
        {
          v26 = *v31;
          if (!*v31)
          {
LABEL_21:
            operator new();
          }

          v27 = *(v34 + 24);
          while (1)
          {
            while (1)
            {
              v28 = v26;
              v29 = v26[4];
              if (v29 <= v27)
              {
                break;
              }

              v26 = *v28;
              if (!*v28)
              {
                goto LABEL_21;
              }
            }

            if (v29 >= v27)
            {
              break;
            }

            v26 = v28[1];
            if (!v26)
            {
              goto LABEL_21;
            }
          }

          CFArrayAppendValue(theArray, v23);

          ++*(v34 + 24);
          ++v14;
          v15 = 1;
        }

        ++v16;
      }

      while (v16 != v13);
      CFRelease(v11);
      v3 = v30;
      if (v15)
      {
        ++*(*(v30[5] + 8) + 24);
      }
    }
  }

  ++*(*(v3[4] + 8) + 24);
}

const __CFDictionary *sub_29932A734(uint64_t a1, uint64_t a2)
{
  if (((*(*a2 + 104))(a2) & 0x10) != 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 64) + 8);
  v5 = (*(*a2 + 24))(a2);

  return sub_2992BF2E4(v4, v5, 2);
}

BOOL sub_29932A7E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(*a3 + 112))(a3);
  v7 = (*(*a2 + 112))(a2);
  if (v6 != v7)
  {
    return v6 < v7;
  }

  return sub_299329D60(a1, a2, a3);
}

void *sub_29932A89C(void *a1)
{
  *a1 = &unk_2A1F719F0;
  v2 = (a1 + 1);
  sub_29921ED28((a1 + 3));
  sub_2992530BC(v2, 0);
  return a1;
}

void sub_29932A8F4(void *a1)
{
  *a1 = &unk_2A1F719F0;
  v1 = (a1 + 1);
  sub_29921ED28((a1 + 3));
  sub_2992530BC(v1, 0);

  JUMPOUT(0x29C29BFB0);
}

void sub_29932A96C(uint64_t a1, CFComparisonResult (__cdecl *a2)(const void *, const void *, void *), int a3)
{
  sub_299329364(a1, a2, a3);
  if ((*(*(a1 + 64) + 24) & 0x4010) == 0x10 && CFArrayGetCount(*(a1 + 8)))
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x2000000000;
    v38 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2000000000;
    v61 = 0;
    v43 = MEMORY[0x29EDCA5F8];
    v44 = 0x40000000;
    v45 = sub_29932AE0C;
    v46 = &unk_29EF12FC8;
    v48 = &v58;
    v49 = a1;
    v47 = &v35;
    sub_2993293E4(a1, &v43);
    _Block_object_dispose(&v58, 8);
    _Block_object_dispose(&v35, 8);
  }

  if ((*(*(a1 + 64) + 25) & 0x40) != 0)
  {
    v58 = 0;
    v59 = &v58;
    v60 = 0x2000000000;
    LOBYTE(v61) = 1;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2000000000;
    v57 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2000000000;
    v53 = 0;
    v43 = MEMORY[0x29EDCA5F8];
    v44 = 0x40000000;
    v45 = sub_29932B044;
    v46 = &unk_29EF12FF0;
    v47 = &v58;
    v48 = &v54;
    v49 = &v50;
    sub_2993293E4(a1, &v43);
    v7 = v55[3];
    if (v7 && v51[3])
    {
      v8 = objc_msgSend_rawCandidate(v7, v5, v6);
      if (v8)
      {
        v11 = (*(*v8 + 112))(v8);
      }

      else
      {
        v11 = 0;
      }

      v12 = objc_msgSend_rawCandidate(v51[3], v9, v10);
      if (v12)
      {
        LODWORD(v12) = (*(*v12 + 112))(v12);
      }

      v15 = v12 * 0.1;
      if (v15 <= 0xA)
      {
        v16 = 10;
      }

      else
      {
        v16 = v15;
      }

      v17 = objc_msgSend_rawCandidate(v55[3], v13, v14);
      (*(*v17 + 480))(v17, (v11 + v16));
      v18 = v55[3];
      v19 = v51[3];
      v22 = sub_2992896C0(v18, v20, v21);
      v23 = (*(*v22 + 13))(v22);
      if ((v23 & 0x10) != 0)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if ((v23 & 4) != 0)
      {
        v27 = 0;
      }

      else
      {
        v27 = v26;
      }

      v28 = sub_2992896C0(v19, v24, v25);
      v29 = (*(*v28 + 13))(v28);
      if ((v29 & 0x10) != 0)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if ((v29 & 4) != 0)
      {
        v32 = 0;
      }

      if (v27 >= v32 && (v27 > v32 || sub_2992E94C8(v18, v19, 0) == 1))
      {
        v41[0] = 0;
        v41[1] = v41;
        v41[2] = 0x2000000000;
        v42 = 1;
        v35 = MEMORY[0x29EDCA5F8];
        v36 = 0x40000000;
        v37 = sub_29932B0D0;
        v38 = &unk_29EF13018;
        v39 = v41;
        v40 = v16;
        sub_2993293E4(a1, &v35);
        v34 = *(a1 + 8);
        v62.length = CFArrayGetCount(v34);
        v62.location = 0;
        CFArraySortValues(v34, v62, a2, 0);
        _Block_object_dispose(v41, 8);
      }

      else
      {
        v33 = objc_msgSend_rawCandidate(v55[3], v30, v31);
        (*(*v33 + 480))(v33, v11);
      }
    }

    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v58, 8);
  }
}

void sub_29932ADA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Block_object_dispose((v27 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_29932AE0C(void *a1, void *a2, _BYTE *a3)
{
  if (!*(*(a1[4] + 8) + 24))
  {
    v19 = objc_msgSend_rawCandidate(a2, a2, a3);
    if (v19)
    {
      v22 = **v19;
      v23 = __dynamic_cast(v19, &unk_2A1F64300, &unk_2A1F763F8, 0);
      if (MecabraCandidateIsAutocorrectionCandidate(a2, v24, v25))
      {
        if (v23)
        {
          *(*(a1[5] + 8) + 24) = (*(*v23 + 392))(v23);
        }

        goto LABEL_15;
      }
    }

    else if (MecabraCandidateIsAutocorrectionCandidate(a2, v20, v21))
    {
      goto LABEL_15;
    }

LABEL_14:
    *a3 = 1;
    goto LABEL_15;
  }

  v6 = a1[6];
  if (!MecabraCandidateIsAutocorrectionCandidate(a2, a2, a3))
  {
    v9 = objc_msgSend_rawCandidate(a2, v7, v8);
    if (!v9 || (v10 = **v9, (v11 = __dynamic_cast(v9, &unk_2A1F64300, &unk_2A1F763F8, 0)) == 0) || (*(*v11 + 392))(v11) > *(*(a1[5] + 8) + 24) + -1.3)
    {
      sub_2993292CC(v6, 0);
      v26 = objc_msgSend_rawCandidate(a2, v12, v13);
      v14 = sub_29927363C((v6 + 24), &v26);
      if (v14)
      {
        v15 = v14[3];
        if (v15 != -1)
        {
          CFArrayInsertValueAtIndex(*(v6 + 8), 0, a2);
          ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 8), v15 + 1);
          v26 = objc_msgSend_rawCandidate(ValueAtIndex, v17, v18);
          sub_2992AE1BC((v6 + 24), &v26);
          CFArrayRemoveValueAtIndex(*(v6 + 8), v15 + 1);
        }
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  ++*(*(a1[4] + 8) + 24);
}

uint64_t sub_29932B044(void *a1, void *a2, _BYTE *a3)
{
  v6 = *(*(a1[4] + 8) + 24);
  result = MecabraCandidateGetMatchedLengthType(a2, a2, a3);
  if (v6 == 1)
  {
    if (result == 2)
    {
      *(*(a1[5] + 8) + 24) = a2;
      *(*(a1[4] + 8) + 24) = 0;
      return result;
    }
  }

  else
  {
    if (result == 2)
    {
      return result;
    }

    *(*(a1[6] + 8) + 24) = a2;
  }

  *a3 = 1;
  return result;
}

uint64_t sub_29932B0D0(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  if (*(v3 + 24) == 1)
  {
    *(v3 + 24) = 0;
  }

  else
  {
    v5 = result;
    result = MecabraCandidateGetMatchedLengthType(a2, a2, a3);
    if (result == 2)
    {
      v8 = objc_msgSend_rawCandidate(a2, v6, v7);
      v11 = objc_msgSend_rawCandidate(a2, v9, v10);
      if (v11)
      {
        LODWORD(v11) = (*(*v11 + 112))(v11);
      }

      v12 = *(*v8 + 480);
      v13 = (v11 + *(v5 + 40));

      return v12(v8, v13);
    }
  }

  return result;
}

void *sub_29932B240(void *a1)
{
  *a1 = &unk_2A1F719F0;
  v2 = (a1 + 1);
  sub_29921ED28((a1 + 3));
  sub_2992530BC(v2, 0);
  return a1;
}

void sub_29932B298(void *a1)
{
  *a1 = &unk_2A1F719F0;
  v1 = (a1 + 1);
  sub_29921ED28((a1 + 3));
  sub_2992530BC(v1, 0);

  JUMPOUT(0x29C29BFB0);
}

void *sub_29932B310(void *a1)
{
  *a1 = &unk_2A1F719F0;
  v2 = (a1 + 1);
  sub_29921ED28((a1 + 3));
  sub_2992530BC(v2, 0);
  return a1;
}

void sub_29932B368(void *a1)
{
  *a1 = &unk_2A1F719F0;
  v1 = (a1 + 1);
  sub_29921ED28((a1 + 3));
  sub_2992530BC(v1, 0);

  JUMPOUT(0x29C29BFB0);
}

void *sub_29932B3E0(void *a1)
{
  *a1 = &unk_2A1F719F0;
  v2 = (a1 + 1);
  sub_29921ED28((a1 + 3));
  sub_2992530BC(v2, 0);
  return a1;
}

void sub_29932B438(void *a1)
{
  *a1 = &unk_2A1F719F0;
  v1 = (a1 + 1);
  sub_29921ED28((a1 + 3));
  sub_2992530BC(v1, 0);

  JUMPOUT(0x29C29BFB0);
}

uint64_t **sub_29932B4B0(void *a1, void *a2)
{
  v4 = (*(**a2 + 144))();
  v5 = v4;
  v6 = a1[1];
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v6 <= v4)
    {
      v9 = v4 % v6;
    }
  }

  else
  {
    v9 = (v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= v6)
      {
        v12 %= v6;
      }
    }

    else
    {
      v12 &= v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (((*(*v11[2] + 152))(v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_29932B928(uint64_t a1, CFTypeRef cf, int a3)
{
  v6 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1F71C40;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 40) = v5;
  *(a1 + 48) = a3;
  *(a1 + 56) = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  operator new();
}

void sub_29932C040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_2992F3C90(&a10);
  sub_2992F578C(&a10);
  v13 = *(v10 + 64);
  *(v10 + 64) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  sub_2992530BC((v10 + 56), 0);
  a10 = (v10 + 16);
  sub_29921EB1C(&a10);
  sub_29932C5A0(v11, 0);
  _Unwind_Resume(a1);
}

uint64_t *sub_29932C190(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_2992BC0B0(v2 + 8);
    MEMORY[0x29C29BFB0](v2, 0x10A1C400AA0B987);
  }

  return a1;
}

uint64_t *sub_29932C1E0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_29925EB6C(v2 + 8);
    MEMORY[0x29C29BFB0](v2, 0x10A1C400AA0B987);
  }

  return a1;
}

void *sub_29932C230(void *a1)
{
  *a1 = &unk_2A1F71C40;
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, a1, qword_2A145F578, 0);
  v3 = a1[14];
  if (v3)
  {

    a1[14] = 0;
  }

  v4 = a1[13];
  if (v4)
  {

    a1[13] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v8 = (a1 + 9);
  sub_2992F578C(&v8);
  v6 = a1[8];
  a1[8] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_2992530BC(a1 + 7, 0);
  v8 = (a1 + 2);
  sub_29921EB1C(&v8);
  sub_29932C5A0(a1 + 1, 0);
  return a1;
}

BOOL sub_29932C330(void ***a1)
{
  v1 = a1[5];
  if (v1)
  {
    if (!a1[1])
    {
      sub_29921EB70(a1 + 2);
      v3 = a1[5];
      v4 = ((*a1)[28])(a1);
      if (sub_29927717C(v3, v4))
      {
        ((*a1)[22])(a1, a1 + 2);
        v5 = a1[5];
        sub_29932C4FC(a1);
        operator new();
      }
    }
  }

  return v1 != 0;
}

void sub_29932C4FC(uint64_t a1)
{
  v1 = (*(*a1 + 160))(a1);
  if (v1)
  {
    v2 = v1;
    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        sub_2992EED88(ValueAtIndex, v7, v8);
      }
    }

    CFRelease(v2);
  }
}

uint64_t sub_29932C5A0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2992C8794(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_29932C5F0(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_2992878A0(a2, a2, a3);
  if (result)
  {
    if (a2)
    {
      v7 = objc_msgSend_rawCandidate(a2, v5, v6);
      return (*(*v7 + 72))(v7) != 7;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_29932C65C(uint64_t a1)
{
  sub_29932C5A0((a1 + 8), 0);

  sub_29921EB70((a1 + 16));
}

void *sub_29932C69C(void *result)
{
  if (!result[1])
  {
    if (result[5])
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

uint64_t sub_29932C6D4(unsigned __int8 *a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a2 + 32));
  if (Count > 0)
  {
    v5 = a1[96];
  }

  else
  {
    v5 = 0;
  }

  if (v5 == 1)
  {
    v6 = Count;
    v7 = 0;
    v8 = Count - 1;
    do
    {
      v9 = sub_299324314(a2, v7);
      (*(*a1 + 56))(a1, v9, v7++ < v8, 1);
    }

    while (v6 != v7);
  }

  return v5;
}

uint64_t sub_29932C784(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v5 = a3;
  v30 = *MEMORY[0x29EDCA608];
  if (a4)
  {
    v8 = sub_2993652F8(6u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 138413058;
      *&v23[4] = MecabraCandidateGetSurface(a2, a2, a3);
      v24 = 1024;
      v25 = v5;
      v26 = 1024;
      v27 = 1;
      v28 = 1024;
      IsOTAWordlistCandidate = MecabraCandidateIsOTAWordlistCandidate(a2, v21, v22);
      _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[MecabraLearner::acceptCandidate] %@ isPartial:%d performLearning:%d isOTAWordlist:%d", v23, 0x1Eu);
    }
  }

  Surface = MecabraCandidateGetSurface(a2, a2, a3);
  if ((v5 & 1) == 0)
  {
    v10 = Surface;
    if (!CFArrayGetCount(*(a1 + 56)) && (sub_299236410(v10) & a4) == 1)
    {
      v11 = (*(*a1 + 152))(a1);
      v12 = sub_299277300(v11);
      if (CFStringGetLength(v10) >= 1)
      {
        v13 = 0;
        do
        {
          RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(v10, v13);
          Default = CFAllocatorGetDefault();
          v16 = CFStringCreateWithSubstring(Default, v10, RangeOfComposedCharactersAtIndex);
          *v23 = v16;
          if (v16)
          {
            v17 = sub_2992FDA94();
            sub_2992FDCD8(v17, v12, v16);
            CFRelease(v16);
          }

          v13 += RangeOfComposedCharactersAtIndex.length;
        }

        while (v13 < CFStringGetLength(v10));
      }
    }
  }

  sub_29932CA50(a1, a4);
  if (!a2)
  {
    sub_29932CB94(a1);
LABEL_18:
    result = 1;
    goto LABEL_19;
  }

  result = (*(*a1 + 248))(a1, a2);
  if (result)
  {
    v19 = *(a1 + 104);
    if (v19)
    {
    }

    *(a1 + 104) = (*(*a1 + 232))(a1, a2);
    *(a1 + 120) = v5;
    *(a1 + 122) = a4;
    (*(*a1 + 72))(a1);
    goto LABEL_18;
  }

LABEL_19:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}