uint64_t _citrus_UTF8MAC_stdenc_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = malloc_type_calloc(1uLL, 8uLL, 0x80040B8603338uLL);
  if (!v6)
  {
    return *__error();
  }

  v7 = v6;
  result = 0;
  *(a1 + 8) = v7;
  *a4 = xmmword_2960273F0;
  *(a4 + 16) = 1;
  return result;
}

void _citrus_UTF8MAC_stdenc_uninit(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
  }
}

uint64_t _citrus_UTF8MAC_stdenc_mbtocs(uint64_t a1, _DWORD *a2, int *a3, unsigned __int8 **a4, unint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v15 = 0;
  v12 = _citrus_UTF8MAC_mbrtowc_priv(&v15, a4, a5, a6, a7);
  if (!v12)
  {
    if (*a7 != -2)
    {
      v14 = v15;
      *a2 = 0;
      *a3 = v14;
    }

    if (a8 && *a8)
    {
      (*a8)(*a3, *(a8 + 16));
    }
  }

  return v12;
}

uint64_t _citrus_UTF8MAC_stdenc_cstomb(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t *a7)
{
  if (a4 == -1)
  {
    a5 = 0;
  }

  else if (a4)
  {
    return 92;
  }

  return _citrus_UTF8MAC_wcrtomb_priv(a2, a3, a5, a7);
}

uint64_t _citrus_UTF8MAC_stdenc_mbtowc(uint64_t a1, int *a2, unsigned __int8 **a3, unint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v9 = _citrus_UTF8MAC_mbrtowc_priv(a2, a3, a4, a5, a6);
  v10 = v9;
  if (a7)
  {
    if (!v9)
    {
      v11 = *(a7 + 8);
      if (v11)
      {
        v11(*a2, *(a7 + 16));
      }
    }
  }

  return v10;
}

uint64_t _citrus_UTF8MAC_stdenc_get_state_desc(uint64_t a1, void *a2, int a3, int *a4)
{
  if (a3)
  {
    return 102;
  }

  result = 0;
  if (*a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  *a4 = v5;
  return result;
}

uint64_t _citrus_UTF8MAC_stdenc_mbtocsn(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, unsigned __int8 **a6, unint64_t a7, void *a8, void *a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12)
{
  v12 = *a6;
  *a9 = 0;
  v30 = 0;
  if (*a5 >= a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = *a5;
  }

  if (v13)
  {
    v14 = a7;
    v16 = 0;
    v17 = 0;
    v25 = v12;
    v31 = 0;
    while (1)
    {
      a11(a12);
      result = _citrus_UTF8MAC_mbrtowc_priv(&v31, a6, v14, a8, &v30);
      if (result)
      {
        break;
      }

      v19 = v30;
      if (v30 == -2)
      {
        result = 0;
        *a9 = -2;
        break;
      }

      v20 = v31;
      *(a2 + 4 * v17) = 0;
      *(a3 + 4 * v17) = v20;
      if (v19 > v14)
      {
        _citrus_UTF8MAC_stdenc_mbtocsn_cold_2();
      }

      v16 += v19;
      *a9 = v16;
      v21 = *a6;
      if (*a6 < v12)
      {
        _citrus_UTF8MAC_stdenc_mbtocsn_cold_1();
      }

      *(a4 + 2 * v17) = v21 - v25;
      if (a10 && *a10)
      {
        v22 = *(a10 + 16);
        (*a10)();
      }

      result = 0;
      if (++v17 < v13)
      {
        v23 = &v12[v14];
        v12 = v21;
        v14 = v23 - v21;
        if (v23 != v21)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
    LODWORD(v17) = 0;
    result = 0;
  }

  *a5 = v17;
  return result;
}

uint64_t _citrus_UTF8MAC_stdenc_cstombn(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, void *a8, uint64_t a9, void (*a10)(uint64_t), uint64_t a11)
{
  v23 = 0;
  v12 = *a6;
  if (v12 < 1)
  {
    v18 = 0;
    LODWORD(v17) = 0;
    result = 0;
    goto LABEL_15;
  }

  v22 = a8;
  v17 = 0;
  v18 = 0;
  while (1)
  {
    a10(a11);
    v19 = *(a4 + 4 * v17);
    if (v19 != -1)
    {
      break;
    }

    v20 = 0;
LABEL_7:
    result = _citrus_UTF8MAC_wcrtomb_priv(a2, a3, v20, &v23);
    if (!result)
    {
      if (a3 < v23)
      {
        _citrus_UTF8MAC_stdenc_cstombn_cold_1();
      }

      result = 0;
      ++v17;
      v18 += v23;
      a3 -= v23;
      if (a3)
      {
        a2 += v23;
        if (v17 < v12)
        {
          continue;
        }
      }
    }

    goto LABEL_14;
  }

  if (!v19)
  {
    v20 = *(a5 + 4 * v17);
    goto LABEL_7;
  }

  result = 92;
LABEL_14:
  a8 = v22;
LABEL_15:
  *a6 = v17;
  *a8 = v18;
  return result;
}

uint64_t _citrus_UTF8MAC_stdenc_getops(uint64_t a1)
{
  v1 = *algn_2A1A8F188;
  *a1 = _citrus_UTF8MAC_stdenc_ops;
  *(a1 + 16) = v1;
  v2 = xmmword_2A1A8F198;
  v3 = *&off_2A1A8F1A8;
  v4 = xmmword_2A1A8F1B8;
  *(a1 + 80) = off_2A1A8F1C8;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 32) = v2;
  return 0;
}

uint64_t _citrus_UTF8MAC_mbrtowc_priv(int *a1, unsigned __int8 **a2, unint64_t a3, void *a4, void *a5)
{
  v45 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  if (*a2)
  {
    memset(v43, 0, sizeof(v43));
    v44 = 0;
    v6 = 0;
    if (!a3)
    {
      v8 = v43;
      v11 = v5;
      goto LABEL_66;
    }

    v7 = 0;
    v8 = v43;
    v9 = v5;
    while (1)
    {
      if (v7 > 25)
      {
        goto LABEL_75;
      }

      --a3;
      v11 = v9 + 1;
      v10 = *v9;
      if ((v10 & 0x80) != 0)
      {
        v16 = utf_extrabytes[v10 >> 3];
        v17 = a3 >= v16;
        a3 -= v16;
        if (!v17)
        {
          goto LABEL_75;
        }

        if (v16 == 3)
        {
          v28 = *v11;
          if ((v28 & 0xC0) != 0x80)
          {
            goto LABEL_72;
          }

          v29 = v9[2];
          if ((v29 & 0xC0) != 0x80)
          {
            goto LABEL_72;
          }

          v30 = v9[3];
          if ((v30 & 0xC0) != 0x80)
          {
            goto LABEL_72;
          }

          v31 = v30 + (((v28 << 6) + (v10 << 12) + v29) << 6) - 63512704;
          if (v31 >> 20)
          {
            goto LABEL_72;
          }

          *v8 = bswap32((v31 >> 10) | 0xD800) >> 16;
          if (v7 <= 23)
          {
            v11 = v9 + 4;
            *(v43 + v7 + 2) = __rev16(v31 & 0x3FF | 0xDC00);
            v7 += 4;
            goto LABEL_61;
          }

LABEL_75:
          ++*a4;
          goto LABEL_70;
        }

        v18 = utf_extrabytes[v10 >> 3];
        if (v18 == 2)
        {
          v25 = *v11;
          if ((v25 & 0xC0) != 0x80)
          {
            goto LABEL_72;
          }

          v26 = v9[2];
          if ((v26 & 0xC0) != 0x80)
          {
            goto LABEL_72;
          }

          v27 = (v25 << 6) + (v10 << 12) + v26;
          LODWORD(v10) = v27 - 925824;
          if ((v27 - 925824) < 0x800)
          {
            goto LABEL_72;
          }

          v11 = v9 + 3;
          if (v10 >> 11 >= 0x1B && (v10 < 0xE000 || (v27 & 0x3FFFFE) == 0xF207E))
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v18 != 1)
          {
            goto LABEL_72;
          }

          v19 = *v11;
          if ((v19 & 0xC0) != 0x80)
          {
            goto LABEL_72;
          }

          LODWORD(v10) = v19 + (v10 << 6) - 12416;
          if (v10 < 0x80)
          {
            goto LABEL_72;
          }

          v11 = v9 + 2;
        }
      }

      if (!v7)
      {
        v20 = 0;
        goto LABEL_60;
      }

      v12 = v10;
      if (v10 < 0x300u)
      {
        goto LABEL_64;
      }

      v13 = __CFUniCharCombiningBitmap[v10 >> 8];
      if (v13 != 255 && (!__CFUniCharCombiningBitmap[v10 >> 8] || ((__CFUniCharCombiningBitmap[32 * v13 + 224 + (v10 >> 3)] >> (v10 & 7)) & 1) == 0))
      {
        goto LABEL_64;
      }

      v14 = bswap32(*&v42[v7]) >> 16;
      if ((v10 - 4449) > 0x61u)
      {
        if ((v10 - 12443) < 0xD265u)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if ((v10 >> 1) <= 0x8BAu && (v14 - 4352) <= 0x12u)
        {
          v15 = 588 * v14 + 28 * v10 - 18076;
          goto LABEL_59;
        }

        if ((v10 >> 3) >= 0x235u && ((v14 + 21504) >> 2) <= 0xAE8u)
        {
          HIDWORD(v24) = -1227133513 * v14 - 1840706560;
          LODWORD(v24) = HIDWORD(v24);
          if ((v24 >> 2) <= 0x9249249)
          {
            v15 = v10 + v14 - 4519;
            goto LABEL_59;
          }

LABEL_64:
          v8 = v43 + v7;
          goto LABEL_66;
        }
      }

      v21 = &unk_296027940;
      v22 = &__CFUniCharPrecompSourceTable;
      while (1)
      {
        v23 = &v22[2 * ((v21 - v22) >> 4)];
        if (*v23 <= v12)
        {
          break;
        }

        v21 = v23 - 2;
LABEL_30:
        if (v22 > v21)
        {
          goto LABEL_64;
        }
      }

      if (*v23 < v12)
      {
        break;
      }

      v32 = v23[1];
      if (!v32)
      {
        goto LABEL_64;
      }

      v33 = &__CFUniCharBMPPrecompDestinationTable + 4 * v32;
      if (*v33 > v14)
      {
        goto LABEL_64;
      }

      v34 = &v33[4 * HIWORD(v32) - 4];
      if (*v34 < v14)
      {
        goto LABEL_64;
      }

      while (2)
      {
        v35 = &v33[4 * ((v34 - v33) >> 3)];
        v36 = *v35;
        if (v36 > v14)
        {
          v34 = v35 - 2;
          goto LABEL_56;
        }

        if (v36 < v14)
        {
          v33 = (v35 + 2);
LABEL_56:
          if (v33 > v34)
          {
            goto LABEL_64;
          }

          continue;
        }

        break;
      }

      v15 = v35[1];
      if (!v15)
      {
        goto LABEL_64;
      }

LABEL_59:
      v20 = v7 - 2;
      LODWORD(v10) = v15;
LABEL_60:
      v7 = v20 + 2;
      *(v43 + v20) = bswap32(v10) >> 16;
      v6 = v11;
LABEL_61:
      v8 = v43 + v7;
      v9 = v11;
      if (!a3)
      {
LABEL_66:
        if (v6)
        {
          v38 = v6;
        }

        else
        {
          v38 = v11;
        }

        if ((v8 - v43) < 2)
        {
LABEL_70:
          result = 0;
          *a5 = -2;
          goto LABEL_74;
        }

        v39 = v43[0];
        *a1 = BYTE1(v43[0]) | (LOBYTE(v43[0]) << 8);
        if ((v39 & 0xF8) != 0xD8)
        {
          result = 0;
          v40 = v38 - v5;
          *a5 = v40;
          *a2 = &v5[v40];
          *a4 = 0;
          goto LABEL_74;
        }

LABEL_72:
        *a5 = -1;
        result = 92;
        goto LABEL_74;
      }
    }

    v22 = v23 + 2;
    goto LABEL_30;
  }

  result = 0;
  *a4 = 0;
  *a5 = 0;
LABEL_74:
  v41 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t _citrus_UTF8MAC_wcrtomb_priv(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v29 = *MEMORY[0x29EDCA608];
  result = 92;
  v7 = -1;
  if (a3 == 65279 || a3 == 65534)
  {
    goto LABEL_36;
  }

  if (a3 >> 11 == 27)
  {
    goto LABEL_35;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v26 = bswap32(a3) >> 16;
  v11 = &a1[a2];
  v12 = &v26;
  v13 = a1;
  while (1)
  {
    if (v9 < 1)
    {
      v16 = *v12++;
      v14 = bswap32(v16) >> 16;
      if (v14 >= 0xC0)
      {
        v17 = __CFUniCharDecomposableBitmap[v14 >> 8];
        if (!__CFUniCharDecomposableBitmap[v14 >> 8] || v17 != 255 && ((__CFUniCharDecomposableBitmap[32 * v17 + 224 + (v14 >> 3)] >> (v14 & 7)) & 1) == 0)
        {
          goto LABEL_20;
        }

        v18 = v14 + 21504;
        if ((v14 + 21504) > 0x2BA4u)
        {
          v9 = unicode_recursive_decompose(v14, &v27) - 1;
          LODWORD(v14) = v27;
        }

        else
        {
          v19 = (v14 + 21504) % 0x1Cu;
          LODWORD(v14) = ((28533 * (v14 + 21504)) >> 24) | 0x1100;
          v27 = ((28533 * v18) >> 24) | 0x1100;
          v28[0] = v18 % 0x24Cu / 0x1C + 4449;
          if (v18 % 0x1Cu)
          {
            v28[1] = v19 + 4519;
            v9 = 2;
          }

          else
          {
            v9 = 1;
          }
        }

        v8 += v9;
        v10 = v28;
      }
    }

    else
    {
      v15 = *v10++;
      LODWORD(v14) = v15;
      --v9;
    }

    if (v14 < 0x80)
    {
      if (v13 >= v11)
      {
        goto LABEL_34;
      }

      *v13++ = v14;
      goto LABEL_32;
    }

LABEL_20:
    if (v14 <= 0x7FF)
    {
      if ((v13 + 1) >= v11)
      {
        goto LABEL_34;
      }

      *v13 = (v14 >> 6) | 0xC0;
      v13[1] = v14 & 0x3F | 0x80;
      v13 += 2;
      goto LABEL_32;
    }

    if (v14 >> 10 != 54 || v8 == 0)
    {
      break;
    }

    v21 = bswap32(*v12);
    if (v21 >> 26 != 55)
    {
      break;
    }

    if ((v13 + 3) >= v11)
    {
      goto LABEL_34;
    }

    v22 = HIWORD(v21);
    v23 = v22 + (v14 << 10) - 56613888;
    --v8;
    ++v12;
    *v13 = (v23 >> 18) | 0xF0;
    v13[1] = (v23 >> 12) & 0x3F | 0x80;
    v13[2] = (v23 >> 6) & 0x3F | 0x80;
    v13[3] = v22 & 0x3F | 0x80;
    v13 += 4;
LABEL_32:
    if (!v8--)
    {
      result = 0;
      v7 = v13 - a1;
      goto LABEL_36;
    }
  }

  if ((v13 + 2) < v11)
  {
    *v13 = (v14 >> 12) | 0xE0;
    v13[1] = (v14 >> 6) & 0x3F | 0x80;
    v13[2] = v14 & 0x3F | 0x80;
    v13 += 3;
    goto LABEL_32;
  }

LABEL_34:
  result = 7;
LABEL_35:
  v7 = -1;
LABEL_36:
  *a4 = v7;
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t unicode_recursive_decompose(unsigned int a1, _WORD *a2)
{
  v2 = a2;
  if ((a1 + 1201) < 0x571u)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v3 = &__CFUniCharDecompositionTable;
  v4 = &unk_296029A00;
  while (1)
  {
    v5 = &v3[2 * ((v4 - v3) >> 3)];
    v6 = *v5;
    if (v6 <= a1)
    {
      break;
    }

    v4 = v5 - 2;
LABEL_7:
    if (v3 > v4)
    {
      goto LABEL_8;
    }
  }

  if (v6 < a1)
  {
    v3 = v5 + 2;
    goto LABEL_7;
  }

  v7 = v5[1];
LABEL_9:
  v8 = (v7 >> 12) & 7;
  v14 = v7 & 0xFFF;
  v9 = &__CFUniCharMultipleDecompositionTable + 2 * (v7 & 0xFFF);
  v10 = &v14;
  if (v8 != 1)
  {
    v10 = (&__CFUniCharMultipleDecompositionTable + 2 * (v7 & 0xFFF));
  }

  if ((v7 & 0x8000) == 0)
  {
    LODWORD(result) = 0;
    goto LABEL_17;
  }

  result = unicode_recursive_decompose(*v10, a2);
  if (result)
  {
    --v8;
    v12 = &v14;
    if (v8)
    {
      v12 = v9;
    }

    v10 = (v12 + 1);
    v2 += result;
LABEL_17:
    for (result = (result + v8); v8; --v8)
    {
      v13 = *v10++;
      *v2++ = v13;
    }
  }

  return result;
}