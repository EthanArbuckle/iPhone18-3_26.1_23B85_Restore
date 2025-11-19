uint64_t dxbte_state_reset(uint64_t a1)
{
  if (a1)
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 192) = 0;
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *a1 = 1;
    *(a1 + 8) = 0;
  }

  return 0;
}

uint64_t dxbte_state_equals(unint64_t a1, unint64_t a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v4 = *a1;
    if (*a1 == *a2)
    {
      if (!v4)
      {
        return 1;
      }

      if (a1 == a2)
      {
        v5 = (a2 + 24);
        v6 = (a1 + 24);
        result = 1;
        while (1)
        {
          v8 = *v6;
          v6 += 3;
          v7 = v8;
          v9 = *v5;
          v5 += 3;
          if (v7 != v9)
          {
            break;
          }

          if (!--v4)
          {
            return result;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t ttmark(uint64_t a1)
{
  v2 = a1 + 32344;
  stacq(a1, *(a1 + 32344 + 4 * *(a1 + 32340)));
  ttsh1(a1);
  stacq(a1, *(v2 + 4 * *(a1 + 32340)));

  return ttsh1(a1);
}

double ttgesp(uint64_t a1, int a2, int a3)
{
  v5 = (a1 + 32340);
  if (a2 == 2)
  {
    if (*(a1 + 34004) <= 0)
    {
      v8 = *(a1 + 32344 + 4 * ((*v5 + a3) & 0x3F));
      v9 = (*v5 + a3 + 1) & 0x3F;
      *(a1 + 32344 + 4 * ((*v5 + a3) & 0x3F)) = *(a1 + 32344 + 4 * ((*v5 + a3 + 1) & 0x3F));
      *(a1 + 32344 + 4 * v9) = v8;
    }
  }

  else if (a2 == 1)
  {
    if (*(a1 + 34004) <= 0)
    {
      if (*(a1 + 4 * ((*v5 + a3) & 0x3F) + 32344) == 28)
      {
        do
        {
          v10 = ttshnd(a1, a3);
          if (v5[416] <= 1u)
          {
            result = stacq(a1, v10);
          }
        }

        while ((v10 - 31) >= 2 && v10 != 96 && v10 != 256);
      }
    }

    else
    {
      *(a1 + 34360) = a3;
    }
  }

  else if (!a2 && *(a1 + 34004) <= 0)
  {
    v6 = ttshnd(a1, a3);
    if ((v5[416] & 0x80000000) == 0)
    {

      return stacq(a1, v6);
    }
  }

  return result;
}

uint64_t tttbl(uint64_t result)
{
  v1 = (result + 32340);
  *(result + 34268) = -1;
  v2 = result + 32344;
  v3 = *(result + 32344 + 4 * *(result + 32340));
  if (v3 >= 33)
  {
    v4 = result;
    v5 = result + 34272;
    do
    {
      if (v3 > 125)
      {
        if (v3 != 126)
        {
          if (v3 == 256)
          {
            return result;
          }

          goto LABEL_20;
        }
      }

      else if (v3 != 61)
      {
        if (v3 == 96)
        {
          return result;
        }

LABEL_20:
        v10 = v1[482];
        if (v10 <= 0x1E)
        {
          v1[482] = v10 + 1;
          *(v5 + v10) = v3;
        }

        goto LABEL_10;
      }

      v1[482] = 0;
LABEL_10:
      v6 = v1[416];
      if (v6 <= 1)
      {
        stacq(v4, v3);
        v6 = v1[416];
      }

      if (v6 < 1)
      {
        result = dxnin_engine_getc(v4);
      }

      else
      {
        v7 = v1[499];
        if (v7 >= v1[500])
        {
          result = 256;
        }

        else
        {
          v8 = *(v1 + 497);
          v1[499] = v7 + 1;
          result = *(v8 + v7);
        }
      }

      *(v2 + 4 * *v1) = result;
      v9 = (*v1 + 1) & 0x3F;
      *v1 = v9;
      v3 = *(v2 + 4 * v9);
    }

    while (v3 > 32);
  }

  return result;
}

uint64_t ttsng(uint64_t result)
{
  v2 = *(result + 4 * *(result + 32340) + 32344);
  if (v2 >= 31 && v2 != 256)
  {
    v3 = result;
    if (*(result + 34004) <= 1u)
    {
      stacq(result, v2);
    }

    return ttsh1(v3);
  }

  return result;
}

uint64_t ttsh1(uint64_t a1)
{
  v2 = (a1 + 32340);
  if (*(a1 + 34004) < 1)
  {
    result = dxnin_engine_getc(a1);
  }

  else
  {
    v3 = *(a1 + 34336);
    if (v3 >= *(a1 + 34340))
    {
      result = 256;
    }

    else
    {
      v4 = *(a1 + 34328);
      *(a1 + 34336) = v3 + 1;
      result = *(v4 + v3);
    }
  }

  *(a1 + 4 * *v2 + 32344) = result;
  *v2 = (*v2 + 1) & 0x3F;
  return result;
}

uint64_t ttshnd(uint64_t a1, int a2)
{
  v4 = (a1 + 32340);
  if (*(a1 + 34004) < 1)
  {
    v7 = dxnin_engine_getc(a1);
  }

  else
  {
    v5 = *(a1 + 34336);
    if (v5 >= *(a1 + 34340))
    {
      v7 = 256;
    }

    else
    {
      v6 = *(a1 + 34328);
      *(a1 + 34336) = v5 + 1;
      v7 = *(v6 + v5);
    }
  }

  v8 = *v4;
  v9 = (v8 + a2) & 0x3F;
  v10 = a1 + 32344;
  v11 = *(a1 + 32344 + 4 * ((v8 + a2) & 0x3F));
  if (a2)
  {
    do
    {
      v12 = v9;
      v9 = (v9 - 1) & 0x3F;
      *(v10 + 4 * v12) = *(v10 + 4 * v9);
    }

    while (v9 != v8);
    *(v10 + 4 * v8) = v7;
  }

  else
  {
    *(v10 + 4 * v8) = v7;
    v12 = (*v4 + 1) & 0x3F;
  }

  *v4 = v12;
  return v11;
}

BOOL trcedbc(uint64_t a1, int a2)
{
  v2 = a1 + 30792;
  v3 = *(a1 + 32860);
  if (v3 >= a2)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  v8 = a1 + 34012;
  v9 = a1 + 32344;
  v10 = a1 + 32600;
  while (1)
  {
    v11 = *(v2 + 2064);
    v12 = *(v2 + 2072);
    v13 = (v12 + 1) & 0x3F;
    if (v11)
    {
      LODWORD(v14) = *(v2 + 3216);
      v15 = v8;
    }

    else
    {
      LODWORD(v14) = *(v2 + 1548);
      v15 = v9;
    }

    if (v13 == v14)
    {
      return 0;
    }

    v16 = *(v15 + 4 * ((v12 + 1) & 0x3F));
    if (v16 == 256)
    {
      break;
    }

    v17 = (v15 + 4 * ((v12 + 2) & 0x3F));
    v18 = (v15 + 4 * ((v12 + 3) & 0x3F));
    v19 = (v15 + 4 * ((v12 + 4) & 0x3F));
LABEL_13:
    if (*v2)
    {
      if (v3 > 62)
      {
        return 0;
      }

      goto LABEL_15;
    }

    if (v16 == 23)
    {
      v21 = (v13 + 1) & 0x3F;
      if (v21 == v14 || ((v13 + 2) & 0x3F) == v14)
      {
        return 0;
      }

      *(v2 + 2072) = v21;
      goto LABEL_20;
    }

    if (!v7)
    {
      v28 = v16 != 28 || ((v13 + 1) & 0x3F) == v14 || ((v13 + 2) & 0x3F) == v14;
      v29 = (v13 + 3) & 0x3F;
      v32 = v28 || v29 == v14 || ((v13 + 4) & 0x3F) == v14 || ((v13 + 5) & 0x3F) == v14;
      if (!v32 && *v17 == 101)
      {
        v33 = *v18;
        v34 = *v18 == 101 || v33 == 115;
        if (v34 && *v19 == 126)
        {
          v6 = 0;
          v5 = v33 != 115;
          *(v2 + 2072) = v29;
          *(v2 + 2064) = v11;
LABEL_54:
          LODWORD(v7) = 1;
          goto LABEL_21;
        }
      }

      if (v3 > 62)
      {
        return 0;
      }

      LODWORD(v7) = 0;
LABEL_15:
      v20 = v3 + 1;
      *(v2 + 2068) = v20;
      *(v10 + 4 * v20) = v16;
      *(v2 + 2072) = v13;
LABEL_20:
      *(v2 + 2064) = v11;
      goto LABEL_21;
    }

    *(v2 + 2072) = v13;
    *(v2 + 2064) = v11;
    if ((v16 - 31) >= 2 && v16 != 96)
    {
      if (v6 <= 30)
      {
        v41[v6++] = v16;
      }

      goto LABEL_54;
    }

    v41[v6] = 0;
    (*(v2 + 3552))(v39, *(v2 + 3560), v41, v5, 0);
    v22 = __s;
    if (__s)
    {
      v23 = strlen(__s);
      if (v23 >= 1)
      {
        *(v2 + 2080) += *(v2 + 2084);
        *(v2 + 2084) = v6 - v23 + 5;
        v7 = v23 & 0x7FFFFFFF;
        while (1)
        {
          v24 = *(v2 + 2068);
          if (v24 >= 63)
          {
            break;
          }

          v25 = v24 + 1;
          *(v2 + 2068) = v25;
          v26 = *v22++;
          *(v10 + 4 * v25) = v26;
          if (!--v7)
          {
            goto LABEL_21;
          }
        }

        v36 = v24 < a2;
        return !v36;
      }
    }

    LODWORD(v7) = 0;
LABEL_21:
    v3 = *(v2 + 2068);
    if (v3 >= a2)
    {
      return 1;
    }
  }

  if (v11 == 1 || *(v2 + 3212) <= 0)
  {
    if (v3 <= 62)
    {
      v37 = v3 + 1;
      *(v2 + 2068) = v37;
      *(v10 + 4 * v37) = 256;
      *(v2 + 2072) = v13;
      goto LABEL_70;
    }

    return 0;
  }

  v14 = *(v2 + 3216);
  v16 = *(v8 + 4 * v14);
  if (v16 != 256)
  {
    v17 = (v8 + 4 * ((v14 + 1) & 0x3F));
    v18 = (v8 + 4 * ((v14 + 2) & 0x3F));
    v11 = 1;
    v13 = *(v2 + 3216);
    v19 = (v8 + 4 * ((v14 + 3) & 0x3F));
    goto LABEL_13;
  }

  if (v3 > 62)
  {
    return 0;
  }

  v38 = v3 + 1;
  *(v2 + 2068) = v38;
  *(v10 + 4 * v38) = 256;
  *(v2 + 2072) = v14;
  *(v2 + 2064) = 1;
LABEL_70:
  v36 = *(v2 + 2068) < a2;
  return !v36;
}

uint64_t trcck(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = (a1 + 29636);
  v5 = a3 + 1;
  v6 = *(a1 + 32880);
  if (v6 > 69)
  {
    v25 = *(a1 + 34492);
    if (v25 <= 14)
    {
      *(a1 + 4 * v25 + 34496) = v5;
      v25 = *(a1 + 34492);
    }

    result = 0;
    if (v25 != 0x7FFFFFFF)
    {
      *(a1 + 34492) = v25 + 1;
    }

    return result;
  }

  v7 = *(a1 + 30824);
  v8 = *(v7 + 4 * v5);
  *(a1 + 32880) = v6 + 1;
  v9 = *(v7 + 4 * a3);
  v26 = v8;
  if (v9 >= v8)
  {
    goto LABEL_34;
  }

  v11 = a1 + 32600;
  do
  {
    v12 = *(*(a1 + 30816) + 4 * v9);
    v13 = *(a1 + 30808);
    v14 = (v13 + v12);
    v15 = *v14;
    if (v15 == 252)
    {
      LODWORD(v17) = a2;
LABEL_40:
      --v4[811];
      return (v17 - a2);
    }

    v16 = v12;
    v17 = a2;
    while (v17 <= 63)
    {
      if (v15 == 253)
      {
        if (v17 > v4[806])
        {
          if (!trcedbc(a1, v17))
          {
            break;
          }

          v13 = *(a1 + 30808);
        }

        v22 = *(v13 + v16 + 1);
        v23 = *(v11 + 4 * v17);
        if (v22 != v23)
        {
          break;
        }

        if (v23 << 24 == 469762048)
        {
          v4[808] = v17;
        }

        v12 += 2;
        goto LABEL_29;
      }

      if (v15 != 254)
      {
        if (v15 != 255)
        {
          if (v17 > v4[806] && !trcedbc(a1, v17))
          {
            break;
          }

          v18 = *(a1 + 29644 + 4 * *(v11 + 4 * v17));
          if (v18 < 1 || !btestv((*(a1 + 30688) + 8 * v18 - 8), v15))
          {
            break;
          }
        }

        ++v12;
LABEL_29:
        v17 = (v17 + 1);
        goto LABEL_30;
      }

      v19 = v14[1];
      if (*v4 >= 18)
      {
        v19 = v19 | (v14[2] << 8);
      }

      v20 = trcck(a1, v17, v19);
      if (v20 < 1)
      {
        break;
      }

      if (*v4 <= 17)
      {
        v21 = 2;
      }

      else
      {
        v21 = 3;
      }

      v12 += v21;
      v17 = (v20 + v17);
LABEL_30:
      v13 = *(a1 + 30808);
      v16 = v12;
      v14 = (v13 + v12);
      v15 = *v14;
      if (v15 == 252)
      {
        goto LABEL_40;
      }
    }

    ++v9;
  }

  while (v26 != v9);
  v6 = v4[811] - 1;
LABEL_34:
  result = 0;
  v4[811] = v6;
  return result;
}

_DWORD *wcscpx(_DWORD *result, int *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = result;
    while (1)
    {
      v5 = *a2++;
      *v4 = v5;
      if (!v5)
      {
        break;
      }

      ++v4;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result[a3 - 1] = 0;
  }

  return result;
}

FILE *dx_wfopen(__int32 *a1, const __int32 *a2)
{
  wcstombs(__filename, a1, 0x100uLL);
  wcstombs(__mode, a2, 0x14uLL);
  return fopen(__filename, __mode);
}

FILE *dx_wfreopen(__int32 *a1, const __int32 *a2, FILE *a3)
{
  wcstombs(v7, a1, 0x100uLL);
  wcstombs(v6, a2, 0x14uLL);
  return freopen(v7, v6, a3);
}

uint64_t whrani()
{
  v0 = 171 * (ix % 177) - 2 * (ix / 177);
  ix = v0 + (v0 < 0 ? 0x763D : 0);
  v1 = -35 * (iy / 176) + 172 * (iy % 176);
  iy = v1 + (v1 < 0 ? 0x7663 : 0);
  v2 = -63 * (iz / 178) + 170 * (iz % 178);
  iz = v2 + (v2 < 0 ? 0x7673 : 0);
  return iy ^ iz ^ ix ^ ((iy ^ iz ^ ix) >> 31);
}

uint64_t whraii(uint64_t result, int a2, int a3)
{
  if (result >= 0)
  {
    v3 = result;
  }

  else
  {
    v3 = -result;
  }

  if (v3 <= 1)
  {
    v3 = 1;
  }

  v4 = v3 - 30000;
  if (v3 < 0x7530)
  {
    v4 = 0;
  }

  ix = v3 - v4 - 29999 + (v4 + 29999) % 0x7530u;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 - 30000;
  if (v5 < 0x7530)
  {
    v6 = 0;
  }

  iy = v5 - 30000 * ((v6 + 29999) / 0x7530u);
  if (a3 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = -a3;
  }

  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = v7 - 30000;
  if (v7 < 0x7530)
  {
    v8 = 0;
  }

  iz = v7 - v8 - 29999 + (v8 + 29999) % 0x7530u;
  return result;
}

_DWORD *whravi(_DWORD *result, _DWORD *a2, _DWORD *a3)
{
  *result = ix;
  *a2 = iy;
  *a3 = iz;
  return result;
}

uint64_t whrini()
{
  v8 = time(0);
  if (v8 == -1 || (v0 = localtime(&v8)) == 0)
  {
    v6 = 42;
    v5 = 15;
    v4 = 2;
  }

  else
  {
    v1 = v0;
    tm_min = v0->tm_min;
    tm_mon = v0->tm_mon;
    v4 = (v0->tm_year + v0->tm_sec);
    v5 = tm_mon + tm_min;
    v6 = v1->tm_mday + v1->tm_hour;
  }

  return whraii(v4, v5, v6);
}

uint64_t wcscax(uint64_t result, int *a2, int a3)
{
  if (a3 < 1)
  {
    LODWORD(v3) = 0;
  }

  else
  {
    v3 = 0;
    while (*(result + 4 * v3))
    {
      if (a3 == ++v3)
      {
        goto LABEL_11;
      }
    }
  }

  v4 = (a3 - v3);
  if (a3 <= v3)
  {
LABEL_11:
    *(result + 4 * a3 - 4) = 0;
  }

  else
  {
    v5 = (result + 4 * v3);
    while (1)
    {
      v6 = *a2++;
      *v5 = v6;
      if (!v6)
      {
        break;
      }

      ++v5;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

uint64_t (*dxlog_setup(uint64_t (*result)()))()
{
  v1 = dxlog_printf_standard_implementation;
  if (result)
  {
    v2 = result;
  }

  else
  {
    v1 = dxlog_printf_null_implementation;
    v2 = dxlog_vprintf_null_implementation;
  }

  dxlog_printf[0] = v1;
  dxlog_vprintf = v2;
  return result;
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  RangeOfComposedCharactersAtIndex = _CFStringGetRangeOfComposedCharactersAtIndex(theString, theIndex);
  length = RangeOfComposedCharactersAtIndex.length;
  location = RangeOfComposedCharactersAtIndex.location;
  result.length = length;
  result.location = location;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = _CFStringTokenizerGetCurrentTokenRange(tokenizer);
  length = CurrentTokenRange.length;
  location = CurrentTokenRange.location;
  result.length = length;
  result.location = location;
  return result;
}